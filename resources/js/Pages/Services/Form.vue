<template>
  <layout :title="form.id ? $t('update_x', { x: form.name }) : $t('create_x', { x: $t('service') })">
    <div>
      <h1 class="mb-6 mt-2 font-bold text-lg md:text-2xl">
        <Link class="text-gray-600 hover:text-gray-800 inline-flex items-center" :href="route('services')">
          <Icons name="back" class="flex-shrink-0 w-3 h-3 md:w-5 md:h-5 fill-current ltr:mr-2 rtl:ml-2 rtl:rotate" />
          {{ $tc('Service', 2) }}
        </Link>
        <span class="text-gray-400 font-medium mx-1">/</span>
        <span>{{ form.id ? form.name : $t('create_x', { x: $t('service') }) }}</span>
      </h1>
      <trashed-message v-if="service?.deleted_at" class="mb-6" @restore="() => (restore = true)">
        <span>{{ $t('already_deleted_x', { x: $tc('Service') }) }}</span>
      </trashed-message>
      <div class="bg-white rounded shadow overflow-hidden max-w-3xl">
        <form @submit.prevent="submit" autocomplete="off">
          <div class="p-8 ltr:-mr-6 rtl:-ml-6 ltr:ml-0 rtl:mr-0 -mb-8 flex flex-wrap">
            <text-input v-model="form.code" :error="errors?.code" class="ltr:pr-6 rtl:pl-6 pb-8 w-full lg:w-1/2" :label="$t('Code')" />
            <text-input v-model="form.name" :error="errors?.name" class="ltr:pr-6 rtl:pl-6 pb-8 w-full lg:w-1/2" :label="$t('Name')" />
          </div>
          <div class="px-8 pb-8 ltr:-mr-6 rtl:-ml-6 ltr:ml-0 rtl:mr-0 -mb-8 flex flex-wrap">
            <text-input v-model="form.price" :error="errors?.price" class="ltr:pr-6 rtl:pl-6 pb-8 w-full" :label="$t('Price')" />
            <text-input
              :label="$t('Description')"
              v-model="form.description"
              :error="errors?.description"
              class="ltr:pr-6 rtl:pl-6 pb-8 w-full"
            />
            <checkbox-input id="active" :label="$t('Active')" v-model:checked="form.active" class="mb-8" />
          </div>
          <div class="px-8 py-4 bg-gray-100 border-t border-gray-200 flex items-center">
            <template v-if="service">
              <DeleteRestoreComponent
                :restore="restore"
                :data="service"
                model="Service"
                routeM="services"
                @close-restore="() => (restore = false)"
              />
            </template>
            <loading-button :loading="sending" class="btn-gray ltr:ml-auto rtl:mr-auto" type="submit">
              {{ form.id ? $t('update_x', { x: $t('service') }) : $t('create_x', { x: $t('service') }) }}
            </loading-button>
          </div>
        </form>
      </div>
    </div>
  </layout>
</template>

<script>
import Layout from '@/Shared/Layout.vue';
import TextInput from '@/Shared/TextInput.vue';
import DeleteMixin from '@/Misc/DeleteMixin';
import LoadingButton from '@/Shared/LoadingButton.vue';
import CheckboxInput from '@/Shared/CheckboxInput.vue';
import TrashedMessage from '@/Shared/TrashedMessage.vue';
import DeleteRestoreComponent from '@/Shared/DeleteRestoreComponent.vue';

export default {
  mixins: [DeleteMixin('service')],
  props: { service: Object, customers: Array },
  components: { Layout, LoadingButton, TextInput, TrashedMessage, CheckboxInput, DeleteRestoreComponent },
  data() {
    return {
      errors: {},
      restore: false,
      sending: false,
      form: {
        id: this.service?.id,
        code: this.service?.code,
        name: this.service?.name,
        price: this.service?.price,
        description: this.service?.description,
        active: this.service?.active == 1 ? true : false,
      },
    };
  },
  methods: {
    submit() {
      this.sending = true;
      this.$inertia[this.form.id ? 'put' : 'post'](
        this.form.id ? route('services.update', this.service.id) : route('services.store'),
        this.form,
        {
          onSuccess: () => (this.errors = {}),
          onFinish: () => (this.sending = false),
          onError: errors => (this.errors = errors),
        }
      );
    },
  },
};
</script>

<template>
  <div id="nav" class="relative px-4">
    <span
      class="absolute block ltr:-ml-2 rtl:-mr-2 py-3 w-full bg-gray-900 rounded-full shadow ease-out transition-transform transition-medium"
      :style="{
        transform: `translateY(calc(100% * ${selected}))`,
        width: '92%',
        'min-width': '174px',
        'margin-top': '1px',
      }"
    >
      <div class="w-4 h-4">&nbsp;</div>
    </span>
    <template v-for="(m, i) in menus" :key="'mm_' + i">
      <div
        @click="select(i)"
        :aria-selected="selected === i"
        :class="selected === i ? 'z-10 text-gray-100 ltr:ml-2 rtl:mr-2' : 'ltr:ml-2 rtl:mr-2 text-gray-300 hover:text-white fill-white'"
      >
        <Link class="flex items-center group py-3" :href="route(m.link)">
          <Icons
            :name="m.icon"
            class="w-4 h-4 ltr:mr-4 rtl:ml-4"
            :class="selected === i ? 'z-10 fill-gray-100' : 'fill-gray-300 group-hover:text-white fill-white'"
          />
          <div class="z-10">{{ $tc(m.title, 2) }}</div>
        </Link>
      </div>
    </template>

    <template v-if="$user.owner">
      <template v-for="(m, mi) in owner_menus" :key="'omm_' + (mi + mil)">
        <div
          @click="select(mi + mil)"
          :aria-selected="selected === mi + mil"
          :class="selected === mi + mil ? 'z-10 text-gray-100 ml-2' : 'ml-2 text-gray-300 hover:text-white fill-white'"
        >
          <Link class="flex items-center group py-3" :href="route(m.link)">
            <Icons
              :name="m.icon"
              class="w-4 h-4 ltr:mr-4 rtl:ml-4"
              :class="selected === mi + mil ? 'z-10 fill-gray-100' : 'fill-gray-300 group-hover:text-white fill-white'"
            />
            <div class="z-10">{{ $tc(m.title, 2) }}</div>
          </Link>
        </div>
      </template>
    </template>
  </div>
</template>

<script>
export default {
  props: { url: String },
  data() {
    return {
      selected: 0,
      menus: [
        { title: 'Dashboard', link: 'dashboard', icon: 'dashboard' },
        { title: 'Order', link: 'orders', icon: 'store-front' },
        { title: 'Service', link: 'services', icon: 'service' },
        {
          title: 'Measurement',
          link: 'measurements',
          icon: 'measurement',
        },
        { title: 'Customer', link: 'customers', icon: 'customer' },
        { title: 'Payment', link: 'payments', icon: 'payment' },
        { title: 'Expense', link: 'expenses', icon: 'expense' },
        { title: 'Contact', link: 'contacts', icon: 'contacts' },
      ],
      owner_menus: [
        { title: 'Report', link: 'reports', icon: 'report' },
        { title: 'User', link: 'users', icon: 'users', owner: true },
        {
          title: 'Salary',
          link: 'salaries',
          icon: 'salary',
          owner: true,
        },
        { title: 'Tax', link: 'taxes', icon: 'tax', owner: true },
        {
          title: 'Setting',
          link: 'settings',
          icon: 'settings',
          owner: true,
        },
        {
          title: 'Measurement Field',
          link: 'measurement_fields',
          icon: 'measurement_field',
          owner: true,
        },
        {
          title: 'Activity Log',
          link: 'logs',
          icon: 'logs',
          owner: true,
        },
      ],
    };
  },
  computed: {
    mil() {
      return this.menus.length;
    },
  },
  mounted() {
    if (this.isUrl('orders')) {
      this.selected = 1;
    } else if (this.isUrl('services')) {
      this.selected = 2;
    } else if (this.isUrl('measurements')) {
      this.selected = 3;
    } else if (this.isUrl('customers')) {
      this.selected = 4;
    } else if (this.isUrl('payments')) {
      this.selected = 5;
    } else if (this.isUrl('expenses')) {
      this.selected = 6;
    } else if (this.isUrl('contacts')) {
      this.selected = 7;
    } else if (this.isUrl('reports')) {
      this.selected = 8;
    } else if (this.isUrl('users')) {
      this.selected = 9;
    } else if (this.isUrl('salaries')) {
      this.selected = 10;
    } else if (this.isUrl('taxes')) {
      this.selected = 11;
    } else if (this.isUrl('settings')) {
      this.selected = 12;
    } else if (this.isUrl('measurement_fields')) {
      this.selected = 13;
    } else if (this.isUrl('logs')) {
      this.selected = 14;
    }
  },
  methods: {
    select(i) {
      this.selected = i;
    },
    isUrl(...urls) {
      if (urls[0] === '') {
        return this.url === '';
      }
      return urls.filter(url => this.url.startsWith(url)).length;
    },
  },
};
</script>

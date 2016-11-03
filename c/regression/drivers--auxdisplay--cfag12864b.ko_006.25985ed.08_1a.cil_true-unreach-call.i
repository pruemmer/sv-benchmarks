extern void __VERIFIER_error() __attribute__ ((__noreturn__));

/* Generated by CIL v. 1.5.1 */
/* print_CIL_Input is false */

typedef unsigned short __u16;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef unsigned int __kernel_mode_t;
typedef unsigned long __kernel_size_t;
typedef long __kernel_ssize_t;
typedef long __kernel_time_t;
typedef int __kernel_clockid_t;
typedef __kernel_mode_t mode_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef unsigned int gfp_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct task_struct;
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
typedef void (*ctor_fn_t)(void);
struct module;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct page;
struct arch_spinlock;
struct exec_domain;
struct map_segment;
struct exec_domain {
   char const   *name ;
   void (*handler)(int  , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
struct kmem_cache;
struct __anonstruct_mm_segment_t_24 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_24 mm_segment_t;
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_26 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_27 {
   clockid_t index ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_28 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_5373_25 {
   struct __anonstruct_futex_26 futex ;
   struct __anonstruct_nanosleep_27 nanosleep ;
   struct __anonstruct_poll_28 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_5373_25 ldv_5373 ;
};
typedef atomic64_t atomic_long_t;
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   int uaccess_err ;
};
struct arch_spinlock {
   unsigned int slock ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const   *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const   *name ;
   int cpu ;
   unsigned long ip ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
struct __anonstruct_ldv_5955_31 {
   u8 __padding[1U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_5956_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_5955_31 ldv_5955 ;
};
struct spinlock {
   union __anonunion_ldv_5956_30 ldv_5956 ;
};
typedef struct spinlock spinlock_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct thread_info *owner ;
   char const   *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long  ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
};
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void const   *(*current_ns)(void) ;
   void const   *(*netlink_ns)(struct sock * ) ;
   void const   *(*initial_ns)(void) ;
};
struct attribute {
   char const   *name ;
   mode_t mode ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const   * , size_t  ) ;
};
struct sysfs_dirent;
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const   *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct sysfs_dirent *sd ;
   struct kref kref ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops  const  *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations  const  *(*child_ns_type)(struct kobject * ) ;
   void const   *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const  filter)(struct kset * , struct kobject * ) ;
   char const   *(* const  name)(struct kset * , struct kobject * ) ;
   int (* const  uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops  const  *uevent_ops ;
};
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const   * , struct kernel_param  const  * ) ;
   int (*get)(char * , struct kernel_param  const  * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_11805_124 {
   void *arg ;
   struct kparam_string  const  *str ;
   struct kparam_array  const  *arr ;
};
struct kernel_param {
   char const   *name ;
   struct kernel_param_ops  const  *ops ;
   u16 perm ;
   u16 flags ;
   union __anonunion_ldv_11805_124 ldv_11805 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int *num ;
   struct kernel_param_ops  const  *ops ;
   unsigned int elemsize ;
   void *elem ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const   *name ;
   int state ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct mod_arch_specific {

};
struct kernel_symbol {
   unsigned long value ;
   char const   *name ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module * , char const   * ,
                    size_t  ) ;
   void (*setup)(struct module * , char const   * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned int incs ;
   unsigned int decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const   *version ;
   char const   *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol  const  *syms ;
   unsigned long const   *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol  const  *gpl_syms ;
   unsigned long const   *gpl_crcs ;
   struct kernel_symbol  const  *unused_syms ;
   unsigned long const   *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol  const  *unused_gpl_syms ;
   unsigned long const   *unused_gpl_crcs ;
   struct kernel_symbol  const  *gpl_future_syms ;
   unsigned long const   *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   void *percpu ;
   unsigned int percpu_size ;
   char *args ;
   struct tracepoint * const  *tracepoints_ptrs ;
   unsigned int num_tracepoints ;
   char const   **trace_bprintk_fmt_start ;
   unsigned int num_trace_bprintk_fmt ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned long *ftrace_callsites ;
   unsigned int num_ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   int node ;
   unsigned int stat[19U] ;
};
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int objsize ;
   int offset ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const   *name ;
   struct list_head list ;
   struct kobject kobj ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
void *__builtin_memcpy(void * , void const   * , unsigned long  ) ;
__inline static void clear_bit(int nr , unsigned long volatile   *addr ) 
{ 


  {
  __asm__  volatile   (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile   *)addr)): "Ir" (nr));
  return;
}
}
extern int printk(char const   *  , ...) ;
extern void *__memcpy(void * , void const   * , size_t  ) ;
extern int memcmp(void const   * , void const   * , size_t  ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int  ) ;
extern void mutex_unlock(struct mutex * ) ;
extern struct tvec_base boot_tvec_bases ;
extern int del_timer_sync(struct timer_list * ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const   * , unsigned int  ,
                                                      int  , struct lock_class_key * ,
                                                      char const   * ) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
extern int queue_delayed_work(struct workqueue_struct * , struct delayed_work * ,
                              unsigned long  ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
__inline static bool cancel_delayed_work(struct delayed_work *work ) 
{ 
  bool ret ;
  int tmp ;

  {
  tmp = del_timer_sync(& work->timer);
  ret = tmp != 0;
  if ((int )ret) {
    clear_bit(0, (unsigned long volatile   *)(& work->work.data));
  } else {

  }
  return (ret);
}
}
extern unsigned long get_zeroed_page(gfp_t  ) ;
extern void free_pages(unsigned long  , unsigned int  ) ;
extern void kfree(void const   * ) ;
extern void *__kmalloc(size_t  , gfp_t  ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) 
{ 
  void *tmp___2 ;

  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
extern void ks0108_writedata(unsigned char  ) ;
extern void ks0108_writecontrol(unsigned char  ) ;
extern void ks0108_displaystate(unsigned char  ) ;
extern void ks0108_startline(unsigned char  ) ;
extern void ks0108_address(unsigned char  ) ;
extern void ks0108_page(unsigned char  ) ;
extern unsigned char ks0108_isinited(void) ;
unsigned char *cfag12864b_buffer  ;
unsigned int cfag12864b_getrate(void) ;
unsigned char cfag12864b_enable(void) ;
void cfag12864b_disable(void) ;
unsigned char cfag12864b_isenabled(void) ;
unsigned char cfag12864b_isinited(void) ;
static unsigned int cfag12864b_rate  =    20U;
unsigned int cfag12864b_getrate(void) 
{ 


  {
  return (cfag12864b_rate);
}
}
static unsigned char cfag12864b_state  ;
static void cfag12864b_set(void) 
{ 


  {
  ks0108_writecontrol((int )cfag12864b_state);
  return;
}
}
static void cfag12864b_setbit(unsigned char state , unsigned char n ) 
{ 


  {
  if ((unsigned int )state != 0U) {
    cfag12864b_state = (unsigned char )((int )((signed char )(1 << (int )n)) | (int )((signed char )cfag12864b_state));
  } else {
    cfag12864b_state = (unsigned char )(~ ((int )((signed char )(1 << (int )n))) & (int )((signed char )cfag12864b_state));
  }
  return;
}
}
static void cfag12864b_e(unsigned char state ) 
{ 


  {
  cfag12864b_setbit((int )state, 0);
  cfag12864b_set();
  return;
}
}
static void cfag12864b_cs1(unsigned char state ) 
{ 


  {
  cfag12864b_setbit((int )state, 2);
  return;
}
}
static void cfag12864b_cs2(unsigned char state ) 
{ 


  {
  cfag12864b_setbit((int )state, 1);
  return;
}
}
static void cfag12864b_di(unsigned char state ) 
{ 


  {
  cfag12864b_setbit((int )state, 3);
  return;
}
}
static void cfag12864b_setcontrollers(unsigned char first , unsigned char second ) 
{ 


  {
  if ((unsigned int )first != 0U) {
    cfag12864b_cs1(0);
  } else {
    cfag12864b_cs1(1);
  }
  if ((unsigned int )second != 0U) {
    cfag12864b_cs2(0);
  } else {
    cfag12864b_cs2(1);
  }
  return;
}
}
static void cfag12864b_controller(unsigned char which ) 
{ 


  {
  if ((unsigned int )which == 0U) {
    cfag12864b_setcontrollers(1, 0);
  } else
  if ((unsigned int )which == 1U) {
    cfag12864b_setcontrollers(0, 1);
  } else {

  }
  return;
}
}
static void cfag12864b_displaystate(unsigned char state ) 
{ 


  {
  cfag12864b_di(0);
  cfag12864b_e(1);
  ks0108_displaystate((int )state);
  cfag12864b_e(0);
  return;
}
}
static void cfag12864b_address(unsigned char address ) 
{ 


  {
  cfag12864b_di(0);
  cfag12864b_e(1);
  ks0108_address((int )address);
  cfag12864b_e(0);
  return;
}
}
static void cfag12864b_page(unsigned char page ) 
{ 


  {
  cfag12864b_di(0);
  cfag12864b_e(1);
  ks0108_page((int )page);
  cfag12864b_e(0);
  return;
}
}
static void cfag12864b_startline(unsigned char startline ) 
{ 


  {
  cfag12864b_di(0);
  cfag12864b_e(1);
  ks0108_startline((int )startline);
  cfag12864b_e(0);
  return;
}
}
static void cfag12864b_writebyte(unsigned char byte ) 
{ 


  {
  cfag12864b_di(1);
  cfag12864b_e(1);
  ks0108_writedata((int )byte);
  cfag12864b_e(0);
  return;
}
}
static void cfag12864b_nop(void) 
{ 


  {
  cfag12864b_startline(0);
  return;
}
}
static void cfag12864b_on(void) 
{ 


  {
  cfag12864b_setcontrollers(1, 1);
  cfag12864b_displaystate(1);
  return;
}
}
static void cfag12864b_off(void) 
{ 


  {
  cfag12864b_setcontrollers(1, 1);
  cfag12864b_displaystate(0);
  return;
}
}
static void cfag12864b_clear(void) 
{ 
  unsigned char i ;
  unsigned char j ;

  {
  cfag12864b_setcontrollers(1, 1);
  i = 0U;
  goto ldv_17412;
  ldv_17411: 
  cfag12864b_page((int )i);
  cfag12864b_address(0);
  j = 0U;
  goto ldv_17409;
  ldv_17408: 
  cfag12864b_writebyte(0);
  j = (unsigned char )((int )j + 1);
  ldv_17409: ;
  if ((unsigned int )j <= 63U) {
    goto ldv_17408;
  } else {

  }
  i = (unsigned char )((int )i + 1);
  ldv_17412: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_17411;
  } else {

  }

  return;
}
}
static unsigned char *cfag12864b_cache  ;
static struct mutex cfag12864b_mutex  =    {{1}, {{{{0U}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "cfag12864b_mutex.wait_lock",
                                                                   0, 0UL}}}}, {& cfag12864b_mutex.wait_list,
                                                                                & cfag12864b_mutex.wait_list},
    0, 0, (void *)(& cfag12864b_mutex), {0, {0, 0}, "cfag12864b_mutex", 0, 0UL}};
static unsigned char cfag12864b_updating  ;
static void cfag12864b_update(struct work_struct *work ) ;
static struct workqueue_struct *cfag12864b_workqueue  ;
static struct delayed_work cfag12864b_work  =    {{{2097680L}, {& cfag12864b_work.work.entry, & cfag12864b_work.work.entry}, & cfag12864b_update,
     {(struct lock_class_key *)(& cfag12864b_work.work), {0, 0}, "(cfag12864b_work).work",
      0, 0UL}}, {{0, 1953723489}, 0UL, & boot_tvec_bases, 0, 0UL, -1, 0, 0, {(char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0},
                 {(struct lock_class_key *)"/work/ldvuser/novikov/work/current--X--drivers/auxdisplay/cfag12864b.ko--X--defaultlinux--X--08_1a--X--cpachecker/linux/csd_deg_dscv/11/dscv_tempdir/dscv/ri/08_1a/drivers/auxdisplay/cfag12864b.c.prepared:235",
                  {0, 0}, "/work/ldvuser/novikov/work/current--X--drivers/auxdisplay/cfag12864b.ko--X--defaultlinux--X--08_1a--X--cpachecker/linux/csd_deg_dscv/11/dscv_tempdir/dscv/ri/08_1a/drivers/auxdisplay/cfag12864b.c.prepared:235",
                  0, 0UL}}};
static void cfag12864b_queue(void) 
{ 


  {
  queue_delayed_work(cfag12864b_workqueue, & cfag12864b_work, (unsigned long )(250U / cfag12864b_rate));
  return;
}
}
unsigned char cfag12864b_enable(void) 
{ 
  unsigned char ret ;

  {
  mutex_lock_nested(& cfag12864b_mutex, 0U);
  if ((unsigned int )cfag12864b_updating == 0U) {
    cfag12864b_updating = 1U;
    cfag12864b_queue();
    ret = 0U;
  } else {
    ret = 1U;
  }
  mutex_unlock(& cfag12864b_mutex);
  return (ret);
}
}
void cfag12864b_disable(void) 
{ 


  {
  mutex_lock_nested(& cfag12864b_mutex, 0U);
  if ((unsigned int )cfag12864b_updating != 0U) {
    cfag12864b_updating = 0U;
    cancel_delayed_work(& cfag12864b_work);
    flush_workqueue(cfag12864b_workqueue);
  } else {

  }
  mutex_unlock(& cfag12864b_mutex);
  return;
}
}
unsigned char cfag12864b_isenabled(void) 
{ 


  {
  return (cfag12864b_updating);
}
}
static void cfag12864b_update(struct work_struct *work ) 
{ 
  unsigned char c ;
  unsigned short i ;
  unsigned short j ;
  unsigned short k ;
  unsigned short b ;
  size_t __len ;
  void *__ret ;
  int tmp ;

  {
  tmp = memcmp((void const   *)cfag12864b_cache, (void const   *)cfag12864b_buffer,
               1024UL);
  if (tmp != 0) {
    i = 0U;
    goto ldv_17454;
    ldv_17453: 
    cfag12864b_controller((int )((unsigned char )i));
    cfag12864b_nop();
    j = 0U;
    goto ldv_17451;
    ldv_17450: 
    cfag12864b_page((int )((unsigned char )j));
    cfag12864b_nop();
    cfag12864b_address(0);
    cfag12864b_nop();
    k = 0U;
    goto ldv_17448;
    ldv_17447: 
    c = 0U;
    b = 0U;
    goto ldv_17445;
    ldv_17444: ;
    if (((int )*(cfag12864b_buffer + (unsigned long )((((int )i * 64) / 8 + (int )((unsigned int )k / 8U)) + (((int )j * 8 + (int )b) * 128) / 8)) >> ((int )k & 7)) & 1) {
      c = (unsigned char )((int )((signed char )(1 << (int )b)) | (int )((signed char )c));
    } else {

    }
    b = (unsigned short )((int )b + 1);
    ldv_17445: ;
    if ((unsigned int )b <= 7U) {
      goto ldv_17444;
    } else {

    }
    cfag12864b_writebyte((int )c);
    k = (unsigned short )((int )k + 1);
    ldv_17448: ;
    if ((unsigned int )k <= 63U) {
      goto ldv_17447;
    } else {

    }
    j = (unsigned short )((int )j + 1);
    ldv_17451: ;
    if ((unsigned int )j <= 7U) {
      goto ldv_17450;
    } else {

    }
    i = (unsigned short )((int )i + 1);
    ldv_17454: ;
    if ((unsigned int )i <= 1U) {
      goto ldv_17453;
    } else {

    }
    __len = 1024UL;
    if (__len > 63UL) {
      __ret = __memcpy((void *)cfag12864b_cache, (void const   *)cfag12864b_buffer,
                       __len);
    } else {
      __ret = __builtin_memcpy((void *)cfag12864b_cache, (void const   *)cfag12864b_buffer,
                               __len);
    }
  } else {

  }
  if ((unsigned int )cfag12864b_updating != 0U) {
    cfag12864b_queue();
  } else {

  }
  return;
}
}
static unsigned char cfag12864b_inited  ;
unsigned char cfag12864b_isinited(void) 
{ 


  {
  return (cfag12864b_inited);
}
}
static int cfag12864b_init(void) 
{ 
  int ret ;
  unsigned char tmp ;
  unsigned long tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  char const   *__lock_name ;
  struct workqueue_struct *tmp___2 ;

  {
  ret = -22;
  tmp = ks0108_isinited();
  if ((unsigned int )tmp == 0U) {
    printk("<3>cfag12864b: ERROR: ks0108 is not initialized\n");
    goto none;
  } else {

  }
  tmp___0 = get_zeroed_page(208U);
  cfag12864b_buffer = (unsigned char *)tmp___0;
  if ((unsigned long )cfag12864b_buffer == (unsigned long )((unsigned char *)0)) {
    printk("<3>cfag12864b: ERROR: can\'t get a free page\n");
    ret = -12;
    goto none;
  } else {

  }
  tmp___1 = kmalloc(1024UL, 208U);
  cfag12864b_cache = (unsigned char *)tmp___1;
  if ((unsigned long )cfag12864b_cache == (unsigned long )((unsigned char *)0)) {
    printk("<3>cfag12864b: ERROR: can\'t alloc cache buffer (%i bytes)\n", 1024);
    ret = -12;
    goto bufferalloced;
  } else {

  }
  __lock_name = "cfag12864b";
  tmp___2 = __alloc_workqueue_key("cfag12864b", 10U, 1, & __key, __lock_name);
  cfag12864b_workqueue = tmp___2;
  if ((unsigned long )cfag12864b_workqueue == (unsigned long )((struct workqueue_struct *)0)) {
    goto cachealloced;
  } else {

  }
  cfag12864b_clear();
  cfag12864b_on();
  cfag12864b_inited = 1U;
  return (0);
  cachealloced: 
  kfree((void const   *)cfag12864b_cache);
  bufferalloced: 
  free_pages((unsigned long )cfag12864b_buffer, 0U);
  none: ;
  return (ret);
}
}
static void cfag12864b_exit(void) 
{ 


  {
  cfag12864b_disable();
  cfag12864b_off();
  destroy_workqueue(cfag12864b_workqueue);
  kfree((void const   *)cfag12864b_cache);
  free_pages((unsigned long )cfag12864b_buffer, 0U);
  return;
}
}
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int nondet_int(void) ;
int LDV_IN_INTERRUPT  ;
int main(void) 
{ 
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;

  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = cfag12864b_init();
  if (tmp != 0) {
    goto ldv_final;
  } else {

  }
  goto ldv_17539;
  ldv_17538: 
  tmp___0 = nondet_int();
  switch (tmp___0) {
  default: ;
  goto ldv_17537;
  }
  ldv_17537: ;
  ldv_17539: 
  tmp___1 = nondet_int();
  if (tmp___1 != 0) {
    goto ldv_17538;
  } else {

  }

  ldv_handler_precall();
  cfag12864b_exit();
  ldv_final: 
  ldv_check_final_state();
  return 0;
}
}
long ldv__builtin_expect(long exp , long c ) ;
__inline static void ldv_error(void) 
{ 


  {
  LDV_ERROR: __VERIFIER_error();
}
}
extern int ldv_undef_int(void) ;
long ldv__builtin_expect(long exp , long c ) 
{ 


  {
  return (exp);
}
}
int ldv_module_refcounter  =    1;
void ldv_module_get(struct module *module ) 
{ 


  {
  if (module) {
    ldv_module_refcounter = ldv_module_refcounter + 1;
  } else {

  }
  return;
}
}
int ldv_try_module_get(struct module *module ) 
{ 
  int module_get_succeeded ;

  {
  if (module) {
    module_get_succeeded = ldv_undef_int();
    if (module_get_succeeded == 1) {
      ldv_module_refcounter = ldv_module_refcounter + 1;
      return (1);
    } else {
      return (0);
    }
  } else {

  }
  return (0);
}
}
void ldv_module_put(struct module *module ) 
{ 


  {
  if (module) {
    if (ldv_module_refcounter > 1) {

    } else {
      ldv_error();
    }
    ldv_module_refcounter = ldv_module_refcounter - 1;
  } else {

  }
  return;
}
}
void ldv_module_put_and_exit(void) 
{ 


  {
  ldv_module_put((struct module *)1);
  LDV_STOP: 
  goto LDV_STOP;
}
}
unsigned int ldv_module_refcount(void) 
{ 


  {
  return (ldv_module_refcounter - 1);
}
}
void ldv_check_final_state(void) 
{ 


  {
  if (ldv_module_refcounter == 1) {

  } else {
    ldv_error();
  }
  return;
}
}

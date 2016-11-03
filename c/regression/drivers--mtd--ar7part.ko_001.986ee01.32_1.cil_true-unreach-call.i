extern void __VERIFIER_error() __attribute__ ((__noreturn__));

/* Generated by CIL v. 1.5.1 */
/* print_CIL_Input is false */

typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
typedef unsigned int __kernel_mode_t;
typedef unsigned long __kernel_size_t;
typedef long __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef __kernel_mode_t mode_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef unsigned char u_char;
typedef unsigned int u_int;
typedef unsigned long u_long;
typedef __u32 u_int32_t;
typedef __u8 uint8_t;
typedef __u32 uint32_t;
struct module;
struct bug_entry {
   unsigned long bug_addr ;
   char const   *file ;
   unsigned short line ;
   unsigned short flags ;
};
struct task_struct;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct __anonstruct_raw_spinlock_t_28 {
   unsigned int slock ;
};
typedef struct __anonstruct_raw_spinlock_t_28 raw_spinlock_t;
struct __anonstruct_spinlock_t_30 {
   raw_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
typedef struct __anonstruct_spinlock_t_30 spinlock_t;
struct __anonstruct_atomic_t_32 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_32 atomic_t;
struct __anonstruct_atomic64_t_33 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_33 atomic64_t;
typedef atomic64_t atomic_long_t;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long  , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct kobject;
struct attribute {
   char const   *name ;
   struct module *owner ;
   mode_t mode ;
};
struct attribute_group {
   char const   *name ;
   int (*is_visible)(struct kobject * , struct attribute * , int  ) ;
   struct attribute **attrs ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const   * , size_t  ) ;
};
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct sysfs_dirent;
struct kobject {
   char const   *name ;
   struct kref kref ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct sysfs_dirent *sd ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject *kobj ) ;
   struct sysfs_ops *sysfs_ops ;
   struct attribute **default_attrs ;
};
struct kobj_uevent_env {
   char *envp[32] ;
   int envp_idx ;
   char buf[2048] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (*filter)(struct kset *kset , struct kobject *kobj ) ;
   char const   *(*name)(struct kset *kset , struct kobject *kobj ) ;
   int (*uevent)(struct kset *kset , struct kobject *kobj , struct kobj_uevent_env *env ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops *uevent_ops ;
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
struct marker;
typedef void marker_probe_func(void *probe_private , void *call_private , char const   *fmt ,
                               va_list *args );
struct marker_probe_closure {
   marker_probe_func *func ;
   void *probe_private ;
};
struct marker {
   char const   *name ;
   char const   *format ;
   char state ;
   char ptype ;
   void (*call)(struct marker  const  *mdata , void *call_private , char const   *fmt 
                , ...) ;
   struct marker_probe_closure single ;
   struct marker_probe_closure *multi ;
} __attribute__((__aligned__(8))) ;
struct __anonstruct_local_t_94 {
   atomic_long_t a ;
};
typedef struct __anonstruct_local_t_94 local_t;
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
                    size_t count ) ;
   void (*setup)(struct module * , char const   * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
};
struct exception_table_entry;
struct module_ref {
   local_t count ;
} __attribute__((__aligned__((1) <<  (7) ))) ;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_sect_attr {
   struct module_attribute mattr ;
   char *name ;
   unsigned long address ;
};
struct module_sect_attrs {
   struct attribute_group grp ;
   int nsections ;
   struct module_sect_attr attrs[0] ;
};
struct module_param_attrs;
struct module_notes_attrs;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[64UL - sizeof(unsigned long )] ;
   struct module_kobject mkobj ;
   struct module_param_attrs *param_attrs ;
   struct module_attribute *modinfo_attrs ;
   char const   *version ;
   char const   *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol  const  *syms ;
   unsigned int num_syms ;
   unsigned long const   *crcs ;
   struct kernel_symbol  const  *gpl_syms ;
   unsigned int num_gpl_syms ;
   unsigned long const   *gpl_crcs ;
   struct kernel_symbol  const  *unused_syms ;
   unsigned int num_unused_syms ;
   unsigned long const   *unused_crcs ;
   struct kernel_symbol  const  *unused_gpl_syms ;
   unsigned int num_unused_gpl_syms ;
   unsigned long const   *unused_gpl_crcs ;
   struct kernel_symbol  const  *gpl_future_syms ;
   unsigned int num_gpl_future_syms ;
   unsigned long const   *gpl_future_crcs ;
   unsigned int num_exentries ;
   struct exception_table_entry  const  *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned long init_size ;
   unsigned long core_size ;
   unsigned long init_text_size ;
   unsigned long core_text_size ;
   void *unwind_info ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   unsigned int num_bugs ;
   struct module_ref ref[8] ;
   struct list_head modules_which_use_me ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   Elf64_Sym *symtab ;
   unsigned long num_symtab ;
   char *strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   void *percpu ;
   char *args ;
   struct marker *markers ;
   unsigned int num_markers ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
struct otp_info {
   uint32_t start ;
   uint32_t length ;
   uint32_t locked ;
};
struct nand_oobfree {
   uint32_t offset ;
   uint32_t length ;
};
struct nand_ecclayout {
   uint32_t eccbytes ;
   uint32_t eccpos[64] ;
   uint32_t oobavail ;
   struct nand_oobfree oobfree[8] ;
};
struct mtd_ecc_stats {
   uint32_t corrected ;
   uint32_t failed ;
   uint32_t badblocks ;
   uint32_t bbtblocks ;
};
struct mtd_info;
struct erase_info {
   struct mtd_info *mtd ;
   u_int32_t addr ;
   u_int32_t len ;
   u_int32_t fail_addr ;
   u_long time ;
   u_long retries ;
   u_int dev ;
   u_int cell ;
   void (*callback)(struct erase_info *self ) ;
   u_long priv ;
   u_char state ;
   struct erase_info *next ;
};
struct mtd_erase_region_info {
   u_int32_t offset ;
   u_int32_t erasesize ;
   u_int32_t numblocks ;
   unsigned long *lockmap ;
};
enum __anonenum_mtd_oob_mode_t_95 {
    MTD_OOB_PLACE = 0,
    MTD_OOB_AUTO = 1,
    MTD_OOB_RAW = 2
} ;
typedef enum __anonenum_mtd_oob_mode_t_95 mtd_oob_mode_t;
struct mtd_oob_ops {
   mtd_oob_mode_t mode ;
   size_t len ;
   size_t retlen ;
   size_t ooblen ;
   size_t oobretlen ;
   uint32_t ooboffs ;
   uint8_t *datbuf ;
   uint8_t *oobbuf ;
};
struct mtd_info {
   u_char type ;
   u_int32_t flags ;
   u_int32_t size ;
   u_int32_t erasesize ;
   u_int32_t writesize ;
   u_int32_t oobsize ;
   u_int32_t oobavail ;
   char *name ;
   int index ;
   struct nand_ecclayout *ecclayout ;
   int numeraseregions ;
   struct mtd_erase_region_info *eraseregions ;
   int (*erase)(struct mtd_info *mtd , struct erase_info *instr ) ;
   int (*point)(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                u_char **mtdbuf ) ;
   void (*unpoint)(struct mtd_info *mtd , u_char *addr , loff_t from , size_t len ) ;
   int (*read)(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
               u_char *buf ) ;
   int (*write)(struct mtd_info *mtd , loff_t to , size_t len , size_t *retlen , u_char const   *buf ) ;
   int (*panic_write)(struct mtd_info *mtd , loff_t to , size_t len , size_t *retlen ,
                      u_char const   *buf ) ;
   int (*read_oob)(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops ) ;
   int (*write_oob)(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops ) ;
   int (*get_fact_prot_info)(struct mtd_info *mtd , struct otp_info *buf , size_t len ) ;
   int (*read_fact_prot_reg)(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                             u_char *buf ) ;
   int (*get_user_prot_info)(struct mtd_info *mtd , struct otp_info *buf , size_t len ) ;
   int (*read_user_prot_reg)(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                             u_char *buf ) ;
   int (*write_user_prot_reg)(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                              u_char *buf ) ;
   int (*lock_user_prot_reg)(struct mtd_info *mtd , loff_t from , size_t len ) ;
   int (*writev)(struct mtd_info *mtd , struct kvec  const  *vecs , unsigned long count ,
                 loff_t to , size_t *retlen ) ;
   void (*sync)(struct mtd_info *mtd ) ;
   int (*lock)(struct mtd_info *mtd , loff_t ofs , size_t len ) ;
   int (*unlock)(struct mtd_info *mtd , loff_t ofs , size_t len ) ;
   int (*suspend)(struct mtd_info *mtd ) ;
   void (*resume)(struct mtd_info *mtd ) ;
   int (*block_isbad)(struct mtd_info *mtd , loff_t ofs ) ;
   int (*block_markbad)(struct mtd_info *mtd , loff_t ofs ) ;
   struct notifier_block reboot_notifier ;
   struct mtd_ecc_stats ecc_stats ;
   int subpage_sft ;
   void *priv ;
   struct module *owner ;
   int usecount ;
   int (*get_device)(struct mtd_info *mtd ) ;
   void (*put_device)(struct mtd_info *mtd ) ;
};
struct mtd_partition {
   char *name ;
   u_int32_t size ;
   u_int32_t offset ;
   u_int32_t mask_flags ;
   struct nand_ecclayout *ecclayout ;
   struct mtd_info **mtdp ;
};
struct mtd_part_parser {
   struct list_head list ;
   struct module *owner ;
   char const   *name ;
   int (*parse_fn)(struct mtd_info * , struct mtd_partition ** , unsigned long  ) ;
};
struct ar7_bin_rec {
   unsigned int checksum ;
   unsigned int length ;
   unsigned int address ;
};
struct thread_info;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct thread_info *owner ;
   char const   *name ;
   void *magic ;
};
extern int ( /* format attribute */  printk)(char const   *fmt  , ...) ;
extern int strncmp(char const   * , char const   * , __kernel_size_t  ) ;
int init_module(void) ;
extern struct module __this_module ;
extern int register_mtd_parser(struct mtd_part_parser *parser ) ;
static struct mtd_partition ar7_parts[4]  ;
static int create_mtd_partitions(struct mtd_info *master , struct mtd_partition **pparts ,
                                 unsigned long origin ) 
{ 
  struct ar7_bin_rec header ;
  unsigned int offset ;
  size_t len ;
  unsigned int pre_size ;
  unsigned int post_size ;
  unsigned int root_offset ;
  int retries ;
  int tmp ;
  int tmp___0 ;

  {
  pre_size = master->erasesize;
  post_size = 0;
  root_offset = 917504;
  retries = 10;
  ar7_parts[0].name = "loader";
  ar7_parts[0].offset = 0;
  ar7_parts[0].size = master->erasesize;
  ar7_parts[0].mask_flags = 1024;
  ar7_parts[1].name = "config";
  ar7_parts[1].offset = 0;
  ar7_parts[1].size = master->erasesize;
  ar7_parts[1].mask_flags = 0;
  while (1) {
    offset = pre_size;
    (*(master->read))(master, offset, sizeof(header), & len, (uint8_t *)(& header));
    tmp = strncmp((char *)(& header), "TIENV0.8", 8);
    if (tmp) {

    } else {
      ar7_parts[1].offset = pre_size;
    }
    if (header.checksum == 4277008962U) {
      break;
    } else {

    }
    if (header.checksum == 4276949633U) {
      break;
    } else {

    }
    pre_size = pre_size + master->erasesize;
    tmp___0 = retries;
    retries = retries - 1;
    if (tmp___0) {

    } else {
      break;
    }
  }
  pre_size = offset;
  if (! ar7_parts[1].offset) {
    ar7_parts[1].offset = master->size - master->erasesize;
    post_size = master->erasesize;
  } else {

  }
  switch (header.checksum) {
  case 4277008962U: 
  while (1) {
    if (header.length) {

    } else {
      break;
    }
    offset = (unsigned long )offset + (sizeof(header) + (unsigned long )header.length);
    (*(master->read))(master, offset, sizeof(header), & len, (uint8_t *)(& header));
  }
  root_offset = ((unsigned long )offset + sizeof(header)) + 4UL;
  break;
  case 4276949633U: 
  while (1) {
    if (header.length) {

    } else {
      break;
    }
    offset = (unsigned long )offset + (sizeof(header) + (unsigned long )header.length);
    (*(master->read))(master, offset, sizeof(header), & len, (uint8_t *)(& header));
  }
  root_offset = (((unsigned long )offset + sizeof(header)) + 4UL) + 255UL;
  root_offset = root_offset & ~ ((uint32_t )255);
  break;
  default: 
  printk("<4>Unknown magic: %08x\n", header.checksum);
  break;
  }
  (*(master->read))(master, root_offset, sizeof(header), & len, (u8 *)(& header));
  if (header.checksum != 1936814952U) {
    root_offset = root_offset + (master->erasesize - (u_int32_t )1);
    root_offset = root_offset & ~ (master->erasesize - (u_int32_t )1);
  } else {

  }
  ar7_parts[2].name = "linux";
  ar7_parts[2].offset = pre_size;
  ar7_parts[2].size = (master->size - pre_size) - post_size;
  ar7_parts[2].mask_flags = 0;
  ar7_parts[3].name = "rootfs";
  ar7_parts[3].offset = root_offset;
  ar7_parts[3].size = (master->size - root_offset) - post_size;
  ar7_parts[3].mask_flags = 0;
  *pparts = ar7_parts;
  return (4);
}
}
static struct mtd_part_parser ar7_parser  =    {{0, 0}, & __this_module, "ar7part", & create_mtd_partitions};
static int ar7_parser_init(void)  __attribute__((__section__(".init.text"))) ;
static int ar7_parser_init(void) 
{ 
  int tmp ;

  {
  tmp = register_mtd_parser(& ar7_parser);
  return (tmp);
}
}
int init_module(void) 
{ 
  int tmp ;

  {
  tmp = ar7_parser_init();
  return (tmp);
}
}
static char const   __mod_license149[12]  __attribute__((__used__, __unused__, __section__(".modinfo")))  = 
  {      'l',      'i',      'c',      'e', 
        'n',      's',      'e',      '=', 
        'G',      'P',      'L',      '\000'};
static char const   __mod_author151[72]  __attribute__((__used__, __unused__, __section__(".modinfo")))  = 
  {      'a',      'u',      't',      'h', 
        'o',      'r',      '=',      'F', 
        'e',      'l',      'i',      'x', 
        ' ',      'F',      'i',      'e', 
        't',      'k',      'a',      'u', 
        ' ',      '<',      'n',      'b', 
        'd',      '@',      'o',      'p', 
        'e',      'n',      'w',      'r', 
        't',      '.',      'o',      'r', 
        'g',      '>',      ',',      ' ', 
        'E',      'u',      'g',      'e', 
        'n',      'e',      ' ',      'K', 
        'o',      'n',      'e',      'v', 
        ' ',      '<',      'e',      'j', 
        'k',      'a',      '@',      'o', 
        'p',      'e',      'n',      'w', 
        'r',      't',      '.',      'o', 
        'r',      'g',      '>',      '\000'};
static char const   __mod_description152[40]  __attribute__((__used__, __unused__,
__section__(".modinfo")))  = 
  {      'd',      'e',      's',      'c', 
        'r',      'i',      'p',      't', 
        'i',      'o',      'n',      '=', 
        'M',      'T',      'D',      ' ', 
        'p',      'a',      'r',      't', 
        'i',      't',      'i',      'o', 
        'n',      'i',      'n',      'g', 
        ' ',      'f',      'o',      'r', 
        ' ',      'T',      'I',      ' ', 
        'A',      'R',      '7',      '\000'};
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int nondet_int(void) ;
int LDV_IN_INTERRUPT  ;
int main(void) 
{ 
  struct mtd_info *var_group1 ;
  struct mtd_partition **var_group2 ;
  unsigned long var_create_mtd_partitions_0_p2 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;

  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = ar7_parser_init();
  if (tmp) {
    goto ldv_module_exit;
  } else {

  }
  while (1) {
    tmp___1 = nondet_int();
    if (tmp___1) {

    } else {
      break;
    }
    tmp___0 = nondet_int();
    switch (tmp___0) {
    case 0: 
    ldv_handler_precall();
    create_mtd_partitions(var_group1, var_group2, var_create_mtd_partitions_0_p2);
    break;
    default: 
    break;
    }
  }
  ldv_module_exit: 
  ldv_check_final_state();
  return 0;
}
}
long ldv__builtin_expect(long exp , long c ) ;
void mutex_lock(struct mutex *lock ) ;
int ( __attribute__((__warn_unused_result__)) mutex_lock_interruptible)(struct mutex *lock ) ;
int ( __attribute__((__warn_unused_result__)) mutex_lock_killable)(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
__inline static void ( __attribute__((__always_inline__)) ldv_error)(void) 
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
int ldv_mutex  =    1;
int ( __attribute__((__warn_unused_result__)) mutex_lock_interruptible)(struct mutex *lock ) 
{ 
  int nondetermined ;

  {
  if (ldv_mutex == 1) {

  } else {
    ldv_error();
  }
  nondetermined = ldv_undef_int();
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ( __attribute__((__warn_unused_result__)) mutex_lock_killable)(struct mutex *lock ) 
{ 
  int nondetermined ;

  {
  if (ldv_mutex == 1) {

  } else {
    ldv_error();
  }
  nondetermined = ldv_undef_int();
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) 
{ 
  int atomic_value_after_dec ;

  {
  if (ldv_mutex == 1) {

  } else {
    ldv_error();
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex = 2;
    return (1);
  } else {

  }
  return (0);
}
}
void mutex_lock(struct mutex *lock ) 
{ 


  {
  if (ldv_mutex == 1) {

  } else {
    ldv_error();
  }
  ldv_mutex = 2;
  return;
}
}
int mutex_trylock(struct mutex *lock ) 
{ 
  int nondetermined ;

  {
  if (ldv_mutex == 1) {

  } else {
    ldv_error();
  }
  nondetermined = ldv_undef_int();
  if (nondetermined) {
    ldv_mutex = 2;
    return (1);
  } else {
    return (0);
  }
}
}
void mutex_unlock(struct mutex *lock ) 
{ 


  {
  if (ldv_mutex == 2) {

  } else {
    ldv_error();
  }
  ldv_mutex = 1;
  return;
}
}
void ldv_check_final_state(void) 
{ 


  {
  if (ldv_mutex == 1) {

  } else {
    ldv_error();
  }
  return;
}
}

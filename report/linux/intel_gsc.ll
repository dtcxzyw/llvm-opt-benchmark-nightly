Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_gsc?download=true
inline.NumInlined: 49
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@gsc_irq_handler.__print_once.1 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"[drm] GT%u: GSC irq: not supported\00", align 1
@gsc_irq_handler._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, i32 0, i64 0 }, align 8
@__func__.gsc_irq_handler = private unnamed_addr constant [16 x i8] c"gsc_irq_handler\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"[drm] *ERROR* GT%u: error handling GSC irq: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Not initializing gsc for remote tiles\0A\00", align 1
@gsc_init_one.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"[drm] Unknown platform\0A\00", align 1
@gsc_init_one.__print_once.6 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"[drm] HECI%d is not implemented!\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"[drm] *ERROR* gsc irq error %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"[drm] *ERROR* gsc irq init failed %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"setting up GSC lmem\0A\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"[drm] *ERROR* setting up gsc extended operational memory failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"[drm] *ERROR* gsc aux init failed %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"i915\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"[drm] *ERROR* gsc aux add failed %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"mei-gscfi\00", align 1
@gsc_def_dg1 = internal unnamed_addr constant [2 x { ptr, i64, i64, i8, i8, [6 x i8], i64 }] [{ ptr, i64, i64, i8, i8, [6 x i8], i64 } zeroinitializer, { ptr, i64, i64, i8, i8, [6 x i8], i64 } { ptr @.str.15, i64 2461696, i64 4092, i8 0, i8 0, [6 x i8] zeroinitializer, i64 0 }], align 16
@.str.17 = private unnamed_addr constant [8 x i8] c"mei-gsc\00", align 1
@gsc_def_dg2 = internal unnamed_addr constant [2 x { ptr, i64, i64, i8, i8, [6 x i8], i64 }] [{ ptr, i64, i64, i8, i8, [6 x i8], i64 } { ptr @.str.17, i64 3616768, i64 4092, i8 0, i8 0, [6 x i8] zeroinitializer, i64 4194304 }, { ptr, i64, i64, i8, i8, [6 x i8], i64 } { ptr @.str.15, i64 3620864, i64 4092, i8 0, i8 0, [6 x i8] zeroinitializer, i64 0 }], align 16
@gsc_irq_chip = internal global %struct.irq_chip { ptr @.str.19, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsc_irq_mask, ptr null, ptr @gsc_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0 }, align 8
@.str.19 = private unnamed_addr constant [13 x i8] c"gsc_irq_chip\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@.str.22 = private unnamed_addr constant [51 x i8] c"[drm] *ERROR* GT%u: Failed to allocate gsc memory\0A\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"[drm] *ERROR* GT%u: Failed to pin pages for gsc memory\0A\00", align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_gsc_irq_handler(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = and i64 %i.a, 32768
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @gsc_irq_handler(ptr noundef %0, i32 noundef 0) #5, !srcloc !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = and i64 %i.a, 16384
  %.not3 = icmp eq i64 %i.c, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @gsc_irq_handler(ptr noundef %0, i32 noundef 1) #5, !srcloc !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @gsc_irq_handler(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 1648
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 28
  %i.e = load i64, ptr %i.d, align 4
  %i.f = and i64 %i.e, 12288
  %or.cond = icmp eq i64 %i.f, 0
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.b = load i1, ptr @gsc_irq_handler.__print_once.1, align 1
  br i1 %.b, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @gsc_irq_handler.__print_once.1, align 1
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.i = phi ptr [ %i.h, %bb.d ], [ null, %bb.c ]
  %i.j = getelementptr i8, ptr %0, i64 4936
  %i.k = load i32, ptr %i.j, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.i, ptr noundef @.str.2, i32 noundef %i.k) #6
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr [24 x i8], ptr %0, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 3032
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call i32 @generic_handle_irq_safe(i32 noundef %i.o) #7 ; 2 uses
  %.not18.a = icmp eq i32 %i.q, 0
  br i1 %.not18.a, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i32 @___ratelimit(ptr noundef @gsc_irq_handler._rs, ptr noundef @__func__.gsc_irq_handler) #7
  %.not19 = icmp eq i32 %i.r, 0
  br i1 %.not19, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i20 = icmp eq ptr %i.s, null
  br i1 %.not.i20, label %__drm_to_dev.exit21, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  br label %__drm_to_dev.exit21

__drm_to_dev.exit21:                              ; preds = %bb.h, %bb.i
  %i.v = phi ptr [ %i.u, %bb.i ], [ null, %bb.h ]
  %i.w = getelementptr i8, ptr %0, i64 4936
  %i.x = load i32, ptr %i.w, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.v, ptr noundef @.str.3, i32 noundef %i.x, i32 noundef %i.q) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %__drm_to_dev.exit21, %bb.g, %bb.e, %bb.b, %__drm_to_dev.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_gsc_init(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 1648       ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 28
  %i.d = load i64, ptr %i.c, align 4
  %i.e = and i64 %i.d, 12288
  %or.cond = icmp eq i64 %i.e, 0
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8          ; 10 uses
  %i.g = getelementptr i8, ptr %0, i64 -3016      ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 1920       ; 3 uses
  %.not.i.i = icmp eq ptr %1, null                ; 9 uses
  %i.i = getelementptr i8, ptr %1, i64 1668
  %i.j = getelementptr i8, ptr %0, i64 -624       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %gsc_init_one.exit
  %i.k = phi i1 [ true, %.preheader ], [ false, %gsc_init_one.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ 1, %gsc_init_one.exit ] ; 4 uses
  %i.l = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.m = getelementptr [24 x i8], ptr %0, i64 %indvars.iv ; 6 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 3 uses
  store i32 -1, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.m, i64 20       ; 2 uses
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.p, ptr %i.o, align 4
  %i.q = load i32, ptr %i.h, align 8
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.f, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.d, %bb.c
  %i.s = phi ptr [ %i.r, %bb.d ], [ null, %bb.c ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.s, i32 noundef 1, ptr noundef @.str.4) #7
  br label %gsc_init_one.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 28
  %i.v = load i64, ptr %i.u, align 4
  %i.w = and i64 %i.v, 4096
  %.not100.i = icmp eq i64 %i.w, 0
  br i1 %.not100.i, label %gsc_init_one.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = load i32, ptr %i.i, align 4
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = and i64 %i.y, 512
  %.not127.i = icmp eq i64 %i.z, 0
  br i1 %.not127.i, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.aa = and i64 %i.y, 4096
  %.not128.i = icmp eq i64 %i.aa, 0
  br i1 %.not128.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.b.i = load i1, ptr @gsc_init_one.__print_once, align 1
  br i1 %.b.i, label %gsc_init_one.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i1 true, ptr @gsc_init_one.__print_once, align 1
  br i1 %.not.i.i, label %__drm_to_dev.exit106.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.f, align 8
  br label %__drm_to_dev.exit106.i

__drm_to_dev.exit106.i:                           ; preds = %bb.k, %bb.j
  %i.ac = phi ptr [ %i.ab, %bb.k ], [ null, %bb.j ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.ac, ptr noundef @.str.5) #6
  br label %gsc_init_one.exit

bb.l:                                             ; preds = %bb.h, %bb.g
  %gsc_def_dg2.sink.i = phi ptr [ @gsc_def_dg1, %bb.g ], [ @gsc_def_dg2, %bb.h ]
  %i.ad = getelementptr [40 x i8], ptr %gsc_def_dg2.sink.i, i64 %indvars.iv ; 6 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not101.i = icmp eq ptr %i.ae, null
  br i1 %.not101.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %.b99.i = load i1, ptr @gsc_init_one.__print_once.6, align 1
  br i1 %.b99.i, label %gsc_init_one.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i1 true, ptr @gsc_init_one.__print_once.6, align 1
  br i1 %.not.i.i, label %__drm_to_dev.exit108.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr %i.f, align 8
  br label %__drm_to_dev.exit108.i

__drm_to_dev.exit108.i:                           ; preds = %bb.o, %bb.n
  %i.ag = phi ptr [ %i.af, %bb.o ], [ null, %bb.n ]
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = add nuw nsw i32 %i.ah, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.ag, ptr noundef @.str.7, i32 noundef %i.ai) #6
  br label %gsc_init_one.exit

bb.p:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %i.ad, i64 24
  %i.ak = load i8, ptr %i.aj, align 8, !range !16, !noundef !17
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null) #7 ; 5 uses
  store i32 %i.am, ptr %i.n, align 8
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  br i1 %.not.i.i, label %__drm_to_dev.exit110.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = load ptr, ptr %i.f, align 8
  br label %__drm_to_dev.exit110.i

__drm_to_dev.exit110.i:                           ; preds = %bb.s, %bb.r
  %i.ap = phi ptr [ %i.ao, %bb.s ], [ null, %bb.r ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ap, ptr noundef @.str.8, i32 noundef %i.am) #6
  br label %bb.au

bb.t:                                             ; preds = %bb.q
  tail call void @irq_set_chip_and_handler_name(i32 noundef range(i32 0, -2147483648) %i.am, ptr noundef @gsc_irq_chip, ptr noundef @handle_simple_irq, ptr noundef @__func__.gsc_irq_handler) #7
  %i.aq = tail call i32 @irq_set_chip_data(i32 noundef range(i32 0, -2147483648) %i.am, ptr noundef null) #7 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i.i, label %__drm_to_dev.exit112.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = load ptr, ptr %i.f, align 8
  br label %__drm_to_dev.exit112.i

__drm_to_dev.exit112.i:                           ; preds = %bb.v, %bb.u
  %i.at = phi ptr [ %i.as, %bb.v ], [ null, %bb.u ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.at, ptr noundef @.str.9, i32 noundef %i.aq) #6
  br label %bb.au

bb.w:                                             ; preds = %bb.t, %bb.p
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 80), align 16
  %i.av = tail call noalias noundef align 8 dereferenceable_or_null(976) ptr @__kmalloc_cache_noprof(ptr noundef %i.au, i32 noundef 3520, i64 noundef 976) #8 ; 22 uses
  %.not102.i = icmp eq ptr %i.av, null
  br i1 %.not102.i, label %bb.au, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = getelementptr i8, ptr %i.ad, i64 32
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %.not103.i = icmp eq i64 %i.ax, 0
  br i1 %.not103.i, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not.i.i, label %__drm_to_dev.exit114.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ay = load ptr, ptr %i.f, align 8
  br label %__drm_to_dev.exit114.i

__drm_to_dev.exit114.i:                           ; preds = %bb.z, %bb.y
  %i.az = phi ptr [ %i.ay, %bb.z ], [ null, %bb.y ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.az, i32 noundef 1, ptr noundef @.str.10) #7
  %i.ba = load ptr, ptr %i.g, align 8
  %i.bb = tail call ptr @i915_gem_object_create_lmem(ptr noundef %i.ba, i64 noundef %i.ax, i32 noundef 5) #7 ; 9 uses
  %i.bc = icmp ugt ptr %i.bb, inttoptr (i64 -4096 to ptr)
  br i1 %i.bc, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %__drm_to_dev.exit114.i
  %i.bd = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %gsc_ext_om_alloc.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  br label %gsc_ext_om_alloc.exit.i

bb.ac:                                            ; preds = %__drm_to_dev.exit114.i
  %i.bg = tail call i32 @i915_gem_object_pin_pages_unlocked(ptr noundef %i.bb) #7
  %.not.i115.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i115.i, label %gsc_ext_om_alloc.exit.thread124.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bh = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i16.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i16.i.i, label %__drm_to_dev.exit17.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %__drm_to_dev.exit17.i.i

__drm_to_dev.exit17.i.i:                          ; preds = %bb.ae, %bb.ad
  %i.bk = phi ptr [ %i.bj, %bb.ae ], [ null, %bb.ad ]
  %i.bl = load i32, ptr %i.h, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bk, ptr noundef @.str.23, i32 noundef %i.bl) #6
  %i.bm = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bb, i32 -1, ptr elementtype(i32) %i.bb) #9, !srcloc !10 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %__drm_to_dev.exit17.i.i
  %i.bo = icmp slt i32 %i.bm, 1
  br i1 %i.bo, label %bb.ag, label %gsc_ext_om_alloc.exit.thread.i, !prof !11

bb.ag:                                            ; preds = %bb.af
  tail call void @refcount_warn_saturate(ptr noundef %i.bb, i32 noundef 3) #7
  br label %gsc_ext_om_alloc.exit.thread.i

bb.ah:                                            ; preds = %__drm_to_dev.exit17.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !12
  tail call void @drm_gem_object_free(ptr noundef %i.bb) #7
  br label %gsc_ext_om_alloc.exit.thread.i

gsc_ext_om_alloc.exit.thread124.i:                ; preds = %bb.ac
  %i.bp = getelementptr i8, ptr %i.m, i64 8
  store ptr %i.bb, ptr %i.bp, align 8
  br label %bb.aj

gsc_ext_om_alloc.exit.i:                          ; preds = %bb.ab, %bb.aa
  %i.bq = phi ptr [ %i.bf, %bb.ab ], [ null, %bb.aa ]
  %i.br = load i32, ptr %i.h, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bq, ptr noundef @.str.22, i32 noundef %i.br) #6
  %i.bs = ptrtoint ptr %i.bb to i64
  %i.bt = and i64 %i.bs, 4294967295
  %.not104.i = icmp eq i64 %i.bt, 0
  br i1 %.not104.i, label %gsc_ext_om_alloc.exit._crit_edge.i, label %gsc_ext_om_alloc.exit.thread.i

gsc_ext_om_alloc.exit._crit_edge.i:               ; preds = %gsc_ext_om_alloc.exit.i
  %.phi.trans.insert.i = getelementptr i8, ptr %i.m, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.aj

gsc_ext_om_alloc.exit.thread.i:                   ; preds = %gsc_ext_om_alloc.exit.i, %bb.ah, %bb.ag, %bb.af
  br i1 %.not.i.i, label %__drm_to_dev.exit117.i, label %bb.ai

bb.ai:                                            ; preds = %gsc_ext_om_alloc.exit.thread.i
  %i.bu = load ptr, ptr %i.f, align 8
  br label %__drm_to_dev.exit117.i

__drm_to_dev.exit117.i:                           ; preds = %bb.ai, %gsc_ext_om_alloc.exit.thread.i
  %i.bv = phi ptr [ %i.bu, %bb.ai ], [ null, %gsc_ext_om_alloc.exit.thread.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bv, ptr noundef @.str.11) #6
  tail call void @kfree(ptr noundef nonnull %i.av) #7
  br label %bb.au

bb.aj:                                            ; preds = %gsc_ext_om_alloc.exit._crit_edge.i, %gsc_ext_om_alloc.exit.thread124.i
  %i.bw = phi ptr [ %.pre.i, %gsc_ext_om_alloc.exit._crit_edge.i ], [ %i.bb, %gsc_ext_om_alloc.exit.thread124.i ]
  %i.bx = tail call i64 @__i915_gem_object_get_dma_address(ptr noundef %i.bw, i64 noundef 0) #7 ; 2 uses
  %i.by = getelementptr i8, ptr %i.av, i64 904
  store i64 %i.bx, ptr %i.by, align 8
  %i.bz = add i64 %i.bx, %i.ax
  %i.ca = getelementptr i8, ptr %i.av, i64 912
  store i64 %i.bz, ptr %i.ca, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.x
  %i.cb = load i32, ptr %i.n, align 8
  %i.cc = getelementptr i8, ptr %i.av, i64 832
  store i32 %i.cb, ptr %i.cc, align 8
  %i.cd = getelementptr i8, ptr %i.l, i64 768     ; 2 uses
  %i.ce = getelementptr i8, ptr %i.av, i64 840
  %i.cf = getelementptr i8, ptr %i.av, i64 880
  store ptr %i.cd, ptr %i.cf, align 8
  %i.cg = getelementptr i8, ptr %i.ad, i64 8
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = load i64, ptr %i.cd, align 8
  %i.cj = add i64 %i.ci, %i.ch                    ; 2 uses
  store i64 %i.cj, ptr %i.ce, align 8
  %i.ck = getelementptr i8, ptr %i.ad, i64 16
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = add i64 %i.cj, -1
  %i.cn = add i64 %i.cm, %i.cl
  %i.co = getelementptr i8, ptr %i.av, i64 848
  store i64 %i.cn, ptr %i.co, align 8
  %i.cp = getelementptr i8, ptr %i.av, i64 864
  store i64 512, ptr %i.cp, align 8
  %i.cq = getelementptr i8, ptr %i.av, i64 872
  store i64 0, ptr %i.cq, align 8
  %i.cr = getelementptr i8, ptr %i.ad, i64 25
  %i.cs = load i8, ptr %i.cr, align 1, !range !16, !noundef !17
  %i.ct = getelementptr i8, ptr %i.av, i64 968
  store i8 %i.cs, ptr %i.ct, align 8
  %i.cu = getelementptr i8, ptr %i.av, i64 760
  store ptr %i.ae, ptr %i.cu, align 8
  %i.cv = getelementptr i8, ptr %i.l, i64 -184
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 200
  %.val.i = load ptr, ptr %i.cx, align 8
  %.val.val.i = load i32, ptr %.val.i, align 8
  %i.cy = shl i32 %.val.val.i, 16
  %i.cz = getelementptr i8, ptr %i.cw, i64 216
  %i.da = load i8, ptr %i.cz, align 8
  %i.db = zext i8 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 8
  %i.dd = getelementptr i8, ptr %i.l, i64 -144
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = or i32 %i.de, %i.cy
  %i.dg = or i32 %i.df, %i.dc
  %i.dh = getelementptr i8, ptr %i.av, i64 768
  store i32 %i.dg, ptr %i.dh, align 8
  %i.di = getelementptr i8, ptr %i.av, i64 64
  store ptr %i.l, ptr %i.di, align 8
  %i.dj = getelementptr i8, ptr %i.av, i64 712
  store ptr @gsc_release_dev, ptr %i.dj, align 8
  %i.dk = tail call i32 @auxiliary_device_init(ptr noundef nonnull %i.av) #7 ; 2 uses
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  br i1 %.not.i.i, label %__drm_to_dev.exit119.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dm = load ptr, ptr %i.f, align 8
  br label %__drm_to_dev.exit119.i

__drm_to_dev.exit119.i:                           ; preds = %bb.am, %bb.al
  %i.dn = phi ptr [ %i.dm, %bb.am ], [ null, %bb.al ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.dn, ptr noundef @.str.12, i32 noundef %i.dk) #6
  tail call void @kfree(ptr noundef nonnull %i.av) #7
  br label %bb.au

bb.an:                                            ; preds = %bb.ak
  store ptr %i.av, ptr %i.m, align 8
  br i1 %i.k, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.do = getelementptr i8, ptr %i.av, i64 96
  %i.dp = load ptr, ptr %i.do, align 8
  tail call void @intel_huc_register_gsc_notifier(ptr noundef %i.j, ptr noundef %i.dp) #7
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dq = tail call i32 @__auxiliary_device_add(ptr noundef nonnull %i.av, ptr noundef @.str.13) #7 ; 2 uses
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %bb.aq, label %gsc_init_one.exit

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not.i.i, label %__drm_to_dev.exit121.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ds = load ptr, ptr %i.f, align 8
  br label %__drm_to_dev.exit121.i

__drm_to_dev.exit121.i:                           ; preds = %bb.ar, %bb.aq
  %i.dt = phi ptr [ %i.ds, %bb.ar ], [ null, %bb.aq ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.dt, ptr noundef @.str.14, i32 noundef %i.dq) #6
  br i1 %i.k, label %bb.as, label %bb.at

bb.as:                                            ; preds = %__drm_to_dev.exit121.i
  %i.du = getelementptr i8, ptr %i.av, i64 96
  %i.dv = load ptr, ptr %i.du, align 8
  tail call void @intel_huc_unregister_gsc_notifier(ptr noundef %i.j, ptr noundef %i.dv) #7
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %__drm_to_dev.exit121.i
  store ptr null, ptr %i.m, align 8
  tail call void @put_device(ptr noundef nonnull %i.av) #7
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %__drm_to_dev.exit119.i, %__drm_to_dev.exit117.i, %bb.w, %__drm_to_dev.exit112.i, %__drm_to_dev.exit110.i
  %i.dw = load i32, ptr %i.o, align 4
  tail call fastcc void @gsc_destroy_one(ptr noundef %0, i32 noundef %i.dw) #5
  br label %gsc_init_one.exit

gsc_init_one.exit:                                ; preds = %__drm_to_dev.exit.i, %bb.f, %bb.i, %__drm_to_dev.exit106.i, %bb.m, %__drm_to_dev.exit108.i, %bb.ap, %bb.au
  br i1 %i.k, label %bb.b, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %gsc_init_one.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_gsc_fini(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -3016
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 1648
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 28
  %i.f = load i64, ptr %i.e, align 4
  %i.g = and i64 %i.f, 12288
  %or.cond = icmp eq i64 %i.g, 0
  br i1 %or.cond, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  tail call fastcc void @gsc_destroy_one(ptr noundef %0, i32 noundef 0) #5
  tail call fastcc void @gsc_destroy_one(ptr noundef %0, i32 noundef 1) #5
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @gsc_destroy_one(ptr noundef %0, i32 noundef %1) unnamed_addr #0 align 16 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr [24 x i8], ptr %0, i64 %i.a ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 -624
  %i.f = getelementptr i8, ptr %i.c, i64 96
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @intel_huc_unregister_gsc_notifier(ptr noundef %i.e, ptr noundef %i.g) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @device_del(ptr noundef nonnull %i.c) #7
  tail call void @put_device(ptr noundef nonnull %i.c) #7
  store ptr null, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @irq_free_descs(i32 noundef range(i32 0, -2147483648) %i.i, i32 noundef 1) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 -1, ptr %i.h, align 8
  %i.k = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 6 uses
  store ptr null, ptr %i.k, align 8
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %gsc_ext_om_destroy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %i.l, i64 688      ; 3 uses
  %i.n = load volatile i32, ptr %i.m, align 4
  %.not8.i = icmp eq i32 %i.n, 0
  br i1 %.not8.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.m, ptr elementtype(i32) %i.m) #9, !srcloc !19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.l, i32 -1, ptr nonnull elementtype(i32) %i.l) #9, !srcloc !10 ; 2 uses
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = icmp slt i32 %i.o, 1
  br i1 %i.q, label %bb.l, label %gsc_ext_om_destroy.exit, !prof !11

bb.l:                                             ; preds = %bb.k
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.l, i32 noundef 3) #7
  br label %gsc_ext_om_destroy.exit

bb.m:                                             ; preds = %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !12
  tail call void @drm_gem_object_free(ptr noundef nonnull %i.l) #7
  br label %gsc_ext_om_destroy.exit

gsc_ext_om_destroy.exit:                          ; preds = %bb.g, %bb.k, %bb.l, %bb.m
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @generic_handle_irq_safe(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__i915_gem_object_get_dma_address(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gsc_release_dev(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @auxiliary_device_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_huc_register_gsc_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__auxiliary_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_huc_unregister_gsc_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal void @gsc_irq_mask(ptr nofree readnone captures(none) %0) #3 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal void @gsc_irq_unmask(ptr nofree readnone captures(none) %0) #3 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_create_lmem(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_pin_pages_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2
end_hunk_0

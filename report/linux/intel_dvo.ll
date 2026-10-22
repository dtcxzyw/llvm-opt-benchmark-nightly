Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dvo?download=true
inline.NumInlined: 40
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.intel_dvo_device = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.intel_dvo_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.93 }
%union.anon.93 = type { i64 }

@__UNIQUE_ID_modinfo_683 = internal constant [19 x i8] c"i915.import_ns=PWM\00", section ".modinfo", align 1
@intel_dvo_enc_funcs = internal constant %struct.drm_encoder_funcs { ptr null, ptr @intel_dvo_enc_destroy, ptr null, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [7 x i8] c"DVO %c\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"[ENCODER:%d:%s] detected %s\0A\00", align 1
@intel_dvo_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr null, ptr @intel_dvo_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr @intel_connector_register, ptr @intel_connector_unregister, ptr @intel_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@intel_dvo_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @intel_dvo_get_modes, ptr null, ptr @intel_dvo_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@intel_dvo_devices = internal unnamed_addr constant [7 x %struct.intel_dvo_device] [%struct.intel_dvo_device { ptr @.str.4, i32 2, i32 2, i32 0, i32 56, ptr @sil164_ops, ptr null, ptr null }, %struct.intel_dvo_device { ptr @.str.5, i32 2, i32 2, i32 0, i32 118, ptr @ch7xxx_ops, ptr null, ptr null }, %struct.intel_dvo_device { ptr @.str.5, i32 2, i32 2, i32 0, i32 117, ptr @ch7xxx_ops, ptr null, ptr null }, %struct.intel_dvo_device { ptr @.str.6, i32 1, i32 0, i32 0, i32 2, ptr @ivch_ops, ptr null, ptr null }, %struct.intel_dvo_device { ptr @.str.7, i32 2, i32 2, i32 0, i32 56, ptr @tfp410_ops, ptr null, ptr null }, %struct.intel_dvo_device { ptr @.str.8, i32 1, i32 2, i32 5, i32 117, ptr @ch7017_ops, ptr null, ptr null }, %struct.intel_dvo_device { ptr @.str.9, i32 5, i32 1, i32 0, i32 56, ptr @ns2501_ops, ptr null, ptr null }], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"sil164\00", align 1
@sil164_ops = external dso_local constant %struct.intel_dvo_dev_ops, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"ch7xxx\00", align 1
@ch7xxx_ops = external dso_local constant %struct.intel_dvo_dev_ops, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"ivch\00", align 1
@ivch_ops = external dso_local constant %struct.intel_dvo_dev_ops, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"tfp410\00", align 1
@tfp410_ops = external dso_local constant %struct.intel_dvo_dev_ops, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"ch7017\00", align 1
@ch7017_ops = external dso_local constant %struct.intel_dvo_dev_ops, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"ns2501\00", align 1
@ns2501_ops = external dso_local constant %struct.intel_dvo_dev_ops, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"Missing case (%s == %ld)\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"dvo->type\00", align 1
@intel_dvo_encoder_type.__UNIQUE_ID_addressable___SCK__WARN_trap_689 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@.str.12 = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/i915/display/intel_dvo.c\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"[CONNECTOR:%d:%s]\0A\00", align 1
@intel_dvo_connector_type.__UNIQUE_ID_addressable___SCK__WARN_trap_690 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_modinfo_683, ptr @intel_dvo_connector_type.__UNIQUE_ID_addressable___SCK__WARN_trap_690, ptr @intel_dvo_encoder_type.__UNIQUE_ID_addressable___SCK__WARN_trap_689], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_dvo_init(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 80), align 16
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(560) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 3520, i64 noundef 560) #4 ; 23 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @intel_connector_alloc() #5 ; 12 uses
  %.not56 = icmp eq ptr %i.c, null
  br i1 %.not56, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @kfree(ptr noundef nonnull %i.b) #5
  br label %bb.af

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.b, i64 552
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 320
  store ptr @intel_disable_dvo, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 312
  store ptr @intel_enable_dvo, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 368
  store ptr @intel_dvo_get_hw_state, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.b, i64 376
  store ptr @intel_dvo_get_config, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.b, i64 280
  store ptr @intel_dvo_compute_config, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.b, i64 304
  store ptr @intel_dvo_pre_enable, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.c, i64 2264
  store ptr @intel_dvo_connector_get_hw_state, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.b, i64 504      ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 1188       ; 8 uses
  %i.n = getelementptr i8, ptr %0, i64 1160       ; 8 uses
  br label %bb.e

bb.e:                                             ; preds = %intel_dvo_init_dev.exit.i, %bb.d
  %indvars.iv.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i, %intel_dvo_init_dev.exit.i ] ; 4 uses
  %1 = getelementptr [48 x i8], ptr @intel_dvo_devices, i64 %indvars.iv.i ; 3 uses
  %2 = getelementptr i8, ptr %1, i64 16
  %3 = load i32, ptr %2, align 16                 ; 2 uses
  %4 = tail call zeroext i1 @intel_gmbus_is_valid_pin(ptr noundef %0, i32 noundef %3) #5
  %5 = icmp eq i64 %indvars.iv.i, 3
  %6 = icmp eq i64 %indvars.iv.i, 5
  %7 = or i1 %5, %6
  %..i.i = select i1 %7, i32 1, i32 5
  %.034.i.i = select i1 %4, i32 %3, i32 %..i.i
  %i.o = tail call ptr @intel_gmbus_get_adapter(ptr noundef %0, i32 noundef %.034.i.i) #5 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) %i.l, ptr noundef readonly align 16 dereferenceable(48) %1, i64 48, i1 false)
  tail call void @intel_gmbus_force_bit(ptr noundef %i.o, i1 noundef zeroext true) #5
  %i.p = load i8, ptr %i.m, align 4
  %i.q = zext i8 %i.p to i64                      ; 2 uses
  %i.r = and i64 %i.q, 1
  %.not35.i.i = icmp eq i64 %i.r, 0
  br i1 %.not35.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 48
  %i.u = load i32, ptr %i.t, align 4
  %i.v = add i32 %i.u, 24596                      ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.v) #5
  %.val.i.i.i = load ptr, ptr %0, align 8
  %i.w = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i.i) #5 ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 144
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call i32 %i.y(ptr noundef %i.w, i32 %i.v, i1 noundef zeroext true) #5, !inline_history !14 ; 2 uses
  %i.aa = or i32 %i.z, 1073741824
  %i.ab = getelementptr i8, ptr %i.w, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef %i.w, i32 %i.v, i32 noundef %i.aa, i1 noundef zeroext true) #5, !inline_history !15
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.v) #5
  %.pre.i.i = load i8, ptr %i.m, align 4
  %.pre46.i.i = zext i8 %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i = phi i64 [ %.pre46.i.i, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i = phi i32 [ %i.z, %bb.f ], [ 0, %bb.e ]
  %i.ad = and i64 %.pre-phi.i.i, 2
  %.not35.1.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not35.1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.n, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 48
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ag, 24600                    ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.ah) #5
  %.val.i.1.i.i = load ptr, ptr %0, align 8
  %i.ai = tail call ptr @to_intel_uncore(ptr noundef %.val.i.1.i.i) #5 ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call i32 %i.ak(ptr noundef %i.ai, i32 %i.ah, i1 noundef zeroext true) #5, !inline_history !14 ; 2 uses
  %i.am = or i32 %i.al, 1073741824
  %i.an = getelementptr i8, ptr %i.ai, i64 176
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef %i.ai, i32 %i.ah, i32 noundef %i.am, i1 noundef zeroext true) #5, !inline_history !15
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.ah) #5
  %.pre41.i.i = load i8, ptr %i.m, align 4
  %.pre47.i.i = zext i8 %.pre41.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi48.i.i = phi i64 [ %.pre47.i.i, %bb.h ], [ %.pre-phi.i.i, %bb.g ] ; 2 uses
  %.sroa.5.0.i.i = phi i32 [ %i.al, %bb.h ], [ 0, %bb.g ]
  %i.ap = and i64 %.pre-phi48.i.i, 4
  %.not35.2.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not35.2.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.n, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = add i32 %i.as, 24624                    ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.at) #5
  %.val.i.2.i.i = load ptr, ptr %0, align 8
  %i.au = tail call ptr @to_intel_uncore(ptr noundef %.val.i.2.i.i) #5 ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 144
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call i32 %i.aw(ptr noundef %i.au, i32 %i.at, i1 noundef zeroext true) #5, !inline_history !14 ; 2 uses
  %i.ay = or i32 %i.ax, 1073741824
  %i.az = getelementptr i8, ptr %i.au, i64 176
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef %i.au, i32 %i.at, i32 noundef %i.ay, i1 noundef zeroext true) #5, !inline_history !15
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.at) #5
  %.pre42.i.i = load i8, ptr %i.m, align 4
  %.pre49.i.i = zext i8 %.pre42.i.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi50.i.i = phi i64 [ %.pre49.i.i, %bb.j ], [ %.pre-phi48.i.i, %bb.i ]
  %.sroa.7.0.i.i = phi i32 [ %i.ax, %bb.j ], [ 0, %bb.i ]
  %i.bb = and i64 %.pre-phi50.i.i, 8
  %.not35.3.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not35.3.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %i.n, align 8
  %i.bd = getelementptr i8, ptr %i.bc, i64 48
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add i32 %i.be, 24648                    ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.bf) #5
  %.val.i.3.i.i = load ptr, ptr %0, align 8
  %i.bg = tail call ptr @to_intel_uncore(ptr noundef %.val.i.3.i.i) #5 ; 4 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 144
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call i32 %i.bi(ptr noundef %i.bg, i32 %i.bf, i1 noundef zeroext true) #5, !inline_history !14 ; 2 uses
  %i.bk = or i32 %i.bj, 1073741824
  %i.bl = getelementptr i8, ptr %i.bg, i64 176
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef %i.bg, i32 %i.bf, i32 noundef %i.bk, i1 noundef zeroext true) #5, !inline_history !15
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.bf) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.9.0.i.i = phi i32 [ 0, %bb.k ], [ %i.bj, %bb.l ]
  %i.bn = getelementptr i8, ptr %1, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call zeroext i1 %i.bp(ptr noundef %i.l, ptr noundef %i.o) #5, !inline_history !16 ; 2 uses
  %i.br = load i8, ptr %i.m, align 4
  %i.bs = zext i8 %i.br to i64                    ; 2 uses
  %i.bt = and i64 %i.bs, 1
  %.not.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.n, align 8
  %i.bv = getelementptr i8, ptr %i.bu, i64 48
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = add i32 %i.bw, 24596                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.bx) #5
  %.val.i36.i.i = load ptr, ptr %0, align 8
  %i.by = tail call ptr @to_intel_uncore(ptr noundef %.val.i36.i.i) #5 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 176
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef %i.by, i32 %i.bx, i32 noundef %.sroa.0.0.i.i, i1 noundef zeroext true) #5, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.bx) #5
  %.pre43.i.i = load i8, ptr %i.m, align 4
  %.pre51.i.i = zext i8 %.pre43.i.i to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre-phi52.i.i = phi i64 [ %.pre51.i.i, %bb.n ], [ %i.bs, %bb.m ] ; 2 uses
  %i.cb = and i64 %.pre-phi52.i.i, 2
  %.not.1.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.1.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %i.n, align 8
  %i.cd = getelementptr i8, ptr %i.cc, i64 48
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = add i32 %i.ce, 24600                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.cf) #5
  %.val.i36.1.i.i = load ptr, ptr %0, align 8
  %i.cg = tail call ptr @to_intel_uncore(ptr noundef %.val.i36.1.i.i) #5 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 176
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef %i.cg, i32 %i.cf, i32 noundef %.sroa.5.0.i.i, i1 noundef zeroext true) #5, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.cf) #5
  %.pre44.i.i = load i8, ptr %i.m, align 4
  %.pre53.i.i = zext i8 %.pre44.i.i to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre-phi54.i.i = phi i64 [ %.pre53.i.i, %bb.p ], [ %.pre-phi52.i.i, %bb.o ] ; 2 uses
  %i.cj = and i64 %.pre-phi54.i.i, 4
  %.not.2.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.2.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = load ptr, ptr %i.n, align 8
  %i.cl = getelementptr i8, ptr %i.ck, i64 48
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = add i32 %i.cm, 24624                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.cn) #5
  %.val.i36.2.i.i = load ptr, ptr %0, align 8
  %i.co = tail call ptr @to_intel_uncore(ptr noundef %.val.i36.2.i.i) #5 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 176
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef %i.co, i32 %i.cn, i32 noundef %.sroa.7.0.i.i, i1 noundef zeroext true) #5, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.cn) #5
  %.pre45.i.i = load i8, ptr %i.m, align 4
  %.pre55.i.i = zext i8 %.pre45.i.i to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre-phi56.i.i = phi i64 [ %.pre55.i.i, %bb.r ], [ %.pre-phi54.i.i, %bb.q ]
  %i.cr = and i64 %.pre-phi56.i.i, 8
  %.not.3.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.3.i.i, label %intel_dvo_init_dev.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = load ptr, ptr %i.n, align 8
  %i.ct = getelementptr i8, ptr %i.cs, i64 48
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = add i32 %i.cu, 24648                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.cv) #5
  %.val.i36.3.i.i = load ptr, ptr %0, align 8
  %i.cw = tail call ptr @to_intel_uncore(ptr noundef %.val.i36.3.i.i) #5 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 176
  %i.cy = load ptr, ptr %i.cx, align 8
  tail call void %i.cy(ptr noundef %i.cw, i32 %i.cv, i32 noundef %.sroa.9.0.i.i, i1 noundef zeroext true) #5, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.cv) #5
  br label %intel_dvo_init_dev.exit.i

intel_dvo_init_dev.exit.i:                        ; preds = %bb.t, %bb.s
  tail call void @intel_gmbus_force_bit(ptr noundef %i.o, i1 noundef zeroext false) #5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 7
  %or.cond.i = select i1 %i.bq, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %intel_dvo_probe.exit, label %bb.e, !llvm.loop !18

intel_dvo_probe.exit:                             ; preds = %intel_dvo_init_dev.exit.i
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %intel_dvo_probe.exit
  tail call void @kfree(ptr noundef nonnull %i.b) #5
  tail call void @intel_connector_free(ptr noundef nonnull %i.c) #5
  br label %bb.af

bb.v:                                             ; preds = %intel_dvo_probe.exit
  %i.cz = getelementptr i8, ptr %i.b, i64 516     ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = tail call zeroext i1 @assert_port_valid(ptr noundef %0, i32 noundef %i.da) #5 ; 0 uses
  %i.dc = getelementptr i8, ptr %i.b, i64 152
  store i32 2, ptr %i.dc, align 8
  %i.dd = getelementptr i8, ptr %i.b, i64 492
  store i32 43, ptr %i.dd, align 4
  %i.de = load i32, ptr %i.cz, align 4            ; 4 uses
  %i.df = getelementptr i8, ptr %i.b, i64 156     ; 2 uses
  store i32 %i.de, ptr %i.df, align 4
  %i.dg = getelementptr i8, ptr %i.b, i64 162
  store i8 -1, ptr %i.dg, align 2
  %i.dh = getelementptr i8, ptr %i.b, i64 512     ; 6 uses
  %i.di = load i32, ptr %i.dh, align 8            ; 3 uses
  %.not57 = icmp eq i32 %i.di, 1
  br i1 %.not57, label %.thread, label %bb.w

.thread:                                          ; preds = %bb.v
  %i.dj = load ptr, ptr %0, align 8
  br label %intel_dvo_encoder_type.exit

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr i8, ptr %i.b, i64 160
  store i16 6, ptr %i.dk, align 8
  %i.dl = load ptr, ptr %0, align 8               ; 3 uses
  switch i32 %i.di, label %bb.y [
    i32 2, label %intel_dvo_encoder_type.exit
    i32 5, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  br label %intel_dvo_encoder_type.exit

bb.y:                                             ; preds = %bb.w
  %i.dm = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, ptr @.str.12, i32 383, i32 2321, i64 16) #6, !srcloc !20
  %i.dn = load i32, ptr %i.dh, align 8
  %i.do = sext i32 %i.dn to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.dm, ptr noundef @.str.11, i64 noundef %i.do) #5
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !21
  %.pre = load i32, ptr %i.df, align 4
  br label %intel_dvo_encoder_type.exit

intel_dvo_encoder_type.exit:                      ; preds = %.thread, %bb.w, %bb.x, %bb.y
  %i.dp = phi ptr [ %i.dl, %bb.y ], [ %i.dl, %bb.w ], [ %i.dj, %.thread ], [ %i.dl, %bb.x ]
  %i.dq = phi i32 [ %.pre, %bb.y ], [ %i.de, %bb.w ], [ %i.de, %.thread ], [ %i.de, %bb.x ]
  %.0.i = phi i32 [ 0, %bb.y ], [ %i.di, %bb.w ], [ 3, %.thread ], [ 3, %bb.x ]
  %i.dr = add i32 %i.dq, 65
  %i.ds = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %i.dp, ptr noundef nonnull %i.b, ptr noundef @intel_dvo_enc_funcs, i32 noundef %.0.i, ptr noundef @.str, i32 noundef %i.dr) #5 ; 0 uses
  %i.dt = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.dt, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.z

bb.z:                                             ; preds = %intel_dvo_encoder_type.exit
  %i.du = getelementptr i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %intel_dvo_encoder_type.exit, %bb.z
  %i.dw = phi ptr [ %i.dv, %bb.z ], [ null, %intel_dvo_encoder_type.exit ]
  %i.dx = getelementptr i8, ptr %i.b, i64 24
  %i.dy = load i32, ptr %i.dx, align 8
  %i.dz = getelementptr i8, ptr %i.b, i64 56
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = load ptr, ptr %i.l, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.dw, i32 noundef 2, ptr noundef @.str.1, i32 noundef %i.dy, ptr noundef %i.ea, ptr noundef %i.eb) #5
  %i.ec = load i32, ptr %i.dh, align 8
  %i.ed = icmp eq i32 %i.ec, 2
  %i.ee = getelementptr i8, ptr %i.c, i64 2708    ; 2 uses
  br i1 %i.ed, label %bb.aa, label %__drm_to_dev.exit._crit_edge

__drm_to_dev.exit._crit_edge:                     ; preds = %__drm_to_dev.exit
  %.pre59 = load i8, ptr %i.ee, align 4
  br label %bb.ab

bb.aa:                                            ; preds = %__drm_to_dev.exit
  store i8 6, ptr %i.ee, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %__drm_to_dev.exit._crit_edge, %bb.aa
  %i.ef = phi i8 [ %.pre59, %__drm_to_dev.exit._crit_edge ], [ 6, %bb.aa ]
  %i.eg = getelementptr i8, ptr %i.c, i64 1576
  store i8 %i.ef, ptr %i.eg, align 8
  %i.eh = load ptr, ptr %0, align 8
  %i.ei = load i32, ptr %i.dh, align 8            ; 2 uses
  switch i32 %i.ei, label %bb.ad [
    i32 2, label %intel_dvo_connector_type.exit
    i32 5, label %bb.ac
    i32 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  br label %intel_dvo_connector_type.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ej = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, ptr @.str.12, i32 397, i32 2321, i64 16) #6, !srcloc !22
  %i.ek = load i32, ptr %i.dh, align 8
  %i.el = sext i32 %i.ek to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ej, ptr noundef @.str.11, i64 noundef %i.el) #5
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !23
  br label %intel_dvo_connector_type.exit

intel_dvo_connector_type.exit:                    ; preds = %bb.ab, %bb.ac, %bb.ad
  %.0.i58 = phi i32 [ 0, %bb.ad ], [ 7, %bb.ac ], [ %i.ei, %bb.ab ]
  %i.em = tail call ptr @intel_gmbus_get_adapter(ptr noundef %0, i32 noundef 4) #5
  %i.en = tail call i32 @drm_connector_init_with_ddc(ptr noundef %i.eh, ptr noundef nonnull %i.c, ptr noundef @intel_dvo_connector_funcs, i32 noundef %.0.i58, ptr noundef %i.em) #5 ; 0 uses
  %i.eo = getelementptr i8, ptr %i.c, i64 1584
  store ptr @intel_dvo_connector_helper_funcs, ptr %i.eo, align 8
  %i.ep = getelementptr i8, ptr %i.c, i64 204
  store i32 1, ptr %i.ep, align 4
  tail call void @intel_connector_attach_encoder(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  %i.eq = load i32, ptr %i.dh, align 8
  %i.er = icmp eq i32 %i.eq, 1
  br i1 %i.er, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %intel_dvo_connector_type.exit
  tail call void @intel_panel_add_encoder_fixed_mode(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5
  %i.es = tail call i32 @intel_panel_init(ptr noundef nonnull %i.c, ptr noundef null) #5 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %intel_dvo_connector_type.exit, %bb.ae, %bb.a, %bb.u, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_connector_alloc() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @intel_disable_dvo(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.d = getelementptr i8, ptr %1, i64 156
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %1, i64 504
  %i.g = getelementptr i8, ptr %1, i64 528
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef %i.f, i1 noundef zeroext false) #5
  %i.k = shl i32 %i.e, 5
  %i.l = add i32 %i.k, 397600                     ; 7 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.l) #5
  %.val.i = load ptr, ptr %i.c, align 8
  %i.m = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #5 ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 144
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 %i.o(ptr noundef %i.m, i32 %i.l, i1 noundef zeroext true) #5, !inline_history !0
  %i.q = and i32 %i.p, 2147483647
  %i.r = getelementptr i8, ptr %i.m, i64 176
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef %i.m, i32 %i.l, i32 noundef %i.q, i1 noundef zeroext true) #5, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.l) #5
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.l) #5
  %.val.i10 = load ptr, ptr %i.c, align 8
  %i.t = tail call ptr @to_intel_uncore(ptr noundef %.val.i10) #5 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 144
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i32 %i.v(ptr noundef %i.t, i32 %i.l, i1 noundef zeroext false) #5, !inline_history !2 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.l) #5
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @intel_enable_dvo(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #5
  br label %bb.c

end_hunk_0

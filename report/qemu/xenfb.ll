Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/xenfb?download=true
inline.NumInlined: 40
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GraphicHwOps = type { ptr, ptr, ptr, ptr, ptr, ptr }

@xen_framebuffer_ops = dso_local constant { i64, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i64 2216, i32 0, [4 x i8] zeroinitializer, ptr null, ptr @fb_init, ptr @fb_initialise, ptr null, ptr @fb_event, ptr @fb_disconnect, ptr null, ptr null, ptr @fb_frontend_changed }, align 8
@.str = private unnamed_addr constant [15 x i8] c"feature-resize\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"videoram\00", align 1
@xenfb_ops = internal constant %struct.GraphicHwOps { ptr null, ptr @xenfb_invalidate, ptr @xenfb_update, ptr null, ptr @xenfb_ui_info, ptr null }, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"feature-update\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"request-update\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"feature-update=%d, videoram=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"page-ref\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"../hw/display/xenfb.c\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"event-channel\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"ring mfn %lx, remote-port %d, local-port %d\0A\00", align 1
@xen_foreignmem_ops = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [42 x i8] c"fb size limit %zu exceeds %zu, corrected\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"frontend fb size %zu limited to %zu\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"can't handle frontend fb depth %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"invalid frontend stride %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"invalid frontend width %d limited to %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"invalid frontend offset %d (max %zu)\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"invalid frontend height %d limited to %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"framebuffer %dx%dx%d offset %d stride %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"x86_32-abi\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"update: resizing: %dx%d @ %d bpp%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c" (allocated)\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c" (borrowed)\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"update: fullscreen\0A\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"update: %d rects\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"update: nothing\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"%s: oops: convert %d -> %d bpp?\0A\00", align 1
@__func__.xenfb_guest_copy = private unnamed_addr constant [17 x i8] c"xenfb_guest_copy\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"bogus update ignored\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"bogus update clipped\0A\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"Couldn't replace the framebuffer with anonymous memory errno=%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"re-trigger connected (frontend bug)\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"vkbd\00", align 1
@vga_interface_type = external local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [4 x i8] c"vfb\00", align 1
@xen_kbdmouse_ops = internal constant { i64, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i64 2056, i32 0, [4 x i8] zeroinitializer, ptr null, ptr @input_init, ptr @input_initialise, ptr @input_connected, ptr @input_event, ptr @input_disconnect, ptr null, ptr null, ptr null }, align 8
@.str.34 = private unnamed_addr constant [20 x i8] c"feature-abs-pointer\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"feature-raw-pointer\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"request-abs-pointer\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"request-raw-pointer\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"raw pointer set without abs pointer\00", align 1
@trace_events_enabled_count = external local_unnamed_addr global i32, align 4
@_TRACE_XENFB_INPUT_CONNECTED_DSTATE = external local_unnamed_addr global i16, align 2
@.str.39 = private unnamed_addr constant [33 x i8] c"xenfb_input_connected %p abs %d\0A\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@.str.40 = private unnamed_addr constant [16 x i8] c"Xen PV Keyboard\00", align 1
@xenfb_keyboard = internal constant { ptr, i32, [4 x i8], ptr, ptr } { ptr @.str.40, i32 1, [4 x i8] zeroinitializer, ptr @xenfb_key_event, ptr null }, align 8
@_TRACE_XENFB_KEY_EVENT_DSTATE = external local_unnamed_addr global i16, align 2
@.str.42 = private unnamed_addr constant [40 x i8] c"xenfb_key_event %p scancode %d bs 0x%x\0A\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"Xen PV Mouse\00", align 1
@xenfb_abs_mouse = internal constant { ptr, i32, [4 x i8], ptr, ptr } { ptr @.str.43, i32 10, [4 x i8] zeroinitializer, ptr @xenfb_mouse_event, ptr @xenfb_mouse_sync }, align 8
@.str.45 = private unnamed_addr constant [26 x i8] c"No QEMU console available\00", align 1
@__func__.xenfb_mouse_event = private unnamed_addr constant [18 x i8] c"xenfb_mouse_event\00", align 1
@_TRACE_XENFB_MOUSE_EVENT_DSTATE = external local_unnamed_addr global i16, align 2
@.str.46 = private unnamed_addr constant [52 x i8] c"xenfb_mouse_event %p x %d y %d z %d bs 0x%x abs %d\0A\00", align 1
@xenfb_rel_mouse = internal constant { ptr, i32, [4 x i8], ptr, ptr } { ptr @.str.43, i32 6, [4 x i8] zeroinitializer, ptr @xenfb_mouse_event, ptr @xenfb_mouse_sync }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_xen_ui_register_backend, ptr null }]

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @fb_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @xenstore_write_be_int(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 1) #11 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @fb_initialise(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !annotation !7
  %i.b = call i32 @xenstore_read_fe_int(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a) #11
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = call fastcc i32 @common_bind(ptr noundef %0)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = load i32, ptr %i.a, align 4
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 20
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.m = load i32, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load i8, ptr %i.n, align 8
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.r = load i32, ptr %i.q, align 4
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.u = load i32, ptr %i.t, align 8
  %i.v = call fastcc i32 @xenfb_configure_fb(ptr noundef %0, i64 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.p, i64 noundef %i.s, i32 noundef 0, i32 noundef %i.u)
  %.not31 = icmp eq i32 %i.v, 0
  br i1 %.not31, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.ab = load i32, ptr %i.z, align 4
  %i.ac = icmp eq i32 %i.ab, 0                    ; 2 uses
  %.070.i = select i1 %i.ac, i32 32, i32 64
  %.071.i = select i1 %i.ac, ptr %i.aa, ptr %i.z
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ad = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(11) @.str.18) #12
  %i.ae = icmp eq i32 %i.ad, 0                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %spec.select.i = select i1 %i.ae, i32 32, i32 64
  %spec.select.i.a = select i1 %i.ae, ptr %i.af, ptr %i.z
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.171.i = phi i32 [ %.070.i, %bb.f ], [ %spec.select.i, %bb.g ] ; 3 uses
  %.172.i = phi ptr [ %.071.i, %bb.f ], [ %spec.select.i.a, %bb.g ] ; 15 uses
  %.172.i51 = ptrtoaddr ptr %.172.i to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not76.i = icmp eq ptr %i.ah, null
  br i1 %.not76.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 12
  %i.am = call i32 @munmap(ptr noundef nonnull %i.ah, i64 noundef %i.al) #11 ; 0 uses
  store ptr null, ptr %i.ag, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = add i64 %i.ao, 4095
  %i.aq = lshr i64 %i.ap, 12
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 4 uses
  store i32 %i.ar, ptr %i.as, align 8
  %1 = mul i32 %.171.i, %i.ar
  %i.at = ashr exact i32 %1, 3
  %narrow.i = add nsw i32 %i.at, 4092
  %i.au = ashr i32 %narrow.i, 12                  ; 5 uses
  %i.av = sext i32 %i.au to i64                   ; 3 uses
  %i.aw = call noalias ptr @g_malloc0_n(i64 noundef %i.av, i64 noundef 8) #13 ; 18 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = load i32, ptr %i.as, align 8
  %i.az = sext i32 %i.ay to i64
  %i.ba = call noalias ptr @g_malloc0_n(i64 noundef %i.az, i64 noundef 8) #13 ; 18 uses
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = icmp sgt i32 %i.au, 0
  br i1 %i.bc, label %.lr.ph.i.i, label %xenfb_copy_mfns.exit.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %2 = icmp eq i32 %.171.i, 32
  %wide.trip.count17.i.i = zext nneg i32 %i.au to i64 ; 12 uses
  br i1 %2, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i.i
  %min.iters.check = icmp ult i32 %i.au, 8
  %i.bd = sub i64 %.172.i51, %i.ax
  %diff.check = icmp ugt i64 %i.bd, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.split.i.i.preheader104, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i.i.preheader
  %n.vec = and i64 %wide.trip.count17.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.172.i, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <2 x i64>, ptr %i.be, align 8
  %wide.load52 = load <2 x i64>, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <2 x i64> %wide.load, ptr %i.bg, align 8
  store <2 x i64> %wide.load52, ptr %i.bh, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count17.i.i
  br i1 %cmp.n, label %xenfb_copy_mfns.exit.i, label %.lr.ph.split.i.i.preheader104

.lr.ph.split.i.i.preheader104:                    ; preds = %.lr.ph.split.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.split.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count17.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.prol.loopexit, label %.lr.ph.split.i.i.prol

.lr.ph.split.i.i.prol:                            ; preds = %.lr.ph.split.i.i.preheader104, %.lr.ph.split.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.split.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.split.i.i.preheader104 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.prol ], [ 0, %.lr.ph.split.i.i.preheader104 ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.172.i, i64 %indvars.iv.i.i.prol
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i.i.prol
  store i64 %i.bk, ptr %i.bl, align 8
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.prol.loopexit, label %.lr.ph.split.i.i.prol, !llvm.loop !12

.lr.ph.split.i.i.prol.loopexit:                   ; preds = %.lr.ph.split.i.i.prol, %.lr.ph.split.i.i.preheader104
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.split.i.i.preheader104 ], [ %indvars.iv.next.i.i.prol, %.lr.ph.split.i.i.prol ]
  %i.bm = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count17.i.i
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %xenfb_copy_mfns.exit.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i.i
  %min.iters.check56 = icmp ult i32 %i.au, 14
  br i1 %min.iters.check56, label %.lr.ph.split.us.i.i.preheader103, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.lr.ph.split.us.i.i.preheader
  %i.bo = shl nuw nsw i64 %wide.trip.count17.i.i, 3
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.bo
  %i.bp = shl nuw nsw i64 %wide.trip.count17.i.i, 2
  %scevgep54 = getelementptr i8, ptr %.172.i, i64 %i.bp
  %bound0 = icmp ult ptr %i.aw, %scevgep54
  %bound1 = icmp ult ptr %.172.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.us.i.i.preheader103, label %vector.ph57

vector.ph57:                                      ; preds = %vector.memcheck53
  %n.vec58 = and i64 %wide.trip.count17.i.i, 2147483644 ; 3 uses
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next63, %vector.body59 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.172.i, i64 %index60 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %wide.load61 = load <2 x i32>, ptr %i.bq, align 4, !alias.scope !14
  %wide.load62 = load <2 x i32>, ptr %i.br, align 4, !alias.scope !14
  %i.bs = zext <2 x i32> %wide.load61 to <2 x i64>
  %i.bt = zext <2 x i32> %wide.load62 to <2 x i64>
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index60 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <2 x i64> %i.bs, ptr %i.bu, align 8, !alias.scope !17, !noalias !14
  store <2 x i64> %i.bt, ptr %i.bv, align 8, !alias.scope !17, !noalias !14
  %index.next63 = add nuw i64 %index60, 4         ; 2 uses
  %i.bw = icmp eq i64 %index.next63, %n.vec58
  br i1 %i.bw, label %middle.block64, label %vector.body59, !llvm.loop !19

middle.block64:                                   ; preds = %vector.body59
  %cmp.n65 = icmp eq i64 %n.vec58, %wide.trip.count17.i.i
  br i1 %cmp.n65, label %xenfb_copy_mfns.exit.i, label %.lr.ph.split.us.i.i.preheader103

.lr.ph.split.us.i.i.preheader103:                 ; preds = %vector.memcheck53, %.lr.ph.split.us.i.i.preheader, %middle.block64
  %indvars.iv14.i.i.ph = phi i64 [ 0, %vector.memcheck53 ], [ 0, %.lr.ph.split.us.i.i.preheader ], [ %n.vec58, %middle.block64 ] ; 3 uses
  %xtraiter106 = and i64 %wide.trip.count17.i.i, 3 ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader103, %.lr.ph.split.us.i.i.prol
  %indvars.iv14.i.i.prol = phi i64 [ %indvars.iv.next15.i.i.prol, %.lr.ph.split.us.i.i.prol ], [ %indvars.iv14.i.i.ph, %.lr.ph.split.us.i.i.preheader103 ] ; 3 uses
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.lr.ph.split.us.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.preheader103 ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.172.i, i64 %indvars.iv14.i.i.prol
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv14.i.i.prol
  store i64 %i.bz, ptr %i.ca, align 8
  %indvars.iv.next15.i.i.prol = add nuw nsw i64 %indvars.iv14.i.i.prol, 1 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol, !llvm.loop !20

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader103
  %indvars.iv14.i.i.unr = phi i64 [ %indvars.iv14.i.i.ph, %.lr.ph.split.us.i.i.preheader103 ], [ %indvars.iv.next15.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %i.cb = sub nsw i64 %indvars.iv14.i.i.ph, %wide.trip.count17.i.i
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %xenfb_copy_mfns.exit.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i
  %indvars.iv14.i.i = phi i64 [ %indvars.iv.next15.i.i.3, %.lr.ph.split.us.i.i ], [ %indvars.iv14.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.172.i, i64 %indvars.iv14.i.i
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv14.i.i
  store i64 %i.cf, ptr %i.cg, align 8
  %indvars.iv.next15.i.i = add nuw nsw i64 %indvars.iv14.i.i, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.172.i, i64 %indvars.iv.next15.i.i
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next15.i.i
  store i64 %i.cj, ptr %i.ck, align 8
  %indvars.iv.next15.i.i.1 = add nuw nsw i64 %indvars.iv14.i.i, 2 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.172.i, i64 %indvars.iv.next15.i.i.1
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next15.i.i.1
  store i64 %i.cn, ptr %i.co, align 8
  %indvars.iv.next15.i.i.2 = add nuw nsw i64 %indvars.iv14.i.i, 3 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.172.i, i64 %indvars.iv.next15.i.i.2
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next15.i.i.2
  store i64 %i.cr, ptr %i.cs, align 8
  %indvars.iv.next15.i.i.3 = add nuw nsw i64 %indvars.iv14.i.i, 4 ; 2 uses
  %exitcond18.not.i.i.3 = icmp eq i64 %indvars.iv.next15.i.i.3, %wide.trip.count17.i.i
  br i1 %exitcond18.not.i.i.3, label %xenfb_copy_mfns.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !21

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.prol.loopexit, %.lr.ph.split.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.split.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.split.i.i.prol.loopexit ] ; 6 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.172.i, i64 %indvars.iv.i.i
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i.i
  store i64 %i.cu, ptr %i.cv, align 8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.172.i, i64 %indvars.iv.next.i.i
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i
  store i64 %i.cx, ptr %i.cy, align 8
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.172.i, i64 %indvars.iv.next.i.i.1
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.1
  store i64 %i.da, ptr %i.db, align 8
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.172.i, i64 %indvars.iv.next.i.i.2
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.2
  store i64 %i.dd, ptr %i.de, align 8
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count17.i.i
  br i1 %exitcond.not.i.i.3, label %xenfb_copy_mfns.exit.i, label %.lr.ph.split.i.i, !llvm.loop !22

xenfb_copy_mfns.exit.i:                           ; preds = %.lr.ph.split.i.i.prol.loopexit, %.lr.ph.split.i.i, %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block, %middle.block64, %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.dg = load ptr, ptr @xen_foreignmem_ops, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i, label %.critedge, label %qemu_xen_foreignmem_map.exit.i

qemu_xen_foreignmem_map.exit.i:                   ; preds = %xenfb_copy_mfns.exit.i
  %i.dh = load i32, ptr %i.df, align 8
  %i.di = load ptr, ptr %i.dg, align 8
  %i.dj = call ptr %i.di(i32 noundef %i.dh, ptr noundef null, i32 noundef 1, i64 noundef range(i64 -2147483648, 2147483648) %i.av, ptr noundef %i.aw, ptr noundef null) #11, !inline_history !23 ; 17 uses
  %i.dk = ptrtoaddr ptr %i.dj to i64
  %i.dl = icmp eq ptr %i.dj, null
  br i1 %i.dl, label %.critedge, label %bb.k

bb.k:                                             ; preds = %qemu_xen_foreignmem_map.exit.i
  %i.dm = load i32, ptr %i.as, align 8            ; 4 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph.i80.i, label %xenfb_copy_mfns.exit90.i

.lr.ph.i80.i:                                     ; preds = %bb.k
  %3 = icmp eq i32 %.171.i, 32
  %wide.trip.count17.i81.i = zext nneg i32 %i.dm to i64 ; 12 uses
  br i1 %3, label %.lr.ph.split.us.i86.i.preheader, label %.lr.ph.split.i82.i.preheader

.lr.ph.split.i82.i.preheader:                     ; preds = %.lr.ph.i80.i
  %min.iters.check70 = icmp ult i32 %i.dm, 8
  %i.do = sub i64 %i.dk, %i.bb
  %diff.check68 = icmp ugt i64 %i.do, -32
  %or.cond99 = select i1 %min.iters.check70, i1 true, i1 %diff.check68
  br i1 %or.cond99, label %.lr.ph.split.i82.i.preheader101, label %vector.ph71

vector.ph71:                                      ; preds = %.lr.ph.split.i82.i.preheader
  %n.vec72 = and i64 %wide.trip.count17.i81.i, 2147483644 ; 3 uses
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph71
  %index74 = phi i64 [ 0, %vector.ph71 ], [ %index.next77, %vector.body73 ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index74 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load75 = load <2 x i64>, ptr %i.dp, align 8
  %wide.load76 = load <2 x i64>, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %index74 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <2 x i64> %wide.load75, ptr %i.dr, align 8
  store <2 x i64> %wide.load76, ptr %i.ds, align 8
  %index.next77 = add nuw i64 %index74, 4         ; 2 uses
  %i.dt = icmp eq i64 %index.next77, %n.vec72
  br i1 %i.dt, label %middle.block78, label %vector.body73, !llvm.loop !24

middle.block78:                                   ; preds = %vector.body73
  %cmp.n79 = icmp eq i64 %n.vec72, %wide.trip.count17.i81.i
  br i1 %cmp.n79, label %xenfb_copy_mfns.exit90.i, label %.lr.ph.split.i82.i.preheader101

.lr.ph.split.i82.i.preheader101:                  ; preds = %.lr.ph.split.i82.i.preheader, %middle.block78
  %indvars.iv.i83.i.ph = phi i64 [ 0, %.lr.ph.split.i82.i.preheader ], [ %n.vec72, %middle.block78 ] ; 3 uses
  %xtraiter109 = and i64 %wide.trip.count17.i81.i, 3 ; 2 uses
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %.lr.ph.split.i82.i.prol.loopexit, label %.lr.ph.split.i82.i.prol

.lr.ph.split.i82.i.prol:                          ; preds = %.lr.ph.split.i82.i.preheader101, %.lr.ph.split.i82.i.prol
  %indvars.iv.i83.i.prol = phi i64 [ %indvars.iv.next.i84.i.prol, %.lr.ph.split.i82.i.prol ], [ %indvars.iv.i83.i.ph, %.lr.ph.split.i82.i.preheader101 ] ; 3 uses
  %prol.iter111 = phi i64 [ %prol.iter111.next, %.lr.ph.split.i82.i.prol ], [ 0, %.lr.ph.split.i82.i.preheader101 ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i83.i.prol
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.i83.i.prol
  store i64 %i.dv, ptr %i.dw, align 8
  %indvars.iv.next.i84.i.prol = add nuw nsw i64 %indvars.iv.i83.i.prol, 1 ; 2 uses
  %prol.iter111.next = add i64 %prol.iter111, 1   ; 2 uses
  %prol.iter111.cmp.not = icmp eq i64 %prol.iter111.next, %xtraiter109
  br i1 %prol.iter111.cmp.not, label %.lr.ph.split.i82.i.prol.loopexit, label %.lr.ph.split.i82.i.prol, !llvm.loop !25

.lr.ph.split.i82.i.prol.loopexit:                 ; preds = %.lr.ph.split.i82.i.prol, %.lr.ph.split.i82.i.preheader101
  %indvars.iv.i83.i.unr = phi i64 [ %indvars.iv.i83.i.ph, %.lr.ph.split.i82.i.preheader101 ], [ %indvars.iv.next.i84.i.prol, %.lr.ph.split.i82.i.prol ]
  %i.dx = sub nsw i64 %indvars.iv.i83.i.ph, %wide.trip.count17.i81.i
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %xenfb_copy_mfns.exit90.i, label %.lr.ph.split.i82.i

.lr.ph.split.us.i86.i.preheader:                  ; preds = %.lr.ph.i80.i
  %min.iters.check88 = icmp ult i32 %i.dm, 14
  br i1 %min.iters.check88, label %.lr.ph.split.us.i86.i.preheader100, label %vector.memcheck81

vector.memcheck81:                                ; preds = %.lr.ph.split.us.i86.i.preheader
  %i.dz = shl nuw nsw i64 %wide.trip.count17.i81.i, 3
  %scevgep82 = getelementptr i8, ptr %i.ba, i64 %i.dz
  %i.ea = shl nuw nsw i64 %wide.trip.count17.i81.i, 2
  %scevgep83 = getelementptr i8, ptr %i.dj, i64 %i.ea
  %bound084 = icmp ult ptr %i.ba, %scevgep83
  %bound185 = icmp ult ptr %i.dj, %scevgep82
  %found.conflict86 = and i1 %bound084, %bound185
  br i1 %found.conflict86, label %.lr.ph.split.us.i86.i.preheader100, label %vector.ph89

vector.ph89:                                      ; preds = %vector.memcheck81
  %n.vec90 = and i64 %wide.trip.count17.i81.i, 2147483644 ; 3 uses
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph89
  %index92 = phi i64 [ 0, %vector.ph89 ], [ %index.next95, %vector.body91 ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index92 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %wide.load93 = load <2 x i32>, ptr %i.eb, align 4, !alias.scope !26
  %wide.load94 = load <2 x i32>, ptr %i.ec, align 4, !alias.scope !26
  %i.ed = zext <2 x i32> %wide.load93 to <2 x i64>
  %i.ee = zext <2 x i32> %wide.load94 to <2 x i64>
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %index92 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <2 x i64> %i.ed, ptr %i.ef, align 8, !alias.scope !29, !noalias !26
  store <2 x i64> %i.ee, ptr %i.eg, align 8, !alias.scope !29, !noalias !26
  %index.next95 = add nuw i64 %index92, 4         ; 2 uses
  %i.eh = icmp eq i64 %index.next95, %n.vec90
  br i1 %i.eh, label %middle.block96, label %vector.body91, !llvm.loop !31

middle.block96:                                   ; preds = %vector.body91
  %cmp.n97 = icmp eq i64 %n.vec90, %wide.trip.count17.i81.i
  br i1 %cmp.n97, label %xenfb_copy_mfns.exit90.i, label %.lr.ph.split.us.i86.i.preheader100

.lr.ph.split.us.i86.i.preheader100:               ; preds = %vector.memcheck81, %.lr.ph.split.us.i86.i.preheader, %middle.block96
  %indvars.iv14.i87.i.ph = phi i64 [ 0, %vector.memcheck81 ], [ 0, %.lr.ph.split.us.i86.i.preheader ], [ %n.vec90, %middle.block96 ] ; 3 uses
  %xtraiter112 = and i64 %wide.trip.count17.i81.i, 3 ; 2 uses
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph.split.us.i86.i.prol.loopexit, label %.lr.ph.split.us.i86.i.prol

.lr.ph.split.us.i86.i.prol:                       ; preds = %.lr.ph.split.us.i86.i.preheader100, %.lr.ph.split.us.i86.i.prol
  %indvars.iv14.i87.i.prol = phi i64 [ %indvars.iv.next15.i88.i.prol, %.lr.ph.split.us.i86.i.prol ], [ %indvars.iv14.i87.i.ph, %.lr.ph.split.us.i86.i.preheader100 ] ; 3 uses
  %prol.iter114 = phi i64 [ %prol.iter114.next, %.lr.ph.split.us.i86.i.prol ], [ 0, %.lr.ph.split.us.i86.i.preheader100 ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv14.i87.i.prol
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv14.i87.i.prol
  store i64 %i.ek, ptr %i.el, align 8
  %indvars.iv.next15.i88.i.prol = add nuw nsw i64 %indvars.iv14.i87.i.prol, 1 ; 2 uses
  %prol.iter114.next = add i64 %prol.iter114, 1   ; 2 uses
  %prol.iter114.cmp.not = icmp eq i64 %prol.iter114.next, %xtraiter112
  br i1 %prol.iter114.cmp.not, label %.lr.ph.split.us.i86.i.prol.loopexit, label %.lr.ph.split.us.i86.i.prol, !llvm.loop !32

.lr.ph.split.us.i86.i.prol.loopexit:              ; preds = %.lr.ph.split.us.i86.i.prol, %.lr.ph.split.us.i86.i.preheader100
  %indvars.iv14.i87.i.unr = phi i64 [ %indvars.iv14.i87.i.ph, %.lr.ph.split.us.i86.i.preheader100 ], [ %indvars.iv.next15.i88.i.prol, %.lr.ph.split.us.i86.i.prol ]
  %i.em = sub nsw i64 %indvars.iv14.i87.i.ph, %wide.trip.count17.i81.i
  %i.en = icmp ugt i64 %i.em, -4
  br i1 %i.en, label %xenfb_copy_mfns.exit90.i, label %.lr.ph.split.us.i86.i

.lr.ph.split.us.i86.i:                            ; preds = %.lr.ph.split.us.i86.i.prol.loopexit, %.lr.ph.split.us.i86.i
  %indvars.iv14.i87.i = phi i64 [ %indvars.iv.next15.i88.i.3, %.lr.ph.split.us.i86.i ], [ %indvars.iv14.i87.i.unr, %.lr.ph.split.us.i86.i.prol.loopexit ] ; 6 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv14.i87.i
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv14.i87.i
  store i64 %i.eq, ptr %i.er, align 8
  %indvars.iv.next15.i88.i = add nuw nsw i64 %indvars.iv14.i87.i, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next15.i88.i
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next15.i88.i
  store i64 %i.eu, ptr %i.ev, align 8
  %indvars.iv.next15.i88.i.1 = add nuw nsw i64 %indvars.iv14.i87.i, 2 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next15.i88.i.1
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next15.i88.i.1
  store i64 %i.ey, ptr %i.ez, align 8
  %indvars.iv.next15.i88.i.2 = add nuw nsw i64 %indvars.iv14.i87.i, 3 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next15.i88.i.2
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next15.i88.i.2
  store i64 %i.fc, ptr %i.fd, align 8
  %indvars.iv.next15.i88.i.3 = add nuw nsw i64 %indvars.iv14.i87.i, 4 ; 2 uses
  %exitcond18.not.i89.i.3 = icmp eq i64 %indvars.iv.next15.i88.i.3, %wide.trip.count17.i81.i
  br i1 %exitcond18.not.i89.i.3, label %xenfb_copy_mfns.exit90.i, label %.lr.ph.split.us.i86.i, !llvm.loop !33

.lr.ph.split.i82.i:                               ; preds = %.lr.ph.split.i82.i.prol.loopexit, %.lr.ph.split.i82.i
  %indvars.iv.i83.i = phi i64 [ %indvars.iv.next.i84.i.3, %.lr.ph.split.i82.i ], [ %indvars.iv.i83.i.unr, %.lr.ph.split.i82.i.prol.loopexit ] ; 6 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i83.i
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.i83.i
  store i64 %i.ff, ptr %i.fg, align 8
  %indvars.iv.next.i84.i = add nuw nsw i64 %indvars.iv.i83.i, 1 ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i84.i
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next.i84.i
  store i64 %i.fi, ptr %i.fj, align 8
  %indvars.iv.next.i84.i.1 = add nuw nsw i64 %indvars.iv.i83.i, 2 ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i84.i.1
  %i.fl = load i64, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next.i84.i.1
  store i64 %i.fl, ptr %i.fm, align 8
  %indvars.iv.next.i84.i.2 = add nuw nsw i64 %indvars.iv.i83.i, 3 ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i84.i.2
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next.i84.i.2
  store i64 %i.fo, ptr %i.fp, align 8
  %indvars.iv.next.i84.i.3 = add nuw nsw i64 %indvars.iv.i83.i, 4 ; 2 uses
  %exitcond.not.i85.i.3 = icmp eq i64 %indvars.iv.next.i84.i.3, %wide.trip.count17.i81.i
  br i1 %exitcond.not.i85.i.3, label %xenfb_copy_mfns.exit90.i, label %.lr.ph.split.i82.i, !llvm.loop !34

xenfb_copy_mfns.exit90.i:                         ; preds = %.lr.ph.split.i82.i.prol.loopexit, %.lr.ph.split.i82.i, %.lr.ph.split.us.i86.i.prol.loopexit, %.lr.ph.split.us.i86.i, %middle.block78, %middle.block96, %bb.k
  %i.fq = load ptr, ptr @xen_foreignmem_ops, align 8 ; 2 uses
  %.not.i91.i = icmp eq ptr %i.fq, null
  br i1 %.not.i91.i, label %qemu_xen_foreignmem_map.exit95.i, label %qemu_xen_foreignmem_unmap.exit.i

qemu_xen_foreignmem_unmap.exit.i:                 ; preds = %xenfb_copy_mfns.exit90.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = call i32 %i.fs(ptr noundef nonnull %i.dj, i64 noundef range(i64 -2147483648, 2147483648) %i.av) #11, !inline_history !35 ; 0 uses
  %.pr.i = load ptr, ptr @xen_foreignmem_ops, align 8 ; 2 uses
  %.not.i93.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i93.i, label %qemu_xen_foreignmem_map.exit95.i, label %bb.l

bb.l:                                             ; preds = %qemu_xen_foreignmem_unmap.exit.i
  %i.fu = load i32, ptr %i.as, align 8
  %i.fv = sext i32 %i.fu to i64
  %i.fw = load i32, ptr %i.df, align 8
  %i.fx = load ptr, ptr %.pr.i, align 8
  %i.fy = call ptr %i.fx(i32 noundef %i.fw, ptr noundef null, i32 noundef 1, i64 noundef range(i64 -2147483648, 2147483648) %i.fv, ptr noundef %i.ba, ptr noundef null) #11, !inline_history !23
  br label %qemu_xen_foreignmem_map.exit95.i

qemu_xen_foreignmem_map.exit95.i:                 ; preds = %bb.l, %qemu_xen_foreignmem_unmap.exit.i, %xenfb_copy_mfns.exit90.i
  %.0.i94.i = phi ptr [ %i.fy, %bb.l ], [ null, %qemu_xen_foreignmem_unmap.exit.i ], [ null, %xenfb_copy_mfns.exit90.i ] ; 2 uses
  store ptr %.0.i94.i, ptr %i.ag, align 8
  %.not37 = icmp eq ptr %.0.i94.i, null
  call void @g_free(ptr noundef %i.aw) #11
  call void @g_free(ptr noundef %i.ba) #11
  br i1 %.not37, label %bb.q, label %bb.m

end_hunk_0
begin_hunk_1_@xenfb_update:bb.a
.lr.ph:                                           ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2080
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %indvars.iv ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bh = load i32, ptr %i.bg, align 4
  tail call fastcc void @xenfb_guest_copy(ptr noundef nonnull %0, i32 noundef %i.bb, i32 noundef %i.bd, i32 noundef %i.bf, i32 noundef %i.bh)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load i32, ptr %i.av, align 8
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %bb.l, label %.loopexit, !llvm.loop !42

bb.m:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @xen_pv_printf(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.24) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.k, %bb.m, %bb.i
  %i.bl = phi ptr [ %i.aq, %bb.i ], [ %i.ap, %bb.k ], [ %i.ap, %bb.m ], [ %i.ap, %bb.l ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2208
  store i32 0, ptr %i.bm, align 8
  store i32 0, ptr %i.bl, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %.loopexit
  ret i1 true
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @xenfb_ui_info(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2068
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %xenfb_queue_full.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 2008
  %.val = load ptr, ptr %i.c, align 8             ; 4 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %xenfb_queue_full.exit.thread, label %xenfb_queue_full.exit

xenfb_queue_full.exit:                            ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = load i32, ptr %.val, align 8
  %i.g = sub i32 %i.e, %i.f
  %.not10 = icmp eq i32 %i.g, 25
  br i1 %.not10, label %xenfb_queue_full.exit.thread, label %bb.c

bb.c:                                             ; preds = %xenfb_queue_full.exit
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %.not7 = icmp eq i32 %i.i, 0
  %spec.store.select = select i1 %.not7, i32 75, i32 %i.i
  %i.j = udiv i32 1000000, %spec.store.select
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !43
  fence seq_cst
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 1024
  %i.l = urem i32 %i.e, 25
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.m ; 4 uses
  store i8 1, ptr %i.n, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx.i, i8 0, i64 3, i1 false)
  %.sroa.61.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %i.j, ptr %.sroa.61.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7.0..sroa_idx.i, i8 0, i64 32, i1 false)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !44
  fence release
  %i.o = add i32 %i.e, 1
  store i32 %i.o, ptr %i.d, align 4
  %i.p = tail call i32 @xen_pv_send_notify(ptr noundef nonnull %0) #11 ; 0 uses
  br label %xenfb_queue_full.exit.thread

xenfb_queue_full.exit.thread:                     ; preds = %bb.b, %bb.a, %bb.c, %xenfb_queue_full.exit
  ret void
}

declare i32 @qemu_default_pixman_format(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @qemu_create_displaysurface_from(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qemu_create_displaysurface(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @qemu_console_set_surface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @xenfb_guest_copy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2016 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @qemu_console_surface(ptr noundef %i.b) #11 ; 5 uses
  %.val2.i = load ptr, ptr %i.c, align 8
  %i.d = tail call i32 @pixman_image_get_format(ptr noundef %.val2.i) #11
  %i.e = lshr i32 %i.d, 24
  %.val.i = load ptr, ptr %i.c, align 8
  %i.f = tail call i32 @pixman_image_get_format(ptr noundef %.val.i) #11
  %i.g = lshr i32 %i.f, 22
  %i.h = and i32 %i.g, 3
  %i.i = shl nuw nsw i32 %i.e, %i.h               ; 3 uses
  %.val155 = load ptr, ptr %i.c, align 8
  %i.j = tail call i32 @pixman_image_get_stride(ptr noundef %.val155) #11 ; 4 uses
  %.val156 = load ptr, ptr %i.c, align 8
  %i.k = tail call ptr @pixman_image_get_data(ptr noundef %.val156) #11 ; 4 uses
  %i.l = getelementptr i8, ptr %i.c, i64 8
  %.val = load i8, ptr %i.l, align 8
  %i.m = and i8 %.val, 1
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2036 ; 7 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  switch i32 %i.o, label %.critedge [
    i32 8, label %bb.c
    i32 24, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  switch i32 %i.i, label %.critedge [
    i32 16, label %.preheader
    i32 32, label %.preheader157
  ]

.preheader157:                                    ; preds = %bb.c
  %i.p = add i32 %4, %2                           ; 2 uses
  %i.q = icmp slt i32 %2, %i.p
  br i1 %i.q, label %.lr.ph185, label %.loopexit

.lr.ph185:                                        ; preds = %.preheader157
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.u = shl i32 %1, 5
  %i.v = ashr exact i32 %i.u, 3
  %i.w = sext i32 %i.v to i64
  %invariant.gep186 = getelementptr i8, ptr %i.k, i64 %i.w
  %i.x = add i32 %3, %1                           ; 2 uses
  %i.y = icmp slt i32 %1, %i.x
  br i1 %i.y, label %.lr.ph182.preheader, label %.loopexit

.lr.ph182.preheader:                              ; preds = %.lr.ph185
  %i.z = sext i32 %2 to i64
  %wide.trip.count213 = sext i32 %i.p to i64
  br label %.lr.ph182

.preheader:                                       ; preds = %bb.c
  %i.aa = add i32 %4, %2                          ; 2 uses
  %i.ab = icmp slt i32 %2, %i.aa
  br i1 %i.ab, label %.lr.ph195, label %.loopexit

.lr.ph195:                                        ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.af = shl i32 %1, 4
  %i.ag = ashr exact i32 %i.af, 3
  %i.ah = sext i32 %i.ag to i64
  %invariant.gep196 = getelementptr i8, ptr %i.k, i64 %i.ah
  %i.ai = add i32 %3, %1                          ; 2 uses
  %i.aj = icmp slt i32 %1, %i.ai
  br i1 %i.aj, label %.lr.ph192.preheader, label %.loopexit

.lr.ph192.preheader:                              ; preds = %.lr.ph195
  %i.ak = sext i32 %2 to i64
  %wide.trip.count219 = sext i32 %i.aa to i64
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.preheader, %._crit_edge193
  %i.al = phi i32 [ 8, %.lr.ph192.preheader ], [ %i.bm, %._crit_edge193 ]
  %indvars.iv216 = phi i64 [ %i.ak, %.lr.ph192.preheader ], [ %indvars.iv.next217, %._crit_edge193 ] ; 2 uses
  %i.am = load ptr, ptr %i.ac, align 8
  %i.an = load i32, ptr %i.ad, align 8
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao
  %i.aq = load i32, ptr %i.ae, align 8
  %i.ar = trunc nsw i64 %indvars.iv216 to i32     ; 2 uses
  %i.as = mul i32 %i.aq, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 %i.at
  %i.av = mul i32 %i.al, %1
  %i.aw = sdiv i32 %i.av, 8
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  %i.az = mul i32 %i.j, %i.ar
  %i.ba = sext i32 %i.az to i64
  %gep197 = getelementptr i8, ptr %invariant.gep196, i64 %i.ba
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph192, %bb.d
  %.0139190 = phi ptr [ %i.ay, %.lr.ph192 ], [ %i.bq, %bb.d ] ; 2 uses
  %.0149189 = phi ptr [ %gep197, %.lr.ph192 ], [ %i.bt, %bb.d ] ; 2 uses
  %.0141188 = phi i32 [ %1, %.lr.ph192 ], [ %i.bu, %bb.d ]
  %i.bb = load i8, ptr %.0139190, align 1
  %i.bc = zext i8 %i.bb to i16                    ; 3 uses
  %i.bd = shl nuw i16 %i.bc, 8
  %i.be = and i16 %i.bd, -8192
  %i.bf = shl nuw nsw i16 %i.bc, 6
  %i.bg = and i16 %i.bf, 1792
  %i.bh = or disjoint i16 %i.be, %i.bg
  %i.bi = shl nuw nsw i16 %i.bc, 3
  %i.bj = and i16 %i.bi, 24
  %i.bk = or disjoint i16 %i.bh, %i.bj
  store i16 %i.bk, ptr %.0149189, align 2
  %i.bl = ptrtoint ptr %.0139190 to i64
  %i.bm = load i32, ptr %i.n, align 4             ; 2 uses
  %i.bn = sdiv i32 %i.bm, 8
  %i.bo = sext i32 %i.bn to i64
  %i.bp = add i64 %i.bo, %i.bl
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = ptrtoint ptr %.0149189 to i64
  %i.bs = add i64 %i.br, 2
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = add nsw i32 %.0141188, 1                ; 2 uses
  %exitcond215.not = icmp eq i32 %i.bu, %i.ai
  br i1 %exitcond215.not, label %._crit_edge193, label %bb.d, !llvm.loop !45

._crit_edge193:                                   ; preds = %bb.d
  %indvars.iv.next217 = add nsw i64 %indvars.iv216, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next217, %wide.trip.count219
  br i1 %exitcond220.not, label %.loopexit, label %.lr.ph192, !llvm.loop !46

.lr.ph182:                                        ; preds = %.lr.ph182.preheader, %._crit_edge183
  %i.bv = phi i32 [ 8, %.lr.ph182.preheader ], [ %i.cw, %._crit_edge183 ]
  %indvars.iv210 = phi i64 [ %i.z, %.lr.ph182.preheader ], [ %indvars.iv.next211, %._crit_edge183 ] ; 2 uses
  %i.bw = load ptr, ptr %i.r, align 8
  %i.bx = load i32, ptr %i.s, align 8
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 %i.by
  %i.ca = load i32, ptr %i.t, align 8
  %i.cb = trunc nsw i64 %indvars.iv210 to i32     ; 2 uses
  %i.cc = mul i32 %i.ca, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %i.bz, i64 %i.cd
  %i.cf = mul i32 %i.bv, %1
  %i.cg = sdiv i32 %i.cf, 8
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  %i.cj = mul i32 %i.j, %i.cb
  %i.ck = sext i32 %i.cj to i64
  %gep187 = getelementptr i8, ptr %invariant.gep186, i64 %i.ck
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph182, %bb.e
  %.0142180 = phi ptr [ %i.ci, %.lr.ph182 ], [ %i.da, %bb.e ] ; 2 uses
  %.0146179 = phi ptr [ %gep187, %.lr.ph182 ], [ %i.dd, %bb.e ] ; 2 uses
  %.0144178 = phi i32 [ %1, %.lr.ph182 ], [ %i.de, %bb.e ]
  %i.cl = load i8, ptr %.0142180, align 1
  %i.cm = zext i8 %i.cl to i32                    ; 3 uses
  %i.cn = shl nuw nsw i32 %i.cm, 16
  %i.co = and i32 %i.cn, 14680064
  %i.cp = shl nuw nsw i32 %i.cm, 11
  %i.cq = and i32 %i.cp, 57344
  %i.cr = or disjoint i32 %i.co, %i.cq
  %i.cs = shl nuw nsw i32 %i.cm, 6
  %i.ct = and i32 %i.cs, 192
  %i.cu = or disjoint i32 %i.cr, %i.ct
  store i32 %i.cu, ptr %.0146179, align 4
  %i.cv = ptrtoint ptr %.0142180 to i64
  %i.cw = load i32, ptr %i.n, align 4             ; 2 uses
  %i.cx = sdiv i32 %i.cw, 8
  %i.cy = sext i32 %i.cx to i64
  %i.cz = add i64 %i.cy, %i.cv
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = ptrtoint ptr %.0146179 to i64
  %i.dc = add i64 %i.db, 4
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = add nsw i32 %.0144178, 1                ; 2 uses
  %exitcond209.not = icmp eq i32 %i.de, %i.x
  br i1 %exitcond209.not, label %._crit_edge183, label %bb.e, !llvm.loop !47

._crit_edge183:                                   ; preds = %bb.e
  %indvars.iv.next211 = add nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next211, %wide.trip.count213
  br i1 %exitcond214.not, label %.loopexit, label %.lr.ph182, !llvm.loop !48

bb.f:                                             ; preds = %bb.b
  switch i32 %i.i, label %.critedge [
    i32 16, label %.preheader159
    i32 32, label %.preheader161
  ]

.preheader161:                                    ; preds = %bb.f
  %i.df = add i32 %4, %2                          ; 2 uses
  %i.dg = icmp slt i32 %2, %i.df
  br i1 %i.dg, label %.lr.ph167, label %.loopexit

.lr.ph167:                                        ; preds = %.preheader161
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.dk = shl i32 %1, 5
  %i.dl = ashr exact i32 %i.dk, 3
  %i.dm = sext i32 %i.dl to i64
  %invariant.gep = getelementptr i8, ptr %i.k, i64 %i.dm
  %i.dn = add i32 %3, %1                          ; 2 uses
  %i.do = icmp slt i32 %1, %i.dn
  br i1 %i.do, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph167
  %i.dp = sext i32 %2 to i64
  %wide.trip.count = sext i32 %i.df to i64
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.dq = add nsw i32 %1, 1
  %i.dr = icmp eq i32 %3, 1
  br label %.lr.ph

.preheader159:                                    ; preds = %bb.f
  %i.ds = add i32 %4, %2                          ; 2 uses
  %i.dt = icmp slt i32 %2, %i.ds
  br i1 %i.dt, label %.lr.ph175, label %.loopexit

.lr.ph175:                                        ; preds = %.preheader159
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.dx = shl i32 %1, 4
  %i.dy = ashr exact i32 %i.dx, 3
  %i.dz = sext i32 %i.dy to i64
  %invariant.gep176 = getelementptr i8, ptr %i.k, i64 %i.dz
  %i.ea = add i32 %3, %1                          ; 2 uses
  %i.eb = icmp slt i32 %1, %i.ea
  br i1 %i.eb, label %.lr.ph172.preheader, label %.loopexit

.lr.ph172.preheader:                              ; preds = %.lr.ph175
  %i.ec = sext i32 %2 to i64
  %wide.trip.count207 = sext i32 %i.ds to i64
  br label %.lr.ph172

.lr.ph172:                                        ; preds = %.lr.ph172.preheader, %._crit_edge173
  %i.ed = phi i32 [ 24, %.lr.ph172.preheader ], [ %i.fe, %._crit_edge173 ]
  %indvars.iv204 = phi i64 [ %i.ec, %.lr.ph172.preheader ], [ %indvars.iv.next205, %._crit_edge173 ] ; 2 uses
  %i.ee = load ptr, ptr %i.du, align 8
  %i.ef = load i32, ptr %i.dv, align 8
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr %i.ee, i64 %i.eg
  %i.ei = load i32, ptr %i.dw, align 8
  %i.ej = trunc nsw i64 %indvars.iv204 to i32     ; 2 uses
  %i.ek = mul i32 %i.ei, %i.ej
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds i8, ptr %i.eh, i64 %i.el
  %i.en = mul i32 %i.ed, %1
  %i.eo = sdiv i32 %i.en, 8
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %i.em, i64 %i.ep
  %i.er = mul i32 %i.j, %i.ej
  %i.es = sext i32 %i.er to i64
  %gep177 = getelementptr i8, ptr %invariant.gep176, i64 %i.es
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph172, %bb.g
  %.0145170 = phi ptr [ %i.eq, %.lr.ph172 ], [ %i.fi, %bb.g ] ; 2 uses
  %.0142169 = phi ptr [ %gep177, %.lr.ph172 ], [ %i.fl, %bb.g ] ; 2 uses
  %.0147168 = phi i32 [ %1, %.lr.ph172 ], [ %i.fm, %bb.g ]
  %i.et = load i32, ptr %.0145170, align 4        ; 3 uses
  %i.eu = lshr i32 %i.et, 8
  %i.ev = and i32 %i.eu, 63488
  %i.ew = lshr i32 %i.et, 5
  %i.ex = and i32 %i.ew, 2016
  %i.ey = or disjoint i32 %i.ev, %i.ex
  %i.ez = lshr i32 %i.et, 3
  %i.fa = and i32 %i.ez, 31
  %i.fb = or disjoint i32 %i.ey, %i.fa
  %i.fc = trunc nuw i32 %i.fb to i16
  store i16 %i.fc, ptr %.0142169, align 2
  %i.fd = ptrtoint ptr %.0145170 to i64
  %i.fe = load i32, ptr %i.n, align 4             ; 2 uses
  %i.ff = sdiv i32 %i.fe, 8
  %i.fg = sext i32 %i.ff to i64
  %i.fh = add i64 %i.fg, %i.fd
  %i.fi = inttoptr i64 %i.fh to ptr
  %i.fj = ptrtoint ptr %.0142169 to i64
  %i.fk = add i64 %i.fj, 2
  %i.fl = inttoptr i64 %i.fk to ptr
  %i.fm = add nsw i32 %.0147168, 1                ; 2 uses
  %exitcond203.not = icmp eq i32 %i.fm, %i.ea
  br i1 %exitcond203.not, label %._crit_edge173, label %bb.g, !llvm.loop !49

._crit_edge173:                                   ; preds = %bb.g
  %indvars.iv.next205 = add nsw i64 %indvars.iv204, 1 ; 2 uses
  %exitcond208.not = icmp eq i64 %indvars.iv.next205, %wide.trip.count207
  br i1 %exitcond208.not, label %.loopexit, label %.lr.ph172, !llvm.loop !50

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %i.fn = phi i32 [ 24, %.lr.ph.preheader ], [ %.lcssa250, %._crit_edge ]
  %indvars.iv = phi i64 [ %i.dp, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.fo = load ptr, ptr %i.dh, align 8
  %i.fp = load i32, ptr %i.di, align 8
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %i.fo, i64 %i.fq
  %i.fs = load i32, ptr %i.dj, align 8
  %i.ft = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.fu = mul i32 %i.fs, %i.ft
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds i8, ptr %i.fr, i64 %i.fv
  %i.fx = mul i32 %i.fn, %1
  %i.fy = sdiv i32 %i.fx, 8
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds i8, ptr %i.fw, i64 %i.fz ; 3 uses
  %i.gb = mul i32 %i.j, %i.ft
  %i.gc = sext i32 %i.gb to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.gc ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.gd = load i32, ptr %i.ga, align 4
  %i.ge = and i32 %i.gd, 16777215
  store i32 %i.ge, ptr %gep, align 4
  %i.gf = ptrtoint ptr %i.ga to i64
  %i.gg = load i32, ptr %i.n, align 4             ; 2 uses
  %i.gh = sdiv i32 %i.gg, 8
  %i.gi = sext i32 %i.gh to i64
  %i.gj = add i64 %i.gi, %i.gf
  %i.gk = inttoptr i64 %i.gj to ptr
  %i.gl = ptrtoint ptr %gep to i64
  %i.gm = add i64 %i.gl, 4
  %i.gn = inttoptr i64 %i.gm to ptr
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa250.unr = phi i32 [ poison, %.lr.ph ], [ %i.gg, %.prol.loopexit.unr-lcssa ]
  %.0148165.unr = phi ptr [ %i.ga, %.lr.ph ], [ %i.gk, %.prol.loopexit.unr-lcssa ]
  %.0138164.unr = phi ptr [ %gep, %.lr.ph ], [ %i.gn, %.prol.loopexit.unr-lcssa ]
  %.0150163.unr = phi i32 [ %1, %.lr.ph ], [ %i.dq, %.prol.loopexit.unr-lcssa ]
  br i1 %i.dr, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.0148165 = phi ptr [ %i.hf, %.lr.ph.new ], [ %.0148165.unr, %.prol.loopexit ] ; 2 uses
  %.0138164 = phi ptr [ %i.hh, %.lr.ph.new ], [ %.0138164.unr, %.prol.loopexit ] ; 2 uses
  %.0150163 = phi i32 [ %i.hi, %.lr.ph.new ], [ %.0150163.unr, %.prol.loopexit ]
  %i.go = load i32, ptr %.0148165, align 4
  %i.gp = and i32 %i.go, 16777215
  store i32 %i.gp, ptr %.0138164, align 4
  %i.gq = ptrtoint ptr %.0148165 to i64
  %i.gr = load i32, ptr %i.n, align 4
  %i.gs = sdiv i32 %i.gr, 8
  %i.gt = sext i32 %i.gs to i64
  %i.gu = add i64 %i.gt, %i.gq                    ; 2 uses
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = ptrtoint ptr %.0138164 to i64           ; 2 uses
  %i.gx = add i64 %i.gw, 4
  %i.gy = inttoptr i64 %i.gx to ptr
  %i.gz = load i32, ptr %i.gv, align 4
  %i.ha = and i32 %i.gz, 16777215
  store i32 %i.ha, ptr %i.gy, align 4
  %i.hb = load i32, ptr %i.n, align 4             ; 2 uses
  %i.hc = sdiv i32 %i.hb, 8
  %i.hd = sext i32 %i.hc to i64
  %i.he = add i64 %i.gu, %i.hd
  %i.hf = inttoptr i64 %i.he to ptr
  %i.hg = add i64 %i.gw, 8
  %i.hh = inttoptr i64 %i.hg to ptr
  %i.hi = add nsw i32 %.0150163, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.hi, %i.dn
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %.lcssa250 = phi i32 [ %.lcssa250.unr, %.prol.loopexit ], [ %i.hb, %.lr.ph.new ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond202.not, label %.loopexit, label %.lr.ph, !llvm.loop !52

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.f
  tail call void (ptr, i32, ptr, ...) @xen_pv_printf(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.xenfb_guest_copy, i32 noundef %i.o, i32 noundef %i.i) #11
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge173, %._crit_edge183, %._crit_edge193, %.preheader161, %.lr.ph167, %.preheader159, %.lr.ph175, %.preheader157, %.lr.ph185, %.preheader, %.lr.ph195, %bb.a, %.critedge
  %i.hj = load ptr, ptr %i.a, align 8
  tail call void @qemu_console_update(ptr noundef %i.hj, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #11
  ret void
}

declare ptr @qemu_console_surface(ptr noundef) local_unnamed_addr #1

declare void @qemu_console_update(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @pixman_image_get_format(ptr noundef) local_unnamed_addr #1

declare i32 @pixman_image_get_stride(ptr noundef) local_unnamed_addr #1

declare ptr @pixman_image_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare i32 @xen_pv_send_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare void @xen_pv_unbind_evtchn(ptr noundef) local_unnamed_addr #1

declare i32 @xen_be_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @xen_be_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @input_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @xenstore_write_be_int(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef 1) #11 ; 0 uses
  %i.b = tail call i32 @xenstore_write_be_int(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef 1) #11 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @input_initialise(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc i32 @common_bind(ptr noundef %0)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @input_connected(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2016 ; 5 uses
  %i.b = tail call i32 @xenstore_read_fe_int(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.a) #11
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2020 ; 4 uses
  %i.e = tail call i32 @xenstore_read_fe_int(ptr noundef nonnull %0, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.d) #11
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  store i32 0, ptr %i.d, align 4
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %.pr = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %.pr, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %i.a, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @xen_pv_printf(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.38) #11
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.j, null
  br i1 %.not27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @qemu_input_handler_unregister(ptr noundef nonnull %i.j) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.l, null
  br i1 %.not28, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @qemu_input_handler_unregister(ptr noundef nonnull %i.l) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.m = load i32, ptr %i.a, align 8
  %i.n = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %trace_xenfb_input_connected.exit, label %bb.l, !prof !53

bb.l:                                             ; preds = %bb.k
  %i.o = load i16, ptr @_TRACE_XENFB_INPUT_CONNECTED_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.o, 0
  br i1 %.not1.i, label %trace_xenfb_input_connected.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = load i32, ptr @qemu_loglevel, align 4
  %i.q = and i32 %i.p, 32768
  %.not2.i = icmp eq i32 %i.q, 0
  br i1 %.not2.i, label %trace_xenfb_input_connected.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.39, ptr noundef nonnull %0, i32 noundef %i.m) #11
  br label %trace_xenfb_input_connected.exit

trace_xenfb_input_connected.exit:                 ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %i.r = tail call ptr @qemu_input_handler_register(ptr noundef nonnull %0, ptr noundef nonnull @xenfb_keyboard) #11
  store ptr %i.r, ptr %i.i, align 8
  %i.s = load i32, ptr %i.a, align 8
  %.not29 = icmp eq i32 %i.s, 0
  %i.t = select i1 %.not29, ptr @xenfb_rel_mouse, ptr @xenfb_abs_mouse
  %i.u = tail call ptr @qemu_input_handler_register(ptr noundef nonnull %0, ptr noundef nonnull %i.t) #11
  store ptr %i.u, ptr %i.k, align 8
  %i.v = load i32, ptr %i.d, align 4
  %.not30 = icmp eq i32 %i.v, 0
  br i1 %.not30, label %bb.p, label %bb.o

bb.o:                                             ; preds = %trace_xenfb_input_connected.exit
  %i.w = load ptr, ptr %i.i, align 8
  tail call void @qemu_input_handler_activate(ptr noundef %i.w) #11
  %i.x = load ptr, ptr %i.k, align 8
  tail call void @qemu_input_handler_activate(ptr noundef %i.x) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %trace_xenfb_input_connected.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @input_event(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.d, ptr %i.e, align 4
  %i.h = tail call i32 @xen_pv_send_notify(ptr noundef nonnull %0) #11 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @input_disconnect(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @qemu_input_handler_unregister(ptr noundef nonnull %i.b) #11
  store ptr null, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.d, null
  br i1 %.not11, label %bb.e, label %bb.d
end_hunk_1

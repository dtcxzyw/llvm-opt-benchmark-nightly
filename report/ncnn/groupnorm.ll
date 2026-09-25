Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/groupnorm?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4ncnn9GroupNorm10load_modelERKNS_8ModelBinE:bb.a

bb.aq:                                            ; preds = %bb.ao
  %.not.i23 = icmp eq ptr %i.ea, null
  br i1 %.not.i23, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef nonnull %i.ea) #10
  br label %_ZN4ncnn3MatD2Ev.exit

bb.as:                                            ; preds = %bb.ap
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.an, %bb.am, %bb.ap, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.at

_ZNK4ncnn3Mat5emptyEv.exit39.thread:              ; preds = %_ZN4ncnn3MatD2Ev.exit10, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit39, %bb.a
  %.06 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit39 ], [ 0, %bb.a ], [ 0, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit.thread ], [ -100, %_ZN4ncnn3MatD2Ev.exit10 ]
  ret i32 %.06

bb.at:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit9
  %.pn = phi { ptr, i32 } [ %i.du, %_ZN4ncnn3MatD2Ev.exit ], [ %i.bg, %_ZN4ncnn3MatD2Ev.exit9 ]
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK4ncnn9GroupNorm15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !55   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.i = load i32, ptr %i.h, align 4, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37
  %i.l = sdiv i32 %i.i, %i.k
  store i32 %i.l, ptr %i.a, align 4, !tbaa !42
  switch i32 %i.g, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !57
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.n)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK4ncnn9GroupNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %0, ptr nonnull %1, ptr nonnull %i.a)
  br label %.thread

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !43
  store i32 %i.p, ptr %i.b, align 4, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !57
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.r)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn9GroupNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1, ptr nonnull %0, ptr nonnull %1, ptr nonnull %i.a, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.s = add i32 %i.g, -3
  %or.cond = icmp ult i32 %i.s, 2
  br i1 %or.cond, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !58
  %i.x = mul nsw i32 %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59
  %i.aa = mul nsw i32 %i.x, %i.z
  store i32 %i.aa, ptr %i.c, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !20
  store i64 %i.ac, ptr %i.d, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !57
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.ae)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn9GroupNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.2, ptr nonnull %0, ptr nonnull %1, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn9GroupNormC2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn9GroupNormE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 0, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.c, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  store i8 1, ptr %i.f, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.g, align 1, !tbaa !61
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nofpclass(nan inf) float @_ZNK4ncnn9ParamDict3getEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn9GroupNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.f = load i32, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.h, ptr %i.b, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !42
  %i.i = load i32, ptr %0, align 4, !tbaa !42     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !42
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 4 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !42
  %i.l = load i32, ptr %i.a, align 4, !tbaa !42   ; 3 uses
  %.not29 = icmp sgt i32 %i.l, %i.k
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load i32, ptr %4, align 4, !tbaa !42     ; 9 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !19, !noalias !76 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !76 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 220
  %i.r = load i32, ptr %i.q, align 4, !tbaa !40
  %.not18 = icmp eq i32 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.v = icmp sgt i32 %i.m, 0                     ; 3 uses
  %i.w = sitofp fast i32 %i.m to float
  %wide.trip.count129.i = zext i32 %i.m to i64    ; 15 uses
  %5 = uitofp ninf nsz nneg i32 %i.m to float     ; 3 uses
  %i.x = sext i32 %i.l to i64                     ; 3 uses
  %i.y = sext i32 %i.m to i64                     ; 4 uses
  %i.z = add nsw i32 %i.k, 1
  %i.aa = mul i64 %i.p, %i.x
  %i.ab = mul i64 %i.aa, %i.y
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.ab ; 2 uses
  %i.ac = sub i32 %i.k, %i.l
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nsw i64 %i.x, %i.ad
  %i.af = mul i64 %i.p, %i.ae
  %i.ag = mul i64 %i.af, %i.y
  %i.ah = shl nuw nsw i64 %wide.trip.count129.i, 2 ; 3 uses
  %i.ai = getelementptr i8, ptr %i.n, i64 %i.ag
  %scevgep42 = getelementptr i8, ptr %i.ai, i64 %i.ah ; 2 uses
  %i.aj = mul i64 %i.p, %i.y
  %min.iters.check88 = icmp ult i32 %i.m, 8
  %n.vec90 = and i64 %wide.trip.count129.i, 2147483640 ; 3 uses
  %cmp.n100 = icmp eq i64 %n.vec90, %wide.trip.count129.i
  %i.ak = fdiv fast float 1.000000e+00, %5
  %min.iters.check73 = icmp ult i32 %i.m, 8
  %n.vec75 = and i64 %wide.trip.count129.i, 2147483640 ; 3 uses
  %cmp.n85 = icmp eq i64 %n.vec75, %wide.trip.count129.i
  %min.iters.check57 = icmp ult i32 %i.m, 8
  %n.vec59 = and i64 %wide.trip.count129.i, 2147483640 ; 3 uses
  %cmp.n70 = icmp eq i64 %n.vec59, %wide.trip.count129.i
  %min.iters.check = icmp ult i32 %i.m, 8
  %stride.check48 = icmp slt i64 %i.aj, 0
  %n.vec = and i64 %wide.trip.count129.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count129.i
  %xtraiter = and i64 %wide.trip.count129.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.al = add nsw i64 %wide.trip.count129.i, -1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.x, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.am = mul nsw i64 %indvars.iv, %i.y           ; 3 uses
  %i.an = mul i64 %i.p, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.an ; 10 uses
  br i1 %.not18, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.am
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.am
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.at = phi ptr [ %i.aq, %bb.d ], [ null, %bb.c ] ; 7 uses
  %i.au = phi ptr [ %i.as, %bb.d ], [ null, %bb.c ] ; 7 uses
  %i.av = load float, ptr %i.u, align 8, !tbaa !39
  br i1 %i.v, label %.lr.ph.us.i.preheader, label %._crit_edge104.i

.lr.ph.us.i.preheader:                            ; preds = %.thread
  br i1 %min.iters.check88, label %.lr.ph.us.i.preheader106, label %vector.body91

vector.body91:                                    ; preds = %.lr.ph.us.i.preheader, %vector.body91
  %index92 = phi i64 [ %index.next97, %vector.body91 ], [ 0, %.lr.ph.us.i.preheader ] ; 2 uses
  %vec.phi93 = phi <4 x float> [ %i.ay, %vector.body91 ], [ zeroinitializer, %.lr.ph.us.i.preheader ]
  %vec.phi94 = phi <4 x float> [ %i.az, %vector.body91 ], [ zeroinitializer, %.lr.ph.us.i.preheader ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index92 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load95 = load <4 x float>, ptr %i.aw, align 4, !tbaa !45
  %wide.load96 = load <4 x float>, ptr %i.ax, align 4, !tbaa !45
  %i.ay = fadd fast <4 x float> %wide.load95, %vec.phi93 ; 2 uses
  %i.az = fadd fast <4 x float> %wide.load96, %vec.phi94 ; 2 uses
  %index.next97 = add nuw i64 %index92, 8         ; 2 uses
  %i.ba = icmp eq i64 %index.next97, %n.vec90
  br i1 %i.ba, label %middle.block98, label %vector.body91, !llvm.loop !64

middle.block98:                                   ; preds = %vector.body91
  %bin.rdx99 = fadd fast <4 x float> %i.az, %i.ay
  %i.bb = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx99) ; 2 uses
  br i1 %cmp.n100, label %._crit_edge96.i, label %.lr.ph.us.i.preheader106

.lr.ph.us.i.preheader106:                         ; preds = %.lr.ph.us.i.preheader, %middle.block98
  %indvars.iv126.i.ph = phi i64 [ 0, %.lr.ph.us.i.preheader ], [ %n.vec90, %middle.block98 ]
  %.07893.us.i.ph = phi float [ 0.000000e+00, %.lr.ph.us.i.preheader ], [ %i.bb, %middle.block98 ]
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader106, %.lr.ph.us.i
  %indvars.iv126.i = phi i64 [ %indvars.iv.next127.i, %.lr.ph.us.i ], [ %indvars.iv126.i.ph, %.lr.ph.us.i.preheader106 ] ; 2 uses
  %.07893.us.i = phi float [ %i.be, %.lr.ph.us.i ], [ %.07893.us.i.ph, %.lr.ph.us.i.preheader106 ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv126.i
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !45
  %i.be = fadd fast float %i.bd, %.07893.us.i     ; 2 uses
  %indvars.iv.next127.i = add nuw nsw i64 %indvars.iv126.i, 1 ; 2 uses
  %exitcond130.not.i = icmp eq i64 %indvars.iv.next127.i, %wide.trip.count129.i
  br i1 %exitcond130.not.i, label %._crit_edge96.i, label %.lr.ph.us.i, !llvm.loop !65

._crit_edge96.i:                                  ; preds = %.lr.ph.us.i, %middle.block98
  %.lcssa = phi float [ %i.bb, %middle.block98 ], [ %i.be, %.lr.ph.us.i ]
  %i.bf = fmul fast float %.lcssa, %i.ak          ; 4 uses
  br i1 %min.iters.check73, label %.lr.ph.us106.i.preheader, label %vector.ph74

vector.ph74:                                      ; preds = %._crit_edge96.i
  %broadcast.splatinsert76 = insertelement <4 x float> poison, float %i.bf, i64 0
  %broadcast.splat77 = shufflevector <4 x float> %broadcast.splatinsert76, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph74
  %index79 = phi i64 [ 0, %vector.ph74 ], [ %index.next83, %vector.body78 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph74 ], [ %i.bm, %vector.body78 ]
  %vec.phi80 = phi <4 x float> [ zeroinitializer, %vector.ph74 ], [ %i.bn, %vector.body78 ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index79 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load81 = load <4 x float>, ptr %i.bg, align 4, !tbaa !45
  %wide.load82 = load <4 x float>, ptr %i.bh, align 4, !tbaa !45
  %i.bi = fsub fast <4 x float> %wide.load81, %broadcast.splat77 ; 2 uses
  %i.bj = fsub fast <4 x float> %wide.load82, %broadcast.splat77 ; 2 uses
  %i.bk = fmul fast <4 x float> %i.bi, %i.bi
  %i.bl = fmul fast <4 x float> %i.bj, %i.bj
  %i.bm = fadd fast <4 x float> %i.bk, %vec.phi   ; 2 uses
  %i.bn = fadd fast <4 x float> %i.bl, %vec.phi80 ; 2 uses
  %index.next83 = add nuw i64 %index79, 8         ; 2 uses
  %i.bo = icmp eq i64 %index.next83, %n.vec75
  br i1 %i.bo, label %middle.block84, label %vector.body78, !llvm.loop !66

middle.block84:                                   ; preds = %vector.body78
  %bin.rdx = fadd fast <4 x float> %i.bn, %i.bm
  %i.bp = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n85, label %._crit_edge104.i, label %.lr.ph.us106.i.preheader

.lr.ph.us106.i.preheader:                         ; preds = %._crit_edge96.i, %middle.block84
  %indvars.iv136.i.ph = phi i64 [ 0, %._crit_edge96.i ], [ %n.vec75, %middle.block84 ]
  %.081100.us.i.ph = phi float [ 0.000000e+00, %._crit_edge96.i ], [ %i.bp, %middle.block84 ]
  br label %.lr.ph.us106.i

.lr.ph.us106.i:                                   ; preds = %.lr.ph.us106.i.preheader, %.lr.ph.us106.i
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i, %.lr.ph.us106.i ], [ %indvars.iv136.i.ph, %.lr.ph.us106.i.preheader ] ; 2 uses
  %.081100.us.i = phi float [ %i.bu, %.lr.ph.us106.i ], [ %.081100.us.i.ph, %.lr.ph.us106.i.preheader ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv136.i
  %i.br = load float, ptr %i.bq, align 4, !tbaa !45
  %i.bs = fsub fast float %i.br, %i.bf            ; 2 uses
  %i.bt = fmul fast float %i.bs, %i.bs
  %i.bu = fadd fast float %i.bt, %.081100.us.i    ; 2 uses
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 1 ; 2 uses
  %exitcond140.not.i = icmp eq i64 %indvars.iv.next137.i, %wide.trip.count129.i
  br i1 %exitcond140.not.i, label %._crit_edge104.i, label %.lr.ph.us106.i, !llvm.loop !67

._crit_edge104.i:                                 ; preds = %.lr.ph.us106.i, %middle.block84, %.thread
  %i.bv = phi float [ 0.000000e+00, %.thread ], [ %i.bf, %middle.block84 ], [ %i.bf, %.lr.ph.us106.i ]
  %6 = phi float [ %i.w, %.thread ], [ %5, %middle.block84 ], [ %5, %.lr.ph.us106.i ]
  %.081.lcssa.i = phi float [ 0.000000e+00, %.thread ], [ %i.bp, %middle.block84 ], [ %i.bu, %.lr.ph.us106.i ]
  %7 = fdiv fast float %.081.lcssa.i, %6
  %i.bw = fadd fast float %7, %i.av
  %i.bx = call fast float @llvm.sqrt.f32(float %i.bw)
  %i.by = fdiv fast float 1.000000e+00, %i.bx     ; 7 uses
  %i.bz = fneg fast float %i.bv
  %i.ca = fmul fast float %i.by, %i.bz            ; 6 uses
  %i.cb = icmp ne ptr %i.at, null
  %i.cc = icmp ne ptr %i.au, null
  %or.cond.i = and i1 %i.cb, %i.cc
  br i1 %or.cond.i, label %.preheader.i, label %.preheader88.i

.preheader88.i:                                   ; preds = %._crit_edge104.i
  br i1 %i.v, label %.lr.ph.i.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.i.preheader:                               ; preds = %.preheader88.i
  br i1 %min.iters.check57, label %.lr.ph.i.preheader104, label %vector.ph58

vector.ph58:                                      ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert60 = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat61 = shufflevector <4 x float> %broadcast.splatinsert60, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert62 = insertelement <4 x float> poison, float %i.ca, i64 0
  %broadcast.splat63 = shufflevector <4 x float> %broadcast.splatinsert62, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph58
  %index65 = phi i64 [ 0, %vector.ph58 ], [ %index.next68, %vector.body64 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index65 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %wide.load66 = load <4 x float>, ptr %i.cd, align 4, !tbaa !45
  %wide.load67 = load <4 x float>, ptr %i.ce, align 4, !tbaa !45
  %i.cf = fmul fast <4 x float> %wide.load66, %broadcast.splat61
  %i.cg = fmul fast <4 x float> %wide.load67, %broadcast.splat61
  %i.ch = fadd fast <4 x float> %i.cf, %broadcast.splat63
  %i.ci = fadd fast <4 x float> %i.cg, %broadcast.splat63
  store <4 x float> %i.ch, ptr %i.cd, align 4, !tbaa !45
  store <4 x float> %i.ci, ptr %i.ce, align 4, !tbaa !45
  %index.next68 = add nuw i64 %index65, 8         ; 2 uses
  %i.cj = icmp eq i64 %index.next68, %n.vec59
  br i1 %i.cj, label %middle.block69, label %vector.body64, !llvm.loop !68

middle.block69:                                   ; preds = %vector.body64
  br i1 %cmp.n70, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph.i.preheader104

.lr.ph.i.preheader104:                            ; preds = %.lr.ph.i.preheader, %middle.block69
  %indvars.iv146.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec59, %middle.block69 ]
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %._crit_edge104.i
  br i1 %i.v, label %.lr.ph115.i.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph115.i.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph115.i.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph115.i.preheader
  %scevgep43 = getelementptr i8, ptr %i.at, i64 %i.ah
  %scevgep44 = getelementptr i8, ptr %i.au, i64 %i.ah
  %bound0 = icmp ult ptr %scevgep, %scevgep43
  %bound1 = icmp ult ptr %i.at, %scevgep42
  %found.conflict = and i1 %bound0, %bound1
  %bound045 = icmp ult ptr %scevgep, %scevgep44
  %bound146 = icmp ult ptr %i.au, %scevgep42
  %found.conflict47 = and i1 %bound045, %bound146
  %i.ck = or i1 %found.conflict47, %stride.check48
  %conflict.rdx = or i1 %found.conflict, %i.ck
  br i1 %conflict.rdx, label %.lr.ph115.i.preheader103, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert49 = insertelement <4 x float> poison, float %i.ca, i64 0
  %broadcast.splat50 = shufflevector <4 x float> %broadcast.splatinsert49, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load = load <4 x float>, ptr %i.cm, align 4, !tbaa !45, !alias.scope !77
  %wide.load51 = load <4 x float>, ptr %i.cn, align 4, !tbaa !45, !alias.scope !77
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load52 = load <4 x float>, ptr %i.co, align 4, !tbaa !45, !alias.scope !78
  %wide.load53 = load <4 x float>, ptr %i.cp, align 4, !tbaa !45, !alias.scope !78
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %wide.load54 = load <4 x float>, ptr %i.cl, align 4, !tbaa !45, !alias.scope !79, !noalias !80
  %wide.load55 = load <4 x float>, ptr %i.cq, align 4, !tbaa !45, !alias.scope !79, !noalias !80
  %i.cr = fmul fast <4 x float> %wide.load54, %broadcast.splat
  %i.cs = fmul fast <4 x float> %wide.load55, %broadcast.splat
  %i.ct = fadd fast <4 x float> %i.cr, %broadcast.splat50
  %i.cu = fadd fast <4 x float> %i.cs, %broadcast.splat50
  %i.cv = fmul fast <4 x float> %i.ct, %wide.load
  %i.cw = fmul fast <4 x float> %i.cu, %wide.load51
  %i.cx = fadd fast <4 x float> %i.cv, %wide.load52
  %i.cy = fadd fast <4 x float> %i.cw, %wide.load53
  store <4 x float> %i.cx, ptr %i.cl, align 4, !tbaa !45, !alias.scope !79, !noalias !80
  store <4 x float> %i.cy, ptr %i.cq, align 4, !tbaa !45, !alias.scope !79, !noalias !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph115.i.preheader103

.lr.ph115.i.preheader103:                         ; preds = %vector.memcheck, %.lr.ph115.i.preheader, %middle.block
  %indvars.iv156.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph115.i.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol

.lr.ph115.i.prol:                                 ; preds = %.lr.ph115.i.preheader103
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv156.i.ph ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv156.i.ph
  %i.dc = load float, ptr %i.db, align 4, !tbaa !45
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv156.i.ph
  %i.de = load float, ptr %i.dd, align 4, !tbaa !45
  %i.df = load float, ptr %i.da, align 4, !tbaa !45
  %i.dg = fmul fast float %i.df, %i.by
  %i.dh = fadd fast float %i.dg, %i.ca
  %i.di = fmul fast float %i.dh, %i.dc
  %i.dj = fadd fast float %i.di, %i.de
  store float %i.dj, ptr %i.da, align 4, !tbaa !45
  %indvars.iv.next157.i.prol = or disjoint i64 %indvars.iv156.i.ph, 1
  br label %.lr.ph115.i.prol.loopexit

.lr.ph115.i.prol.loopexit:                        ; preds = %.lr.ph115.i.prol, %.lr.ph115.i.preheader103
  %indvars.iv156.i.unr = phi i64 [ %indvars.iv156.i.ph, %.lr.ph115.i.preheader103 ], [ %indvars.iv.next157.i.prol, %.lr.ph115.i.prol ]
  %i.dk = icmp eq i64 %indvars.iv156.i.ph, %i.al
  br i1 %i.dk, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %.lr.ph115.i.prol.loopexit, %.lr.ph115.i
  %indvars.iv156.i = phi i64 [ %indvars.iv.next157.i.1, %.lr.ph115.i ], [ %indvars.iv156.i.unr, %.lr.ph115.i.prol.loopexit ] ; 5 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv156.i ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv156.i
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !45
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv156.i
  %i.dp = load float, ptr %i.do, align 4, !tbaa !45
  %i.dq = load float, ptr %i.dl, align 4, !tbaa !45
  %i.dr = fmul fast float %i.dq, %i.by
  %i.ds = fadd fast float %i.dr, %i.ca
  %i.dt = fmul fast float %i.ds, %i.dn
  %i.du = fadd fast float %i.dt, %i.dp
  store float %i.du, ptr %i.dl, align 4, !tbaa !45
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next157.i ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next157.i
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !45
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next157.i
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !45
  %i.ea = load float, ptr %i.dv, align 4, !tbaa !45
  %i.eb = fmul fast float %i.ea, %i.by
  %i.ec = fadd fast float %i.eb, %i.ca
  %i.ed = fmul fast float %i.ec, %i.dx
  %i.ee = fadd fast float %i.ed, %i.dz
  store float %i.ee, ptr %i.dv, align 4, !tbaa !45
  %indvars.iv.next157.i.1 = add nuw nsw i64 %indvars.iv156.i, 2 ; 2 uses
  %exitcond160.not.i.1 = icmp eq i64 %indvars.iv.next157.i.1, %wide.trip.count129.i
  br i1 %exitcond160.not.i.1, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph115.i, !llvm.loop !74

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader104, %.lr.ph.i
  %indvars.iv146.i = phi i64 [ %indvars.iv.next147.i, %.lr.ph.i ], [ %indvars.iv146.i.ph, %.lr.ph.i.preheader104 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv146.i ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !45
  %i.eh = fmul fast float %i.eg, %i.by
  %i.ei = fadd fast float %i.eh, %i.ca
  store float %i.ei, ptr %i.ef, align 4, !tbaa !45
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 2 uses
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next147.i, %wide.trip.count129.i
  br i1 %exitcond150.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph.i, !llvm.loop !75

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph.i, %.lr.ph115.i.prol.loopexit, %.lr.ph115.i, %middle.block69, %middle.block, %.preheader88.i, %.preheader.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ncnnL9groupnormEPfPKfS2_fiim(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, float noundef nofpclass(nan inf) %3, i32 noundef %4, i32 noundef %5, i64 noundef %6) unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %4, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph95, label %._crit_edge96.thread168

._crit_edge96.thread168:                          ; preds = %bb.a
  %i.b = mul nsw i32 %5, %4
  %i.c = sitofp fast i32 %i.b to float
  br label %._crit_edge104

.lr.ph95:                                         ; preds = %bb.a
  %i.d = icmp sgt i32 %5, 0
  br i1 %i.d, label %.lr.ph.us.preheader, label %.lr.ph103.thread

.lr.ph103.thread:                                 ; preds = %.lr.ph95
  %i.e = mul nsw i32 %5, %4
  %i.f = sitofp fast i32 %i.e to float
  br label %._crit_edge104

.lr.ph.us.preheader:                              ; preds = %.lr.ph95
  %wide.trip.count129 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %5 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %5, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv126 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next127, %._crit_edge.us ] ; 2 uses
  %.07893.us = phi float [ 0.000000e+00, %.lr.ph.us.preheader ], [ %.lcssa174, %._crit_edge.us ] ; 2 uses
  %i.g = mul i64 %6, %indvars.iv126
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us
  %i.i = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.07893.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.i, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi175 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <4 x float>, ptr %i.j, align 4, !tbaa !45
  %wide.load176 = load <4 x float>, ptr %i.k, align 4, !tbaa !45
  %i.l = fadd fast <4 x float> %wide.load, %vec.phi ; 2 uses
  %i.m = fadd fast <4 x float> %wide.load176, %vec.phi175 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.m, %i.l
  %i.o = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ]
  %.191.us.ph = phi float [ %.07893.us, %.lr.ph.us ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.191.us = phi float [ %i.r, %scalar.ph ], [ %.191.us.ph, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.q = load float, ptr %i.p, align 4, !tbaa !45
  %i.r = fadd fast float %i.q, %.191.us           ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !82

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa174 = phi float [ %i.o, %middle.block ], [ %i.r, %scalar.ph ] ; 2 uses
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %._crit_edge96, label %.lr.ph.us, !llvm.loop !83

._crit_edge96:                                    ; preds = %._crit_edge.us
  %i.s = mul nuw nsw i32 %5, %4
  %7 = uitofp ninf nsz nneg i32 %i.s to float     ; 2 uses
  %i.t = fdiv fast float %.lcssa174, %7           ; 3 uses
  %wide.trip.count139 = zext nneg i32 %4 to i64
  %wide.trip.count134 = zext nneg i32 %5 to i64
  %min.iters.check178 = icmp ult i32 %5, 8
  %n.vec180 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.t, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n190 = icmp eq i64 %n.vec180, %wide.trip.count
  br label %.lr.ph.us106

.lr.ph.us106:                                     ; preds = %._crit_edge96, %._crit_edge.us107
  %indvars.iv136 = phi i64 [ 0, %._crit_edge96 ], [ %indvars.iv.next137, %._crit_edge.us107 ] ; 2 uses
  %.081100.us = phi float [ 0.000000e+00, %._crit_edge96 ], [ %.lcssa, %._crit_edge.us107 ] ; 2 uses
  %i.u = mul i64 %6, %indvars.iv136
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u ; 2 uses
  br i1 %min.iters.check178, label %scalar.ph177.preheader, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph.us106
  %i.w = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.081100.us, i64 0
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next187, %vector.body181 ] ; 2 uses
  %vec.phi183 = phi <4 x float> [ %i.w, %vector.ph179 ], [ %i.ad, %vector.body181 ]
  %vec.phi184 = phi <4 x float> [ zeroinitializer, %vector.ph179 ], [ %i.ae, %vector.body181 ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index182 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load185 = load <4 x float>, ptr %i.x, align 4, !tbaa !45
  %wide.load186 = load <4 x float>, ptr %i.y, align 4, !tbaa !45
  %i.z = fsub fast <4 x float> %wide.load185, %broadcast.splat ; 2 uses
  %i.aa = fsub fast <4 x float> %wide.load186, %broadcast.splat ; 2 uses
  %i.ab = fmul fast <4 x float> %i.z, %i.z
  %i.ac = fmul fast <4 x float> %i.aa, %i.aa
  %i.ad = fadd fast <4 x float> %i.ab, %vec.phi183 ; 2 uses
  %i.ae = fadd fast <4 x float> %i.ac, %vec.phi184 ; 2 uses
  %index.next187 = add nuw i64 %index182, 8       ; 2 uses
  %i.af = icmp eq i64 %index.next187, %n.vec180
  br i1 %i.af, label %middle.block188, label %vector.body181, !llvm.loop !84

middle.block188:                                  ; preds = %vector.body181
  %bin.rdx189 = fadd fast <4 x float> %i.ae, %i.ad
  %i.ag = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx189) ; 2 uses
  br i1 %cmp.n190, label %._crit_edge.us107, label %scalar.ph177.preheader

scalar.ph177.preheader:                           ; preds = %.lr.ph.us106, %middle.block188
  %indvars.iv131.ph = phi i64 [ 0, %.lr.ph.us106 ], [ %n.vec180, %middle.block188 ]
  %.18298.us.ph = phi float [ %.081100.us, %.lr.ph.us106 ], [ %i.ag, %middle.block188 ]
  br label %scalar.ph177

scalar.ph177:                                     ; preds = %scalar.ph177.preheader, %scalar.ph177
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %scalar.ph177 ], [ %indvars.iv131.ph, %scalar.ph177.preheader ] ; 2 uses
  %.18298.us = phi float [ %i.al, %scalar.ph177 ], [ %.18298.us.ph, %scalar.ph177.preheader ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv131
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !45
  %i.aj = fsub fast float %i.ai, %i.t             ; 2 uses
  %i.ak = fmul fast float %i.aj, %i.aj
  %i.al = fadd fast float %i.ak, %.18298.us       ; 2 uses
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %._crit_edge.us107, label %scalar.ph177, !llvm.loop !85

._crit_edge.us107:                                ; preds = %scalar.ph177, %middle.block188
  %.lcssa = phi float [ %i.ag, %middle.block188 ], [ %i.al, %scalar.ph177 ] ; 2 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %._crit_edge104, label %.lr.ph.us106, !llvm.loop !86

._crit_edge104:                                   ; preds = %._crit_edge.us107, %.lr.ph103.thread, %._crit_edge96.thread168
  %i.am = phi float [ 0.000000e+00, %._crit_edge96.thread168 ], [ 0.000000e+00, %.lr.ph103.thread ], [ %i.t, %._crit_edge.us107 ]
  %i.an = phi float [ %i.c, %._crit_edge96.thread168 ], [ %i.f, %.lr.ph103.thread ], [ %7, %._crit_edge.us107 ]
  %.081.lcssa = phi float [ 0.000000e+00, %._crit_edge96.thread168 ], [ 0.000000e+00, %.lr.ph103.thread ], [ %.lcssa, %._crit_edge.us107 ]
  %i.ao = fdiv fast float %.081.lcssa, %i.an
  %i.ap = fadd fast float %i.ao, %3
  %i.aq = tail call fast float @llvm.sqrt.f32(float %i.ap)
  %i.ar = fdiv fast float 1.000000e+00, %i.aq     ; 5 uses
  %i.as = fneg fast float %i.am
  %i.at = fmul fast float %i.ar, %i.as            ; 4 uses
  %i.au = icmp ne ptr %1, null
  %i.av = icmp ne ptr %2, null
  %or.cond = and i1 %i.au, %i.av
  %i.aw = icmp sgt i32 %5, 0
  %or.cond120 = and i1 %i.a, %i.aw                ; 2 uses
  br i1 %or.cond, label %.preheader, label %.preheader88

.preheader88:                                     ; preds = %._crit_edge104
  br i1 %or.cond120, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader88
  %wide.trip.count149 = zext nneg i32 %4 to i64
  %wide.trip.count144 = zext nneg i32 %5 to i64   ; 3 uses
  %min.iters.check194 = icmp ult i32 %5, 8
  %n.vec196 = and i64 %wide.trip.count144, 2147483640 ; 3 uses
  %broadcast.splatinsert197 = insertelement <4 x float> poison, float %i.ar, i64 0
  %broadcast.splat198 = shufflevector <4 x float> %broadcast.splatinsert197, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert199 = insertelement <4 x float> poison, float %i.at, i64 0
  %broadcast.splat200 = shufflevector <4 x float> %broadcast.splatinsert199, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n207 = icmp eq i64 %n.vec196, %wide.trip.count144
  br label %.lr.ph

.preheader:                                       ; preds = %._crit_edge104
  br i1 %or.cond120, label %.lr.ph115.preheader, label %.loopexit

.lr.ph115.preheader:                              ; preds = %.preheader
  %wide.trip.count159 = zext nneg i32 %4 to i64
  %wide.trip.count154 = zext nneg i32 %5 to i64   ; 3 uses
  %min.iters.check210 = icmp ult i32 %5, 8
  %n.vec212 = and i64 %wide.trip.count154, 2147483640 ; 3 uses
  %broadcast.splatinsert217 = insertelement <4 x float> poison, float %i.ar, i64 0
  %broadcast.splat218 = shufflevector <4 x float> %broadcast.splatinsert217, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert219 = insertelement <4 x float> poison, float %i.at, i64 0
  %broadcast.splat220 = shufflevector <4 x float> %broadcast.splatinsert219, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n227 = icmp eq i64 %n.vec212, %wide.trip.count154
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %._crit_edge116
  %indvars.iv156 = phi i64 [ 0, %.lr.ph115.preheader ], [ %indvars.iv.next157, %._crit_edge116 ] ; 4 uses
  %i.ax = mul i64 %6, %indvars.iv156
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv156
  %i.ba = load float, ptr %i.az, align 4, !tbaa !45 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv156
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !45 ; 2 uses
  br i1 %min.iters.check210, label %scalar.ph209.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %.lr.ph115
  %broadcast.splatinsert213 = insertelement <4 x float> poison, float %i.ba, i64 0
  %broadcast.splat214 = shufflevector <4 x float> %broadcast.splatinsert213, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert215 = insertelement <4 x float> poison, float %i.bc, i64 0
  %broadcast.splat216 = shufflevector <4 x float> %broadcast.splatinsert215, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph211
  %index222 = phi i64 [ 0, %vector.ph211 ], [ %index.next225, %vector.body221 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index222 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %wide.load223 = load <4 x float>, ptr %i.bd, align 4, !tbaa !45
  %wide.load224 = load <4 x float>, ptr %i.be, align 4, !tbaa !45
  %i.bf = fmul fast <4 x float> %wide.load223, %broadcast.splat218
  %i.bg = fmul fast <4 x float> %wide.load224, %broadcast.splat218
  %i.bh = fadd fast <4 x float> %i.bf, %broadcast.splat220
  %i.bi = fadd fast <4 x float> %i.bg, %broadcast.splat220
  %i.bj = fmul fast <4 x float> %i.bh, %broadcast.splat214
  %i.bk = fmul fast <4 x float> %i.bi, %broadcast.splat214
  %i.bl = fadd fast <4 x float> %i.bj, %broadcast.splat216
  %i.bm = fadd fast <4 x float> %i.bk, %broadcast.splat216
  store <4 x float> %i.bl, ptr %i.bd, align 4, !tbaa !45
  store <4 x float> %i.bm, ptr %i.be, align 4, !tbaa !45
  %index.next225 = add nuw i64 %index222, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next225, %n.vec212
  br i1 %i.bn, label %middle.block226, label %vector.body221, !llvm.loop !87

middle.block226:                                  ; preds = %vector.body221
  br i1 %cmp.n227, label %._crit_edge116, label %scalar.ph209.preheader

scalar.ph209.preheader:                           ; preds = %.lr.ph115, %middle.block226
  %indvars.iv151.ph = phi i64 [ 0, %.lr.ph115 ], [ %n.vec212, %middle.block226 ]
  br label %scalar.ph209

._crit_edge116:                                   ; preds = %scalar.ph209, %middle.block226
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %.loopexit, label %.lr.ph115, !llvm.loop !88

scalar.ph209:                                     ; preds = %scalar.ph209.preheader, %scalar.ph209
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %scalar.ph209 ], [ %indvars.iv151.ph, %scalar.ph209.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv151 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !45
  %i.bq = fmul fast float %i.bp, %i.ar
  %i.br = fadd fast float %i.bq, %i.at
  %i.bs = fmul fast float %i.br, %i.ba
  %i.bt = fadd fast float %i.bs, %i.bc
  store float %i.bt, ptr %i.bo, align 4, !tbaa !45
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge116, label %scalar.ph209, !llvm.loop !89

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv146 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next147, %._crit_edge ] ; 2 uses
  %i.bu = mul i64 %6, %indvars.iv146
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bu ; 2 uses
  br i1 %min.iters.check194, label %scalar.ph193.preheader, label %vector.body201

vector.body201:                                   ; preds = %.lr.ph, %vector.body201
  %index202 = phi i64 [ %index.next205, %vector.body201 ], [ 0, %.lr.ph ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index202 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %wide.load203 = load <4 x float>, ptr %i.bw, align 4, !tbaa !45
  %wide.load204 = load <4 x float>, ptr %i.bx, align 4, !tbaa !45
  %i.by = fmul fast <4 x float> %wide.load203, %broadcast.splat198
  %i.bz = fmul fast <4 x float> %wide.load204, %broadcast.splat198
  %i.ca = fadd fast <4 x float> %i.by, %broadcast.splat200
  %i.cb = fadd fast <4 x float> %i.bz, %broadcast.splat200
  store <4 x float> %i.ca, ptr %i.bw, align 4, !tbaa !45
  store <4 x float> %i.cb, ptr %i.bx, align 4, !tbaa !45
  %index.next205 = add nuw i64 %index202, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next205, %n.vec196
  br i1 %i.cc, label %middle.block206, label %vector.body201, !llvm.loop !90

middle.block206:                                  ; preds = %vector.body201
  br i1 %cmp.n207, label %._crit_edge, label %scalar.ph193.preheader
end_hunk_0

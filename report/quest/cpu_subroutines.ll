Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/cpu_subroutines?download=true
inline.NumInlined: 18129
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 1430
loop-unroll.NumUnrolled: 1519
begin_hunk_0_@llvm.memcpy.p0.p0.i64
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_Z37cpu_densmatr_setAmpsToPauliStrSum_sub5Qureg11PauliStrSum(ptr noundef byval(%struct.Qureg) align 8 %0, ptr noundef byval(%struct.PauliStrSum) align 8 %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  tail call void @_Z32assert_highPauliStrSumMaskIsZero11PauliStrSum(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  store i64 %i.f, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !26
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw i64 1, %i.i
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i32, ptr %0, align 8, !tbaa !27
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_Z37cpu_densmatr_setAmpsToPauliStrSum_sub5Qureg11PauliStrSum.omp_outlined, ptr nonnull %i.a, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.d)
  store i32 %i.d, ptr %i.c, align 4, !tbaa !28
  call void @_Z37cpu_densmatr_setAmpsToPauliStrSum_sub5Qureg11PauliStrSum.omp_outlined(ptr nonnull %i.c, ptr nonnull poison, ptr %i.a, ptr %0, ptr %i.b, ptr %1) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

declare void @_Z32assert_highPauliStrSumMaskIsZero11PauliStrSum(ptr noundef byval(%struct.PauliStrSum) align 8) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z37cpu_densmatr_setAmpsToPauliStrSum_sub5Qureg11PauliStrSum.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca [4 x [2 x [2 x %"class.std::complex"]]], align 16 ; 17 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not116 = icmp sgt i64 %i.k, %i.j
  br i1 %.not116, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.10.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 96
  %.sroa.10.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %6, i64 104
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 152
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 168
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 192
  %.sroa.10.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.w = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph119, %._crit_edge
  %.0117 = phi i64 [ %i.k, %.lr.ph119 ], [ %i.cq, %._crit_edge ] ; 4 uses
  %i.x = load i32, ptr %i.l, align 4, !tbaa !29
  %i.y = sext i32 %i.x to i64
  %i.z = load i64, ptr %i.m, align 8, !tbaa !30
  %i.aa = and i64 %i.z, 4294967295
  %i.ab = shl i64 %i.y, %i.aa
  %i.ac = or i64 %i.ab, %.0117                    ; 2 uses
  %i.ad = load i64, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.ae = srem i64 %i.ac, %i.ad                   ; 2 uses
  %i.af = sdiv i64 %i.ac, %i.ad                   ; 2 uses
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.ai = load i64, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.noexc20
  %.0.i114 = phi i64 [ %i.cm, %.noexc20 ], [ 0, %bb.c ] ; 3 uses
  %i.ak = phi <2 x double> [ %i.cl, %.noexc20 ], [ zeroinitializer, %bb.c ]
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.0.i114 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.al, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  store double 1.000000e+00, ptr %6, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.0..sroa_idx, i8 0, i64 40, i1 false)
  store double 1.000000e+00, ptr %i.p, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx73, i8 0, i64 24, i1 false)
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.q, align 16
  store double 1.000000e+00, ptr %i.r, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx77, i8 0, i64 48, i1 false)
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %.sroa.5.0..sroa_idx, align 8
  store double 1.000000e+00, ptr %.sroa.564.0..sroa_idx, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.t, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.0..sroa_idx79, i8 0, i64 40, i1 false)
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.u, align 16
  br label %.noexc28

.noexc28:                                         ; preds = %.lr.ph, %.noexc28
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.noexc28 ] ; 4 uses
  %i.am = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.lr.ph ], [ %i.bf, %.noexc28 ] ; 2 uses
  %i.an = shl nuw nsw i64 %indvars.iv, 1
  %i.ao = ashr i64 %.sroa.0.0.copyload.i, %i.an
  %i.ap = and i64 %i.ao, 3
  %i.aq = lshr i64 %i.ae, %indvars.iv
  %i.ar = and i64 %i.aq, 1
  %i.as = lshr i64 %i.af, %indvars.iv
  %i.at = and i64 %i.as, 1
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %6, i64 %i.ap
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.ar
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.at
  %i.ax = load <2 x double>, ptr %i.aw, align 16  ; 2 uses
  %i.ay = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul fast <2 x double> %i.ax, %i.ay     ; 2 uses
  %i.ba = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bb = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = fmul fast <2 x double> %i.ba, %i.bb     ; 2 uses
  %i.bd = fsub fast <2 x double> %i.az, %i.bc
  %i.be = fadd fast <2 x double> %i.az, %i.bc
  %i.bf = shufflevector <2 x double> %i.bd, <2 x double> %i.be, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.noexc29, label %.noexc28, !llvm.loop !0

.noexc29:                                         ; preds = %.noexc28, %.noexc29
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %.noexc29 ], [ 0, %.noexc28 ] ; 3 uses
  %i.bg = phi <2 x double> [ %i.ca, %.noexc29 ], [ %i.bf, %.noexc28 ] ; 2 uses
  %i.bh = shl nuw nsw i64 %indvars.iv127, 1
  %i.bi = ashr i64 %.sroa.2.0.copyload.i, %i.bh
  %i.bj = and i64 %i.bi, 3
  %i.bk = or disjoint i64 %indvars.iv127, 32      ; 2 uses
  %i.bl = lshr i64 %i.ae, %i.bk
  %i.bm = and i64 %i.bl, 1
  %i.bn = lshr i64 %i.af, %i.bk
  %i.bo = and i64 %i.bn, 1
  %i.bp = getelementptr inbounds nuw [64 x i8], ptr %6, i64 %i.bj
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %i.bm
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bo
  %i.bs = load <2 x double>, ptr %i.br, align 16  ; 2 uses
  %i.bt = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = fmul fast <2 x double> %i.bs, %i.bt     ; 2 uses
  %i.bv = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bw = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul fast <2 x double> %i.bv, %i.bw     ; 2 uses
  %i.by = fsub fast <2 x double> %i.bu, %i.bx     ; 2 uses
  %i.bz = fadd fast <2 x double> %i.bu, %i.bx     ; 2 uses
  %i.ca = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next128, 32
  br i1 %exitcond130.not, label %.noexc20, label %.noexc29, !llvm.loop !1

.noexc20:                                         ; preds = %.noexc29
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.0.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  %i.cc = load <2 x double>, ptr %i.cb, align 8   ; 2 uses
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fmul fast <2 x double> %i.cd, %i.ca
  %i.cf = shufflevector <2 x double> %i.bz, <2 x double> %i.by, <2 x i32> <i32 1, i32 2>
  %i.cg = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ch = fmul fast <2 x double> %i.cf, %i.cg     ; 2 uses
  %i.ci = fadd fast <2 x double> %i.ce, %i.ak     ; 2 uses
  %i.cj = fsub fast <2 x double> %i.ci, %i.ch
  %i.ck = fadd fast <2 x double> %i.ci, %i.ch
  %i.cl = shufflevector <2 x double> %i.cj, <2 x double> %i.ck, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cm = add nuw nsw i64 %.0.i114, 1             ; 2 uses
  %exitcond131.not = icmp eq i64 %i.cm, %i.ai
  br i1 %exitcond131.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

._crit_edge:                                      ; preds = %.noexc20, %bb.c
  %i.cn = phi <2 x double> [ zeroinitializer, %bb.c ], [ %i.cl, %.noexc20 ]
  %i.co = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.cp = getelementptr inbounds [16 x i8], ptr %i.co, i64 %.0117
  store <2 x double> %i.cn, ptr %i.cp, align 8
  %i.cq = add nsw i64 %.0117, 1
  %.not.not = icmp slt i64 %.0117, %i.w
  br i1 %.not.not, label %bb.c, label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge120, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #5 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !38 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(ptr, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(ptr, i32) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z43cpu_fullstatediagmatr_setElemsToPauliStrSum17FullStateDiagMatr11PauliStrSum(ptr noundef byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef byval(%struct.PauliStrSum) align 8 %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40   ; 3 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.h = and i64 %i.g, 1
  %.not.i.not2 = icmp eq i64 %i.h, 0
  br i1 %.not.i.not2, label %.lr.ph, label %_Z8logBase2x.exit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i4 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.a ]
  %.04.i3 = phi i64 [ %i.j, %.lr.ph ], [ %i.g, %bb.a ] ; 2 uses
  %i.i = add nuw nsw i32 %.0.i4, 1                ; 2 uses
  %i.j = ashr exact i64 %.04.i3, 1
  %i.k = and i64 %.04.i3, 2
  %.not.i.not = icmp eq i64 %i.k, 0
  br i1 %.not.i.not, label %.lr.ph, label %_Z8logBase2x.exit.loopexit, !llvm.loop !3

_Z8logBase2x.exit.loopexit:                       ; preds = %.lr.ph
  %i.l = zext nneg i32 %i.i to i64
  br label %_Z8logBase2x.exit

_Z8logBase2x.exit:                                ; preds = %_Z8logBase2x.exit.loopexit, %bb.a
  %.0.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.l, %_Z8logBase2x.exit.loopexit ]
  store i64 %.0.i.lcssa, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !41
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_Z8logBase2x.exit
  %i.o = tail call noundef i32 @_Z12comm_getRankv()
  br label %bb.c

bb.c:                                             ; preds = %_Z8logBase2x.exit, %bb.b
  %i.p = phi i32 [ %i.o, %bb.b ], [ 0, %_Z8logBase2x.exit ]
  store i32 %i.p, ptr %i.c, align 4, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !42
  %.not1 = icmp eq i32 %i.r, 0
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z43cpu_fullstatediagmatr_setElemsToPauliStrSum17FullStateDiagMatr11PauliStrSum.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.e)
  store i32 %i.e, ptr %i.d, align 4, !tbaa !28
  call void @_Z43cpu_fullstatediagmatr_setElemsToPauliStrSum17FullStateDiagMatr11PauliStrSum.omp_outlined(ptr nonnull %i.d, ptr nonnull poison, ptr %i.a, ptr %i.c, ptr %i.b, ptr %0, ptr %1) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

declare noundef i32 @_Z12comm_getRankv() local_unnamed_addr #3

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z43cpu_fullstatediagmatr_setElemsToPauliStrSum17FullStateDiagMatr11PauliStrSum.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca [4 x [2 x [2 x %"class.std::complex"]]], align 16 ; 17 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not115 = icmp sgt i64 %i.k, %i.j
  br i1 %.not115, label %._crit_edge119, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.10.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 96
  %.sroa.10.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %7, i64 104
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 152
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 168
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 176
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 192
  %.sroa.10.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %7, i64 200
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 240
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.u = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph118, %._crit_edge
  %.0116 = phi i64 [ %i.k, %.lr.ph118 ], [ %i.ch, %._crit_edge ] ; 4 uses
  %i.v = load i32, ptr %3, align 4, !tbaa !28
  %i.w = sext i32 %i.v to i64
  %i.x = load i64, ptr %4, align 8, !tbaa !25
  %i.y = and i64 %i.x, 4294967295
  %i.z = shl i64 %i.w, %i.y
  %i.aa = or i64 %i.z, %.0116                     ; 2 uses
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.ad = load i64, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.noexc19
  %.0.i113 = phi i64 [ %i.cd, %.noexc19 ], [ 0, %bb.c ] ; 3 uses
  %i.af = phi <2 x double> [ %i.cc, %.noexc19 ], [ zeroinitializer, %bb.c ]
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.0.i113 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ag, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  store double 1.000000e+00, ptr %7, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.0..sroa_idx, i8 0, i64 40, i1 false)
  store double 1.000000e+00, ptr %i.n, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx72, i8 0, i64 24, i1 false)
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.o, align 16
  store double 1.000000e+00, ptr %i.p, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx76, i8 0, i64 48, i1 false)
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %.sroa.5.0..sroa_idx, align 8
  store double 1.000000e+00, ptr %.sroa.563.0..sroa_idx, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.r, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.0..sroa_idx78, i8 0, i64 40, i1 false)
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.s, align 16
  br label %.noexc27

.noexc27:                                         ; preds = %.lr.ph, %.noexc27
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.noexc27 ] ; 3 uses
  %i.ah = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.lr.ph ], [ %i.ay, %.noexc27 ] ; 2 uses
  %i.ai = shl nuw nsw i64 %indvars.iv, 1
  %i.aj = ashr i64 %.sroa.0.0.copyload.i, %i.ai
  %i.ak = and i64 %i.aj, 3
  %i.al = lshr i64 %i.aa, %indvars.iv
  %i.am = and i64 %i.al, 1                        ; 2 uses
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %7, i64 %i.ak
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %i.am
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.am
  %i.aq = load <2 x double>, ptr %i.ap, align 16  ; 2 uses
  %i.ar = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fmul fast <2 x double> %i.aq, %i.ar     ; 2 uses
  %i.at = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.au = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.av = fmul fast <2 x double> %i.at, %i.au     ; 2 uses
  %i.aw = fsub fast <2 x double> %i.as, %i.av
  %i.ax = fadd fast <2 x double> %i.as, %i.av
  %i.ay = shufflevector <2 x double> %i.aw, <2 x double> %i.ax, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.noexc28, label %.noexc27, !llvm.loop !0

.noexc28:                                         ; preds = %.noexc27, %.noexc28
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %.noexc28 ], [ 0, %.noexc27 ] ; 3 uses
  %i.az = phi <2 x double> [ %i.br, %.noexc28 ], [ %i.ay, %.noexc27 ] ; 2 uses
  %i.ba = shl nuw nsw i64 %indvars.iv126, 1
  %i.bb = ashr i64 %.sroa.2.0.copyload.i, %i.ba
  %i.bc = and i64 %i.bb, 3
  %i.bd = or disjoint i64 %indvars.iv126, 32
  %i.be = lshr i64 %i.aa, %i.bd
  %i.bf = and i64 %i.be, 1                        ; 2 uses
  %i.bg = getelementptr inbounds nuw [64 x i8], ptr %7, i64 %i.bc
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bf
  %i.bj = load <2 x double>, ptr %i.bi, align 16  ; 2 uses
  %i.bk = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fmul fast <2 x double> %i.bj, %i.bk     ; 2 uses
  %i.bm = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bn = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bo = fmul fast <2 x double> %i.bm, %i.bn     ; 2 uses
  %i.bp = fsub fast <2 x double> %i.bl, %i.bo     ; 2 uses
  %i.bq = fadd fast <2 x double> %i.bl, %i.bo     ; 2 uses
  %i.br = shufflevector <2 x double> %i.bp, <2 x double> %i.bq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next127, 32
  br i1 %exitcond129.not, label %.noexc19, label %.noexc28, !llvm.loop !1

.noexc19:                                         ; preds = %.noexc28
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.0.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  %i.bt = load <2 x double>, ptr %i.bs, align 8   ; 2 uses
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul fast <2 x double> %i.bu, %i.br
  %i.bw = shufflevector <2 x double> %i.bq, <2 x double> %i.bp, <2 x i32> <i32 1, i32 2>
  %i.bx = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.by = fmul fast <2 x double> %i.bw, %i.bx     ; 2 uses
  %i.bz = fadd fast <2 x double> %i.bv, %i.af     ; 2 uses
  %i.ca = fsub fast <2 x double> %i.bz, %i.by
  %i.cb = fadd fast <2 x double> %i.bz, %i.by
  %i.cc = shufflevector <2 x double> %i.ca, <2 x double> %i.cb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cd = add nuw nsw i64 %.0.i113, 1             ; 2 uses
  %exitcond130.not = icmp eq i64 %i.cd, %i.ad
  br i1 %exitcond130.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

._crit_edge:                                      ; preds = %.noexc19, %bb.c
  %i.ce = phi <2 x double> [ zeroinitializer, %bb.c ], [ %i.cc, %.noexc19 ]
  %i.cf = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.cg = getelementptr inbounds [16 x i8], ptr %i.cf, i64 %.0116
  store <2 x double> %i.ce, ptr %i.cg, align 8
  %i.ch = add nsw i64 %.0116, 1
  %.not.not = icmp slt i64 %.0116, %i.u
  br i1 %.not.not, label %bb.c, label %._crit_edge119

._crit_edge119:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge119, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z47cpu_fullstatediagmatr_setElemsFromMultiDimLists17FullStateDiagMatrPvPii(ptr noundef byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 2 uses
  %i.h = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !44
  store ptr %2, ptr %i.b, align 8, !tbaa !45
  store i32 %3, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !40   ; 3 uses
  store i64 %i.j, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.k = and i64 %i.j, 1
  %.not.i.not2 = icmp eq i64 %i.k, 0
  br i1 %.not.i.not2, label %.lr.ph, label %_Z8logBase2x.exit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i4 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.a ]
  %.04.i3 = phi i64 [ %i.m, %.lr.ph ], [ %i.j, %bb.a ] ; 2 uses
  %i.l = add nuw nsw i32 %.0.i4, 1                ; 2 uses
  %i.m = ashr exact i64 %.04.i3, 1
  %i.n = and i64 %.04.i3, 2
  %.not.i.not = icmp eq i64 %i.n, 0
  br i1 %.not.i.not, label %.lr.ph, label %_Z8logBase2x.exit.loopexit, !llvm.loop !3

_Z8logBase2x.exit.loopexit:                       ; preds = %.lr.ph
  %i.o = zext nneg i32 %i.l to i64
  br label %_Z8logBase2x.exit

_Z8logBase2x.exit:                                ; preds = %_Z8logBase2x.exit.loopexit, %bb.a
  %.0.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.o, %_Z8logBase2x.exit.loopexit ]
  store i64 %.0.i.lcssa, ptr %i.e, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !41
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_Z8logBase2x.exit
  %i.r = tail call noundef i32 @_Z12comm_getRankv()
  br label %bb.c

bb.c:                                             ; preds = %_Z8logBase2x.exit, %bb.b
  %i.s = phi i32 [ %i.r, %bb.b ], [ 0, %_Z8logBase2x.exit ]
  store i32 %i.s, ptr %i.f, align 4, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %.not1 = icmp eq i32 %i.u, 0
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_Z47cpu_fullstatediagmatr_setElemsFromMultiDimLists17FullStateDiagMatrPvPii.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.f, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.h)
  store i32 %i.h, ptr %i.g, align 4, !tbaa !28
  call void @_Z47cpu_fullstatediagmatr_setElemsFromMultiDimLists17FullStateDiagMatrPvPii.omp_outlined(ptr nonnull %i.g, ptr nonnull poison, ptr %i.c, ptr %i.d, ptr %i.f, ptr %i.e, ptr %i.b, ptr %0, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.h)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z47cpu_fullstatediagmatr_setElemsFromMultiDimLists17FullStateDiagMatrPvPii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 3 uses
  %i.g = icmp slt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = shl nuw nsw i64 %i.f, 3
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21
          to label %.noexc20 unwind label %.loopexit.split-lp ; 5 uses

.noexc20:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !25
  %i.k = add nsw i64 %i.f, -1                     ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc20
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !25
  br label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc20, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.9.0 = phi ptr [ %i.j, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc20 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.021.0 = phi ptr [ %i.i, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.i, %.noexc20 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %i.n = load i64, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !28    ; 3 uses
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %i.p = add nsw i64 %i.n, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.p, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %.pre, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.q = load i64, ptr %i.b, align 8, !tbaa !25
  %i.r = call i64 @llvm.smin.i64(i64 %i.q, i64 %i.p) ; 2 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !25
  %i.s = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not26 = icmp sgt i64 %i.s, %i.r
  br i1 %.not26, label %._crit_edge, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 80
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph28, %bb.f
  %.027 = phi i64 [ %i.s, %.lr.ph28 ], [ %i.be, %bb.f ] ; 4 uses
  %i.u = load ptr, ptr %6, align 8, !tbaa !45     ; 3 uses
  %i.v = load i32, ptr %2, align 4, !tbaa !28     ; 5 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader, label %_Z22fast_getSubQuregValuesxPiibPx.exit

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.x = load i32, ptr %4, align 4, !tbaa !28
  %i.y = sext i32 %i.x to i64
  %i.z = load i64, ptr %5, align 8, !tbaa !25
  %i.aa = and i64 %i.z, 4294967295
  %i.ab = shl i64 %i.y, %i.aa
  %i.ac = or i64 %i.ab, %.027                     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ad = icmp eq i32 %i.v, 1
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.024.i24 = phi i64 [ %i.ac, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ] ; 2 uses
end_hunk_0
begin_hunk_1_@_Z26cpu_densmatr_mixQureg_subCd5Quregd:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z26cpu_densmatr_mixQureg_subCd5Quregd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not46 = icmp sgt i64 %i.k, %i.j
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.047 = phi i64 [ %i.k, %.lr.ph ], [ %i.aw, %bb.c ] ; 4 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !29
  %i.p = sext i32 %i.o to i64
  %i.q = load i64, ptr %i.m, align 8, !tbaa !30
  %i.r = and i64 %i.q, 4294967295
  %i.s = shl i64 %i.p, %i.r
  %i.t = or i64 %i.s, %.047                       ; 2 uses
  %i.u = load i64, ptr %4, align 8, !tbaa !25     ; 2 uses
  %i.v = srem i64 %i.t, %i.u
  %i.w = sdiv i64 %i.t, %i.u
  %i.x = load ptr, ptr %5, align 8, !tbaa !69
  %i.y = getelementptr inbounds [16 x i8], ptr %i.x, i64 %.047 ; 2 uses
  %i.z = load double, ptr %6, align 8, !tbaa !71
  %i.aa = load ptr, ptr %8, align 8, !tbaa !69    ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.aa, i64 %i.v
  %i.ac = load double, ptr %7, align 8, !tbaa !71
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.aa, i64 %i.w
  %i.ae = load <2 x double>, ptr %i.y, align 8
  %i.af = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fmul fast <2 x double> %i.ag, %i.ae
  %i.ai = load <2 x double>, ptr %i.ab, align 8
  %i.aj = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul fast <2 x double> %i.ak, %i.ai     ; 2 uses
  %i.am = load <2 x double>, ptr %i.ad, align 8, !tbaa !71 ; 2 uses
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul fast <2 x double> %i.an, %i.al
  %i.ap = fadd fast <2 x double> %i.ao, %i.ah     ; 2 uses
  %i.aq = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ar = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.as = fmul fast <2 x double> %i.aq, %i.ar     ; 2 uses
  %i.at = fadd fast <2 x double> %i.ap, %i.as
  %i.au = fsub fast <2 x double> %i.ap, %i.as
  %i.av = shufflevector <2 x double> %i.at, <2 x double> %i.au, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.av, ptr %i.y, align 8
  %i.aw = add nsw i64 %.047, 1
  %.not.not = icmp slt i64 %.047, %i.n
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_Z38cpu_statevec_setQuregToWeightedSum_subILi0EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  store i64 %i.f, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 0, ptr %i.b, align 4, !tbaa !28
  %i.g = load i32, ptr %0, align 8, !tbaa !27
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z38cpu_statevec_setQuregToWeightedSum_subILi0EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.d)
  store i32 %i.d, ptr %i.c, align 4, !tbaa !28
  call void @_Z38cpu_statevec_setQuregToWeightedSum_subILi0EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined(ptr nonnull %i.c, ptr nonnull poison, ptr %i.a, ptr %i.b, ptr %1, ptr %2, ptr %0) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z38cpu_statevec_setQuregToWeightedSum_subILi0EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not26 = icmp sgt i64 %i.k, %i.j
  br i1 %.not26, label %._crit_edge28, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.m = load i64, ptr %i.b, align 8, !tbaa !25
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.02027 = phi i64 [ %i.k, %.preheader.lr.ph ], [ %i.u, %._crit_edge ] ; 4 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !28     ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = load ptr, ptr %4, align 8, !tbaa !73
  %i.q = load ptr, ptr %5, align 8, !tbaa !75
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.r = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.al, %bb.c ]
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.t = getelementptr inbounds [16 x i8], ptr %i.s, i64 %.02027
  store <2 x double> %i.r, ptr %i.t, align 8
  %i.u = add nsw i64 %.02027, 1
  %.not.not = icmp slt i64 %.02027, %i.m
  br i1 %.not.not, label %.preheader, label %._crit_edge28

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.v = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.al, %bb.c ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.q, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.z, i64 %.02027
  %i.ab = load <2 x double>, ptr %i.w, align 8    ; 2 uses
  %i.ac = load <2 x double>, ptr %i.aa, align 8   ; 2 uses
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fmul fast <2 x double> %i.ad, %i.ab
  %i.af = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = fmul fast <2 x double> %i.af, %i.ag     ; 2 uses
  %i.ai = fadd fast <2 x double> %i.ae, %i.v      ; 2 uses
  %i.aj = fsub fast <2 x double> %i.ai, %i.ah
  %i.ak = fadd fast <2 x double> %i.ai, %i.ah
  %i.al = shufflevector <2 x double> %i.aj, <2 x double> %i.ak, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !970

._crit_edge28:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge28, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_Z38cpu_statevec_setQuregToWeightedSum_subILi1EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  store i64 %i.f, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 1, ptr %i.b, align 4, !tbaa !28
  %i.g = load i32, ptr %0, align 8, !tbaa !27
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z38cpu_statevec_setQuregToWeightedSum_subILi1EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.d)
  store i32 %i.d, ptr %i.c, align 4, !tbaa !28
  call void @_Z38cpu_statevec_setQuregToWeightedSum_subILi1EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined(ptr nonnull %i.c, ptr nonnull poison, ptr %i.a, ptr %i.b, ptr %1, ptr %2, ptr %0) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z38cpu_statevec_setQuregToWeightedSum_subILi1EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not26 = icmp sgt i64 %i.k, %i.j
  br i1 %.not26, label %._crit_edge28, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.m = load i64, ptr %i.b, align 8, !tbaa !25
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.02027 = phi i64 [ %i.k, %.preheader.lr.ph ], [ %i.u, %._crit_edge ] ; 4 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !28     ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = load ptr, ptr %4, align 8, !tbaa !73
  %i.q = load ptr, ptr %5, align 8, !tbaa !75
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.r = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.al, %bb.c ]
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.t = getelementptr inbounds [16 x i8], ptr %i.s, i64 %.02027
  store <2 x double> %i.r, ptr %i.t, align 8
  %i.u = add nsw i64 %.02027, 1
  %.not.not = icmp slt i64 %.02027, %i.m
  br i1 %.not.not, label %.preheader, label %._crit_edge28

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.v = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.al, %bb.c ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.q, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.z, i64 %.02027
  %i.ab = load <2 x double>, ptr %i.w, align 8    ; 2 uses
  %i.ac = load <2 x double>, ptr %i.aa, align 8   ; 2 uses
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fmul fast <2 x double> %i.ad, %i.ab
  %i.af = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = fmul fast <2 x double> %i.af, %i.ag     ; 2 uses
  %i.ai = fadd fast <2 x double> %i.ae, %i.v      ; 2 uses
  %i.aj = fsub fast <2 x double> %i.ai, %i.ah
  %i.ak = fadd fast <2 x double> %i.ai, %i.ah
  %i.al = shufflevector <2 x double> %i.aj, <2 x double> %i.ak, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !971

._crit_edge28:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge28, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_Z38cpu_statevec_setQuregToWeightedSum_subILi2EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  store i64 %i.f, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 2, ptr %i.b, align 4, !tbaa !28
  %i.g = load i32, ptr %0, align 8, !tbaa !27
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z38cpu_statevec_setQuregToWeightedSum_subILi2EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.d)
  store i32 %i.d, ptr %i.c, align 4, !tbaa !28
  call void @_Z38cpu_statevec_setQuregToWeightedSum_subILi2EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined(ptr nonnull %i.c, ptr nonnull poison, ptr %i.a, ptr %i.b, ptr %1, ptr %2, ptr %0) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z38cpu_statevec_setQuregToWeightedSum_subILi2EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not26 = icmp sgt i64 %i.k, %i.j
  br i1 %.not26, label %._crit_edge28, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.m = load i64, ptr %i.b, align 8, !tbaa !25
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.02027 = phi i64 [ %i.k, %.preheader.lr.ph ], [ %i.u, %._crit_edge ] ; 4 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !28     ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = load ptr, ptr %4, align 8, !tbaa !73
  %i.q = load ptr, ptr %5, align 8, !tbaa !75
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.r = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.al, %bb.c ]
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.t = getelementptr inbounds [16 x i8], ptr %i.s, i64 %.02027
  store <2 x double> %i.r, ptr %i.t, align 8
  %i.u = add nsw i64 %.02027, 1
  %.not.not = icmp slt i64 %.02027, %i.m
  br i1 %.not.not, label %.preheader, label %._crit_edge28

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.v = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.al, %bb.c ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.q, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.z, i64 %.02027
  %i.ab = load <2 x double>, ptr %i.w, align 8    ; 2 uses
  %i.ac = load <2 x double>, ptr %i.aa, align 8   ; 2 uses
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fmul fast <2 x double> %i.ad, %i.ab
  %i.af = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = fmul fast <2 x double> %i.af, %i.ag     ; 2 uses
  %i.ai = fadd fast <2 x double> %i.ae, %i.v      ; 2 uses
  %i.aj = fsub fast <2 x double> %i.ai, %i.ah
  %i.ak = fadd fast <2 x double> %i.ai, %i.ah
  %i.al = shufflevector <2 x double> %i.aj, <2 x double> %i.ak, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !972

._crit_edge28:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge28, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_Z38cpu_statevec_setQuregToWeightedSum_subILi3EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  store i64 %i.f, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 3, ptr %i.b, align 4, !tbaa !28
  %i.g = load i32, ptr %0, align 8, !tbaa !27
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z38cpu_statevec_setQuregToWeightedSum_subILi3EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.d)
  store i32 %i.d, ptr %i.c, align 4, !tbaa !28
  call void @_Z38cpu_statevec_setQuregToWeightedSum_subILi3EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined(ptr nonnull %i.c, ptr nonnull poison, ptr %i.a, ptr %i.b, ptr %1, ptr %2, ptr %0) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z38cpu_statevec_setQuregToWeightedSum_subILi3EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not26 = icmp sgt i64 %i.k, %i.j
  br i1 %.not26, label %._crit_edge28, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.m = load i64, ptr %i.b, align 8, !tbaa !25
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.02027 = phi i64 [ %i.k, %.preheader.lr.ph ], [ %i.u, %._crit_edge ] ; 4 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !28     ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = load ptr, ptr %4, align 8, !tbaa !73
  %i.q = load ptr, ptr %5, align 8, !tbaa !75
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.r = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.al, %bb.c ]
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.t = getelementptr inbounds [16 x i8], ptr %i.s, i64 %.02027
  store <2 x double> %i.r, ptr %i.t, align 8
  %i.u = add nsw i64 %.02027, 1
  %.not.not = icmp slt i64 %.02027, %i.m
  br i1 %.not.not, label %.preheader, label %._crit_edge28

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.v = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.al, %bb.c ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.q, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.z, i64 %.02027
  %i.ab = load <2 x double>, ptr %i.w, align 8    ; 2 uses
  %i.ac = load <2 x double>, ptr %i.aa, align 8   ; 2 uses
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fmul fast <2 x double> %i.ad, %i.ab
  %i.af = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = fmul fast <2 x double> %i.af, %i.ag     ; 2 uses
  %i.ai = fadd fast <2 x double> %i.ae, %i.v      ; 2 uses
  %i.aj = fsub fast <2 x double> %i.ai, %i.ah
  %i.ak = fadd fast <2 x double> %i.ai, %i.ah
  %i.al = shufflevector <2 x double> %i.aj, <2 x double> %i.ak, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !973

._crit_edge28:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge28, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_Z38cpu_statevec_setQuregToWeightedSum_subILi4EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  store i64 %i.f, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 4, ptr %i.b, align 4, !tbaa !28
  %i.g = load i32, ptr %0, align 8, !tbaa !27
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z38cpu_statevec_setQuregToWeightedSum_subILi4EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.d)
  store i32 %i.d, ptr %i.c, align 4, !tbaa !28
  call void @_Z38cpu_statevec_setQuregToWeightedSum_subILi4EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined(ptr nonnull %i.c, ptr nonnull poison, ptr %i.a, ptr %i.b, ptr %1, ptr %2, ptr %0) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z38cpu_statevec_setQuregToWeightedSum_subILi4EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not26 = icmp sgt i64 %i.k, %i.j
  br i1 %.not26, label %._crit_edge28, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.m = load i64, ptr %i.b, align 8, !tbaa !25
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.02027 = phi i64 [ %i.k, %.preheader.lr.ph ], [ %i.u, %._crit_edge ] ; 4 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !28     ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = load ptr, ptr %4, align 8, !tbaa !73
  %i.q = load ptr, ptr %5, align 8, !tbaa !75
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.r = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.al, %bb.c ]
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.t = getelementptr inbounds [16 x i8], ptr %i.s, i64 %.02027
  store <2 x double> %i.r, ptr %i.t, align 8
  %i.u = add nsw i64 %.02027, 1
  %.not.not = icmp slt i64 %.02027, %i.m
  br i1 %.not.not, label %.preheader, label %._crit_edge28

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.v = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.al, %bb.c ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.q, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.z, i64 %.02027
  %i.ab = load <2 x double>, ptr %i.w, align 8    ; 2 uses
  %i.ac = load <2 x double>, ptr %i.aa, align 8   ; 2 uses
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fmul fast <2 x double> %i.ad, %i.ab
  %i.af = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = fmul fast <2 x double> %i.af, %i.ag     ; 2 uses
  %i.ai = fadd fast <2 x double> %i.ae, %i.v      ; 2 uses
  %i.aj = fsub fast <2 x double> %i.ai, %i.ah
  %i.ak = fadd fast <2 x double> %i.ai, %i.ah
  %i.al = shufflevector <2 x double> %i.aj, <2 x double> %i.ak, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !974

._crit_edge28:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge28, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_Z38cpu_statevec_setQuregToWeightedSum_subILi5EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  store i64 %i.f, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 5, ptr %i.b, align 4, !tbaa !28
  %i.g = load i32, ptr %0, align 8, !tbaa !27
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z38cpu_statevec_setQuregToWeightedSum_subILi5EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.d)
  store i32 %i.d, ptr %i.c, align 4, !tbaa !28
  call void @_Z38cpu_statevec_setQuregToWeightedSum_subILi5EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined(ptr nonnull %i.c, ptr nonnull poison, ptr %i.a, ptr %i.b, ptr %1, ptr %2, ptr %0) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z38cpu_statevec_setQuregToWeightedSum_subILi5EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not26 = icmp sgt i64 %i.k, %i.j
  br i1 %.not26, label %._crit_edge28, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.m = load i64, ptr %i.b, align 8, !tbaa !25
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.02027 = phi i64 [ %i.k, %.preheader.lr.ph ], [ %i.u, %._crit_edge ] ; 4 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !28     ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = load ptr, ptr %4, align 8, !tbaa !73
  %i.q = load ptr, ptr %5, align 8, !tbaa !75
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.r = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.al, %bb.c ]
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.t = getelementptr inbounds [16 x i8], ptr %i.s, i64 %.02027
  store <2 x double> %i.r, ptr %i.t, align 8
  %i.u = add nsw i64 %.02027, 1
  %.not.not = icmp slt i64 %.02027, %i.m
  br i1 %.not.not, label %.preheader, label %._crit_edge28

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.v = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.al, %bb.c ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.q, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.z, i64 %.02027
  %i.ab = load <2 x double>, ptr %i.w, align 8    ; 2 uses
  %i.ac = load <2 x double>, ptr %i.aa, align 8   ; 2 uses
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fmul fast <2 x double> %i.ad, %i.ab
  %i.af = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = fmul fast <2 x double> %i.af, %i.ag     ; 2 uses
  %i.ai = fadd fast <2 x double> %i.ae, %i.v      ; 2 uses
  %i.aj = fsub fast <2 x double> %i.ai, %i.ah
  %i.ak = fadd fast <2 x double> %i.ai, %i.ah
  %i.al = shufflevector <2 x double> %i.aj, <2 x double> %i.ak, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !975

._crit_edge28:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge28, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_Z38cpu_statevec_setQuregToWeightedSum_subILin1EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE(ptr noundef byval(%struct.Qureg) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  store i64 %i.f, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !976
  %i.i = load ptr, ptr %2, align 8, !tbaa !75
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 104
  %i.n = trunc i64 %i.m to i32
  store i32 %i.n, ptr %i.b, align 4, !tbaa !28
  %i.o = load i32, ptr %0, align 8, !tbaa !27
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z38cpu_statevec_setQuregToWeightedSum_subILin1EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.d)
  store i32 %i.d, ptr %i.c, align 4, !tbaa !28
  call void @_Z38cpu_statevec_setQuregToWeightedSum_subILin1EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined(ptr nonnull %i.c, ptr nonnull poison, ptr %i.a, ptr %i.b, ptr %1, ptr %2, ptr %0) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z38cpu_statevec_setQuregToWeightedSum_subILin1EEv5QuregSt6vectorISt7complexIdESaIS3_EES1_IS0_SaIS0_EE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not26 = icmp sgt i64 %i.k, %i.j
  br i1 %.not26, label %._crit_edge28, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.m = load i64, ptr %i.b, align 8, !tbaa !25
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.02027 = phi i64 [ %i.k, %.preheader.lr.ph ], [ %i.u, %._crit_edge ] ; 4 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !28     ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = load ptr, ptr %4, align 8, !tbaa !73
  %i.q = load ptr, ptr %5, align 8, !tbaa !75
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.r = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.al, %bb.c ]
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.t = getelementptr inbounds [16 x i8], ptr %i.s, i64 %.02027
  store <2 x double> %i.r, ptr %i.t, align 8
  %i.u = add nsw i64 %.02027, 1
  %.not.not = icmp slt i64 %.02027, %i.m
  br i1 %.not.not, label %.preheader, label %._crit_edge28

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.v = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.al, %bb.c ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.q, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.z, i64 %.02027
  %i.ab = load <2 x double>, ptr %i.w, align 8    ; 2 uses
  %i.ac = load <2 x double>, ptr %i.aa, align 8   ; 2 uses
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fmul fast <2 x double> %i.ad, %i.ab
  %i.af = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = fmul fast <2 x double> %i.af, %i.ag     ; 2 uses
  %i.ai = fadd fast <2 x double> %i.ae, %i.v      ; 2 uses
  %i.aj = fsub fast <2 x double> %i.ai, %i.ah
  %i.ak = fadd fast <2 x double> %i.ai, %i.ah
  %i.al = shufflevector <2 x double> %i.aj, <2 x double> %i.ak, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !977

._crit_edge28:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge28, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z35cpu_densmatr_oneQubitDephasing_subA5Quregid(ptr noundef byval(%struct.Qureg) align 8 %0, i32 noundef %1, double noundef nofpclass(nan inf) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24
  %i.i = sdiv i64 %i.h, 4
  store i64 %i.i, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.j = tail call fast noundef nofpclass(nan inf) double @_Z31util_getOneQubitDephasingFactord(double noundef nofpclass(nan inf) %2)
  store double %i.j, ptr %i.c, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.k = tail call noundef i32 @_Z16util_getBraQubiti5Qureg(i32 noundef %1, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  store i32 %i.k, ptr %i.d, align 4, !tbaa !28
  %i.l = load i32, ptr %0, align 8, !tbaa !27
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z35cpu_densmatr_oneQubitDephasing_subA5Quregid.omp_outlined, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %0, ptr nonnull %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.f)
  store i32 %i.f, ptr %i.e, align 4, !tbaa !28
  call void @_Z35cpu_densmatr_oneQubitDephasing_subA5Quregid.omp_outlined(ptr nonnull %i.e, ptr nonnull poison, ptr %i.b, ptr %i.d, ptr %i.a, ptr %0, ptr %i.c) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret void
}

declare noundef nofpclass(nan inf) double @_Z31util_getOneQubitDephasingFactord(double noundef nofpclass(nan inf)) local_unnamed_addr #3

declare noundef i32 @_Z16util_getBraQubiti5Qureg(i32 noundef, ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #3

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z35cpu_densmatr_oneQubitDephasing_subA5Quregid.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not25 = icmp sgt i64 %i.k, %i.j
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.026 = phi i64 [ %i.k, %.lr.ph ], [ %i.bc, %bb.c ] ; 4 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !28     ; 2 uses
  %i.o = load i32, ptr %4, align 4, !tbaa !28     ; 2 uses
  %i.p = zext nneg i32 %i.o to i64                ; 3 uses
  %i.q = ashr i64 %.026, %i.p
  %notmask.i.i22 = shl nsw i64 -1, %i.p
  %i.r = xor i64 %notmask.i.i22, -1
  %i.s = and i64 %.026, %i.r                      ; 2 uses
  %i.t = add nsw i32 %i.o, 1
  %i.u = shl nuw i64 1, %i.p
  %i.v = zext nneg i32 %i.t to i64
  %i.w = shl i64 %i.q, %i.v                       ; 2 uses
  %i.x = or i64 %i.s, %i.u
  %i.y = or i64 %i.x, %i.w                        ; 2 uses
  %i.z = zext nneg i32 %i.n to i64                ; 4 uses
  %i.aa = ashr i64 %i.y, %i.z
  %notmask.i.i = shl nsw i64 -1, %i.z
  %i.ab = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.ac = and i64 %i.y, %i.ab
  %i.ad = add nsw i32 %i.n, 1
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = shl i64 %i.aa, %i.ae
  %i.ag = or i64 %i.af, %i.ac
  %i.ah = or i64 %i.w, %i.s                       ; 2 uses
  %i.ai = ashr i64 %i.ah, %i.z
  %i.aj = and i64 %i.ah, %i.ab
  %i.ak = shl nuw i64 1, %i.z
  %i.al = or i64 %i.aj, %i.ak
  %i.am = shl i64 %i.ai, %i.ae
  %i.an = or i64 %i.al, %i.am
  %i.ao = load double, ptr %6, align 8, !tbaa !71
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.ag ; 2 uses
  %i.ar = load <2 x double>, ptr %i.aq, align 8
  %i.as = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul fast <2 x double> %i.ar, %i.at
  store <2 x double> %i.au, ptr %i.aq, align 8
  %i.av = load double, ptr %6, align 8, !tbaa !71
  %i.aw = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  %i.ay = load <2 x double>, ptr %i.ax, align 8
  %i.az = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fmul fast <2 x double> %i.ay, %i.ba
  store <2 x double> %i.bb, ptr %i.ax, align 8
  %i.bc = add nsw i64 %.026, 1
  %.not.not = icmp slt i64 %.026, %i.m
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z35cpu_densmatr_oneQubitDephasing_subB5Quregid(ptr noundef byval(%struct.Qureg) align 8 %0, i32 noundef %1, double noundef nofpclass(nan inf) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24
  %i.i = sdiv i64 %i.h, 2
  store i64 %i.i, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.j = tail call fast noundef nofpclass(nan inf) double @_Z31util_getOneQubitDephasingFactord(double noundef nofpclass(nan inf) %2)
  store double %i.j, ptr %i.c, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.k = tail call noundef i32 @_Z25util_getRankBitOfBraQubiti5Qureg(i32 noundef %1, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  store i32 %i.k, ptr %i.d, align 4, !tbaa !28
  %i.l = load i32, ptr %0, align 8, !tbaa !27
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z35cpu_densmatr_oneQubitDephasing_subB5Quregid.omp_outlined, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.d, ptr nonnull %0, ptr nonnull %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.f)
  store i32 %i.f, ptr %i.e, align 4, !tbaa !28
  call void @_Z35cpu_densmatr_oneQubitDephasing_subB5Quregid.omp_outlined(ptr nonnull %i.e, ptr nonnull poison, ptr %i.b, ptr %i.a, ptr %i.d, ptr %0, ptr %i.c) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.f)
  br label %bb.d

end_hunk_1

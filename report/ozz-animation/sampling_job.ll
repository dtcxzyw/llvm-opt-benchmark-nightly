Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/sampling_job?download=true
inline.NumInlined: 276
inline.NumDeleted: 92
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK3ozz9animation11SamplingJob3RunEv:bb.a
  %i.azg = getelementptr inbounds nuw i8, ptr %i.axi, i64 64
  %i.azh = load <4 x float>, ptr %i.azg, align 16, !tbaa !56, !noalias !110 ; 2 uses
  %i.azi = fsub <4 x float> %i.azf, %i.azh
  %i.azj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.azi, <4 x float> %i.axp, <4 x float> %i.azh) ; 3 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %i.axi, i64 144
  %i.azl = load <4 x float>, ptr %i.azk, align 16, !tbaa !56, !noalias !110
  %i.azm = getelementptr inbounds nuw i8, ptr %i.axi, i64 80
  %i.azn = load <4 x float>, ptr %i.azm, align 16, !tbaa !56, !noalias !110 ; 2 uses
  %i.azo = fsub <4 x float> %i.azl, %i.azn
  %i.azp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.azo, <4 x float> %i.axp, <4 x float> %i.azn) ; 3 uses
  %i.azq = fmul <4 x float> %i.azd, %i.azd
  %i.azr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ayx, <4 x float> %i.ayx, <4 x float> %i.azq)
  %i.azs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.azj, <4 x float> %i.azj, <4 x float> %i.azr)
  %i.azt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.azp, <4 x float> %i.azp, <4 x float> %i.azs) ; 2 uses
  %i.azu = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> %i.azt) ; 3 uses
  %i.azv = fmul <4 x float> %i.azu, splat (float 5.000000e-01)
  %i.azw = fmul <4 x float> %i.azu, %i.azt
  %i.azx = fmul <4 x float> %i.azu, %i.azw
  %i.azy = fsub <4 x float> splat (float 3.000000e+00), %i.azx
  %i.azz = fmul <4 x float> %i.azv, %i.azy        ; 4 uses
  %i.baa = fmul <4 x float> %i.ayx, %i.azz
  %i.bab = fmul <4 x float> %i.azd, %i.azz
  %i.bac = fmul <4 x float> %i.azj, %i.azz
  %i.bad = fmul <4 x float> %i.azp, %i.azz
  %i.bae = load ptr, ptr %i.awp, align 8, !tbaa !109
  %i.baf = getelementptr inbounds nuw [160 x i8], ptr %i.bae, i64 %.011.i ; 4 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 48
  store <4 x float> %i.baa, ptr %i.bag, align 16, !tbaa !56
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.baf, i64 64
  store <4 x float> %i.bab, ptr %.sroa.46.0..sroa_idx.i, align 16, !tbaa !56
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.baf, i64 80
  store <4 x float> %i.bac, ptr %.sroa.57.0..sroa_idx.i, align 16, !tbaa !56
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.baf, i64 96
  store <4 x float> %i.bad, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !56
  %i.bah = getelementptr inbounds nuw i8, ptr %i.axq, i64 32
  %i.bai = getelementptr inbounds nuw i8, ptr %i.axq, i64 80
  %i.baj = load <4 x float>, ptr %i.bai, align 16, !tbaa !56, !noalias !111
  %i.bak = load <4 x float>, ptr %i.bah, align 16, !tbaa !56, !noalias !111 ; 2 uses
  %i.bal = fsub <4 x float> %i.baj, %i.bak
  %i.bam = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bal, <4 x float> %i.axx, <4 x float> %i.bak)
  %i.ban = getelementptr inbounds nuw i8, ptr %i.axq, i64 96
  %i.bao = load <4 x float>, ptr %i.ban, align 16, !tbaa !56, !noalias !111
  %i.bap = getelementptr inbounds nuw i8, ptr %i.axq, i64 48
  %i.baq = load <4 x float>, ptr %i.bap, align 16, !tbaa !56, !noalias !111 ; 2 uses
  %i.bar = fsub <4 x float> %i.bao, %i.baq
  %i.bas = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bar, <4 x float> %i.axx, <4 x float> %i.baq)
  %i.bat = getelementptr inbounds nuw i8, ptr %i.axq, i64 112
  %i.bau = load <4 x float>, ptr %i.bat, align 16, !tbaa !56, !noalias !111
  %i.bav = getelementptr inbounds nuw i8, ptr %i.axq, i64 64
  %i.baw = load <4 x float>, ptr %i.bav, align 16, !tbaa !56, !noalias !111 ; 2 uses
  %i.bax = fsub <4 x float> %i.bau, %i.baw
  %i.bay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bax, <4 x float> %i.axx, <4 x float> %i.baw)
  %i.baz = load ptr, ptr %i.awp, align 8, !tbaa !109
  %i.bba = getelementptr inbounds nuw [160 x i8], ptr %i.baz, i64 %.011.i ; 3 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bba, i64 112
  store <4 x float> %i.bam, ptr %i.bbb, align 16, !tbaa !56
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bba, i64 128
  store <4 x float> %i.bas, ptr %.sroa.4.0..sroa_idx.i, align 16, !tbaa !56
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bba, i64 144
  store <4 x float> %i.bay, ptr %.sroa.5.0..sroa_idx.i, align 16, !tbaa !56
  %i.bbc = add nuw i64 %.011.i, 1                 ; 2 uses
  %exitcond.not.i146 = icmp eq i64 %i.bbc, %i.awr
  br i1 %exitcond.not.i146, label %_ZN3ozz9animation12_GLOBAL__N_112InterpolatesEfmRKNS_4spanIKNS0_8internal15InterpSoaFloat3EEERKNS2_IKNS3_19InterpSoaQuaternionEEES8_RKNS2_INS_4math12SoaTransformEEE.exit, label %.lr.ph.i145, !llvm.loop !90

_ZN3ozz9animation12_GLOBAL__N_112InterpolatesEfmRKNS_4spanIKNS0_8internal15InterpSoaFloat3EEERKNS2_IKNS3_19InterpSoaQuaternionEEES8_RKNS2_INS_4math12SoaTransformEEE.exit: ; preds = %.lr.ph.i145, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %_ZNK3ozz9animation11SamplingJob8ValidateEv.exit.thread

_ZNK3ozz9animation11SamplingJob8ValidateEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3ozz9animation12_GLOBAL__N_112InterpolatesEfmRKNS_4spanIKNS0_8internal15InterpSoaFloat3EEERKNS2_IKNS3_19InterpSoaQuaternionEEES8_RKNS2_INS_4math12SoaTransformEEE.exit, %bb.c, %_ZNK3ozz9animation11SamplingJob8ValidateEv.exit
  %.0.i191 = phi i1 [ false, %_ZNK3ozz9animation11SamplingJob8ValidateEv.exit ], [ true, %_ZN3ozz9animation12_GLOBAL__N_112InterpolatesEfmRKNS_4spanIKNS0_8internal15InterpSoaFloat3EEERKNS2_IKNS3_19InterpSoaQuaternionEEES8_RKNS2_INS_4math12SoaTransformEEE.exit ], [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i191
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef float @_ZN3ozz9animation11SamplingJob7Context4StepERKNS0_9AnimationEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, float noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42
  %.not = icmp eq ptr %i.a, %1
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !43
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.d, align 8, !tbaa !46
  store ptr %1, ptr %0, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.e = phi float [ %.pre, %._crit_edge ], [ 0.000000e+00, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %i.f, align 8, !tbaa !43
  ret float %i.e
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3ozz9animation12_GLOBAL__N_111UpdateCacheEffmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERNS0_11SamplingJob7Context5CacheE(float noundef %0, float noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2, ptr nofree readonly captures(none) %.0.val, i64 %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %"struct.ozz::span.9", align 8      ; 5 uses
  %6 = alloca %"struct.ozz::span.3", align 8      ; 6 uses
  %.tr = trunc nsw i64 %2 to i32                  ; 2 uses
  %i.a = shl i32 %.tr, 2                          ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !123  ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !124  ; 4 uses
  %i.h = fsub float %0, %1                        ; 2 uses
  %i.i = icmp eq i32 %i.g, 0                      ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef float @llvm.fabs.f32(float %i.h)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.l = load float, ptr %i.k, align 8, !tbaa !55
  %i.m = fmul float %i.l, 5.000000e-01
  %i.n = fcmp ogt float %i.j, %i.m
  br i1 %i.n, label %bb.c, label %.thread3

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !125
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = fcmp olt float %i.h, 0.000000e+00
  %or.cond = or i1 %i.s, %i.i
  br i1 %or.cond, label %.thread5, label %.thread3

.thread5:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.t = zext i32 %i.a to i64
  %i.u = load ptr, ptr %4, align 8, !tbaa !49
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.w = load float, ptr %i.v, align 8, !tbaa !55
  %i.x = fdiv float %0, %i.w
  %i.y = fadd float %i.x, 5.000000e-01
  %i.z = fptosi float %i.y to i32                 ; 3 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.f, label %.thread3

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.ab = zext i32 %i.a to i64                    ; 2 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  store ptr %i.ac, ptr %6, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ab, ptr %i.ad, align 8
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = shl nuw i32 %i.z, 1
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !58
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !127
  %i.ao = sub i64 %i.an, %i.ak
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !128
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ak
  store ptr %i.aq, ptr %5, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ao, ptr %i.ar, align 8
  %i.as = call { ptr, i64 } @_ZN3ozz15DecodeGV4StreamERKNS_4spanIKhEERKNS0_IjEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.af
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !58
  %i.ax = add i32 %i.aw, 1
  br label %_ZN3ozz9animation12_GLOBAL__N_115InitializeCacheERKNS0_9Animation14TKeyframesCtrlILb1EEEmRKNS_4spanIjEE.exit

bb.h:                                             ; preds = %.thread5, %bb.f
  %i.ay = phi ptr [ %i.u, %.thread5 ], [ %i.ac, %bb.f ] ; 3 uses
  %i.az = phi i64 [ %i.t, %.thread5 ], [ %i.ab, %bb.f ] ; 8 uses
  %.not24.i = icmp eq i32 %i.a, 0
  br i1 %.not24.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp samesign ult i64 %i.az, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check36 = icmp samesign ult i64 %i.az, 32
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.az, 24
  %n.vec = and i64 %i.az, 4294967264              ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i32> splat (i32 8), %broadcast.splat
  %invariant.op57 = add <8 x i32> splat (i32 16), %broadcast.splat
  %invariant.op59 = add <8 x i32> splat (i32 24), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.bb = add <8 x i32> %broadcast.splat, %vec.ind
  %.reass = add <8 x i32> %vec.ind, %invariant.op
  %.reass58 = add <8 x i32> %vec.ind, %invariant.op57
  %.reass60 = add <8 x i32> %vec.ind, %invariant.op59
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  store <8 x i32> %i.bb, ptr %i.bc, align 4, !tbaa !58
  store <8 x i32> %.reass, ptr %i.bd, align 4, !tbaa !58
  store <8 x i32> %.reass58, ptr %i.be, align 4, !tbaa !58
  store <8 x i32> %.reass60, ptr %i.bf, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !131

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec37 = and i64 %i.az, 4294967288            ; 3 uses
  %broadcast.splatinsert38 = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat39 = shufflevector <8 x i32> %broadcast.splatinsert38, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bh = trunc nuw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert40 = insertelement <8 x i32> poison, i32 %i.bh, i64 0
  %broadcast.splat41 = shufflevector <8 x i32> %broadcast.splatinsert40, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat41, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind43 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next45, %vec.epilog.vector.body ] ; 2 uses
  %7 = add <8 x i32> %broadcast.splat39, %vec.ind43
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index42
  store <8 x i32> %7, ptr %i.bi, align 4, !tbaa !58
  %index.next44 = add nuw i64 %index42, 8         ; 2 uses
  %vec.ind.next45 = add <8 x i32> %vec.ind43, splat (i32 8)
  %i.bj = icmp eq i64 %index.next44, %n.vec37
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !113

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %i.az, %n.vec37
  br i1 %cmp.n46, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.h
  %i.bk = shl i32 %.tr, 3
  br label %_ZN3ozz9animation12_GLOBAL__N_115InitializeCacheERKNS0_9Animation14TKeyframesCtrlILb1EEEmRKNS_4spanIjEE.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bl = trunc nuw i64 %indvars.iv.i to i32
  %i.bm = add i32 %i.a, %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !58
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.az
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !114

_ZN3ozz9animation12_GLOBAL__N_115InitializeCacheERKNS0_9Animation14TKeyframesCtrlILb1EEEmRKNS_4spanIjEE.exit: ; preds = %bb.g, %._crit_edge.i
  %.020.i = phi i32 [ %i.ax, %bb.g ], [ %i.bk, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.bp = add nsw i64 %2, 7                       ; 2 uses
  %i.bq = lshr i64 %i.bp, 3                       ; 2 uses
  %i.br = add nsw i64 %i.bq, -1                   ; 4 uses
  %.not.i76 = icmp eq i64 %i.br, 0
  br i1 %.not.i76, label %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit, label %.lr.ph.i77.preheader

.lr.ph.i77.preheader:                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_115InitializeCacheERKNS0_9Animation14TKeyframesCtrlILb1EEEmRKNS_4spanIjEE.exit
  %i.bs = add nsw i64 %i.bq, -2
  %xtraiter = and i64 %i.br, 3                    ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 3
  br i1 %i.bt, label %.lr.ph.i77.epil.preheader, label %.lr.ph.i77.preheader.new

.lr.ph.i77.preheader.new:                         ; preds = %.lr.ph.i77.preheader
  %unroll_iter = and i64 %i.br, -4
  br label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %.lr.ph.i77, %.lr.ph.i77.preheader.new
  %.09.i = phi i64 [ 0, %.lr.ph.i77.preheader.new ], [ %i.cf, %.lr.ph.i77 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i77.preheader.new ], [ %niter.next.3, %.lr.ph.i77 ]
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !47
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.09.i
  store i8 -1, ptr %i.bv, align 1, !tbaa !56
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.09.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store i8 -1, ptr %i.by, align 1, !tbaa !56
  %i.bz = load ptr, ptr %i.bo, align 8, !tbaa !47
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.09.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store i8 -1, ptr %i.cb, align 1, !tbaa !56
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !47
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.09.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  store i8 -1, ptr %i.ce, align 1, !tbaa !56
  %i.cf = add nuw i64 %.09.i, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit.loopexit.unr-lcssa, label %.lr.ph.i77, !llvm.loop !115

_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i77
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit, label %.lr.ph.i77.epil.preheader

.lr.ph.i77.epil.preheader:                        ; preds = %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit.loopexit.unr-lcssa, %.lr.ph.i77.preheader
  %.09.i.epil.init = phi i64 [ 0, %.lr.ph.i77.preheader ], [ %i.cf, %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph.i77.epil

.lr.ph.i77.epil:                                  ; preds = %.lr.ph.i77.epil, %.lr.ph.i77.epil.preheader
  %.09.i.epil = phi i64 [ %i.ci, %.lr.ph.i77.epil ], [ %.09.i.epil.init, %.lr.ph.i77.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i77.epil ], [ 0, %.lr.ph.i77.epil.preheader ]
  %i.cg = load ptr, ptr %i.bo, align 8, !tbaa !47
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.09.i.epil
  store i8 -1, ptr %i.ch, align 1, !tbaa !56
  %i.ci = add nuw i64 %.09.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit, label %.lr.ph.i77.epil, !llvm.loop !116

_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit: ; preds = %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit.loopexit.unr-lcssa, %.lr.ph.i77.epil, %_ZN3ozz9animation12_GLOBAL__N_115InitializeCacheERKNS0_9Animation14TKeyframesCtrlILb1EEEmRKNS_4spanIjEE.exit
  %i.cj = and i64 %i.bp, 4294967288
  %i.ck = sub nsw i64 %i.cj, %2
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = lshr i32 255, %i.cl
  %i.cn = trunc nuw i32 %i.cm to i8
  %i.co = load ptr, ptr %i.bo, align 8, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.br
  store i8 %i.cn, ptr %i.cp, align 1, !tbaa !56
  br label %.thread3

.thread3:                                         ; preds = %bb.d, %bb.e, %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit, %bb.b
  %.1 = phi i32 [ %i.g, %bb.b ], [ %.020.i, %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit ], [ %i.g, %bb.e ], [ %i.g, %bb.d ] ; 3 uses
  %i.cq = icmp ult i32 %.1, %i.e
  br i1 %i.cq, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.thread3
  %.not.i80 = icmp ugt i64 %.8.val, 255
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cs = zext i32 %.1 to i64
  %wide.trip.count = and i64 %i.d, 4294967295
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN3ozz9animation12_GLOBAL__N_112TrackForwardENS_4spanIKjEERKNS2_IKtEEjjj.exit
  %indvars.iv = phi i64 [ %i.cs, %.lr.ph ], [ %indvars.iv.next, %_ZN3ozz9animation12_GLOBAL__N_112TrackForwardENS_4spanIKjEERKNS2_IKtEEjjj.exit ] ; 3 uses
  %.06511 = phi i32 [ 0, %.lr.ph ], [ %.1.i, %_ZN3ozz9animation12_GLOBAL__N_112TrackForwardENS_4spanIKjEERKNS2_IKtEEjjj.exit ] ; 3 uses
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !60
  %i.cw = zext i16 %i.cv to i32
  %i.cx = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.cy = sub i32 %i.cx, %i.cw                    ; 3 uses
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %.val73 = load ptr, ptr %3, align 8             ; 2 uses
  br i1 %.not.i80, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %.val73, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !56
  %i.dc = zext i8 %i.db to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_18KeyRatioERKNS_4spanIKfEERKNS2_IKhEEm.exit

bb.k:                                             ; preds = %bb.i
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.val73, i64 %i.cz
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !60
  %i.df = zext i16 %i.de to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_18KeyRatioERKNS_4spanIKfEERKNS2_IKhEEm.exit

_ZN3ozz9animation12_GLOBAL__N_18KeyRatioERKNS_4spanIKfEERKNS2_IKhEEm.exit: ; preds = %bb.j, %bb.k
  %.pn.i = phi i64 [ %i.dc, %bb.j ], [ %i.df, %bb.k ]
  %.0.in.i = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %.pn.i
  %.0.i = load float, ptr %.0.in.i, align 4, !tbaa !61
  %i.dg = fcmp ugt float %.0.i, %0
  br i1 %i.dg, label %.critedge, label %bb.l

bb.l:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_18KeyRatioERKNS_4spanIKfEERKNS2_IKhEEm.exit
  %i.dh = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %.not4.i = icmp ult i32 %.06511, %i.a
  br i1 %.not4.i, label %.lr.ph.preheader.i, label %.critedge.i.preheader

.lr.ph.preheader.i:                               ; preds = %bb.l
  %i.di = zext i32 %.06511 to i64
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.m, %.lr.ph.preheader.i
  %indvars.iv.i85 = phi i64 [ %i.di, %.lr.ph.preheader.i ], [ %indvars.iv.next.i86, %bb.m ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i85
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !58
  %i.dl = icmp eq i32 %i.dk, %i.cy
  br i1 %i.dl, label %.loopexit.loopexit6.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i84
  %indvars.iv.next.i86 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i86 to i32
  %exitcond.not.i87 = icmp eq i32 %i.a, %lftr.wideiv.i
  br i1 %exitcond.not.i87, label %.critedge.i.preheader, label %.lr.ph.i84, !llvm.loop !117

.critedge.i.preheader:                            ; preds = %bb.m, %bb.l
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.preheader, %.critedge.i
  %.0.i83 = phi i32 [ %i.dq, %.critedge.i ], [ 0, %.critedge.i.preheader ] ; 3 uses
  %i.dm = zext i32 %.0.i83 to i64                 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !58
  %i.dp = icmp eq i32 %i.do, %i.cy
  %i.dq = add i32 %.0.i83, 1
  br i1 %i.dp, label %_ZN3ozz9animation12_GLOBAL__N_112TrackForwardENS_4spanIKjEERKNS2_IKtEEjjj.exit, label %.critedge.i, !llvm.loop !118

.loopexit.loopexit6.i:                            ; preds = %.lr.ph.i84
  %i.dr = trunc nuw i64 %indvars.iv.i85 to i32
  br label %_ZN3ozz9animation12_GLOBAL__N_112TrackForwardENS_4spanIKjEERKNS2_IKtEEjjj.exit

_ZN3ozz9animation12_GLOBAL__N_112TrackForwardENS_4spanIKjEERKNS2_IKtEEjjj.exit: ; preds = %.critedge.i, %.loopexit.loopexit6.i
  %.pre-phi20 = phi i64 [ %indvars.iv.i85, %.loopexit.loopexit6.i ], [ %i.dm, %.critedge.i ]
  %.1.i = phi i32 [ %i.dr, %.loopexit.loopexit6.i ], [ %.0.i83, %.critedge.i ] ; 4 uses
  %i.ds = lshr i32 %.1.i, 2
  %i.dt = and i32 %i.ds, 7
  %i.du = shl nuw nsw i32 1, %i.dt
  %i.dv = lshr i32 %.1.i, 5
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = load ptr, ptr %i.cr, align 8, !tbaa !47
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !56
  %i.ea = trunc nuw i32 %i.du to i8
  %i.eb = or i8 %i.dz, %i.ea
  store i8 %i.eb, ptr %i.dy, align 1, !tbaa !56
  %i.ec = load ptr, ptr %4, align 8, !tbaa !49
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.pre-phi20
  store i32 %i.cx, ptr %i.ed, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3ozz9animation11SamplingJob7Context10DeallocateEv:bb.a

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

declare noundef ptr @_ZN3ozz6memory17default_allocatorEv() local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

declare { ptr, i64 } @_ZN3ozz15DecodeGV4StreamERKNS_4spanIKhEERKNS0_IjEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rcp.ps(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN3ozz9animation9AnimationE", !10, i64 0}
!12 = !{!"p1 _ZTSN3ozz9animation11SamplingJob7ContextE", !10, i64 0}
!13 = !{!"p1 _ZTSN3ozz4math12SoaTransformE", !10, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSN3ozz4spanINS_4math12SoaTransformEEE", !13, i64 0, !14, i64 8}
!16 = !{!"_ZTSN3ozz9animation11SamplingJobE", !9, i64 0, !11, i64 8, !12, i64 16, !15, i64 24}
!17 = !{!16, !11, i64 8}
!18 = !{!16, !12, i64 16}
!19 = !{!15, !14, i64 8}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"p1 float", !10, i64 0}
!22 = !{!"_ZTSN3ozz4spanIfEE", !21, i64 0, !14, i64 8}
!23 = !{!"_ZTSN3ozz4spanIhEE", !20, i64 0, !14, i64 8}
!24 = !{!"p1 short", !10, i64 0}
!25 = !{!"_ZTSN3ozz4spanItEE", !24, i64 0, !14, i64 8}
!26 = !{!"p1 int", !10, i64 0}
!27 = !{!"_ZTSN3ozz4spanIjEE", !26, i64 0, !14, i64 8}
!28 = !{!"_ZTSN3ozz9animation9Animation14TKeyframesCtrlILb0EEE", !23, i64 0, !25, i64 16, !23, i64 32, !27, i64 48, !9, i64 64}
!29 = !{!"p1 _ZTSN3ozz9animation8internal9Float3KeyE", !10, i64 0}
!30 = !{!"_ZTSN3ozz4spanINS_9animation8internal9Float3KeyEEE", !29, i64 0, !14, i64 8}
!31 = !{!"p1 _ZTSN3ozz9animation8internal13QuaternionKeyE", !10, i64 0}
!32 = !{!"_ZTSN3ozz4spanINS_9animation8internal13QuaternionKeyEEE", !31, i64 0, !14, i64 8}
!33 = !{!"_ZTSN3ozz9animation9AnimationE", !9, i64 0, !6, i64 4, !10, i64 8, !20, i64 16, !22, i64 24, !28, i64 40, !28, i64 112, !28, i64 184, !30, i64 256, !32, i64 272, !30, i64 288}
!34 = !{!33, !6, i64 4}
!35 = !{!"_ZTSN3ozz9animation11SamplingJob7Context5CacheE", !27, i64 0, !23, i64 16, !6, i64 32}
!36 = !{!"p1 _ZTSN3ozz9animation8internal15InterpSoaFloat3E", !10, i64 0}
!37 = !{!"_ZTSN3ozz4spanINS_9animation8internal15InterpSoaFloat3EEE", !36, i64 0, !14, i64 8}
!38 = !{!"p1 _ZTSN3ozz9animation8internal19InterpSoaQuaternionE", !10, i64 0}
!39 = !{!"_ZTSN3ozz4spanINS_9animation8internal19InterpSoaQuaternionEEE", !38, i64 0, !14, i64 8}
!40 = !{!"_ZTSN3ozz9animation11SamplingJob7ContextE", !11, i64 0, !9, i64 8, !6, i64 12, !10, i64 16, !35, i64 24, !35, i64 64, !35, i64 104, !37, i64 144, !39, i64 160, !37, i64 176}
!41 = !{!40, !6, i64 12}
!42 = !{!40, !11, i64 0}
!43 = !{!40, !9, i64 8}
!44 = !{!40, !6, i64 56}
!45 = !{!40, !6, i64 96}
!46 = !{!40, !6, i64 136}
!47 = !{!23, !20, i64 0}
!48 = !{!23, !14, i64 8}
!49 = !{!27, !26, i64 0}
!50 = !{!27, !14, i64 8}
!51 = !{!"_ZTSN3ozz4spanIKhEE", !20, i64 0, !14, i64 8}
!52 = !{!"_ZTSN3ozz4spanIKtEE", !24, i64 0, !14, i64 8}
!53 = !{!"_ZTSN3ozz4spanIKjEE", !26, i64 0, !14, i64 8}
!54 = !{!"_ZTSN3ozz9animation9Animation14TKeyframesCtrlILb1EEE", !51, i64 0, !52, i64 16, !51, i64 32, !53, i64 48, !9, i64 64}
!55 = !{!54, !9, i64 64}
!56 = !{!5, !5, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!6, !6, i64 0}
!59 = !{!"short", !5, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!9, !9, i64 0}
!62 = !{!37, !36, i64 0}
!63 = !{!39, !38, i64 0}
!64 = !{!40, !10, i64 16}
!65 = !{!"vtable pointer", !4, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{ptr @_ZN3ozz9animation11SamplingJob7Context10DeallocateEv}
!68 = distinct !{!68, !"_ZNK3ozz9animation9Animation17translations_ctrlEv"}
!69 = distinct !{!69, !68, !"_ZNK3ozz9animation9Animation17translations_ctrlEv: argument 0"}
!70 = distinct !{!70, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv"}
!71 = distinct !{!71, !70, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv: argument 0"}
!72 = distinct !{!72, !57}
!73 = distinct !{!73, !57}
!74 = distinct !{!74, !"_ZNK3ozz9animation9Animation14rotations_ctrlEv"}
!75 = distinct !{!75, !74, !"_ZNK3ozz9animation9Animation14rotations_ctrlEv: argument 0"}
!76 = distinct !{!76, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv"}
!77 = distinct !{!77, !76, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv: argument 0"}
!78 = distinct !{!78, !57}
!79 = distinct !{!79, !57}
!80 = distinct !{!80, !"_ZNK3ozz9animation9Animation11scales_ctrlEv"}
!81 = distinct !{!81, !80, !"_ZNK3ozz9animation9Animation11scales_ctrlEv: argument 0"}
!82 = distinct !{!82, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv"}
!83 = distinct !{!83, !82, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv: argument 0"}
!84 = distinct !{!84, !"_ZN3ozz4math4LerpERKNS0_9SoaFloat3ES3_Dv4_f"}
!85 = distinct !{!85, !84, !"_ZN3ozz4math4LerpERKNS0_9SoaFloat3ES3_Dv4_f: argument 0"}
!86 = distinct !{!86, !"_ZN3ozz4math8NLerpEstERKNS0_13SoaQuaternionES3_Dv4_f"}
!87 = distinct !{!87, !86, !"_ZN3ozz4math8NLerpEstERKNS0_13SoaQuaternionES3_Dv4_f: argument 0"}
!88 = distinct !{!88, !"_ZN3ozz4math4LerpERKNS0_9SoaFloat3ES3_Dv4_f"}
!89 = distinct !{!89, !88, !"_ZN3ozz4math4LerpERKNS0_9SoaFloat3ES3_Dv4_f: argument 0"}
!90 = distinct !{!90, !57}
!91 = !{!16, !9, i64 0}
!92 = !{!69}
!93 = !{!71}
!94 = !{!71, !69}
!95 = !{!25, !24, i64 0}
!96 = !{!25, !14, i64 8}
!97 = !{!28, !9, i64 64}
!98 = !{!22, !21, i64 0}
!99 = !{!22, !14, i64 8}
!100 = !{!30, !29, i64 0}
!101 = !{!75}
!102 = !{!77}
!103 = !{!77, !75}
!104 = !{!32, !31, i64 0}
!105 = !{!81}
!106 = !{!83}
!107 = !{!83, !81}
!108 = !{!85}
!109 = !{!15, !13, i64 0}
!110 = !{!87}
!111 = !{!89}
!112 = distinct !{!112, !57, !129, !130}
!113 = distinct !{!113, !57, !129, !130}
!114 = distinct !{!114, !57, !130, !129}
!115 = distinct !{!115, !57}
!116 = distinct !{!116, !132}
!117 = distinct !{!117, !57}
!118 = distinct !{!118, !57}
!119 = distinct !{!119, !57}
!120 = distinct !{!120, !57}
!121 = distinct !{!121, !57}
!122 = distinct !{!122, !57}
!123 = !{!52, !14, i64 8}
!124 = !{!35, !6, i64 32}
!125 = !{!53, !14, i64 8}
!126 = !{!53, !26, i64 0}
!127 = !{!51, !14, i64 8}
!128 = !{!51, !20, i64 0}
!129 = !{!"llvm.loop.isvectorized", i32 1}
!130 = !{!"llvm.loop.unroll.runtime.disable"}
!131 = !{!"branch_weights", i32 8, i32 24}
!132 = !{!"llvm.loop.unroll.disable"}
!133 = !{!52, !24, i64 0}
!134 = !{!37, !14, i64 8}
!135 = !{!39, !14, i64 8}
end_hunk_1

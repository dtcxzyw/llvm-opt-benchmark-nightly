Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_lowlevel_ivf?download=true
inline.NumInlined: 1639
inline.NumDeleted: 784
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN30TestLowLevelIVF_IVFBinary_Test8TestBodyEv:bb.a
  br i1 %.not.i.i.i, label %common.resume.i, label %common.resume.sink.split.i

common.resume.sink.split.i:                       ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit273.i, %bb.y, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i, %.body.i.i, %.body.thread.i.i
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.aa, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt6vectorIhSaIhEED2Ev.exit273.i ], [ %i.df, %bb.y ], [ %i.o, %.body.thread.i.i ], [ %.pn.i.i, %.body.i.i ]
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.c) #19, !inline_history !154
  br label %common.resume.i

common.resume.i:                                  ; preds = %common.resume.sink.split.i, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

_ZN12_GLOBAL__N_125make_trained_index_binaryEPKc.exit.i: ; preds = %bb.c
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 160000) #20, !noalias !187
  %i.s = call ptr @__dynamic_cast(ptr nonnull %i.c, ptr nonnull @_ZTIN5faiss11IndexBinaryE, ptr nonnull @_ZTIN5faiss14IndexBinaryIVFE, i64 0) #19 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  store i64 4, ptr %i.t, align 8, !tbaa !192
  %i.u = invoke noalias noundef nonnull dereferenceable(32000) ptr @_Znwm(i64 noundef 32000) #21
          to label %.noexc.i unwind label %bb.y   ; 8 uses

.noexc.i:                                         ; preds = %_ZN12_GLOBAL__N_125make_trained_index_binaryEPKc.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32000) %i.u, i8 0, i64 32000, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !193
  store i32 0, ptr %6, align 4, !tbaa !24, !noalias !193
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 2147483647, ptr %i.v, align 4, !tbaa !25, !noalias !193
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i.i, %.noexc.i
  %.012.i.i = phi i64 [ 0, %.noexc.i ], [ %i.z, %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i.i ] ; 2 uses
  %i.w = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(5000) @_ZN12_GLOBAL__N_13rngE, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i.i unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i, !noalias !193

_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i.i: ; preds = %bb.e
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %.012.i.i
  store i8 %i.x, ptr %i.y, align 1, !tbaa !26, !noalias !193
  %i.z = add nuw nsw i64 %.012.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.z, 32000
  br i1 %exitcond.not.i.i, label %bb.f, label %bb.e, !llvm.loop !153

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i:                ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !193
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 32000) #20, !noalias !193
  br label %common.resume.sink.split.i

bb.f:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !193
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 1000, ptr noundef nonnull %i.u)
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.ae = invoke noalias noundef nonnull dereferenceable(8000) ptr @_Znwm(i64 noundef 8000) #21
          to label %bb.h unwind label %bb.aa      ; 4 uses

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 160 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8000) %i.ae, i8 0, i64 8000, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !194
  invoke void @_ZNK5faiss11IndexBinary6assignElPKhPll(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 noundef 1000, ptr noundef nonnull %i.u, ptr noundef nonnull %i.ae, i64 noundef 1)
          to label %bb.i unwind label %bb.ab

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !195 ; 15 uses
  %i.aj = invoke noalias noundef nonnull dereferenceable(6400) ptr @_Znwm(i64 noundef 6400) #21
          to label %.noexc136.i unwind label %bb.ac ; 8 uses

.noexc136.i:                                      ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6400) %i.aj, i8 0, i64 6400, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !196
  store i32 0, ptr %5, align 4, !tbaa !24, !noalias !196
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 2147483647, ptr %i.ak, align 4, !tbaa !25, !noalias !196
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i134.i, %.noexc136.i
  %.012.i132.i = phi i64 [ 0, %.noexc136.i ], [ %i.ao, %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i134.i ] ; 2 uses
  %i.al = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(5000) @_ZN12_GLOBAL__N_13rngE, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i134.i unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.i133.i, !noalias !196

_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i134.i: ; preds = %bb.j
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.012.i132.i
  store i8 %i.am, ptr %i.an, align 1, !tbaa !26, !noalias !196
  %i.ao = add nuw nsw i64 %.012.i132.i, 1         ; 2 uses
  %exitcond.not.i135.i = icmp eq i64 %i.ao, 6400
  br i1 %exitcond.not.i135.i, label %bb.k, label %bb.j, !llvm.loop !153

_ZNSt6vectorIhSaIhEED2Ev.exit.i133.i:             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !196
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 6400) #20, !noalias !196
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit271.i

bb.k:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit.i134.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !196
  %i.aq = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !55 ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = mul nsw i64 %i.ar, 200                  ; 2 uses
  %i.at = icmp ugt i64 %i.as, 1152921504606846975
  br i1 %i.at, label %bb.l, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc140.i unwind label %bb.ad

.noexc140.i:                                      ; preds = %bb.l
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.k
  %.not.i.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.au = mul nuw nsw i64 %i.ar, 1600             ; 2 uses
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #21
          to label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit142.i unwind label %bb.ad ; 6 uses

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit142.i:          ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.as
  store i64 0, ptr %i.av, align 8, !tbaa !56
  %i.ax = getelementptr i8, ptr %i.av, i64 8
  %.idx.i.i.i.i.i.i.i.i = add nsw i64 %i.au, -8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !56
  %i.ay = ptrtoint ptr %i.aw to i64               ; 3 uses
  %.pre.i = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !55 ; 2 uses
  %i.az = sext i32 %.pre.i to i64                 ; 2 uses
  %i.ba = mul nsw i64 %i.az, 200                  ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, 2305843009213693951
  br i1 %i.bb, label %bb.n, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.n:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit142.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc146.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit265.thread.i

.noexc146.i:                                      ; preds = %bb.n
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit142.i
  %.not.i.i.i.i143.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i.i143.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bc = mul nuw nsw i64 %i.az, 800              ; 2 uses
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #21
          to label %.noexc147.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit265.thread.i ; 4 uses

.noexc147.i:                                      ; preds = %bb.o
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ba
  store i32 0, ptr %i.bd, align 4, !tbaa !55
  %i.bf = getelementptr i8, ptr %i.bd, i64 4
  %.idx.i.i.i.i.i.i.i144.i = add nsw i64 %i.bc, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bf, i8 0, i64 %.idx.i.i.i.i.i.i.i144.i, i1 false), !tbaa !55
  %i.bg = ptrtoint ptr %i.be to i64
  %.pre603.i = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !55
  %i.bh = sext i32 %.pre603.i to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i:             ; preds = %.noexc147.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.063.0677685.i = phi ptr [ %i.av, %.noexc147.i ], [ %i.av, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 7 uses
  %.sroa.1168.0680684.i = phi i64 [ %i.ay, %.noexc147.i ], [ %i.ay, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %i.bi = phi i64 [ %i.bh, %.noexc147.i ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.sroa.053.0.i = phi ptr [ %i.bd, %.noexc147.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 10 uses
  %.sroa.1360.0.i = phi i64 [ %i.bg, %.noexc147.i ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 200, ptr noundef nonnull %i.aj, i64 noundef %i.bi, ptr noundef %.sroa.053.0.i, ptr noundef %.sroa.063.0677685.i, ptr noundef null)
          to label %bb.p unwind label %bb.ae

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  %i.bm = load i64, ptr %i.t, align 8, !tbaa !192 ; 3 uses
  %i.bn = trunc i64 %i.bm to i32
  %sext.i = shl i64 %i.bm, 32                     ; 2 uses
  %i.bo = ashr exact i64 %sext.i, 32              ; 5 uses
  %i.bp = mul nsw i64 %i.bo, 200                  ; 3 uses
  %i.bq = icmp ugt i64 %i.bp, 1152921504606846975
  br i1 %i.bq, label %bb.q, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i148.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc153.i unwind label %bb.af

.noexc153.i:                                      ; preds = %bb.q
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i148.i: ; preds = %bb.p
  %.not.i.i.i.i149.i = icmp eq i64 %sext.i, 0
  br i1 %.not.i.i.i.i149.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit163.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i148.i
  %i.br = mul nsw i64 %i.bo, 1600                 ; 2 uses
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #21
          to label %bb.s unwind label %bb.af      ; 5 uses

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bp ; 2 uses
  store i64 0, ptr %i.bs, align 8, !tbaa !56
  %i.bu = getelementptr i8, ptr %i.bs, i64 8
  %.idx.i.i.i.i.i.i.i150.i = add nsw i64 %i.br, -8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, i8 0, i64 %.idx.i.i.i.i.i.i.i150.i, i1 false), !tbaa !56
  %i.bv = mul nsw i64 %i.bo, 800                  ; 2 uses
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #21
          to label %.noexc162.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit261.thread.i ; 4 uses

.noexc162.i:                                      ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bp
  store i32 0, ptr %i.bw, align 4, !tbaa !55
  %i.by = getelementptr i8, ptr %i.bw, i64 4
  %.idx.i.i.i.i.i.i.i158.i = add nsw i64 %i.bv, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.by, i8 0, i64 %.idx.i.i.i.i.i.i.i158.i, i1 false), !tbaa !55
  %i.bz = ptrtoint ptr %i.bx to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit163.i

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit163.i:          ; preds = %.noexc162.i, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i148.i
  %.sroa.1150.0102.i = phi ptr [ %i.bt, %.noexc162.i ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i148.i ] ; 2 uses
  %.sroa.045.099.i = phi ptr [ %i.bs, %.noexc162.i ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i148.i ] ; 7 uses
  %.sroa.038.0.i = phi ptr [ %i.bw, %.noexc162.i ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i148.i ] ; 8 uses
  %.sroa.11.0.i = phi i64 [ %i.bz, %.noexc162.i ], [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i148.i ] ; 2 uses
  %i.ca = load ptr, ptr %i.af, align 8, !tbaa !194 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !29
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 noundef 200, ptr noundef nonnull %i.aj, i64 noundef %i.bo, ptr noundef %.sroa.038.0.i, ptr noundef %.sroa.045.099.i, ptr noundef null)
          to label %bb.t unwind label %bb.ag

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit163.i
  %i.ce = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 160
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef ptr %i.cg(ptr noundef nonnull align 8 dereferenceable(248) %i.s, i1 noundef zeroext false)
          to label %.preheader117.i unwind label %bb.ah ; 13 uses

.preheader117.i:                                  ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.cj = icmp sgt i32 %i.bn, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %wide.trip.count.i = and i64 %i.bm, 2147483647
  br label %bb.ai

_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit206.i
  %i.ct = load ptr, ptr %i.ch, align 8, !tbaa !29
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.ch) #19, !inline_history !159
  %.not.i.i.i.i = icmp eq ptr %.sroa.038.0.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit.i
  %i.cw = ptrtoint ptr %.sroa.038.0.i to i64
  %i.cx = sub i64 %.sroa.11.0.i, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.038.0.i, i64 noundef %i.cx) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.u, %_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit.i
  %.not.i.i.i164.i = icmp eq ptr %.sroa.045.099.i, null
  br i1 %.not.i.i.i164.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.cy = ptrtoint ptr %.sroa.1150.0102.i to i64
  %i.cz = ptrtoint ptr %.sroa.045.099.i to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.045.099.i, i64 noundef %i.da) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.v, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %.not.i.i.i165.i = icmp eq ptr %.sroa.053.0.i, null
  br i1 %.not.i.i.i165.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit166.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.db = ptrtoint ptr %.sroa.053.0.i to i64
  %i.dc = sub i64 %.sroa.1360.0.i, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0.i, i64 noundef %i.dc) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166.i

_ZNSt6vectorIiSaIiEED2Ev.exit166.i:               ; preds = %bb.w, %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %.not.i.i.i167.i = icmp eq ptr %.sroa.063.0677685.i, null
  br i1 %.not.i.i.i167.i, label %_ZN12_GLOBAL__N_127test_lowlevel_access_binaryEPKc.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit166.i
  %i.dd = ptrtoint ptr %.sroa.063.0677685.i to i64
  %i.de = sub i64 %.sroa.1168.0680684.i, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.063.0677685.i, i64 noundef %i.de) #20
  br label %_ZN12_GLOBAL__N_127test_lowlevel_access_binaryEPKc.exit

bb.y:                                             ; preds = %_ZN12_GLOBAL__N_125make_trained_index_binaryEPKc.exit.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

bb.z:                                             ; preds = %bb.f
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit273.i

bb.aa:                                            ; preds = %bb.g
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit273.i

bb.ab:                                            ; preds = %bb.h
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit271.i

bb.ac:                                            ; preds = %bb.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit271.i

bb.ad:                                            ; preds = %bb.m, %bb.l
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit269.i

_ZNSt6vectorIiSaIiEED2Ev.exit265.thread.i:        ; preds = %bb.o, %bb.n
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit263.i

bb.af:                                            ; preds = %bb.r, %bb.q
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit263.i

_ZNSt6vectorIiSaIiEED2Ev.exit261.thread.i:        ; preds = %bb.s
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit163.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit259.i

bb.ah:                                            ; preds = %bb.t
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit259.i

bb.ai:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit206.i, %.preheader117.i
  %.055360.i = phi i64 [ 0, %.preheader117.i ], [ %i.mh, %_ZNSt6vectorIlSaIlEED2Ev.exit206.i ] ; 6 uses
  %i.dr = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !55 ; 3 uses
  %i.ds = sext i32 %i.dr to i64                   ; 2 uses
  %i.dt = icmp slt i32 %i.dr, 0
  br i1 %i.dt, label %bb.aj, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i175.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc178.i unwind label %.loopexit.split-lp.i

.noexc178.i:                                      ; preds = %bb.aj
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i175.i: ; preds = %bb.ai
  %.not.i.i.i.i176.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i.i.i176.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i175.i
  %i.du = shl nuw nsw i64 %i.ds, 3                ; 2 uses
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #21
          to label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit.i unwind label %.loopexit.i ; 6 uses

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit.i:          ; preds = %bb.ak
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dv, i8 -1, i64 %i.du, i1 false), !tbaa !56
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ds
  %.pre604.i = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !55 ; 3 uses
  %i.dx = ptrtoint ptr %i.dw to i64               ; 4 uses
  %i.dy = zext nneg i32 %.pre604.i to i64         ; 2 uses
  %i.dz = icmp slt i32 %.pre604.i, 0
  br i1 %i.dz, label %bb.al, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i180.i

bb.al:                                            ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc187.i unwind label %.loopexit.split-lp119.i

.noexc187.i:                                      ; preds = %bb.al
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i180.i: ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit.i
  %.not.i.i.i.i181.i = icmp eq i32 %.pre604.i, 0
  br i1 %.not.i.i.i.i181.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i180.i
  %i.ea = shl nuw nsw i64 %i.dy, 2                ; 3 uses
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #21
          to label %.noexc188.i unwind label %.loopexit118.i ; 6 uses

.noexc188.i:                                      ; preds = %bb.am
end_hunk_0
begin_hunk_1_@_ZN30TestLowLevelIVF_IVFBinary_Test8TestBodyEv:bb.a

bb.eh:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit263.i
  %i.rp = ptrtoint ptr %.sroa.053.0.i to i64
  %i.rq = sub i64 %.sroa.1360.0.i, %i.rp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0.i, i64 noundef %i.rq) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit265.i

_ZNSt6vectorIiSaIiEED2Ev.exit265.i:               ; preds = %bb.eh, %_ZNSt6vectorIlSaIlEED2Ev.exit263.i
  %.not.i.i.i266.i = icmp eq ptr %.sroa.063.0677685.i, null
  br i1 %.not.i.i.i266.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit269.i, label %bb.ei

bb.ei:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit265.i, %_ZNSt6vectorIiSaIiEED2Ev.exit265.thread.i
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn722.i = phi { ptr, i32 } [ %i.dl, %_ZNSt6vectorIiSaIiEED2Ev.exit265.thread.i ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt6vectorIiSaIiEED2Ev.exit265.i ]
  %.sroa.063.0675721.i = phi ptr [ %i.av, %_ZNSt6vectorIiSaIiEED2Ev.exit265.thread.i ], [ %.sroa.063.0677685.i, %_ZNSt6vectorIiSaIiEED2Ev.exit265.i ] ; 2 uses
  %.sroa.1168.0678720.i = phi i64 [ %i.ay, %_ZNSt6vectorIiSaIiEED2Ev.exit265.thread.i ], [ %.sroa.1168.0680684.i, %_ZNSt6vectorIiSaIiEED2Ev.exit265.i ]
  %i.rr = ptrtoint ptr %.sroa.063.0675721.i to i64
  %i.rs = sub i64 %.sroa.1168.0678720.i, %i.rr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.063.0675721.i, i64 noundef %i.rs) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit269.i

_ZNSt6vectorIhSaIhEED2Ev.exit269.i:               ; preds = %bb.ei, %_ZNSt6vectorIiSaIiEED2Ev.exit265.i, %bb.ad
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.dk, %bb.ad ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt6vectorIiSaIiEED2Ev.exit265.i ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn722.i, %bb.ei ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 6400) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit271.i

_ZNSt6vectorIlSaIlEED2Ev.exit271.i:               ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit269.i, %bb.ac, %bb.ab, %_ZNSt6vectorIhSaIhEED2Ev.exit.i133.i
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.di, %bb.ab ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt6vectorIhSaIhEED2Ev.exit269.i ], [ %i.dj, %bb.ac ], [ %i.ap, %_ZNSt6vectorIhSaIhEED2Ev.exit.i133.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 8000) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit273.i

_ZNSt6vectorIhSaIhEED2Ev.exit273.i:               ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit271.i, %bb.aa, %bb.z
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.dg, %bb.z ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt6vectorIlSaIlEED2Ev.exit271.i ], [ %i.dh, %bb.aa ]
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 32000) #20
  br label %common.resume.sink.split.i

_ZN12_GLOBAL__N_127test_lowlevel_access_binaryEPKc.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit166.i, %bb.x
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 6400) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 8000) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 32000) #20
  %i.rt = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8
  call void %i.rv(ptr noundef nonnull align 8 dereferenceable(32) %i.c) #19, !inline_history !186
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN35TestLowLevelIVF_ThreadedSearch_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN35TestLowLevelIVF_ThreadedSearch_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::unique_ptr.140", align 8 ; 16 uses
  %4 = alloca %"class.std::unique_ptr.3", align 8 ; 7 uses
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %"class.std::vector", align 8       ; 9 uses
  %7 = alloca %"struct.std::pair", align 8        ; 10 uses
  %8 = alloca %"class.std::vector.27", align 8    ; 15 uses
  %9 = alloca %"class.std::vector", align 8       ; 16 uses
  %10 = alloca %"class.std::vector.27", align 8   ; 15 uses
  %11 = alloca %"class.std::vector", align 8      ; 16 uses
  %12 = alloca %"class.std::vector.134", align 8  ; 10 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call fastcc void @_ZN12_GLOBAL__N_118make_trained_indexEPKcN5faiss10MetricTypeE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull @.str.11, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke fastcc void @_ZN12_GLOBAL__N_19make_dataEm(ptr dead_on_unwind noalias writable align 8 %5, i64 noundef 1000)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !80     ; 6 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !83     ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(36) %i.a, i64 noundef 1000, ptr noundef %i.b)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit162.i

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit160.i

bb.e:                                             ; preds = %bb.b
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss17IndexPreTransformE, i64 0) #19 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !85
  %.not.i = icmp eq ptr %i.h, null                ; 2 uses
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !85
  %i.o = invoke noundef ptr @_ZNK5faiss17IndexPreTransform11apply_chainElPKf(ptr noundef nonnull align 8 dereferenceable(73) %i.h, i64 noundef 1000, ptr noundef %i.b)
          to label %bb.g unwind label %.thread46.i ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.not73.i = icmp eq ptr %i.o, %i.b
  %spec.select.i = select i1 %.not73.i, ptr null, ptr %i.o
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.i

.thread46.i:                                      ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit160.i

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.i: ; preds = %bb.g, %bb.e
  %.sroa.038.0.i = phi ptr [ null, %bb.e ], [ %spec.select.i, %bb.g ] ; 4 uses
  %.049.i = phi i32 [ %i.j, %bb.e ], [ %i.n, %bb.g ] ; 3 uses
  %i.q = invoke noundef ptr @_ZN5faiss6ivflib17extract_index_ivfEPNS_5IndexE(ptr noundef nonnull %i.a)
          to label %bb.h unwind label %bb.m       ; 5 uses

bb.h:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke fastcc void @_ZN12_GLOBAL__N_19make_dataEm(ptr dead_on_unwind noalias writable align 8 %6, i64 noundef 200)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.r = load ptr, ptr %6, align 8, !tbaa !83     ; 5 uses
  invoke fastcc void @_ZN12_GLOBAL__N_112search_indexEPN5faiss5IndexEPKf(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull %i.a, ptr noundef %i.r)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit94.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = invoke noundef ptr @_ZNK5faiss17IndexPreTransform11apply_chainElPKf(ptr noundef nonnull align 8 dereferenceable(73) %i.h, i64 noundef 200, ptr noundef %i.r)
          to label %bb.l unwind label %.thread.i  ; 3 uses

bb.l:                                             ; preds = %bb.k
  %.not74.i = icmp eq ptr %i.s, %i.r
  %spec.select51.i = select i1 %.not74.i, ptr null, ptr %i.s
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit94.i

bb.m:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.n:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit157.i

bb.o:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.thread.i:                                        ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit155.i

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit94.i: ; preds = %bb.l, %bb.j
  %.sroa.035.0.i = phi ptr [ null, %bb.j ], [ %spec.select51.i, %bb.l ] ; 4 uses
  %.048.i = phi ptr [ %i.r, %bb.j ], [ %i.s, %bb.l ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.y = load i64, ptr %i.x, align 8, !tbaa !95   ; 2 uses
  %i.z = trunc i64 %i.y to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %sext.i = shl i64 %i.y, 32                      ; 2 uses
  %i.aa = ashr exact i64 %sext.i, 32              ; 4 uses
  %i.ab = mul nsw i64 %i.aa, 200                  ; 3 uses
  %i.ac = icmp ugt i64 %i.ab, 1152921504606846975
  br i1 %i.ac, label %bb.p, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.p:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit94.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc.i unwind label %bb.aa

.noexc.i:                                         ; preds = %bb.p
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit94.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %sext.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ad = mul nsw i64 %i.aa, 1600                 ; 3 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #21
          to label %bb.r unwind label %bb.aa      ; 5 uses

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.ae, ptr %8, align 8, !tbaa !96
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !97
  store i64 0, ptr %i.ae, align 8, !tbaa !56
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %.idx.i.i.i.i.i.i.i.i = add nsw i64 %i.ad, -8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !56
  %i.ai = getelementptr i8, ptr %i.ae, i64 %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.ak = mul nsw i64 %i.aa, 800                  ; 3 uses
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21
          to label %.noexc100.i unwind label %bb.ab ; 6 uses

.noexc100.i:                                      ; preds = %bb.r
  store ptr %i.al, ptr %9, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ab
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !99
  store float 0.000000e+00, ptr %i.al, align 4, !tbaa !61
  %i.ao = getelementptr i8, ptr %i.al, i64 4
  %.idx.i.i.i.i.i.i.i97.i = add nsw i64 %i.ak, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ao, i8 0, i64 %.idx.i.i.i.i.i.i.i97.i, i1 false), !tbaa !61
  %i.ap = getelementptr i8, ptr %i.al, i64 %i.ak
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !96
  br label %bb.s

bb.s:                                             ; preds = %.noexc100.i, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i
  %i.aq = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i ], [ %.pre.i, %.noexc100.i ]
  %i.ar = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i ], [ %i.al, %.noexc100.i ]
  %.0.i.i.i.i.i98.i = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i ], [ %i.ap, %.noexc100.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.0.i.i.i.i.i98.i, ptr %i.as, align 8, !tbaa !100
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !101 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.au, i64 noundef 200, ptr noundef %.048.i, i64 noundef %i.aa, ptr noundef %i.ar, ptr noundef %i.aq, ptr noundef null)
          to label %.preheader57.i unwind label %bb.ac

.preheader57.i:                                   ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  br label %bb.ad

bb.t:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit136.i
  %i.bh = load ptr, ptr %9, align 8, !tbaa !83    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !99
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.bn = load ptr, ptr %8, align 8, !tbaa !96    ; 3 uses
  %.not.i.i.i101.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i101.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !97
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.v, %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %.not.i.i = icmp eq ptr %.sroa.035.0.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.035.0.i) #20
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !83 ; 3 uses
  %.not.i.i.i.i102.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i102.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !99
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i:                ; preds = %bb.w, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.i
  %i.ca = load ptr, ptr %7, align 8, !tbaa !96    ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt4pairISt6vectorIlSaIlEES0_IfSaIfEEED2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !97
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #20
  br label %_ZNSt4pairISt6vectorIlSaIlEES0_IfSaIfEEED2Ev.exit.i

_ZNSt4pairISt6vectorIlSaIlEES0_IfSaIfEEED2Ev.exit.i: ; preds = %bb.x, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.cg = load ptr, ptr %6, align 8, !tbaa !83    ; 3 uses
  %.not.i.i.i103.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i103.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit104.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt4pairISt6vectorIlSaIlEES0_IfSaIfEEED2Ev.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !99
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit104.i

_ZNSt6vectorIfSaIfEED2Ev.exit104.i:               ; preds = %bb.y, %_ZNSt4pairISt6vectorIlSaIlEES0_IfSaIfEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.not.i105.i = icmp eq ptr %.sroa.038.0.i, null
  br i1 %.not.i105.i, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit107.i, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i106.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i106.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit104.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.038.0.i) #20
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit107.i

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit107.i: ; preds = %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i106.i, %_ZNSt6vectorIfSaIfEED2Ev.exit104.i
  %i.cm = load ptr, ptr %5, align 8, !tbaa !83    ; 3 uses
  %.not.i.i.i108.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i108.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit109.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit107.i
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !99
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cr) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit109.i

_ZNSt6vectorIfSaIfEED2Ev.exit109.i:               ; preds = %bb.z, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit107.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.cs = load ptr, ptr %4, align 8, !tbaa !80    ; 3 uses
  %.not.i110.i = icmp eq ptr %i.cs, null
  br i1 %.not.i110.i, label %_ZN12_GLOBAL__N_120test_threaded_searchEPKcN5faiss10MetricTypeE.exit, label %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit109.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !29
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(36) %i.cs) #19, !inline_history !203
  br label %_ZN12_GLOBAL__N_120test_threaded_searchEPKcN5faiss10MetricTypeE.exit

bb.aa:                                            ; preds = %bb.q, %bb.p
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ab:                                            ; preds = %bb.r
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit150.i

bb.ac:                                            ; preds = %bb.s
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ad:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit136.i, %.preheader57.i
  %.04775.i = phi i64 [ 0, %.preheader57.i ], [ %i.my, %_ZNSt6vectorIlSaIlEED2Ev.exit136.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.cz = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !55 ; 3 uses
  %i.da = mul nsw i32 %i.cz, 3
  %i.db = sext i32 %i.da to i64                   ; 2 uses
  %i.dc = icmp slt i32 %i.cz, 0
  br i1 %i.dc, label %bb.ae, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i111.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc114.i unwind label %.loopexit.split-lp59.i

.noexc114.i:                                      ; preds = %bb.ae
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i111.i: ; preds = %bb.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not.i.i.i.i112.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i.i112.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i116.thread.i, label %bb.af

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i116.thread.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i111.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  br label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i121.i

end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_112search_indexEPN5faiss5IndexEPKf:bb.a
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #21 ; 7 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !97
  store i64 0, ptr %i.f, align 8, !tbaa !56
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.e, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !56
  %i.j = getelementptr i8, ptr %i.f, i64 %i.e
  %.pre = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !55 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.l = sext i32 %.pre to i64                    ; 2 uses
  %i.m = mul nsw i64 %i.l, 200                    ; 2 uses
  %i.n = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.n, label %bb.c, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc11 unwind label %bb.j

.noexc11:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i8 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i.i8, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %bb.d

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.thread, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.o = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.thread ], [ %i.f, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.p = mul nuw nsw i64 %i.l, 800                ; 3 uses
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21
          to label %.noexc12 unwind label %bb.j   ; 6 uses

.noexc12:                                         ; preds = %bb.d
  store ptr %i.q, ptr %4, align 8, !tbaa !83
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !99
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !61
  %i.t = getelementptr i8, ptr %i.q, i64 4
  %.idx.i.i.i.i.i.i.i9 = add nsw i64 %i.p, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.t, i8 0, i64 %.idx.i.i.i.i.i.i.i9, i1 false), !tbaa !61
  %i.u = getelementptr i8, ptr %i.q, i64 %i.p
  %.pre19 = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !55
  %i.v = sext i32 %.pre19 to i64
  br label %bb.e

bb.e:                                             ; preds = %.noexc12, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  %i.w = phi ptr [ %i.o, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.f, %.noexc12 ]
  %i.x = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.q, %.noexc12 ]
  %i.y = phi i64 [ 0, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.v, %.noexc12 ]
  %.0.i.i.i.i.i10 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.u, %.noexc12 ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i10, ptr %i.z, align 8, !tbaa !100
  %i.aa = load ptr, ptr %1, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 200, ptr noundef %2, i64 noundef %i.y, ptr noundef %i.x, ptr noundef %i.w, ptr noundef null)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt4pairISt6vectorIlSaIlEES0_IfSaIfEEEC2IRS2_RS4_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS9_SA_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %4, align 8, !tbaa !83    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.aj = load ptr, ptr %3, align 8, !tbaa !96    ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !97
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

bb.k:                                             ; preds = %bb.f, %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !83    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !99
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %i.aq, %bb.k ], [ %i.aq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ax = load ptr, ptr %3, align 8, !tbaa !96    ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIlSaIlEED2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit15
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !97
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit17

_ZNSt6vectorIlSaIlEED2Ev.exit17:                  ; preds = %bb.m, %_ZNSt6vectorIfSaIfEED2Ev.exit15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_128test_get_InvertedListScannerEPN5faiss8IndexIVFEPKNS0_17IndexPreTransformESt6vectorIhSaIhEESt10unique_ptrINS0_19InvertedListScannerESt14default_deleteISA_EES6_IfSaIfEES6_IlSaIlEESF_NS0_10MetricTypeEbf(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) %6, i32 noundef range(i32 0, 2) %7, i1 noundef zeroext %8, float noundef %9) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 9 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  store float %9, ptr %i.a, align 4, !tbaa !61
  %i.c = load ptr, ptr %4, align 8, !tbaa !83     ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZNK5faiss17IndexPreTransform11apply_chainElPKf(ptr noundef nonnull align 8 dereferenceable(73) %1, i64 noundef 200, ptr noundef %i.c) ; 3 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !83
  %.not93 = icmp eq ptr %i.d, %i.e
  %spec.select = select i1 %.not93, ptr null, ptr %i.d
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit: ; preds = %bb.b, %bb.a
  %.sroa.0272.0 = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ] ; 4 uses
  %.086 = phi ptr [ %i.c, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load i64, ptr %i.f, align 8, !tbaa !95   ; 3 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !124  ; 15 uses
  %sext = shl i64 %i.g, 32                        ; 2 uses
  %i.k = ashr exact i64 %sext, 32                 ; 5 uses
  %i.l = mul nsw i64 %i.k, 200                    ; 3 uses
  %i.m = icmp ugt i64 %i.l, 1152921504606846975
  br i1 %i.m, label %bb.c, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  %.not.i.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = mul nsw i64 %i.k, 1600                   ; 2 uses
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21
          to label %bb.e unwind label %bb.i       ; 5 uses

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.l ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !56
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.n, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !56
  %i.r = mul nsw i64 %i.k, 800                    ; 2 uses
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #21
          to label %.noexc127 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit217.thread ; 4 uses

.noexc127:                                        ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.l
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !61
  %i.u = getelementptr i8, ptr %i.s, i64 4
  %.idx.i.i.i.i.i.i.i124 = add nsw i64 %i.r, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.u, i8 0, i64 %.idx.i.i.i.i.i.i.i124, i1 false), !tbaa !61
  %i.v = ptrtoint ptr %i.t to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %.noexc127, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0265.0281 = phi ptr [ %i.o, %.noexc127 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.11270.0278 = phi ptr [ %i.p, %.noexc127 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0258.0 = phi ptr [ %i.s, %.noexc127 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.sroa.11.0 = phi i64 [ %i.v, %.noexc127 ], [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !101  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(36) %i.x, i64 noundef 200, ptr noundef %.086, i64 noundef %i.k, ptr noundef %.sroa.0258.0, ptr noundef %.sroa.0265.0281, ptr noundef null)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.ab = load ptr, ptr %3, align 8, !tbaa !130
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.g, label %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %0, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 296
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(273) %0, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %3, align 8, !tbaa !130   ; 3 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !130
  %.not.i.i.i.i128 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i128, label %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5faiss19InvertedListScannerEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5faiss19InvertedListScannerEEclEPS1_.exit.i.i.i.i: ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #19, !inline_history !259
  br label %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit219

_ZNSt6vectorIfSaIfEED2Ev.exit217.thread:          ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.k:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.h, %_ZNKSt14default_deleteIN5faiss19InvertedListScannerEEclEPS1_.exit.i.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !61
  %.not97 = icmp eq i32 %7, 0                     ; 2 uses
  %i.ao = select i1 %.not97, float f0xFF7FFFFF, float f0x7F7FFFFF ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = icmp sgt i32 %i.h, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %wide.trip.count = and i64 %i.g, 2147483647
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.o

bb.l:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.aw = load float, ptr %i.b, align 4, !tbaa !61
  %i.ax = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !55
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %i.ay, 200
  %i.ba = uitofp i64 %i.az to float
  %i.bb = fdiv float %i.aw, %i.ba                 ; 2 uses
  store float %i.bb, ptr %i.b, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.bc = load float, ptr %i.a, align 4, !tbaa !61, !noalias !280
  %i.bd = fcmp ult float %i.bb, %i.bc
  br i1 %i.bd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18)
          to label %_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.cg

bb.n:                                             ; preds = %bb.l
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull @.str.36)
          to label %_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.cg

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit, %_ZNSt6vectorIlSaIlEED2Ev.exit
  %.063456 = phi i64 [ 0, %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit ], [ %i.lp, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 5 uses
  %i.be = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !55 ; 3 uses
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp slt i32 %i.be, 0
  br i1 %i.bg, label %bb.p, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i132

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc135 unwind label %.loopexit.split-lp

.noexc135:                                        ; preds = %bb.p
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i132: ; preds = %bb.o
  %.not.i.i.i.i133 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i133, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i132
  %i.bh = shl nuw nsw i64 %i.bf, 3                ; 2 uses
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #21
          to label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit unwind label %.loopexit ; 6 uses

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bi, i8 -1, i64 %i.bh, i1 false), !tbaa !56
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %.pre = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !55 ; 3 uses
  %i.bk = ptrtoint ptr %i.bj to i64               ; 4 uses
  %i.bl = zext nneg i32 %.pre to i64              ; 2 uses
  %i.bm = icmp slt i32 %.pre, 0
  br i1 %i.bm, label %bb.r, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137

bb.r:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc143 unwind label %.loopexit.split-lp302

.noexc143:                                        ; preds = %bb.r
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137: ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %.not.i.i.i.i138 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i.i138, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137
  %i.bn = shl nuw nsw i64 %i.bl, 2                ; 3 uses
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #21
          to label %.noexc144 unwind label %.loopexit301 ; 6 uses

.noexc144:                                        ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  %i.bq = add nsw i64 %i.bn, -4                   ; 2 uses
  %i.br = lshr exact i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check998 = icmp ult i64 %i.bq, 28
  br i1 %min.iters.check998, label %.lr.ph.i.i.i.i.i.i.i.i.i139.preheader, label %vector.ph999

vector.ph999:                                     ; preds = %.noexc144
  %n.vec1000 = and i64 %i.bs, 9223372036854775800 ; 3 uses
  %i.bt = shl i64 %n.vec1000, 2
  %i.bu = getelementptr i8, ptr %i.bo, i64 %i.bt
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.body1001, %vector.ph999
  %index1002 = phi i64 [ 0, %vector.ph999 ], [ %index.next1003, %vector.body1001 ] ; 2 uses
  %i.bv = shl i64 %index1002, 2
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !61
  store <4 x float> %broadcast.splat, ptr %i.bw, align 4, !tbaa !61
  %index.next1003 = add nuw i64 %index1002, 8     ; 2 uses
  %i.bx = icmp eq i64 %index.next1003, %n.vec1000
  br i1 %i.bx, label %middle.block1004, label %vector.body1001, !llvm.loop !262

middle.block1004:                                 ; preds = %vector.body1001
  %cmp.n1005 = icmp eq i64 %i.bs, %n.vec1000
  br i1 %cmp.n1005, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i139.preheader

.lr.ph.i.i.i.i.i.i.i.i.i139.preheader:            ; preds = %.noexc144, %middle.block1004
  %.07.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bo, %.noexc144 ], [ %i.bu, %middle.block1004 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i139

.lr.ph.i.i.i.i.i.i.i.i.i139:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i139.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i139
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i.i.i139 ], [ %.07.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i139.preheader ] ; 2 uses
  store float %i.ao, ptr %.07.i.i.i.i.i.i.i.i.i, align 4, !tbaa !61
  %i.by = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i140 = icmp eq ptr %i.by, %i.bp
  br i1 %.not.i.i.i.i.i.i.i.i.i140, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i139, !llvm.loop !263

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i139, %middle.block1004
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bl
  %i.ca = ptrtoint ptr %i.bz to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
end_hunk_2

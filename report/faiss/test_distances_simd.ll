Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_distances_simd?download=true
inline.NumInlined: 828
inline.NumDeleted: 269
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN52TestFvecL2sqr_distances_L2_squared_y_transposed_Test8TestBodyEv:bb.a

bb.ao:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit127
  %i.vn = ptrtoint ptr %.sroa.16169.0545595 to i64
  %i.vo = sub i64 %i.vn, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0160.0564594, i64 noundef %i.vo) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit129

_ZNSt6vectorIfSaIfEED2Ev.exit129:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit127, %bb.ao
  %.072.add = add nuw nsw i64 %.072.idx302, 4     ; 2 uses
  %.not = icmp ne i64 %.072.add, 36
  %or.cond.not = select i1 %i.tx, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.av

bb.ap:                                            ; preds = %_ZN7testing7MessageD2Ev.exit120, %bb.x
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit120 ], [ %i.ua, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ap ], [ %i.tz, %bb.w ] ; 2 uses
  %i.vp = load ptr, ptr %4, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i130 = icmp eq ptr %i.vp, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIfSaIfEED2Ev.exit131, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.vq = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.vr = ptrtoint ptr %i.vq to i64
  %i.vs = ptrtoint ptr %i.vp to i64
  %i.vt = sub i64 %i.vr, %i.vs
  call void @_ZdlPvm(ptr noundef nonnull %i.vp, i64 noundef %i.vt) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit131

_ZNSt6vectorIfSaIfEED2Ev.exit131:                 ; preds = %bb.ar, %bb.aq, %bb.v
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ty, %bb.v ], [ %.pn.pn.pn.pn.pn, %bb.aq ], [ %.pn.pn.pn.pn.pn, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.vu = load ptr, ptr %3, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i132 = icmp eq ptr %i.vu, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorIfSaIfEED2Ev.exit133, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit131
  %i.vv = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.vw = ptrtoint ptr %i.vv to i64
  %i.vx = ptrtoint ptr %i.vu to i64
  %i.vy = sub i64 %i.vw, %i.vx
  call void @_ZdlPvm(ptr noundef nonnull %i.vu, i64 noundef %i.vy) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit133

_ZNSt6vectorIfSaIfEED2Ev.exit133:                 ; preds = %bb.as, %_ZNSt6vectorIfSaIfEED2Ev.exit131, %bb.q
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ef, %bb.q ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit131 ], [ %.pn.pn.pn.pn.pn.pn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit135

_ZNSt6vectorIfSaIfEED2Ev.exit135:                 ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt6vectorIfSaIfEED2Ev.exit133
  %.pn80 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit133 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit428, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit437, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit445, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit454, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit462, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit471, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit479, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit488, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit496, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp497, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 44) #17
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit135, %bb.e
  %.pn80.pn = phi { ptr, i32 } [ %.pn80, %_ZNSt6vectorIfSaIfEED2Ev.exit135 ], [ %i.bf, %bb.e ] ; 2 uses
  %.not.i.i.i136 = icmp eq ptr %.sroa.0150.0, null
  br i1 %.not.i.i.i136, label %_ZNSt6vectorIfSaIfEED2Ev.exit137, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.vz = ptrtoint ptr %.sroa.0150.0 to i64
  %i.wa = sub i64 %.sroa.16.0, %i.vz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0150.0, i64 noundef %i.wa) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit137

_ZNSt6vectorIfSaIfEED2Ev.exit137:                 ; preds = %bb.at, %bb.au
  %.not.i.i.i138 = icmp eq ptr %.sroa.0160.0564594, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorIfSaIfEED2Ev.exit139, label %_ZNSt6vectorIfSaIfEED2Ev.exit137.thread

_ZNSt6vectorIfSaIfEED2Ev.exit137.thread:          ; preds = %bb.d, %bb.c, %_ZNSt6vectorIfSaIfEED2Ev.exit137
  %.pn84620 = phi { ptr, i32 } [ %.pn80.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit137 ], [ %i.be, %bb.d ], [ %i.ai, %bb.c ]
  %.sroa.16169.0546619 = phi ptr [ %.sroa.16169.0545595, %_ZNSt6vectorIfSaIfEED2Ev.exit137 ], [ %i.l, %bb.d ], [ %i.l, %bb.c ]
  %.sroa.0160.0565618 = phi ptr [ %.sroa.0160.0564594, %_ZNSt6vectorIfSaIfEED2Ev.exit137 ], [ %i.k, %bb.d ], [ %i.k, %bb.c ]
  %i.wb = phi i64 [ %i.aj, %_ZNSt6vectorIfSaIfEED2Ev.exit137 ], [ %i.q, %bb.d ], [ %i.q, %bb.c ]
  %i.wc = ptrtoint ptr %.sroa.16169.0546619 to i64
  %i.wd = sub i64 %i.wc, %i.wb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0160.0565618, i64 noundef %i.wd) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit139

_ZNSt6vectorIfSaIfEED2Ev.exit139:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit137.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit137
  %.pn84621 = phi { ptr, i32 } [ %.pn84620, %_ZNSt6vectorIfSaIfEED2Ev.exit137.thread ], [ %.pn80.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %.pn84621

bb.av:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit129
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN50TestFvecL2sqr_nearest_L2_squared_y_transposed_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN50TestFvecL2sqr_nearest_L2_squared_y_transposed_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::linear_congruential_engine", align 8 ; 16 uses
  %2 = alloca %"class.std::uniform_int_distribution", align 4 ; 29 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 9 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store i64 123, ptr %1, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 32, ptr %i.c, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit139, %bb.a
  %.082.idx322 = phi i64 [ 0, %bb.a ], [ %.082.add, %_ZNSt6vectorIfSaIfEED2Ev.exit139 ] ; 2 uses
  %.082.ptr = getelementptr inbounds nuw i8, ptr @constinit.31, i64 %.082.idx322
  %i.e = load i32, ptr %.082.ptr, align 4, !tbaa !18 ; 17 uses
  %i.f = sext i32 %i.e to i64                     ; 4 uses
  %i.g = icmp slt i32 %i.e, 0
  br i1 %i.g, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %i.e, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit106, label %.noexc97

.noexc97:                                         ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #19 ; 8 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !20
  %i.k = getelementptr i8, ptr %i.i, i64 4        ; 3 uses
  %i.l = add nsw i64 %i.f, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %.noexc97
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 2   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc97, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.0.i.i.i.i.i635 = phi ptr [ %i.n, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %i.k, %.noexc97 ]
  %i.o = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.p = ptrtoint ptr %.0.i.i.i.i.i635 to i64
  %i.q = sub i64 %i.p, %i.o
  %i.r = ashr exact i64 %i.q, 2
  br label %.lr.ph

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i98: ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit
  %i.s = mul nuw nsw i32 %i.e, 11
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 2                  ; 3 uses
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #19
          to label %.noexc105 unwind label %bb.d  ; 5 uses

.noexc105:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i98
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.t
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !20
  %i.x = getelementptr i8, ptr %i.v, i64 4
  %.idx.i.i.i.i.i.i.i101 = add nsw i64 %i.u, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %.idx.i.i.i.i.i.i.i101, i1 false), !tbaa !20
  %i.y = getelementptr i8, ptr %i.v, i64 %i.u
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit106

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit
  %.064309 = phi i64 [ %i.af, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.065308 = phi float [ %i.ae, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.ab = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit unwind label %bb.c

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit: ; preds = %.lr.ph
  %i.ac = sitofp i32 %i.ab to float               ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.064309
  store float %i.ac, ptr %i.ad, align 4, !tbaa !20
  %i.ae = call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %.065308) ; 2 uses
  %i.af = add nuw i64 %.064309, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.r
  br i1 %exitcond.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i98, label %.lr.ph, !llvm.loop !110

bb.c:                                             ; preds = %.lr.ph
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit147.thread

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit106:            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc105
  %.065.lcssa641 = phi float [ %i.ae, %.noexc105 ], [ 0.000000e+00, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 13 uses
  %.sroa.16191.0592640 = phi ptr [ %i.j, %.noexc105 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0182.0610639 = phi ptr [ %i.i, %.noexc105 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 60 uses
  %i.ah = phi i64 [ %i.o, %.noexc105 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0172.0 = phi ptr [ %i.v, %.noexc105 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 73 uses
  %.sroa.16.0 = phi i64 [ %i.aa, %.noexc105 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.0.i.i.i.i.i102 = phi i64 [ %i.z, %.noexc105 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.ai = invoke noalias noundef nonnull dereferenceable(44) ptr @_Znwm(i64 noundef 44) #19
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader unwind label %bb.e ; 29 uses

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.ai, i8 0, i64 44, i1 false), !tbaa !20
  %i.aj = ptrtoint ptr %.sroa.0172.0 to i64       ; 3 uses
  %.not324 = icmp eq i64 %.0.i.i.i.i.i102, %i.aj
  br i1 %.not324, label %.lr.ph.i.i.i.i.i.i.i.i.i111.preheader, label %.preheader198.preheader

.preheader198.preheader:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.ak = sub i64 %.0.i.i.i.i.i102, %i.aj
  %i.al = ashr exact i64 %i.ak, 2                 ; 11 uses
  br label %bb.p

.lr.ph.i.i.i.i.i.i.i.i.i111.preheader:            ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.10, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.9.thread, label %.lr.ph316.preheader

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.9.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i111.preheader
  %i.am = load <8 x float>, ptr %i.ai, align 4, !tbaa !20
  %i.an = insertelement <8 x float> poison, float %.065.lcssa641, i64 0
  %i.ao = shufflevector <8 x float> %i.an, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ap = fadd <8 x float> %i.ao, %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %6 = load <2 x float>, ptr %i.aq, align 4, !tbaa !20
  %7 = insertelement <2 x float> poison, float %.065.lcssa641, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = fadd <2 x float> %8, %6                    ; 2 uses
  %10 = extractelement <2 x float> %9, i64 0
  %11 = extractelement <2 x float> %9, i64 1
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.10

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i98
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit147.thread

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit106
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

._crit_edge:                                      ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.1, %._crit_edge
  %.062311.1 = phi i64 [ 0, %._crit_edge ], [ %i.az, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.1 ] ; 2 uses
  %i.au = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.1 unwind label %.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.1: ; preds = %bb.f
  %i.av = sitofp i32 %i.au to float               ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0172.0, i64 %.062311.1
  store float %i.av, ptr %i.aw, align 4, !tbaa !20
  %i.ax = load float, ptr %i.at, align 4, !tbaa !20
  %i.ay = call float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.ax)
  store float %i.ay, ptr %i.at, align 4, !tbaa !20
  %i.az = add nuw i64 %.062311.1, 1               ; 2 uses
  %exitcond444.1.not = icmp eq i64 %i.az, %i.al
  br i1 %exitcond444.1.not, label %._crit_edge.1, label %bb.f, !llvm.loop !111

._crit_edge.1:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.2, %._crit_edge.1
  %.062311.2 = phi i64 [ 0, %._crit_edge.1 ], [ %i.bg, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.2 ] ; 2 uses
  %i.bb = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.2: ; preds = %bb.g
  %i.bc = sitofp i32 %i.bb to float               ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0172.0, i64 %.062311.2
  store float %i.bc, ptr %i.bd, align 4, !tbaa !20
  %i.be = load float, ptr %i.ba, align 4, !tbaa !20
  %i.bf = call float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.be)
  store float %i.bf, ptr %i.ba, align 4, !tbaa !20
  %i.bg = add nuw i64 %.062311.2, 1               ; 2 uses
  %exitcond444.2.not = icmp eq i64 %i.bg, %i.al
  br i1 %exitcond444.2.not, label %._crit_edge.2, label %bb.g, !llvm.loop !111

._crit_edge.2:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.3, %._crit_edge.2
  %.062311.3 = phi i64 [ 0, %._crit_edge.2 ], [ %i.bn, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.3 ] ; 2 uses
  %i.bi = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.3: ; preds = %bb.h
  %i.bj = sitofp i32 %i.bi to float               ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0172.0, i64 %.062311.3
  store float %i.bj, ptr %i.bk, align 4, !tbaa !20
  %i.bl = load float, ptr %i.bh, align 4, !tbaa !20
  %i.bm = call float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %i.bl)
  store float %i.bm, ptr %i.bh, align 4, !tbaa !20
  %i.bn = add nuw i64 %.062311.3, 1               ; 2 uses
  %exitcond444.3.not = icmp eq i64 %i.bn, %i.al
  br i1 %exitcond444.3.not, label %._crit_edge.3, label %bb.h, !llvm.loop !111

._crit_edge.3:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.4, %._crit_edge.3
  %.062311.4 = phi i64 [ 0, %._crit_edge.3 ], [ %i.bu, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.4 ] ; 2 uses
  %i.bp = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.4: ; preds = %bb.i
  %i.bq = sitofp i32 %i.bp to float               ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0172.0, i64 %.062311.4
  store float %i.bq, ptr %i.br, align 4, !tbaa !20
  %i.bs = load float, ptr %i.bo, align 4, !tbaa !20
  %i.bt = call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.bs)
  store float %i.bt, ptr %i.bo, align 4, !tbaa !20
  %i.bu = add nuw i64 %.062311.4, 1               ; 2 uses
  %exitcond444.4.not = icmp eq i64 %i.bu, %i.al
  br i1 %exitcond444.4.not, label %._crit_edge.4, label %bb.i, !llvm.loop !111

._crit_edge.4:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ai, i64 20 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.5, %._crit_edge.4
  %.062311.5 = phi i64 [ 0, %._crit_edge.4 ], [ %i.cb, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.5 ] ; 2 uses
  %i.bw = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.5: ; preds = %bb.j
  %i.bx = sitofp i32 %i.bw to float               ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0172.0, i64 %.062311.5
  store float %i.bx, ptr %i.by, align 4, !tbaa !20
  %i.bz = load float, ptr %i.bv, align 4, !tbaa !20
  %i.ca = call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.bz)
  store float %i.ca, ptr %i.bv, align 4, !tbaa !20
  %i.cb = add nuw i64 %.062311.5, 1               ; 2 uses
  %exitcond444.5.not = icmp eq i64 %i.cb, %i.al
  br i1 %exitcond444.5.not, label %._crit_edge.5, label %bb.j, !llvm.loop !111

._crit_edge.5:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.5
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.6, %._crit_edge.5
  %.062311.6 = phi i64 [ 0, %._crit_edge.5 ], [ %i.ci, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.6 ] ; 2 uses
  %i.cd = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.6: ; preds = %bb.k
  %i.ce = sitofp i32 %i.cd to float               ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0172.0, i64 %.062311.6
  store float %i.ce, ptr %i.cf, align 4, !tbaa !20
  %i.cg = load float, ptr %i.cc, align 4, !tbaa !20
  %i.ch = call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.cg)
  store float %i.ch, ptr %i.cc, align 4, !tbaa !20
  %i.ci = add nuw i64 %.062311.6, 1               ; 2 uses
  %exitcond444.6.not = icmp eq i64 %i.ci, %i.al
  br i1 %exitcond444.6.not, label %._crit_edge.6, label %bb.k, !llvm.loop !111

._crit_edge.6:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.6
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.7, %._crit_edge.6
  %.062311.7 = phi i64 [ 0, %._crit_edge.6 ], [ %i.cp, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.7 ] ; 2 uses
  %i.ck = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.7: ; preds = %bb.l
  %i.cl = sitofp i32 %i.ck to float               ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0172.0, i64 %.062311.7
  store float %i.cl, ptr %i.cm, align 4, !tbaa !20
  %i.cn = load float, ptr %i.cj, align 4, !tbaa !20
  %i.co = call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.cn)
  store float %i.co, ptr %i.cj, align 4, !tbaa !20
  %i.cp = add nuw i64 %.062311.7, 1               ; 2 uses
  %exitcond444.7.not = icmp eq i64 %i.cp, %i.al
  br i1 %exitcond444.7.not, label %._crit_edge.7, label %bb.l, !llvm.loop !111

._crit_edge.7:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.7
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.8, %._crit_edge.7
  %.062311.8 = phi i64 [ 0, %._crit_edge.7 ], [ %i.cw, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.8 ] ; 2 uses
  %i.cr = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.8: ; preds = %bb.m
  %i.cs = sitofp i32 %i.cr to float               ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0172.0, i64 %.062311.8
  store float %i.cs, ptr %i.ct, align 4, !tbaa !20
  %i.cu = load float, ptr %i.cq, align 4, !tbaa !20
  %i.cv = call float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cu)
  store float %i.cv, ptr %i.cq, align 4, !tbaa !20
  %i.cw = add nuw i64 %.062311.8, 1               ; 2 uses
  %exitcond444.8.not = icmp eq i64 %i.cw, %i.al
  br i1 %exitcond444.8.not, label %._crit_edge.8, label %bb.m, !llvm.loop !111

._crit_edge.8:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ai, i64 36 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.9, %._crit_edge.8
  %.062311.9 = phi i64 [ 0, %._crit_edge.8 ], [ %i.dd, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.9 ] ; 2 uses
  %i.cy = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.9: ; preds = %bb.n
  %i.cz = sitofp i32 %i.cy to float               ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0172.0, i64 %.062311.9
  store float %i.cz, ptr %i.da, align 4, !tbaa !20
  %i.db = load float, ptr %i.cx, align 4, !tbaa !20
  %i.dc = call float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %i.db)
  store float %i.dc, ptr %i.cx, align 4, !tbaa !20
  %i.dd = add nuw i64 %.062311.9, 1               ; 2 uses
  %exitcond444.9.not = icmp eq i64 %i.dd, %i.al
  br i1 %exitcond444.9.not, label %._crit_edge.9, label %bb.n, !llvm.loop !111

._crit_edge.9:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.9
  %i.de = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.10, %._crit_edge.9
  %.062311.10 = phi i64 [ 0, %._crit_edge.9 ], [ %i.dk, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.10 ] ; 2 uses
  %i.df = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
end_hunk_0
begin_hunk_1_@_ZN50TestFvecL2sqr_nearest_L2_squared_y_transposed_Test8TestBodyEv:bb.a
  br i1 %niter1256.ncmp.3, label %.lr.ph316.preheader.9.unr-lcssa, label %.lr.ph316.8, !llvm.loop !113

.lr.ph316.preheader.9.unr-lcssa:                  ; preds = %.lr.ph316.8
  %lcmp.mod1252.not = icmp eq i64 %xtraiter1250, 0
  br i1 %lcmp.mod1252.not, label %.lr.ph316.preheader.9, label %.lr.ph316.8.epil.preheader

.lr.ph316.8.epil.preheader:                       ; preds = %.lr.ph316.preheader.9.unr-lcssa, %.lr.ph316.preheader.8
  %indvars.iv.8.epil.init = phi i64 [ 0, %.lr.ph316.preheader.8 ], [ %indvars.iv.next.8.3, %.lr.ph316.preheader.9.unr-lcssa ]
  %.060314.8.epil.init = phi float [ 0.000000e+00, %.lr.ph316.preheader.8 ], [ %i.oj, %.lr.ph316.preheader.9.unr-lcssa ]
  %lcmp.mod1254 = icmp ne i64 %xtraiter1250, 0
  call void @llvm.assume(i1 %lcmp.mod1254)
  br label %.lr.ph316.8.epil

.lr.ph316.8.epil:                                 ; preds = %.lr.ph316.8.epil, %.lr.ph316.8.epil.preheader
  %indvars.iv.8.epil = phi i64 [ %indvars.iv.8.epil.init, %.lr.ph316.8.epil.preheader ], [ %indvars.iv.next.8.epil, %.lr.ph316.8.epil ] ; 3 uses
  %.060314.8.epil = phi float [ %.060314.8.epil.init, %.lr.ph316.8.epil.preheader ], [ %i.op, %.lr.ph316.8.epil ]
  %epil.iter1251 = phi i64 [ 0, %.lr.ph316.8.epil.preheader ], [ %epil.iter1251.next, %.lr.ph316.8.epil ]
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0182.0610639, i64 %indvars.iv.8.epil
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !20
  %.idx576.epil = mul nuw nsw i64 %indvars.iv.8.epil, 44
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 %.idx576.epil
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 32
  %i.oo = load float, ptr %i.on, align 4, !tbaa !20
  %i.op = call float @llvm.fmuladd.f32(float %i.ol, float %i.oo, float %.060314.8.epil) ; 2 uses
  %indvars.iv.next.8.epil = add nuw nsw i64 %indvars.iv.8.epil, 1
  %epil.iter1251.next = add i64 %epil.iter1251, 1 ; 2 uses
  %epil.iter1251.cmp.not = icmp eq i64 %epil.iter1251.next, %xtraiter1250
  br i1 %epil.iter1251.cmp.not, label %.lr.ph316.preheader.9, label %.lr.ph316.8.epil, !llvm.loop !121

.lr.ph316.preheader.9:                            ; preds = %.lr.ph316.8.epil, %.lr.ph316.preheader.9.unr-lcssa
  %.lcssa1024 = phi float [ %i.oj, %.lr.ph316.preheader.9.unr-lcssa ], [ %i.op, %.lr.ph316.8.epil ]
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.or = load float, ptr %i.oq, align 4, !tbaa !20
  %i.os = fadd float %.065.lcssa641, %i.or
  %i.ot = call float @llvm.fmuladd.f32(float %.lcssa1024, float -2.000000e+00, float %i.os) ; 2 uses
  %xtraiter1257 = and i64 %wide.trip.count, 3     ; 3 uses
  %i.ou = icmp ult i32 %i.e, 4
  br i1 %i.ou, label %.lr.ph316.9.epil.preheader, label %.lr.ph316.preheader.9.new

.lr.ph316.preheader.9.new:                        ; preds = %.lr.ph316.preheader.9
  %unroll_iter1262 = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph316.9

.lr.ph316.9:                                      ; preds = %.lr.ph316.9, %.lr.ph316.preheader.9.new
  %indvars.iv.9 = phi i64 [ 0, %.lr.ph316.preheader.9.new ], [ %indvars.iv.next.9.3, %.lr.ph316.9 ] ; 6 uses
  %.060314.9 = phi float [ 0.000000e+00, %.lr.ph316.preheader.9.new ], [ %i.ps, %.lr.ph316.9 ]
  %niter1263 = phi i64 [ 0, %.lr.ph316.preheader.9.new ], [ %niter1263.next.3, %.lr.ph316.9 ]
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0182.0610639, i64 %indvars.iv.9
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !20
  %.idx577 = mul nuw nsw i64 %indvars.iv.9, 44
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 %.idx577
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 36
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !20
  %i.pa = call float @llvm.fmuladd.f32(float %i.ow, float %i.oz, float %.060314.9)
  %indvars.iv.next.9 = or disjoint i64 %indvars.iv.9, 1 ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0182.0610639, i64 %indvars.iv.next.9
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !20
  %.idx577.1 = mul nuw nsw i64 %indvars.iv.next.9, 44
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 %.idx577.1
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 36
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !20
  %i.pg = call float @llvm.fmuladd.f32(float %i.pc, float %i.pf, float %i.pa)
  %indvars.iv.next.9.1 = or disjoint i64 %indvars.iv.9, 2 ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0182.0610639, i64 %indvars.iv.next.9.1
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !20
  %.idx577.2 = mul nuw nsw i64 %indvars.iv.next.9.1, 44
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 %.idx577.2
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 36
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !20
  %i.pm = call float @llvm.fmuladd.f32(float %i.pi, float %i.pl, float %i.pg)
  %indvars.iv.next.9.2 = or disjoint i64 %indvars.iv.9, 3 ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0182.0610639, i64 %indvars.iv.next.9.2
  %i.po = load float, ptr %i.pn, align 4, !tbaa !20
  %.idx577.3 = mul nuw nsw i64 %indvars.iv.next.9.2, 44
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 %.idx577.3
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 36
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !20
  %i.ps = call float @llvm.fmuladd.f32(float %i.po, float %i.pr, float %i.pm) ; 3 uses
  %indvars.iv.next.9.3 = add nuw nsw i64 %indvars.iv.9, 4 ; 2 uses
  %niter1263.next.3 = add i64 %niter1263, 4       ; 2 uses
  %niter1263.ncmp.3 = icmp eq i64 %niter1263.next.3, %unroll_iter1262
  br i1 %niter1263.ncmp.3, label %.lr.ph316.preheader.10.unr-lcssa, label %.lr.ph316.9, !llvm.loop !113

.lr.ph316.preheader.10.unr-lcssa:                 ; preds = %.lr.ph316.9
  %lcmp.mod1259.not = icmp eq i64 %xtraiter1257, 0
  br i1 %lcmp.mod1259.not, label %.lr.ph316.preheader.10, label %.lr.ph316.9.epil.preheader

.lr.ph316.9.epil.preheader:                       ; preds = %.lr.ph316.preheader.10.unr-lcssa, %.lr.ph316.preheader.9
  %indvars.iv.9.epil.init = phi i64 [ 0, %.lr.ph316.preheader.9 ], [ %indvars.iv.next.9.3, %.lr.ph316.preheader.10.unr-lcssa ]
  %.060314.9.epil.init = phi float [ 0.000000e+00, %.lr.ph316.preheader.9 ], [ %i.ps, %.lr.ph316.preheader.10.unr-lcssa ]
  %lcmp.mod1261 = icmp ne i64 %xtraiter1257, 0
  call void @llvm.assume(i1 %lcmp.mod1261)
  br label %.lr.ph316.9.epil

.lr.ph316.9.epil:                                 ; preds = %.lr.ph316.9.epil, %.lr.ph316.9.epil.preheader
  %indvars.iv.9.epil = phi i64 [ %indvars.iv.9.epil.init, %.lr.ph316.9.epil.preheader ], [ %indvars.iv.next.9.epil, %.lr.ph316.9.epil ] ; 3 uses
  %.060314.9.epil = phi float [ %.060314.9.epil.init, %.lr.ph316.9.epil.preheader ], [ %i.py, %.lr.ph316.9.epil ]
  %epil.iter1258 = phi i64 [ 0, %.lr.ph316.9.epil.preheader ], [ %epil.iter1258.next, %.lr.ph316.9.epil ]
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0182.0610639, i64 %indvars.iv.9.epil
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !20
  %.idx577.epil = mul nuw nsw i64 %indvars.iv.9.epil, 44
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 %.idx577.epil
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 36
  %i.px = load float, ptr %i.pw, align 4, !tbaa !20
  %i.py = call float @llvm.fmuladd.f32(float %i.pu, float %i.px, float %.060314.9.epil) ; 2 uses
  %indvars.iv.next.9.epil = add nuw nsw i64 %indvars.iv.9.epil, 1
  %epil.iter1258.next = add i64 %epil.iter1258, 1 ; 2 uses
  %epil.iter1258.cmp.not = icmp eq i64 %epil.iter1258.next, %xtraiter1257
  br i1 %epil.iter1258.cmp.not, label %.lr.ph316.preheader.10, label %.lr.ph316.9.epil, !llvm.loop !122

.lr.ph316.preheader.10:                           ; preds = %.lr.ph316.9.epil, %.lr.ph316.preheader.10.unr-lcssa
  %.lcssa1025 = phi float [ %i.ps, %.lr.ph316.preheader.10.unr-lcssa ], [ %i.py, %.lr.ph316.9.epil ]
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !20
  %i.qb = fadd float %.065.lcssa641, %i.qa
  %i.qc = call float @llvm.fmuladd.f32(float %.lcssa1025, float -2.000000e+00, float %i.qb) ; 2 uses
  %i.qd = insertelement <8 x float> poison, float %i.dz, i64 0
  %i.qe = insertelement <8 x float> %i.qd, float %i.fi, i64 1
  %i.qf = insertelement <8 x float> %i.qe, float %i.gr, i64 2
  %i.qg = insertelement <8 x float> %i.qf, float %i.ia, i64 3
  %i.qh = insertelement <8 x float> %i.qg, float %i.jj, i64 4
  %i.qi = insertelement <8 x float> %i.qh, float %i.ks, i64 5
  %i.qj = insertelement <8 x float> %i.qi, float %i.mb, i64 6
  %i.qk = insertelement <8 x float> %i.qj, float %i.nk, i64 7 ; 2 uses
  %xtraiter1264 = and i64 %wide.trip.count, 3     ; 3 uses
  %i.ql = icmp ult i32 %i.e, 4
  br i1 %i.ql, label %.lr.ph316.10.epil.preheader, label %.lr.ph316.preheader.10.new

.lr.ph316.preheader.10.new:                       ; preds = %.lr.ph316.preheader.10
  %unroll_iter1269 = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph316.10

.lr.ph316.10:                                     ; preds = %.lr.ph316.10, %.lr.ph316.preheader.10.new
  %indvars.iv.10 = phi i64 [ 0, %.lr.ph316.preheader.10.new ], [ %indvars.iv.next.10.3, %.lr.ph316.10 ] ; 6 uses
  %.060314.10 = phi float [ 0.000000e+00, %.lr.ph316.preheader.10.new ], [ %i.rj, %.lr.ph316.10 ]
  %niter1270 = phi i64 [ 0, %.lr.ph316.preheader.10.new ], [ %niter1270.next.3, %.lr.ph316.10 ]
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0182.0610639, i64 %indvars.iv.10
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !20
  %.idx578 = mul nuw nsw i64 %indvars.iv.10, 44
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 %.idx578
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 40
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !20
  %i.qr = call float @llvm.fmuladd.f32(float %i.qn, float %i.qq, float %.060314.10)
  %indvars.iv.next.10 = or disjoint i64 %indvars.iv.10, 1 ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0182.0610639, i64 %indvars.iv.next.10
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !20
  %.idx578.1 = mul nuw nsw i64 %indvars.iv.next.10, 44
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 %.idx578.1
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 40
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !20
  %i.qx = call float @llvm.fmuladd.f32(float %i.qt, float %i.qw, float %i.qr)
  %indvars.iv.next.10.1 = or disjoint i64 %indvars.iv.10, 2 ; 2 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0182.0610639, i64 %indvars.iv.next.10.1
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !20
  %.idx578.2 = mul nuw nsw i64 %indvars.iv.next.10.1, 44
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 %.idx578.2
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 40
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !20
  %i.rd = call float @llvm.fmuladd.f32(float %i.qz, float %i.rc, float %i.qx)
  %indvars.iv.next.10.2 = or disjoint i64 %indvars.iv.10, 3 ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0182.0610639, i64 %indvars.iv.next.10.2
  %i.rf = load float, ptr %i.re, align 4, !tbaa !20
  %.idx578.3 = mul nuw nsw i64 %indvars.iv.next.10.2, 44
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 %.idx578.3
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 40
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !20
  %i.rj = call float @llvm.fmuladd.f32(float %i.rf, float %i.ri, float %i.rd) ; 3 uses
  %indvars.iv.next.10.3 = add nuw nsw i64 %indvars.iv.10, 4 ; 2 uses
  %niter1270.next.3 = add i64 %niter1270, 4       ; 2 uses
  %niter1270.ncmp.3 = icmp eq i64 %niter1270.next.3, %unroll_iter1269
  br i1 %niter1270.ncmp.3, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.10.loopexit.unr-lcssa, label %.lr.ph316.10, !llvm.loop !113

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.10.loopexit.unr-lcssa: ; preds = %.lr.ph316.10
  %lcmp.mod1266.not = icmp eq i64 %xtraiter1264, 0
  br i1 %lcmp.mod1266.not, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.10, label %.lr.ph316.10.epil.preheader

.lr.ph316.10.epil.preheader:                      ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.10.loopexit.unr-lcssa, %.lr.ph316.preheader.10
  %indvars.iv.10.epil.init = phi i64 [ 0, %.lr.ph316.preheader.10 ], [ %indvars.iv.next.10.3, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.10.loopexit.unr-lcssa ]
  %.060314.10.epil.init = phi float [ 0.000000e+00, %.lr.ph316.preheader.10 ], [ %i.rj, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.10.loopexit.unr-lcssa ]
  %lcmp.mod1268 = icmp ne i64 %xtraiter1264, 0
  call void @llvm.assume(i1 %lcmp.mod1268)
  br label %.lr.ph316.10.epil

.lr.ph316.10.epil:                                ; preds = %.lr.ph316.10.epil, %.lr.ph316.10.epil.preheader
  %indvars.iv.10.epil = phi i64 [ %indvars.iv.10.epil.init, %.lr.ph316.10.epil.preheader ], [ %indvars.iv.next.10.epil, %.lr.ph316.10.epil ] ; 3 uses
  %.060314.10.epil = phi float [ %.060314.10.epil.init, %.lr.ph316.10.epil.preheader ], [ %i.rp, %.lr.ph316.10.epil ]
  %epil.iter1265 = phi i64 [ 0, %.lr.ph316.10.epil.preheader ], [ %epil.iter1265.next, %.lr.ph316.10.epil ]
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0182.0610639, i64 %indvars.iv.10.epil
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !20
  %.idx578.epil = mul nuw nsw i64 %indvars.iv.10.epil, 44
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 %.idx578.epil
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 40
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !20
  %i.rp = call float @llvm.fmuladd.f32(float %i.rl, float %i.ro, float %.060314.10.epil) ; 2 uses
  %indvars.iv.next.10.epil = add nuw nsw i64 %indvars.iv.10.epil, 1
  %epil.iter1265.next = add i64 %epil.iter1265, 1 ; 2 uses
  %epil.iter1265.cmp.not = icmp eq i64 %epil.iter1265.next, %xtraiter1264
  br i1 %epil.iter1265.cmp.not, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.10, label %.lr.ph316.10.epil, !llvm.loop !123

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.10:      ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.10.loopexit.unr-lcssa, %.lr.ph316.10.epil, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.9.thread
  %i.rq = phi float [ %11, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.9.thread ], [ %i.qc, %.lr.ph316.10.epil ], [ %i.qc, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.10.loopexit.unr-lcssa ] ; 2 uses
  %i.rr = phi float [ %10, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.9.thread ], [ %i.ot, %.lr.ph316.10.epil ], [ %i.ot, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.10.loopexit.unr-lcssa ] ; 2 uses
  %.060.lcssa.10 = phi float [ 0.000000e+00, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.9.thread ], [ %i.rj, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.10.loopexit.unr-lcssa ], [ %i.rp, %.lr.ph316.10.epil ]
  %i.rs = phi <8 x float> [ %i.ap, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.9.thread ], [ %i.qk, %.lr.ph316.10.epil ], [ %i.qk, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.10.loopexit.unr-lcssa ] ; 8 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !20
  %i.rv = fadd float %.065.lcssa641, %i.ru
  %i.rw = call float @llvm.fmuladd.f32(float %.060.lcssa.10, float -2.000000e+00, float %i.rv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.rx = extractelement <8 x float> %i.rs, i64 0 ; 2 uses
  %.inv = fcmp one float %i.rx, +inf
  %.1 = select i1 %.inv, float %i.rx, float +inf  ; 2 uses
  %i.ry = extractelement <8 x float> %i.rs, i64 1 ; 2 uses
  %i.rz = fcmp olt float %i.ry, %.1               ; 2 uses
  %storemerge = zext i1 %i.rz to i64
  %.1.1 = select i1 %i.rz, float %i.ry, float %.1 ; 2 uses
  %i.sa = extractelement <8 x float> %i.rs, i64 2 ; 2 uses
  %i.sb = fcmp olt float %i.sa, %.1.1             ; 2 uses
  %storemerge579 = select i1 %i.sb, i64 2, i64 %storemerge
  %.1.2 = select i1 %i.sb, float %i.sa, float %.1.1 ; 2 uses
  %i.sc = extractelement <8 x float> %i.rs, i64 3 ; 2 uses
  %i.sd = fcmp olt float %i.sc, %.1.2             ; 2 uses
  %storemerge580 = select i1 %i.sd, i64 3, i64 %storemerge579
  %.1.3 = select i1 %i.sd, float %i.sc, float %.1.2 ; 2 uses
  %i.se = extractelement <8 x float> %i.rs, i64 4 ; 2 uses
  %i.sf = fcmp olt float %i.se, %.1.3             ; 2 uses
  %storemerge581 = select i1 %i.sf, i64 4, i64 %storemerge580
  %.1.4 = select i1 %i.sf, float %i.se, float %.1.3 ; 2 uses
  %i.sg = extractelement <8 x float> %i.rs, i64 5 ; 2 uses
  %i.sh = fcmp olt float %i.sg, %.1.4             ; 2 uses
  %storemerge582 = select i1 %i.sh, i64 5, i64 %storemerge581
  %.1.5 = select i1 %i.sh, float %i.sg, float %.1.4 ; 2 uses
  %i.si = extractelement <8 x float> %i.rs, i64 6 ; 2 uses
  %i.sj = fcmp olt float %i.si, %.1.5             ; 2 uses
  %storemerge583 = select i1 %i.sj, i64 6, i64 %storemerge582
  %.1.6 = select i1 %i.sj, float %i.si, float %.1.5 ; 2 uses
  %i.sk = extractelement <8 x float> %i.rs, i64 7 ; 2 uses
  %i.sl = fcmp olt float %i.sk, %.1.6             ; 2 uses
  %storemerge584 = select i1 %i.sl, i64 7, i64 %storemerge583
  %.1.7 = select i1 %i.sl, float %i.sk, float %.1.6 ; 2 uses
  %i.sm = fcmp olt float %i.rr, %.1.7             ; 2 uses
  %storemerge585 = select i1 %i.sm, i64 8, i64 %storemerge584
  %.1.8 = select i1 %i.sm, float %i.rr, float %.1.7 ; 2 uses
  %i.sn = fcmp olt float %i.rq, %.1.8             ; 2 uses
  %storemerge586 = select i1 %i.sn, i64 9, i64 %storemerge585
  %.1.9 = select i1 %i.sn, float %i.rq, float %.1.8
  %i.so = fcmp olt float %i.rw, %.1.9
  %storemerge587 = select i1 %i.so, i64 10, i64 %storemerge586
  store i64 %storemerge587, ptr %i.a, align 8, !tbaa !51
  %i.sp = invoke noalias noundef nonnull dereferenceable(44) ptr @_Znwm(i64 noundef 44) #19
          to label %bb.q unwind label %bb.u       ; 4 uses

.lr.ph316:                                        ; preds = %.lr.ph316, %.lr.ph316.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph316.preheader.new ], [ %indvars.iv.next.31199, %.lr.ph316 ] ; 6 uses
  %.060314 = phi float [ 0.000000e+00, %.lr.ph316.preheader.new ], [ %i.tj, %.lr.ph316 ]
  %niter = phi i64 [ 0, %.lr.ph316.preheader.new ], [ %niter.next.3, %.lr.ph316 ]
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0182.0610639, i64 %indvars.iv
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !20
  %.idx = mul nuw nsw i64 %indvars.iv, 44
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 %.idx
  %i.st = load float, ptr %i.ss, align 4, !tbaa !20
  %i.su = call float @llvm.fmuladd.f32(float %i.sr, float %i.st, float %.060314)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0182.0610639, i64 %indvars.iv.next
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !20
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next, 44
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 %.idx.1
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !20
  %i.sz = call float @llvm.fmuladd.f32(float %i.sw, float %i.sy, float %i.su)
  %indvars.iv.next.11191 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0182.0610639, i64 %indvars.iv.next.11191
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !20
  %.idx.2 = mul nuw nsw i64 %indvars.iv.next.11191, 44
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 %.idx.2
  %i.td = load float, ptr %i.tc, align 4, !tbaa !20
  %i.te = call float @llvm.fmuladd.f32(float %i.tb, float %i.td, float %i.sz)
  %indvars.iv.next.21195 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0182.0610639, i64 %indvars.iv.next.21195
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !20
  %.idx.3 = mul nuw nsw i64 %indvars.iv.next.21195, 44
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 %.idx.3
  %i.ti = load float, ptr %i.th, align 4, !tbaa !20
  %i.tj = call float @llvm.fmuladd.f32(float %i.tg, float %i.ti, float %i.te) ; 3 uses
  %indvars.iv.next.31199 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph316.preheader.1.unr-lcssa, label %.lr.ph316, !llvm.loop !113

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.sp, i8 0, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.tk = invoke noundef i64 @_ZN5faiss34fvec_L2sqr_ny_nearest_y_transposedEPfPKfS2_S2_mmm(ptr noundef nonnull %i.sp, ptr noundef %.sroa.0182.0610639, ptr noundef %.sroa.0172.0, ptr noundef nonnull %i.ai, i64 noundef %i.f, i64 noundef 11, i64 noundef 11)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  store i64 %i.tk, ptr %i.b, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.tl = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !128
  %i.tm = icmp eq i64 %i.tk, %i.tl
  br i1 %i.tm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.w

bb.t:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.w

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.s, %bb.t
  %i.tn = load i8, ptr %3, align 8, !tbaa !42, !range !43, !noundef !44
  %i.to = trunc nuw i8 %i.tn to i1                ; 2 uses
  br i1 %i.to, label %bb.ai, label %bb.x

bb.u:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.10
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit143

bb.v:                                             ; preds = %bb.q
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit141

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.tr = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.x:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.ts = load ptr, ptr %4, align 8, !tbaa !46
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %i.tu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.tt, ptr noundef nonnull @.str.34, i64 noundef 63)
          to label %_ZN7testing7MessagelsIA64_cEERS0_RKT_.exit unwind label %bb.ad ; 0 uses

_ZN7testing7MessagelsIA64_cEERS0_RKT_.exit:       ; preds = %bb.y
  %i.tv = load ptr, ptr %4, align 8, !tbaa !46
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.tx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.tw, i32 noundef %i.e)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit unwind label %bb.ad ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA64_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.ty = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ty, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.z

bb.z:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.z, %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.ua = phi ptr [ %i.tz, %bb.z ], [ @.str.19, %_ZN7testing7MessagelsIiEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 212, ptr noundef %i.ua)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ub = load ptr, ptr %4, align 8, !tbaa !46    ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.ub, null
  br i1 %.not.i.i127, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ab
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !49
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ue = load ptr, ptr %i.ud, align 8
  call void %i.ue(ptr noundef nonnull align 8 dereferenceable(128) %i.ub) #16, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ai

bb.ac:                                            ; preds = %bb.x
  %i.uf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit130

bb.ad:                                            ; preds = %_ZN7testing7MessagelsIA64_cEERS0_RKT_.exit, %bb.y
  %i.ug = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.uh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.aa
  %i.ui = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #16
end_hunk_1

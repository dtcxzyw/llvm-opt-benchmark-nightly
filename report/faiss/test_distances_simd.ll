Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_distances_simd?download=true
inline.NumInlined: 828
inline.NumDeleted: 269
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN31TestFvecInnerProductsNy_D2_Test8TestBodyEv:bb.a
_ZNSt6vectorIfSaIfEED2Ev.exit126:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit124, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.not.i.i.i127 = icmp eq ptr %.sroa.0145.0514, null
  br i1 %.not.i.i.i127, label %_ZNSt6vectorIfSaIfEED2Ev.exit128, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit126
  %i.fe = ptrtoint ptr %.sroa.16.0523 to i64
  %i.ff = sub i64 %i.fe, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0145.0514, i64 noundef %i.ff) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit128

_ZNSt6vectorIfSaIfEED2Ev.exit128:                 ; preds = %bb.aj, %_ZNSt6vectorIfSaIfEED2Ev.exit126
  %.036.add = add nuw nsw i64 %.036.idx329, 4     ; 2 uses
  %.not55 = icmp eq i64 %.036.add, 28
  br i1 %.not55, label %.critedge71, label %bb.c

.body:                                            ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, %_ZN7testing7MessageD2Ev.exit117
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit117 ], [ %i.cu, %bb.q ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.ak

bb.ak:                                            ; preds = %.body, %bb.p
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body ], [ %i.ct, %bb.p ] ; 2 uses
  %i.fg = load ptr, ptr %6, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i129 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i129, label %_ZNSt6vectorIfSaIfEED2Ev.exit130, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fh = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.fg to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fk) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit130

_ZNSt6vectorIfSaIfEED2Ev.exit130:                 ; preds = %bb.al, %bb.ak, %bb.o
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cs, %bb.o ], [ %.pn.pn.pn.pn.pn, %bb.ak ], [ %.pn.pn.pn.pn.pn, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit130, %bb.n
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit130 ], [ %i.cr, %bb.n ] ; 2 uses
  %i.fl = load ptr, ptr %5, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i131 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i131, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fm = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fl to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fp) #17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %.loopexit.split-lp182, %.loopexit181
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.an ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.am ], [ %lpad.loopexit183, %.loopexit181 ], [ %lpad.loopexit.split-lp184, %.loopexit.split-lp182 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.not.i.i.i133 = icmp eq ptr %.sroa.0145.0514, null
  br i1 %.not.i.i.i133, label %_ZNSt6vectorIfSaIfEED2Ev.exit134, label %bb.ap

bb.ap:                                            ; preds = %.thread540, %bb.ao
  %.pn64549 = phi { ptr, i32 } [ %i.ax, %.thread540 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ao ]
  %.sroa.0145.0515547 = phi ptr [ %i.ac, %.thread540 ], [ %.sroa.0145.0514, %bb.ao ]
  %.sroa.16.0524546 = phi ptr [ %i.ad, %.thread540 ], [ %.sroa.16.0523, %bb.ao ]
  %i.fq = phi i64 [ %i.ai, %.thread540 ], [ %i.am, %bb.ao ]
  %i.fr = ptrtoint ptr %.sroa.16.0524546 to i64
  %i.fs = sub i64 %i.fr, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0145.0515547, i64 noundef %i.fs) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit134

_ZNSt6vectorIfSaIfEED2Ev.exit114:                 ; preds = %bb.z, %_ZNSt6vectorIfSaIfEED2Ev.exit112
  %.not.i.i.i135 = icmp eq ptr %.sroa.0162.0500, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorIfSaIfEED2Ev.exit136, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit114
  %i.ft = sub i64 %.sroa.16170.0499, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0162.0500, i64 noundef %i.ft) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit136

.critedge71:                                      ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit128
  %.not.i.i.i137 = icmp eq ptr %.sroa.0162.0500, null
  br i1 %.not.i.i.i137, label %_ZNSt6vectorIfSaIfEED2Ev.exit138, label %bb.ar

bb.ar:                                            ; preds = %.critedge71
  %i.fu = sub i64 %.sroa.16170.0499, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0162.0500, i64 noundef %i.fu) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit138

_ZNSt6vectorIfSaIfEED2Ev.exit138:                 ; preds = %bb.ar, %.critedge71
  %.054.add = add nuw nsw i64 %.054.idx330, 4     ; 2 uses
  %.not = icmp eq i64 %.054.add, 16
  br i1 %.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit136, label %bb.b

_ZNSt6vectorIfSaIfEED2Ev.exit134:                 ; preds = %.loopexit180, %.loopexit.split-lp, %bb.ao, %bb.ap
  %.pn67 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn64549, %bb.ap ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ao ], [ %lpad.loopexit, %.loopexit180 ] ; 2 uses
  %.not.i.i.i139 = icmp eq ptr %.sroa.0162.0500, null
  br i1 %.not.i.i.i139, label %_ZNSt6vectorIfSaIfEED2Ev.exit140, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit134.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit134
  %.pn67556 = phi { ptr, i32 } [ %i.w, %_ZNSt6vectorIfSaIfEED2Ev.exit134.thread ], [ %.pn67, %_ZNSt6vectorIfSaIfEED2Ev.exit134 ]
  %.sroa.16170.0498555 = phi i64 [ %i.p, %_ZNSt6vectorIfSaIfEED2Ev.exit134.thread ], [ %.sroa.16170.0499, %_ZNSt6vectorIfSaIfEED2Ev.exit134 ]
  %.sroa.0162.0501554 = phi ptr [ %i.n, %_ZNSt6vectorIfSaIfEED2Ev.exit134.thread ], [ %.sroa.0162.0500, %_ZNSt6vectorIfSaIfEED2Ev.exit134 ]
  %i.fv = phi i64 [ %i.q, %_ZNSt6vectorIfSaIfEED2Ev.exit134.thread ], [ %i.r, %_ZNSt6vectorIfSaIfEED2Ev.exit134 ]
  %i.fw = sub i64 %.sroa.16170.0498555, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0162.0501554, i64 noundef %i.fw) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit140

_ZNSt6vectorIfSaIfEED2Ev.exit140:                 ; preds = %bb.as, %_ZNSt6vectorIfSaIfEED2Ev.exit134
  %.pn67557 = phi { ptr, i32 } [ %.pn67556, %bb.as ], [ %.pn67, %_ZNSt6vectorIfSaIfEED2Ev.exit134 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn67557

_ZNSt6vectorIfSaIfEED2Ev.exit136:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit138, %bb.aq, %_ZNSt6vectorIfSaIfEED2Ev.exit114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN52TestFvecL2sqr_distances_L2_squared_y_transposed_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN52TestFvecL2sqr_distances_L2_squared_y_transposed_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::linear_congruential_engine", align 8 ; 16 uses
  %2 = alloca %"class.std::uniform_int_distribution", align 4 ; 29 uses
  %3 = alloca %"class.std::vector", align 8       ; 11 uses
  %4 = alloca %"class.std::vector", align 8       ; 11 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 9 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store i64 123, ptr %1, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 32, ptr %i.a, align 4, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit129, %bb.a
  %.072.idx302 = phi i64 [ 0, %bb.a ], [ %.072.add, %_ZNSt6vectorIfSaIfEED2Ev.exit129 ] ; 2 uses
  %.072.ptr = getelementptr inbounds nuw i8, ptr @constinit.31, i64 %.072.idx302
  %i.g = load i32, ptr %.072.ptr, align 4, !tbaa !18 ; 17 uses
  %i.h = sext i32 %i.g to i64                     ; 4 uses
  %i.i = icmp slt i32 %i.g, 0
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %i.g, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit96, label %.noexc87

.noexc87:                                         ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 2
  %i.k = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #19 ; 8 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.h ; 3 uses
  store float 0.000000e+00, ptr %i.k, align 4, !tbaa !20
  %i.m = getelementptr i8, ptr %i.k, i64 4        ; 3 uses
  %i.n = add nsw i64 %i.h, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %.noexc87
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 2   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc87, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.0.i.i.i.i.i590 = phi ptr [ %i.p, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %i.m, %.noexc87 ]
  %i.q = ptrtoint ptr %i.k to i64                 ; 4 uses
  %i.r = ptrtoint ptr %.0.i.i.i.i.i590 to i64
  %i.s = sub i64 %i.r, %i.q
  %i.t = ashr exact i64 %i.s, 2
  br label %.lr.ph

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i88: ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit
  %i.u = mul nuw nsw i32 %i.g, 11
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2                  ; 3 uses
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19
          to label %.noexc95 unwind label %bb.d   ; 5 uses

.noexc95:                                         ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i88
  store float 0.000000e+00, ptr %i.x, align 4, !tbaa !20
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  %.idx.i.i.i.i.i.i.i91 = add nsw i64 %i.w, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.y, i8 0, i64 %.idx.i.i.i.i.i.i.i91, i1 false), !tbaa !20
  %i.z = getelementptr i8, ptr %i.x, i64 %i.w
  %i.aa = ptrtoint ptr %8 to i64
  %i.ab = ptrtoint ptr %i.z to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit96

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit
  %.055291 = phi i64 [ %i.ag, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.056290 = phi float [ %i.af, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.ac = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit unwind label %bb.c

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit: ; preds = %.lr.ph
  %i.ad = sitofp i32 %i.ac to float               ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.055291
  store float %i.ad, ptr %i.ae, align 4, !tbaa !20
  %i.af = call float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %.056290) ; 2 uses
  %i.ag = add nuw i64 %.055291, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.t
  br i1 %exitcond.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i88, label %.lr.ph, !llvm.loop !91

bb.c:                                             ; preds = %.lr.ph
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit137.thread

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit96:             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc95
  %.056.lcssa596 = phi float [ %i.af, %.noexc95 ], [ 0.000000e+00, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 13 uses
  %.sroa.16169.0545595 = phi ptr [ %i.l, %.noexc95 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0160.0564594 = phi ptr [ %i.k, %.noexc95 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 60 uses
  %i.ai = phi i64 [ %i.q, %.noexc95 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0150.0 = phi ptr [ %i.x, %.noexc95 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 73 uses
  %.sroa.16.0 = phi i64 [ %i.aa, %.noexc95 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.0.i.i.i.i.i92 = phi i64 [ %i.ab, %.noexc95 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.aj = invoke noalias noundef nonnull dereferenceable(44) ptr @_Znwm(i64 noundef 44) #19
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader unwind label %bb.e ; 30 uses

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.aj, i8 0, i64 44, i1 false), !tbaa !20
  %i.ak = ptrtoint ptr %.sroa.0150.0 to i64       ; 3 uses
  %.not304 = icmp eq i64 %.0.i.i.i.i.i92, %i.ak
  br i1 %.not304, label %.split, label %.preheader176.preheader

.preheader176.preheader:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.al = sub i64 %.0.i.i.i.i.i92, %i.ak
  %i.am = ashr exact i64 %i.al, 2                 ; 11 uses
  br label %bb.p

.split:                                           ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.10, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.an = invoke noalias noundef nonnull dereferenceable(44) ptr @_Znwm(i64 noundef 44) #19
          to label %.noexc104 unwind label %bb.q  ; 17 uses

.noexc104:                                        ; preds = %.split
  store ptr %i.an, ptr %3, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 44 ; 2 uses
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.an, i8 0, i64 44, i1 false), !tbaa !20
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !27
  br i1 %.not.i.i.i.i, label %._crit_edge299.9.thread, label %.lr.ph298.preheader

._crit_edge299.9.thread:                          ; preds = %.noexc104
  %i.ap = load <4 x float>, ptr %i.aj, align 4, !tbaa !20
  %i.aq = insertelement <4 x float> poison, float %.056.lcssa596, i64 0
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.as = fadd <4 x float> %i.ar, %i.ap
  store <4 x float> %i.as, ptr %i.an, align 4, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.av = load <4 x float>, ptr %i.at, align 4, !tbaa !20
  %i.aw = fadd <4 x float> %i.ar, %i.av
  store <4 x float> %i.aw, ptr %i.au, align 4, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.az = load <2 x float>, ptr %i.ax, align 4, !tbaa !20
  %i.ba = insertelement <2 x float> poison, float %.056.lcssa596, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fadd <2 x float> %i.bb, %i.az
  store <2 x float> %i.bc, ptr %i.ay, align 4, !tbaa !20
  br label %._crit_edge299.10

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i88
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit137.thread

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit96
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

._crit_edge:                                      ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.1, %._crit_edge
  %.053293.1 = phi i64 [ 0, %._crit_edge ], [ %i.bl, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.1 ] ; 2 uses
  %i.bg = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.1 unwind label %.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.1: ; preds = %bb.f
  %i.bh = sitofp i32 %i.bg to float               ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0150.0, i64 %.053293.1
  store float %i.bh, ptr %i.bi, align 4, !tbaa !20
  %i.bj = load float, ptr %i.bf, align 4, !tbaa !20
  %i.bk = call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bj)
  store float %i.bk, ptr %i.bf, align 4, !tbaa !20
  %i.bl = add nuw i64 %.053293.1, 1               ; 2 uses
  %exitcond413.1.not = icmp eq i64 %i.bl, %i.am
  br i1 %exitcond413.1.not, label %._crit_edge.1, label %bb.f, !llvm.loop !92

._crit_edge.1:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.2, %._crit_edge.1
  %.053293.2 = phi i64 [ 0, %._crit_edge.1 ], [ %i.bs, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.2 ] ; 2 uses
  %i.bn = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.2: ; preds = %bb.g
  %i.bo = sitofp i32 %i.bn to float               ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0150.0, i64 %.053293.2
  store float %i.bo, ptr %i.bp, align 4, !tbaa !20
  %i.bq = load float, ptr %i.bm, align 4, !tbaa !20
  %i.br = call float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.bq)
  store float %i.br, ptr %i.bm, align 4, !tbaa !20
  %i.bs = add nuw i64 %.053293.2, 1               ; 2 uses
  %exitcond413.2.not = icmp eq i64 %i.bs, %i.am
  br i1 %exitcond413.2.not, label %._crit_edge.2, label %bb.g, !llvm.loop !92

._crit_edge.2:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.3, %._crit_edge.2
  %.053293.3 = phi i64 [ 0, %._crit_edge.2 ], [ %i.bz, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.3 ] ; 2 uses
  %i.bu = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.3: ; preds = %bb.h
  %i.bv = sitofp i32 %i.bu to float               ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0150.0, i64 %.053293.3
  store float %i.bv, ptr %i.bw, align 4, !tbaa !20
  %i.bx = load float, ptr %i.bt, align 4, !tbaa !20
  %i.by = call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.bx)
  store float %i.by, ptr %i.bt, align 4, !tbaa !20
  %i.bz = add nuw i64 %.053293.3, 1               ; 2 uses
  %exitcond413.3.not = icmp eq i64 %i.bz, %i.am
  br i1 %exitcond413.3.not, label %._crit_edge.3, label %bb.h, !llvm.loop !92

._crit_edge.3:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.4, %._crit_edge.3
  %.053293.4 = phi i64 [ 0, %._crit_edge.3 ], [ %i.cg, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.4 ] ; 2 uses
  %i.cb = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.4: ; preds = %bb.i
  %i.cc = sitofp i32 %i.cb to float               ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0150.0, i64 %.053293.4
  store float %i.cc, ptr %i.cd, align 4, !tbaa !20
  %i.ce = load float, ptr %i.ca, align 4, !tbaa !20
  %i.cf = call float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %i.ce)
  store float %i.cf, ptr %i.ca, align 4, !tbaa !20
  %i.cg = add nuw i64 %.053293.4, 1               ; 2 uses
  %exitcond413.4.not = icmp eq i64 %i.cg, %i.am
  br i1 %exitcond413.4.not, label %._crit_edge.4, label %bb.i, !llvm.loop !92

._crit_edge.4:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aj, i64 20 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.5, %._crit_edge.4
  %.053293.5 = phi i64 [ 0, %._crit_edge.4 ], [ %i.cn, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.5 ] ; 2 uses
  %i.ci = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.5: ; preds = %bb.j
  %i.cj = sitofp i32 %i.ci to float               ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0150.0, i64 %.053293.5
  store float %i.cj, ptr %i.ck, align 4, !tbaa !20
  %i.cl = load float, ptr %i.ch, align 4, !tbaa !20
  %i.cm = call float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.cl)
  store float %i.cm, ptr %i.ch, align 4, !tbaa !20
  %i.cn = add nuw i64 %.053293.5, 1               ; 2 uses
  %exitcond413.5.not = icmp eq i64 %i.cn, %i.am
  br i1 %exitcond413.5.not, label %._crit_edge.5, label %bb.j, !llvm.loop !92

._crit_edge.5:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.5
  %i.co = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.6, %._crit_edge.5
  %.053293.6 = phi i64 [ 0, %._crit_edge.5 ], [ %i.cu, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.6 ] ; 2 uses
  %i.cp = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.6: ; preds = %bb.k
  %i.cq = sitofp i32 %i.cp to float               ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0150.0, i64 %.053293.6
  store float %i.cq, ptr %i.cr, align 4, !tbaa !20
  %i.cs = load float, ptr %i.co, align 4, !tbaa !20
  %i.ct = call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.cs)
  store float %i.ct, ptr %i.co, align 4, !tbaa !20
  %i.cu = add nuw i64 %.053293.6, 1               ; 2 uses
  %exitcond413.6.not = icmp eq i64 %i.cu, %i.am
  br i1 %exitcond413.6.not, label %._crit_edge.6, label %bb.k, !llvm.loop !92

._crit_edge.6:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.6
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aj, i64 28 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.7, %._crit_edge.6
  %.053293.7 = phi i64 [ 0, %._crit_edge.6 ], [ %i.db, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.7 ] ; 2 uses
  %i.cw = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.7: ; preds = %bb.l
  %i.cx = sitofp i32 %i.cw to float               ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0150.0, i64 %.053293.7
  store float %i.cx, ptr %i.cy, align 4, !tbaa !20
  %i.cz = load float, ptr %i.cv, align 4, !tbaa !20
  %i.da = call float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.cz)
  store float %i.da, ptr %i.cv, align 4, !tbaa !20
  %i.db = add nuw i64 %.053293.7, 1               ; 2 uses
  %exitcond413.7.not = icmp eq i64 %i.db, %i.am
  br i1 %exitcond413.7.not, label %._crit_edge.7, label %bb.l, !llvm.loop !92

._crit_edge.7:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit107.7
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN52TestFvecL2sqr_distances_L2_squared_y_transposed_Test8TestBodyEv:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.vb, i64 noundef %i.vf) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.vg = load ptr, ptr %3, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i122 = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i122, label %_ZNSt6vectorIfSaIfEED2Ev.exit125, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.vh = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.vi = ptrtoint ptr %i.vh to i64
  %i.vj = ptrtoint ptr %i.vg to i64
  %i.vk = sub i64 %i.vi, %i.vj
  call void @_ZdlPvm(ptr noundef nonnull %i.vg, i64 noundef %i.vk) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit125

_ZNSt6vectorIfSaIfEED2Ev.exit125:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 44) #17
  %.not.i.i.i126 = icmp eq ptr %.sroa.0150.0, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIfSaIfEED2Ev.exit127, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %i.vl = sub i64 %.sroa.16.0, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0150.0, i64 noundef %i.vl) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit127

_ZNSt6vectorIfSaIfEED2Ev.exit127:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit125, %bb.an
  %.not.i.i.i128 = icmp eq ptr %.sroa.0160.0564594, null
  br i1 %.not.i.i.i128, label %_ZNSt6vectorIfSaIfEED2Ev.exit129, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit127
  %i.vm = ptrtoint ptr %.sroa.16169.0545595 to i64
  %i.vn = sub i64 %i.vm, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0160.0564594, i64 noundef %i.vn) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit129

_ZNSt6vectorIfSaIfEED2Ev.exit129:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit127, %bb.ao
  %.072.add = add nuw nsw i64 %.072.idx302, 4     ; 2 uses
  %.not = icmp ne i64 %.072.add, 36
  %or.cond.not = select i1 %i.tw, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.av

bb.ap:                                            ; preds = %_ZN7testing7MessageD2Ev.exit120, %bb.x
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit120 ], [ %i.tz, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ap ], [ %i.ty, %bb.w ] ; 2 uses
  %i.vo = load ptr, ptr %4, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i130 = icmp eq ptr %i.vo, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIfSaIfEED2Ev.exit131, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.vp = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.vq = ptrtoint ptr %i.vp to i64
  %i.vr = ptrtoint ptr %i.vo to i64
  %i.vs = sub i64 %i.vq, %i.vr
  call void @_ZdlPvm(ptr noundef nonnull %i.vo, i64 noundef %i.vs) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit131

_ZNSt6vectorIfSaIfEED2Ev.exit131:                 ; preds = %bb.ar, %bb.aq, %bb.v
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.tx, %bb.v ], [ %.pn.pn.pn.pn.pn, %bb.aq ], [ %.pn.pn.pn.pn.pn, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.vt = load ptr, ptr %3, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i132 = icmp eq ptr %i.vt, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorIfSaIfEED2Ev.exit133, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit131
  %i.vu = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.vv = ptrtoint ptr %i.vu to i64
  %i.vw = ptrtoint ptr %i.vt to i64
  %i.vx = sub i64 %i.vv, %i.vw
  call void @_ZdlPvm(ptr noundef nonnull %i.vt, i64 noundef %i.vx) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit133

_ZNSt6vectorIfSaIfEED2Ev.exit133:                 ; preds = %bb.as, %_ZNSt6vectorIfSaIfEED2Ev.exit131, %bb.q
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ee, %bb.q ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit131 ], [ %.pn.pn.pn.pn.pn.pn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit135

_ZNSt6vectorIfSaIfEED2Ev.exit135:                 ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt6vectorIfSaIfEED2Ev.exit133
  %.pn80 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit133 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit428, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit437, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit445, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit454, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit462, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit471, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit479, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit488, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit496, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp497, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 44) #17
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit135, %bb.e
  %.pn80.pn = phi { ptr, i32 } [ %.pn80, %_ZNSt6vectorIfSaIfEED2Ev.exit135 ], [ %i.be, %bb.e ] ; 2 uses
  %.not.i.i.i136 = icmp eq ptr %.sroa.0150.0, null
  br i1 %.not.i.i.i136, label %_ZNSt6vectorIfSaIfEED2Ev.exit137, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.vy = ptrtoint ptr %.sroa.0150.0 to i64
  %i.vz = sub i64 %.sroa.16.0, %i.vy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0150.0, i64 noundef %i.vz) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit137

_ZNSt6vectorIfSaIfEED2Ev.exit137:                 ; preds = %bb.at, %bb.au
  %.not.i.i.i138 = icmp eq ptr %.sroa.0160.0564594, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorIfSaIfEED2Ev.exit139, label %_ZNSt6vectorIfSaIfEED2Ev.exit137.thread

_ZNSt6vectorIfSaIfEED2Ev.exit137.thread:          ; preds = %bb.d, %bb.c, %_ZNSt6vectorIfSaIfEED2Ev.exit137
  %.pn84620 = phi { ptr, i32 } [ %.pn80.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit137 ], [ %i.bd, %bb.d ], [ %i.ah, %bb.c ]
  %.sroa.16169.0546619 = phi ptr [ %.sroa.16169.0545595, %_ZNSt6vectorIfSaIfEED2Ev.exit137 ], [ %i.l, %bb.d ], [ %i.l, %bb.c ]
  %.sroa.0160.0565618 = phi ptr [ %.sroa.0160.0564594, %_ZNSt6vectorIfSaIfEED2Ev.exit137 ], [ %i.k, %bb.d ], [ %i.k, %bb.c ]
  %i.wa = phi i64 [ %i.ai, %_ZNSt6vectorIfSaIfEED2Ev.exit137 ], [ %i.q, %bb.d ], [ %i.q, %bb.c ]
  %i.wb = ptrtoint ptr %.sroa.16169.0546619 to i64
  %i.wc = sub i64 %i.wb, %i.wa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0160.0565618, i64 noundef %i.wc) #17
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
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !20
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.t
  %.idx.i.i.i.i.i.i.i101 = add nsw i64 %i.u, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %.idx.i.i.i.i.i.i.i101, i1 false), !tbaa !20
  %i.x = getelementptr i8, ptr %i.v, i64 %i.u
  %i.y = ptrtoint ptr %6 to i64
  %i.z = ptrtoint ptr %i.x to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit106

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit
  %.064309 = phi i64 [ %i.ae, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.065308 = phi float [ %i.ad, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.aa = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit unwind label %bb.c

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit: ; preds = %.lr.ph
  %i.ab = sitofp i32 %i.aa to float               ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.064309
  store float %i.ab, ptr %i.ac, align 4, !tbaa !20
  %i.ad = call float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %.065308) ; 2 uses
  %i.ae = add nuw i64 %.064309, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.r
  br i1 %exitcond.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i98, label %.lr.ph, !llvm.loop !110

bb.c:                                             ; preds = %.lr.ph
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit147.thread

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit106:            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc105
  %.065.lcssa641 = phi float [ %i.ad, %.noexc105 ], [ 0.000000e+00, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 14 uses
  %.sroa.16191.0592640 = phi ptr [ %i.j, %.noexc105 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0182.0610639 = phi ptr [ %i.i, %.noexc105 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 60 uses
  %i.ag = phi i64 [ %i.o, %.noexc105 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0172.0 = phi ptr [ %i.v, %.noexc105 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 73 uses
  %.sroa.16.0 = phi i64 [ %i.y, %.noexc105 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.0.i.i.i.i.i102 = phi i64 [ %i.z, %.noexc105 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.ah = invoke noalias noundef nonnull dereferenceable(44) ptr @_Znwm(i64 noundef 44) #19
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader unwind label %bb.e ; 30 uses

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.ah, i8 0, i64 44, i1 false), !tbaa !20
  %i.ai = ptrtoint ptr %.sroa.0172.0 to i64       ; 3 uses
  %.not324 = icmp eq i64 %.0.i.i.i.i.i102, %i.ai
  br i1 %.not324, label %.lr.ph.i.i.i.i.i.i.i.i.i111.preheader, label %.preheader198.preheader

.preheader198.preheader:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.aj = sub i64 %.0.i.i.i.i.i102, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2                 ; 11 uses
  br label %bb.p

.lr.ph.i.i.i.i.i.i.i.i.i111.preheader:            ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.10, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.9.thread, label %.lr.ph316.preheader

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.9.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i111.preheader
  %i.al = load <8 x float>, ptr %i.ah, align 4, !tbaa !20
  %i.am = insertelement <8 x float> poison, float %.065.lcssa641, i64 0
  %i.an = shufflevector <8 x float> %i.am, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ao = fadd <8 x float> %i.an, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !20
  %i.ar = fadd float %.065.lcssa641, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  %i.at = load float, ptr %i.as, align 4, !tbaa !20
  %i.au = fadd float %.065.lcssa641, %i.at
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit115.10

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i98
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit147.thread

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit106
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

._crit_edge:                                      ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.1, %._crit_edge
  %.062311.1 = phi i64 [ 0, %._crit_edge ], [ %i.bd, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.1 ] ; 2 uses
  %i.ay = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.1 unwind label %.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.1: ; preds = %bb.f
  %i.az = sitofp i32 %i.ay to float               ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0172.0, i64 %.062311.1
  store float %i.az, ptr %i.ba, align 4, !tbaa !20
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !20
  %i.bc = call float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bb)
  store float %i.bc, ptr %i.ax, align 4, !tbaa !20
  %i.bd = add nuw i64 %.062311.1, 1               ; 2 uses
  %exitcond444.1.not = icmp eq i64 %i.bd, %i.ak
  br i1 %exitcond444.1.not, label %._crit_edge.1, label %bb.f, !llvm.loop !111

._crit_edge.1:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.2, %._crit_edge.1
  %.062311.2 = phi i64 [ 0, %._crit_edge.1 ], [ %i.bk, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.2 ] ; 2 uses
  %i.bf = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.2: ; preds = %bb.g
  %i.bg = sitofp i32 %i.bf to float               ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0172.0, i64 %.062311.2
  store float %i.bg, ptr %i.bh, align 4, !tbaa !20
  %i.bi = load float, ptr %i.be, align 4, !tbaa !20
  %i.bj = call float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bi)
  store float %i.bj, ptr %i.be, align 4, !tbaa !20
  %i.bk = add nuw i64 %.062311.2, 1               ; 2 uses
  %exitcond444.2.not = icmp eq i64 %i.bk, %i.ak
  br i1 %exitcond444.2.not, label %._crit_edge.2, label %bb.g, !llvm.loop !111

._crit_edge.2:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 12 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.3, %._crit_edge.2
  %.062311.3 = phi i64 [ 0, %._crit_edge.2 ], [ %i.br, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.3 ] ; 2 uses
  %i.bm = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.3: ; preds = %bb.h
  %i.bn = sitofp i32 %i.bm to float               ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0172.0, i64 %.062311.3
  store float %i.bn, ptr %i.bo, align 4, !tbaa !20
  %i.bp = load float, ptr %i.bl, align 4, !tbaa !20
  %i.bq = call float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bp)
  store float %i.bq, ptr %i.bl, align 4, !tbaa !20
  %i.br = add nuw i64 %.062311.3, 1               ; 2 uses
  %exitcond444.3.not = icmp eq i64 %i.br, %i.ak
  br i1 %exitcond444.3.not, label %._crit_edge.3, label %bb.h, !llvm.loop !111

._crit_edge.3:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.4, %._crit_edge.3
  %.062311.4 = phi i64 [ 0, %._crit_edge.3 ], [ %i.by, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.4 ] ; 2 uses
  %i.bt = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.4: ; preds = %bb.i
  %i.bu = sitofp i32 %i.bt to float               ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0172.0, i64 %.062311.4
  store float %i.bu, ptr %i.bv, align 4, !tbaa !20
  %i.bw = load float, ptr %i.bs, align 4, !tbaa !20
  %i.bx = call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.bw)
  store float %i.bx, ptr %i.bs, align 4, !tbaa !20
  %i.by = add nuw i64 %.062311.4, 1               ; 2 uses
  %exitcond444.4.not = icmp eq i64 %i.by, %i.ak
  br i1 %exitcond444.4.not, label %._crit_edge.4, label %bb.i, !llvm.loop !111

._crit_edge.4:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 20 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.5, %._crit_edge.4
  %.062311.5 = phi i64 [ 0, %._crit_edge.4 ], [ %i.cf, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.5 ] ; 2 uses
  %i.ca = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.5: ; preds = %bb.j
  %i.cb = sitofp i32 %i.ca to float               ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0172.0, i64 %.062311.5
  store float %i.cb, ptr %i.cc, align 4, !tbaa !20
  %i.cd = load float, ptr %i.bz, align 4, !tbaa !20
  %i.ce = call float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %i.cd)
  store float %i.ce, ptr %i.bz, align 4, !tbaa !20
  %i.cf = add nuw i64 %.062311.5, 1               ; 2 uses
  %exitcond444.5.not = icmp eq i64 %i.cf, %i.ak
  br i1 %exitcond444.5.not, label %._crit_edge.5, label %bb.j, !llvm.loop !111

._crit_edge.5:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.6, %._crit_edge.5
  %.062311.6 = phi i64 [ 0, %._crit_edge.5 ], [ %i.cm, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.6 ] ; 2 uses
  %i.ch = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.6: ; preds = %bb.k
  %i.ci = sitofp i32 %i.ch to float               ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0172.0, i64 %.062311.6
  store float %i.ci, ptr %i.cj, align 4, !tbaa !20
  %i.ck = load float, ptr %i.cg, align 4, !tbaa !20
  %i.cl = call float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.ck)
  store float %i.cl, ptr %i.cg, align 4, !tbaa !20
  %i.cm = add nuw i64 %.062311.6, 1               ; 2 uses
  %exitcond444.6.not = icmp eq i64 %i.cm, %i.ak
  br i1 %exitcond444.6.not, label %._crit_edge.6, label %bb.k, !llvm.loop !111

._crit_edge.6:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.6
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ah, i64 28 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.7, %._crit_edge.6
  %.062311.7 = phi i64 [ 0, %._crit_edge.6 ], [ %i.ct, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.7 ] ; 2 uses
  %i.co = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.7: ; preds = %bb.l
  %i.cp = sitofp i32 %i.co to float               ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0172.0, i64 %.062311.7
  store float %i.cp, ptr %i.cq, align 4, !tbaa !20
  %i.cr = load float, ptr %i.cn, align 4, !tbaa !20
  %i.cs = call float @llvm.fmuladd.f32(float %i.cp, float %i.cp, float %i.cr)
  store float %i.cs, ptr %i.cn, align 4, !tbaa !20
  %i.ct = add nuw i64 %.062311.7, 1               ; 2 uses
  %exitcond444.7.not = icmp eq i64 %i.ct, %i.ak
  br i1 %exitcond444.7.not, label %._crit_edge.7, label %bb.l, !llvm.loop !111

._crit_edge.7:                                    ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.8, %._crit_edge.7
  %.062311.8 = phi i64 [ 0, %._crit_edge.7 ], [ %i.da, %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.8 ] ; 2 uses
  %i.cv = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit117.8: ; preds = %bb.m
  %i.cw = sitofp i32 %i.cv to float               ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0172.0, i64 %.062311.8
  store float %i.cw, ptr %i.cx, align 4, !tbaa !20
  %i.cy = load float, ptr %i.cu, align 4, !tbaa !20
  %i.cz = call float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.cy)
  store float %i.cz, ptr %i.cu, align 4, !tbaa !20
  %i.da = add nuw i64 %.062311.8, 1               ; 2 uses
  %exitcond444.8.not = icmp eq i64 %i.da, %i.ak
  br i1 %exitcond444.8.not, label %._crit_edge.8, label %bb.m, !llvm.loop !111

end_hunk_1

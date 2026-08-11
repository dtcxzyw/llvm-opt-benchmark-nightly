inline.NumInlined: 1536
inline.NumDeleted: 624
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN2cv6detail19ChannelsCompensator11getMatGainsERSt6vectorINS_3MatESaIS3_EE:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !232
  store <4 x i32> <i32 1124024326, i32 1, i32 1, i32 4>, ptr %5, align 16, !tbaa !25
  store i32 153, ptr %i.o, align 16, !tbaa !273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.q, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.r, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 4, i32 noundef 1, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef 0)
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i64 0, ptr %i.t, align 8
  store i32 33619968, ptr %3, align 8, !tbaa !121
  store ptr %5, ptr %i.s, align 8, !tbaa !124
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.noexc15
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.body

bb.d:                                             ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i64 0, ptr %i.v, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !121
  store ptr %4, ptr %i.u, align 8, !tbaa !124
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !199 ; 3 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !201
  %.not.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %.noexc16 unwind label %bb.j

.noexc16:                                         ; preds = %bb.f
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !199
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !199
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit

bb.g:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit unwind label %bb.j

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc16, %bb.g
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !233
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !232
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %sext = shl i64 %i.ai, 27
  %i.aj = ashr i64 %sext, 32
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !274

bb.h:                                             ; preds = %.noexc, %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  br label %.body

.body:                                            ; preds = %bb.h, %bb.c, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.al, %bb.h ], [ %i.z, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.body
  %.pn13 = phi { ptr, i32 } [ %i.an, %bb.j ], [ %.pn.pn, %.body ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn13
}

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail19ChannelsCompensator11setMatGainsERSt6vectorINS_3MatESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Scalar_", align 8       ; 9 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199
  %i.c = load ptr, ptr %1, align 8, !tbaa !196    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 208
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv7Scalar_IdEESaIS2_EE9push_backERKS2_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv7Scalar_IdEESaIS2_EE9push_backERKS2_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN2cv7Scalar_IdEESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.r = phi ptr [ %i.c, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIN2cv7Scalar_IdEESaIS2_EE9push_backERKS2_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw [208 x i8], ptr %i.r, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i32 -1040056314, ptr %3, align 8, !tbaa !121
  store ptr %2, ptr %i.j, align 8, !tbaa !124
  store i64 17179869185, ptr %i.k, align 8
  call void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !233  ; 7 uses
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !275
  %.not.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load double, ptr %2, align 8, !tbaa !148
  store double %i.v, ptr %i.t, align 8, !tbaa !148
  %i.w = load double, ptr %i.n, align 8, !tbaa !148
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store double %i.w, ptr %i.x, align 8, !tbaa !148
  %i.y = load double, ptr %i.o, align 8, !tbaa !148
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store double %i.y, ptr %i.z, align 8, !tbaa !148
  %i.aa = load double, ptr %i.p, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store double %i.aa, ptr %i.ab, align 8, !tbaa !148
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !233
  br label %_ZNSt6vectorIN2cv7Scalar_IdEESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6vectorIN2cv7Scalar_IdEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %_ZNSt6vectorIN2cv7Scalar_IdEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv7Scalar_IdEESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !199
  %i.ae = load ptr, ptr %1, align 8, !tbaa !196   ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 208
  %sext = shl i64 %i.ai, 32
  %i.aj = ashr exact i64 %sext, 32
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !276
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail17BlocksCompensator10getGainMapERKNS0_15GainCompensatorEiNS_5Size_IiEE(ptr dead_on_unwind noalias writable sret(%"class.cv::UMat") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %2, i32 noundef %3, i64 %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Mat_.55", align 8       ; 14 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %.sroa.011.0.extract.trunc = trunc i64 %4 to i32 ; 3 uses
  %.sroa.3.0.extract.shift = lshr i64 %4, 32      ; 2 uses
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !171, !noalias !277 ; 7 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %.noexc.i, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #22, !noalias !277
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2cv6detail15GainCompensator5gainsEv.exit, label %.noexc7.i

.noexc7.i:                                        ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.e = shl nuw nsw i64 %i.c, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #20, !noalias !277 ; 18 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c ; 5 uses
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !148, !noalias !277
  %i.h = add nsw i64 %i.c, -1                     ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc7.i
  %i.j = getelementptr i8, ptr %i.f, i64 8
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !148, !noalias !277
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc7.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !152, !noalias !277
  %.fr9.i = freeze i32 %i.l
  %i.m = icmp slt i32 %.fr9.i, 2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !166, !noalias !277 ; 12 uses
  br i1 %i.m, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 144
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 7 uses
  %.pre.i = load i64, ptr %i.p, align 8, !noalias !277 ; 6 uses
  %min.iters.check = icmp ugt i32 %i.b, 15
  %ident.check.not = icmp eq i64 %.pre.i, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph.split.i.preheader

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader.i
  %i.q = shl nuw nsw i64 %wide.trip.count.i, 3
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.q
  %i.r = getelementptr i8, ptr %i.o, i64 %wide.trip.count.i
  %scevgep64 = getelementptr i8, ptr %i.r, i64 7
  %bound0 = icmp ult ptr %i.f, %scevgep64
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %index
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.z = load double, ptr %i.s, align 8, !tbaa !148, !alias.scope !280, !noalias !277
  %i.aa = load double, ptr %i.u, align 8, !tbaa !148, !alias.scope !280, !noalias !277
  %i.ab = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.aa, i64 1
  %i.ad = load double, ptr %i.w, align 8, !tbaa !148, !alias.scope !280, !noalias !277
  %i.ae = load double, ptr %i.y, align 8, !tbaa !148, !alias.scope !280, !noalias !277
  %i.af = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ae, i64 1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <2 x double> %i.ac, ptr %i.ah, align 8, !tbaa !148, !alias.scope !283, !noalias !285
  store <2 x double> %i.ag, ptr %i.ai, align 8, !tbaa !148, !alias.scope !283, !noalias !285
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !286

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZNK2cv6detail15GainCompensator5gainsEv.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.split.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.i.preheader, %.lr.ph.split.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.split.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.split.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.prol ], [ 0, %.lr.ph.split.i.preheader ]
  %i.ak = mul i64 %indvars.iv.i.prol, %.pre.i
  %.sink.i.i.prol = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ak
  %i.al = load double, ptr %.sink.i.i.prol, align 8, !tbaa !148, !noalias !277
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.prol
  store double %i.al, ptr %i.am, align 8, !tbaa !148, !noalias !277
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol, !llvm.loop !287

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.split.i.prol ]
  %i.an = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %_ZNK2cv6detail15GainCompensator5gainsEv.exit, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %wide.trip.count16.i = zext nneg i32 %i.b to i64 ; 3 uses
  %.pre18.i = load double, ptr %i.o, align 8, !tbaa !148, !noalias !277 ; 2 uses
  %min.iters.check66 = icmp ult i32 %i.b, 4
  br i1 %min.iters.check66, label %.lr.ph.split.us.i.preheader, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.split.us.preheader.i
  %n.vec68 = and i64 %wide.trip.count16.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre18.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next71, %vector.body69 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index70 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ap, align 8, !tbaa !148, !noalias !277
  store <2 x double> %broadcast.splat, ptr %i.aq, align 8, !tbaa !148, !noalias !277
  %index.next71 = add nuw i64 %index70, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next71, %n.vec68
  br i1 %i.ar, label %middle.block72, label %vector.body69, !llvm.loop !288

middle.block72:                                   ; preds = %vector.body69
  %cmp.n73 = icmp eq i64 %n.vec68, %wide.trip.count16.i
  br i1 %cmp.n73, label %_ZNK2cv6detail15GainCompensator5gainsEv.exit, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.split.us.preheader.i, %middle.block72
  %indvars.iv12.i.ph = phi i64 [ 0, %.lr.ph.split.us.preheader.i ], [ %n.vec68, %middle.block72 ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %indvars.iv12.i = phi i64 [ %indvars.iv.next13.i, %.lr.ph.split.us.i ], [ %indvars.iv12.i.ph, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv12.i
  store double %.pre18.i, ptr %i.as, align 8, !tbaa !148, !noalias !277
  %indvars.iv.next13.i = add nuw nsw i64 %indvars.iv12.i, 1 ; 2 uses
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next13.i, %wide.trip.count16.i
  br i1 %exitcond17.not.i, label %_ZNK2cv6detail15GainCompensator5gainsEv.exit, label %.lr.ph.split.us.i, !llvm.loop !289

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.split.i ], [ %indvars.iv.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 6 uses
  %i.at = mul i64 %indvars.iv.i, %.pre.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.at
  %i.au = load double, ptr %.sink.i.i, align 8, !tbaa !148, !noalias !277
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  store double %i.au, ptr %i.av, align 8, !tbaa !148, !noalias !277
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aw = mul i64 %indvars.iv.next.i, %.pre.i
  %.sink.i.i.1 = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aw
  %i.ax = load double, ptr %.sink.i.i.1, align 8, !tbaa !148, !noalias !277
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.i
  store double %i.ax, ptr %i.ay, align 8, !tbaa !148, !noalias !277
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.az = mul i64 %indvars.iv.next.i.1, %.pre.i
  %.sink.i.i.2 = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.az
  %i.ba = load double, ptr %.sink.i.i.2, align 8, !tbaa !148, !noalias !277
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.i.1
  store double %i.ba, ptr %i.bb, align 8, !tbaa !148, !noalias !277
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bc = mul i64 %indvars.iv.next.i.2, %.pre.i
  %.sink.i.i.3 = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bc
  %i.bd = load double, ptr %.sink.i.i.3, align 8, !tbaa !148, !noalias !277
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.i.2
  store double %i.bd, ptr %i.be, align 8, !tbaa !148, !noalias !277
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZNK2cv6detail15GainCompensator5gainsEv.exit, label %.lr.ph.split.i, !llvm.loop !290

_ZNK2cv6detail15GainCompensator5gainsEv.exit:     ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %.lr.ph.split.us.i, %middle.block, %middle.block72, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.0.0 = phi ptr [ %i.f, %middle.block72 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.f, %middle.block ], [ %i.f, %.lr.ph.split.us.i ], [ %i.f, %.lr.ph.split.i ], [ %i.f, %.lr.ph.split.i.prol.loopexit ] ; 11 uses
  %.sroa.9.0 = phi ptr [ %i.g, %middle.block72 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.g, %middle.block ], [ %i.g, %.lr.ph.split.us.i ], [ %i.g, %.lr.ph.split.i ], [ %i.g, %.lr.ph.split.i.prol.loopexit ] ; 2 uses
  invoke void @_ZN2cv4UMatC1ENS_5Size_IiEEiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %4, i32 noundef 5, i32 noundef 0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNK2cv6detail15GainCompensator5gainsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 33554432)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #21
  %i.bf = load i32, ptr %5, align 8, !tbaa !38
  %i.bg = and i32 %i.bf, -4096
  %i.bh = or disjoint i32 %i.bg, 5
  store i32 %i.bh, ptr %5, align 8, !tbaa !38
  %i.bi = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %_ZN2cv4Mat_IfEC2EONS_3MatE.exit unwind label %.body ; 0 uses

.body:                                            ; preds = %bb.c
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #21
  br label %bb.g

_ZN2cv4Mat_IfEC2EONS_3MatE.exit:                  ; preds = %bb.c
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.bk = icmp sgt i32 %.sroa.3.0.extract.trunc, 0
  br i1 %i.bk, label %.preheader.lr.ph, label %._crit_edge30.split

.preheader.lr.ph:                                 ; preds = %_ZN2cv4Mat_IfEC2EONS_3MatE.exit
  %i.bl = icmp sgt i32 %.sroa.011.0.extract.trunc, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8            ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  br i1 %i.bl, label %.preheader.lr.ph.split, label %._crit_edge30.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bq = load i32, ptr %i.bp, align 4
  %.fr33 = freeze i32 %i.bq
  %i.br = icmp slt i32 %.fr33, 2
  %wide.trip.count54 = and i64 %4, 2147483647     ; 4 uses
  br i1 %i.br, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %xtraiter90 = and i64 %4, 1
  %i.bs = icmp eq i64 %wide.trip.count54, 1
  %unroll_iter = and i64 %4, 2147483646
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  %lcmp.mod93 = trunc i64 %4 to i1
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %min.iters.check76 = icmp samesign ult i64 %wide.trip.count54, 4
  %n.vec78 = and i64 %4, 2147483644               ; 4 uses
  %cmp.n84 = icmp eq i64 %wide.trip.count54, %n.vec78
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split.us.us
  %indvars.iv51 = phi i32 [ %i.cg, %._crit_edge.split.us.us ], [ %3, %.preheader.us.preheader ] ; 2 uses
  %.01229.us = phi i32 [ %8, %._crit_edge.split.us.us ], [ 0, %.preheader.us.preheader ]
  %7 = sext i32 %indvars.iv51 to i64              ; 3 uses
  br i1 %min.iters.check76, label %scalar.ph75.preheader, label %vector.ph77

vector.ph77:                                      ; preds = %.preheader.us
  %i.bt = add nsw i64 %n.vec78, %7
  %i.bu = getelementptr [8 x i8], ptr %.sroa.0.0, i64 %7
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph77
  %index80 = phi i64 [ 0, %vector.ph77 ], [ %index.next82, %vector.body79 ] ; 3 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %index80 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load = load <2 x double>, ptr %i.bv, align 8, !tbaa !148
  %wide.load81 = load <2 x double>, ptr %i.bw, align 8, !tbaa !148
  %i.bx = fptrunc <2 x double> %wide.load to <2 x float>
  %i.by = fptrunc <2 x double> %wide.load81 to <2 x float>
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index80 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store <2 x float> %i.bx, ptr %i.bz, align 4, !tbaa !291
  store <2 x float> %i.by, ptr %i.ca, align 4, !tbaa !291
  %index.next82 = add nuw i64 %index80, 4         ; 2 uses
  %i.cb = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.cb, label %middle.block83, label %vector.body79, !llvm.loop !293

middle.block83:                                   ; preds = %vector.body79
  br i1 %cmp.n84, label %._crit_edge.split.us.us, label %scalar.ph75.preheader

scalar.ph75.preheader:                            ; preds = %.preheader.us, %middle.block83
  %indvars.iv49.ph.a = phi i64 [ %7, %.preheader.us ], [ %i.bt, %middle.block83 ]
  %indvars.iv47.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec78, %middle.block83 ]
  br label %scalar.ph75

scalar.ph75:                                      ; preds = %scalar.ph75.preheader, %scalar.ph75
  %indvars.iv49.a = phi i64 [ %indvars.iv.next50, %scalar.ph75 ], [ %indvars.iv49.ph.a, %scalar.ph75.preheader ] ; 2 uses
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %scalar.ph75 ], [ %indvars.iv47.ph, %scalar.ph75.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %indvars.iv49.a
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !148
  %i.ce = fptrunc double %i.cd to float
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv47
  store float %i.ce, ptr %i.cf, align 4, !tbaa !291
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %indvars.iv.next50 = add nsw i64 %indvars.iv49.a, 1
  %exitcond55.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count54
  br i1 %exitcond55.not, label %._crit_edge.split.us.us, label %scalar.ph75, !llvm.loop !294

._crit_edge.split.us.us:                          ; preds = %scalar.ph75, %middle.block83
  %8 = add nuw nsw i32 %.01229.us, 1              ; 2 uses
  %i.cg = add i32 %indvars.iv51, %.sroa.011.0.extract.trunc
  %exitcond56.not = icmp eq i32 %8, %.sroa.3.0.extract.trunc
  br i1 %exitcond56.not, label %._crit_edge30.split.thread, label %.preheader.us, !llvm.loop !295

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.split
  %indvars.iv42 = phi i64 [ %indvars.iv.next45, %._crit_edge.split ], [ 0, %.preheader.preheader ] ; 4 uses
  %indvars.iv37 = phi i32 [ %indvars.iv.next38, %._crit_edge.split ], [ %3, %.preheader.preheader ] ; 2 uses
  %9 = sext i32 %indvars.iv37 to i64              ; 2 uses
  br i1 %i.bs, label %.epil.preheader, label %.preheader.new

._crit_edge30.split.thread:                       ; preds = %._crit_edge.split, %._crit_edge.split.us.us
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.d

._crit_edge30.split:                              ; preds = %.preheader.lr.ph, %_ZN2cv4Mat_IfEC2EONS_3MatE.exit
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.not.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge30.split.thread, %._crit_edge30.split
  %i.ch = ptrtoint ptr %.sroa.9.0 to i64
  %i.ci = ptrtoint ptr %.sroa.0.0 to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.cj) #23
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %._crit_edge30.split, %bb.d
  ret void

bb.e:                                             ; preds = %_ZNK2cv6detail15GainCompensator5gainsEv.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bj, %.body ], [ %i.cl, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #21
  br label %bb.h

._crit_edge.split.unr-lcssa:                      ; preds = %.preheader.new
  br i1 %lcmp.mod91.not, label %._crit_edge.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.unr-lcssa, %.preheader
  %indvars.iv37.epil.init = phi i64 [ %9, %.preheader ], [ %indvars.iv.next38.1, %._crit_edge.split.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.split.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod93)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %indvars.iv37.epil.init
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !148
  %i.co = fptrunc double %i.cn to float
  %i.cp = load i64, ptr %i.bo, align 8
  %i.cq = mul i64 %i.cp, %indvars.iv42
  %.sink.i.epil = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cq
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.epil, i64 %indvars.iv.epil.init
  store float %i.co, ptr %i.cr, align 4, !tbaa !291
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %._crit_edge.split.unr-lcssa, %.epil.preheader
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %indvars.iv.next38 = add i32 %indvars.iv37, %.sroa.011.0.extract.trunc
  %exitcond46.not = icmp eq i64 %indvars.iv.next45, %.sroa.3.0.extract.shift
  br i1 %exitcond46.not, label %._crit_edge30.split.thread, label %.preheader, !llvm.loop !295

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv37.a = phi i64 [ %indvars.iv.next38.1, %.preheader.new ], [ %9, %.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %indvars.iv37.a
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !148
  %i.cu = fptrunc double %i.ct to float
  %i.cv = load i64, ptr %i.bo, align 8
  %i.cw = mul i64 %i.cv, %indvars.iv42
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cw
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv
  store float %i.cu, ptr %i.cx, align 4, !tbaa !291
  %i.cy = getelementptr [8 x i8], ptr %.sroa.0.0, i64 %indvars.iv37.a
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %i.da = load double, ptr %i.cz, align 8, !tbaa !148
  %i.db = fptrunc double %i.da to float
  %i.dc = load i64, ptr %i.bo, align 8
  %i.dd = mul i64 %i.dc, %indvars.iv42
  %.sink.i.1 = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.dd
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.1, i64 %indvars.iv
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store float %i.db, ptr %i.df, align 4, !tbaa !291
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next38.1 = add nsw i64 %indvars.iv37.a, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.unr-lcssa, label %.preheader.new, !llvm.loop !296

bb.h:                                             ; preds = %bb.g, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.g ], [ %i.ck, %bb.e ]
  %.not.i.i.i20 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIdSaIdEED2Ev.exit21, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dg = ptrtoint ptr %.sroa.9.0 to i64
  %i.dh = ptrtoint ptr %.sroa.0.0 to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.di) #23
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit21

_ZNSt6vectorIdSaIdEED2Ev.exit21:                  ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN2cv4UMatC1ENS_5Size_IiEEiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184), i64, i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail17BlocksCompensator10getGainMapERKNS0_19ChannelsCompensatorEiNS_5Size_IiEE(ptr dead_on_unwind noalias writable sret(%"class.cv::UMat") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, i32 noundef %3, i64 %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Mat_.56", align 8       ; 14 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %.sroa.015.0.extract.trunc = trunc i64 %4 to i32 ; 3 uses
  %.sroa.3.0.extract.shift = lshr i64 %4, 32      ; 2 uses
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !233, !noalias !297 ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !232, !noalias !297 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZNK2cv6detail19ChannelsCompensator5gainsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775776
  br i1 %i.h, label %.noexc.i.i.i, label %bb.c, !prof !28

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22, !noalias !297
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #20, !noalias !297 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  %.013.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.c ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %bb.c ] ; 5 uses
  %i.j = load double, ptr %.sroa.08.012.i.i.i.i.i.i, align 8, !tbaa !148, !noalias !297
  store double %i.j, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !148, !noalias !297
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !148, !noalias !297
  %i.m = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store double %i.l, ptr %i.m, align 8, !tbaa !148, !noalias !297
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !148, !noalias !297
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store double %i.o, ptr %i.p, align 8, !tbaa !148, !noalias !297
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !148, !noalias !297
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store double %i.r, ptr %i.s, align 8, !tbaa !148, !noalias !297
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2cv6detail19ChannelsCompensator5gainsEv.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !300

_ZNK2cv6detail19ChannelsCompensator5gainsEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a
  %.sink = phi ptr [ null, %bb.a ], [ %i.i, %.lr.ph.i.i.i.i.i.i ] ; 8 uses
  invoke void @_ZN2cv4UMatC1ENS_5Size_IiEEiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %4, i32 noundef 69, i32 noundef 0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNK2cv6detail19ChannelsCompensator5gainsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 33554432)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #21
  %i.v = load i32, ptr %5, align 8, !tbaa !38
  %i.w = and i32 %i.v, -4096
  %i.x = or disjoint i32 %i.w, 69
  store i32 %i.x, ptr %5, align 8, !tbaa !38
  %i.y = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_INS_3VecIfLi3EEEEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %_ZN2cv4Mat_INS_3VecIfLi3EEEEC2EONS_3MatE.exit unwind label %.body ; 0 uses

.body:                                            ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #21
  br label %bb.i

_ZN2cv4Mat_INS_3VecIfLi3EEEEC2EONS_3MatE.exit:    ; preds = %bb.e
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.aa = icmp sgt i32 %.sroa.3.0.extract.trunc, 0
  br i1 %i.aa, label %.preheader30.lr.ph, label %._crit_edge36.split

.preheader30.lr.ph:                               ; preds = %_ZN2cv4Mat_INS_3VecIfLi3EEEEC2EONS_3MatE.exit
  %i.ab = icmp sgt i32 %.sroa.015.0.extract.trunc, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  br i1 %i.ab, label %.preheader30.lr.ph.split, label %._crit_edge36.split

.preheader30.lr.ph.split:                         ; preds = %.preheader30.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %.fr39 = freeze i32 %i.ag
  %i.ah = icmp slt i32 %.fr39, 2
  %wide.trip.count64 = and i64 %4, 2147483647     ; 2 uses
  br i1 %i.ah, label %.preheader30.us.preheader, label %.preheader30

.preheader30.us.preheader:                        ; preds = %.preheader30.lr.ph.split
  %xtraiter = and i64 %4, 1
  %i.ai = icmp eq i64 %wide.trip.count64, 1
  %unroll_iter = and i64 %4, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod75 = trunc i64 %4 to i1
  br label %.preheader30.us

.preheader30.us:                                  ; preds = %.preheader30.us.preheader, %._crit_edge.split.us.us
  %indvars.iv61 = phi i32 [ %i.bg, %._crit_edge.split.us.us ], [ %3, %.preheader30.us.preheader ] ; 2 uses
  %.01735.us = phi i32 [ %8, %._crit_edge.split.us.us ], [ 0, %.preheader30.us.preheader ]
  %7 = sext i32 %indvars.iv61 to i64              ; 2 uses
  br i1 %i.ai, label %.preheader.us.us.epil.preheader, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader30.us, %.preheader.us.us
  %indvars.iv59.a = phi i64 [ %indvars.iv.next60.1, %.preheader.us.us ], [ %7, %.preheader30.us ] ; 3 uses
  %indvars.iv57 = phi i64 [ %indvars.iv.next58.1, %.preheader.us.us ], [ 0, %.preheader30.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.us ], [ 0, %.preheader30.us ]
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %.sink, i64 %indvars.iv59.a ; 2 uses
  %invariant.gep.us.us = getelementptr [12 x i8], ptr %i.ad, i64 %indvars.iv57 ; 2 uses
  %i.ak = load <2 x double>, ptr %i.aj, align 8, !tbaa !148
  %i.al = fptrunc <2 x double> %i.ak to <2 x float>
  store <2 x float> %i.al, ptr %invariant.gep.us.us, align 4, !tbaa !291
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !148
  %i.ao = fptrunc double %i.an to float
  %i.ap = getelementptr inbounds nuw i8, ptr %invariant.gep.us.us, i64 8
  store float %i.ao, ptr %i.ap, align 4, !tbaa !291
  %i.aq = getelementptr [32 x i8], ptr %.sink, i64 %indvars.iv59.a ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 32
  %i.as = getelementptr [12 x i8], ptr %i.ad, i64 %indvars.iv57 ; 2 uses
  %invariant.gep.us.us.1 = getelementptr i8, ptr %i.as, i64 12
  %i.at = load <2 x double>, ptr %i.ar, align 8, !tbaa !148
  %i.au = fptrunc <2 x double> %i.at to <2 x float>
  store <2 x float> %i.au, ptr %invariant.gep.us.us.1, align 4, !tbaa !291
  %i.av = getelementptr i8, ptr %i.aq, i64 48
  %i.aw = load double, ptr %i.av, align 8, !tbaa !148
  %i.ax = fptrunc double %i.aw to float
  %i.ay = getelementptr i8, ptr %i.as, i64 20
  store float %i.ax, ptr %i.ay, align 4, !tbaa !291
  %indvars.iv.next58.1 = add nuw nsw i64 %indvars.iv57, 2 ; 2 uses
  %indvars.iv.next60.1 = add nsw i64 %indvars.iv59.a, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.us.us.unr-lcssa, label %.preheader.us.us, !llvm.loop !301

._crit_edge.split.us.us.unr-lcssa:                ; preds = %.preheader.us.us
  br i1 %lcmp.mod.not, label %._crit_edge.split.us.us, label %.preheader.us.us.epil.preheader

.preheader.us.us.epil.preheader:                  ; preds = %._crit_edge.split.us.us.unr-lcssa, %.preheader30.us
  %indvars.iv59.epil.init.a = phi i64 [ %7, %.preheader30.us ], [ %indvars.iv.next60.1, %._crit_edge.split.us.us.unr-lcssa ]
  %indvars.iv57.epil.init = phi i64 [ 0, %.preheader30.us ], [ %indvars.iv.next58.1, %._crit_edge.split.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod75)
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %.sink, i64 %indvars.iv59.epil.init.a ; 2 uses
  %invariant.gep.us.us.epil = getelementptr [12 x i8], ptr %i.ad, i64 %indvars.iv57.epil.init ; 2 uses
  %i.ba = load <2 x double>, ptr %i.az, align 8, !tbaa !148
  %i.bb = fptrunc <2 x double> %i.ba to <2 x float>
  store <2 x float> %i.bb, ptr %invariant.gep.us.us.epil, align 4, !tbaa !291
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !148
  %i.be = fptrunc double %i.bd to float
  %i.bf = getelementptr inbounds nuw i8, ptr %invariant.gep.us.us.epil, i64 8
  store float %i.be, ptr %i.bf, align 4, !tbaa !291
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.unr-lcssa, %.preheader.us.us.epil.preheader
  %8 = add nuw nsw i32 %.01735.us, 1              ; 2 uses
  %i.bg = add i32 %indvars.iv61, %.sroa.015.0.extract.trunc
  %exitcond66.not = icmp eq i32 %8, %.sroa.3.0.extract.trunc
  br i1 %exitcond66.not, label %._crit_edge36.split.thread, label %.preheader30.us, !llvm.loop !302

.preheader30:                                     ; preds = %.preheader30.lr.ph.split, %._crit_edge.split
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %._crit_edge.split ], [ 0, %.preheader30.lr.ph.split ] ; 4 uses
  %indvars.iv43 = phi i32 [ %indvars.iv.next44, %._crit_edge.split ], [ %3, %.preheader30.lr.ph.split ] ; 2 uses
  %9 = sext i32 %indvars.iv43 to i64
  br label %.preheader

._crit_edge36.split.thread:                       ; preds = %._crit_edge.split, %._crit_edge.split.us.us
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.f

._crit_edge36.split:                              ; preds = %.preheader30.lr.ph, %_ZN2cv4Mat_INS_3VecIfLi3EEEEC2EONS_3MatE.exit
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.not.i.i.i = icmp eq ptr %.sink, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv7Scalar_IdEESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge36.split.thread, %._crit_edge36.split
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef %i.g) #23
  br label %_ZNSt6vectorIN2cv7Scalar_IdEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv7Scalar_IdEESaIS2_EED2Ev.exit:   ; preds = %._crit_edge36.split, %bb.f
  ret void

bb.g:                                             ; preds = %_ZNK2cv6detail19ChannelsCompensator5gainsEv.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.z, %.body ], [ %i.bi, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #21
  br label %bb.j

.preheader:                                       ; preds = %.preheader30, %.preheader
  %indvars.iv43.a = phi i64 [ %9, %.preheader30 ], [ %indvars.iv.next44.a, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader30 ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %.sink, i64 %indvars.iv43.a ; 2 uses
  %invariant.gep = getelementptr [12 x i8], ptr %i.ad, i64 %indvars.iv ; 3 uses
  %i.bk = load i64, ptr %i.ae, align 8
  %i.bl = mul i64 %i.bk, %indvars.iv48
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.bl
  %i.bm = load <2 x double>, ptr %i.bj, align 8, !tbaa !148
  %i.bn = fptrunc <2 x double> %i.bm to <2 x float> ; 2 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0
  store float %i.bo, ptr %gep, align 4, !tbaa !291
  %i.bp = load i64, ptr %i.ae, align 8
  %i.bq = mul i64 %i.bp, %indvars.iv48
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.bq
  %i.br = getelementptr inbounds nuw i8, ptr %gep.1, i64 4
  %i.bs = extractelement <2 x float> %i.bn, i64 1
  store float %i.bs, ptr %i.br, align 4, !tbaa !291
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !148
  %i.bv = fptrunc double %i.bu to float
  %i.bw = load i64, ptr %i.ae, align 8
  %i.bx = mul i64 %i.bw, %indvars.iv48
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.bx
  %i.by = getelementptr inbounds nuw i8, ptr %gep.2, i64 8
  store float %i.bv, ptr %i.by, align 4, !tbaa !291
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next44.a = add nsw i64 %indvars.iv43.a, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count64
  br i1 %exitcond.not, label %._crit_edge.split, label %.preheader, !llvm.loop !301

._crit_edge.split:                                ; preds = %.preheader
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %indvars.iv.next44 = add i32 %indvars.iv43, %.sroa.015.0.extract.trunc
  %exitcond52.not = icmp eq i64 %indvars.iv.next49, %.sroa.3.0.extract.shift
  br i1 %exitcond52.not, label %._crit_edge36.split.thread, label %.preheader30, !llvm.loop !302

bb.j:                                             ; preds = %bb.i, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.bh, %bb.g ]
  %.not.i.i.i25 = icmp eq ptr %.sink, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIN2cv7Scalar_IdEESaIS2_EED2Ev.exit26, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef %i.g) #23
  br label %_ZNSt6vectorIN2cv7Scalar_IdEESaIS2_EED2Ev.exit26

_ZNSt6vectorIN2cv7Scalar_IdEESaIS2_EED2Ev.exit26: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail17BlocksCompensator5applyEiNS_6Point_IiEERKNS_17_InputOutputArrayERKNS_11_InputArrayE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree nonnull readnone align 8 captures(none) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.cv::UMat", align 8         ; 16 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %13 = alloca %"class.std::vector.23", align 8   ; 13 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv6detail17BlocksCompensator5applyEiNS_6Point_IiEERKNS_17_InputOutputArrayERKNS_11_InputArrayEE25__cv_trace_location_fn562)
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 64
  br i1 %i.b, label %bb.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv6detail17BlocksCompensator5applyEiNS_6Point_IiEERKNS_17_InputOutputArrayERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 564) #22
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %8, align 8, !tbaa !93     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.i = load i64, ptr %i.g, align 8, !tbaa !24
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.d, %bb.g ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ba

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %10, i32 noundef 0) #21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = sext i32 %1 to i64                       ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !101
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !102  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 184                 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.s, %i.l
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.30, i64 noundef %i.l, i64 noundef %i.s) #22
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw [184 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i32, ptr %i.u, align 4, !tbaa !134  ; 6 uses
  %i.w = icmp slt i32 %i.v, 3
  br i1 %i.w, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc39 unwind label %bb.x

.noexc39:                                         ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.23, i32 noundef 109) #22
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc39
  unreachable

bb.n:                                             ; preds = %.noexc39
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %5, align 8, !tbaa !93     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !24
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.body

bb.o:                                             ; preds = %bb.k
  %i.ad = icmp sgt i32 %i.v, 0
  br i1 %i.ad, label %bb.p, label %.thread.i

.thread.i:                                        ; preds = %bb.o
  %i.ae = icmp eq i32 %i.v, 0
  %i.af = zext i1 %i.ae to i32
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 60 ; 2 uses
  %i.ah = icmp eq i32 %i.v, 2
  %i.ai = zext i1 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !25 ; 2 uses
  %.not.i = icmp eq i32 %i.v, 1
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = load i32, ptr %i.ag, align 4, !tbaa !25
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %.thread.i
  %i.am = phi i32 [ %i.af, %.thread.i ], [ %i.ak, %bb.p ]
  %i.an = icmp sgt i32 %i.v, -1
  %i.ao = zext i1 %i.an to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ap = phi i32 [ %i.ak, %bb.q ], [ %i.am, %bb.r ]
  %i.aq = phi i32 [ %i.al, %bb.q ], [ %i.ao, %bb.r ]
  %i.ar = invoke i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %bb.t unwind label %bb.y       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %.sroa.0.0.extract.trunc = trunc i64 %i.ar to i32
  %.sroa.5.0.extract.shift = lshr i64 %i.ar, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.as = icmp eq i32 %i.ap, %.sroa.0.0.extract.trunc
  %i.at = icmp eq i32 %i.aq, %.sroa.5.0.extract.trunc
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !101
  %i.aw = load ptr, ptr %i.k, align 8, !tbaa !102 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 184               ; 2 uses
  %.not.i.i40 = icmp ugt i64 %i.ba, %i.l
  br i1 %.not.i.i40, label %bb.w, label %bb.v

end_hunk_0

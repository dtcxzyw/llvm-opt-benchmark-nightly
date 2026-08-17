inline.NumInlined: 415
inline.NumDeleted: 151
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_:bb.a
  br i1 %i.k, label %.preheader, label %bb.e, !llvm.loop !163

bb.e:                                             ; preds = %.preheader
  %i.m = icmp ult ptr %.1, %i.f
  br i1 %i.m, label %bb.f, label %tailrecurse

bb.f:                                             ; preds = %bb.e
  store double %i.j, ptr %i.f, align 8, !tbaa !32
  store double %i.g, ptr %.1, align 8, !tbaa !32
  br label %bb.b, !llvm.loop !164

tailrecurse:                                      ; preds = %bb.e, %bb.d
  tail call void @_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(ptr noundef nonnull %.tr27, ptr noundef nonnull %.122)
  %i.n = ptrtoint ptr %.122 to i64
  %i.o = sub i64 %i.a, %i.n
  %i.p = icmp sgt i64 %i.o, 8
  br i1 %i.p, label %.lr.ph, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(ptr %0, ptr %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr25 = phi ptr [ %.sroa.0.1, %tailrecurse ], [ %0, %bb.a ] ; 3 uses
  %i.e = load double, ptr %.tr25, align 8, !tbaa !32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph
  %.sroa.012.0 = phi ptr [ %.tr25, %.lr.ph ], [ %.sroa.012.1, %bb.f ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %1, %.lr.ph ], [ %i.f, %bb.f ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.b ], [ %i.f, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.1, i64 -8 ; 6 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !52 ; 2 uses
  %i.h = fcmp olt double %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d, !llvm.loop !165

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult ptr %.sroa.012.0, %i.f
  br i1 %i.i, label %.preheader, label %tailrecurse

.preheader:                                       ; preds = %bb.d, %.preheader
  %.sroa.012.1 = phi ptr [ %i.l, %.preheader ], [ %.sroa.012.0, %bb.d ] ; 5 uses
  %i.j = load double, ptr %.sroa.012.1, align 8   ; 2 uses
  %i.k = fcmp olt double %i.j, %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.012.1, i64 8
  br i1 %i.k, label %.preheader, label %bb.e, !llvm.loop !166

bb.e:                                             ; preds = %.preheader
  %i.m = icmp ult ptr %.sroa.012.1, %i.f
  br i1 %i.m, label %bb.f, label %tailrecurse

bb.f:                                             ; preds = %bb.e
  store double %i.j, ptr %i.f, align 8, !tbaa !32
  store double %i.g, ptr %.sroa.012.1, align 8, !tbaa !32
  br label %bb.b, !llvm.loop !167

tailrecurse:                                      ; preds = %bb.e, %bb.d
  tail call void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(ptr nonnull %.tr25, ptr nonnull %.sroa.0.1)
  %i.n = ptrtoint ptr %.sroa.0.1 to i64
  %i.o = sub i64 %i.a, %i.n
  %i.p = icmp sgt i64 %i.o, 8
  br i1 %i.p, label %.lr.ph, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9benchmark8heapsortIPddEEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 7 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1
  %i.g = add nsw i64 %i.d, -1                     ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit
  %.0.in42 = phi i64 [ %i.f, %.lr.ph ], [ %.0, %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit ] ; 4 uses
  %.0 = add nsw i64 %.0.in42, -1                  ; 5 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0
  %i.j = load double, ptr %i.i, align 8, !tbaa !32 ; 2 uses
  %i.k = shl nuw i64 %.0, 1
  %i.l = add nuw nsw i64 %i.k, 2                  ; 3 uses
  %i.m = icmp slt i64 %i.l, %i.d
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.043.i = phi i64 [ %i.t, %.lr.ph.i ], [ %.0, %bb.b ]
  %.03742.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.l, %bb.b ] ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %0, i64 %.03742.i ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load double, ptr %i.o, align 8, !tbaa !32
  %i.q = load double, ptr %i.n, align 8, !tbaa !32
  %i.r = fcmp olt double %i.p, %i.q
  %i.s = zext i1 %i.r to i64
  %.138.i = add nsw i64 %.03742.i, %i.s           ; 2 uses
  %i.t = add nsw i64 %.138.i, -1                  ; 3 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !32
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %.043.i
  store double %i.v, ptr %i.w, align 8, !tbaa !32
  %i.x = shl nsw i64 %.138.i, 1                   ; 3 uses
  %i.y = icmp slt i64 %i.x, %i.d
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !168

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.037.lcssa.i = phi i64 [ %i.l, %bb.b ], [ %i.x, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ %.0, %bb.b ], [ %i.t, %.lr.ph.i ] ; 2 uses
  %i.z = icmp eq i64 %.037.lcssa.i, %i.d
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.aa = load double, ptr %i.h, align 8, !tbaa !32
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  store double %i.aa, ptr %i.ab, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.1.i = phi i64 [ %i.g, %bb.c ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.not37 = icmp slt i64 %.1.i, %.0.in42
  br i1 %.not37, label %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit, label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %bb.d, %bb.e
  %.247.i = phi i64 [ %.23948.i, %bb.e ], [ %.1.i, %bb.d ] ; 3 uses
  %.23948.in.i = add nsw i64 %.247.i, -1
  %.23948.i = sdiv i64 %.23948.in.i, 2            ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.23948.i
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !32 ; 2 uses
  %i.ae = fcmp olt double %i.ad, %i.j
  br i1 %i.ae, label %bb.e, label %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit

bb.e:                                             ; preds = %.lr.ph50.i
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %.247.i
  store double %i.ad, ptr %i.af, align 8, !tbaa !32
  %.not38 = icmp slt i64 %.23948.i, %.0.in42
  br i1 %.not38, label %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit, label %.lr.ph50.i, !llvm.loop !169

_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit:         ; preds = %.lr.ph50.i, %bb.e, %bb.d
  %.2.lcssa.i = phi i64 [ %.1.i, %bb.d ], [ %.247.i, %.lr.ph50.i ], [ %.23948.i, %bb.e ]
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.2.lcssa.i
  store double %i.j, ptr %i.ag, align 8, !tbaa !32
  %i.ah = icmp sgt i64 %.0.in42, 1
  br i1 %i.ah, label %bb.b, label %.lr.ph44, !llvm.loop !170

.lr.ph44:                                         ; preds = %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit, %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit34
  %.1.in43 = phi i64 [ %.1, %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit34 ], [ %i.d, %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit ] ; 4 uses
  %.1 = add nsw i64 %.1.in43, -1                  ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !32 ; 2 uses
  %i.ak = load double, ptr %0, align 8, !tbaa !32
  store double %i.ak, ptr %i.ai, align 8, !tbaa !32
  %i.al = icmp samesign ugt i64 %.1.in43, 3
  br i1 %i.al, label %.lr.ph.i30, label %._crit_edge.i21

.lr.ph.i30:                                       ; preds = %.lr.ph44, %.lr.ph.i30
  %.043.i31 = phi i64 [ %i.as, %.lr.ph.i30 ], [ 0, %.lr.ph44 ]
  %.03742.i32 = phi i64 [ %i.aw, %.lr.ph.i30 ], [ 2, %.lr.ph44 ] ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %0, i64 %.03742.i32 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 -8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !32
  %i.ap = load double, ptr %i.am, align 8, !tbaa !32
  %i.aq = fcmp olt double %i.ao, %i.ap
  %i.ar = zext i1 %i.aq to i64
  %.138.i33 = or disjoint i64 %.03742.i32, %i.ar  ; 2 uses
  %i.as = add nsw i64 %.138.i33, -1               ; 3 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !32
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.043.i31
  store double %i.au, ptr %i.av, align 8, !tbaa !32
  %i.aw = shl nsw i64 %.138.i33, 1                ; 3 uses
  %i.ax = icmp slt i64 %i.aw, %.1
  br i1 %i.ax, label %.lr.ph.i30, label %._crit_edge.i21, !llvm.loop !168

._crit_edge.i21:                                  ; preds = %.lr.ph.i30, %.lr.ph44
  %.037.lcssa.i22 = phi i64 [ 2, %.lr.ph44 ], [ %i.aw, %.lr.ph.i30 ]
  %.0.lcssa.i23 = phi i64 [ 0, %.lr.ph44 ], [ %i.as, %.lr.ph.i30 ] ; 4 uses
  %i.ay = icmp eq i64 %.037.lcssa.i22, %.1
  br i1 %i.ay, label %.thread, label %bb.f

.thread:                                          ; preds = %._crit_edge.i21
  %i.az = add nsw i64 %.1.in43, -2                ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !32
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i23
  store double %i.bb, ptr %i.bc, align 8, !tbaa !32
  br label %.lr.ph50.i26.preheader

bb.f:                                             ; preds = %._crit_edge.i21
  %i.bd = icmp sgt i64 %.0.lcssa.i23, 0
  br i1 %i.bd, label %.lr.ph50.i26.preheader, label %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit34

.lr.ph50.i26.preheader:                           ; preds = %.thread, %bb.f
  %.247.i27.ph = phi i64 [ %.0.lcssa.i23, %bb.f ], [ %i.az, %.thread ]
  br label %.lr.ph50.i26

.lr.ph50.i26:                                     ; preds = %.lr.ph50.i26.preheader, %bb.g
  %.247.i27 = phi i64 [ %.23948.i293536, %bb.g ], [ %.247.i27.ph, %.lr.ph50.i26.preheader ] ; 3 uses
  %.23948.in.i28 = add nsw i64 %.247.i27, -1
  %.23948.i293536 = lshr i64 %.23948.in.i28, 1    ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.23948.i293536
  %i.bf = load double, ptr %i.be, align 8, !tbaa !32 ; 2 uses
  %i.bg = fcmp olt double %i.bf, %i.aj
  br i1 %i.bg, label %bb.g, label %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit34

bb.g:                                             ; preds = %.lr.ph50.i26
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.247.i27
  store double %i.bf, ptr %i.bh, align 8, !tbaa !32
  %.not = icmp eq i64 %.23948.i293536, 0
  br i1 %.not, label %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit34, label %.lr.ph50.i26, !llvm.loop !169

_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit34:       ; preds = %.lr.ph50.i26, %bb.g, %bb.f
  %.2.lcssa.i25 = phi i64 [ %.0.lcssa.i23, %bb.f ], [ %.247.i27, %.lr.ph50.i26 ], [ 0, %bb.g ]
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %.2.lcssa.i25
  store double %i.aj, ptr %i.bi, align 8, !tbaa !32
  %i.bj = icmp sgt i64 %.1.in43, 2
  br i1 %i.bj, label %.lr.ph44, label %._crit_edge, !llvm.loop !171

._crit_edge:                                      ; preds = %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit34, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_(ptr %0, ptr %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 7 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1
  %i.g = add nsw i64 %i.d, -1                     ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_.exit
  %.0.in42 = phi i64 [ %i.f, %.lr.ph ], [ %.0, %_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_.exit ] ; 4 uses
  %.0 = add nsw i64 %.0.in42, -1                  ; 5 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  %i.j = load double, ptr %i.i, align 8, !tbaa !32 ; 2 uses
  %i.k = shl nuw i64 %.0, 1
  %i.l = add nuw nsw i64 %i.k, 2                  ; 3 uses
  %i.m = icmp slt i64 %i.l, %i.d
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.051.i = phi i64 [ %i.t, %.lr.ph.i ], [ %.0, %bb.b ]
  %.02750.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.l, %bb.b ] ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %0, i64 %.02750.i ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load double, ptr %i.o, align 8, !tbaa !32
  %i.q = load double, ptr %i.n, align 8, !tbaa !32
  %i.r = fcmp olt double %i.p, %i.q
  %i.s = zext i1 %i.r to i64
  %.128.i = add nsw i64 %.02750.i, %i.s           ; 2 uses
  %i.t = add nsw i64 %.128.i, -1                  ; 3 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !32
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %.051.i
  store double %i.v, ptr %i.w, align 8, !tbaa !32
  %i.x = shl nsw i64 %.128.i, 1                   ; 3 uses
  %i.y = icmp slt i64 %i.x, %i.d
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !172

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.027.lcssa.i = phi i64 [ %i.l, %bb.b ], [ %i.x, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ %.0, %bb.b ], [ %i.t, %.lr.ph.i ] ; 2 uses
  %i.z = icmp eq i64 %.027.lcssa.i, %i.d
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.aa = load double, ptr %i.h, align 8, !tbaa !32
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  store double %i.aa, ptr %i.ab, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.1.i = phi i64 [ %i.g, %bb.c ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.not37 = icmp slt i64 %.1.i, %.0.in42
  br i1 %.not37, label %_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_.exit, label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %bb.d, %bb.e
  %.255.i = phi i64 [ %.22956.i, %bb.e ], [ %.1.i, %bb.d ] ; 3 uses
  %.22956.in.i = add nsw i64 %.255.i, -1
  %.22956.i = sdiv i64 %.22956.in.i, 2            ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.22956.i
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !32 ; 2 uses
  %i.ae = fcmp olt double %i.ad, %i.j
  br i1 %i.ae, label %bb.e, label %_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_.exit

bb.e:                                             ; preds = %.lr.ph58.i
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %.255.i
  store double %i.ad, ptr %i.af, align 8, !tbaa !32
  %.not38 = icmp slt i64 %.22956.i, %.0.in42
  br i1 %.not38, label %_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_.exit, label %.lr.ph58.i, !llvm.loop !173

_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_.exit: ; preds = %.lr.ph58.i, %bb.e, %bb.d
  %.2.lcssa.i = phi i64 [ %.1.i, %bb.d ], [ %.255.i, %.lr.ph58.i ], [ %.22956.i, %bb.e ]
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.2.lcssa.i
  store double %i.j, ptr %i.ag, align 8, !tbaa !32
  %i.ah = icmp sgt i64 %.0.in42, 1
  br i1 %i.ah, label %bb.b, label %.lr.ph44, !llvm.loop !174

.lr.ph44:                                         ; preds = %_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_.exit, %_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_.exit29
  %.1.in43 = phi i64 [ %.1, %_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_.exit29 ], [ %i.d, %_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_.exit ] ; 4 uses
  %.1 = add nsw i64 %.1.in43, -1                  ; 4 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.1 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !32 ; 2 uses
  %i.ak = load double, ptr %0, align 8, !tbaa !32
  store double %i.ak, ptr %i.ai, align 8, !tbaa !32
  %i.al = icmp samesign ugt i64 %.1.in43, 3
  br i1 %i.al, label %.lr.ph.i25, label %._crit_edge.i16

.lr.ph.i25:                                       ; preds = %.lr.ph44, %.lr.ph.i25
  %.051.i26 = phi i64 [ %i.as, %.lr.ph.i25 ], [ 0, %.lr.ph44 ]
  %.02750.i27 = phi i64 [ %i.aw, %.lr.ph.i25 ], [ 2, %.lr.ph44 ] ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %0, i64 %.02750.i27 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 -8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !32
  %i.ap = load double, ptr %i.am, align 8, !tbaa !32
  %i.aq = fcmp olt double %i.ao, %i.ap
  %i.ar = zext i1 %i.aq to i64
  %.128.i28 = or disjoint i64 %.02750.i27, %i.ar  ; 2 uses
  %i.as = add nsw i64 %.128.i28, -1               ; 3 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !32
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.051.i26
  store double %i.au, ptr %i.av, align 8, !tbaa !32
  %i.aw = shl nsw i64 %.128.i28, 1                ; 3 uses
  %i.ax = icmp slt i64 %i.aw, %.1
  br i1 %i.ax, label %.lr.ph.i25, label %._crit_edge.i16, !llvm.loop !172

._crit_edge.i16:                                  ; preds = %.lr.ph.i25, %.lr.ph44
  %.027.lcssa.i17 = phi i64 [ 2, %.lr.ph44 ], [ %i.aw, %.lr.ph.i25 ]
  %.0.lcssa.i18 = phi i64 [ 0, %.lr.ph44 ], [ %i.as, %.lr.ph.i25 ] ; 4 uses
  %i.ay = icmp eq i64 %.027.lcssa.i17, %.1
  br i1 %i.ay, label %.thread, label %bb.f

.thread:                                          ; preds = %._crit_edge.i16
  %i.az = add nsw i64 %.1.in43, -2                ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !32
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i18
  store double %i.bb, ptr %i.bc, align 8, !tbaa !32
  br label %.lr.ph58.i21.preheader

bb.f:                                             ; preds = %._crit_edge.i16
  %i.bd = icmp sgt i64 %.0.lcssa.i18, 0
  br i1 %i.bd, label %.lr.ph58.i21.preheader, label %_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_.exit29

.lr.ph58.i21.preheader:                           ; preds = %.thread, %bb.f
  %.255.i22.ph = phi i64 [ %.0.lcssa.i18, %bb.f ], [ %i.az, %.thread ]
  br label %.lr.ph58.i21

.lr.ph58.i21:                                     ; preds = %.lr.ph58.i21.preheader, %bb.g
  %.255.i22 = phi i64 [ %.22956.i243536, %bb.g ], [ %.255.i22.ph, %.lr.ph58.i21.preheader ] ; 3 uses
  %.22956.in.i23 = add nsw i64 %.255.i22, -1
  %.22956.i243536 = lshr i64 %.22956.in.i23, 1    ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.22956.i243536
  %i.bf = load double, ptr %i.be, align 8, !tbaa !32 ; 2 uses
  %i.bg = fcmp olt double %i.bf, %i.aj
  br i1 %i.bg, label %bb.g, label %_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_.exit29

bb.g:                                             ; preds = %.lr.ph58.i21
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.255.i22
  store double %i.bf, ptr %i.bh, align 8, !tbaa !32
  %.not = icmp eq i64 %.22956.i243536, 0
  br i1 %.not, label %_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_.exit29, label %.lr.ph58.i21, !llvm.loop !173

_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_.exit29: ; preds = %.lr.ph58.i21, %bb.g, %bb.f
  %.2.lcssa.i20 = phi i64 [ %.0.lcssa.i18, %bb.f ], [ %.255.i22, %.lr.ph58.i21 ], [ 0, %bb.g ]
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %.2.lcssa.i20
  store double %i.aj, ptr %i.bi, align 8, !tbaa !32
  %i.bj = icmp sgt i64 %.1.in43, 2
  br i1 %i.bj, label %.lr.ph44, label %._crit_edge, !llvm.loop !175

._crit_edge:                                      ; preds = %_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_.exit29, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 7 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1
  %i.g = add nsw i64 %i.d, -1                     ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_.exit
  %.0.in43 = phi i64 [ %i.f, %.lr.ph ], [ %.0, %_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_.exit ] ; 4 uses
  %.0 = add nsw i64 %.0.in43, -1                  ; 5 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0
  %.sroa.03.0.copyload = load double, ptr %i.i, align 8, !tbaa !32 ; 2 uses
  %i.j = shl nuw i64 %.0, 1
  %i.k = add nuw nsw i64 %i.j, 2                  ; 3 uses
  %i.l = icmp slt i64 %i.k, %i.d
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.040.i = phi i64 [ %i.s, %.lr.ph.i ], [ %.0, %bb.b ]
  %.03539.i = phi i64 [ %i.w, %.lr.ph.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %0, i64 %.03539.i ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load double, ptr %i.n, align 8, !tbaa !52
  %i.p = load double, ptr %i.m, align 8, !tbaa !52
  %i.q = fcmp olt double %i.o, %i.p
  %i.r = zext i1 %i.q to i64
  %spec.select.i = add nsw i64 %.03539.i, %i.r    ; 2 uses
  %i.s = add nsw i64 %spec.select.i, -1           ; 3 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %.040.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !32
  store i64 %i.v, ptr %i.u, align 8, !tbaa !32
  %i.w = shl nsw i64 %spec.select.i, 1            ; 3 uses
  %i.x = icmp slt i64 %i.w, %i.d
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !176

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.035.lcssa.i = phi i64 [ %i.k, %bb.b ], [ %i.w, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ %.0, %bb.b ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %i.y = icmp eq i64 %.035.lcssa.i, %i.d
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !32
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.1.i = phi i64 [ %i.g, %bb.c ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.not38 = icmp slt i64 %.1.i, %.0.in43
  br i1 %.not38, label %_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_.exit, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.d, %bb.e
  %.244.i = phi i64 [ %.23745.i, %bb.e ], [ %.1.i, %bb.d ] ; 3 uses
  %.23745.in.i = add nsw i64 %.244.i, -1
  %.23745.i = sdiv i64 %.23745.in.i, 2            ; 4 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.23745.i
  %i.ac = load double, ptr %i.ab, align 8         ; 2 uses
  %i.ad = fcmp olt double %i.ac, %.sroa.03.0.copyload
  br i1 %i.ad, label %bb.e, label %_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_.exit

bb.e:                                             ; preds = %.lr.ph47.i
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.244.i
  store double %i.ac, ptr %i.ae, align 8, !tbaa !32
  %.not39 = icmp slt i64 %.23745.i, %.0.in43
  br i1 %.not39, label %_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_.exit, label %.lr.ph47.i, !llvm.loop !177

_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_.exit: ; preds = %.lr.ph47.i, %bb.e, %bb.d
  %.2.lcssa.i = phi i64 [ %.1.i, %bb.d ], [ %.244.i, %.lr.ph47.i ], [ %.23745.i, %bb.e ]
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %.2.lcssa.i
  store double %.sroa.03.0.copyload, ptr %i.af, align 8, !tbaa !32
  %i.ag = icmp sgt i64 %.0.in43, 1
  br i1 %i.ag, label %bb.b, label %.lr.ph45, !llvm.loop !178

.lr.ph45:                                         ; preds = %_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_.exit, %_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_.exit35
  %.1.in44 = phi i64 [ %.1, %_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_.exit35 ], [ %i.d, %_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_.exit ] ; 4 uses
  %.1 = add nsw i64 %.1.in44, -1                  ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1 ; 2 uses
  %.sroa.01.0.copyload = load double, ptr %i.ah, align 8, !tbaa !32 ; 2 uses
  %i.ai = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !32
  %i.aj = icmp samesign ugt i64 %.1.in44, 3
  br i1 %i.aj, label %.lr.ph.i31, label %._crit_edge.i22

.lr.ph.i31:                                       ; preds = %.lr.ph45, %.lr.ph.i31
  %.040.i32 = phi i64 [ %i.aq, %.lr.ph.i31 ], [ 0, %.lr.ph45 ]
  %.03539.i33 = phi i64 [ %i.au, %.lr.ph.i31 ], [ 2, %.lr.ph45 ] ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %0, i64 %.03539.i33 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  %i.am = load double, ptr %i.al, align 8, !tbaa !52
  %i.an = load double, ptr %i.ak, align 8, !tbaa !52
  %i.ao = fcmp olt double %i.am, %i.an
  %i.ap = zext i1 %i.ao to i64
  %spec.select.i34 = or disjoint i64 %.03539.i33, %i.ap ; 2 uses
  %i.aq = add nsw i64 %spec.select.i34, -1        ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %.040.i32
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !32
  store i64 %i.at, ptr %i.as, align 8, !tbaa !32
  %i.au = shl nsw i64 %spec.select.i34, 1         ; 3 uses
  %i.av = icmp slt i64 %i.au, %.1
  br i1 %i.av, label %.lr.ph.i31, label %._crit_edge.i22, !llvm.loop !176

._crit_edge.i22:                                  ; preds = %.lr.ph.i31, %.lr.ph45
  %.035.lcssa.i23 = phi i64 [ 2, %.lr.ph45 ], [ %i.au, %.lr.ph.i31 ]
  %.0.lcssa.i24 = phi i64 [ 0, %.lr.ph45 ], [ %i.aq, %.lr.ph.i31 ] ; 4 uses
  %i.aw = icmp eq i64 %.035.lcssa.i23, %.1
  br i1 %i.aw, label %.thread, label %bb.f

.thread:                                          ; preds = %._crit_edge.i22
  %i.ax = add nsw i64 %.1.in44, -2                ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i24
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !32
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !32
  br label %.lr.ph47.i27.preheader

bb.f:                                             ; preds = %._crit_edge.i22
  %i.bb = icmp sgt i64 %.0.lcssa.i24, 0
  br i1 %i.bb, label %.lr.ph47.i27.preheader, label %_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_.exit35

.lr.ph47.i27.preheader:                           ; preds = %.thread, %bb.f
  %.244.i28.ph = phi i64 [ %.0.lcssa.i24, %bb.f ], [ %i.ax, %.thread ]
  br label %.lr.ph47.i27

.lr.ph47.i27:                                     ; preds = %.lr.ph47.i27.preheader, %bb.g
  %.244.i28 = phi i64 [ %.23745.i303637, %bb.g ], [ %.244.i28.ph, %.lr.ph47.i27.preheader ] ; 3 uses
  %.23745.in.i29 = add nsw i64 %.244.i28, -1
  %.23745.i303637 = lshr i64 %.23745.in.i29, 1    ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.23745.i303637
  %i.bd = load double, ptr %i.bc, align 8         ; 2 uses
  %i.be = fcmp olt double %i.bd, %.sroa.01.0.copyload
  br i1 %i.be, label %bb.g, label %_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_.exit35

bb.g:                                             ; preds = %.lr.ph47.i27
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.244.i28
  store double %i.bd, ptr %i.bf, align 8, !tbaa !32
  %.not = icmp eq i64 %.23745.i303637, 0
  br i1 %.not, label %_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_.exit35, label %.lr.ph47.i27, !llvm.loop !177

_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_.exit35: ; preds = %.lr.ph47.i27, %bb.g, %bb.f
  %.2.lcssa.i26 = phi i64 [ %.0.lcssa.i24, %bb.f ], [ %.244.i28, %.lr.ph47.i27 ], [ 0, %bb.g ]
  %i.bg = getelementptr inbounds [8 x i8], ptr %0, i64 %.2.lcssa.i26
  store double %.sroa.01.0.copyload, ptr %i.bg, align 8, !tbaa !32
  %i.bh = icmp sgt i64 %.1.in44, 2
  br i1 %i.bh, label %.lr.ph45, label %._crit_edge, !llvm.loop !179

._crit_edge:                                      ; preds = %_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_.exit35, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(ptr %0, ptr %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 7 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1
  %i.g = add nsw i64 %i.d, -1                     ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_.exit
  %.0.in45 = phi i64 [ %i.f, %.lr.ph ], [ %.0, %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_.exit ] ; 4 uses
  %.0 = add nsw i64 %.0.in45, -1                  ; 5 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  %.sroa.05.0.copyload = load double, ptr %i.i, align 8, !tbaa !32 ; 2 uses
  %i.j = shl nuw i64 %.0, 1
  %i.k = add nuw nsw i64 %i.j, 2                  ; 3 uses
  %i.l = icmp slt i64 %i.k, %i.d
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.051.i = phi i64 [ %i.s, %.lr.ph.i ], [ %.0, %bb.b ]
  %.02650.i = phi i64 [ %i.w, %.lr.ph.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %0, i64 %.02650.i ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load double, ptr %i.n, align 8, !tbaa !52
  %i.p = load double, ptr %i.m, align 8, !tbaa !52
  %i.q = fcmp olt double %i.o, %i.p
  %i.r = zext i1 %i.q to i64
  %spec.select.i = add nsw i64 %.02650.i, %i.r    ; 2 uses
  %i.s = add nsw i64 %spec.select.i, -1           ; 3 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %.051.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !32
  store i64 %i.v, ptr %i.u, align 8, !tbaa !32
  %i.w = shl nsw i64 %spec.select.i, 1            ; 3 uses
  %i.x = icmp slt i64 %i.w, %i.d
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !180

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.026.lcssa.i = phi i64 [ %i.k, %bb.b ], [ %i.w, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ %.0, %bb.b ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %i.y = icmp eq i64 %.026.lcssa.i, %i.d
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !32
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.1.i = phi i64 [ %i.g, %bb.c ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.not40 = icmp slt i64 %.1.i, %.0.in45
  br i1 %.not40, label %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_.exit, label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %bb.d, %bb.e
  %.255.i = phi i64 [ %.22856.i, %bb.e ], [ %.1.i, %bb.d ] ; 3 uses
  %.22856.in.i = add nsw i64 %.255.i, -1
  %.22856.i = sdiv i64 %.22856.in.i, 2            ; 4 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.22856.i
  %i.ac = load double, ptr %i.ab, align 8         ; 2 uses
  %i.ad = fcmp olt double %i.ac, %.sroa.05.0.copyload
  br i1 %i.ad, label %bb.e, label %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_.exit

bb.e:                                             ; preds = %.lr.ph58.i
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.255.i
  store double %i.ac, ptr %i.ae, align 8, !tbaa !32
  %.not41 = icmp slt i64 %.22856.i, %.0.in45
  br i1 %.not41, label %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_.exit, label %.lr.ph58.i, !llvm.loop !181

_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_.exit: ; preds = %.lr.ph58.i, %bb.e, %bb.d
  %.2.lcssa.i = phi i64 [ %.1.i, %bb.d ], [ %.255.i, %.lr.ph58.i ], [ %.22856.i, %bb.e ]
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %.2.lcssa.i
  store double %.sroa.05.0.copyload, ptr %i.af, align 8, !tbaa !32
  %i.ag = icmp sgt i64 %.0.in45, 1
  br i1 %i.ag, label %bb.b, label %.lr.ph47, !llvm.loop !182

.lr.ph47:                                         ; preds = %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_.exit, %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_.exit32
  %.1.in46 = phi i64 [ %.1, %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_.exit32 ], [ %i.d, %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_.exit ] ; 4 uses
  %.1 = add nsw i64 %.1.in46, -1                  ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.1 ; 2 uses
  %.sroa.02.0.copyload = load double, ptr %i.ah, align 8, !tbaa !32 ; 2 uses
  %i.ai = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !32
  %i.aj = icmp samesign ugt i64 %.1.in46, 3
  br i1 %i.aj, label %.lr.ph.i28, label %._crit_edge.i19

.lr.ph.i28:                                       ; preds = %.lr.ph47, %.lr.ph.i28
  %.051.i29 = phi i64 [ %i.aq, %.lr.ph.i28 ], [ 0, %.lr.ph47 ]
  %.02650.i30 = phi i64 [ %i.au, %.lr.ph.i28 ], [ 2, %.lr.ph47 ] ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %0, i64 %.02650.i30 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  %i.am = load double, ptr %i.al, align 8, !tbaa !52
  %i.an = load double, ptr %i.ak, align 8, !tbaa !52
  %i.ao = fcmp olt double %i.am, %i.an
  %i.ap = zext i1 %i.ao to i64
  %spec.select.i31 = or disjoint i64 %.02650.i30, %i.ap ; 2 uses
  %i.aq = add nsw i64 %spec.select.i31, -1        ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %.051.i29
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !32
  store i64 %i.at, ptr %i.as, align 8, !tbaa !32
  %i.au = shl nsw i64 %spec.select.i31, 1         ; 3 uses
  %i.av = icmp slt i64 %i.au, %.1
  br i1 %i.av, label %.lr.ph.i28, label %._crit_edge.i19, !llvm.loop !180

._crit_edge.i19:                                  ; preds = %.lr.ph.i28, %.lr.ph47
  %.026.lcssa.i20 = phi i64 [ 2, %.lr.ph47 ], [ %i.au, %.lr.ph.i28 ]
  %.0.lcssa.i21 = phi i64 [ 0, %.lr.ph47 ], [ %i.aq, %.lr.ph.i28 ] ; 4 uses
  %i.aw = icmp eq i64 %.026.lcssa.i20, %.1
  br i1 %i.aw, label %.thread, label %bb.f

.thread:                                          ; preds = %._crit_edge.i19
  %i.ax = add nsw i64 %.1.in46, -2                ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i21
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !32
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !32
  br label %.lr.ph58.i24.preheader

bb.f:                                             ; preds = %._crit_edge.i19
  %i.bb = icmp sgt i64 %.0.lcssa.i21, 0
  br i1 %i.bb, label %.lr.ph58.i24.preheader, label %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_.exit32

.lr.ph58.i24.preheader:                           ; preds = %.thread, %bb.f
  %.255.i25.ph = phi i64 [ %.0.lcssa.i21, %bb.f ], [ %i.ax, %.thread ]
  br label %.lr.ph58.i24

.lr.ph58.i24:                                     ; preds = %.lr.ph58.i24.preheader, %bb.g
  %.255.i25 = phi i64 [ %.22856.i273839, %bb.g ], [ %.255.i25.ph, %.lr.ph58.i24.preheader ] ; 3 uses
  %.22856.in.i26 = add nsw i64 %.255.i25, -1
  %.22856.i273839 = lshr i64 %.22856.in.i26, 1    ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.22856.i273839
  %i.bd = load double, ptr %i.bc, align 8         ; 2 uses
  %i.be = fcmp olt double %i.bd, %.sroa.02.0.copyload
  br i1 %i.be, label %bb.g, label %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_.exit32

bb.g:                                             ; preds = %.lr.ph58.i24
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.255.i25
  store double %i.bd, ptr %i.bf, align 8, !tbaa !32
  %.not = icmp eq i64 %.22856.i273839, 0
  br i1 %.not, label %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_.exit32, label %.lr.ph58.i24, !llvm.loop !181

_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_.exit32: ; preds = %.lr.ph58.i24, %bb.g, %bb.f
  %.2.lcssa.i23 = phi i64 [ %.0.lcssa.i21, %bb.f ], [ %.255.i25, %.lr.ph58.i24 ], [ 0, %bb.g ]
  %i.bg = getelementptr inbounds [8 x i8], ptr %0, i64 %.2.lcssa.i23
  store double %.sroa.02.0.copyload, ptr %i.bg, align 8, !tbaa !32
  %i.bh = icmp sgt i64 %.1.in46, 2
  br i1 %i.bh, label %.lr.ph47, label %._crit_edge, !llvm.loop !183

._crit_edge:                                      ; preds = %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_.exit32, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 7 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1
  %i.g = add nsw i64 %i.d, -1                     ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_.exit
  %.0.in43 = phi i64 [ %i.f, %.lr.ph ], [ %.0, %_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_.exit ] ; 4 uses
  %.0 = add nsw i64 %.0.in43, -1                  ; 5 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0
  %.sroa.03.0.copyload = load double, ptr %i.i, align 8, !tbaa !32 ; 2 uses
  %i.j = shl nuw i64 %.0, 1
  %i.k = add nuw nsw i64 %i.j, 2                  ; 3 uses
  %i.l = icmp slt i64 %i.k, %i.d
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.040.i = phi i64 [ %i.s, %.lr.ph.i ], [ %.0, %bb.b ]
  %.03539.i = phi i64 [ %i.w, %.lr.ph.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %0, i64 %.03539.i ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load double, ptr %i.n, align 8, !tbaa !52
  %i.p = load double, ptr %i.m, align 8, !tbaa !52
  %i.q = fcmp olt double %i.o, %i.p
  %i.r = zext i1 %i.q to i64
  %spec.select.i = add nsw i64 %.03539.i, %i.r    ; 2 uses
  %i.s = add nsw i64 %spec.select.i, -1           ; 3 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %.040.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !32
  store i64 %i.v, ptr %i.u, align 8, !tbaa !32
  %i.w = shl nsw i64 %spec.select.i, 1            ; 3 uses
  %i.x = icmp slt i64 %i.w, %i.d
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !184

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.035.lcssa.i = phi i64 [ %i.k, %bb.b ], [ %i.w, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ %.0, %bb.b ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %i.y = icmp eq i64 %.035.lcssa.i, %i.d
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !32
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.1.i = phi i64 [ %i.g, %bb.c ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.not38 = icmp slt i64 %.1.i, %.0.in43
  br i1 %.not38, label %_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_.exit, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.d, %bb.e
  %.244.i = phi i64 [ %.23745.i, %bb.e ], [ %.1.i, %bb.d ] ; 3 uses
  %.23745.in.i = add nsw i64 %.244.i, -1
  %.23745.i = sdiv i64 %.23745.in.i, 2            ; 4 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.23745.i
  %i.ac = load double, ptr %i.ab, align 8         ; 2 uses
  %i.ad = fcmp olt double %i.ac, %.sroa.03.0.copyload
  br i1 %i.ad, label %bb.e, label %_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_.exit

bb.e:                                             ; preds = %.lr.ph47.i
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.244.i
  store double %i.ac, ptr %i.ae, align 8, !tbaa !32
  %.not39 = icmp slt i64 %.23745.i, %.0.in43
  br i1 %.not39, label %_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_.exit, label %.lr.ph47.i, !llvm.loop !185

_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_.exit: ; preds = %.lr.ph47.i, %bb.e, %bb.d
  %.2.lcssa.i = phi i64 [ %.1.i, %bb.d ], [ %.244.i, %.lr.ph47.i ], [ %.23745.i, %bb.e ]
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %.2.lcssa.i
  store double %.sroa.03.0.copyload, ptr %i.af, align 8, !tbaa !32
  %i.ag = icmp sgt i64 %.0.in43, 1
  br i1 %i.ag, label %bb.b, label %.lr.ph45, !llvm.loop !186

.lr.ph45:                                         ; preds = %_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_.exit, %_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_.exit35
  %.1.in44 = phi i64 [ %.1, %_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_.exit35 ], [ %i.d, %_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_.exit ] ; 4 uses
  %.1 = add nsw i64 %.1.in44, -1                  ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1 ; 2 uses
  %.sroa.01.0.copyload = load double, ptr %i.ah, align 8, !tbaa !32 ; 2 uses
  %i.ai = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !32
  %i.aj = icmp samesign ugt i64 %.1.in44, 3
  br i1 %i.aj, label %.lr.ph.i31, label %._crit_edge.i22

.lr.ph.i31:                                       ; preds = %.lr.ph45, %.lr.ph.i31
  %.040.i32 = phi i64 [ %i.aq, %.lr.ph.i31 ], [ 0, %.lr.ph45 ]
  %.03539.i33 = phi i64 [ %i.au, %.lr.ph.i31 ], [ 2, %.lr.ph45 ] ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %0, i64 %.03539.i33 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  %i.am = load double, ptr %i.al, align 8, !tbaa !52
  %i.an = load double, ptr %i.ak, align 8, !tbaa !52
  %i.ao = fcmp olt double %i.am, %i.an
  %i.ap = zext i1 %i.ao to i64
  %spec.select.i34 = or disjoint i64 %.03539.i33, %i.ap ; 2 uses
  %i.aq = add nsw i64 %spec.select.i34, -1        ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %.040.i32
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !32
  store i64 %i.at, ptr %i.as, align 8, !tbaa !32
  %i.au = shl nsw i64 %spec.select.i34, 1         ; 3 uses
  %i.av = icmp slt i64 %i.au, %.1
  br i1 %i.av, label %.lr.ph.i31, label %._crit_edge.i22, !llvm.loop !184

._crit_edge.i22:                                  ; preds = %.lr.ph.i31, %.lr.ph45
  %.035.lcssa.i23 = phi i64 [ 2, %.lr.ph45 ], [ %i.au, %.lr.ph.i31 ]
  %.0.lcssa.i24 = phi i64 [ 0, %.lr.ph45 ], [ %i.aq, %.lr.ph.i31 ] ; 4 uses
  %i.aw = icmp eq i64 %.035.lcssa.i23, %.1
  br i1 %i.aw, label %.thread, label %bb.f

.thread:                                          ; preds = %._crit_edge.i22
  %i.ax = add nsw i64 %.1.in44, -2                ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i24
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !32
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !32
  br label %.lr.ph47.i27.preheader

bb.f:                                             ; preds = %._crit_edge.i22
  %i.bb = icmp sgt i64 %.0.lcssa.i24, 0
  br i1 %i.bb, label %.lr.ph47.i27.preheader, label %_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_.exit35

.lr.ph47.i27.preheader:                           ; preds = %.thread, %bb.f
  %.244.i28.ph = phi i64 [ %.0.lcssa.i24, %bb.f ], [ %i.ax, %.thread ]
  br label %.lr.ph47.i27

.lr.ph47.i27:                                     ; preds = %.lr.ph47.i27.preheader, %bb.g
  %.244.i28 = phi i64 [ %.23745.i303637, %bb.g ], [ %.244.i28.ph, %.lr.ph47.i27.preheader ] ; 3 uses
  %.23745.in.i29 = add nsw i64 %.244.i28, -1
  %.23745.i303637 = lshr i64 %.23745.in.i29, 1    ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.23745.i303637
  %i.bd = load double, ptr %i.bc, align 8         ; 2 uses
  %i.be = fcmp olt double %i.bd, %.sroa.01.0.copyload
  br i1 %i.be, label %bb.g, label %_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_.exit35

bb.g:                                             ; preds = %.lr.ph47.i27
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.244.i28
  store double %i.bd, ptr %i.bf, align 8, !tbaa !32
  %.not = icmp eq i64 %.23745.i303637, 0
  br i1 %.not, label %_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_.exit35, label %.lr.ph47.i27, !llvm.loop !185

_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_.exit35: ; preds = %.lr.ph47.i27, %bb.g, %bb.f
  %.2.lcssa.i26 = phi i64 [ %.0.lcssa.i24, %bb.f ], [ %.244.i28, %.lr.ph47.i27 ], [ 0, %bb.g ]
  %i.bg = getelementptr inbounds [8 x i8], ptr %0, i64 %.2.lcssa.i26
  store double %.sroa.01.0.copyload, ptr %i.bg, align 8, !tbaa !32
  %i.bh = icmp sgt i64 %.1.in44, 2
  br i1 %i.bh, label %.lr.ph45, label %._crit_edge, !llvm.loop !187

._crit_edge:                                      ; preds = %_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_.exit35, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(ptr %0, ptr %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 7 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1
  %i.g = add nsw i64 %i.d, -1                     ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_.exit
  %.0.in45 = phi i64 [ %i.f, %.lr.ph ], [ %.0, %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_.exit ] ; 4 uses
  %.0 = add nsw i64 %.0.in45, -1                  ; 5 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  %.sroa.05.0.copyload = load double, ptr %i.i, align 8, !tbaa !32 ; 2 uses
  %i.j = shl nuw i64 %.0, 1
  %i.k = add nuw nsw i64 %i.j, 2                  ; 3 uses
  %i.l = icmp slt i64 %i.k, %i.d
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.051.i = phi i64 [ %i.s, %.lr.ph.i ], [ %.0, %bb.b ]
  %.02650.i = phi i64 [ %i.w, %.lr.ph.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %0, i64 %.02650.i ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load double, ptr %i.n, align 8, !tbaa !52
  %i.p = load double, ptr %i.m, align 8, !tbaa !52
  %i.q = fcmp olt double %i.o, %i.p
  %i.r = zext i1 %i.q to i64
  %spec.select.i = add nsw i64 %.02650.i, %i.r    ; 2 uses
  %i.s = add nsw i64 %spec.select.i, -1           ; 3 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %.051.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !32
  store i64 %i.v, ptr %i.u, align 8, !tbaa !32
  %i.w = shl nsw i64 %spec.select.i, 1            ; 3 uses
  %i.x = icmp slt i64 %i.w, %i.d
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !188

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.026.lcssa.i = phi i64 [ %i.k, %bb.b ], [ %i.w, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ %.0, %bb.b ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %i.y = icmp eq i64 %.026.lcssa.i, %i.d
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !32
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.1.i = phi i64 [ %i.g, %bb.c ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.not40 = icmp slt i64 %.1.i, %.0.in45
  br i1 %.not40, label %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_.exit, label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %bb.d, %bb.e
  %.255.i = phi i64 [ %.22856.i, %bb.e ], [ %.1.i, %bb.d ] ; 3 uses
  %.22856.in.i = add nsw i64 %.255.i, -1
  %.22856.i = sdiv i64 %.22856.in.i, 2            ; 4 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.22856.i
  %i.ac = load double, ptr %i.ab, align 8         ; 2 uses
  %i.ad = fcmp olt double %i.ac, %.sroa.05.0.copyload
  br i1 %i.ad, label %bb.e, label %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_.exit

bb.e:                                             ; preds = %.lr.ph58.i
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.255.i
  store double %i.ac, ptr %i.ae, align 8, !tbaa !32
  %.not41 = icmp slt i64 %.22856.i, %.0.in45
  br i1 %.not41, label %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_.exit, label %.lr.ph58.i, !llvm.loop !189

_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_.exit: ; preds = %.lr.ph58.i, %bb.e, %bb.d
  %.2.lcssa.i = phi i64 [ %.1.i, %bb.d ], [ %.255.i, %.lr.ph58.i ], [ %.22856.i, %bb.e ]
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %.2.lcssa.i
  store double %.sroa.05.0.copyload, ptr %i.af, align 8, !tbaa !32
  %i.ag = icmp sgt i64 %.0.in45, 1
  br i1 %i.ag, label %bb.b, label %.lr.ph47, !llvm.loop !190

.lr.ph47:                                         ; preds = %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_.exit, %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_.exit32
  %.1.in46 = phi i64 [ %.1, %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_.exit32 ], [ %i.d, %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_.exit ] ; 4 uses
  %.1 = add nsw i64 %.1.in46, -1                  ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.1 ; 2 uses
  %.sroa.02.0.copyload = load double, ptr %i.ah, align 8, !tbaa !32 ; 2 uses
  %i.ai = load i64, ptr %0, align 8, !tbaa !32
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !32
  %i.aj = icmp samesign ugt i64 %.1.in46, 3
  br i1 %i.aj, label %.lr.ph.i28, label %._crit_edge.i19

.lr.ph.i28:                                       ; preds = %.lr.ph47, %.lr.ph.i28
  %.051.i29 = phi i64 [ %i.aq, %.lr.ph.i28 ], [ 0, %.lr.ph47 ]
  %.02650.i30 = phi i64 [ %i.au, %.lr.ph.i28 ], [ 2, %.lr.ph47 ] ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %0, i64 %.02650.i30 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  %i.am = load double, ptr %i.al, align 8, !tbaa !52
  %i.an = load double, ptr %i.ak, align 8, !tbaa !52
  %i.ao = fcmp olt double %i.am, %i.an
  %i.ap = zext i1 %i.ao to i64
  %spec.select.i31 = or disjoint i64 %.02650.i30, %i.ap ; 2 uses
  %i.aq = add nsw i64 %spec.select.i31, -1        ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %.051.i29
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !32
  store i64 %i.at, ptr %i.as, align 8, !tbaa !32
  %i.au = shl nsw i64 %spec.select.i31, 1         ; 3 uses
  %i.av = icmp slt i64 %i.au, %.1
  br i1 %i.av, label %.lr.ph.i28, label %._crit_edge.i19, !llvm.loop !188

._crit_edge.i19:                                  ; preds = %.lr.ph.i28, %.lr.ph47
  %.026.lcssa.i20 = phi i64 [ 2, %.lr.ph47 ], [ %i.au, %.lr.ph.i28 ]
  %.0.lcssa.i21 = phi i64 [ 0, %.lr.ph47 ], [ %i.aq, %.lr.ph.i28 ] ; 4 uses
  %i.aw = icmp eq i64 %.026.lcssa.i20, %.1
  br i1 %i.aw, label %.thread, label %bb.f

.thread:                                          ; preds = %._crit_edge.i19
  %i.ax = add nsw i64 %.1.in46, -2                ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i21
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !32
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !32
  br label %.lr.ph58.i24.preheader

bb.f:                                             ; preds = %._crit_edge.i19
  %i.bb = icmp sgt i64 %.0.lcssa.i21, 0
  br i1 %i.bb, label %.lr.ph58.i24.preheader, label %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_.exit32

.lr.ph58.i24.preheader:                           ; preds = %.thread, %bb.f
  %.255.i25.ph = phi i64 [ %.0.lcssa.i21, %bb.f ], [ %i.ax, %.thread ]
  br label %.lr.ph58.i24

.lr.ph58.i24:                                     ; preds = %.lr.ph58.i24.preheader, %bb.g
  %.255.i25 = phi i64 [ %.22856.i273839, %bb.g ], [ %.255.i25.ph, %.lr.ph58.i24.preheader ] ; 3 uses
  %.22856.in.i26 = add nsw i64 %.255.i25, -1
  %.22856.i273839 = lshr i64 %.22856.in.i26, 1    ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.22856.i273839
  %i.bd = load double, ptr %i.bc, align 8         ; 2 uses
  %i.be = fcmp olt double %i.bd, %.sroa.02.0.copyload
  br i1 %i.be, label %bb.g, label %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_.exit32

bb.g:                                             ; preds = %.lr.ph58.i24
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.255.i25
  store double %i.bd, ptr %i.bf, align 8, !tbaa !32
  %.not = icmp eq i64 %.22856.i273839, 0
  br i1 %.not, label %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_.exit32, label %.lr.ph58.i24, !llvm.loop !189

_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_.exit32: ; preds = %.lr.ph58.i24, %bb.g, %bb.f
  %.2.lcssa.i23 = phi i64 [ %.0.lcssa.i21, %bb.f ], [ %.255.i25, %.lr.ph58.i24 ], [ 0, %bb.g ]
  %i.bg = getelementptr inbounds [8 x i8], ptr %0, i64 %.2.lcssa.i23
  store double %.sroa.02.0.copyload, ptr %i.bg, align 8, !tbaa !32
  %i.bh = icmp sgt i64 %.1.in46, 2
  br i1 %i.bh, label %.lr.ph47, label %._crit_edge, !llvm.loop !191

._crit_edge:                                      ; preds = %_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_.exit32, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS10one_result", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTS10one_result", !13, i64 0, !14, i64 8}
!13 = !{!"double", !6, i64 0}
!14 = !{!"p1 omnipotent char", !10, i64 0}
!15 = !{!12, !14, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !21}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !6, i64 0}
!29 = !{!14, !14, i64 0}
!30 = distinct !{null}
!31 = distinct !{null}
!32 = !{!13, !13, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 double", !10, i64 0}
!35 = distinct !{!35, !17, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = distinct !{!38, !17, !37, !36}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 _ZTS12ValueWrapperIdE", !10, i64 0}
!41 = distinct !{!41, !17, !36, !37}
!42 = distinct !{!42, !17, !37, !36}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 _ZTS12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEE", !10, i64 0}
!45 = distinct !{!45, !17, !36, !37}
!46 = distinct !{!46, !17, !37, !36}
!47 = distinct !{!47, !17}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = !{!53, !13, i64 0}
!53 = !{!"_ZTS12ValueWrapperIdE", !13, i64 0}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !17}
!61 = distinct !{!61, !17}
!62 = distinct !{!62, !17, !36, !37}
!63 = distinct !{!63, !17, !36}
!64 = distinct !{!64, !17, !36, !37}
!65 = distinct !{!65, !17, !36}
!66 = distinct !{!66, !17}
!67 = distinct !{!67, !17}
!68 = distinct !{!68, !17, !36, !37}
!69 = distinct !{!69, !17, !36}
!70 = distinct !{!70, !17}
!71 = distinct !{!71, !17}
!72 = distinct !{!72, !17, !36, !37}
!73 = distinct !{!73, !17, !36}
!74 = distinct !{!74, !17}
!75 = distinct !{!75, !17}
!76 = distinct !{!76, !17, !36, !37}
!77 = distinct !{!77, !17, !36}
!78 = distinct !{!78, !17}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !17, !36, !37}
!81 = distinct !{!81, !17, !36}
!82 = distinct !{!82, !17}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !17, !36, !37}
!85 = distinct !{!85, !17, !36}
!86 = distinct !{!86, !17}
!87 = distinct !{!87, !17}
!88 = distinct !{!88, !17, !36, !37}
!89 = distinct !{!89, !17, !36}
!90 = distinct !{!90, !17}
!91 = distinct !{!91, !17}
!92 = distinct !{!92, !17, !36, !37}
!93 = distinct !{!93, !17, !36}
!94 = distinct !{!94, !17}
!95 = distinct !{!95, !17}
!96 = distinct !{!96, !17, !36, !37}
!97 = distinct !{!97, !17, !36}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, !17}
!100 = distinct !{!100, !17, !36, !37}
!101 = distinct !{!101, !17, !36}
!102 = distinct !{!102, !17}
!103 = distinct !{!103, !17}
!104 = distinct !{!104, !17, !36, !37}
!105 = distinct !{!105, !17, !36}
!106 = distinct !{!106, !17}
!107 = distinct !{!107, !17}
!108 = distinct !{!108, !17, !36, !37}
!109 = distinct !{!109, !17, !36}
!110 = distinct !{!110, !17}
!111 = distinct !{!111, !17}
!112 = distinct !{!112, !17, !36, !37}
!113 = distinct !{!113, !17, !36}
!114 = distinct !{!114, !17}
!115 = distinct !{!115, !17, !36, !37}
!116 = distinct !{!116, !17, !36}
!117 = distinct !{!117, !17}
!118 = distinct !{!118, !17, !36, !37}
!119 = distinct !{!119, !17, !36}
!120 = distinct !{!120, !17}
!121 = distinct !{!121, !17, !36, !37}
!122 = distinct !{!122, !17, !36}
!123 = distinct !{!123, !17}
!124 = distinct !{!124, !17, !36, !37}
!125 = distinct !{!125, !17, !36}
!126 = distinct !{!126, !17}
!127 = distinct !{!127, !17, !36, !37}
!128 = distinct !{!128, !17, !36}
!129 = distinct !{!129, !17}
!130 = distinct !{!130, !17, !36, !37}
!131 = distinct !{!131, !17, !36}
!132 = distinct !{!132, !17}
end_hunk_0

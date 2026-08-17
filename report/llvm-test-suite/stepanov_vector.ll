inline.NumInlined: 864
inline.NumDeleted: 161
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_:bb.a
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1) local_unnamed_addr #10 comdat {
bb.a:
  %2 = alloca %"class.std::reverse_iterator.2", align 8 ; 2 uses
  %3 = alloca %"class.std::reverse_iterator.2", align 8 ; 2 uses
  %4 = alloca %"class.std::reverse_iterator.2", align 8 ; 2 uses
  %5 = alloca %"class.std::reverse_iterator.2", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !153 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33, !noalias !156 ; 2 uses
  %i.e = sub i64 %i.d, %i.b
  %i.f = icmp sgt i64 %i.e, 8
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !32 ; 2 uses
  %i.i = inttoptr i64 %i.d to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.sroa.2.0 = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.g ]
  %.sroa.210.0 = phi ptr [ %i.g, %bb.b ], [ %.sroa.210.1, %bb.g ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.2.1 = phi ptr [ %.sroa.2.0, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.2.1, i64 -8 ; 6 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !32 ; 2 uses
  %i.l = fcmp olt double %i.h, %i.k
  br i1 %i.l, label %bb.d, label %bb.e, !llvm.loop !159

bb.e:                                             ; preds = %bb.d
  %i.m = icmp ult ptr %.sroa.210.0, %i.j
  br i1 %i.m, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.e, %.preheader
  %.sroa.210.1 = phi ptr [ %i.p, %.preheader ], [ %.sroa.210.0, %bb.e ] ; 5 uses
  %i.n = load double, ptr %.sroa.210.1, align 8, !tbaa !32 ; 2 uses
  %i.o = fcmp olt double %i.n, %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.210.1, i64 8
  br i1 %i.o, label %.preheader, label %bb.f, !llvm.loop !160

bb.f:                                             ; preds = %.preheader
  %i.q = icmp ult ptr %.sroa.210.1, %i.j
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double %i.n, ptr %i.j, align 8, !tbaa !32
  store double %i.k, ptr %.sroa.210.1, align 8, !tbaa !32
  br label %bb.c, !llvm.loop !161

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.b, ptr %i.r, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = ptrtoint ptr %.sroa.2.1 to i64           ; 2 uses
  store i64 %i.t, ptr %i.s, align 8, !tbaa !33, !alias.scope !162
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !33, !alias.scope !165
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i64, ptr %i.c, align 8, !tbaa !33
  store i64 %i.w, ptr %i.v, align 8, !tbaa !33
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9benchmark8heapsortIPddEEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat {
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
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.az
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
define linkonce_odr dso_local void @_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_(ptr %0, ptr %1) local_unnamed_addr #10 comdat {
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

bb.b:                                             ; preds = %.lr.ph, %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit
  %.0.in43 = phi i64 [ %i.f, %.lr.ph ], [ %.0, %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit ] ; 4 uses
  %.0 = add nsw i64 %.0.in43, -1                  ; 5 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0
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
  %.not38 = icmp slt i64 %.1.i, %.0.in43
  br i1 %.not38, label %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit, label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %bb.d, %bb.e
  %.255.i = phi i64 [ %.22956.i, %bb.e ], [ %.1.i, %bb.d ] ; 3 uses
  %.22956.in.i = add nsw i64 %.255.i, -1
  %.22956.i = sdiv i64 %.22956.in.i, 2            ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.22956.i
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !32 ; 2 uses
  %i.ae = fcmp olt double %i.ad, %i.j
  br i1 %i.ae, label %bb.e, label %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit

bb.e:                                             ; preds = %.lr.ph58.i
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %.255.i
  store double %i.ad, ptr %i.af, align 8, !tbaa !32
  %.not39 = icmp slt i64 %.22956.i, %.0.in43
  br i1 %.not39, label %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit, label %.lr.ph58.i, !llvm.loop !173

_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit: ; preds = %.lr.ph58.i, %bb.e, %bb.d
  %.2.lcssa.i = phi i64 [ %.1.i, %bb.d ], [ %.255.i, %.lr.ph58.i ], [ %.22956.i, %bb.e ]
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.2.lcssa.i
  store double %i.j, ptr %i.ag, align 8, !tbaa !32
  %i.ah = icmp sgt i64 %.0.in43, 1
  br i1 %i.ah, label %bb.b, label %.lr.ph45, !llvm.loop !174

.lr.ph45:                                         ; preds = %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit, %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit27
  %.1.in44 = phi i64 [ %.1, %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit27 ], [ %i.d, %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit ] ; 4 uses
  %.1 = add nsw i64 %.1.in44, -1                  ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !32 ; 2 uses
  %i.ak = load double, ptr %0, align 8, !tbaa !32
  store double %i.ak, ptr %i.ai, align 8, !tbaa !32
  %i.al = icmp samesign ugt i64 %.1.in44, 3
  br i1 %i.al, label %.lr.ph.i23, label %._crit_edge.i14

.lr.ph.i23:                                       ; preds = %.lr.ph45, %.lr.ph.i23
  %.051.i24 = phi i64 [ %i.as, %.lr.ph.i23 ], [ 0, %.lr.ph45 ]
  %.02750.i25 = phi i64 [ %i.aw, %.lr.ph.i23 ], [ 2, %.lr.ph45 ] ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %0, i64 %.02750.i25 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 -8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !32
  %i.ap = load double, ptr %i.am, align 8, !tbaa !32
  %i.aq = fcmp olt double %i.ao, %i.ap
  %i.ar = zext i1 %i.aq to i64
  %.128.i26 = or disjoint i64 %.02750.i25, %i.ar  ; 2 uses
  %i.as = add nsw i64 %.128.i26, -1               ; 3 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !32
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.051.i24
  store double %i.au, ptr %i.av, align 8, !tbaa !32
  %i.aw = shl nsw i64 %.128.i26, 1                ; 3 uses
  %i.ax = icmp slt i64 %i.aw, %.1
  br i1 %i.ax, label %.lr.ph.i23, label %._crit_edge.i14, !llvm.loop !172

._crit_edge.i14:                                  ; preds = %.lr.ph.i23, %.lr.ph45
  %.027.lcssa.i15 = phi i64 [ 2, %.lr.ph45 ], [ %i.aw, %.lr.ph.i23 ]
  %.0.lcssa.i16 = phi i64 [ 0, %.lr.ph45 ], [ %i.as, %.lr.ph.i23 ] ; 4 uses
  %i.ay = icmp eq i64 %.027.lcssa.i15, %.1
  br i1 %i.ay, label %.thread, label %bb.f

.thread:                                          ; preds = %._crit_edge.i14
  %i.az = add nsw i64 %.1.in44, -2                ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !32
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i16
  store double %i.bb, ptr %i.bc, align 8, !tbaa !32
  br label %.lr.ph58.i19.preheader

bb.f:                                             ; preds = %._crit_edge.i14
  %i.bd = icmp sgt i64 %.0.lcssa.i16, 0
  br i1 %i.bd, label %.lr.ph58.i19.preheader, label %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit27

.lr.ph58.i19.preheader:                           ; preds = %.thread, %bb.f
  %.255.i20.ph = phi i64 [ %.0.lcssa.i16, %bb.f ], [ %i.az, %.thread ]
  br label %.lr.ph58.i19

.lr.ph58.i19:                                     ; preds = %.lr.ph58.i19.preheader, %bb.g
  %.255.i20 = phi i64 [ %.22956.i223637, %bb.g ], [ %.255.i20.ph, %.lr.ph58.i19.preheader ] ; 3 uses
  %.22956.in.i21 = add nsw i64 %.255.i20, -1
  %.22956.i223637 = lshr i64 %.22956.in.i21, 1    ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.22956.i223637
  %i.bf = load double, ptr %i.be, align 8, !tbaa !32 ; 2 uses
  %i.bg = fcmp olt double %i.bf, %i.aj
  br i1 %i.bg, label %bb.g, label %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit27

bb.g:                                             ; preds = %.lr.ph58.i19
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.255.i20
  store double %i.bf, ptr %i.bh, align 8, !tbaa !32
  %.not = icmp eq i64 %.22956.i223637, 0
  br i1 %.not, label %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit27, label %.lr.ph58.i19, !llvm.loop !173

_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit27: ; preds = %.lr.ph58.i19, %bb.g, %bb.f
  %.2.lcssa.i18 = phi i64 [ %.0.lcssa.i16, %bb.f ], [ %.255.i20, %.lr.ph58.i19 ], [ 0, %bb.g ]
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %.2.lcssa.i18
  store double %i.aj, ptr %i.bi, align 8, !tbaa !32
  %i.bj = icmp sgt i64 %.1.in44, 2
  br i1 %i.bj, label %.lr.ph45, label %._crit_edge, !llvm.loop !175

._crit_edge:                                      ; preds = %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit27, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 22 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !44
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 8 uses
  %i.g = icmp sgt i64 %i.f, 1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = lshr i64 %i.f, 1
  %i.i = add nsw i64 %i.f, -1
  %i.j = sub nsw i64 1, %i.f
  %i.k = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  br label %bb.b

.lr.ph46:                                         ; preds = %_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 -8
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit
  %.0.in44 = phi i64 [ %i.h, %.lr.ph ], [ %.0, %_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit ] ; 5 uses
  %.0 = add nsw i64 %.0.in44, -1                  ; 4 uses
  %i.n = sub nsw i64 1, %.0.in44
  %i.o = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = load double, ptr %i.p, align 8, !tbaa !32 ; 2 uses
  %i.r = shl nuw i64 %.0, 1
  %i.s = add nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = icmp slt i64 %i.s, %i.f
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.041.i = phi i64 [ %i.ae, %.lr.ph.i ], [ %.0, %bb.b ]
  %.02740.i = phi i64 [ %i.am, %.lr.ph.i ], [ %i.s, %bb.b ] ; 3 uses
  %i.u = sub i64 1, %.02740.i
  %i.v = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.x = load double, ptr %i.w, align 8, !tbaa !32
  %i.y = sub i64 0, %.02740.i
  %i.z = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !32
  %i.ac = fcmp olt double %i.x, %i.ab
  %i.ad = zext i1 %i.ac to i64
  %.128.i = add nsw i64 %.02740.i, %i.ad          ; 3 uses
  %i.ae = add nsw i64 %.128.i, -1                 ; 2 uses
  %i.af = sub i64 1, %.128.i
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !32
  %i.aj = sub i64 0, %.041.i
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8
  store double %i.ai, ptr %i.al, align 8, !tbaa !32
  %i.am = shl nsw i64 %.128.i, 1                  ; 3 uses
  %i.an = icmp slt i64 %i.am, %i.f
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !176

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.027.lcssa.i = phi i64 [ %i.s, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ %.0, %bb.b ], [ %i.ae, %.lr.ph.i ] ; 2 uses
  %i.ao = icmp eq i64 %.027.lcssa.i, %i.f
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.ap = load double, ptr %i.l, align 8, !tbaa !32
  %i.aq = sub i64 0, %.0.lcssa.i
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  store double %i.ap, ptr %i.as, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.1.i = phi i64 [ %i.i, %bb.c ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.not39 = icmp slt i64 %.1.i, %.0.in44
  br i1 %.not39, label %_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %bb.d, %bb.e
  %.245.i = phi i64 [ %.22946.i, %bb.e ], [ %.1.i, %bb.d ] ; 3 uses
  %.22946.in.i = add nsw i64 %.245.i, -1
  %.22946.i = sdiv i64 %.22946.in.i, 2            ; 4 uses
  %i.at = sub nsw i64 0, %.22946.i
  %i.au = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.at
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = fcmp olt double %i.aw, %i.q
  br i1 %i.ax, label %bb.e, label %_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit

bb.e:                                             ; preds = %.lr.ph48.i
  %i.ay = sub nsw i64 0, %.245.i
  %i.az = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8
  store double %i.aw, ptr %i.ba, align 8, !tbaa !32
  %.not40 = icmp slt i64 %.22946.i, %.0.in44
  br i1 %.not40, label %_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit, label %.lr.ph48.i, !llvm.loop !177

_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit: ; preds = %.lr.ph48.i, %bb.e, %bb.d
  %.2.lcssa.i = phi i64 [ %.1.i, %bb.d ], [ %.22946.i, %bb.e ], [ %.245.i, %.lr.ph48.i ]
  %i.bb = sub i64 0, %.2.lcssa.i
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8
  store double %i.q, ptr %i.bd, align 8, !tbaa !32
  %i.be = icmp sgt i64 %.0.in44, 1
  br i1 %i.be, label %bb.b, label %.lr.ph46, !llvm.loop !178

bb.f:                                             ; preds = %.lr.ph46, %_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit30
  %.1.in45 = phi i64 [ %i.f, %.lr.ph46 ], [ %.1, %_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit30 ] ; 6 uses
  %.1 = add nsw i64 %.1.in45, -1                  ; 3 uses
  %i.bf = sub nsw i64 1, %.1.in45
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -8 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !32 ; 2 uses
  %i.bj = load double, ptr %i.m, align 8, !tbaa !32
  store double %i.bj, ptr %i.bh, align 8, !tbaa !32
  %i.bk = icmp samesign ugt i64 %.1.in45, 3
  br i1 %i.bk, label %.lr.ph.i26, label %._crit_edge.i13

.lr.ph.i26:                                       ; preds = %bb.f, %.lr.ph.i26
  %.041.i27 = phi i64 [ %i.bv, %.lr.ph.i26 ], [ 0, %bb.f ]
  %.02740.i28 = phi i64 [ %i.cd, %.lr.ph.i26 ], [ 2, %bb.f ] ; 3 uses
  %i.bl = sub i64 1, %.02740.i28
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !32
  %i.bp = sub i64 0, %.02740.i28
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bp
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !32
  %i.bt = fcmp olt double %i.bo, %i.bs
  %i.bu = zext i1 %i.bt to i64
  %.128.i29 = or disjoint i64 %.02740.i28, %i.bu  ; 3 uses
  %i.bv = add nsw i64 %.128.i29, -1               ; 2 uses
  %i.bw = sub i64 1, %.128.i29
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8
  %i.bz = load double, ptr %i.by, align 8, !tbaa !32
  %i.ca = sub i64 0, %.041.i27
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ca
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8
  store double %i.bz, ptr %i.cc, align 8, !tbaa !32
  %i.cd = shl nsw i64 %.128.i29, 1                ; 3 uses
  %i.ce = icmp slt i64 %i.cd, %.1
  br i1 %i.ce, label %.lr.ph.i26, label %._crit_edge.i13, !llvm.loop !176

._crit_edge.i13:                                  ; preds = %.lr.ph.i26, %bb.f
  %.027.lcssa.i14 = phi i64 [ 2, %bb.f ], [ %i.cd, %.lr.ph.i26 ]
  %.0.lcssa.i15 = phi i64 [ 0, %bb.f ], [ %i.bv, %.lr.ph.i26 ] ; 4 uses
  %i.cf = icmp eq i64 %.027.lcssa.i14, %.1
  br i1 %i.cf, label %.thread, label %bb.g

.thread:                                          ; preds = %._crit_edge.i13
  %i.cg = add nsw i64 %.1.in45, -2
  %i.ch = sub nsw i64 2, %.1.in45
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !32
end_hunk_0
begin_hunk_1_@_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_:bb.a
  %i.o = load double, ptr %i.n, align 8, !tbaa !32 ; 2 uses
  %i.p = shl nuw i64 %.0, 1
  %i.q = add nuw nsw i64 %i.p, 2                  ; 3 uses
  %i.r = icmp slt i64 %i.q, %i.d
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.041.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.0, %bb.b ]
  %.02740.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %i.q, %bb.b ] ; 3 uses
  %i.s = sub i64 1, %.02740.i
  %i.t = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.v = load double, ptr %i.u, align 8, !tbaa !32
  %i.w = sub i64 0, %.02740.i
  %i.x = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.z = load double, ptr %i.y, align 8, !tbaa !32
  %i.aa = fcmp olt double %i.v, %i.z
  %i.ab = zext i1 %i.aa to i64
  %.128.i = add nsw i64 %.02740.i, %i.ab          ; 3 uses
  %i.ac = add nsw i64 %.128.i, -1                 ; 2 uses
  %i.ad = sub i64 1, %.128.i
  %i.ae = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load double, ptr %i.af, align 8, !tbaa !32
  %i.ah = sub i64 0, %.041.i
  %i.ai = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  store double %i.ag, ptr %i.aj, align 8, !tbaa !32
  %i.ak = shl nsw i64 %.128.i, 1                  ; 3 uses
  %i.al = icmp slt i64 %i.ak, %i.d
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !180

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.027.lcssa.i = phi i64 [ %i.q, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ %.0, %bb.b ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %i.am = icmp eq i64 %.027.lcssa.i, %i.d
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.an = load double, ptr %i.j, align 8, !tbaa !32
  %i.ao = sub i64 0, %.0.lcssa.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8
  store double %i.an, ptr %i.aq, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.1.i = phi i64 [ %i.g, %bb.c ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.not39 = icmp slt i64 %.1.i, %.0.in44
  br i1 %.not39, label %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %bb.d, %bb.e
  %.245.i = phi i64 [ %.22946.i, %bb.e ], [ %.1.i, %bb.d ] ; 3 uses
  %.22946.in.i = add nsw i64 %.245.i, -1
  %.22946.i = sdiv i64 %.22946.in.i, 2            ; 4 uses
  %i.ar = sub nsw i64 0, %.22946.i
  %i.as = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8
  %i.au = load double, ptr %i.at, align 8, !tbaa !32 ; 2 uses
  %i.av = fcmp olt double %i.au, %i.o
  br i1 %i.av, label %bb.e, label %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit

bb.e:                                             ; preds = %.lr.ph48.i
  %i.aw = sub nsw i64 0, %.245.i
  %i.ax = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8
  store double %i.au, ptr %i.ay, align 8, !tbaa !32
  %.not40 = icmp slt i64 %.22946.i, %.0.in44
  br i1 %.not40, label %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit, label %.lr.ph48.i, !llvm.loop !181

_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit: ; preds = %.lr.ph48.i, %bb.e, %bb.d
  %.2.lcssa.i = phi i64 [ %.1.i, %bb.d ], [ %.22946.i, %bb.e ], [ %.245.i, %.lr.ph48.i ]
  %i.az = sub i64 0, %.2.lcssa.i
  %i.ba = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8
  store double %i.o, ptr %i.bb, align 8, !tbaa !32
  %i.bc = icmp sgt i64 %.0.in44, 1
  br i1 %i.bc, label %bb.b, label %.lr.ph46, !llvm.loop !182

bb.f:                                             ; preds = %.lr.ph46, %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit30
  %.1.in45 = phi i64 [ %i.d, %.lr.ph46 ], [ %.1, %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit30 ] ; 6 uses
  %.1 = add nsw i64 %.1.in45, -1                  ; 3 uses
  %i.bd = sub nsw i64 1, %.1.in45
  %i.be = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8 ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !32 ; 2 uses
  %i.bh = load double, ptr %i.k, align 8, !tbaa !32
  store double %i.bh, ptr %i.bf, align 8, !tbaa !32
  %i.bi = icmp samesign ugt i64 %.1.in45, 3
  br i1 %i.bi, label %.lr.ph.i26, label %._crit_edge.i13

.lr.ph.i26:                                       ; preds = %bb.f, %.lr.ph.i26
  %.041.i27 = phi i64 [ %i.bt, %.lr.ph.i26 ], [ 0, %bb.f ]
  %.02740.i28 = phi i64 [ %i.cb, %.lr.ph.i26 ], [ 2, %bb.f ] ; 3 uses
  %i.bj = sub i64 1, %.02740.i28
  %i.bk = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !32
  %i.bn = sub i64 0, %.02740.i28
  %i.bo = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !32
  %i.br = fcmp olt double %i.bm, %i.bq
  %i.bs = zext i1 %i.br to i64
  %.128.i29 = or disjoint i64 %.02740.i28, %i.bs  ; 3 uses
  %i.bt = add nsw i64 %.128.i29, -1               ; 2 uses
  %i.bu = sub i64 1, %.128.i29
  %i.bv = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !32
  %i.by = sub i64 0, %.041.i27
  %i.bz = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8
  store double %i.bx, ptr %i.ca, align 8, !tbaa !32
  %i.cb = shl nsw i64 %.128.i29, 1                ; 3 uses
  %i.cc = icmp slt i64 %i.cb, %.1
  br i1 %i.cc, label %.lr.ph.i26, label %._crit_edge.i13, !llvm.loop !180

._crit_edge.i13:                                  ; preds = %.lr.ph.i26, %bb.f
  %.027.lcssa.i14 = phi i64 [ 2, %bb.f ], [ %i.cb, %.lr.ph.i26 ]
  %.0.lcssa.i15 = phi i64 [ 0, %bb.f ], [ %i.bt, %.lr.ph.i26 ] ; 4 uses
  %i.cd = icmp eq i64 %.027.lcssa.i14, %.1
  br i1 %i.cd, label %.thread, label %bb.g

.thread:                                          ; preds = %._crit_edge.i13
  %i.ce = add nsw i64 %.1.in45, -2
  %i.cf = sub nsw i64 2, %.1.in45
  %i.cg = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -8
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !32
  %i.cj = sub i64 0, %.0.lcssa.i15
  %i.ck = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -8
  store double %i.ci, ptr %i.cl, align 8, !tbaa !32
  br label %.lr.ph48.i19.preheader

bb.g:                                             ; preds = %._crit_edge.i13
  %i.cm = icmp sgt i64 %.0.lcssa.i15, 0
  br i1 %i.cm, label %.lr.ph48.i19.preheader, label %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit30

.lr.ph48.i19.preheader:                           ; preds = %.thread, %bb.g
  %.245.i20.ph = phi i64 [ %.0.lcssa.i15, %bb.g ], [ %i.ce, %.thread ]
  br label %.lr.ph48.i19

.lr.ph48.i19:                                     ; preds = %.lr.ph48.i19.preheader, %bb.h
  %.245.i20 = phi i64 [ %.22946.i223738, %bb.h ], [ %.245.i20.ph, %.lr.ph48.i19.preheader ] ; 3 uses
  %.22946.in.i21 = add nsw i64 %.245.i20, -1
  %.22946.i223738 = lshr i64 %.22946.in.i21, 1    ; 3 uses
  %i.cn = sub nsw i64 0, %.22946.i223738
  %i.co = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -8
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !32 ; 2 uses
  %i.cr = fcmp olt double %i.cq, %i.bg
  br i1 %i.cr, label %bb.h, label %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit30

bb.h:                                             ; preds = %.lr.ph48.i19
  %i.cs = sub nsw i64 0, %.245.i20
  %i.ct = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8
  store double %i.cq, ptr %i.cu, align 8, !tbaa !32
  %.not = icmp eq i64 %.22946.i223738, 0
  br i1 %.not, label %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit30, label %.lr.ph48.i19, !llvm.loop !181

_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit30: ; preds = %.lr.ph48.i19, %bb.h, %bb.g
  %.2.lcssa.i18 = phi i64 [ %.0.lcssa.i15, %bb.g ], [ 0, %bb.h ], [ %.245.i20, %.lr.ph48.i19 ]
  %i.cv = sub i64 0, %.2.lcssa.i18
  %i.cw = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.cv
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -8
  store double %i.bg, ptr %i.cx, align 8, !tbaa !32
  %i.cy = icmp sgt i64 %.1.in45, 2
  br i1 %i.cy, label %bb.f, label %._crit_edge, !llvm.loop !183

._crit_edge:                                      ; preds = %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit30, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44, !noalias !184 ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44, !noalias !187
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 7 uses
  %i.i = icmp sgt i64 %i.h, 1
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = lshr i64 %i.h, 1
  %i.k = add nsw i64 %i.h, -1                     ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.k
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit
  %.0.in44 = phi i64 [ %i.j, %.lr.ph ], [ %.0, %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit ] ; 4 uses
  %.0 = add nsw i64 %.0.in44, -1                  ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0
  %i.n = load double, ptr %i.m, align 8, !tbaa !32 ; 2 uses
  %i.o = shl nuw i64 %.0, 1
  %i.p = add nuw nsw i64 %i.o, 2                  ; 3 uses
  %i.q = icmp slt i64 %i.p, %i.h
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.049.i = phi i64 [ %i.x, %.lr.ph.i ], [ %.0, %bb.b ]
  %.02748.i = phi i64 [ %i.ab, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.b, i64 %.02748.i ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load double, ptr %i.s, align 8, !tbaa !32
  %i.u = load double, ptr %i.r, align 8, !tbaa !32
  %i.v = fcmp olt double %i.t, %i.u
  %i.w = zext i1 %i.v to i64
  %.128.i = add nsw i64 %.02748.i, %i.w           ; 2 uses
  %i.x = add nsw i64 %.128.i, -1                  ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !32
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.049.i
  store double %i.z, ptr %i.aa, align 8, !tbaa !32
  %i.ab = shl nsw i64 %.128.i, 1                  ; 3 uses
  %i.ac = icmp slt i64 %i.ab, %i.h
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !190

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.027.lcssa.i = phi i64 [ %i.p, %bb.b ], [ %i.ab, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ %.0, %bb.b ], [ %i.x, %.lr.ph.i ] ; 2 uses
  %i.ad = icmp eq i64 %.027.lcssa.i, %i.h
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.ae = load double, ptr %i.l, align 8, !tbaa !32
  %i.af = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.0.lcssa.i
  store double %i.ae, ptr %i.af, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.1.i = phi i64 [ %i.k, %bb.c ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.not39 = icmp slt i64 %.1.i, %.0.in44
  br i1 %.not39, label %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit, label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %bb.d, %bb.e
  %.253.i = phi i64 [ %.22954.i, %bb.e ], [ %.1.i, %bb.d ] ; 3 uses
  %.22954.in.i = add nsw i64 %.253.i, -1
  %.22954.i = sdiv i64 %.22954.in.i, 2            ; 4 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.22954.i
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !32 ; 2 uses
  %i.ai = fcmp olt double %i.ah, %i.n
  br i1 %i.ai, label %bb.e, label %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit

bb.e:                                             ; preds = %.lr.ph56.i
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.253.i
  store double %i.ah, ptr %i.aj, align 8, !tbaa !32
  %.not40 = icmp slt i64 %.22954.i, %.0.in44
  br i1 %.not40, label %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit, label %.lr.ph56.i, !llvm.loop !191

_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit: ; preds = %.lr.ph56.i, %bb.e, %bb.d
  %.2.lcssa.i = phi i64 [ %.1.i, %bb.d ], [ %.253.i, %.lr.ph56.i ], [ %.22954.i, %bb.e ]
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.2.lcssa.i
  store double %i.n, ptr %i.ak, align 8, !tbaa !32
  %i.al = icmp sgt i64 %.0.in44, 1
  br i1 %i.al, label %bb.b, label %.lr.ph46, !llvm.loop !192

.lr.ph46:                                         ; preds = %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit, %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit26
  %.1.in45 = phi i64 [ %.1, %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit26 ], [ %i.h, %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit ] ; 4 uses
  %.1 = add nsw i64 %.1.in45, -1                  ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.1 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !32 ; 2 uses
  %i.ao = load double, ptr %i.b, align 8, !tbaa !32
  store double %i.ao, ptr %i.am, align 8, !tbaa !32
  %i.ap = icmp samesign ugt i64 %.1.in45, 3
  br i1 %i.ap, label %.lr.ph.i22, label %._crit_edge.i13

.lr.ph.i22:                                       ; preds = %.lr.ph46, %.lr.ph.i22
  %.049.i23 = phi i64 [ %i.aw, %.lr.ph.i22 ], [ 0, %.lr.ph46 ]
  %.02748.i24 = phi i64 [ %i.ba, %.lr.ph.i22 ], [ 2, %.lr.ph46 ] ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.b, i64 %.02748.i24 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !32
  %i.at = load double, ptr %i.aq, align 8, !tbaa !32
  %i.au = fcmp olt double %i.as, %i.at
  %i.av = zext i1 %i.au to i64
  %.128.i25 = or disjoint i64 %.02748.i24, %i.av  ; 2 uses
  %i.aw = add nsw i64 %.128.i25, -1               ; 3 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !32
  %i.az = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.049.i23
  store double %i.ay, ptr %i.az, align 8, !tbaa !32
  %i.ba = shl nsw i64 %.128.i25, 1                ; 3 uses
  %i.bb = icmp slt i64 %i.ba, %.1
  br i1 %i.bb, label %.lr.ph.i22, label %._crit_edge.i13, !llvm.loop !190

._crit_edge.i13:                                  ; preds = %.lr.ph.i22, %.lr.ph46
  %.027.lcssa.i14 = phi i64 [ 2, %.lr.ph46 ], [ %i.ba, %.lr.ph.i22 ]
  %.0.lcssa.i15 = phi i64 [ 0, %.lr.ph46 ], [ %i.aw, %.lr.ph.i22 ] ; 4 uses
  %i.bc = icmp eq i64 %.027.lcssa.i14, %.1
  br i1 %i.bc, label %.thread, label %bb.f

.thread:                                          ; preds = %._crit_edge.i13
  %i.bd = add nsw i64 %.1.in45, -2                ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !32
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.0.lcssa.i15
  store double %i.bf, ptr %i.bg, align 8, !tbaa !32
  br label %.lr.ph56.i18.preheader

bb.f:                                             ; preds = %._crit_edge.i13
  %i.bh = icmp sgt i64 %.0.lcssa.i15, 0
  br i1 %i.bh, label %.lr.ph56.i18.preheader, label %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit26

.lr.ph56.i18.preheader:                           ; preds = %.thread, %bb.f
  %.253.i19.ph = phi i64 [ %.0.lcssa.i15, %bb.f ], [ %i.bd, %.thread ]
  br label %.lr.ph56.i18

.lr.ph56.i18:                                     ; preds = %.lr.ph56.i18.preheader, %bb.g
  %.253.i19 = phi i64 [ %.22954.i213738, %bb.g ], [ %.253.i19.ph, %.lr.ph56.i18.preheader ] ; 3 uses
  %.22954.in.i20 = add nsw i64 %.253.i19, -1
  %.22954.i213738 = lshr i64 %.22954.in.i20, 1    ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.22954.i213738
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !32 ; 2 uses
  %i.bk = fcmp olt double %i.bj, %i.an
  br i1 %i.bk, label %bb.g, label %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit26

bb.g:                                             ; preds = %.lr.ph56.i18
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.253.i19
  store double %i.bj, ptr %i.bl, align 8, !tbaa !32
  %.not = icmp eq i64 %.22954.i213738, 0
  br i1 %.not, label %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit26, label %.lr.ph56.i18, !llvm.loop !191

_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit26: ; preds = %.lr.ph56.i18, %bb.g, %bb.f
  %.2.lcssa.i17 = phi i64 [ %.0.lcssa.i15, %bb.f ], [ %.253.i19, %.lr.ph56.i18 ], [ 0, %bb.g ]
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.2.lcssa.i17
  store double %i.an, ptr %i.bm, align 8, !tbaa !32
  %i.bn = icmp sgt i64 %.1.in45, 2
  br i1 %i.bn, label %.lr.ph46, label %._crit_edge, !llvm.loop !193

._crit_edge:                                      ; preds = %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit26, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !194 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33, !noalias !197
  %i.e = sub i64 %i.d, %i.b
  %i.f = ashr exact i64 %i.e, 3                   ; 7 uses
  %i.g = icmp sgt i64 %i.f, 1
  %i.h = inttoptr i64 %i.b to ptr                 ; 9 uses
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = lshr i64 %i.f, 1
  %i.j = add nsw i64 %i.f, -1                     ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %bb.b

.lr.ph46:                                         ; preds = %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !200, !noalias !202 ; 10 uses
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit
  %.0.in44 = phi i64 [ %i.i, %.lr.ph ], [ %.0, %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit ] ; 4 uses
  %.0 = add nsw i64 %.0.in44, -1                  ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0
  %i.n = load double, ptr %i.m, align 8, !tbaa !32 ; 2 uses
  %i.o = shl nuw i64 %.0, 1
  %i.p = add nuw nsw i64 %i.o, 2                  ; 3 uses
  %i.q = icmp slt i64 %i.p, %i.f
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.049.i = phi i64 [ %i.x, %.lr.ph.i ], [ %.0, %bb.b ]
  %.02748.i = phi i64 [ %i.ab, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.h, i64 %.02748.i ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load double, ptr %i.s, align 8, !tbaa !32
  %i.u = load double, ptr %i.r, align 8, !tbaa !32
  %i.v = fcmp olt double %i.t, %i.u
  %i.w = zext i1 %i.v to i64
  %.128.i = add nsw i64 %.02748.i, %i.w           ; 2 uses
  %i.x = add nsw i64 %.128.i, -1                  ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !32
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.049.i
  store double %i.z, ptr %i.aa, align 8, !tbaa !32
  %i.ab = shl nsw i64 %.128.i, 1                  ; 3 uses
  %i.ac = icmp slt i64 %i.ab, %i.f
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !207

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.027.lcssa.i = phi i64 [ %i.p, %bb.b ], [ %i.ab, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ %.0, %bb.b ], [ %i.x, %.lr.ph.i ] ; 2 uses
  %i.ad = icmp eq i64 %.027.lcssa.i, %i.f
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.ae = load double, ptr %i.k, align 8, !tbaa !32
  %i.af = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.0.lcssa.i
  store double %i.ae, ptr %i.af, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.1.i = phi i64 [ %i.j, %bb.c ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.not39 = icmp slt i64 %.1.i, %.0.in44
  br i1 %.not39, label %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit, label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %bb.d, %bb.e
  %.253.i = phi i64 [ %.22954.i, %bb.e ], [ %.1.i, %bb.d ] ; 3 uses
  %.22954.in.i = add nsw i64 %.253.i, -1
  %.22954.i = sdiv i64 %.22954.in.i, 2            ; 4 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.22954.i
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !32 ; 2 uses
  %i.ai = fcmp olt double %i.ah, %i.n
  br i1 %i.ai, label %bb.e, label %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit

bb.e:                                             ; preds = %.lr.ph56.i
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.253.i
  store double %i.ah, ptr %i.aj, align 8, !tbaa !32
  %.not40 = icmp slt i64 %.22954.i, %.0.in44
  br i1 %.not40, label %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit, label %.lr.ph56.i, !llvm.loop !208

_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit: ; preds = %.lr.ph56.i, %bb.e, %bb.d
  %.2.lcssa.i = phi i64 [ %.1.i, %bb.d ], [ %.253.i, %.lr.ph56.i ], [ %.22954.i, %bb.e ]
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.2.lcssa.i
  store double %i.n, ptr %i.ak, align 8, !tbaa !32
  %i.al = icmp sgt i64 %.0.in44, 1
  br i1 %i.al, label %bb.b, label %.lr.ph46, !llvm.loop !209

bb.f:                                             ; preds = %.lr.ph46, %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit26
  %.1.in45 = phi i64 [ %i.f, %.lr.ph46 ], [ %.1, %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit26 ] ; 4 uses
  %.1 = add nsw i64 %.1.in45, -1                  ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.1 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !32 ; 2 uses
  %i.ao = load double, ptr %i.l, align 8, !tbaa !32
  store double %i.ao, ptr %i.am, align 8, !tbaa !32
  %i.ap = icmp samesign ugt i64 %.1.in45, 3
  br i1 %i.ap, label %.lr.ph.i22, label %._crit_edge.i13

.lr.ph.i22:                                       ; preds = %bb.f, %.lr.ph.i22
  %.049.i23 = phi i64 [ %i.aw, %.lr.ph.i22 ], [ 0, %bb.f ]
  %.02748.i24 = phi i64 [ %i.ba, %.lr.ph.i22 ], [ 2, %bb.f ] ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.l, i64 %.02748.i24 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !32
  %i.at = load double, ptr %i.aq, align 8, !tbaa !32
  %i.au = fcmp olt double %i.as, %i.at
  %i.av = zext i1 %i.au to i64
  %.128.i25 = or disjoint i64 %.02748.i24, %i.av  ; 2 uses
  %i.aw = add nsw i64 %.128.i25, -1               ; 3 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !32
  %i.az = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.049.i23
  store double %i.ay, ptr %i.az, align 8, !tbaa !32
  %i.ba = shl nsw i64 %.128.i25, 1                ; 3 uses
  %i.bb = icmp slt i64 %i.ba, %.1
  br i1 %i.bb, label %.lr.ph.i22, label %._crit_edge.i13, !llvm.loop !207

._crit_edge.i13:                                  ; preds = %.lr.ph.i22, %bb.f
  %.027.lcssa.i14 = phi i64 [ 2, %bb.f ], [ %i.ba, %.lr.ph.i22 ]
  %.0.lcssa.i15 = phi i64 [ 0, %bb.f ], [ %i.aw, %.lr.ph.i22 ] ; 4 uses
  %i.bc = icmp eq i64 %.027.lcssa.i14, %.1
  br i1 %i.bc, label %.thread, label %bb.g

.thread:                                          ; preds = %._crit_edge.i13
  %i.bd = add nsw i64 %.1.in45, -2                ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !32
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.0.lcssa.i15
  store double %i.bf, ptr %i.bg, align 8, !tbaa !32
  br label %.lr.ph56.i18.preheader

bb.g:                                             ; preds = %._crit_edge.i13
  %i.bh = icmp sgt i64 %.0.lcssa.i15, 0
  br i1 %i.bh, label %.lr.ph56.i18.preheader, label %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit26

.lr.ph56.i18.preheader:                           ; preds = %.thread, %bb.g
  %.253.i19.ph = phi i64 [ %.0.lcssa.i15, %bb.g ], [ %i.bd, %.thread ]
  br label %.lr.ph56.i18

.lr.ph56.i18:                                     ; preds = %.lr.ph56.i18.preheader, %bb.h
  %.253.i19 = phi i64 [ %.22954.i213738, %bb.h ], [ %.253.i19.ph, %.lr.ph56.i18.preheader ] ; 3 uses
  %.22954.in.i20 = add nsw i64 %.253.i19, -1
  %.22954.i213738 = lshr i64 %.22954.in.i20, 1    ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.22954.i213738
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !32 ; 2 uses
  %i.bk = fcmp olt double %i.bj, %i.an
  br i1 %i.bk, label %bb.h, label %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit26

bb.h:                                             ; preds = %.lr.ph56.i18
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.253.i19
  store double %i.bj, ptr %i.bl, align 8, !tbaa !32
  %.not = icmp eq i64 %.22954.i213738, 0
  br i1 %.not, label %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit26, label %.lr.ph56.i18, !llvm.loop !208

_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit26: ; preds = %.lr.ph56.i18, %bb.h, %bb.g
  %.2.lcssa.i17 = phi i64 [ %.0.lcssa.i15, %bb.g ], [ %.253.i19, %.lr.ph56.i18 ], [ 0, %bb.h ]
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.2.lcssa.i17
  store double %i.an, ptr %i.bm, align 8, !tbaa !32
  %i.bn = icmp sgt i64 %.1.in45, 2
  br i1 %i.bn, label %bb.f, label %._crit_edge, !llvm.loop !210

._crit_edge:                                      ; preds = %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit26, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind allocsize(1) }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }

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
!39 = distinct !{!39, !17, !36, !37}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !17}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !17}
!44 = !{!45, !34, i64 0}
!45 = !{!"_ZTSSt16reverse_iteratorIPdE", !34, i64 0}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !17}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17, !36, !37}
!56 = distinct !{!56, !17, !36}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !17}
!61 = distinct !{!61, !17}
!62 = distinct !{!62, !17}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17}
!65 = distinct !{!65, !17, !36, !37}
!66 = distinct !{!66, !17, !36}
!67 = distinct !{!67, !17}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17}
!71 = distinct !{!71, !17}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = distinct !{!74, !17}
!75 = distinct !{!75, !17}
!76 = distinct !{!76, !17, !36, !37}
!77 = distinct !{!77, !17, !36}
!78 = distinct !{!78, !17}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !17}
!81 = distinct !{!81, !17}
!82 = distinct !{!82, !17, !36, !37}
!83 = distinct !{!83, !17, !36}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, !17}
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
!103 = distinct !{!103, !17, !36, !37}
!104 = distinct !{!104, !17, !36}
!105 = distinct !{!105, !17}
!106 = distinct !{!106, !17, !36, !37}
!107 = distinct !{!107, !17, !36}
!108 = distinct !{!108, !17}
!109 = distinct !{!109, !17, !36, !37}
!110 = distinct !{!110, !17, !36}
!111 = distinct !{!111, !17}
!112 = distinct !{!112, !17, !36, !37}
!113 = distinct !{!113, !17, !36}
!114 = distinct !{!114, !17}
!115 = distinct !{!115, !17}
!116 = distinct !{!116, !17}
!117 = distinct !{!117, !17}
!118 = distinct !{!118, !17}
!119 = distinct !{!119, !17}
!120 = distinct !{!120, !17}
!121 = distinct !{!121, !17}
!122 = distinct !{!122, !17}
!123 = !{!124}
end_hunk_1

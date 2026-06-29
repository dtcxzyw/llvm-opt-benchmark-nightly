inline.NumInlined: 864
inline.NumDeleted: 161
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_:bb.a
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
  %i.m = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.0
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
  %i.am = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.1 ; 2 uses
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
  %i.be = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bd
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
  %i.m = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.0
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
  %i.am = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.1 ; 2 uses
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
  %i.be = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bd
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
!124 = distinct !{!124, !125, !"_ZNKSt16reverse_iteratorIPdEplEl: argument 0"}
!125 = distinct !{!125, !"_ZNKSt16reverse_iteratorIPdEplEl"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZNKSt16reverse_iteratorIPdEplEl: argument 0"}
!128 = distinct !{!128, !"_ZNKSt16reverse_iteratorIPdEplEl"}
!129 = distinct !{!129, !17}
!130 = distinct !{!130, !17}
!131 = distinct !{!131, !17}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl: argument 0"}
!134 = distinct !{!134, !"_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl: argument 0"}
!137 = distinct !{!137, !"_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZNKSt16reverse_iteratorIS_IPdEE4baseEv: argument 0"}
!140 = distinct !{!140, !"_ZNKSt16reverse_iteratorIS_IPdEE4baseEv"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZNKSt16reverse_iteratorIS_IPdEE4baseEv: argument 0"}
!143 = distinct !{!143, !"_ZNKSt16reverse_iteratorIS_IPdEE4baseEv"}
!144 = distinct !{!144, !17}
!145 = distinct !{!145, !17}
!146 = distinct !{!146, !17}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZNKSt16reverse_iteratorIS_IPdEEplEl: argument 0"}
!149 = distinct !{!149, !"_ZNKSt16reverse_iteratorIS_IPdEEplEl"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZNKSt16reverse_iteratorIS_IPdEEplEl: argument 0"}
!152 = distinct !{!152, !"_ZNKSt16reverse_iteratorIS_IPdEEplEl"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEE4baseEv: argument 0"}
!155 = distinct !{!155, !"_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEE4baseEv"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEE4baseEv: argument 0"}
!158 = distinct !{!158, !"_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEE4baseEv"}
!159 = distinct !{!159, !17}
!160 = distinct !{!160, !17}
!161 = distinct !{!161, !17}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl: argument 0"}
!164 = distinct !{!164, !"_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl: argument 0"}
!167 = distinct !{!167, !"_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl"}
!168 = distinct !{!168, !17}
!169 = distinct !{!169, !17}
!170 = distinct !{!170, !17}
!171 = distinct !{!171, !17}
!172 = distinct !{!172, !17}
!173 = distinct !{!173, !17}
!174 = distinct !{!174, !17}
!175 = distinct !{!175, !17}
!176 = distinct !{!176, !17}
!177 = distinct !{!177, !17}
!178 = distinct !{!178, !17}
!179 = distinct !{!179, !17}
!180 = distinct !{!180, !17}
!181 = distinct !{!181, !17}
!182 = distinct !{!182, !17}
!183 = distinct !{!183, !17}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZNKSt16reverse_iteratorIS_IPdEE4baseEv: argument 0"}
!186 = distinct !{!186, !"_ZNKSt16reverse_iteratorIS_IPdEE4baseEv"}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZNKSt16reverse_iteratorIS_IPdEE4baseEv: argument 0"}
!189 = distinct !{!189, !"_ZNKSt16reverse_iteratorIS_IPdEE4baseEv"}
!190 = distinct !{!190, !17}
!191 = distinct !{!191, !17}
!192 = distinct !{!192, !17}
!193 = distinct !{!193, !17}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEE4baseEv: argument 0"}
!196 = distinct !{!196, !"_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEE4baseEv"}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEE4baseEv: argument 0"}
!199 = distinct !{!199, !"_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEE4baseEv"}
!200 = !{!201, !34, i64 0}
!201 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEE", !34, i64 0}
!202 = !{!203, !205}
!203 = distinct !{!203, !204, !"_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEmiEl: argument 0"}
!204 = distinct !{!204, !"_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEmiEl"}
!205 = distinct !{!205, !206, !"_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl: argument 0"}
!206 = distinct !{!206, !"_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl"}
!207 = distinct !{!207, !17}
!208 = distinct !{!208, !17}
!209 = distinct !{!209, !17}
!210 = distinct !{!210, !17}
end_hunk_0

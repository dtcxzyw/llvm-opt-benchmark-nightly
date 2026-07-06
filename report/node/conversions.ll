inline.NumInlined: 1643
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2v88internal14IsSpecialIndexENS0_6TaggedINS0_6StringEEERNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.pre-phi
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = icmp eq i16 %i.bh, 48
  br i1 %i.bi, label %bb.k, label %.thread

bb.k:                                             ; preds = %.critedge
  %i.bj = add nsw i32 %i.f, -1
  %i.bk = icmp eq i32 %.046, %i.bj
  br label %.thread

bb.l:                                             ; preds = %._crit_edge74, %._crit_edge
  %.pre-phi76 = phi i64 [ %.pre75, %._crit_edge74 ], [ %wide.trip.count, %._crit_edge ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.pre-phi76
  %i.bm = call noundef double @_ZN2v88internal22InternalStringToDoubleItEEdPKT_S4_NS0_14ConversionFlagEd(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bl, i32 noundef 0, double noundef 0.000000e+00) ; 2 uses
  %i.bn = fcmp uno double %i.bm, 0.000000e+00
  br i1 %i.bn, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.bo = call { i64, ptr } @_ZN2v88internal18DoubleToStringViewEdNS_4base6VectorIcEE(double noundef %i.bm, ptr nonnull %i.b, i64 25) ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %.not = icmp eq i64 %i.bp, %.pre-phi76
  br i1 %.not, label %.lr.ph65, label %.loopexit

.lr.ph65:                                         ; preds = %bb.m, %.lr.ph65
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.lr.ph65 ], [ 0, %bb.m ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %indvars.iv69
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv69
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = sext i8 %i.bs to i16
  %.not51 = icmp eq i16 %i.bu, %i.bv              ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond73.not = icmp ne i64 %indvars.iv.next70, %.pre-phi76
  %or.cond91.not = select i1 %.not51, i1 %exitcond73.not, i1 false
  br i1 %or.cond91.not, label %.lr.ph65, label %.loopexit, !llvm.loop !109

.loopexit:                                        ; preds = %.lr.ph65, %bb.m
  %.3 = phi i1 [ false, %bb.m ], [ %.not51, %.lr.ph65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.thread

.thread:                                          ; preds = %bb.k, %.critedge, %.loopexit, %bb.l, %bb.h, %bb.f, %bb.d, %bb.i
  %.5 = phi i1 [ false, %bb.h ], [ false, %bb.l ], [ false, %bb.f ], [ false, %bb.d ], [ %i.ac, %bb.i ], [ %.3, %.loopexit ], [ true, %.critedge ], [ %i.bk, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %.thread
  %.6 = phi i1 [ %.5, %.thread ], [ false, %bb.a ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @_ZN2v88internal24DoubleToFloat32_NoInlineEd(double noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = fcmp ogt double %0, f0x47EFFFFFE0000000
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ugt double %0, f0x47EFFFFFEFFFFFFF
  br i1 %i.b, label %bb.c, label %_ZN2v88internal15DoubleToFloat32Ed.exit

bb.c:                                             ; preds = %bb.b
  br label %_ZN2v88internal15DoubleToFloat32Ed.exit

bb.d:                                             ; preds = %bb.a
  %i.c = fcmp olt double %0, f0xC7EFFFFFE0000000
  br i1 %i.c, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.d = fcmp ult double %0, f0xC7EFFFFFEFFFFFFF
  br i1 %i.d, label %bb.f, label %_ZN2v88internal15DoubleToFloat32Ed.exit

bb.f:                                             ; preds = %bb.e
  br label %_ZN2v88internal15DoubleToFloat32Ed.exit

bb.g:                                             ; preds = %bb.d
  %i.e = fptrunc double %0 to float
  br label %_ZN2v88internal15DoubleToFloat32Ed.exit

_ZN2v88internal15DoubleToFloat32Ed.exit:          ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i = phi float [ %i.e, %bb.g ], [ +inf, %bb.c ], [ f0x7F7FFFFF, %bb.b ], [ -inf, %bb.f ], [ f0xFF7FFFFF, %bb.e ]
  ret float %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN2v88internal22DoubleToInt32_NoInlineEd(double noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp one double %i.a, +inf
  %i.c = fcmp ole double %0, f0x41DFFFFFFFC00000
  %or.cond.i = and i1 %i.c, %i.b
  %i.d = fcmp oge double %0, f0xC1E0000000000000
  %or.cond3.i = and i1 %i.d, %or.cond.i
  br i1 %or.cond3.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = fptosi double %0 to i32
  br label %_ZN2v88internal13DoubleToInt32Ed.exit

bb.c:                                             ; preds = %bb.a
  %i.f = bitcast double %0 to i64                 ; 5 uses
  %i.g = and i64 %i.f, 9218868437227405312
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  %i.i = lshr i64 %i.f, 52
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = and i32 %i.j, 2047
  %i.l = add nsw i32 %i.k, -1075
  %.0.i.i = select i1 %i.h, i32 -1074, i32 %i.l   ; 5 uses
  %i.m = icmp slt i32 %.0.i.i, 0
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i32 %.0.i.i, -52
  br i1 %i.n, label %_ZN2v88internal13DoubleToInt32Ed.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = and i64 %i.f, 4503599627370495           ; 2 uses
  %i.p = or disjoint i64 %i.o, 4503599627370496
  %.0.i17.i = select i1 %i.h, i64 %i.o, i64 %i.p
  %i.q = sub nsw i32 0, %.0.i.i
  %i.r = zext nneg i32 %i.q to i64
  %i.s = lshr i64 %.0.i17.i, %i.r
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.t = icmp samesign ugt i32 %.0.i.i, 31
  br i1 %i.t, label %_ZN2v88internal13DoubleToInt32Ed.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = zext nneg i32 %.0.i.i to i64
  %i.v = shl i64 %i.f, %i.u
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.0.i = phi i64 [ %i.s, %bb.e ], [ %i.v, %bb.g ]
  %i.w = trunc i64 %.0.i to i32                   ; 2 uses
  %i.x = sub i32 0, %i.w
  %i.y = icmp slt i64 %i.f, 0
  %i.z = select i1 %i.y, i32 %i.x, i32 %i.w
  br label %_ZN2v88internal13DoubleToInt32Ed.exit

_ZN2v88internal13DoubleToInt32Ed.exit:            ; preds = %bb.b, %bb.d, %bb.f, %bb.h
  %.1.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.d ], [ %i.z, %bb.h ], [ 0, %bb.f ]
  ret i32 %.1.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEED0Ev(ptr noundef nonnull align 8 dereferenceable(204) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal20StringToBigIntHelperINS0_7IsolateEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #23, !inline_history !5
  br label %_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEED2Ev.exit

_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEE12ParseOneByteEPKh(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEE13ParseInternalIhEEvPKT_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEE12ParseTwoByteEPKt(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEE13ParseInternalItEEvPKT_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEE13ParseInternalIhEEvPKT_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 6 uses
  %gepdiff = sub nsw i64 %i.f, %i.c
  %i.l = trunc i64 %gepdiff to i32
  %i.m = icmp ult i32 %i.l, 100                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.o = zext i1 %i.m to i8
  store i8 %i.o, ptr %i.n, align 4
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.k)
  %i.q = icmp samesign ugt i64 %i.p, 1
  %or.cond.i.not = select i1 %i.m, i1 true, i1 %i.q
  br i1 %or.cond.i.not, label %.preheader87, label %bb.b

.preheader87:                                     ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %.backedge

bb.b:                                             ; preds = %bb.a
  %i.y = trunc i32 %i.j to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 197
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = lshr i64 %i.k, 2
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN2v86bigintL9kCharBitsE, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = zext nneg i8 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.c

bb.c:                                             ; preds = %bb.x, %bb.b
  %.026.i = phi ptr [ %i.d, %bb.b ], [ %.228.i.ph, %bb.x ] ; 3 uses
  %i.ak = getelementptr i8, ptr %.026.i, i64 %i.f
  %scevgep = getelementptr i8, ptr %i.ak, i64 %i.a
  %.026.i118 = ptrtoint ptr %.026.i to i64
  %i.al = sub i64 0, %.026.i118
  %scevgep119 = getelementptr i8, ptr %scevgep, i64 %i.al
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.034.i = phi i32 [ 64, %bb.c ], [ %i.at, %bb.g ] ; 5 uses
  %.029.i = phi i64 [ 0, %bb.c ], [ %i.av, %bb.g ] ; 4 uses
  %.127.i = phi ptr [ %.026.i, %bb.c ], [ %i.aw, %bb.g ] ; 5 uses
  %i.am = load i8, ptr %.127.i, align 1           ; 2 uses
  %i.an = icmp slt i8 %i.am, 0
  br i1 %i.an, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = zext nneg i8 %i.am to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN2v86bigintL10kCharValueE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i64                    ; 2 uses
  %.not.i5 = icmp ugt i64 %i.k, %i.ar
  br i1 %.not.i5, label %bb.f, label %select.unfold

bb.f:                                             ; preds = %bb.e
  %i.as = icmp samesign ult i32 %.034.i, %i.ad
  br i1 %i.as, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = sub nuw nsw i32 %.034.i, %i.ad          ; 2 uses
  %i.au = shl i64 %.029.i, %i.ae
  %i.av = or i64 %i.au, %i.ar                     ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.127.i, i64 1 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.g
  br i1 %i.ax, label %select.unfold, label %bb.d

select.unfold:                                    ; preds = %bb.g, %bb.f, %bb.d, %bb.e
  %.135.i6.ph = phi i32 [ %.034.i, %bb.f ], [ %.034.i, %bb.e ], [ %.034.i, %bb.d ], [ %i.at, %bb.g ]
  %.233.i.ph = phi i1 [ false, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.g ]
  %.130.i.ph = phi i64 [ %.029.i, %bb.f ], [ %.029.i, %bb.e ], [ %.029.i, %bb.d ], [ %i.av, %bb.g ] ; 3 uses
  %.228.i.ph = phi ptr [ %.127.i, %bb.f ], [ %.127.i, %bb.e ], [ %.127.i, %bb.d ], [ %scevgep119, %bb.g ] ; 3 uses
  %i.ay = load i32, ptr %i.af, align 8            ; 3 uses
  %i.az = icmp ult i32 %i.ay, 8
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %select.unfold
  %i.ba = add nuw nsw i32 %i.ay, 1
  store i32 %i.ba, ptr %i.af, align 8
  %i.bb = zext nneg i32 %i.ay to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bb
  store i64 %.130.i.ph, ptr %i.bc, align 8
  br label %bb.x

bb.i:                                             ; preds = %select.unfold
  %i.bd = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.be = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.bf = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp eq ptr %i.bd, %i.be
  br i1 %i.bi, label %bb.j, label %.loopexit88

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.ai, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.bg                    ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 128
  br i1 %i.bm, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.j
  %i.bn = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25 ; 3 uses
  %.not.i8.i = icmp eq ptr %i.bd, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bl) #23
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.k, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.bn, ptr %i.ag, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bh ; 2 uses
  store ptr %i.bo, ptr %i.ah, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  store ptr %i.bp, ptr %i.ai, align 8
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader

_ZNSt6vectorImSaImEE7reserveEm.exit.preheader:    ; preds = %bb.j, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %.ph244 = phi ptr [ %i.bo, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.bd, %bb.j ]
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.bq = phi ptr [ %i.cn, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.ph244, %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ 0, %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.bs = load ptr, ptr %i.ai, align 8
  %.not.i18 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not.i18, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.bt = load i64, ptr %i.br, align 8
  store i64 %i.bt, ptr %i.bq, align 8
  %i.bu = load ptr, ptr %i.ah, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  store ptr %i.bv, ptr %i.ah, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.bw = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.bx = ptrtoint ptr %i.bq to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 6 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775800
  br i1 %i.ca, label %bb.n, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.cb = ashr exact i64 %i.bz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #25 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.bz ; 2 uses
  %i.cj = load i64, ptr %i.br, align 8
  store i64 %i.cj, ptr %i.ci, align 8
  %i.ck = icmp sgt i64 %i.bz, 0
  br i1 %i.ck, label %bb.o, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr align 8 %i.bw, i64 %i.bz, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.bz) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ch, ptr %i.ag, align 8
  store ptr %i.cl, ptr %i.ah, align 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.cm, ptr %i.ai, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.l, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.cn = phi ptr [ %i.bv, %bb.l ], [ %i.cl, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit88.loopexit, label %_ZNSt6vectorImSaImEE7reserveEm.exit, !llvm.loop !110

.loopexit88.loopexit:                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.pre = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.pre135 = ptrtoint ptr %i.cn to i64
  %.pre137 = ptrtoint ptr %.pre to i64
  br label %.loopexit88

.loopexit88:                                      ; preds = %.loopexit88.loopexit, %bb.i
  %.pre-phi138 = phi i64 [ %.pre137, %.loopexit88.loopexit ], [ %i.bg, %bb.i ]
  %.pre-phi136 = phi i64 [ %.pre135, %.loopexit88.loopexit ], [ %i.bf, %bb.i ]
  %i.co = phi ptr [ %.pre, %.loopexit88.loopexit ], [ %i.be, %bb.i ] ; 3 uses
  %i.cp = phi ptr [ %i.cn, %.loopexit88.loopexit ], [ %i.bd, %bb.i ] ; 2 uses
  %i.cq = sub i64 %.pre-phi136, %.pre-phi138      ; 6 uses
  %i.cr = ashr exact i64 %i.cq, 3                 ; 4 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = load i32, ptr %i.aj, align 8
  %.not.i14 = icmp ugt i32 %i.ct, %i.cs
  br i1 %.not.i14, label %bb.q, label %bb.w

bb.q:                                             ; preds = %.loopexit88
  %i.cu = load ptr, ptr %i.ai, align 8
  %.not.i19 = icmp eq ptr %i.cp, %i.cu
  br i1 %.not.i19, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %.130.i.ph, ptr %i.cp, align 8
  %i.cv = load ptr, ptr %i.ah, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.cw, ptr %i.ah, align 8
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.cx = icmp eq i64 %i.cq, 9223372036854775800
  br i1 %i.cx, label %bb.t, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i20

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i20: ; preds = %bb.s
  %.sroa.speculated.i.i.i21 = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i21, %i.cr ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cr
  %i.da = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 1152921504606846975)
  %i.db = select i1 %i.cz, i64 1152921504606846975, i64 %i.da ; 3 uses
  %.not.i.i.i22 = icmp ne i64 %i.db, 0
  tail call void @llvm.assume(i1 %.not.i.i.i22)
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #25 ; 4 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %i.cq ; 2 uses
  store i64 %.130.i.ph, ptr %i.de, align 8
  %i.df = icmp sgt i64 %i.cq, 0
  br i1 %i.df, label %bb.u, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i23

bb.u:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr align 8 %i.co, i64 %i.cq, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i23

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i23: ; preds = %bb.u, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i20
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.not.i17.i.i24 = icmp eq ptr %i.co, null
  br i1 %.not.i17.i.i24, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i25, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cq) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i25

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i25: ; preds = %bb.v, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i23
  store ptr %i.dd, ptr %i.ag, align 8
  store ptr %i.dg, ptr %i.ah, align 8
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.db
  store ptr %i.dh, ptr %i.ai, align 8
  br label %bb.x

bb.w:                                             ; preds = %.loopexit88
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 1, ptr %i.di, align 4
  br label %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit

bb.x:                                             ; preds = %bb.h, %bb.r, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i25
  br i1 %.233.i.ph, label %bb.y, label %bb.c, !llvm.loop !111

bb.y:                                             ; preds = %bb.x
  %i.dj = zext nneg i32 %.135.i6.ph to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.dj, ptr %i.dk, align 8
  br label %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit

.backedge:                                        ; preds = %.backedge.backedge, %.preheader87
  %.030.i = phi ptr [ %i.d, %.preheader87 ], [ %.030.i.be, %.backedge.backedge ] ; 3 uses
  %i.dl = getelementptr i8, ptr %.030.i, i64 %i.f
  %scevgep121 = getelementptr i8, ptr %i.dl, i64 %i.a
  %.030.i122 = ptrtoint ptr %.030.i to i64
  %i.dm = sub i64 0, %.030.i122
  %scevgep123 = getelementptr i8, ptr %scevgep121, i64 %i.dm
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %.backedge
  %.040.i = phi i64 [ 1, %.backedge ], [ %i.dv, %bb.ac ] ; 5 uses
  %.037.i = phi i64 [ 0, %.backedge ], [ %i.dx, %bb.ac ] ; 5 uses
  %.131.i = phi ptr [ %.030.i, %.backedge ], [ %i.dy, %bb.ac ] ; 6 uses
  %i.dn = load i8, ptr %.131.i, align 1           ; 2 uses
  %i.do = icmp slt i8 %i.dn, 0
  br i1 %i.do, label %select.unfold66, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dp = zext nneg i8 %i.dn to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @_ZN2v86bigintL10kCharValueE, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i64                    ; 2 uses
  %.not.i = icmp ugt i64 %i.k, %i.ds
  br i1 %.not.i, label %bb.ab, label %select.unfold66

bb.ab:                                            ; preds = %bb.aa
  %i.dt = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.040.i, i64 %i.k) ; 2 uses
  %i.du = extractvalue { i64, i1 } %i.dt, 1
  br i1 %i.du, label %select.unfold66.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = extractvalue { i64, i1 } %i.dt, 0       ; 2 uses
  %i.dw = mul i64 %.037.i, %i.k
  %i.dx = add i64 %i.dw, %i.ds                    ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.131.i, i64 1 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.g
  br i1 %i.dz, label %select.unfold66, label %bb.z

select.unfold66:                                  ; preds = %bb.ac, %bb.z, %bb.aa
  %.242.i.ph = phi i64 [ %.040.i, %bb.z ], [ %i.dv, %bb.ac ], [ %.040.i, %bb.aa ] ; 2 uses
  %.239.i.ph = phi i64 [ %.037.i, %bb.z ], [ %i.dx, %bb.ac ], [ %.037.i, %bb.aa ] ; 2 uses
  %.333.i.ph = phi ptr [ %.131.i, %bb.z ], [ %scevgep123, %bb.ac ], [ %.131.i, %bb.aa ] ; 2 uses
  %i.ea = load i8, ptr %i.n, align 4, !range !30, !noundef !31
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %.preheader, label %bb.af

select.unfold66.thread:                           ; preds = %bb.ab
  %i.ec = load i8, ptr %i.n, align 4, !range !30, !noundef !31
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %.preheader, label %bb.ag

.preheader:                                       ; preds = %select.unfold66.thread, %select.unfold66
  %.333.i.ph189 = phi ptr [ %.131.i, %select.unfold66.thread ], [ %.333.i.ph, %select.unfold66 ] ; 4 uses
  %.239.i.ph186 = phi i64 [ %.037.i, %select.unfold66.thread ], [ %.239.i.ph, %select.unfold66 ] ; 2 uses
  %.242.i.ph183 = phi i64 [ %.040.i, %select.unfold66.thread ], [ %.242.i.ph, %select.unfold66 ]
  %.346.i.ph182 = phi i1 [ false, %select.unfold66.thread ], [ true, %select.unfold66 ] ; 2 uses
  %i.ee = load i32, ptr %i.t, align 8
  %.not = icmp eq i32 %i.ee, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ef = zext i64 %.242.i.ph183 to i128
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.ad, %.preheader
  %.024.i10.lcssa = phi i64 [ 0, %.preheader ], [ %i.em, %bb.ad ]
  %.023.i.lcssa = phi i64 [ %.239.i.ph186, %.preheader ], [ %i.et, %bb.ad ]
  %.lcssa = phi i32 [ 0, %.preheader ], [ %i.ev, %bb.ad ] ; 2 uses
  %i.eg = add i64 %.023.i.lcssa, %.024.i10.lcssa  ; 2 uses
  %.not.i11 = icmp eq i64 %i.eg, 0
  br i1 %.not.i11, label %bb.ax, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph, %bb.ad
  %indvars.iv128 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next129, %bb.ad ] ; 2 uses
  %.023.i103 = phi i64 [ %.239.i.ph186, %.lr.ph ], [ %i.et, %bb.ad ]
  %.024.i10102 = phi i64 [ 0, %.lr.ph ], [ %i.em, %bb.ad ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv128 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = zext i64 %i.ei to i128
  %i.ek = mul nuw i128 %i.ej, %i.ef               ; 2 uses
  %i.el = lshr i128 %i.ek, 64
  %i.em = trunc nuw i128 %i.el to i64             ; 2 uses
  %i.en = and i128 %i.ek, 18446744073709551615
  %i.eo = zext i64 %.024.i10102 to i128
  %i.ep = zext i64 %.023.i103 to i128
  %i.eq = add nuw nsw i128 %i.ep, %i.eo
  %i.er = add nuw nsw i128 %i.eq, %i.en           ; 2 uses
  %i.es = lshr i128 %i.er, 64
  %i.et = trunc nuw nsw i128 %i.es to i64         ; 2 uses
  %i.eu = trunc i128 %i.er to i64
  store i64 %i.eu, ptr %i.eh, align 8
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.ev = load i32, ptr %i.t, align 8             ; 2 uses
  %i.ew = zext i32 %i.ev to i64
  %i.ex = icmp samesign ult i64 %indvars.iv.next129, %i.ew
  br i1 %i.ex, label %bb.ad, label %._crit_edge, !llvm.loop !112

bb.ae:                                            ; preds = %._crit_edge
  %i.ey = add i32 %.lcssa, 1
  store i32 %i.ey, ptr %i.t, align 8
  %i.ez = zext i32 %.lcssa to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ez
  store i64 %i.eg, ptr %i.fa, align 8
  br i1 %.346.i.ph182, label %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit, label %.backedge.backedge

bb.af:                                            ; preds = %select.unfold66
  store i64 %.242.i.ph, ptr %i.s, align 8
  br label %bb.ah

bb.ag:                                            ; preds = %select.unfold66.thread
  store i64 %.040.i, ptr %i.r, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.346.i.ph180199 = phi i1 [ false, %bb.ag ], [ true, %bb.af ] ; 3 uses
  %.239.i.ph185196 = phi i64 [ %.037.i, %bb.ag ], [ %.239.i.ph, %bb.af ] ; 3 uses
  %.333.i.ph188194 = phi ptr [ %.131.i, %bb.ag ], [ %.333.i.ph, %bb.af ] ; 7 uses
  %i.fb = load i32, ptr %i.t, align 8             ; 3 uses
  %i.fc = icmp ult i32 %i.fb, 8
  br i1 %i.fc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fd = add nuw nsw i32 %i.fb, 1
  store i32 %i.fd, ptr %i.t, align 8
  %i.fe = zext nneg i32 %i.fb to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.fe
  store i64 %.239.i.ph185196, ptr %i.ff, align 8
  br i1 %.346.i.ph180199, label %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit, label %.backedge.backedge

bb.aj:                                            ; preds = %bb.ah
  %i.fg = load ptr, ptr %i.v, align 8             ; 5 uses
  %i.fh = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.fi = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64               ; 3 uses
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fl, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.fm = load ptr, ptr %i.w, align 8
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = sub i64 %i.fn, %i.fj                    ; 2 uses
  %i.fp = icmp ult i64 %i.fo, 128
  br i1 %i.fp, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i28, label %_ZNSt6vectorImSaImEE7reserveEm.exit31.preheader

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i28: ; preds = %bb.ak
  %i.fq = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25 ; 3 uses
  %.not.i8.i29 = icmp eq ptr %i.fg, null
  br i1 %.not.i8.i29, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i30, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fo) #23
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i30

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i30: ; preds = %bb.al, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i28
  store ptr %i.fq, ptr %i.u, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fk ; 2 uses
  store ptr %i.fr, ptr %i.v, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 128
  store ptr %i.fs, ptr %i.w, align 8
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit31.preheader

_ZNSt6vectorImSaImEE7reserveEm.exit31.preheader:  ; preds = %bb.ak, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i30
  %.ph = phi ptr [ %i.fr, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i30 ], [ %i.fg, %bb.ak ]
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit31

_ZNSt6vectorImSaImEE7reserveEm.exit31:            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit31.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit39
  %i.ft = phi ptr [ %i.gq, %_ZNSt6vectorImSaImEE9push_backERKm.exit39 ], [ %.ph, %_ZNSt6vectorImSaImEE7reserveEm.exit31.preheader ] ; 3 uses
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %_ZNSt6vectorImSaImEE9push_backERKm.exit39 ], [ 0, %_ZNSt6vectorImSaImEE7reserveEm.exit31.preheader ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv124 ; 2 uses
  %i.fv = load ptr, ptr %i.w, align 8
  %.not.i32 = icmp eq ptr %i.ft, %i.fv
  br i1 %.not.i32, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit31
  %i.fw = load i64, ptr %i.fu, align 8
  store i64 %i.fw, ptr %i.ft, align 8
  %i.fx = load ptr, ptr %i.v, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  store ptr %i.fy, ptr %i.v, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit39

bb.an:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit31
  %i.fz = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.ga = ptrtoint ptr %i.ft to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb                    ; 6 uses
  %i.gd = icmp eq i64 %i.gc, 9223372036854775800
  br i1 %i.gd, label %bb.ao, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i33

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i33: ; preds = %bb.an
  %i.ge = ashr exact i64 %i.gc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i34 = tail call i64 @llvm.umax.i64(i64 %i.ge, i64 1)
  %i.gf = add nsw i64 %.sroa.speculated.i.i.i34, %i.ge ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.ge
  %i.gh = tail call i64 @llvm.umin.i64(i64 %i.gf, i64 1152921504606846975)
  %i.gi = select i1 %i.gg, i64 1152921504606846975, i64 %i.gh ; 3 uses
  %.not.i.i.i35 = icmp ne i64 %i.gi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i35)
  %i.gj = shl nuw nsw i64 %i.gi, 3
  %i.gk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gj) #25 ; 4 uses
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 %i.gc ; 2 uses
  %i.gm = load i64, ptr %i.fu, align 8
  store i64 %i.gm, ptr %i.gl, align 8
  %i.gn = icmp sgt i64 %i.gc, 0
  br i1 %i.gn, label %bb.ap, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i36

bb.ap:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gk, ptr align 8 %i.fz, i64 %i.gc, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i36

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i36: ; preds = %bb.ap, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i33
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  %.not.i17.i.i37 = icmp eq ptr %i.fz, null
  br i1 %.not.i17.i.i37, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i38, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i36
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.gc) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i38

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i38: ; preds = %bb.aq, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i36
  store ptr %i.gk, ptr %i.u, align 8
  store ptr %i.go, ptr %i.v, align 8
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gi
  store ptr %i.gp, ptr %i.w, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit39

_ZNSt6vectorImSaImEE9push_backERKm.exit39:        ; preds = %bb.am, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i38
  %i.gq = phi ptr [ %i.fy, %bb.am ], [ %i.go, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i38 ] ; 3 uses
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next125, 8
  br i1 %exitcond127.not, label %.loopexit.loopexit, label %_ZNSt6vectorImSaImEE7reserveEm.exit31, !llvm.loop !110

.loopexit.loopexit:                               ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit39
  %.pre131 = load ptr, ptr %i.u, align 8          ; 2 uses
  %.pre132 = ptrtoint ptr %i.gq to i64
  %.pre133 = ptrtoint ptr %.pre131 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.aj
  %.pre-phi134 = phi i64 [ %.pre133, %.loopexit.loopexit ], [ %i.fj, %bb.aj ]
  %.pre-phi = phi i64 [ %.pre132, %.loopexit.loopexit ], [ %i.fi, %bb.aj ]
  %i.gr = phi ptr [ %.pre131, %.loopexit.loopexit ], [ %i.fh, %bb.aj ] ; 3 uses
  %i.gs = phi ptr [ %i.gq, %.loopexit.loopexit ], [ %i.fg, %bb.aj ] ; 2 uses
  %i.gt = sub i64 %.pre-phi, %.pre-phi134         ; 6 uses
  %i.gu = ashr exact i64 %i.gt, 3                 ; 4 uses
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = load i32, ptr %i.x, align 8
  %.not.i12 = icmp ugt i32 %i.gw, %i.gv
  br i1 %.not.i12, label %bb.ar, label %.thread81

bb.ar:                                            ; preds = %.loopexit
  %i.gx = load ptr, ptr %i.w, align 8
  %.not.i40 = icmp eq ptr %i.gs, %i.gx
  br i1 %.not.i40, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i64 %.239.i.ph185196, ptr %i.gs, align 8
  %i.gy = load ptr, ptr %i.v, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store ptr %i.gz, ptr %i.v, align 8
  br i1 %.346.i.ph180199, label %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit, label %.backedge.backedge

bb.at:                                            ; preds = %bb.ar
  %i.ha = icmp eq i64 %i.gt, 9223372036854775800
  br i1 %i.ha, label %bb.au, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i41

bb.au:                                            ; preds = %bb.at
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i41: ; preds = %bb.at
  %.sroa.speculated.i.i.i42 = tail call i64 @llvm.umax.i64(i64 %i.gu, i64 1)
  %i.hb = add nsw i64 %.sroa.speculated.i.i.i42, %i.gu ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.gu
  %i.hd = tail call i64 @llvm.umin.i64(i64 %i.hb, i64 1152921504606846975)
  %i.he = select i1 %i.hc, i64 1152921504606846975, i64 %i.hd ; 3 uses
  %.not.i.i.i43 = icmp ne i64 %i.he, 0
  tail call void @llvm.assume(i1 %.not.i.i.i43)
  %i.hf = shl nuw nsw i64 %i.he, 3
  %i.hg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #25 ; 4 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 %i.gt ; 2 uses
  store i64 %.239.i.ph185196, ptr %i.hh, align 8
  %i.hi = icmp sgt i64 %i.gt, 0
  br i1 %i.hi, label %bb.av, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i44

bb.av:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i41
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hg, ptr align 8 %i.gr, i64 %i.gt, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i44

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i44: ; preds = %bb.av, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i41
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %.not.i17.i.i45 = icmp eq ptr %i.gr, null
  br i1 %.not.i17.i.i45, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i46, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i44
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.gt) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i46

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i46: ; preds = %bb.aw, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i44
  store ptr %i.hg, ptr %i.u, align 8
  store ptr %i.hj, ptr %i.v, align 8
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.he
  store ptr %i.hk, ptr %i.w, align 8
  br i1 %.346.i.ph180199, label %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit, label %.backedge.backedge

.thread81:                                        ; preds = %.loopexit
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 1, ptr %i.hl, align 4
  br label %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit

bb.ax:                                            ; preds = %._crit_edge
  br i1 %.346.i.ph182, label %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ax, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i46, %bb.as, %bb.ae, %bb.ai
  %.030.i.be = phi ptr [ %.333.i.ph189, %bb.ax ], [ %.333.i.ph188194, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i46 ], [ %.333.i.ph188194, %bb.as ], [ %.333.i.ph189, %bb.ae ], [ %.333.i.ph188194, %bb.ai ]
  br label %.backedge

_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit: ; preds = %bb.ax, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i46, %bb.as, %bb.ae, %bb.ai, %.thread81, %bb.y, %bb.w
  %.3.i = phi ptr [ %.333.i.ph188194, %.thread81 ], [ %.228.i.ph, %bb.y ], [ %.228.i.ph, %bb.w ], [ %.333.i.ph188194, %bb.ai ], [ %.333.i.ph189, %bb.ae ], [ %.333.i.ph188194, %bb.as ], [ %.333.i.ph189, %bb.ax ], [ %.333.i.ph188194, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i46 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = icmp eq i32 %i.hn, 1
  br i1 %i.ho, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.hq = load i8, ptr %i.hp, align 2, !range !30, !noundef !31
  %i.hr = trunc nuw i8 %i.hq to i1
  %.not7.not.i = icmp eq ptr %.3.i, %i.g
  %or.cond = or i1 %.not7.not.i, %i.hr
  br i1 %or.cond, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ay, %bb.az
  %i.hs = phi ptr [ %i.hy, %bb.az ], [ %.3.i, %bb.ay ] ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1
  %i.hu = zext i8 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1
  %i.hx = and i8 %i.hw, 8
  %.not6.i = icmp eq i8 %i.hx, 0
  br i1 %.not6.i, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 1 ; 2 uses
  %.not.not.i = icmp eq ptr %i.hy, %i.g
  br i1 %.not.not.i, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit, label %.lr.ph.i, !llvm.loop !32

_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit: ; preds = %bb.az, %.lr.ph.i, %bb.ay, %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit
  %.sink = phi i32 [ 5, %bb.ay ], [ 1, %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit ], [ 2, %.lr.ph.i ], [ 5, %bb.az ]
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sink, ptr %i.hz, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i1 @_ZN2v88internal16IsWhiteSpaceSlowEj(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEE13ParseInternalItEEvPKT_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %.idx83 = shl nuw nsw i64 %i.b, 1               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx83 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %.idx = shl nuw nsw i64 %i.e, 1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = sext i32 %i.i to i64                     ; 6 uses
  %gepdiff = sub nsw i64 %.idx, %.idx83
  %i.k = lshr exact i64 %gepdiff, 1
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp ult i32 %i.l, 100                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.o = zext i1 %i.m to i8
  store i8 %i.o, ptr %i.n, align 4
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.j)
  %i.q = icmp samesign ugt i64 %i.p, 1
  %or.cond.i.not = select i1 %i.m, i1 true, i1 %i.q
  br i1 %or.cond.i.not, label %.preheader84, label %bb.b

.preheader84:                                     ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %.backedge

bb.b:                                             ; preds = %bb.a
  %i.y = trunc i32 %i.i to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 197
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = lshr i64 %i.j, 2
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN2v86bigintL9kCharBitsE, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = zext nneg i8 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.c

bb.c:                                             ; preds = %.backedge238, %bb.b
  %.034.i = phi i32 [ 64, %bb.b ], [ %.034.i.be, %.backedge238 ] ; 5 uses
  %.029.i = phi i64 [ 0, %bb.b ], [ %.029.i.be, %.backedge238 ] ; 4 uses
  %.127.i = phi ptr [ %i.c, %bb.b ], [ %.127.i.be, %.backedge238 ] ; 5 uses
  %i.ak = load i16, ptr %.127.i, align 2          ; 2 uses
  %i.al = icmp ugt i16 %i.ak, 127
  br i1 %i.al, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = zext nneg i16 %i.ak to i64
  %i.an = getelementptr inbounds nuw i8, ptr @_ZN2v86bigintL10kCharValueE, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64                    ; 2 uses
  %.not.i5 = icmp ugt i64 %i.j, %i.ap
  br i1 %.not.i5, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  %i.aq = icmp samesign ult i32 %.034.i, %i.ad
  br i1 %i.aq, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = sub nuw nsw i32 %.034.i, %i.ad          ; 2 uses
  %i.as = shl i64 %.029.i, %i.ae
  %i.at = or i64 %i.as, %i.ap                     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.127.i, i64 2 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.f
  br i1 %i.av, label %select.unfold, label %.backedge238

.backedge238:                                     ; preds = %bb.f, %bb.w
  %.034.i.be = phi i32 [ %i.ar, %bb.f ], [ 64, %bb.w ]
  %.029.i.be = phi i64 [ %i.at, %bb.f ], [ 0, %bb.w ]
  %.127.i.be = phi ptr [ %i.au, %bb.f ], [ %.228.i.ph, %bb.w ]
  br label %bb.c, !llvm.loop !113

select.unfold:                                    ; preds = %bb.f, %bb.e, %bb.c, %bb.d
  %.135.i6.ph = phi i32 [ %.034.i, %bb.e ], [ %.034.i, %bb.d ], [ %.034.i, %bb.c ], [ %i.ar, %bb.f ]
  %.233.i.ph = phi i1 [ false, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.f ]
  %.130.i.ph = phi i64 [ %.029.i, %bb.e ], [ %.029.i, %bb.d ], [ %.029.i, %bb.c ], [ %i.at, %bb.f ] ; 3 uses
  %.228.i.ph = phi ptr [ %.127.i, %bb.e ], [ %.127.i, %bb.d ], [ %.127.i, %bb.c ], [ %i.f, %bb.f ] ; 3 uses
  %i.aw = load i32, ptr %i.af, align 8            ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 8
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %select.unfold
  %i.ay = add nuw nsw i32 %i.aw, 1
  store i32 %i.ay, ptr %i.af, align 8
  %i.az = zext nneg i32 %i.aw to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.az
  store i64 %.130.i.ph, ptr %i.ba, align 8
  br label %bb.w

bb.h:                                             ; preds = %select.unfold
  %i.bb = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.bc = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bg, label %bb.i, label %.loopexit85

bb.i:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.ai, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.be                    ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 128
  br i1 %i.bk, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.i
  %i.bl = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25 ; 3 uses
  %.not.i8.i = icmp eq ptr %i.bb, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bj) #23
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.j, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.bl, ptr %i.ag, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bf ; 2 uses
  store ptr %i.bm, ptr %i.ah, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  store ptr %i.bn, ptr %i.ai, align 8
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader

_ZNSt6vectorImSaImEE7reserveEm.exit.preheader:    ; preds = %bb.i, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %.ph237 = phi ptr [ %i.bm, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.bb, %bb.i ]
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.bo = phi ptr [ %i.cl, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.ph237, %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ 0, %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.bq = load ptr, ptr %i.ai, align 8
  %.not.i13 = icmp eq ptr %i.bo, %i.bq
  br i1 %.not.i13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.br = load i64, ptr %i.bp, align 8
  store i64 %i.br, ptr %i.bo, align 8
  %i.bs = load ptr, ptr %i.ah, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.l:                                             ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.bu = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.bv = ptrtoint ptr %i.bo to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 6 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.m, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #25 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bx ; 2 uses
  %i.ch = load i64, ptr %i.bp, align 8
  store i64 %i.ch, ptr %i.cg, align 8
  %i.ci = icmp sgt i64 %i.bx, 0
  br i1 %i.ci, label %bb.n, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr align 8 %i.bu, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bx) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.cf, ptr %i.ag, align 8
  store ptr %i.cj, ptr %i.ah, align 8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.ck, ptr %i.ai, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.k, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.cl = phi ptr [ %i.bt, %bb.k ], [ %i.cj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit85.loopexit, label %_ZNSt6vectorImSaImEE7reserveEm.exit, !llvm.loop !110

.loopexit85.loopexit:                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.pre = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.pre127 = ptrtoint ptr %i.cl to i64
  %.pre129 = ptrtoint ptr %.pre to i64
  br label %.loopexit85

.loopexit85:                                      ; preds = %.loopexit85.loopexit, %bb.h
  %.pre-phi130 = phi i64 [ %.pre129, %.loopexit85.loopexit ], [ %i.be, %bb.h ]
  %.pre-phi128 = phi i64 [ %.pre127, %.loopexit85.loopexit ], [ %i.bd, %bb.h ]
  %i.cm = phi ptr [ %.pre, %.loopexit85.loopexit ], [ %i.bc, %bb.h ] ; 3 uses
  %i.cn = phi ptr [ %i.cl, %.loopexit85.loopexit ], [ %i.bb, %bb.h ] ; 2 uses
  %i.co = sub i64 %.pre-phi128, %.pre-phi130      ; 6 uses
  %i.cp = ashr exact i64 %i.co, 3                 ; 4 uses
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = load i32, ptr %i.aj, align 8
  %.not.i.i8 = icmp ugt i32 %i.cr, %i.cq
  br i1 %.not.i.i8, label %bb.p, label %bb.v

bb.p:                                             ; preds = %.loopexit85
  %i.cs = load ptr, ptr %i.ai, align 8
  %.not.i14 = icmp eq ptr %i.cn, %i.cs
  br i1 %.not.i14, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.130.i.ph, ptr %i.cn, align 8
  %i.ct = load ptr, ptr %i.ah, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cu, ptr %i.ah, align 8
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.cv = icmp eq i64 %i.co, 9223372036854775800
  br i1 %i.cv, label %bb.s, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i15

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i15: ; preds = %bb.r
  %.sroa.speculated.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i16, %i.cp ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cp
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 1152921504606846975)
  %i.cz = select i1 %i.cx, i64 1152921504606846975, i64 %i.cy ; 3 uses
  %.not.i.i.i17 = icmp ne i64 %i.cz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i17)
  %i.da = shl nuw nsw i64 %i.cz, 3
  %i.db = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #25 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.co ; 2 uses
  store i64 %.130.i.ph, ptr %i.dc, align 8
  %i.dd = icmp sgt i64 %i.co, 0
  br i1 %i.dd, label %bb.t, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i18

bb.t:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i15
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.db, ptr align 8 %i.cm, i64 %i.co, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i18

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i18: ; preds = %bb.t, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i15
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.not.i17.i.i19 = icmp eq ptr %i.cm, null
  br i1 %.not.i17.i.i19, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i20, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i18
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.co) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i20

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i20: ; preds = %bb.u, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i18
  store ptr %i.db, ptr %i.ag, align 8
  store ptr %i.de, ptr %i.ah, align 8
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cz
  store ptr %i.df, ptr %i.ai, align 8
  br label %bb.w

bb.v:                                             ; preds = %.loopexit85
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 1, ptr %i.dg, align 4
  br label %_ZN2v86bigint21FromStringAccumulator5ParseIPKtEET_S5_S5_m.exit

bb.w:                                             ; preds = %bb.g, %bb.q, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i20
  br i1 %.233.i.ph, label %bb.x, label %.backedge238

bb.x:                                             ; preds = %bb.w
  %i.dh = zext nneg i32 %.135.i6.ph to i64
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.dh, ptr %i.di, align 8
  br label %_ZN2v86bigint21FromStringAccumulator5ParseIPKtEET_S5_S5_m.exit

.backedge:                                        ; preds = %.backedge.backedge, %.preheader84
  %.040.i = phi i64 [ 1, %.preheader84 ], [ %.040.i.be, %.backedge.backedge ] ; 5 uses
  %.037.i = phi i64 [ 0, %.preheader84 ], [ %.037.i.be, %.backedge.backedge ] ; 5 uses
  %.131.i = phi ptr [ %i.c, %.preheader84 ], [ %.131.i.be, %.backedge.backedge ] ; 6 uses
  %i.dj = load i16, ptr %.131.i, align 2          ; 2 uses
  %i.dk = icmp ugt i16 %i.dj, 127
  br i1 %i.dk, label %select.unfold62, label %bb.y

bb.y:                                             ; preds = %.backedge
  %i.dl = zext nneg i16 %i.dj to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @_ZN2v86bigintL10kCharValueE, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = zext i8 %i.dn to i64                    ; 2 uses
  %.not.i = icmp ugt i64 %i.j, %i.do
  br i1 %.not.i, label %bb.z, label %select.unfold62

bb.z:                                             ; preds = %bb.y
  %i.dp = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.040.i, i64 %i.j) ; 2 uses
  %i.dq = extractvalue { i64, i1 } %i.dp, 1
  br i1 %i.dq, label %select.unfold62.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = extractvalue { i64, i1 } %i.dp, 0       ; 2 uses
  %i.ds = mul i64 %.037.i, %i.j
  %i.dt = add i64 %i.ds, %i.do                    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.131.i, i64 2 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.f
  br i1 %i.dv, label %select.unfold62, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.aa, %bb.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i41, %bb.aq, %bb.ac, %bb.ag
  %.040.i.be = phi i64 [ %i.dr, %bb.aa ], [ 1, %bb.av ], [ 1, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i41 ], [ 1, %bb.aq ], [ 1, %bb.ac ], [ 1, %bb.ag ]
  %.037.i.be = phi i64 [ %i.dt, %bb.aa ], [ 0, %bb.av ], [ 0, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i41 ], [ 0, %bb.aq ], [ 0, %bb.ac ], [ 0, %bb.ag ]
  %.131.i.be = phi ptr [ %i.du, %bb.aa ], [ %.333.i.ph185, %bb.av ], [ %.333.i.ph184190, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i41 ], [ %.333.i.ph184190, %bb.aq ], [ %.333.i.ph185, %bb.ac ], [ %.333.i.ph184190, %bb.ag ]
  br label %.backedge

select.unfold62:                                  ; preds = %bb.aa, %.backedge, %bb.y
  %.242.i.ph = phi i64 [ %.040.i, %.backedge ], [ %i.dr, %bb.aa ], [ %.040.i, %bb.y ] ; 2 uses
  %.239.i.ph = phi i64 [ %.037.i, %.backedge ], [ %i.dt, %bb.aa ], [ %.037.i, %bb.y ] ; 2 uses
  %.333.i.ph = phi ptr [ %.131.i, %.backedge ], [ %i.f, %bb.aa ], [ %.131.i, %bb.y ] ; 2 uses
  %i.dw = load i8, ptr %i.n, align 4, !range !30, !noundef !31
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %.preheader, label %bb.ad

select.unfold62.thread:                           ; preds = %bb.z
  %i.dy = load i8, ptr %i.n, align 4, !range !30, !noundef !31
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %.preheader, label %bb.ae

.preheader:                                       ; preds = %select.unfold62.thread, %select.unfold62
  %.333.i.ph185 = phi ptr [ %.131.i, %select.unfold62.thread ], [ %.333.i.ph, %select.unfold62 ] ; 4 uses
  %.239.i.ph182 = phi i64 [ %.037.i, %select.unfold62.thread ], [ %.239.i.ph, %select.unfold62 ] ; 2 uses
  %.242.i.ph179 = phi i64 [ %.040.i, %select.unfold62.thread ], [ %.242.i.ph, %select.unfold62 ]
  %.346.i.ph178 = phi i1 [ false, %select.unfold62.thread ], [ true, %select.unfold62 ] ; 2 uses
  %i.ea = load i32, ptr %i.t, align 8
  %.not = icmp eq i32 %i.ea, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.eb = zext i64 %.242.i.ph179 to i128
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.ab, %.preheader
  %.024.i.i.lcssa = phi i64 [ 0, %.preheader ], [ %i.ei, %bb.ab ]
  %.023.i.i.lcssa = phi i64 [ %.239.i.ph182, %.preheader ], [ %i.ep, %bb.ab ]
  %.lcssa = phi i32 [ 0, %.preheader ], [ %i.er, %bb.ab ] ; 2 uses
  %i.ec = add i64 %.023.i.i.lcssa, %.024.i.i.lcssa ; 2 uses
  %.not.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i, label %bb.av, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph, %bb.ab
  %indvars.iv120 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next121, %bb.ab ] ; 2 uses
  %.023.i.i100 = phi i64 [ %.239.i.ph182, %.lr.ph ], [ %i.ep, %bb.ab ]
  %.024.i.i99 = phi i64 [ 0, %.lr.ph ], [ %i.ei, %bb.ab ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv120 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = zext i64 %i.ee to i128
  %i.eg = mul nuw i128 %i.ef, %i.eb               ; 2 uses
  %i.eh = lshr i128 %i.eg, 64
  %i.ei = trunc nuw i128 %i.eh to i64             ; 2 uses
  %i.ej = and i128 %i.eg, 18446744073709551615
  %i.ek = zext i64 %.024.i.i99 to i128
  %i.el = zext i64 %.023.i.i100 to i128
  %i.em = add nuw nsw i128 %i.el, %i.ek
  %i.en = add nuw nsw i128 %i.em, %i.ej           ; 2 uses
  %i.eo = lshr i128 %i.en, 64
  %i.ep = trunc nuw nsw i128 %i.eo to i64         ; 2 uses
  %i.eq = trunc i128 %i.en to i64
  store i64 %i.eq, ptr %i.ed, align 8
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %i.er = load i32, ptr %i.t, align 8             ; 2 uses
  %i.es = zext i32 %i.er to i64
  %i.et = icmp samesign ult i64 %indvars.iv.next121, %i.es
  br i1 %i.et, label %bb.ab, label %._crit_edge, !llvm.loop !112

bb.ac:                                            ; preds = %._crit_edge
  %i.eu = add i32 %.lcssa, 1
  store i32 %i.eu, ptr %i.t, align 8
  %i.ev = zext i32 %.lcssa to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ev
  store i64 %i.ec, ptr %i.ew, align 8
  br i1 %.346.i.ph178, label %_ZN2v86bigint21FromStringAccumulator5ParseIPKtEET_S5_S5_m.exit, label %.backedge.backedge

bb.ad:                                            ; preds = %select.unfold62
  store i64 %.242.i.ph, ptr %i.s, align 8
  br label %bb.af

bb.ae:                                            ; preds = %select.unfold62.thread
  store i64 %.040.i, ptr %i.r, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.346.i.ph176195 = phi i1 [ false, %bb.ae ], [ true, %bb.ad ] ; 3 uses
  %.239.i.ph181192 = phi i64 [ %.037.i, %bb.ae ], [ %.239.i.ph, %bb.ad ] ; 3 uses
  %.333.i.ph184190 = phi ptr [ %.131.i, %bb.ae ], [ %.333.i.ph, %bb.ad ] ; 7 uses
  %i.ex = load i32, ptr %i.t, align 8             ; 3 uses
  %i.ey = icmp ult i32 %i.ex, 8
  br i1 %i.ey, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ez = add nuw nsw i32 %i.ex, 1
  store i32 %i.ez, ptr %i.t, align 8
  %i.fa = zext nneg i32 %i.ex to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.fa
  store i64 %.239.i.ph181192, ptr %i.fb, align 8
  br i1 %.346.i.ph176195, label %_ZN2v86bigint21FromStringAccumulator5ParseIPKtEET_S5_S5_m.exit, label %.backedge.backedge

bb.ah:                                            ; preds = %bb.af
  %i.fc = load ptr, ptr %i.v, align 8             ; 5 uses
  %i.fd = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.fe = ptrtoint ptr %i.fc to i64               ; 2 uses
  %i.ff = ptrtoint ptr %i.fd to i64               ; 3 uses
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fh, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.fi = load ptr, ptr %i.w, align 8
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = sub i64 %i.fj, %i.ff                    ; 2 uses
  %i.fl = icmp ult i64 %i.fk, 128
  br i1 %i.fl, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i23, label %_ZNSt6vectorImSaImEE7reserveEm.exit26.preheader

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i23: ; preds = %bb.ai
  %i.fm = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25 ; 3 uses
  %.not.i8.i24 = icmp eq ptr %i.fc, null
  br i1 %.not.i8.i24, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i25, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fk) #23
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i25

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i25: ; preds = %bb.aj, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i23
  store ptr %i.fm, ptr %i.u, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fg ; 2 uses
  store ptr %i.fn, ptr %i.v, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 128
  store ptr %i.fo, ptr %i.w, align 8
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit26.preheader

_ZNSt6vectorImSaImEE7reserveEm.exit26.preheader:  ; preds = %bb.ai, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i25
  %.ph = phi ptr [ %i.fn, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i25 ], [ %i.fc, %bb.ai ]
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit26

_ZNSt6vectorImSaImEE7reserveEm.exit26:            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit26.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit34
  %i.fp = phi ptr [ %i.gm, %_ZNSt6vectorImSaImEE9push_backERKm.exit34 ], [ %.ph, %_ZNSt6vectorImSaImEE7reserveEm.exit26.preheader ] ; 3 uses
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %_ZNSt6vectorImSaImEE9push_backERKm.exit34 ], [ 0, %_ZNSt6vectorImSaImEE7reserveEm.exit26.preheader ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv116 ; 2 uses
  %i.fr = load ptr, ptr %i.w, align 8
  %.not.i27 = icmp eq ptr %i.fp, %i.fr
  br i1 %.not.i27, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit26
  %i.fs = load i64, ptr %i.fq, align 8
  store i64 %i.fs, ptr %i.fp, align 8
  %i.ft = load ptr, ptr %i.v, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  store ptr %i.fu, ptr %i.v, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit34

bb.al:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit26
  %i.fv = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.fw = ptrtoint ptr %i.fp to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 6 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775800
  br i1 %i.fz, label %bb.am, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i28

bb.am:                                            ; preds = %bb.al
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i28: ; preds = %bb.al
  %i.ga = ashr exact i64 %i.fy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i.i29, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = tail call i64 @llvm.umin.i64(i64 %i.gb, i64 1152921504606846975)
  %i.ge = select i1 %i.gc, i64 1152921504606846975, i64 %i.gd ; 3 uses
  %.not.i.i.i30 = icmp ne i64 %i.ge, 0
  tail call void @llvm.assume(i1 %.not.i.i.i30)
  %i.gf = shl nuw nsw i64 %i.ge, 3
  %i.gg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #25 ; 4 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.fy ; 2 uses
  %i.gi = load i64, ptr %i.fq, align 8
  store i64 %i.gi, ptr %i.gh, align 8
  %i.gj = icmp sgt i64 %i.fy, 0
  br i1 %i.gj, label %bb.an, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i31

bb.an:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gg, ptr align 8 %i.fv, i64 %i.fy, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i31

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i31: ; preds = %bb.an, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i28
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEE13ParseInternalItEEvPKT_:bb.a
  store i64 %.239.i.ph181192, ptr %i.go, align 8
  %i.gu = load ptr, ptr %i.v, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %i.gv, ptr %i.v, align 8
  br i1 %.346.i.ph176195, label %_ZN2v86bigint21FromStringAccumulator5ParseIPKtEET_S5_S5_m.exit, label %.backedge.backedge

bb.ar:                                            ; preds = %bb.ap
  %i.gw = icmp eq i64 %i.gp, 9223372036854775800
  br i1 %i.gw, label %bb.as, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i36

bb.as:                                            ; preds = %bb.ar
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i36: ; preds = %bb.ar
  %.sroa.speculated.i.i.i37 = tail call i64 @llvm.umax.i64(i64 %i.gq, i64 1)
  %i.gx = add nsw i64 %.sroa.speculated.i.i.i37, %i.gq ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.gq
  %i.gz = tail call i64 @llvm.umin.i64(i64 %i.gx, i64 1152921504606846975)
  %i.ha = select i1 %i.gy, i64 1152921504606846975, i64 %i.gz ; 3 uses
  %.not.i.i.i38 = icmp ne i64 %i.ha, 0
  tail call void @llvm.assume(i1 %.not.i.i.i38)
  %i.hb = shl nuw nsw i64 %i.ha, 3
  %i.hc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hb) #25 ; 4 uses
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %i.gp ; 2 uses
  store i64 %.239.i.ph181192, ptr %i.hd, align 8
  %i.he = icmp sgt i64 %i.gp, 0
  br i1 %i.he, label %bb.at, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i39

bb.at:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hc, ptr align 8 %i.gn, i64 %i.gp, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i39

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i39: ; preds = %bb.at, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i36
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %.not.i17.i.i40 = icmp eq ptr %i.gn, null
  br i1 %.not.i17.i.i40, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i41, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i39
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gp) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i41

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i41: ; preds = %bb.au, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i39
  store ptr %i.hc, ptr %i.u, align 8
  store ptr %i.hf, ptr %i.v, align 8
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.ha
  store ptr %i.hg, ptr %i.w, align 8
  br i1 %.346.i.ph176195, label %_ZN2v86bigint21FromStringAccumulator5ParseIPKtEET_S5_S5_m.exit, label %.backedge.backedge

.thread77:                                        ; preds = %.loopexit
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 1, ptr %i.hh, align 4
  br label %_ZN2v86bigint21FromStringAccumulator5ParseIPKtEET_S5_S5_m.exit

bb.av:                                            ; preds = %._crit_edge
  br i1 %.346.i.ph178, label %_ZN2v86bigint21FromStringAccumulator5ParseIPKtEET_S5_S5_m.exit, label %.backedge.backedge

_ZN2v86bigint21FromStringAccumulator5ParseIPKtEET_S5_S5_m.exit: ; preds = %bb.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i41, %bb.aq, %bb.ac, %bb.ag, %.thread77, %bb.x, %bb.v
  %.3.i = phi ptr [ %.333.i.ph184190, %.thread77 ], [ %.228.i.ph, %bb.x ], [ %.228.i.ph, %bb.v ], [ %.333.i.ph184190, %bb.ag ], [ %.333.i.ph185, %bb.ac ], [ %.333.i.ph184190, %bb.aq ], [ %.333.i.ph185, %bb.av ], [ %.333.i.ph184190, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i41 ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = icmp eq i32 %i.hj, 1
  br i1 %i.hk, label %_ZN2v88internal17AdvanceToNonspaceItEEbPPKT_S4_.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN2v86bigint21FromStringAccumulator5ParseIPKtEET_S5_S5_m.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.hm = load i8, ptr %i.hl, align 2, !range !30, !noundef !31
  %i.hn = trunc nuw i8 %i.hm to i1
  %.not7.not.i = icmp eq ptr %.3.i, %i.f
  %or.cond = or i1 %.not7.not.i, %i.hn
  br i1 %or.cond, label %_ZN2v88internal17AdvanceToNonspaceItEEbPPKT_S4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit._crit_edge.i
  %.0 = phi ptr [ %i.hx, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit._crit_edge.i ], [ %.3.i, %bb.aw ] ; 2 uses
  %i.ho = load i16, ptr %.0, align 2              ; 3 uses
  %i.hp = icmp ult i16 %i.ho, 256
  br i1 %i.hp, label %bb.ax, label %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i

bb.ax:                                            ; preds = %.lr.ph.i
  %i.hq = zext nneg i16 %i.ho to i64
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1
  %i.ht = and i8 %i.hs, 8
  %.not6.i = icmp eq i8 %i.ht, 0
  br i1 %.not6.i, label %_ZN2v88internal17AdvanceToNonspaceItEEbPPKT_S4_.exit, label %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit._crit_edge.i

_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i: ; preds = %.lr.ph.i
  %i.hu = zext i16 %i.ho to i32                   ; 2 uses
  %i.hv = tail call noundef zeroext i1 @_ZN2v88internal16IsWhiteSpaceSlowEj(i32 noundef %i.hu) #21
  %i.hw = and i32 %i.hu, 65534
  %switch.i.i = icmp eq i32 %i.hw, 8232
  %or.cond.i.i = or i1 %switch.i.i, %i.hv
  br i1 %or.cond.i.i, label %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit._crit_edge.i, label %_ZN2v88internal17AdvanceToNonspaceItEEbPPKT_S4_.exit

_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit._crit_edge.i: ; preds = %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i, %bb.ax
  %i.hx = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  %.not.not.i = icmp eq ptr %i.hx, %i.f
  br i1 %.not.not.i, label %_ZN2v88internal17AdvanceToNonspaceItEEbPPKT_S4_.exit, label %.lr.ph.i, !llvm.loop !56

_ZN2v88internal17AdvanceToNonspaceItEEbPPKT_S4_.exit: ; preds = %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit._crit_edge.i, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i, %bb.ax, %bb.aw, %_ZN2v86bigint21FromStringAccumulator5ParseIPKtEET_S5_S5_m.exit
  %.sink = phi i32 [ 5, %bb.aw ], [ 1, %_ZN2v86bigint21FromStringAccumulator5ParseIPKtEET_S5_S5_m.exit ], [ 2, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i ], [ 2, %bb.ax ], [ 5, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit._crit_edge.i ]
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sink, ptr %i.hy, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal17AdvanceToNonspaceItEEbPPKT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not7.not = icmp eq ptr %i.a, %1
  br i1 %.not7.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.b = phi ptr [ %i.m, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = load i16, ptr %i.b, align 2              ; 3 uses
  %i.d = icmp ult i16 %i.c, 256
  br i1 %i.d, label %bb.b, label %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit

bb.b:                                             ; preds = %.lr.ph
  %i.e = zext nneg i16 %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 8
  %.not6 = icmp eq i8 %i.h, 0
  br i1 %.not6, label %._crit_edge, label %bb.c

_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit: ; preds = %.lr.ph
  %i.i = zext i16 %i.c to i32                     ; 2 uses
  %i.j = tail call noundef zeroext i1 @_ZN2v88internal16IsWhiteSpaceSlowEj(i32 noundef %i.i) #21
  %i.k = and i32 %i.i, 65534
  %switch.i = icmp eq i32 %i.k, 8232
  %or.cond.i = or i1 %switch.i, %i.j
  br i1 %or.cond.i, label %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit._crit_edge, label %._crit_edge

_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit._crit_edge: ; preds = %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit
  %.pre = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit._crit_edge, %bb.b
  %i.l = phi ptr [ %.pre, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit._crit_edge ], [ %i.b, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 3 uses
  store ptr %i.m, ptr %0, align 8
  %.not.not = icmp eq ptr %i.m, %1
  br i1 %.not.not, label %._crit_edge, label %.lr.ph, !llvm.loop !56

._crit_edge:                                      ; preds = %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit, %bb.c, %bb.b, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ true, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit ]
  ret i1 %.not.lcssa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20StringToBigIntHelperINS0_12LocalIsolateEED0Ev(ptr noundef nonnull align 8 dereferenceable(204) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal20StringToBigIntHelperINS0_12LocalIsolateEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal20StringToBigIntHelperINS0_12LocalIsolateEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #23, !inline_history !6
  br label %_ZN2v88internal20StringToBigIntHelperINS0_12LocalIsolateEED2Ev.exit

_ZN2v88internal20StringToBigIntHelperINS0_12LocalIsolateEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20StringToBigIntHelperINS0_12LocalIsolateEE12ParseOneByteEPKh(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal20StringToBigIntHelperINS0_12LocalIsolateEE13ParseInternalIhEEvPKT_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20StringToBigIntHelperINS0_12LocalIsolateEE12ParseTwoByteEPKt(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal20StringToBigIntHelperINS0_12LocalIsolateEE13ParseInternalItEEvPKT_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20StringToBigIntHelperINS0_12LocalIsolateEE13ParseInternalIhEEvPKT_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 6 uses
  %gepdiff = sub nsw i64 %i.f, %i.c
  %i.l = trunc i64 %gepdiff to i32
  %i.m = icmp ult i32 %i.l, 100                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.o = zext i1 %i.m to i8
  store i8 %i.o, ptr %i.n, align 4
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.k)
  %i.q = icmp samesign ugt i64 %i.p, 1
  %or.cond.i.not = select i1 %i.m, i1 true, i1 %i.q
  br i1 %or.cond.i.not, label %.preheader87, label %bb.b

.preheader87:                                     ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %.backedge

bb.b:                                             ; preds = %bb.a
  %i.y = trunc i32 %i.j to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 197
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = lshr i64 %i.k, 2
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN2v86bigintL9kCharBitsE, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = zext nneg i8 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.c

bb.c:                                             ; preds = %bb.x, %bb.b
  %.026.i = phi ptr [ %i.d, %bb.b ], [ %.228.i.ph, %bb.x ] ; 3 uses
  %i.ak = getelementptr i8, ptr %.026.i, i64 %i.f
  %scevgep = getelementptr i8, ptr %i.ak, i64 %i.a
  %.026.i118 = ptrtoint ptr %.026.i to i64
  %i.al = sub i64 0, %.026.i118
  %scevgep119 = getelementptr i8, ptr %scevgep, i64 %i.al
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.034.i = phi i32 [ 64, %bb.c ], [ %i.at, %bb.g ] ; 5 uses
  %.029.i = phi i64 [ 0, %bb.c ], [ %i.av, %bb.g ] ; 4 uses
  %.127.i = phi ptr [ %.026.i, %bb.c ], [ %i.aw, %bb.g ] ; 5 uses
  %i.am = load i8, ptr %.127.i, align 1           ; 2 uses
  %i.an = icmp slt i8 %i.am, 0
  br i1 %i.an, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = zext nneg i8 %i.am to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN2v86bigintL10kCharValueE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i64                    ; 2 uses
  %.not.i5 = icmp ugt i64 %i.k, %i.ar
  br i1 %.not.i5, label %bb.f, label %select.unfold

bb.f:                                             ; preds = %bb.e
  %i.as = icmp samesign ult i32 %.034.i, %i.ad
  br i1 %i.as, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = sub nuw nsw i32 %.034.i, %i.ad          ; 2 uses
  %i.au = shl i64 %.029.i, %i.ae
  %i.av = or i64 %i.au, %i.ar                     ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.127.i, i64 1 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.g
  br i1 %i.ax, label %select.unfold, label %bb.d

select.unfold:                                    ; preds = %bb.g, %bb.f, %bb.d, %bb.e
  %.135.i6.ph = phi i32 [ %.034.i, %bb.f ], [ %.034.i, %bb.e ], [ %.034.i, %bb.d ], [ %i.at, %bb.g ]
  %.233.i.ph = phi i1 [ false, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.g ]
  %.130.i.ph = phi i64 [ %.029.i, %bb.f ], [ %.029.i, %bb.e ], [ %.029.i, %bb.d ], [ %i.av, %bb.g ] ; 3 uses
  %.228.i.ph = phi ptr [ %.127.i, %bb.f ], [ %.127.i, %bb.e ], [ %.127.i, %bb.d ], [ %scevgep119, %bb.g ] ; 3 uses
  %i.ay = load i32, ptr %i.af, align 8            ; 3 uses
  %i.az = icmp ult i32 %i.ay, 8
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %select.unfold
  %i.ba = add nuw nsw i32 %i.ay, 1
  store i32 %i.ba, ptr %i.af, align 8
  %i.bb = zext nneg i32 %i.ay to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bb
  store i64 %.130.i.ph, ptr %i.bc, align 8
  br label %bb.x

bb.i:                                             ; preds = %select.unfold
  %i.bd = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.be = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.bf = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp eq ptr %i.bd, %i.be
  br i1 %i.bi, label %bb.j, label %.loopexit88

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.ai, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.bg                    ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 128
  br i1 %i.bm, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.j
  %i.bn = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25 ; 3 uses
  %.not.i8.i = icmp eq ptr %i.bd, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bl) #23
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.k, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.bn, ptr %i.ag, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bh ; 2 uses
  store ptr %i.bo, ptr %i.ah, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  store ptr %i.bp, ptr %i.ai, align 8
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader

_ZNSt6vectorImSaImEE7reserveEm.exit.preheader:    ; preds = %bb.j, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %.ph244 = phi ptr [ %i.bo, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.bd, %bb.j ]
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.bq = phi ptr [ %i.cn, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.ph244, %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ 0, %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.bs = load ptr, ptr %i.ai, align 8
  %.not.i18 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not.i18, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.bt = load i64, ptr %i.br, align 8
  store i64 %i.bt, ptr %i.bq, align 8
  %i.bu = load ptr, ptr %i.ah, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  store ptr %i.bv, ptr %i.ah, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.bw = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.bx = ptrtoint ptr %i.bq to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 6 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775800
  br i1 %i.ca, label %bb.n, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.cb = ashr exact i64 %i.bz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #25 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.bz ; 2 uses
  %i.cj = load i64, ptr %i.br, align 8
  store i64 %i.cj, ptr %i.ci, align 8
  %i.ck = icmp sgt i64 %i.bz, 0
  br i1 %i.ck, label %bb.o, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr align 8 %i.bw, i64 %i.bz, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.bz) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ch, ptr %i.ag, align 8
  store ptr %i.cl, ptr %i.ah, align 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.cm, ptr %i.ai, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.l, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.cn = phi ptr [ %i.bv, %bb.l ], [ %i.cl, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit88.loopexit, label %_ZNSt6vectorImSaImEE7reserveEm.exit, !llvm.loop !110

.loopexit88.loopexit:                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.pre = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.pre135 = ptrtoint ptr %i.cn to i64
  %.pre137 = ptrtoint ptr %.pre to i64
  br label %.loopexit88

.loopexit88:                                      ; preds = %.loopexit88.loopexit, %bb.i
  %.pre-phi138 = phi i64 [ %.pre137, %.loopexit88.loopexit ], [ %i.bg, %bb.i ]
  %.pre-phi136 = phi i64 [ %.pre135, %.loopexit88.loopexit ], [ %i.bf, %bb.i ]
  %i.co = phi ptr [ %.pre, %.loopexit88.loopexit ], [ %i.be, %bb.i ] ; 3 uses
  %i.cp = phi ptr [ %i.cn, %.loopexit88.loopexit ], [ %i.bd, %bb.i ] ; 2 uses
  %i.cq = sub i64 %.pre-phi136, %.pre-phi138      ; 6 uses
  %i.cr = ashr exact i64 %i.cq, 3                 ; 4 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = load i32, ptr %i.aj, align 8
  %.not.i14 = icmp ugt i32 %i.ct, %i.cs
  br i1 %.not.i14, label %bb.q, label %bb.w

bb.q:                                             ; preds = %.loopexit88
  %i.cu = load ptr, ptr %i.ai, align 8
  %.not.i19 = icmp eq ptr %i.cp, %i.cu
  br i1 %.not.i19, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %.130.i.ph, ptr %i.cp, align 8
  %i.cv = load ptr, ptr %i.ah, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.cw, ptr %i.ah, align 8
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.cx = icmp eq i64 %i.cq, 9223372036854775800
  br i1 %i.cx, label %bb.t, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i20

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i20: ; preds = %bb.s
  %.sroa.speculated.i.i.i21 = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i21, %i.cr ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cr
  %i.da = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 1152921504606846975)
  %i.db = select i1 %i.cz, i64 1152921504606846975, i64 %i.da ; 3 uses
  %.not.i.i.i22 = icmp ne i64 %i.db, 0
  tail call void @llvm.assume(i1 %.not.i.i.i22)
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #25 ; 4 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %i.cq ; 2 uses
  store i64 %.130.i.ph, ptr %i.de, align 8
  %i.df = icmp sgt i64 %i.cq, 0
  br i1 %i.df, label %bb.u, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i23

bb.u:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr align 8 %i.co, i64 %i.cq, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i23

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i23: ; preds = %bb.u, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i20
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.not.i17.i.i24 = icmp eq ptr %i.co, null
  br i1 %.not.i17.i.i24, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i25, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cq) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i25

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i25: ; preds = %bb.v, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i23
  store ptr %i.dd, ptr %i.ag, align 8
  store ptr %i.dg, ptr %i.ah, align 8
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.db
  store ptr %i.dh, ptr %i.ai, align 8
  br label %bb.x

bb.w:                                             ; preds = %.loopexit88
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 1, ptr %i.di, align 4
  br label %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit

bb.x:                                             ; preds = %bb.h, %bb.r, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i25
  br i1 %.233.i.ph, label %bb.y, label %bb.c, !llvm.loop !111

bb.y:                                             ; preds = %bb.x
  %i.dj = zext nneg i32 %.135.i6.ph to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.dj, ptr %i.dk, align 8
  br label %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit

.backedge:                                        ; preds = %.backedge.backedge, %.preheader87
  %.030.i = phi ptr [ %i.d, %.preheader87 ], [ %.030.i.be, %.backedge.backedge ] ; 3 uses
  %i.dl = getelementptr i8, ptr %.030.i, i64 %i.f
  %scevgep121 = getelementptr i8, ptr %i.dl, i64 %i.a
  %.030.i122 = ptrtoint ptr %.030.i to i64
  %i.dm = sub i64 0, %.030.i122
  %scevgep123 = getelementptr i8, ptr %scevgep121, i64 %i.dm
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %.backedge
  %.040.i = phi i64 [ 1, %.backedge ], [ %i.dv, %bb.ac ] ; 5 uses
  %.037.i = phi i64 [ 0, %.backedge ], [ %i.dx, %bb.ac ] ; 5 uses
  %.131.i = phi ptr [ %.030.i, %.backedge ], [ %i.dy, %bb.ac ] ; 6 uses
  %i.dn = load i8, ptr %.131.i, align 1           ; 2 uses
  %i.do = icmp slt i8 %i.dn, 0
  br i1 %i.do, label %select.unfold66, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dp = zext nneg i8 %i.dn to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @_ZN2v86bigintL10kCharValueE, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i64                    ; 2 uses
  %.not.i = icmp ugt i64 %i.k, %i.ds
  br i1 %.not.i, label %bb.ab, label %select.unfold66

bb.ab:                                            ; preds = %bb.aa
  %i.dt = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.040.i, i64 %i.k) ; 2 uses
  %i.du = extractvalue { i64, i1 } %i.dt, 1
  br i1 %i.du, label %select.unfold66.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = extractvalue { i64, i1 } %i.dt, 0       ; 2 uses
  %i.dw = mul i64 %.037.i, %i.k
  %i.dx = add i64 %i.dw, %i.ds                    ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.131.i, i64 1 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.g
  br i1 %i.dz, label %select.unfold66, label %bb.z

select.unfold66:                                  ; preds = %bb.ac, %bb.z, %bb.aa
  %.242.i.ph = phi i64 [ %.040.i, %bb.z ], [ %i.dv, %bb.ac ], [ %.040.i, %bb.aa ] ; 2 uses
  %.239.i.ph = phi i64 [ %.037.i, %bb.z ], [ %i.dx, %bb.ac ], [ %.037.i, %bb.aa ] ; 2 uses
  %.333.i.ph = phi ptr [ %.131.i, %bb.z ], [ %scevgep123, %bb.ac ], [ %.131.i, %bb.aa ] ; 2 uses
  %i.ea = load i8, ptr %i.n, align 4, !range !30, !noundef !31
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %.preheader, label %bb.af

select.unfold66.thread:                           ; preds = %bb.ab
  %i.ec = load i8, ptr %i.n, align 4, !range !30, !noundef !31
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %.preheader, label %bb.ag

.preheader:                                       ; preds = %select.unfold66.thread, %select.unfold66
  %.333.i.ph189 = phi ptr [ %.131.i, %select.unfold66.thread ], [ %.333.i.ph, %select.unfold66 ] ; 4 uses
  %.239.i.ph186 = phi i64 [ %.037.i, %select.unfold66.thread ], [ %.239.i.ph, %select.unfold66 ] ; 2 uses
  %.242.i.ph183 = phi i64 [ %.040.i, %select.unfold66.thread ], [ %.242.i.ph, %select.unfold66 ]
  %.346.i.ph182 = phi i1 [ false, %select.unfold66.thread ], [ true, %select.unfold66 ] ; 2 uses
  %i.ee = load i32, ptr %i.t, align 8
  %.not = icmp eq i32 %i.ee, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ef = zext i64 %.242.i.ph183 to i128
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.ad, %.preheader
  %.024.i10.lcssa = phi i64 [ 0, %.preheader ], [ %i.em, %bb.ad ]
  %.023.i.lcssa = phi i64 [ %.239.i.ph186, %.preheader ], [ %i.et, %bb.ad ]
  %.lcssa = phi i32 [ 0, %.preheader ], [ %i.ev, %bb.ad ] ; 2 uses
  %i.eg = add i64 %.023.i.lcssa, %.024.i10.lcssa  ; 2 uses
  %.not.i11 = icmp eq i64 %i.eg, 0
  br i1 %.not.i11, label %bb.ax, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph, %bb.ad
  %indvars.iv128 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next129, %bb.ad ] ; 2 uses
  %.023.i103 = phi i64 [ %.239.i.ph186, %.lr.ph ], [ %i.et, %bb.ad ]
  %.024.i10102 = phi i64 [ 0, %.lr.ph ], [ %i.em, %bb.ad ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv128 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = zext i64 %i.ei to i128
  %i.ek = mul nuw i128 %i.ej, %i.ef               ; 2 uses
  %i.el = lshr i128 %i.ek, 64
  %i.em = trunc nuw i128 %i.el to i64             ; 2 uses
  %i.en = and i128 %i.ek, 18446744073709551615
  %i.eo = zext i64 %.024.i10102 to i128
  %i.ep = zext i64 %.023.i103 to i128
  %i.eq = add nuw nsw i128 %i.ep, %i.eo
  %i.er = add nuw nsw i128 %i.eq, %i.en           ; 2 uses
  %i.es = lshr i128 %i.er, 64
  %i.et = trunc nuw nsw i128 %i.es to i64         ; 2 uses
  %i.eu = trunc i128 %i.er to i64
  store i64 %i.eu, ptr %i.eh, align 8
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.ev = load i32, ptr %i.t, align 8             ; 2 uses
  %i.ew = zext i32 %i.ev to i64
  %i.ex = icmp samesign ult i64 %indvars.iv.next129, %i.ew
  br i1 %i.ex, label %bb.ad, label %._crit_edge, !llvm.loop !112

bb.ae:                                            ; preds = %._crit_edge
  %i.ey = add i32 %.lcssa, 1
  store i32 %i.ey, ptr %i.t, align 8
  %i.ez = zext i32 %.lcssa to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ez
  store i64 %i.eg, ptr %i.fa, align 8
  br i1 %.346.i.ph182, label %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit, label %.backedge.backedge

bb.af:                                            ; preds = %select.unfold66
  store i64 %.242.i.ph, ptr %i.s, align 8
  br label %bb.ah

bb.ag:                                            ; preds = %select.unfold66.thread
  store i64 %.040.i, ptr %i.r, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.346.i.ph180199 = phi i1 [ false, %bb.ag ], [ true, %bb.af ] ; 3 uses
  %.239.i.ph185196 = phi i64 [ %.037.i, %bb.ag ], [ %.239.i.ph, %bb.af ] ; 3 uses
  %.333.i.ph188194 = phi ptr [ %.131.i, %bb.ag ], [ %.333.i.ph, %bb.af ] ; 7 uses
  %i.fb = load i32, ptr %i.t, align 8             ; 3 uses
  %i.fc = icmp ult i32 %i.fb, 8
  br i1 %i.fc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fd = add nuw nsw i32 %i.fb, 1
  store i32 %i.fd, ptr %i.t, align 8
  %i.fe = zext nneg i32 %i.fb to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.fe
  store i64 %.239.i.ph185196, ptr %i.ff, align 8
  br i1 %.346.i.ph180199, label %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit, label %.backedge.backedge

bb.aj:                                            ; preds = %bb.ah
  %i.fg = load ptr, ptr %i.v, align 8             ; 5 uses
  %i.fh = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.fi = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64               ; 3 uses
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fl, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.fm = load ptr, ptr %i.w, align 8
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = sub i64 %i.fn, %i.fj                    ; 2 uses
  %i.fp = icmp ult i64 %i.fo, 128
  br i1 %i.fp, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i28, label %_ZNSt6vectorImSaImEE7reserveEm.exit31.preheader

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i28: ; preds = %bb.ak
  %i.fq = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25 ; 3 uses
  %.not.i8.i29 = icmp eq ptr %i.fg, null
  br i1 %.not.i8.i29, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i30, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fo) #23
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i30

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i30: ; preds = %bb.al, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i28
  store ptr %i.fq, ptr %i.u, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fk ; 2 uses
  store ptr %i.fr, ptr %i.v, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 128
  store ptr %i.fs, ptr %i.w, align 8
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit31.preheader

_ZNSt6vectorImSaImEE7reserveEm.exit31.preheader:  ; preds = %bb.ak, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i30
  %.ph = phi ptr [ %i.fr, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i30 ], [ %i.fg, %bb.ak ]
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit31

_ZNSt6vectorImSaImEE7reserveEm.exit31:            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit31.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit39
  %i.ft = phi ptr [ %i.gq, %_ZNSt6vectorImSaImEE9push_backERKm.exit39 ], [ %.ph, %_ZNSt6vectorImSaImEE7reserveEm.exit31.preheader ] ; 3 uses
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %_ZNSt6vectorImSaImEE9push_backERKm.exit39 ], [ 0, %_ZNSt6vectorImSaImEE7reserveEm.exit31.preheader ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv124 ; 2 uses
  %i.fv = load ptr, ptr %i.w, align 8
  %.not.i32 = icmp eq ptr %i.ft, %i.fv
  br i1 %.not.i32, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit31
  %i.fw = load i64, ptr %i.fu, align 8
  store i64 %i.fw, ptr %i.ft, align 8
  %i.fx = load ptr, ptr %i.v, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  store ptr %i.fy, ptr %i.v, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit39

bb.an:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit31
  %i.fz = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.ga = ptrtoint ptr %i.ft to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb                    ; 6 uses
  %i.gd = icmp eq i64 %i.gc, 9223372036854775800
  br i1 %i.gd, label %bb.ao, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i33

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i33: ; preds = %bb.an
  %i.ge = ashr exact i64 %i.gc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i34 = tail call i64 @llvm.umax.i64(i64 %i.ge, i64 1)
  %i.gf = add nsw i64 %.sroa.speculated.i.i.i34, %i.ge ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.ge
  %i.gh = tail call i64 @llvm.umin.i64(i64 %i.gf, i64 1152921504606846975)
  %i.gi = select i1 %i.gg, i64 1152921504606846975, i64 %i.gh ; 3 uses
  %.not.i.i.i35 = icmp ne i64 %i.gi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i35)
  %i.gj = shl nuw nsw i64 %i.gi, 3
  %i.gk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gj) #25 ; 4 uses
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 %i.gc ; 2 uses
  %i.gm = load i64, ptr %i.fu, align 8
  store i64 %i.gm, ptr %i.gl, align 8
  %i.gn = icmp sgt i64 %i.gc, 0
  br i1 %i.gn, label %bb.ap, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i36

bb.ap:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gk, ptr align 8 %i.fz, i64 %i.gc, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i36

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i36: ; preds = %bb.ap, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i33
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  %.not.i17.i.i37 = icmp eq ptr %i.fz, null
  br i1 %.not.i17.i.i37, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i38, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i36
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.gc) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i38

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i38: ; preds = %bb.aq, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i36
  store ptr %i.gk, ptr %i.u, align 8
  store ptr %i.go, ptr %i.v, align 8
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gi
  store ptr %i.gp, ptr %i.w, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit39

_ZNSt6vectorImSaImEE9push_backERKm.exit39:        ; preds = %bb.am, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i38
  %i.gq = phi ptr [ %i.fy, %bb.am ], [ %i.go, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i38 ] ; 3 uses
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next125, 8
  br i1 %exitcond127.not, label %.loopexit.loopexit, label %_ZNSt6vectorImSaImEE7reserveEm.exit31, !llvm.loop !110

.loopexit.loopexit:                               ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit39
  %.pre131 = load ptr, ptr %i.u, align 8          ; 2 uses
  %.pre132 = ptrtoint ptr %i.gq to i64
  %.pre133 = ptrtoint ptr %.pre131 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.aj
  %.pre-phi134 = phi i64 [ %.pre133, %.loopexit.loopexit ], [ %i.fj, %bb.aj ]
  %.pre-phi = phi i64 [ %.pre132, %.loopexit.loopexit ], [ %i.fi, %bb.aj ]
  %i.gr = phi ptr [ %.pre131, %.loopexit.loopexit ], [ %i.fh, %bb.aj ] ; 3 uses
  %i.gs = phi ptr [ %i.gq, %.loopexit.loopexit ], [ %i.fg, %bb.aj ] ; 2 uses
  %i.gt = sub i64 %.pre-phi, %.pre-phi134         ; 6 uses
  %i.gu = ashr exact i64 %i.gt, 3                 ; 4 uses
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = load i32, ptr %i.x, align 8
  %.not.i12 = icmp ugt i32 %i.gw, %i.gv
  br i1 %.not.i12, label %bb.ar, label %.thread81

bb.ar:                                            ; preds = %.loopexit
  %i.gx = load ptr, ptr %i.w, align 8
  %.not.i40 = icmp eq ptr %i.gs, %i.gx
  br i1 %.not.i40, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i64 %.239.i.ph185196, ptr %i.gs, align 8
  %i.gy = load ptr, ptr %i.v, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store ptr %i.gz, ptr %i.v, align 8
  br i1 %.346.i.ph180199, label %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit, label %.backedge.backedge

bb.at:                                            ; preds = %bb.ar
  %i.ha = icmp eq i64 %i.gt, 9223372036854775800
  br i1 %i.ha, label %bb.au, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i41

bb.au:                                            ; preds = %bb.at
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i41: ; preds = %bb.at
  %.sroa.speculated.i.i.i42 = tail call i64 @llvm.umax.i64(i64 %i.gu, i64 1)
  %i.hb = add nsw i64 %.sroa.speculated.i.i.i42, %i.gu ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.gu
  %i.hd = tail call i64 @llvm.umin.i64(i64 %i.hb, i64 1152921504606846975)
  %i.he = select i1 %i.hc, i64 1152921504606846975, i64 %i.hd ; 3 uses
  %.not.i.i.i43 = icmp ne i64 %i.he, 0
  tail call void @llvm.assume(i1 %.not.i.i.i43)
  %i.hf = shl nuw nsw i64 %i.he, 3
  %i.hg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #25 ; 4 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 %i.gt ; 2 uses
  store i64 %.239.i.ph185196, ptr %i.hh, align 8
  %i.hi = icmp sgt i64 %i.gt, 0
  br i1 %i.hi, label %bb.av, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i44

bb.av:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i41
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hg, ptr align 8 %i.gr, i64 %i.gt, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i44

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i44: ; preds = %bb.av, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i41
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %.not.i17.i.i45 = icmp eq ptr %i.gr, null
  br i1 %.not.i17.i.i45, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i46, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i44
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.gt) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i46

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i46: ; preds = %bb.aw, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i44
  store ptr %i.hg, ptr %i.u, align 8
  store ptr %i.hj, ptr %i.v, align 8
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.he
  store ptr %i.hk, ptr %i.w, align 8
  br i1 %.346.i.ph180199, label %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit, label %.backedge.backedge

.thread81:                                        ; preds = %.loopexit
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 1, ptr %i.hl, align 4
  br label %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit

bb.ax:                                            ; preds = %._crit_edge
  br i1 %.346.i.ph182, label %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ax, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i46, %bb.as, %bb.ae, %bb.ai
  %.030.i.be = phi ptr [ %.333.i.ph189, %bb.ax ], [ %.333.i.ph188194, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i46 ], [ %.333.i.ph188194, %bb.as ], [ %.333.i.ph189, %bb.ae ], [ %.333.i.ph188194, %bb.ai ]
  br label %.backedge

_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit: ; preds = %bb.ax, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i46, %bb.as, %bb.ae, %bb.ai, %.thread81, %bb.y, %bb.w
  %.3.i = phi ptr [ %.333.i.ph188194, %.thread81 ], [ %.228.i.ph, %bb.y ], [ %.228.i.ph, %bb.w ], [ %.333.i.ph188194, %bb.ai ], [ %.333.i.ph189, %bb.ae ], [ %.333.i.ph188194, %bb.as ], [ %.333.i.ph189, %bb.ax ], [ %.333.i.ph188194, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i46 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = icmp eq i32 %i.hn, 1
  br i1 %i.ho, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.hq = load i8, ptr %i.hp, align 2, !range !30, !noundef !31
  %i.hr = trunc nuw i8 %i.hq to i1
  %.not7.not.i = icmp eq ptr %.3.i, %i.g
  %or.cond = or i1 %.not7.not.i, %i.hr
  br i1 %or.cond, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ay, %bb.az
  %i.hs = phi ptr [ %i.hy, %bb.az ], [ %.3.i, %bb.ay ] ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1
  %i.hu = zext i8 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1
  %i.hx = and i8 %i.hw, 8
  %.not6.i = icmp eq i8 %i.hx, 0
  br i1 %.not6.i, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 1 ; 2 uses
  %.not.not.i = icmp eq ptr %i.hy, %i.g
  br i1 %.not.not.i, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit, label %.lr.ph.i, !llvm.loop !32

_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit: ; preds = %bb.az, %.lr.ph.i, %bb.ay, %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit
  %.sink = phi i32 [ 5, %bb.ay ], [ 1, %_ZN2v86bigint21FromStringAccumulator5ParseIPKhEET_S5_S5_m.exit ], [ 2, %.lr.ph.i ], [ 5, %bb.az ]
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sink, ptr %i.hz, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20StringToBigIntHelperINS0_12LocalIsolateEE13ParseInternalItEEvPKT_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %.idx83 = shl nuw nsw i64 %i.b, 1               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx83 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %.idx = shl nuw nsw i64 %i.e, 1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = sext i32 %i.i to i64                     ; 6 uses
  %gepdiff = sub nsw i64 %.idx, %.idx83
  %i.k = lshr exact i64 %gepdiff, 1
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp ult i32 %i.l, 100                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.o = zext i1 %i.m to i8
  store i8 %i.o, ptr %i.n, align 4
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.j)
  %i.q = icmp samesign ugt i64 %i.p, 1
  %or.cond.i.not = select i1 %i.m, i1 true, i1 %i.q
  br i1 %or.cond.i.not, label %.preheader84, label %bb.b

.preheader84:                                     ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %.backedge

bb.b:                                             ; preds = %bb.a
  %i.y = trunc i32 %i.i to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 197
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = lshr i64 %i.j, 2
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN2v86bigintL9kCharBitsE, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = zext nneg i8 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.c

bb.c:                                             ; preds = %.backedge238, %bb.b
  %.034.i = phi i32 [ 64, %bb.b ], [ %.034.i.be, %.backedge238 ] ; 5 uses
  %.029.i = phi i64 [ 0, %bb.b ], [ %.029.i.be, %.backedge238 ] ; 4 uses
  %.127.i = phi ptr [ %i.c, %bb.b ], [ %.127.i.be, %.backedge238 ] ; 5 uses
  %i.ak = load i16, ptr %.127.i, align 2          ; 2 uses
  %i.al = icmp ugt i16 %i.ak, 127
  br i1 %i.al, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = zext nneg i16 %i.ak to i64
  %i.an = getelementptr inbounds nuw i8, ptr @_ZN2v86bigintL10kCharValueE, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64                    ; 2 uses
  %.not.i5 = icmp ugt i64 %i.j, %i.ap
  br i1 %.not.i5, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  %i.aq = icmp samesign ult i32 %.034.i, %i.ad
  br i1 %i.aq, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = sub nuw nsw i32 %.034.i, %i.ad          ; 2 uses
  %i.as = shl i64 %.029.i, %i.ae
  %i.at = or i64 %i.as, %i.ap                     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.127.i, i64 2 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.f
  br i1 %i.av, label %select.unfold, label %.backedge238

.backedge238:                                     ; preds = %bb.f, %bb.w
  %.034.i.be = phi i32 [ %i.ar, %bb.f ], [ 64, %bb.w ]
  %.029.i.be = phi i64 [ %i.at, %bb.f ], [ 0, %bb.w ]
  %.127.i.be = phi ptr [ %i.au, %bb.f ], [ %.228.i.ph, %bb.w ]
  br label %bb.c, !llvm.loop !113

select.unfold:                                    ; preds = %bb.f, %bb.e, %bb.c, %bb.d
  %.135.i6.ph = phi i32 [ %.034.i, %bb.e ], [ %.034.i, %bb.d ], [ %.034.i, %bb.c ], [ %i.ar, %bb.f ]
  %.233.i.ph = phi i1 [ false, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.f ]
  %.130.i.ph = phi i64 [ %.029.i, %bb.e ], [ %.029.i, %bb.d ], [ %.029.i, %bb.c ], [ %i.at, %bb.f ] ; 3 uses
  %.228.i.ph = phi ptr [ %.127.i, %bb.e ], [ %.127.i, %bb.d ], [ %.127.i, %bb.c ], [ %i.f, %bb.f ] ; 3 uses
  %i.aw = load i32, ptr %i.af, align 8            ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 8
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %select.unfold
  %i.ay = add nuw nsw i32 %i.aw, 1
  store i32 %i.ay, ptr %i.af, align 8
  %i.az = zext nneg i32 %i.aw to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.az
  store i64 %.130.i.ph, ptr %i.ba, align 8
  br label %bb.w

bb.h:                                             ; preds = %select.unfold
  %i.bb = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.bc = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bg, label %bb.i, label %.loopexit85

bb.i:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.ai, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.be                    ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 128
  br i1 %i.bk, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.i
  %i.bl = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25 ; 3 uses
  %.not.i8.i = icmp eq ptr %i.bb, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bj) #23
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.j, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.bl, ptr %i.ag, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bf ; 2 uses
  store ptr %i.bm, ptr %i.ah, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  store ptr %i.bn, ptr %i.ai, align 8
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader

_ZNSt6vectorImSaImEE7reserveEm.exit.preheader:    ; preds = %bb.i, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %.ph237 = phi ptr [ %i.bm, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.bb, %bb.i ]
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.bo = phi ptr [ %i.cl, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.ph237, %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ 0, %_ZNSt6vectorImSaImEE7reserveEm.exit.preheader ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.bq = load ptr, ptr %i.ai, align 8
  %.not.i13 = icmp eq ptr %i.bo, %i.bq
  br i1 %.not.i13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.br = load i64, ptr %i.bp, align 8
  store i64 %i.br, ptr %i.bo, align 8
  %i.bs = load ptr, ptr %i.ah, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.ah, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.l:                                             ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.bu = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.bv = ptrtoint ptr %i.bo to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 6 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.m, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #25 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bx ; 2 uses
  %i.ch = load i64, ptr %i.bp, align 8
  store i64 %i.ch, ptr %i.cg, align 8
  %i.ci = icmp sgt i64 %i.bx, 0
  br i1 %i.ci, label %bb.n, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr align 8 %i.bu, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bx) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.cf, ptr %i.ag, align 8
  store ptr %i.cj, ptr %i.ah, align 8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.ck, ptr %i.ai, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.k, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.cl = phi ptr [ %i.bt, %bb.k ], [ %i.cj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit85.loopexit, label %_ZNSt6vectorImSaImEE7reserveEm.exit, !llvm.loop !110

.loopexit85.loopexit:                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.pre = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.pre127 = ptrtoint ptr %i.cl to i64
  %.pre129 = ptrtoint ptr %.pre to i64
  br label %.loopexit85

.loopexit85:                                      ; preds = %.loopexit85.loopexit, %bb.h
  %.pre-phi130 = phi i64 [ %.pre129, %.loopexit85.loopexit ], [ %i.be, %bb.h ]
  %.pre-phi128 = phi i64 [ %.pre127, %.loopexit85.loopexit ], [ %i.bd, %bb.h ]
  %i.cm = phi ptr [ %.pre, %.loopexit85.loopexit ], [ %i.bc, %bb.h ] ; 3 uses
  %i.cn = phi ptr [ %i.cl, %.loopexit85.loopexit ], [ %i.bb, %bb.h ] ; 2 uses
  %i.co = sub i64 %.pre-phi128, %.pre-phi130      ; 6 uses
  %i.cp = ashr exact i64 %i.co, 3                 ; 4 uses
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = load i32, ptr %i.aj, align 8
  %.not.i.i8 = icmp ugt i32 %i.cr, %i.cq
  br i1 %.not.i.i8, label %bb.p, label %bb.v

bb.p:                                             ; preds = %.loopexit85
  %i.cs = load ptr, ptr %i.ai, align 8
  %.not.i14 = icmp eq ptr %i.cn, %i.cs
  br i1 %.not.i14, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.130.i.ph, ptr %i.cn, align 8
  %i.ct = load ptr, ptr %i.ah, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cu, ptr %i.ah, align 8
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.cv = icmp eq i64 %i.co, 9223372036854775800
  br i1 %i.cv, label %bb.s, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i15

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i15: ; preds = %bb.r
  %.sroa.speculated.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i16, %i.cp ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cp
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 1152921504606846975)
  %i.cz = select i1 %i.cx, i64 1152921504606846975, i64 %i.cy ; 3 uses
  %.not.i.i.i17 = icmp ne i64 %i.cz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i17)
  %i.da = shl nuw nsw i64 %i.cz, 3
  %i.db = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #25 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.co ; 2 uses
  store i64 %.130.i.ph, ptr %i.dc, align 8
  %i.dd = icmp sgt i64 %i.co, 0
  br i1 %i.dd, label %bb.t, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i18

bb.t:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i15
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.db, ptr align 8 %i.cm, i64 %i.co, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i18

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i18: ; preds = %bb.t, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i15
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.not.i17.i.i19 = icmp eq ptr %i.cm, null
  br i1 %.not.i17.i.i19, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i20, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i18
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.co) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i20

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i20: ; preds = %bb.u, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i18
  store ptr %i.db, ptr %i.ag, align 8
  store ptr %i.de, ptr %i.ah, align 8
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cz
  store ptr %i.df, ptr %i.ai, align 8
  br label %bb.w

bb.v:                                             ; preds = %.loopexit85
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 1, ptr %i.dg, align 4
  br label %_ZN2v86bigint21FromStringAccumulator5ParseIPKtEET_S5_S5_m.exit

bb.w:                                             ; preds = %bb.g, %bb.q, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i20
  br i1 %.233.i.ph, label %bb.x, label %.backedge238

bb.x:                                             ; preds = %bb.w
  %i.dh = zext nneg i32 %.135.i6.ph to i64
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.dh, ptr %i.di, align 8
  br label %_ZN2v86bigint21FromStringAccumulator5ParseIPKtEET_S5_S5_m.exit

.backedge:                                        ; preds = %.backedge.backedge, %.preheader84
  %.040.i = phi i64 [ 1, %.preheader84 ], [ %.040.i.be, %.backedge.backedge ] ; 5 uses
  %.037.i = phi i64 [ 0, %.preheader84 ], [ %.037.i.be, %.backedge.backedge ] ; 5 uses
  %.131.i = phi ptr [ %i.c, %.preheader84 ], [ %.131.i.be, %.backedge.backedge ] ; 6 uses
  %i.dj = load i16, ptr %.131.i, align 2          ; 2 uses
  %i.dk = icmp ugt i16 %i.dj, 127
  br i1 %i.dk, label %select.unfold62, label %bb.y

bb.y:                                             ; preds = %.backedge
  %i.dl = zext nneg i16 %i.dj to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @_ZN2v86bigintL10kCharValueE, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = zext i8 %i.dn to i64                    ; 2 uses
  %.not.i = icmp ugt i64 %i.j, %i.do
  br i1 %.not.i, label %bb.z, label %select.unfold62

bb.z:                                             ; preds = %bb.y
  %i.dp = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.040.i, i64 %i.j) ; 2 uses
  %i.dq = extractvalue { i64, i1 } %i.dp, 1
  br i1 %i.dq, label %select.unfold62.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = extractvalue { i64, i1 } %i.dp, 0       ; 2 uses
  %i.ds = mul i64 %.037.i, %i.j
  %i.dt = add i64 %i.ds, %i.do                    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.131.i, i64 2 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.f
  br i1 %i.dv, label %select.unfold62, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.aa, %bb.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i41, %bb.aq, %bb.ac, %bb.ag
  %.040.i.be = phi i64 [ %i.dr, %bb.aa ], [ 1, %bb.av ], [ 1, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i41 ], [ 1, %bb.aq ], [ 1, %bb.ac ], [ 1, %bb.ag ]
  %.037.i.be = phi i64 [ %i.dt, %bb.aa ], [ 0, %bb.av ], [ 0, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i41 ], [ 0, %bb.aq ], [ 0, %bb.ac ], [ 0, %bb.ag ]
  %.131.i.be = phi ptr [ %i.du, %bb.aa ], [ %.333.i.ph185, %bb.av ], [ %.333.i.ph184190, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i41 ], [ %.333.i.ph184190, %bb.aq ], [ %.333.i.ph185, %bb.ac ], [ %.333.i.ph184190, %bb.ag ]
  br label %.backedge

select.unfold62:                                  ; preds = %bb.aa, %.backedge, %bb.y
  %.242.i.ph = phi i64 [ %.040.i, %.backedge ], [ %i.dr, %bb.aa ], [ %.040.i, %bb.y ] ; 2 uses
  %.239.i.ph = phi i64 [ %.037.i, %.backedge ], [ %i.dt, %bb.aa ], [ %.037.i, %bb.y ] ; 2 uses
  %.333.i.ph = phi ptr [ %.131.i, %.backedge ], [ %i.f, %bb.aa ], [ %.131.i, %bb.y ] ; 2 uses
  %i.dw = load i8, ptr %i.n, align 4, !range !30, !noundef !31
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %.preheader, label %bb.ad

select.unfold62.thread:                           ; preds = %bb.z
  %i.dy = load i8, ptr %i.n, align 4, !range !30, !noundef !31
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %.preheader, label %bb.ae

.preheader:                                       ; preds = %select.unfold62.thread, %select.unfold62
  %.333.i.ph185 = phi ptr [ %.131.i, %select.unfold62.thread ], [ %.333.i.ph, %select.unfold62 ] ; 4 uses
  %.239.i.ph182 = phi i64 [ %.037.i, %select.unfold62.thread ], [ %.239.i.ph, %select.unfold62 ] ; 2 uses
  %.242.i.ph179 = phi i64 [ %.040.i, %select.unfold62.thread ], [ %.242.i.ph, %select.unfold62 ]
  %.346.i.ph178 = phi i1 [ false, %select.unfold62.thread ], [ true, %select.unfold62 ] ; 2 uses
  %i.ea = load i32, ptr %i.t, align 8
  %.not = icmp eq i32 %i.ea, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.eb = zext i64 %.242.i.ph179 to i128
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.ab, %.preheader
  %.024.i.i.lcssa = phi i64 [ 0, %.preheader ], [ %i.ei, %bb.ab ]
  %.023.i.i.lcssa = phi i64 [ %.239.i.ph182, %.preheader ], [ %i.ep, %bb.ab ]
  %.lcssa = phi i32 [ 0, %.preheader ], [ %i.er, %bb.ab ] ; 2 uses
  %i.ec = add i64 %.023.i.i.lcssa, %.024.i.i.lcssa ; 2 uses
  %.not.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i, label %bb.av, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph, %bb.ab
  %indvars.iv120 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next121, %bb.ab ] ; 2 uses
  %.023.i.i100 = phi i64 [ %.239.i.ph182, %.lr.ph ], [ %i.ep, %bb.ab ]
  %.024.i.i99 = phi i64 [ 0, %.lr.ph ], [ %i.ei, %bb.ab ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv120 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = zext i64 %i.ee to i128
  %i.eg = mul nuw i128 %i.ef, %i.eb               ; 2 uses
  %i.eh = lshr i128 %i.eg, 64
  %i.ei = trunc nuw i128 %i.eh to i64             ; 2 uses
  %i.ej = and i128 %i.eg, 18446744073709551615
  %i.ek = zext i64 %.024.i.i99 to i128
  %i.el = zext i64 %.023.i.i100 to i128
  %i.em = add nuw nsw i128 %i.el, %i.ek
  %i.en = add nuw nsw i128 %i.em, %i.ej           ; 2 uses
  %i.eo = lshr i128 %i.en, 64
  %i.ep = trunc nuw nsw i128 %i.eo to i64         ; 2 uses
  %i.eq = trunc i128 %i.en to i64
  store i64 %i.eq, ptr %i.ed, align 8
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %i.er = load i32, ptr %i.t, align 8             ; 2 uses
  %i.es = zext i32 %i.er to i64
  %i.et = icmp samesign ult i64 %indvars.iv.next121, %i.es
  br i1 %i.et, label %bb.ab, label %._crit_edge, !llvm.loop !112

bb.ac:                                            ; preds = %._crit_edge
  %i.eu = add i32 %.lcssa, 1
  store i32 %i.eu, ptr %i.t, align 8
  %i.ev = zext i32 %.lcssa to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ev
  store i64 %i.ec, ptr %i.ew, align 8
  br i1 %.346.i.ph178, label %_ZN2v86bigint21FromStringAccumulator5ParseIPKtEET_S5_S5_m.exit, label %.backedge.backedge

bb.ad:                                            ; preds = %select.unfold62
  store i64 %.242.i.ph, ptr %i.s, align 8
  br label %bb.af

bb.ae:                                            ; preds = %select.unfold62.thread
  store i64 %.040.i, ptr %i.r, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.346.i.ph176195 = phi i1 [ false, %bb.ae ], [ true, %bb.ad ] ; 3 uses
  %.239.i.ph181192 = phi i64 [ %.037.i, %bb.ae ], [ %.239.i.ph, %bb.ad ] ; 3 uses
  %.333.i.ph184190 = phi ptr [ %.131.i, %bb.ae ], [ %.333.i.ph, %bb.ad ] ; 7 uses
  %i.ex = load i32, ptr %i.t, align 8             ; 3 uses
  %i.ey = icmp ult i32 %i.ex, 8
  br i1 %i.ey, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ez = add nuw nsw i32 %i.ex, 1
  store i32 %i.ez, ptr %i.t, align 8
  %i.fa = zext nneg i32 %i.ex to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.fa
  store i64 %.239.i.ph181192, ptr %i.fb, align 8
  br i1 %.346.i.ph176195, label %_ZN2v86bigint21FromStringAccumulator5ParseIPKtEET_S5_S5_m.exit, label %.backedge.backedge

bb.ah:                                            ; preds = %bb.af
  %i.fc = load ptr, ptr %i.v, align 8             ; 5 uses
  %i.fd = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.fe = ptrtoint ptr %i.fc to i64               ; 2 uses
  %i.ff = ptrtoint ptr %i.fd to i64               ; 3 uses
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fh, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.fi = load ptr, ptr %i.w, align 8
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = sub i64 %i.fj, %i.ff                    ; 2 uses
  %i.fl = icmp ult i64 %i.fk, 128
  br i1 %i.fl, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i23, label %_ZNSt6vectorImSaImEE7reserveEm.exit26.preheader

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i23: ; preds = %bb.ai
  %i.fm = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25 ; 3 uses
  %.not.i8.i24 = icmp eq ptr %i.fc, null
  br i1 %.not.i8.i24, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i25, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fk) #23
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i25

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i25: ; preds = %bb.aj, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i23
  store ptr %i.fm, ptr %i.u, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fg ; 2 uses
  store ptr %i.fn, ptr %i.v, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 128
  store ptr %i.fo, ptr %i.w, align 8
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit26.preheader

_ZNSt6vectorImSaImEE7reserveEm.exit26.preheader:  ; preds = %bb.ai, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i25
  %.ph = phi ptr [ %i.fn, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i25 ], [ %i.fc, %bb.ai ]
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit26

_ZNSt6vectorImSaImEE7reserveEm.exit26:            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit26.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit34
  %i.fp = phi ptr [ %i.gm, %_ZNSt6vectorImSaImEE9push_backERKm.exit34 ], [ %.ph, %_ZNSt6vectorImSaImEE7reserveEm.exit26.preheader ] ; 3 uses
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %_ZNSt6vectorImSaImEE9push_backERKm.exit34 ], [ 0, %_ZNSt6vectorImSaImEE7reserveEm.exit26.preheader ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv116 ; 2 uses
  %i.fr = load ptr, ptr %i.w, align 8
  %.not.i27 = icmp eq ptr %i.fp, %i.fr
  br i1 %.not.i27, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit26
  %i.fs = load i64, ptr %i.fq, align 8
  store i64 %i.fs, ptr %i.fp, align 8
  %i.ft = load ptr, ptr %i.v, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  store ptr %i.fu, ptr %i.v, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit34

bb.al:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit26
  %i.fv = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.fw = ptrtoint ptr %i.fp to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 6 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775800
  br i1 %i.fz, label %bb.am, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i28

bb.am:                                            ; preds = %bb.al
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i28: ; preds = %bb.al
  %i.ga = ashr exact i64 %i.fy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i.i29, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = tail call i64 @llvm.umin.i64(i64 %i.gb, i64 1152921504606846975)
  %i.ge = select i1 %i.gc, i64 1152921504606846975, i64 %i.gd ; 3 uses
  %.not.i.i.i30 = icmp ne i64 %i.ge, 0
  tail call void @llvm.assume(i1 %.not.i.i.i30)
  %i.gf = shl nuw nsw i64 %i.ge, 3
  %i.gg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #25 ; 4 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.fy ; 2 uses
  %i.gi = load i64, ptr %i.fq, align 8
  store i64 %i.gi, ptr %i.gh, align 8
  %i.gj = icmp sgt i64 %i.fy, 0
  br i1 %i.gj, label %bb.an, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i31

bb.an:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gg, ptr align 8 %i.fv, i64 %i.fy, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i31

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i31: ; preds = %bb.an, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i28
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
end_hunk_1

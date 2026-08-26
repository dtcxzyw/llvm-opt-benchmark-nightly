Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Number?download=true
inline.NumInlined: 2597
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN8V3Number5opLteERKS_S1_:bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opLtSERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opGtSERKS_S1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number6opLteSERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number6opGteSERKS_S1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8opShiftRERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %0, %2
  %.not28 = or i1 %i.a, %i.b
  br i1 %.not28, label %bb.b, label %bb.c, !prof !156

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1972) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load i8, ptr %i.f, align 4, !tbaa !42
  %.not = icmp eq i8 %i.g, 1
  br i1 %.not, label %bb.e, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1973) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.74)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.l) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !42
  %.not29 = icmp eq i8 %i.n, 1
  br i1 %.not29, label %bb.g, label %bb.f, !prof !43

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1973) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.74)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.s) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11setAllBitsXEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.v = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41   ; 3 uses
  %i.y = icmp sgt i32 %i.x, 32
  br i1 %i.y, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %bb.i
  %i.z = load i8, ptr %i.m, align 4, !tbaa !42
  %i.aa = add i8 %i.z, -3
  %spec.select.i.i = icmp ult i8 %i.aa, -2
  br i1 %spec.select.i.i, label %._crit_edge.split, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ab = icmp samesign ult i32 %i.x, 129
  %i.ac = load ptr, ptr %2, align 8
  %spec.select.i10.i = select i1 %i.ab, ptr %2, ptr %i.ac
  br label %_ZNK12V3NumberData3numEv.exit.i

_ZNK12V3NumberData3numEv.exit.i:                  ; preds = %.lr.ph.split, %_ZNK8V3Number6bitIs1Ei.exit.thread
  %.02435 = phi i32 [ 32, %.lr.ph.split ], [ %i.an, %_ZNK8V3Number6bitIs1Ei.exit.thread ] ; 3 uses
  %i.ad = lshr i32 %.02435, 5
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i, i64 %i.ae ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.af, align 4, !tbaa !66
  %i.ag = zext i32 %.sroa.0.0.copyload.i to i64
  %i.ah = and i32 %.02435, 31
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 1, %i.ai                ; 2 uses
  %i.ak = and i64 %i.aj, %i.ag
  %.not7.i = icmp eq i64 %i.ak, 0
  br i1 %.not7.i, label %_ZNK8V3Number6bitIs1Ei.exit.thread, label %_ZNK8V3Number6bitIs1Ei.exit

_ZNK8V3Number6bitIs1Ei.exit:                      ; preds = %_ZNK12V3NumberData3numEv.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !66
  %i.al = zext i32 %.sroa.4.0.copyload.i to i64
  %i.am = and i64 %i.aj, %i.al
  %.not8.i = icmp eq i64 %i.am, 0
  br i1 %.not8.i, label %.loopexit, label %_ZNK8V3Number6bitIs1Ei.exit.thread

_ZNK8V3Number6bitIs1Ei.exit.thread:               ; preds = %_ZNK12V3NumberData3numEv.exit.i, %_ZNK8V3Number6bitIs1Ei.exit
  %i.an = add nuw nsw i32 %.02435, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.an, %i.x
  br i1 %exitcond.not, label %._crit_edge.split, label %_ZNK12V3NumberData3numEv.exit.i, !llvm.loop !384

._crit_edge.split:                                ; preds = %_ZNK8V3Number6bitIs1Ei.exit.thread, %.lr.ph, %bb.i
  %i.ao = tail call noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %2) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !41
  %i.ar = icmp ult i32 %i.ao, %i.aq
  br i1 %i.ar, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge.split
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !41
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph37, label %.loopexit

.lr.ph37:                                         ; preds = %.preheader, %.lr.ph37
  %.036 = phi i32 [ %i.ax, %.lr.ph37 ], [ 0, %.preheader ] ; 3 uses
  %i.av = add i32 %.036, %i.ao
  %i.aw = tail call noundef signext i8 @_ZNK8V3Number5bitIsEi(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %i.av)
  tail call void @_ZN8V3Number6setBitEic(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.036, i8 noundef signext %i.aw)
  %i.ax = add nuw nsw i32 %.036, 1                ; 2 uses
  %i.ay = load i32, ptr %i.as, align 8, !tbaa !41
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph37, label %.loopexit, !llvm.loop !385

.loopexit:                                        ; preds = %_ZNK8V3Number6bitIs1Ei.exit, %.lr.ph37, %.preheader, %._crit_edge.split, %bb.h
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number9opShiftRSERKS_S1_j(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %0, %2
  %.not33 = or i1 %i.a, %i.b
  br i1 %.not33, label %bb.b, label %bb.c, !prof !156

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1991) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load i8, ptr %i.f, align 4, !tbaa !42
  %.not = icmp eq i8 %i.g, 1
  br i1 %.not, label %bb.e, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1992) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.74)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.l) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !42
  %.not34 = icmp eq i8 %i.n, 1
  br i1 %.not34, label %bb.g, label %bb.f, !prof !43

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1992) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.74)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.s) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11setAllBitsXEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.v = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %.fr.i.i.i = freeze i32 %i.x                    ; 4 uses
  %i.y = icmp sgt i32 %.fr.i.i.i, 32
  br i1 %i.y, label %.lr.ph.i.a, label %.critedge

.lr.ph.i.a:                                       ; preds = %bb.i
  %4 = add nsw i32 %.fr.i.i.i, -1                 ; 3 uses
  %5 = load i8, ptr %i.m, align 4, !tbaa !42
  %.fr24.i = freeze i8 %5
  %6 = add i8 %.fr24.i, -3
  %spec.select.i.i.i = icmp ult i8 %6, -2
  %7 = icmp samesign ult i32 %.fr.i.i.i, 129
  %8 = load ptr, ptr %2, align 8
  %spec.select.i7.i.i.i = select i1 %7, ptr %2, ptr %8 ; 2 uses
  %9 = lshr i32 %4, 5
  %i.z = zext nneg i32 %9 to i64
  %10 = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i.i, i64 %i.z
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 4
  %11 = and i32 %4, 31
  %12 = zext nneg i32 %11 to i64
  %13 = shl nuw nsw i64 1, %12
  br i1 %spec.select.i.i.i, label %.critedge37, label %.lr.ph.split.split.i, !prof !329

.lr.ph.split.split.i:                             ; preds = %.lr.ph.i.a, %_ZNK8V3Number6bitIs0Ei.exit.thread.i
  %.0713.i = phi i32 [ %16, %_ZNK8V3Number6bitIs0Ei.exit.thread.i ], [ 32, %.lr.ph.i.a ] ; 5 uses
  %.not.i.i = icmp slt i32 %.0713.i, %.fr.i.i.i
  br i1 %.not.i.i, label %_ZNK8V3Number6bitIs0Ei.exit.i, label %tailrecurse.preheader.i.i.i

tailrecurse.preheader.i.i.i:                      ; preds = %.lr.ph.split.split.i
  %.sroa.3.0.copyload.i.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !tbaa !66
  %14 = zext i32 %.sroa.3.0.copyload.i.i.i to i64
  %15 = and i64 %13, %14
  %i.aa = icmp eq i64 %15, 0
  br i1 %i.aa, label %_ZNK8V3Number6bitIs0Ei.exit.thread.i, label %.critedge37, !prof !330

_ZNK8V3Number6bitIs0Ei.exit.i:                    ; preds = %.lr.ph.split.split.i
  %i.ab = lshr i32 %.0713.i, 5
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i.i, i64 %i.ac ; 2 uses
  %.sroa.0.0.copyload.i.i.a = load i32, ptr %i.ad, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.sroa.4.0.copyload.i.i.a = load i32, ptr %.sroa.4.0..sroa_idx.i.i.a, align 4, !tbaa !66
  %i.ae = or i32 %.sroa.4.0.copyload.i.i.a, %.sroa.0.0.copyload.i.i.a
  %i.af = zext i32 %i.ae to i64
  %i.ag = and i32 %.0713.i, 31
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 1, %i.ah
  %i.aj = and i64 %i.ai, %i.af
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNK8V3Number6bitIs0Ei.exit.thread.i, label %.critedge37, !prof !330

_ZNK8V3Number6bitIs0Ei.exit.thread.i:             ; preds = %_ZNK8V3Number6bitIs0Ei.exit.i, %tailrecurse.preheader.i.i.i
  %16 = add nuw nsw i32 %.0713.i, 1
  %exitcond.not.i = icmp eq i32 %.0713.i, %4
  br i1 %exitcond.not.i, label %.critedge, label %.lr.ph.split.split.i, !llvm.loop !331

.critedge:                                        ; preds = %_ZNK8V3Number6bitIs0Ei.exit.thread.i, %bb.i
  %i.al = tail call noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %2) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !41
  %.not35 = icmp ult i32 %i.al, %i.an
  br i1 %.not35, label %.preheader, label %.critedge37

.preheader:                                       ; preds = %.critedge
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !41
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.02942 = phi i32 [ %i.at, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.ar = add i32 %.02942, %i.al
  %i.as = tail call noundef signext i8 @_ZNK8V3Number11bitIsExtendEii(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %i.ar, i32 noundef %3)
  tail call void @_ZN8V3Number6setBitEic(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.02942, i8 noundef signext %i.as)
  %i.at = add nuw nsw i32 %.02942, 1              ; 2 uses
  %i.au = load i32, ptr %i.ao, align 8, !tbaa !41
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %.lr.ph, label %.loopexit, !llvm.loop !386

.critedge37:                                      ; preds = %_ZNK8V3Number6bitIs0Ei.exit.i, %tailrecurse.preheader.i.i.i, %.lr.ph.i.a, %.critedge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !41
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph44, label %.loopexit

.lr.ph44:                                         ; preds = %.critedge37
  %i.az = add i32 %3, -1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph44, %bb.j
  %.043 = phi i32 [ 0, %.lr.ph44 ], [ %i.bb, %bb.j ] ; 2 uses
  %i.ba = tail call noundef signext i8 @_ZNK8V3Number5bitIsEi(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %i.az)
  tail call void @_ZN8V3Number6setBitEic(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.043, i8 noundef signext %i.ba)
  %i.bb = add nuw nsw i32 %.043, 1                ; 2 uses
  %i.bc = load i32, ptr %i.aw, align 8, !tbaa !41
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.j, label %.loopexit, !llvm.loop !387

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %.preheader, %.critedge37, %bb.h
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNK8V3Number11bitIsExtendEii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !41   ; 3 uses
  %.not = icmp sgt i32 %2, %i.c
  br i1 %.not, label %bb.c, label %bb.d, !prof !156

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 447) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.128)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.f) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not17 = icmp slt i32 %1, %2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !42
  %i.i = add i8 %i.h, -1
  %spec.select.i.i23 = icmp ult i8 %i.i, 2        ; 2 uses
  br i1 %.not17, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %spec.select.i.i23, label %_ZNK12V3NumberData3numEv.exit, label %bb.f, !prof !43

bb.f:                                             ; preds = %bb.e
  %i.j = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.118)
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.m) #32
  unreachable

_ZNK12V3NumberData3numEv.exit:                    ; preds = %bb.e
  %i.n = tail call i32 @llvm.usub.sat.i32(i32 %2, i32 1) ; 2 uses
  %i.o = icmp slt i32 %i.c, 129
  %i.p = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.o, ptr %0, ptr %i.p
  %i.q = sdiv i32 %i.n, 32
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %spec.select.i, i64 %i.r
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  br i1 %spec.select.i.i23, label %_ZNK12V3NumberData3numEv.exit25, label %bb.h, !prof !43

bb.h:                                             ; preds = %bb.g
  %i.t = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.118)
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.w) #32
  unreachable

_ZNK12V3NumberData3numEv.exit25:                  ; preds = %bb.g
  %i.x = icmp slt i32 %i.c, 129
  %i.y = load ptr, ptr %0, align 8
  %spec.select.i24 = select i1 %i.x, ptr %0, ptr %i.y
  %i.z = lshr i32 %1, 5
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i24, i64 %i.aa
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNK12V3NumberData3numEv.exit, %_ZNK12V3NumberData3numEv.exit25
  %.sink36 = phi ptr [ %i.ab, %_ZNK12V3NumberData3numEv.exit25 ], [ %i.s, %_ZNK12V3NumberData3numEv.exit ] ; 2 uses
  %.sink = phi i32 [ %1, %_ZNK12V3NumberData3numEv.exit25 ], [ %i.n, %_ZNK12V3NumberData3numEv.exit ]
  %.sroa.0.0.copyload.sink = load i32, ptr %.sink36, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink36, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !66
  %i.ac = and i32 %.sink, 31                      ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 1, %i.ad
  %i.af = lshr i32 %.sroa.0.0.copyload.sink, %i.ac
  %i.ag = and i32 %i.af, 1
  %i.ah = zext i32 %.sroa.4.0.copyload to i64
  %i.ai = and i64 %i.ae, %i.ah
  %.not19 = icmp eq i64 %i.ai, 0
  %i.aj = select i1 %.not19, i32 0, i32 2
  %i.ak = or disjoint i32 %i.aj, %i.ag
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @.str.125, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i8 [ 48, %bb.a ], [ %i.an, %.sink.split ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opSubERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.V3Number, align 8            ; 17 uses
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %0, %2
  %.not15 = or i1 %i.a, %i.b
  br i1 %.not15, label %bb.b, label %bb.c, !prof !156

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2061) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load i8, ptr %i.f, align 4, !tbaa !42
  %.not = icmp eq i8 %i.g, 1
  br i1 %.not, label %bb.e, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2062) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.74)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.l) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.n = load i8, ptr %i.m, align 4, !tbaa !42
  %.not16 = icmp eq i8 %i.n, 1
  br i1 %.not16, label %bb.g, label %bb.f, !prof !43

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2062) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.74)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.s) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11setAllBitsXEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  store i8 0, ptr %i.z, align 4, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 37 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, -128
  store i8 %i.ac, ptr %i.aa, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef null, i32 noundef %i.x, i1 noundef zeroext true)
          to label %_ZN8V3NumberC2EPKS_i.exit unwind label %bb.k

common.resume:                                    ; preds = %bb.r, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.k ], [ %i.bb, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(56) %3) #30
  br label %common.resume
end_hunk_0

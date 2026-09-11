Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/cord?download=true
inline.NumInlined: 2123
inline.NumDeleted: 685
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl13cord_internal18CordRepBtreeReader4SeekEm:bb.a

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ult i8 %i.n, -7
  br i1 %i.q, label %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 187, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal7CordRep4flatEv) #20
  unreachable

_ZNK4absl13cord_internal7CordRep4flatEv.exit.i:   ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.011.i, i64 13
  br label %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit

_ZNK4absl13cord_internal7CordRep8externalEv.exit.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  br label %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit

_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit: ; preds = %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i, %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i
  %.pn.i = phi ptr [ %i.r, %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i ], [ %i.t, %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i ]
  %i.u = icmp ugt i64 %i.e, %i.o
  br i1 %i.u, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.f:                                             ; preds = %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.125, i64 noundef %i.e, i64 noundef %i.o) #20
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit
  %.sroa.3.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 %.0.i
  %i.v = sub nuw i64 %i.o, %i.e                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i, i64 %i.e
  %i.x = load i32, ptr %i.a, align 8              ; 2 uses
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %_ZNK4absl13cord_internal18CordRepBtreeReader5btreeEv.exit.i, label %_ZNK4absl13cord_internal18CordRepBtreeReader5btreeEv.exit.thread.i

_ZNK4absl13cord_internal18CordRepBtreeReader5btreeEv.exit.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = zext nneg i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZNK4absl13cord_internal18CordRepBtreeReader5btreeEv.exit.thread.i, label %_ZNK4absl13cord_internal18CordRepBtreeReader6lengthEv.exit

_ZNK4absl13cord_internal18CordRepBtreeReader5btreeEv.exit.thread.i: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReader5btreeEv.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.101, i32 noundef 163, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal18CordRepBtreeReader6lengthEv) #20
  unreachable

_ZNK4absl13cord_internal18CordRepBtreeReader6lengthEv.exit: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReader5btreeEv.exit.i
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.v, %1
  %i.af = sub i64 %i.ad, %i.ae
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNK4absl13cord_internal18CordRepBtreeReader6lengthEv.exit
  %storemerge = phi i64 [ %i.af, %_ZNK4absl13cord_internal18CordRepBtreeReader6lengthEv.exit ], [ 0, %bb.a ]
  %.sroa.05.0 = phi i64 [ %i.v, %_ZNK4absl13cord_internal18CordRepBtreeReader6lengthEv.exit ], [ 0, %bb.a ]
  %.sroa.46.0 = phi ptr [ %i.w, %_ZNK4absl13cord_internal18CordRepBtreeReader6lengthEv.exit ], [ null, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.05.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.46.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN4absl13cord_internal21CordRepBtreeNavigator4SeekEm(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 3 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %_ZNK4absl13cord_internal21CordRepBtreeNavigator5btreeEv.exit, label %_ZNK4absl13cord_internal21CordRepBtreeNavigator5btreeEv.exit.thread

_ZNK4absl13cord_internal21CordRepBtreeNavigator5btreeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = zext nneg i32 %i.a to i64                ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZNK4absl13cord_internal21CordRepBtreeNavigator5btreeEv.exit.thread, label %bb.b

_ZNK4absl13cord_internal21CordRepBtreeNavigator5btreeEv.exit.thread: ; preds = %bb.a, %_ZNK4absl13cord_internal21CordRepBtreeNavigator5btreeEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.102, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal21CordRepBtreeNavigator4SeekEm) #20
  unreachable

bb.b:                                             ; preds = %_ZNK4absl13cord_internal21CordRepBtreeNavigator5btreeEv.exit
  %i.g = load i64, ptr %i.f, align 8
  %.not22 = icmp ult i64 %1, %i.g
  br i1 %.not22, label %bb.c, label %bb.m, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.i = load i8, ptr %i.h, align 2
  %i.j = zext i8 %i.i to i64                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.not10.i = icmp ult i64 %1, %i.n
  br i1 %.not10.i, label %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.o = phi i64 [ %i.t, %.lr.ph.i ], [ %i.n, %bb.c ]
  %.012.i = phi i64 [ %i.p, %.lr.ph.i ], [ %i.j, %bb.c ]
  %.0711.i = phi i64 [ %i.q, %.lr.ph.i ], [ %1, %bb.c ]
  %i.p = add i64 %.012.i, 1                       ; 3 uses
  %i.q = sub nuw i64 %.0711.i, %i.o               ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %.not.i = icmp ult i64 %i.q, %i.t
  br i1 %.not.i, label %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit, label %.lr.ph.i, !llvm.loop !143

_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit: ; preds = %.lr.ph.i, %bb.c
  %.07.lcssa.i = phi i64 [ %1, %bb.c ], [ %i.q, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %i.j, %bb.c ], [ %i.p, %.lr.ph.i ] ; 3 uses
  %i.u = trunc i64 %.0.lcssa.i to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.d
  store i8 %i.u, ptr %i.w, align 1
  %.not59 = icmp eq i32 %i.a, 0
  br i1 %.not59, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit33
  %indvars.iv = phi i64 [ %i.x, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit33 ], [ %i.d, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit ] ; 2 uses
  %.sroa.01.056 = phi i64 [ %.0.lcssa.i30, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit33 ], [ %.0.lcssa.i, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit ] ; 3 uses
  %.07.lcssa.i.pn55 = phi i64 [ %.07.lcssa.i29, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit33 ], [ %.07.lcssa.i, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit ] ; 4 uses
  %.054 = phi ptr [ %i.ah, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit33 ], [ %i.f, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit ] ; 3 uses
  %i.x = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.054, i64 14
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i64
  %.not.i23 = icmp ult i64 %.sroa.01.056, %i.aa
  br i1 %.not.i23, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.83, i32 noundef 616, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #20
  unreachable

bb.e:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.054, i64 15
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = icmp ult i64 %.sroa.01.056, %i.ad
  br i1 %i.ae, label %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.83, i32 noundef 617, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #20
  unreachable

_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.054, i64 16
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.01.056
  %i.ah = load ptr, ptr %i.ag, align 8            ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = icmp eq i8 %i.aj, 3
  br i1 %i.ak, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit:     ; preds = %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.x
  store ptr %i.ah, ptr %i.al, align 8
  %i.am = load i64, ptr %i.ah, align 8
  %i.an = icmp ult i64 %.07.lcssa.i.pn55, %i.am
  br i1 %i.an, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.83, i32 noundef 809, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree7IndexOfEm) #20
  unreachable

bb.i:                                             ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  %i.ap = load i8, ptr %i.ao, align 2
  %i.aq = zext i8 %i.ap to i64                    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %.not10.i24 = icmp ult i64 %.07.lcssa.i.pn55, %i.au
  br i1 %.not10.i24, label %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit33, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %bb.i, %.lr.ph.i25
  %i.av = phi i64 [ %i.ba, %.lr.ph.i25 ], [ %i.au, %bb.i ]
  %.012.i26 = phi i64 [ %i.aw, %.lr.ph.i25 ], [ %i.aq, %bb.i ]
  %.0711.i27 = phi i64 [ %i.ax, %.lr.ph.i25 ], [ %.07.lcssa.i.pn55, %bb.i ]
  %i.aw = add i64 %.012.i26, 1                    ; 3 uses
  %i.ax = sub nuw i64 %.0711.i27, %i.av           ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aw
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %.not.i28 = icmp ult i64 %i.ax, %i.ba
  br i1 %.not.i28, label %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit33, label %.lr.ph.i25, !llvm.loop !143

_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit33: ; preds = %.lr.ph.i25, %bb.i
  %.07.lcssa.i29 = phi i64 [ %.07.lcssa.i.pn55, %bb.i ], [ %i.ax, %.lr.ph.i25 ] ; 2 uses
  %.0.lcssa.i30 = phi i64 [ %i.aq, %bb.i ], [ %i.aw, %.lr.ph.i25 ] ; 3 uses
  %i.bb = trunc i64 %.0.lcssa.i30 to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  store i8 %i.bb, ptr %i.bc, align 1
  %2 = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %2, label %.lr.ph, label %._crit_edge, !llvm.loop !144

._crit_edge:                                      ; preds = %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit33, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit
  %.0.lcssa = phi ptr [ %i.f, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit ], [ %i.ah, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit33 ] ; 3 uses
  %.07.lcssa.i.pn.lcssa = phi i64 [ %.07.lcssa.i, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit ], [ %.07.lcssa.i29, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit33 ]
  %.sroa.01.0.lcssa = phi i64 [ %.0.lcssa.i, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit ], [ %.0.lcssa.i30, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit33 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 14
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i64
  %.not.i34 = icmp ult i64 %.sroa.01.0.lcssa, %i.bf
  br i1 %.not.i34, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.83, i32 noundef 616, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #20
  unreachable

bb.k:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 15
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i64
  %i.bj = icmp ult i64 %.sroa.01.0.lcssa, %i.bi
  br i1 %i.bj, label %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit35, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.83, i32 noundef 617, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #20
  unreachable

_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit35: ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.sroa.01.0.lcssa
  %i.bm = load ptr, ptr %i.bl, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit35
  %.sroa.018.0 = phi ptr [ %i.bm, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit35 ], [ null, %bb.b ]
  %.sroa.3.0 = phi i64 [ %.07.lcssa.i.pn.lcssa, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit35 ], [ 0, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.018.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.65", align 8 ; 7 uses
  %3 = alloca %"struct.std::_Deque_iterator.65", align 8 ; 7 uses
  %4 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 3 uses
  %6 = alloca %"struct.std::_Deque_iterator.65", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.65", align 8 ; 7 uses
  %8 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %9 = alloca %"struct.std::_Deque_iterator", align 16 ; 6 uses
  %10 = alloca %"struct.std::_Deque_iterator", align 16 ; 3 uses
  %11 = alloca %"struct.std::_Deque_iterator.65", align 8 ; 5 uses
  %12 = alloca %"struct.std::_Deque_iterator.65", align 16 ; 3 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 4
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = add nsw i64 %i.u, %i.ab                 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = icmp ne ptr %i.ag, null
  %.neg.i.i12 = sext i1 %i.an to i64
  %i.ao = add nsw i64 %i.am, %.neg.i.i12
  %i.ap = shl nsw i64 %i.ao, 5
  %i.aq = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4
  %i.ax = add nsw i64 %i.ap, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load ptr, ptr %i.ay, align 8            ; 4 uses
  %i.ba = load ptr, ptr %i.ae, align 8            ; 4 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 4
  %i.bf = add nsw i64 %i.ax, %i.be
  %.not11 = icmp ult i64 %i.ac, %i.bf
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !165 ; 4 uses
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !166
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !168
  store ptr %i.ba, ptr %6, align 8, !noalias !169
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bh, ptr %i.bm, align 8, !noalias !169
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.az, ptr %i.bn, align 8, !noalias !169
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.ai, ptr %i.bo, align 8, !noalias !169
  store ptr %i.aq, ptr %7, align 8, !noalias !169
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.as, ptr %i.bp, align 8, !noalias !169
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.bj, ptr %i.bq, align 8, !noalias !169
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.ag, ptr %i.br, align 8, !noalias !169
  store ptr %i.x, ptr %8, align 8, !noalias !169
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bl, ptr %i.bs, align 8, !noalias !169
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.w, ptr %i.bt, align 8, !noalias !169
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.f, ptr %i.bu, align 8, !noalias !169
  call void @_ZSt15__copy_move_ditILb0EN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_St15_Deque_iteratorIS3_RS3_PS3_EET3_S7_IT0_T1_T2_ESF_SB_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %9, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8), !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !168
  %i.bv = load <2 x ptr>, ptr %9, align 16, !noalias !170
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !170 ; 2 uses
  %i.bz = load <2 x ptr>, ptr %i.bw, align 16, !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !167
  %i.ca = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cb = icmp ult ptr %i.by, %i.ca
  br i1 %i.cb, label %.lr.ph.i.i, label %_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE15_M_erase_at_endESt15_Deque_iteratorIS3_RS3_PS3_E.exit

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.pn.i = phi ptr [ %.06.i.i, %.lr.ph.i.i ], [ %i.by, %bb.c ]
  %.06.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i, i64 8 ; 3 uses
  %i.cc = load ptr, ptr %.06.i.i, align 8
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef 512) #23
  %i.cd = icmp ult ptr %.06.i.i, %i.ca
  br i1 %i.cd, label %.lr.ph.i.i, label %_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE15_M_erase_at_endESt15_Deque_iteratorIS3_RS3_PS3_E.exit, !llvm.loop !1

_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE15_M_erase_at_endESt15_Deque_iteratorIS3_RS3_PS3_E.exit: ; preds = %.lr.ph.i.i, %bb.c
  store <2 x ptr> %i.bv, ptr %i.a, align 8
  %.sroa.346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x ptr> %i.bz, ptr %.sroa.346.0..sroa_idx, align 8
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.ce = ptrtoint ptr %i.bh to i64
  %i.cf = sub i64 %i.bc, %i.ce
  %i.cg = ashr exact i64 %i.cf, 4
  %i.ch = add nsw i64 %i.cg, %i.ac                ; 5 uses
  %i.ci = icmp sgt i64 %i.ch, -1
  br i1 %i.ci, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.cj = icmp samesign ult i64 %i.ch, 32
  br i1 %i.cj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ck = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %i.ac
  br label %_ZStplRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_El.exit

bb.g:                                             ; preds = %bb.e
  %i.cl = lshr i64 %i.ch, 5
  br label %bb.i
end_hunk_0

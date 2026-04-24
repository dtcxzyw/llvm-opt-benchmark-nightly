inline.NumInlined: 240
inline.NumDeleted: 86
begin_hunk_0_@_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12FiveToTheNthEi:bb.a
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12FiveToTheNthEi:bb.a
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit

bb.c:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i32 %.sroa.speculated, 1     ; 3 uses
  %i.k = add nsw i32 %.sroa.speculated, -1
  %i.l = mul nuw nsw i32 %i.k, %.sroa.speculated
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2025051216strings_internal12_GLOBAL__N_118kLargePowersOfFiveE, i64 %i.m
  %i.o = load i32, ptr %0, align 4, !tbaa !7      ; 2 uses
  %i.p = add nsw i32 %i.o, %i.j                   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 1
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12FiveToTheNthEi:bb.a
select.unfold.i:                                  ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit, %select.unfold.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit ], [ %i.t, %select.unfold.preheader.i ] ; 13 uses
  %i.u = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.r) ; 3 uses
  %i.v = sub i32 %i.u, %.sroa.speculated.i        ; 2 uses
  %i.w = icmp sgt i32 %.sroa.speculated.i, -1
  %i.x = icmp slt i32 %i.v, %i.j
  %i.y = and i1 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i12.a, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.thread.i

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.thread.i: ; preds = %select.unfold.i
  %i.z = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 0, ptr %i.z, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit

.lr.ph.i12.a:                                     ; preds = %select.unfold.i
  %i.aa = zext nneg i32 %.sroa.speculated.i to i64
  %i.ab = zext i32 %i.v to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i12.a
  %indvars.iv37.i = phi i64 [ %i.ab, %.lr.ph.i12.a ], [ %indvars.iv.next38.i.a, %bb.d ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.aa, %.lr.ph.i12.a ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.01933.i = phi i64 [ 0, %.lr.ph.i12.a ], [ %i.al, %bb.d ]
  %.02032.i = phi i64 [ 0, %.lr.ph.i12.a ], [ %i.am, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv37.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw i64 %i.ah, %i.ae
  %i.aj = add nuw i64 %i.ai, %.02032.i            ; 3 uses
  %i.ak = lshr i64 %i.aj, 32
  %i.al = add i64 %i.ak, %.01933.i                ; 4 uses
  %i.am = and i64 %i.aj, 4294967295               ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %indvars.iv.next38.i.a = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %i.an = icmp ne i64 %indvars.iv.i, 0
  %i.ao = trunc nuw i64 %indvars.iv.next38.i.a to i32
  %i.ap = icmp sgt i32 %i.j, %i.ao
  %i.aq = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %i.aq, label %bb.d, label %._crit_edge.i13, !llvm.loop !33

._crit_edge.i13:                                  ; preds = %bb.d
  %i.ar = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.as = icmp ne i64 %i.al, 0
  %i.at = icmp slt i64 %indvars.iv, 3
  %or.cond.i.i = and i1 %i.at, %i.as
  br i1 %or.cond.i.i, label %bb.e, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i

bb.e:                                             ; preds = %._crit_edge.i13
  %i.au = lshr i64 %i.al, 32                      ; 2 uses
  %i.av = trunc nuw i64 %i.au to i32              ; 2 uses
  %i.aw = trunc i64 %i.al to i32                  ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ar ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = add i32 %i.ay, %i.aw                    ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12FiveToTheNthEi:bb.a
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i: ; preds = %.sink.split.i.i, %._crit_edge.i13
  %i.cf = trunc i64 %i.aj to i32
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !3
  %.not.i14 = icmp eq i64 %i.am, 0
  %i.ch = load i32, ptr %0, align 4
  %i.ci = sext i32 %i.ch to i64
  %.not23.i = icmp slt i64 %indvars.iv, %i.ci
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12FiveToTheNthEi:bb.a
  %.neg = mul nsw i32 %.sroa.speculated, -27
  %i.ck = add nsw i32 %.neg, %.023                ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, 26
  br i1 %i.cl, label %bb.b, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit, %bb.a
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.ck, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit ] ; 3 uses
end_hunk_4
begin_hunk_5_@_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi4EE8ToStringB5cxx11Ev:bb.a
bb.a:
  %2 = alloca %"class.absl::lts_20250512::strings_internal::BigUnsigned", align 4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.b, align 8, !tbaa !38
  store i8 0, ptr %i.a, align 8, !tbaa !9
  %i.c = load i32, ptr %2, align 4, !tbaa !7      ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
end_hunk_5
begin_hunk_6_@_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi4EE8ToStringB5cxx11Ev:bb.a
  store i32 %i.m, ptr %i.h, align 4, !tbaa !3
  %i.n = urem i64 %i.k, 10                        ; 2 uses
  %i.o = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.o, label %bb.b, label %thread-pre-split.i, !llvm.loop !40

thread-pre-split.i:                               ; preds = %bb.b
  %.pr.pre.i = load i32, ptr %2, align 4, !tbaa !7 ; 4 uses
end_hunk_6
begin_hunk_7_@_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi4EE8ToStringB5cxx11Ev:bb.a
  %i.u = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit, !llvm.loop !41

.lr.ph:                                           ; preds = %.lr.ph13.i.preheader, %.lr.ph13.i
  %indvars.iv23 = phi i64 [ %indvars.iv.next, %.lr.ph13.i ], [ %i.q, %.lr.ph13.i.preheader ] ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi4EE8ToStringB5cxx11Ev:bb.a
  %i.x = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  store i32 %i.x, ptr %2, align 4, !tbaa !7
  %i.y = icmp samesign ugt i64 %indvars.iv23, 1
  br i1 %i.y, label %.lr.ph13.i, label %._ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit.loopexit_crit_edge, !llvm.loop !41

._ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit, !llvm.loop !41

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit: ; preds = %.lr.ph13.i, %.lr.ph13.i.preheader, %._ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit.loopexit_crit_edge, %thread-pre-split.i
  %i.z = phi i32 [ %.pr.pre.i, %thread-pre-split.i ], [ 0, %._ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit.loopexit_crit_edge ], [ %.pr.pre.i, %.lr.ph13.i.preheader ], [ %i.x, %.lr.ph13.i ] ; 2 uses
  %i.aa = trunc nuw nsw i64 %i.n to i8
  %i.ab = or disjoint i8 %i.aa, 48
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !38  ; 4 uses
  %i.ad = add i64 %i.ac, 1                        ; 3 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.a                 ; 2 uses
  br i1 %i.af, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

end_hunk_8
begin_hunk_9_@_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi4EE8ToStringB5cxx11Ev:bb.a
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc
  %i.ak = phi ptr [ %.pre.i, %.noexc ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  store i8 %i.ab, ptr %i.al, align 1, !tbaa !9
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !38
  %i.am = load ptr, ptr %0, align 8, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ad
  store i8 0, ptr %i.an, align 1, !tbaa !9
  %i.ao = icmp sgt i32 %i.z, 0
end_hunk_9
begin_hunk_10_@_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi4EE8ToStringB5cxx11Ev:bb.a
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %.pre = load i64, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %.pre13.pre = load ptr, ptr %0, align 8, !tbaa !42 ; 3 uses
  %i.ar = icmp eq i64 %.pre, 0
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7, label %bb.h

end_hunk_10
begin_hunk_11_@_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi4EE8ToStringB5cxx11Ev:bb.a
          to label %.noexc9 unwind label %bb.e

.noexc9:                                          ; preds = %bb.g
  %.pre.i8 = load ptr, ptr %0, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit10: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7, %.noexc9
  %i.aw = phi ptr [ %.pre.i8, %.noexc9 ], [ %.pre13.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7 ], [ %i.a, %bb.a ]
  store i8 48, ptr %i.aw, align 1, !tbaa !9
  store i64 1, ptr %i.b, align 8, !tbaa !38
  %i.ax = load ptr, ptr %0, align 8, !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 0, ptr %i.ay, align 1, !tbaa !9
  %.pre12 = load ptr, ptr %0, align 8, !tbaa !42
  %.pre14 = load i64, ptr %i.b, align 8, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit10, %._crit_edge
end_hunk_11
begin_hunk_12_@_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi4EE8ToStringB5cxx11Ev:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 1 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -1 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %.sroa.0.0.i.i
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit, !llvm.loop !43

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
end_hunk_12
begin_hunk_13_@_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi4EE8ToStringB5cxx11Ev:bb.a

bb.i:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.ap, %bb.e ]
  %i.bh = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii:bb.a
  %i.w = trunc nuw i64 %indvars.iv.next38 to i32
  %i.x = icmp sgt i32 %3, %i.w
  %i.y = select i1 %i.v, i1 %i.x, i1 false
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.b
  %i.z = add nsw i32 %4, 1                        ; 2 uses
end_hunk_14
begin_hunk_15_@_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE8ToStringB5cxx11Ev:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(340) %2, ptr noundef nonnull align 4 dereferenceable(340) %1, i64 340, i1 false), !tbaa.struct !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.b, align 8, !tbaa !38
  store i8 0, ptr %i.a, align 8, !tbaa !9
  %i.c = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
end_hunk_15
begin_hunk_16_@_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE8ToStringB5cxx11Ev:bb.a
  %i.z = phi i32 [ %.pr.pre.i, %thread-pre-split.i ], [ 0, %._ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE6DivModILj10EEEjv.exit.loopexit_crit_edge ], [ %.pr.pre.i, %.lr.ph13.i.preheader ], [ %i.x, %.lr.ph13.i ] ; 2 uses
  %i.aa = trunc nuw nsw i64 %i.n to i8
  %i.ab = or disjoint i8 %i.aa, 48
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !38  ; 4 uses
  %i.ad = add i64 %i.ac, 1                        ; 3 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.a                 ; 2 uses
  br i1 %i.af, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

end_hunk_16
begin_hunk_17_@_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE8ToStringB5cxx11Ev:bb.a
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc
  %i.ak = phi ptr [ %.pre.i, %.noexc ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  store i8 %i.ab, ptr %i.al, align 1, !tbaa !9
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !38
  %i.am = load ptr, ptr %0, align 8, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ad
  store i8 0, ptr %i.an, align 1, !tbaa !9
  %i.ao = icmp sgt i32 %i.z, 0
end_hunk_17
begin_hunk_18_@_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE8ToStringB5cxx11Ev:bb.a
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %.pre = load i64, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %.pre13.pre = load ptr, ptr %0, align 8, !tbaa !42 ; 3 uses
  %i.ar = icmp eq i64 %.pre, 0
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7, label %bb.h

end_hunk_18
begin_hunk_19_@_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE8ToStringB5cxx11Ev:bb.a
          to label %.noexc9 unwind label %bb.e

.noexc9:                                          ; preds = %bb.g
  %.pre.i8 = load ptr, ptr %0, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit10: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7, %.noexc9
  %i.aw = phi ptr [ %.pre.i8, %.noexc9 ], [ %.pre13.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7 ], [ %i.a, %bb.a ]
  store i8 48, ptr %i.aw, align 1, !tbaa !9
  store i64 1, ptr %i.b, align 8, !tbaa !38
  %i.ax = load ptr, ptr %0, align 8, !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 0, ptr %i.ay, align 1, !tbaa !9
  %.pre12 = load ptr, ptr %0, align 8, !tbaa !42
  %.pre14 = load i64, ptr %i.b, align 8, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit10, %._crit_edge
end_hunk_19
begin_hunk_20_@_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE8ToStringB5cxx11Ev:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 1 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -1 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %.sroa.0.0.i.i
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit, !llvm.loop !43

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
end_hunk_20
begin_hunk_21_@_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE8ToStringB5cxx11Ev:bb.a

bb.i:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.ap, %bb.e ]
  %i.bh = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_21
begin_hunk_22_@llvm.umax.i32
!31 = !{!23, !4, i64 12}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = !{i64 0, i64 4, !3, i64 4, i64 16, !9}
!36 = !{!37, !26, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!38 = !{!39, !24, i64 8}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !37, i64 0, !24, i64 8, !5, i64 16}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = !{!39, !26, i64 0}
!43 = distinct !{!43, !11}
!44 = !{!45, !4, i64 0}
!45 = !{!"_ZTSN4absl12lts_2025051216strings_internal11BigUnsignedILi84EEE", !4, i64 0, !5, i64 4}
end_hunk_22

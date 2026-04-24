inline.NumInlined: 259
inline.NumDeleted: 95
begin_hunk_0_@_ZN4absl16strings_internal11BigUnsignedILi4EE12FiveToTheNthEi:bb.a
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit
end_hunk_0
begin_hunk_1_@_ZN4absl16strings_internal11BigUnsignedILi4EE12FiveToTheNthEi:bb.a
  br label %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit

bb.c:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i32 %.sroa.speculated, 1     ; 3 uses
  %i.k = add nsw i32 %.sroa.speculated, -1
  %i.l = mul nuw nsw i32 %i.k, %.sroa.speculated
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl16strings_internal12_GLOBAL__N_118kLargePowersOfFiveE, i64 %i.m
  %i.o = load i32, ptr %0, align 4                ; 2 uses
  %i.p = add nsw i32 %i.o, %i.j                   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 1
end_hunk_1
begin_hunk_2_@_ZN4absl16strings_internal11BigUnsignedILi4EE12FiveToTheNthEi:bb.a
select.unfold.i:                                  ; preds = %_ZN4absl16strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit, %select.unfold.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4absl16strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit ], [ %i.t, %select.unfold.preheader.i ] ; 13 uses
  %i.u = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.r) ; 3 uses
  %i.v = sub i32 %i.u, %.sroa.speculated.i        ; 2 uses
  %i.w = icmp sgt i32 %.sroa.speculated.i, -1
  %i.x = icmp slt i32 %i.v, %i.j
  %i.y = and i1 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i12.a, label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.thread.i

_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.thread.i: ; preds = %select.unfold.i
  %i.z = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 0, ptr %i.z, align 4
  br label %_ZN4absl16strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit

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
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv37.i
  %i.ag = load i32, ptr %i.af, align 4
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
  br i1 %i.aq, label %bb.d, label %._crit_edge.i13, !llvm.loop !18

._crit_edge.i13:                                  ; preds = %bb.d
  %i.ar = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.as = icmp ne i64 %i.al, 0
  %i.at = icmp slt i64 %indvars.iv, 3
  %or.cond.i.i = and i1 %i.at, %i.as
  br i1 %or.cond.i.i, label %bb.e, label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i

bb.e:                                             ; preds = %._crit_edge.i13
  %i.au = lshr i64 %i.al, 32                      ; 2 uses
  %i.av = trunc nuw i64 %i.au to i32              ; 2 uses
  %i.aw = trunc i64 %i.al to i32                  ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ar ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = add i32 %i.ay, %i.aw                    ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4absl16strings_internal11BigUnsignedILi4EE12FiveToTheNthEi:bb.a
  br label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i

_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i: ; preds = %.sink.split.i.i, %._crit_edge.i13
  %i.cf = trunc i64 %i.aj to i32
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.cf, ptr %i.cg, align 4
  %.not.i14 = icmp eq i64 %i.am, 0
  %i.ch = load i32, ptr %0, align 4
  %i.ci = sext i32 %i.ch to i64
  %.not23.i = icmp slt i64 %indvars.iv, %i.ci
end_hunk_3
begin_hunk_4_@_ZN4absl16strings_internal11BigUnsignedILi4EE12FiveToTheNthEi:bb.a
  %.neg = mul nsw i32 %.sroa.speculated, -27
  %i.ck = add nsw i32 %.neg, %.023                ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, 26
  br i1 %i.cl, label %bb.b, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit, %bb.a
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.ck, %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit ] ; 3 uses
end_hunk_4
begin_hunk_5_@_ZNK4absl16strings_internal11BigUnsignedILi4EE8ToStringB5cxx11Ev:bb.a
  store i32 %i.m, ptr %i.h, align 4
  %i.n = urem i64 %i.k, 10                        ; 2 uses
  %i.o = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.o, label %bb.b, label %thread-pre-split.i, !llvm.loop !20

thread-pre-split.i:                               ; preds = %bb.b
  %.pr.pre.i = load i32, ptr %2, align 4          ; 4 uses
end_hunk_5
begin_hunk_6_@_ZNK4absl16strings_internal11BigUnsignedILi4EE8ToStringB5cxx11Ev:bb.a
  %i.u = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %_ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit, !llvm.loop !21

.lr.ph:                                           ; preds = %.lr.ph13.i.preheader, %.lr.ph13.i
  %indvars.iv16 = phi i64 [ %indvars.iv.next, %.lr.ph13.i ], [ %i.q, %.lr.ph13.i.preheader ] ; 2 uses
end_hunk_6
begin_hunk_7_@_ZNK4absl16strings_internal11BigUnsignedILi4EE8ToStringB5cxx11Ev:bb.a
  %i.x = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  store i32 %i.x, ptr %2, align 4
  %i.y = icmp samesign ugt i64 %indvars.iv16, 1
  br i1 %i.y, label %.lr.ph13.i, label %._ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit.loopexit_crit_edge, !llvm.loop !21

._ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit, !llvm.loop !21

_ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit: ; preds = %.lr.ph13.i, %.lr.ph13.i.preheader, %._ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit.loopexit_crit_edge, %thread-pre-split.i
  %i.z = phi i32 [ %.pr.pre.i, %thread-pre-split.i ], [ 0, %._ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit.loopexit_crit_edge ], [ %.pr.pre.i, %.lr.ph13.i.preheader ], [ %i.x, %.lr.ph13.i ] ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNK4absl16strings_internal11BigUnsignedILi4EE8ToStringB5cxx11Ev:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ad
  store i8 0, ptr %i.an, align 1
  %i.ao = icmp sgt i32 %i.z, 0
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
end_hunk_8
begin_hunk_9_@_ZNK4absl16strings_internal11BigUnsignedILi4EE8ToStringB5cxx11Ev:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i, i64 1 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -1 ; 2 uses
  %.not.i.i = icmp ult ptr %i.bc, %.sroa.0.0.i.i
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit, !llvm.loop !23

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
end_hunk_9
begin_hunk_10_@_ZN4absl16strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii:bb.a
  %i.w = trunc nuw i64 %indvars.iv.next38 to i32
  %i.x = icmp sgt i32 %3, %i.w
  %i.y = select i1 %i.v, i1 %i.x, i1 false
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.b
  %i.z = add nsw i32 %4, 1                        ; 2 uses
end_hunk_10
begin_hunk_11_@_ZNK4absl16strings_internal11BigUnsignedILi84EE8ToStringB5cxx11Ev:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i, i64 1 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -1 ; 2 uses
  %.not.i.i = icmp ult ptr %i.bc, %.sroa.0.0.i.i
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit, !llvm.loop !23

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
end_hunk_11

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sls_arith_base?download=true
inline.NumInlined: 7668
inline.NumDeleted: 1628
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZNK17arith_recognizers8is_powerEPK4exprRPS0_S4_:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK17arith_recognizers9is_power0EPK4exprRPS0_S4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 65535
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNK17arith_recognizers9is_power0EPK4expr.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !218
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNK17arith_recognizers9is_power0EPK4expr.exit.thread, label %_ZNK17arith_recognizers9is_power0EPK4expr.exit

_ZNK17arith_recognizers9is_power0EPK4expr.exit:   ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  %i.j = icmp eq i32 %i.i, 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 23
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %_ZNK17arith_recognizers9is_power0EPK4expr.exit.thread

bb.c:                                             ; preds = %_ZNK17arith_recognizers9is_power0EPK4expr.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !223
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %bb.d, label %_ZNK17arith_recognizers9is_power0EPK4expr.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !224
  store ptr %i.s, ptr %2, align 8, !tbaa !224
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !224
  store ptr %i.u, ptr %3, align 8, !tbaa !224
  br label %_ZNK17arith_recognizers9is_power0EPK4expr.exit.thread

_ZNK17arith_recognizers9is_power0EPK4expr.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK17arith_recognizers9is_power0EPK4expr.exit, %bb.c, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %_ZNK17arith_recognizers9is_power0EPK4expr.exit ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK17arith_recognizers6is_absEPK4exprRPS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 65535
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNK17arith_recognizers6is_absEPK4expr.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !218
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNK17arith_recognizers6is_absEPK4expr.exit.thread, label %_ZNK17arith_recognizers6is_absEPK4expr.exit

_ZNK17arith_recognizers6is_absEPK4expr.exit:      ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  %i.j = icmp eq i32 %i.i, 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 21
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %_ZNK17arith_recognizers6is_absEPK4expr.exit.thread

bb.c:                                             ; preds = %_ZNK17arith_recognizers6is_absEPK4expr.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !223
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %_ZNK17arith_recognizers6is_absEPK4expr.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !224
  store ptr %i.s, ptr %2, align 8, !tbaa !224
  br label %_ZNK17arith_recognizers6is_absEPK4expr.exit.thread

_ZNK17arith_recognizers6is_absEPK4expr.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK17arith_recognizers6is_absEPK4expr.exit, %bb.c, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %_ZNK17arith_recognizers6is_absEPK4expr.exit ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK17arith_recognizers9is_to_intEPK4exprRPS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 65535
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNK17arith_recognizers9is_to_intEPK4expr.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !218
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNK17arith_recognizers9is_to_intEPK4expr.exit.thread, label %_ZNK17arith_recognizers9is_to_intEPK4expr.exit

_ZNK17arith_recognizers9is_to_intEPK4expr.exit:   ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  %i.j = icmp eq i32 %i.i, 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 19
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %_ZNK17arith_recognizers9is_to_intEPK4expr.exit.thread

bb.c:                                             ; preds = %_ZNK17arith_recognizers9is_to_intEPK4expr.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !223
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %_ZNK17arith_recognizers9is_to_intEPK4expr.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !224
  store ptr %i.s, ptr %2, align 8, !tbaa !224
  br label %_ZNK17arith_recognizers9is_to_intEPK4expr.exit.thread

_ZNK17arith_recognizers9is_to_intEPK4expr.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK17arith_recognizers9is_to_intEPK4expr.exit, %bb.c, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %_ZNK17arith_recognizers9is_to_intEPK4expr.exit ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK17arith_recognizers10is_to_realEPK4exprRPS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 65535
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNK17arith_recognizers10is_to_realEPK4expr.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !218
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNK17arith_recognizers10is_to_realEPK4expr.exit.thread, label %_ZNK17arith_recognizers10is_to_realEPK4expr.exit

_ZNK17arith_recognizers10is_to_realEPK4expr.exit: ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  %i.j = icmp eq i32 %i.i, 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 18
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %_ZNK17arith_recognizers10is_to_realEPK4expr.exit.thread

bb.c:                                             ; preds = %_ZNK17arith_recognizers10is_to_realEPK4expr.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !223
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %_ZNK17arith_recognizers10is_to_realEPK4expr.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !224
  store ptr %i.s, ptr %2, align 8, !tbaa !224
  br label %_ZNK17arith_recognizers10is_to_realEPK4expr.exit.thread

_ZNK17arith_recognizers10is_to_realEPK4expr.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK17arith_recognizers10is_to_realEPK4expr.exit, %bb.c, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %_ZNK17arith_recognizers10is_to_realEPK4expr.exit ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(49) ptr @_ZN3sls10arith_baseI13checked_int64ILb1EEE8new_ineqENS3_9ineq_kindERKS2_(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 56) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 1, ptr %i.c, align 8, !tbaa !318
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %2, align 8, !tbaa !17
  store i64 %i.e, ptr %i.d, align 8, !tbaa !17
  store i32 %1, ptr %i.b, align 8, !tbaa !47
  ret ptr %i.a
}

declare noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN3sls10arith_baseI13checked_int64ILb1EEE9init_ineqEjRNS3_4ineqE(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.checked_int64, align 8       ; 5 uses
  %4 = alloca %class.checked_int64, align 8       ; 4 uses
  %5 = alloca %"struct.std::pair.70", align 8     ; 6 uses
  %6 = alloca %class.vector.69, align 8           ; 5 uses
  %7 = alloca %"struct.std::pair.70", align 8     ; 6 uses
  %8 = alloca %class.vector.69, align 8           ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !57     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !58
  %i.e = zext i32 %i.d to i64
  br label %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit

_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0.i.i
  tail call void @_ZSt13__stable_sortIPSt4pairI13checked_int64ILb1EEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3sls10arith_baseIS2_E9init_ineqEjRNSA_4ineqEEUlRKT_RKT0_E_EEEvSD_SD_SG_(ptr noundef %i.a, ptr noundef %i.f)
  %i.g = load ptr, ptr %2, align 8, !tbaa !57     ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE6shrinkEj.exit.thread, label %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit.thread.lr.ph

_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit.thread.lr.ph: ; preds = %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !58   ; 2 uses
  %.not311 = icmp eq i32 %i.j, 0
  br i1 %.not311, label %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE6shrinkEj.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit.thread.lr.ph
  %i.k = zext i32 %i.j to i64
  br label %.lr.ph

_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE6shrinkEj.exit: ; preds = %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit.thread, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit.thread.lr.ph
  %.0137.lcssa278 = phi i32 [ 0, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit.thread.lr.ph ], [ %.1138, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit.thread ] ; 7 uses
  store i32 %.0137.lcssa278, ptr %i.i, align 4, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.i, label %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.thread.i

_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE6shrinkEj.exit.thread: ; preds = %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %_ZN6vectorI7svectorISt4pairIjjEjELb1EjE7reserveEj.exit

_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.i: ; preds = %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE6shrinkEj.exit
  %.not.i146 = icmp eq i32 %.0137.lcssa278, 0
  br i1 %.not.i146, label %_ZN6vectorI7svectorISt4pairIjjEjELb1EjE7reserveEj.exit, label %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.i.i.preheader

_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.thread.i: ; preds = %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE6shrinkEj.exit
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !58   ; 2 uses
  %i.r = icmp ugt i32 %.0137.lcssa278, %i.q
  br i1 %i.r, label %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.i.i.preheader, label %_ZN6vectorI7svectorISt4pairIjjEjELb1EjE7reserveEj.exit

_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.i.i.preheader: ; preds = %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.i, %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.m, %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.i ]
  %.0.i16.i.i.ph = phi i32 [ %i.q, %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.i ] ; 2 uses
  br label %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.i.i

_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.i.i: ; preds = %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.i.i.preheader, %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE8capacityEv.exit.thread.i.i
  %i.s = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE8capacityEv.exit.thread.i.i ], [ %.ph, %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.i.i.preheader ] ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE8capacityEv.exit.i.i

_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE8capacityEv.exit.i.i: ; preds = %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.i.i
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !58
  %i.w = icmp ugt i32 %.0137.lcssa278, %i.v
  br i1 %i.w, label %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE8capacityEv.exit.thread.i.i, label %bb.c

_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE8capacityEv.exit.i.i, %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.i.i
  tail call void @_ZN6vectorI7svectorISt4pairIjjEjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %.pr.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !59
  br label %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.i.i, !llvm.loop !361

bb.c:                                             ; preds = %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE8capacityEv.exit.i.i
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 -4
  store i32 %.0137.lcssa278, ptr %i.x, align 4, !tbaa !58
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %.0137.lcssa278
  br i1 %.not1218.i.i, label %_ZN6vectorI7svectorISt4pairIjjEjELb1EjE7reserveEj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.y = zext i32 %.0137.lcssa278 to i64
  %i.z = zext i32 %.0.i16.i.i.ph to i64           ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.s, i64 %i.z
  %i.ab = sub nsw i64 %i.y, %i.z
  %i.ac = shl nsw i64 %i.ab, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ac, i1 false), !tbaa !60
  br label %_ZN6vectorI7svectorISt4pairIjjEjELb1EjE7reserveEj.exit

_ZN6vectorI7svectorISt4pairIjjEjELb1EjE7reserveEj.exit: ; preds = %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE6shrinkEj.exit.thread, %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.i, %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.thread.i, %bb.c, %.lr.ph.preheader.i.i
  %i.ad = phi ptr [ %i.l, %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.i ], [ %i.l, %_ZNK6vectorI7svectorISt4pairIjjEjELb1EjE4sizeEv.exit.thread.i ], [ %i.l, %bb.c ], [ %i.l, %.lr.ph.preheader.i.i ], [ %i.o, %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE6shrinkEj.exit.thread ]
  %i.ae = load ptr, ptr %2, align 8, !tbaa !57    ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit150.thread, label %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit148.thread.lr.ph

_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit148.thread.lr.ph: ; preds = %_ZN6vectorI7svectorISt4pairIjjEjELb1EjE7reserveEj.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit148.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit.thread ] ; 5 uses
  %.0137284291 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1138, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit.thread ] ; 3 uses
  %i.ai = zext i32 %.0137284291 to i64            ; 3 uses
  %i.aj = icmp samesign ugt i64 %indvars.iv, %i.ai
  br i1 %i.aj, label %bb.d, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv
  %.phi.trans.insert342 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre = load i32, ptr %.phi.trans.insert342, align 8, !tbaa !229
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ai ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !229
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !229 ; 2 uses
  %i.aq = icmp eq i32 %i.am, %i.ap
  br i1 %i.aq, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ar = load i64, ptr %i.ak, align 8, !tbaa !45 ; 3 uses
  %i.as = load i64, ptr %i.an, align 8, !tbaa !45 ; 3 uses
  %i.at = add i64 %i.as, %i.ar                    ; 3 uses
  %i.au = icmp sgt i64 %i.ar, 0
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = icmp sgt i64 %i.as, 0
  %i.aw = icmp slt i64 %i.at, 1
  %or.cond.i = and i1 %i.av, %i.aw
  br i1 %or.cond.i, label %.split288, label %_ZN13checked_int64ILb1EEpLERKS0_.exit

.split288:                                        ; preds = %bb.f
  %i.ax = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ax, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ay = icmp slt i64 %i.ar, 0
  br i1 %i.ay, label %bb.h, label %_ZN13checked_int64ILb1EEpLERKS0_.exit

bb.h:                                             ; preds = %bb.g
  %i.az = icmp slt i64 %i.as, 0
  %i.ba = icmp sgt i64 %i.at, -1
  %or.cond3.i = and i1 %i.az, %i.ba
  br i1 %or.cond3.i, label %.split, label %_ZN13checked_int64ILb1EEpLERKS0_.exit

.split:                                           ; preds = %bb.h
  %i.bb = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.bb, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEpLERKS0_.exit:            ; preds = %bb.f, %bb.g, %bb.h
  store i64 %i.at, ptr %i.ak, align 8, !tbaa !45
  br label %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit.thread

bb.i:                                             ; preds = %.lr.ph._crit_edge, %bb.d
  %i.bc = phi i32 [ %.pre, %.lr.ph._crit_edge ], [ %i.ap, %bb.d ]
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv
  %i.be = add i32 %.0137284291, 1
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ai ; 2 uses
  %i.bg = load i64, ptr %i.bd, align 8, !tbaa !17
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i32 %i.bc, ptr %i.bh, align 8, !tbaa !229
  br label %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit.thread

_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit.thread: ; preds = %_ZN13checked_int64ILb1EEpLERKS0_.exit, %bb.i
  %.1138 = phi i32 [ %.0137284291, %_ZN13checked_int64ILb1EEpLERKS0_.exit ], [ %i.be, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = icmp samesign ult i64 %indvars.iv.next, %i.k
  br i1 %i.bi, label %.lr.ph, label %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE6shrinkEj.exit

_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit148.thread: ; preds = %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit148.thread.lr.ph, %_ZN6vectorISt4pairIjjELb0EjE6appendERKS2_.exit
  %indvars.iv327 = phi i64 [ 0, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit148.thread.lr.ph ], [ %indvars.iv.next328, %_ZN6vectorISt4pairIjjELb0EjE6appendERKS2_.exit ] ; 4 uses
  %i.bj = phi ptr [ %i.ae, %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit148.thread.lr.ph ], [ %i.ei, %_ZN6vectorISt4pairIjjELb0EjE6appendERKS2_.exit ] ; 4 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !58 ; 2 uses
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = icmp samesign ult i64 %indvars.iv327, %i.bm
  br i1 %i.bn, label %bb.j, label %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit150

_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit150.thread: ; preds = %_ZN6vectorISt4pairIjjELb0EjE6appendERKS2_.exit, %_ZN6vectorI7svectorISt4pairIjjEjELb1EjE7reserveEj.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !17
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !17
  br label %._crit_edge302

_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit150: ; preds = %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit148.thread
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !17
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !17
  %i.bu = shl nuw nsw i64 %i.bm, 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bu
  %.not298 = icmp eq i32 %i.bl, 0
end_hunk_0
begin_hunk_1_@_ZN3sls10arith_baseI13checked_int64ILb1EEE9init_ineqEjRNS3_4ineqE:bb.a
  br i1 %i.ds, label %_ZN6vectorISt4pairIjjELb0EjE6appendERKS2_.exit, label %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i, !llvm.loop !362

bb.o:                                             ; preds = %bb.j
  %i.dt = load ptr, ptr %i.cm, align 8, !tbaa !60 ; 4 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !58 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !58
  %i.dz = icmp eq i32 %i.dw, %i.dy
  br i1 %i.dz, label %bb.q, label %_ZN6vectorISt4pairIjjELb0EjE9push_backEOS1_.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @_ZN6vectorISt4pairIjjELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
  %.pre.i = load ptr, ptr %i.cm, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !58
  br label %_ZN6vectorISt4pairIjjELb0EjE9push_backEOS1_.exit

_ZN6vectorISt4pairIjjELb0EjE9push_backEOS1_.exit: ; preds = %bb.p, %bb.q
  %i.ea = phi i32 [ %.pre2.i, %bb.q ], [ %i.dw, %bb.p ]
  %i.eb = phi ptr [ %.pre.i, %bb.q ], [ %i.dt, %bb.p ]
  %i.ec = zext i32 %i.ea to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ec
  %.sroa.0250.0.insert.insert = or disjoint i64 %i.cg, 4294967296
  store i64 %.sroa.0250.0.insert.insert, ptr %i.ed, align 4
  %i.ee = load ptr, ptr %i.cm, align 8, !tbaa !60
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -4 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !58
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !58
  br label %_ZN6vectorISt4pairIjjELb0EjE6appendERKS2_.exit

_ZN6vectorISt4pairIjjELb0EjE6appendERKS2_.exit:   ; preds = %_ZN6vectorISt4pairIjjELb0EjE9push_backERKS1_.exit.i, %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i, %bb.k, %_ZN6vectorISt4pairIjjELb0EjE9push_backEOS1_.exit
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1
  %i.ei = load ptr, ptr %2, align 8, !tbaa !57    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit150.thread, label %_ZNK6vectorISt4pairI13checked_int64ILb1EEjELb1EjE4sizeEv.exit148.thread, !llvm.loop !363

._crit_edge302:                                   ; preds = %bb.ap, %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit150.thread, %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE3endEv.exit150
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !284 ; 4 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %_ZN6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE3endEv.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge302
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 -4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !58
  %i.ep = zext i32 %i.eo to i64
  br label %_ZN6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE3endEv.exit

_ZN6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE3endEv.exit: ; preds = %._crit_edge302, %bb.r
  %.0.i.i151 = phi i64 [ %i.ep, %bb.r ], [ 0, %._crit_edge302 ]
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %.0.i.i151
  call void @_ZSt13__stable_sortIPSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS6_9init_ineqEjRNS6_4ineqEEUlRKT_RKT0_E0_EEEvSG_SG_SJ_(ptr noundef %i.el, ptr noundef %i.eq)
  %i.er = load ptr, ptr %i.ek, align 8, !tbaa !284 ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %._crit_edge310, label %_ZNK6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE4sizeEv.exit.thread

bb.s:                                             ; preds = %.lr.ph301, %bb.ap
  %.0134299 = phi ptr [ %i.bj, %.lr.ph301 ], [ %i.km, %bb.ap ] ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0134299, i64 8 ; 6 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !58
  %i.ev = load ptr, ptr %i.bw, align 8, !tbaa !139
  %i.ew = zext i32 %i.eu to i64
  %i.ex = getelementptr inbounds nuw [184 x i8], ptr %i.ev, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 56 ; 4 uses
  %i.ez = load i64, ptr %.0134299, align 8, !tbaa !17
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !57 ; 4 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fc = getelementptr inbounds i8, ptr %i.fa, i64 -4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !58 ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fa, i64 -8
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !58
  %i.fg = icmp eq i32 %i.fd, %i.ff
  br i1 %i.fg, label %bb.u, label %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE9push_backEOS3_.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ey)
  %.pre.i152 = load ptr, ptr %i.ey, align 8, !tbaa !57 ; 2 uses
  %.phi.trans.insert.i153 = getelementptr inbounds i8, ptr %.pre.i152, i64 -4
  %.pre2.i154 = load i32, ptr %.phi.trans.insert.i153, align 4, !tbaa !58
  br label %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE9push_backEOS3_.exit

_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE9push_backEOS3_.exit: ; preds = %bb.t, %bb.u
  %i.fh = phi i32 [ %.pre2.i154, %bb.u ], [ %i.fd, %bb.t ]
  %i.fi = phi ptr [ %.pre.i152, %bb.u ], [ %i.fa, %bb.t ]
  %i.fj = zext i32 %i.fh to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %i.fj ; 2 uses
  store i64 %i.ez, ptr %i.fk, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i32 %1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.fl = load ptr, ptr %i.ey, align 8, !tbaa !57
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -4 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !58
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.fp = load i32, ptr %i.et, align 8, !tbaa !58
  %i.fq = load ptr, ptr %i.bw, align 8, !tbaa !139
  %i.fr = zext i32 %i.fp to i64
  %i.fs = getelementptr inbounds nuw [184 x i8], ptr %i.fq, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %.sroa.0.0.copyload.i = load i64, ptr %i.ft, align 8, !tbaa !17
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.fu = load i64, ptr %.0134299, align 8, !tbaa !17
  store i64 %i.fu, ptr %3, align 8, !tbaa !17
  %i.fv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.fw = load i64, ptr %3, align 8               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.fx = load i64, ptr %i.bs, align 8, !tbaa !45 ; 3 uses
  %i.fy = add i64 %i.fx, %i.fw                    ; 3 uses
  %i.fz = icmp sgt i64 %i.fx, 0
  br i1 %i.fz, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE9push_backEOS3_.exit
  %i.ga = icmp sgt i64 %i.fw, 0
  %i.gb = icmp slt i64 %i.fy, 1
  %or.cond.i156 = and i1 %i.ga, %i.gb
  br i1 %or.cond.i156, label %bb.w, label %_ZN13checked_int64ILb1EEpLERKS0_.exit157

bb.w:                                             ; preds = %bb.v
  %i.gc = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.gc, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.gc, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.x:                                             ; preds = %_ZN6vectorISt4pairI13checked_int64ILb1EEjELb1EjE9push_backEOS3_.exit
  %i.gd = icmp slt i64 %i.fx, 0
  br i1 %i.gd, label %bb.y, label %_ZN13checked_int64ILb1EEpLERKS0_.exit157

bb.y:                                             ; preds = %bb.x
  %i.ge = icmp slt i64 %i.fw, 0
  %i.gf = icmp sgt i64 %i.fy, -1
  %or.cond3.i155 = and i1 %i.ge, %i.gf
  br i1 %or.cond3.i155, label %bb.z, label %_ZN13checked_int64ILb1EEpLERKS0_.exit157

bb.z:                                             ; preds = %bb.y
  %i.gg = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.gg, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.gg, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEpLERKS0_.exit157:         ; preds = %bb.v, %bb.x, %bb.y
  store i64 %i.fy, ptr %i.bs, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.gh = load i32, ptr %i.et, align 8, !tbaa !58
  %i.gi = load ptr, ptr %i.bw, align 8, !tbaa !139
  %i.gj = zext i32 %i.gh to i64
  %i.gk = getelementptr inbounds nuw [184 x i8], ptr %i.gi, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 44
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !79
  %i.gn = icmp eq i32 %i.gm, 9
  br i1 %i.gn, label %bb.aa, label %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE8capacityEv.exit.i.i.i180.a

bb.aa:                                            ; preds = %_ZN13checked_int64ILb1EEpLERKS0_.exit157
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !80
  %i.gq = load ptr, ptr %i.bz, align 8, !tbaa !158
  %i.gr = zext i32 %i.gp to i64
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !60 ; 4 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %._crit_edge, label %_ZNK6vectorISt4pairIjjELb0EjE3endEv.exit

_ZNK6vectorISt4pairIjjELb0EjE3endEv.exit:         ; preds = %bb.aa
  %i.gw = getelementptr inbounds i8, ptr %i.gu, i64 -4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !58 ; 2 uses
  %i.gy = zext i32 %i.gx to i64
  %i.gz = shl nuw nsw i64 %i.gy, 3
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gz
  %.not142295 = icmp eq i32 %i.gx, 0
  br i1 %.not142295, label %._crit_edge, label %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE8capacityEv.exit.i.i.i.a

._crit_edge:                                      ; preds = %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjED2Ev.exit, %bb.aa, %_ZNK6vectorISt4pairIjjELb0EjE3endEv.exit
  store i8 0, ptr %i.cb, align 8, !tbaa !318
  br label %bb.ap

common.resume:                                    ; preds = %bb.ah, %bb.ao
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.ao ], [ %.pn143, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE8capacityEv.exit.i.i.i.a: ; preds = %_ZNK6vectorISt4pairIjjELb0EjE3endEv.exit, %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjED2Ev.exit
  %.0133296 = phi ptr [ %i.ir, %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjED2Ev.exit ], [ %i.gu, %_ZNK6vectorISt4pairIjjELb0EjE3endEv.exit ] ; 2 uses
  %i.hb = load i64, ptr %.0133296, align 4        ; 2 uses
  %.sroa.0245.0.extract.trunc = trunc i64 %i.hb to i32 ; 2 uses
  %.sroa.5246.0.extract.shift = lshr i64 %i.hb, 32
  %.sroa.5246.0.extract.trunc = trunc nuw i64 %.sroa.5246.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.hc = load i32, ptr %i.et, align 8, !tbaa !58
  %i.hd = load i64, ptr %.0134299, align 8, !tbaa !17
  %i.he = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 56) ; 8 uses
  store i32 2, ptr %i.he, align 4, !tbaa !58
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store i32 0, ptr %i.hf, align 4, !tbaa !58
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 5 uses
  store ptr %i.hg, ptr %6, align 8, !tbaa !285
  store i32 %i.hc, ptr %i.hg, align 8, !tbaa !58
  %.sroa.5339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store i64 %i.hd, ptr %.sroa.5339.0..sroa_idx, align 8, !tbaa !17
  %.sroa.6340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store i32 %.sroa.5246.0.extract.trunc, ptr %.sroa.6340.0..sroa_idx, align 8, !tbaa !58
  %9 = getelementptr inbounds nuw i8, ptr %i.he, i64 4 ; 3 uses
  %10 = load i32, ptr %9, align 4, !tbaa !58
  %11 = add i32 %10, 1                            ; 2 uses
  store i32 %11, ptr %9, align 4, !tbaa !58
  store i32 %.sroa.0245.0.extract.trunc, ptr %5, align 8, !tbaa !364
  store ptr null, ptr %i.ca, align 8, !tbaa !285
  %12 = load i32, ptr %i.he, align 8, !tbaa !58   ; 2 uses
  %13 = zext i32 %12 to i64
  %14 = mul nuw nsw i64 %13, 24
  %15 = add nuw nsw i64 %14, 8
  %16 = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %15)
          to label %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE3endEv.exit.i.i.i unwind label %bb.af ; 3 uses

_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE3endEv.exit.i.i.i: ; preds = %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE8capacityEv.exit.i.i.i.a
  store i32 %12, ptr %16, align 4, !tbaa !58
  %i.hh = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 %11, ptr %i.hh, align 4, !tbaa !58
  %i.hi = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  store ptr %i.hi, ptr %i.ca, align 8, !tbaa !285
  %i.hj = load i32, ptr %9, align 4, !tbaa !58    ; 2 uses
  %i.hk = zext i32 %i.hj to i64
  %i.hl = mul nuw nsw i64 %i.hk, 24               ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hl
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.hj, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEC2ERKjRKS7_Qcl16_S_constructibleIRKT_RKT0_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE3endEv.exit.i.i.i
  %i.hn = add nsw i64 %i.hl, -24                  ; 2 uses
  %i.ho = udiv i64 %i.hn, 24
  %i.hp = add nuw nsw i64 %i.ho, 1
  %xtraiter517 = and i64 %i.hp, 3                 ; 2 uses
  %lcmp.mod518.not = icmp eq i64 %xtraiter517, 0
  br i1 %lcmp.mod518.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.011.i.i.i.i.i.i.prol = phi ptr [ %i.hr, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.hi, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i.i.i.prol = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.hg, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter519 = phi i64 [ %prol.iter519.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i.i.i.prol, i64 24, i1 false), !tbaa.struct !366
  %i.hq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.prol, i64 24 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter519.next = add i64 %prol.iter519, 1   ; 2 uses
  %prol.iter519.cmp.not = icmp eq i64 %prol.iter519.next, %xtraiter517
  br i1 %prol.iter519.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !367

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.unr = phi ptr [ %i.hi, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.hr, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0810.i.i.i.i.i.i.unr = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.hq, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.hs = icmp ult i64 %i.hn, 72
  br i1 %i.hs, label %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEC2ERKjRKS7_Qcl16_S_constructibleIRKT_RKT0_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i.i ], [ %.011.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !366
  %i.ht = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 24
  %i.hu = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, ptr noundef nonnull align 8 dereferenceable(24) %i.ht, i64 24, i1 false), !tbaa.struct !366
  %i.hv = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 48
  %i.hw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull align 8 dereferenceable(24) %i.hv, i64 24, i1 false), !tbaa.struct !366
  %i.hx = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 72
  %i.hy = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, ptr noundef nonnull align 8 dereferenceable(24) %i.hx, i64 24, i1 false), !tbaa.struct !366
  %i.hz = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 96 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 96
  %.not.i.i.i.i.i.i.3 = icmp eq ptr %i.hz, %i.hm
  br i1 %.not.i.i.i.i.i.i.3, label %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEC2ERKjRKS7_Qcl16_S_constructibleIRKT_RKT0_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !368

_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEC2ERKjRKS7_Qcl16_S_constructibleIRKT_RKT0_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE3endEv.exit.i.i.i
  %i.ib = load ptr, ptr %i.by, align 8, !tbaa !284 ; 4 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEC2ERKjRKS7_Qcl16_S_constructibleIRKT_RKT0_EE.exit
  %i.id = getelementptr inbounds i8, ptr %i.ib, i64 -4
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !58 ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %i.ib, i64 -8
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !58
  %i.ih = icmp eq i32 %i.ie, %i.ig
  br i1 %i.ih, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEC2ERKjRKS7_Qcl16_S_constructibleIRKT_RKT0_EE.exit
  invoke void @_ZN6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %.noexc167 unwind label %bb.ag

.noexc167:                                        ; preds = %bb.ac
  %.pre.i164 = load ptr, ptr %i.by, align 8, !tbaa !284 ; 2 uses
  %.phi.trans.insert.i165 = getelementptr inbounds i8, ptr %.pre.i164, i64 -4
  %.pre2.i166 = load i32, ptr %.phi.trans.insert.i165, align 4, !tbaa !58
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc167, %bb.ab
  %i.ii = phi i32 [ %.pre2.i166, %.noexc167 ], [ %i.ie, %bb.ab ] ; 2 uses
  %i.ij = phi ptr [ %.pre.i164, %.noexc167 ], [ %i.ib, %bb.ab ] ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %i.ij, i64 -4
  %i.il = zext i32 %i.ii to i64
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.ij, i64 %i.il ; 2 uses
  store i32 %.sroa.0245.0.extract.trunc, ptr %i.im, align 8, !tbaa !364
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store ptr %i.hi, ptr %i.in, align 8, !tbaa !285
  %i.io = add i32 %i.ii, 1
  store i32 %i.io, ptr %i.ik, align 4, !tbaa !58
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.he)
          to label %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjED2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ip = landingpad { ptr, i32 }
          catch ptr null
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  call void @__clang_call_terminate(ptr %i.iq) #26
  unreachable

_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjED2Ev.exit: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ir = getelementptr inbounds nuw i8, ptr %.0133296, i64 8 ; 2 uses
  %.not142 = icmp eq ptr %i.ir, %i.ha
  br i1 %.not142, label %._crit_edge, label %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE8capacityEv.exit.i.i.i.a

bb.af:                                            ; preds = %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE8capacityEv.exit.i.i.i.a
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn143 = phi { ptr, i32 } [ %i.it, %bb.ag ], [ %i.is, %bb.af ]
  call void @_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE8capacityEv.exit.i.i.i180.a: ; preds = %_ZN13checked_int64ILb1EEpLERKS0_.exit157
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.iu = load i32, ptr %i.et, align 8, !tbaa !58
  %i.iv = load i64, ptr %.0134299, align 8, !tbaa !17
  %i.iw = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 56) ; 8 uses
  store i32 2, ptr %i.iw, align 4, !tbaa !58
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  store i32 0, ptr %i.ix, align 4, !tbaa !58
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 5 uses
  store ptr %i.iy, ptr %8, align 8, !tbaa !285
  store i32 %i.iu, ptr %i.iy, align 8, !tbaa !58
  %.sroa.5336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store i64 %i.iv, ptr %.sroa.5336.0..sroa_idx, align 8, !tbaa !17
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  store i32 1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !58
  %17 = getelementptr inbounds nuw i8, ptr %i.iw, i64 4 ; 3 uses
  %18 = load i32, ptr %17, align 4, !tbaa !58
  %19 = add i32 %18, 1                            ; 2 uses
  store i32 %19, ptr %17, align 4, !tbaa !58
  %i.iz = load i32, ptr %i.et, align 8, !tbaa !58 ; 2 uses
  store i32 %i.iz, ptr %7, align 8, !tbaa !364
  store ptr null, ptr %i.bx, align 8, !tbaa !285
  %20 = load i32, ptr %i.iw, align 8, !tbaa !58   ; 2 uses
  %21 = zext i32 %20 to i64
  %22 = mul nuw nsw i64 %21, 24
  %23 = add nuw nsw i64 %22, 8
  %24 = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %23)
          to label %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE3endEv.exit.i.i.i181 unwind label %bb.am ; 3 uses

_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE3endEv.exit.i.i.i181: ; preds = %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE8capacityEv.exit.i.i.i180.a
  store i32 %20, ptr %24, align 4, !tbaa !58
  %i.ja = getelementptr inbounds nuw i8, ptr %24, i64 4
  store i32 %19, ptr %i.ja, align 4, !tbaa !58
  %i.jb = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  store ptr %i.jb, ptr %i.bx, align 8, !tbaa !285
  %i.jc = load i32, ptr %17, align 4, !tbaa !58   ; 2 uses
  %i.jd = zext i32 %i.jc to i64
  %i.je = mul nuw nsw i64 %i.jd, 24               ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.je
  %.not9.i.i.i.i.i.i182 = icmp eq i32 %i.jc, 0
  br i1 %.not9.i.i.i.i.i.i182, label %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEC2ERKjRKS7_Qcl16_S_constructibleIRKT_RKT0_EE.exit188, label %.lr.ph.i.i.i.i.i.i183.preheader

.lr.ph.i.i.i.i.i.i183.preheader:                  ; preds = %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE3endEv.exit.i.i.i181
  %i.jg = add nsw i64 %i.je, -24                  ; 2 uses
  %i.jh = udiv i64 %i.jg, 24
  %i.ji = add nuw nsw i64 %i.jh, 1
  %xtraiter = and i64 %i.ji, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i183.prol.loopexit, label %.lr.ph.i.i.i.i.i.i183.prol

.lr.ph.i.i.i.i.i.i183.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i183.preheader, %.lr.ph.i.i.i.i.i.i183.prol
  %.011.i.i.i.i.i.i184.prol = phi ptr [ %i.jk, %.lr.ph.i.i.i.i.i.i183.prol ], [ %i.jb, %.lr.ph.i.i.i.i.i.i183.preheader ] ; 2 uses
  %.0810.i.i.i.i.i.i185.prol = phi ptr [ %i.jj, %.lr.ph.i.i.i.i.i.i183.prol ], [ %i.iy, %.lr.ph.i.i.i.i.i.i183.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i183.prol ], [ 0, %.lr.ph.i.i.i.i.i.i183.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i.i.i184.prol, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i.i.i185.prol, i64 24, i1 false), !tbaa.struct !366
  %i.jj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i185.prol, i64 24 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i184.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i183.prol.loopexit, label %.lr.ph.i.i.i.i.i.i183.prol, !llvm.loop !369

.lr.ph.i.i.i.i.i.i183.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i183.prol, %.lr.ph.i.i.i.i.i.i183.preheader
  %.011.i.i.i.i.i.i184.unr = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.i.i183.preheader ], [ %i.jk, %.lr.ph.i.i.i.i.i.i183.prol ]
  %.0810.i.i.i.i.i.i185.unr = phi ptr [ %i.iy, %.lr.ph.i.i.i.i.i.i183.preheader ], [ %i.jj, %.lr.ph.i.i.i.i.i.i183.prol ]
  %i.jl = icmp ult i64 %i.jg, 72
  br i1 %i.jl, label %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEC2ERKjRKS7_Qcl16_S_constructibleIRKT_RKT0_EE.exit188, label %.lr.ph.i.i.i.i.i.i183

.lr.ph.i.i.i.i.i.i183:                            ; preds = %.lr.ph.i.i.i.i.i.i183.prol.loopexit, %.lr.ph.i.i.i.i.i.i183
  %.011.i.i.i.i.i.i184 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i.i.i183 ], [ %.011.i.i.i.i.i.i184.unr, %.lr.ph.i.i.i.i.i.i183.prol.loopexit ] ; 5 uses
  %.0810.i.i.i.i.i.i185 = phi ptr [ %i.js, %.lr.ph.i.i.i.i.i.i183 ], [ %.0810.i.i.i.i.i.i185.unr, %.lr.ph.i.i.i.i.i.i183.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i.i.i184, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i.i.i185, i64 24, i1 false), !tbaa.struct !366
  %i.jm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i185, i64 24
  %i.jn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i184, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jn, ptr noundef nonnull align 8 dereferenceable(24) %i.jm, i64 24, i1 false), !tbaa.struct !366
  %i.jo = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i185, i64 48
  %i.jp = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i184, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jp, ptr noundef nonnull align 8 dereferenceable(24) %i.jo, i64 24, i1 false), !tbaa.struct !366
  %i.jq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i185, i64 72
  %i.jr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i184, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jr, ptr noundef nonnull align 8 dereferenceable(24) %i.jq, i64 24, i1 false), !tbaa.struct !366
  %i.js = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i185, i64 96 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i184, i64 96
  %.not.i.i.i.i.i.i186.3 = icmp eq ptr %i.js, %i.jf
  br i1 %.not.i.i.i.i.i.i186.3, label %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEC2ERKjRKS7_Qcl16_S_constructibleIRKT_RKT0_EE.exit188, label %.lr.ph.i.i.i.i.i.i183, !llvm.loop !368

_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEC2ERKjRKS7_Qcl16_S_constructibleIRKT_RKT0_EE.exit188: ; preds = %.lr.ph.i.i.i.i.i.i183.prol.loopexit, %.lr.ph.i.i.i.i.i.i183, %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE3endEv.exit.i.i.i181
  %i.ju = load ptr, ptr %i.by, align 8, !tbaa !284 ; 4 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEC2ERKjRKS7_Qcl16_S_constructibleIRKT_RKT0_EE.exit188
  %i.jw = getelementptr inbounds i8, ptr %i.ju, i64 -4
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !58 ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %i.ju, i64 -8
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !58
  %i.ka = icmp eq i32 %i.jx, %i.jz
  br i1 %i.ka, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEEC2ERKjRKS7_Qcl16_S_constructibleIRKT_RKT0_EE.exit188
  invoke void @_ZN6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %.noexc192 unwind label %bb.an

.noexc192:                                        ; preds = %bb.aj
  %.pre.i189 = load ptr, ptr %i.by, align 8, !tbaa !284 ; 2 uses
  %.phi.trans.insert.i190 = getelementptr inbounds i8, ptr %.pre.i189, i64 -4
  %.pre2.i191 = load i32, ptr %.phi.trans.insert.i190, align 4, !tbaa !58
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc192, %bb.ai
  %i.kb = phi i32 [ %.pre2.i191, %.noexc192 ], [ %i.jx, %bb.ai ] ; 2 uses
  %i.kc = phi ptr [ %.pre.i189, %.noexc192 ], [ %i.ju, %bb.ai ] ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 -4
  %i.ke = zext i32 %i.kb to i64
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %i.ke ; 2 uses
  store i32 %i.iz, ptr %i.kf, align 8, !tbaa !364
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store ptr %i.jb, ptr %i.kg, align 8, !tbaa !285
  %i.kh = add i32 %i.kb, 1
  store i32 %i.kh, ptr %i.kd, align 4, !tbaa !58
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.iw)
          to label %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjED2Ev.exit197 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ki = landingpad { ptr, i32 }
          catch ptr null
  %i.kj = extractvalue { ptr, i32 } %i.ki, 0
  call void @__clang_call_terminate(ptr %i.kj) #26
  unreachable

_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjED2Ev.exit197: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.ap

bb.am:                                            ; preds = %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE8capacityEv.exit.i.i.i180.a
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.aj
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #24
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn = phi { ptr, i32 } [ %i.kl, %bb.an ], [ %i.kk, %bb.am ]
  call void @_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

bb.ap:                                            ; preds = %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjED2Ev.exit197, %._crit_edge
  %i.km = getelementptr inbounds nuw i8, ptr %.0134299, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.km, %i.bv
  br i1 %.not, label %._crit_edge302, label %bb.s

_ZNK6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE4sizeEv.exit.thread: ; preds = %_ZN6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE3endEv.exit, %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE6appendERKS6_.exit
  %indvars.iv330 = phi i64 [ %indvars.iv.next331, %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE6appendERKS6_.exit ], [ 0, %_ZN6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE3endEv.exit ] ; 7 uses
  %.pr.pr = phi ptr [ %i.oa, %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE6appendERKS6_.exit ], [ %i.er, %_ZN6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE3endEv.exit ] ; 9 uses
  %i.kn = phi i32 [ %.3, %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE6appendERKS6_.exit ], [ 0, %_ZN6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE3endEv.exit ] ; 10 uses
  %i.ko = getelementptr inbounds i8, ptr %.pr.pr, i64 -4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !58 ; 2 uses
  %i.kq = zext i32 %i.kp to i64                   ; 2 uses
  %i.kr = icmp samesign ult i64 %indvars.iv330, %i.kq
  br i1 %i.kr, label %bb.as, label %_ZN6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE3endEv.exit.i

_ZN6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE3endEv.exit.i: ; preds = %_ZNK6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE4sizeEv.exit.thread
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %.pr.pr, i64 %i.kq
  %.not78.i = icmp eq i32 %i.kn, %i.kp
  br i1 %.not78.i, label %_ZN6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE3endEv.exit203, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE3endEv.exit.i
  %i.kt = zext i32 %i.kn to i64
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %.pr.pr, i64 %i.kt
  br label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEED2Ev.exit.i, %.lr.ph.preheader.i
  %.09.i = phi ptr [ %i.la, %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEED2Ev.exit.i ], [ %i.ku, %.lr.ph.preheader.i ] ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !285 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.i.i, label %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEED2Ev.exit.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i200
  %i.kx = getelementptr inbounds i8, ptr %i.kw, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.kx)
          to label %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEED2Ev.exit.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ky = landingpad { ptr, i32 }
          catch ptr null
  %i.kz = extractvalue { ptr, i32 } %i.ky, 0
  call void @__clang_call_terminate(ptr %i.kz) #26
  unreachable

_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEED2Ev.exit.i: ; preds = %bb.aq, %.lr.ph.i200
  %i.la = getelementptr inbounds nuw i8, ptr %.09.i, i64 16 ; 2 uses
  %.not7.i = icmp eq ptr %i.la, %i.ks
  br i1 %.not7.i, label %._crit_edge.loopexit.i, label %.lr.ph.i200, !llvm.loop !370

._crit_edge.loopexit.i:                           ; preds = %_ZNSt4pairIj6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEED2Ev.exit.i
  %.pre.i201 = load ptr, ptr %i.ek, align 8, !tbaa !284
  br label %_ZN6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE3endEv.exit203

_ZN6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE3endEv.exit203: ; preds = %_ZN6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE3endEv.exit.i, %._crit_edge.loopexit.i
  %.pr = phi ptr [ %.pre.i201, %._crit_edge.loopexit.i ], [ %.pr.pr, %_ZN6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE3endEv.exit.i ] ; 3 uses
  %i.lb = getelementptr inbounds i8, ptr %.pr, i64 -4
  store i32 %i.kn, ptr %i.lb, align 4, !tbaa !58
  %i.lc = zext i32 %i.kn to i64
  %i.ld = shl nuw nsw i64 %i.lc, 4
  %i.le = getelementptr inbounds nuw i8, ptr %.pr, i64 %i.ld
  %.not140307 = icmp eq i32 %i.kn, 0
  br i1 %.not140307, label %._crit_edge310, label %.lr.ph309

bb.as:                                            ; preds = %_ZNK6vectorISt4pairIjS_IN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjEELb1EjE4sizeEv.exit.thread
  %i.lf = zext i32 %i.kn to i64                   ; 4 uses
  %i.lg = icmp samesign ugt i64 %indvars.iv330, %i.lf
  br i1 %i.lg, label %bb.at, label %._crit_edge365

._crit_edge365:                                   ; preds = %bb.as
  %.phi.trans.insert366 = getelementptr inbounds nuw [16 x i8], ptr %.pr.pr, i64 %indvars.iv330
  %.pre367 = load i32, ptr %.phi.trans.insert366, align 8, !tbaa !364
  br label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %.pr.pr, i64 %i.lf ; 2 uses
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !364
  %i.lj = getelementptr inbounds nuw [16 x i8], ptr %.pr.pr, i64 %indvars.iv330 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !364 ; 2 uses
  %i.ll = icmp eq i32 %i.li, %i.lk
  br i1 %i.ll, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 8 ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !285 ; 2 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE6appendERKS6_.exit, label %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE4sizeEv.exit.i

_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE4sizeEv.exit.i: ; preds = %bb.au, %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE9push_backERKS5_.exit.i205
  %indvars.iv.i204 = phi i64 [ %indvars.iv.next.i206, %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE9push_backERKS5_.exit.i205 ], [ 0, %bb.au ] ; 3 uses
  %i.lq = phi ptr [ %i.ml, %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE9push_backERKS5_.exit.i205 ], [ %i.lo, %bb.au ] ; 2 uses
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 -4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !58
  %i.lt = zext i32 %i.ls to i64
  %i.lu = icmp samesign ult i64 %indvars.iv.i204, %i.lt
  br i1 %i.lu, label %bb.av, label %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE6appendERKS6_.exit

bb.av:                                            ; preds = %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE4sizeEv.exit.i
  %i.lv = getelementptr inbounds nuw [24 x i8], ptr %i.lq, i64 %indvars.iv.i204
  %i.lw = load ptr, ptr %i.lm, align 8, !tbaa !285 ; 4 uses
  %i.lx = icmp eq ptr %i.lw, null
  br i1 %i.lx, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ly = getelementptr inbounds i8, ptr %i.lw, i64 -4
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !58 ; 2 uses
  %i.ma = getelementptr inbounds i8, ptr %i.lw, i64 -8
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !58
  %i.mc = icmp eq i32 %i.lz, %i.mb
  br i1 %i.mc, label %bb.ax, label %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE9push_backERKS5_.exit.i205

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void @_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lm)
  %.pre.i.i207 = load ptr, ptr %i.lm, align 8, !tbaa !285 ; 2 uses
  %.phi.trans.insert.i.i208 = getelementptr inbounds i8, ptr %.pre.i.i207, i64 -4
  %.pre2.i.i209 = load i32, ptr %.phi.trans.insert.i.i208, align 4, !tbaa !58
  br label %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE9push_backERKS5_.exit.i205

_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE9push_backERKS5_.exit.i205: ; preds = %bb.ax, %bb.aw
  %i.md = phi i32 [ %.pre2.i.i209, %bb.ax ], [ %i.lz, %bb.aw ]
  %i.me = phi ptr [ %.pre.i.i207, %bb.ax ], [ %i.lw, %bb.aw ]
  %i.mf = zext i32 %i.md to i64
  %i.mg = getelementptr inbounds nuw [24 x i8], ptr %i.me, i64 %i.mf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mg, ptr noundef nonnull align 8 dereferenceable(24) %i.lv, i64 24, i1 false), !tbaa.struct !366
  %i.mh = load ptr, ptr %i.lm, align 8, !tbaa !285
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 -4 ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !58
  %i.mk = add i32 %i.mj, 1
  store i32 %i.mk, ptr %i.mi, align 4, !tbaa !58
  %indvars.iv.next.i206 = add nuw nsw i64 %indvars.iv.i204, 1
  %i.ml = load ptr, ptr %i.ln, align 8, !tbaa !285 ; 2 uses
  %i.mm = icmp eq ptr %i.ml, null
  br i1 %i.mm, label %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE6appendERKS6_.exit, label %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE4sizeEv.exit.i, !llvm.loop !371

bb.ay:                                            ; preds = %._crit_edge365, %bb.at
  %i.mn = phi i32 [ %.pre367, %._crit_edge365 ], [ %i.lk, %bb.at ]
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %.pr.pr, i64 %indvars.iv330
  %i.mp = add i32 %i.kn, 1                        ; 6 uses
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %.pr.pr, i64 %i.lf ; 2 uses
  store i32 %i.mn, ptr %i.mq, align 8, !tbaa !364
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 8 ; 3 uses
  %i.mt = icmp eq i64 %indvars.iv330, %i.lf
  br i1 %i.mt, label %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE6appendERKS6_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mu = load ptr, ptr %i.ms, align 8, !tbaa !285 ; 2 uses
  %.not.i.i.i210 = icmp eq ptr %i.mu, null
  br i1 %.not.i.i.i210, label %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE7destroyEv.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mv = getelementptr inbounds i8, ptr %i.mu, i64 -8
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.mv)
  br label %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE7destroyEv.exit.i.i

_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE7destroyEv.exit.i.i: ; preds = %bb.ba, %bb.az
  %i.mw = load ptr, ptr %i.mr, align 8, !tbaa !285 ; 2 uses
  %.not.i.i211 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i211, label %bb.bb, label %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE8capacityEv.exit.i.i.i212

_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE8capacityEv.exit.i.i.i212: ; preds = %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE7destroyEv.exit.i.i
  %i.mx = getelementptr inbounds i8, ptr %i.mw, i64 -8 ; 2 uses
  %i.my = load <2 x i32>, ptr %i.mx, align 4, !tbaa !58
  %i.mz = load i32, ptr %i.mx, align 4, !tbaa !58
  %i.na = zext i32 %i.mz to i64
  %i.nb = mul nuw nsw i64 %i.na, 24
  %i.nc = add nuw nsw i64 %i.nb, 8
  %i.nd = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.nc) ; 2 uses
  store <2 x i32> %i.my, ptr %i.nd, align 4, !tbaa !58
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 3 uses
  store ptr %i.ne, ptr %i.ms, align 8, !tbaa !285
  %i.nf = load ptr, ptr %i.mr, align 8, !tbaa !285 ; 5 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE6appendERKS6_.exit, label %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE3endEv.exit.i.i.i213

_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE3endEv.exit.i.i.i213: ; preds = %_ZNK6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE8capacityEv.exit.i.i.i212
  %i.nh = getelementptr inbounds i8, ptr %i.nf, i64 -4
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !58 ; 2 uses
  %i.nj = zext i32 %i.ni to i64
  %i.nk = mul nuw nsw i64 %i.nj, 24               ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.nk
  %.not9.i.i.i.i.i.i214 = icmp eq i32 %i.ni, 0
  br i1 %.not9.i.i.i.i.i.i214, label %_ZN6vectorIN3sls10arith_baseI13checked_int64ILb1EEE15nonlinear_coeffELb1EjE6appendERKS6_.exit, label %.lr.ph.i.i.i.i.i.i215.preheader
end_hunk_1

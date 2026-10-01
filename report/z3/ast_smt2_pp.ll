Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/ast_smt2_pp?download=true
inline.NumInlined: 1976
inline.NumDeleted: 825
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN12smt2_printer12reset_stacksEv:bb.a
_ZN6vectorIP4exprLb0EjE5resetEv.exit:             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !314  ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i:            ; preds = %_ZN6vectorIP4exprLb0EjE5resetEv.exit
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !43   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l
  %.not.i1 = icmp eq i32 %i.j, 0
  br i1 %.not.i1, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.t, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.g, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.n = load ptr, ptr %.06.i.i, align 8, !tbaa !71 ; 3 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !315, !nonnull !124, !align !125
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !141
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 4, !tbaa !141
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.o, ptr noundef nonnull %i.n)
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %i.m
  br i1 %i.u, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !3

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !314 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i
  %i.v = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.g, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ]
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4
  store i32 0, ptr %i.w, align 4, !tbaa !43
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %_ZN6vectorIP4exprLb0EjE5resetEv.exit, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !317  ; 2 uses
  %.not.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i2, label %_ZN6vectorISt4pairIj6symbolELb0EjE5resetEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4
  store i32 0, ptr %i.z, align 4, !tbaa !43
  br label %_ZN6vectorISt4pairIj6symbolELb0EjE5resetEv.exit

_ZN6vectorISt4pairIj6symbolELb0EjE5resetEv.exit:  ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !316 ; 2 uses
  %.not.i3 = icmp eq ptr %i.ab, null
  br i1 %.not.i3, label %_ZN6vectorIN12smt2_printer5scopeELb0EjE5resetEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6vectorISt4pairIj6symbolELb0EjE5resetEv.exit
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4
  store i32 0, ptr %i.ac, align 4, !tbaa !43
  br label %_ZN6vectorIN12smt2_printer5scopeELb0EjE5resetEv.exit

_ZN6vectorIN12smt2_printer5scopeELb0EjE5resetEv.exit: ; preds = %_ZN6vectorISt4pairIj6symbolELb0EjE5resetEv.exit, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !279 ; 2 uses
  %.not.i4 = icmp eq ptr %i.ae, null
  br i1 %.not.i4, label %_ZN6vectorIN12smt2_printer5frameELb0EjE5resetEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIN12smt2_printer5scopeELb0EjE5resetEv.exit
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4
  store i32 0, ptr %i.af, align 4, !tbaa !43
  br label %_ZN6vectorIN12smt2_printer5frameELb0EjE5resetEv.exit

_ZN6vectorIN12smt2_printer5frameELb0EjE5resetEv.exit: ; preds = %_ZN6vectorIN12smt2_printer5scopeELb0EjE5resetEv.exit, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !314 ; 5 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit15, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i5

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i5:           ; preds = %_ZN6vectorIN12smt2_printer5frameELb0EjE5resetEv.exit
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !43 ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.an
  %.not.i6 = icmp eq i32 %i.al, 0
  br i1 %.not.i6, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i14, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i5, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i10
  %.06.i.i8 = phi ptr [ %i.av, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i10 ], [ %i.ai, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i5 ] ; 2 uses
  %i.ap = load ptr, ptr %.06.i.i8, align 8, !tbaa !71 ; 3 uses
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !315, !nonnull !124, !align !125
  %.not.i.i.i.i.i9 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i9, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i10, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !141
  %i.at = add i32 %i.as, -1                       ; 2 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !141
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i10

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aq, ptr noundef nonnull %i.ap)
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i10

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i10: ; preds = %bb.i, %bb.h, %.lr.ph.i.i7
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i8, i64 8 ; 2 uses
  %i.aw = icmp ult ptr %i.av, %i.ao
  br i1 %i.aw, label %.lr.ph.i.i7, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i11, !llvm.loop !3

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i11: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i10
  %.pre.i12 = load ptr, ptr %i.ah, align 8, !tbaa !314 ; 2 uses
  %.not.i.i13 = icmp eq ptr %.pre.i12, null
  br i1 %.not.i.i13, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit15, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i14

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i14: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i11, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i5
  %i.ax = phi ptr [ %.pre.i12, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i11 ], [ %i.ai, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i5 ]
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4
  store i32 0, ptr %i.ay, align 4, !tbaa !43
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit15

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit15: ; preds = %_ZN6vectorIN12smt2_printer5frameELb0EjE5resetEv.exit, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i11, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i14
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !313 ; 2 uses
  %.not.i16 = icmp eq ptr %i.ba, null
  br i1 %.not.i16, label %_ZN6vectorIN12smt2_printer4infoELb0EjE5resetEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit15
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4
  store i32 0, ptr %i.bb, align 4, !tbaa !43
  br label %_ZN6vectorIN12smt2_printer4infoELb0EjE5resetEv.exit

_ZN6vectorIN12smt2_printer4infoELb0EjE5resetEv.exit: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit15, %bb.j
  ret void
}

declare void @_ZN11shared_occsclEP4expr(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12smt2_printer18process_quantifierEP10quantifierRNS_5frameE(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(17) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.symbol, align 8              ; 4 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %class.ptr_buffer, align 8          ; 29 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca [2 x ptr], align 16               ; 6 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"struct.smt2_printer::info", align 4 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !352  ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12smt2_printer11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(308) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !647
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.k, ptr %i.l, align 8, !tbaa !347
  tail call void @_ZN12smt2_printer18register_var_namesEP10quantifier(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull %1)
  %.pre = load i32, ptr %i.g, align 8, !tbaa !352
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi i32 [ %.pre, %bb.b ], [ %i.h, %bb.a ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !648  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !649
  %i.r = add i32 %i.q, %i.o                       ; 2 uses
  %i.s = add i32 %i.r, 1
  %i.t = icmp ult i32 %i.m, %i.s
  br i1 %i.t, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.u = add nuw i32 %i.m, 1
  store i32 %i.u, ptr %i.g, align 8, !tbaa !352
  %i.v = icmp ult i32 %i.m, %i.o
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !355
  %i.z = zext i32 %i.y to i64
  %.idx.i.i = shl nuw nsw i64 %i.z, 4
  %6 = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i.i
  %i.aa = zext i32 %i.m to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !319
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !314 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !43
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.ai, %bb.f ], [ 0, %bb.e ]
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !279 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !43 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !43
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.h, label %_ZN12smt2_printer10push_frameEP4exprb.exit

bb.h:                                             ; preds = %bb.g, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  tail call void @_ZN6vectorIN12smt2_printer5frameELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %.pre.i.i = load ptr, ptr %i.ad, align 8, !tbaa !279 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !43
  br label %_ZN12smt2_printer10push_frameEP4exprb.exit

_ZN12smt2_printer10push_frameEP4exprb.exit:       ; preds = %bb.g, %bb.h
  %i.aq = phi i32 [ %.pre2.i.i, %bb.h ], [ %i.am, %bb.g ] ; 2 uses
  %i.ar = phi ptr [ %.pre.i.i, %bb.h ], [ %i.aj, %bb.g ] ; 2 uses
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.as ; 4 uses
  store ptr %i.ac, ptr %i.at, align 8, !tbaa !319
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !43
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 %.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !43
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !145
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -4
  %i.av = add i32 %i.aq, 1
  store i32 %i.av, ptr %i.au, align 4, !tbaa !43
  br label %bb.bi

bb.i:                                             ; preds = %bb.d
  %i.aw = icmp ult i32 %i.m, %i.r
  br i1 %i.aw, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ax = sub nuw i32 %i.m, %i.o
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !355
  %i.bb = zext i32 %i.ba to i64
  %.idx.i.i72 = shl nuw nsw i64 %i.bb, 4
  %7 = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i.i72
  %i.bc = zext i32 %i.ax to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !319
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !314 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i72, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !43
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i72

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i72: ; preds = %bb.k, %bb.j
  %.0.i.i.i73 = phi i32 [ %i.bk, %bb.k ], [ 0, %bb.j ]
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !279 ; 4 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i72
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !43 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !43
  %i.br = icmp eq i32 %i.bo, %i.bq
  br i1 %i.br, label %bb.m, label %_ZN12smt2_printer10push_frameEP4exprb.exit80

bb.m:                                             ; preds = %bb.l, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i72
  tail call void @_ZN6vectorIN12smt2_printer5frameELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
  %.pre.i.i77 = load ptr, ptr %i.bf, align 8, !tbaa !279 ; 2 uses
  %.phi.trans.insert.i.i78 = getelementptr inbounds i8, ptr %.pre.i.i77, i64 -4
  %.pre2.i.i79 = load i32, ptr %.phi.trans.insert.i.i78, align 4, !tbaa !43
  br label %_ZN12smt2_printer10push_frameEP4exprb.exit80

_ZN12smt2_printer10push_frameEP4exprb.exit80:     ; preds = %bb.l, %bb.m
  %i.bs = phi i32 [ %.pre2.i.i79, %bb.m ], [ %i.bo, %bb.l ] ; 2 uses
  %i.bt = phi ptr [ %.pre.i.i77, %bb.m ], [ %i.bl, %bb.l ] ; 2 uses
  %i.bu = zext i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.bu ; 4 uses
  store ptr %i.be, ptr %i.bv, align 8, !tbaa !319
  %.sroa.4.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i74, align 8, !tbaa !43
  %.sroa.5.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 %.0.i.i.i73, ptr %.sroa.5.0..sroa_idx.i75, align 4, !tbaa !43
  %.sroa.6.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i8 0, ptr %.sroa.6.0..sroa_idx.i76, align 8, !tbaa !145
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bx = add i32 %i.bs, 1
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !43
  br label %bb.bi

bb.n:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !647
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !356, !range !146, !noundef !124
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !314 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i81, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !43
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i81

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i81: ; preds = %bb.o, %bb.n
  %.0.i.i.i82 = phi i32 [ %i.ch, %bb.o ], [ 0, %bb.n ]
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !279 ; 4 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i81
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !43 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !43
  %i.co = icmp eq i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.q, label %_ZN12smt2_printer10push_frameEP4exprb.exit89

bb.q:                                             ; preds = %bb.p, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i81
  tail call void @_ZN6vectorIN12smt2_printer5frameELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
  %.pre.i.i86 = load ptr, ptr %i.cc, align 8, !tbaa !279 ; 2 uses
  %.phi.trans.insert.i.i87 = getelementptr inbounds i8, ptr %.pre.i.i86, i64 -4
  %.pre2.i.i88 = load i32, ptr %.phi.trans.insert.i.i87, align 4, !tbaa !43
  br label %_ZN12smt2_printer10push_frameEP4exprb.exit89

_ZN12smt2_printer10push_frameEP4exprb.exit89:     ; preds = %bb.p, %bb.q
  %i.cp = phi i32 [ %.pre2.i.i88, %bb.q ], [ %i.cl, %bb.p ] ; 2 uses
  %i.cq = phi ptr [ %.pre.i.i86, %bb.q ], [ %i.ci, %bb.p ] ; 2 uses
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cr ; 4 uses
  store ptr %i.bz, ptr %i.cs, align 8, !tbaa !319
  %.sroa.4.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i83, align 8, !tbaa !43
  %.sroa.5.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %.0.i.i.i82, ptr %.sroa.5.0..sroa_idx.i84, align 4, !tbaa !43
  %.sroa.6.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i8 %i.cb, ptr %.sroa.6.0..sroa_idx.i85, align 8, !tbaa !145
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 -4
  %i.cu = add i32 %i.cp, 1
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !43
  br label %bb.bi

bb.r:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !43
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !314 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4backEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 -4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !43
  %i.da = add i32 %i.cz, -1
  %i.db = zext i32 %i.da to i64
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4backEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4backEv.exit: ; preds = %bb.r, %bb.s
  %.0.i.i.i90 = phi i64 [ %i.db, %bb.s ], [ 4294967295, %bb.r ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.0.i.i.i90
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !71
  %i.de = call noundef ptr @_ZN12smt2_printer6pp_letEP3appRj(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef %i.dd, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 3 uses
  %i.df = load i32, ptr %i.n, align 8, !tbaa !648 ; 2 uses
  %.not.i = icmp ne i32 %i.df, 0                  ; 2 uses
  %i.dg = load i32, ptr %i.p, align 4             ; 2 uses
  %i.dh = icmp ne i32 %i.dg, 0
  %i.di = select i1 %.not.i, i1 true, i1 %i.dh
  br i1 %i.di, label %bb.w, label %bb.t

bb.t:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4backEv.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !650
  %.not = icmp eq i32 %i.dk, 1
  br i1 %.not, label %bb.u, label %.loopexit218.thread

bb.u:                                             ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !45 ; 2 uses
  %i.dn = load ptr, ptr @_ZN6symbol4nullE, align 8, !tbaa !45
  %.not216 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not216, label %bb.v, label %.loopexit218.thread

bb.v:                                             ; preds = %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !45 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.dm
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = and i64 %i.dr, 7
  %i.dt = icmp eq i64 %i.ds, 1
  %or.cond = or i1 %i.dq, %i.dt
  br i1 %or.cond, label %bb.be, label %.loopexit218.thread

.loopexit218.thread:                              ; preds = %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.du, ptr %4, align 8, !tbaa !76
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 16, ptr %i.dw, align 4, !tbaa !77
  store ptr %i.de, ptr %i.du, align 8, !tbaa !71
  store i32 1, ptr %i.dv, align 8, !tbaa !78
  br label %.loopexit

bb.w:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4backEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.dx, ptr %4, align 8, !tbaa !76
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 11 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 7 uses
  store i32 16, ptr %i.dz, align 4, !tbaa !77
  store ptr %i.de, ptr %i.dx, align 8, !tbaa !71
  store i32 1, ptr %i.dy, align 8, !tbaa !78
  br i1 %.not.i, label %.lr.ph.preheader, label %.loopexit218

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.ea = load ptr, ptr %i.cv, align 8, !tbaa !314
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !357
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ed ; 2 uses
  %i.ef = zext i32 %i.df to i64
  %.idx = shl nuw nsw i64 %i.ef, 3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.z
  %.062220 = phi ptr [ %i.fy, %bb.z ], [ %i.ee, %.lr.ph.preheader ] ; 2 uses
  %i.eh = load ptr, ptr %.062220, align 8, !tbaa !71
  %i.ei = load ptr, ptr %0, align 8, !tbaa !280, !nonnull !124, !align !125 ; 2 uses
  %i.ej = invoke noundef ptr @_ZN9format_ns9mk_stringER11ast_managerPKc(ptr noundef nonnull align 8 dereferenceable(952) %i.ei, ptr noundef nonnull @.str.61)
          to label %.noexc94 unwind label %bb.aa

.noexc94:                                         ; preds = %.lr.ph
  %i.ek = load ptr, ptr %0, align 8, !tbaa !280, !nonnull !124, !align !125
  %i.el = invoke noundef ptr @_ZN9format_ns9mk_indentER11ast_managerjP3app(ptr noundef nonnull align 8 dereferenceable(952) %i.ek, i32 noundef 9, ptr noundef %i.eh)
          to label %.noexc95 unwind label %bb.aa

.noexc95:                                         ; preds = %.noexc94
end_hunk_0

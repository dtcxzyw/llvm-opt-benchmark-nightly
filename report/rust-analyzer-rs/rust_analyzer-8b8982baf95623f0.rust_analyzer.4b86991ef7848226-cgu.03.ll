Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.03?download=true
inline.NumInlined: 5950
inline.NumDeleted: 2719
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir6ModuleEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2d_8find_map5checkB1K_NtNtCs33K2ylI4knu_10hir_expand4name4NameQNCNvMs4_B1M_B1K_13path_segments0E0INtNtNtBb_3ops12control_flow11ControlFlowB3p_EECs6u1mgJOKDyY_13rust_analyzer:bb.a
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !noalias !4754, !noundef !5
  %i.k = call noundef ptr @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs4_Cs8Xq8PKFYOms_3hirNtBW_6Module13path_segments0INtB7_5FnMutTB1e_EE8call_mutCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef range(i32 1, 0) %i.h, i32 noundef %i.j), !noalias !4752 ; 2 uses
  %.not7.i = icmp eq ptr %i.k, null
  br i1 %.not7.i, label %bb.b, label %_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir6ModuleENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1n_8iterator8Iterator8find_map5checkBR_NtNtCs33K2ylI4knu_10hir_expand4name4NameQNCNvMs4_BT_BR_13path_segments0E0INtNtNtB1r_3ops12control_flow11ControlFlowB3v_EECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir6ModuleENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1n_8iterator8Iterator8find_map5checkBR_NtNtCs33K2ylI4knu_10hir_expand4name4NameQNCNvMs4_BT_BR_13path_segments0E0INtNtNtB1r_3ops12control_flow11ControlFlowB3v_EECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ null, %bb.b ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB2y_6StringINtNtB1p_7collect6ExtendcE6extendBM_E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !4764 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4765)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %.not.i14.i = icmp eq ptr %0, %1
  br i1 %.not.i14.i, label %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtBL_8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB2E_6StringINtNtBL_7collect6ExtendcE6extendINtNtNtBN_8adapters3rev3RevB3_EE0E0ECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i, %.lr.ph.i
  %.sroa.2.015.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.2.3.ph11.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i ] ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %.sroa.2.015.i, i64 -1 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !noalias !4766, !noundef !5 ; 3 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %.thread.i, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6u1mgJOKDyY_13rust_analyzer.exit17.i.i.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6u1mgJOKDyY_13rust_analyzer.exit17.i.i.i: ; preds = %bb.b
  %i.f = icmp ne ptr %0, %i.c
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds i8, ptr %.sroa.2.015.i, i64 -2 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !noalias !4766, !noundef !5 ; 3 uses
  %i.i = and i8 %i.h, 31
  %i.j = zext nneg i8 %i.i to i32
  %i.k = icmp slt i8 %i.h, -64
  br i1 %i.k, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6u1mgJOKDyY_13rust_analyzer.exit19.i.i.i, label %bb.d

.thread.i:                                        ; preds = %bb.b
  %i.l = zext nneg i8 %i.d to i32
  %i.m = load i64, ptr %i.a, align 8, !alias.scope !4767, !noundef !5 ; 2 uses
  %i.n = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.n)
  br label %bb.f

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6u1mgJOKDyY_13rust_analyzer.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6u1mgJOKDyY_13rust_analyzer.exit17.i.i.i
  %i.o = icmp ne ptr %0, %i.g
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds i8, ptr %.sroa.2.015.i, i64 -3 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !noalias !4766, !noundef !5 ; 3 uses
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i32
  %i.t = icmp slt i8 %i.q, -64
  br i1 %i.t, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6u1mgJOKDyY_13rust_analyzer.exit21.i.i.i, label %bb.c

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6u1mgJOKDyY_13rust_analyzer.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6u1mgJOKDyY_13rust_analyzer.exit19.i.i.i
  %i.u = icmp ne ptr %0, %i.p
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds i8, ptr %.sroa.2.015.i, i64 -4 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !noalias !4766, !noundef !5
  %i.x = and i8 %i.w, 7
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 6
  %i.aa = and i8 %i.q, 63
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.z, %i.ab
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6u1mgJOKDyY_13rust_analyzer.exit21.i.i.i, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6u1mgJOKDyY_13rust_analyzer.exit19.i.i.i
  %.sroa.2.2.i = phi ptr [ %i.v, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6u1mgJOKDyY_13rust_analyzer.exit21.i.i.i ], [ %i.p, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6u1mgJOKDyY_13rust_analyzer.exit19.i.i.i ]
  %.sroa.010.1.i.i.i = phi i32 [ %i.ac, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6u1mgJOKDyY_13rust_analyzer.exit21.i.i.i ], [ %i.s, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6u1mgJOKDyY_13rust_analyzer.exit19.i.i.i ]
  %i.ad = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6
  %i.ae = and i8 %i.h, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6u1mgJOKDyY_13rust_analyzer.exit17.i.i.i
  %.sroa.2.1.i = phi ptr [ %.sroa.2.2.i, %bb.c ], [ %i.g, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6u1mgJOKDyY_13rust_analyzer.exit17.i.i.i ] ; 4 uses
  %.sroa.010.0.i.i.i = phi i32 [ %i.ag, %bb.c ], [ %i.j, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6u1mgJOKDyY_13rust_analyzer.exit17.i.i.i ] ; 7 uses
  %i.ah = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6
  %i.ai = and i8 %i.d, 63                         ; 2 uses
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = load i64, ptr %i.a, align 8, !alias.scope !4767, !noundef !5 ; 6 uses
  %i.am = icmp sgt i64 %i.al, -1
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp samesign ult i32 %.sroa.010.0.i.i.i, 2
  br i1 %i.an, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp samesign ult i32 %.sroa.010.0.i.i.i, 32 ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.010.0.i.i.i, 1024 ; 2 uses
  %..i.i.i.i = select i1 %i.ap, i64 3, i64 4
  %.sroa.0.0.ph.i.i.i.i = select i1 %i.ao, i64 2, i64 %..i.i.i.i
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.sroa.0.0.ph.i.i.i.i)
  %i.aq = load ptr, ptr %i.b, align 8, !alias.scope !4767, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.al ; 9 uses
  %i.as = or disjoint i8 %i.ai, -128              ; 3 uses
  %i.at = trunc i32 %.sroa.010.0.i.i.i to i8      ; 2 uses
  %i.au = and i8 %i.at, 63
  %i.av = or disjoint i8 %i.au, -128              ; 2 uses
  %i.aw = lshr i32 %.sroa.010.0.i.i.i, 6
  %i.ax = trunc i32 %i.aw to i8                   ; 2 uses
  %i.ay = and i8 %i.ax, 63
  %i.az = or disjoint i8 %i.ay, -128
  %i.ba = lshr i32 %.sroa.010.0.i.i.i, 12
  %i.bb = trunc nuw nsw i32 %i.ba to i8
  %i.bc = or disjoint i8 %i.bb, -16
  br i1 %i.ao, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d, %.thread.i
  %i.bd = phi i64 [ %i.m, %.thread.i ], [ %i.al, %bb.d ] ; 2 uses
  %spec.select.i.ph13.i = phi i32 [ %i.l, %.thread.i ], [ %i.ak, %bb.d ]
  %.sroa.2.3.ph12.i = phi ptr [ %i.c, %.thread.i ], [ %.sroa.2.1.i, %bb.d ]
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1)
  %i.be = load ptr, ptr %i.b, align 8, !alias.scope !4767, !nonnull !5, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  %i.bg = trunc nuw nsw i32 %spec.select.i.ph13.i to i8
  store i8 %i.bg, ptr %i.bf, align 1
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i

bb.g:                                             ; preds = %bb.e
  %i.bh = or disjoint i8 %i.at, -64
  store i8 %i.bh, ptr %i.ar, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store i8 %i.as, ptr %i.bi, align 1
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i

bb.h:                                             ; preds = %bb.e
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = or disjoint i8 %i.ax, -32
  store i8 %i.bj, ptr %i.ar, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store i8 %i.av, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i8 %i.as, ptr %i.bl, align 1
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i

bb.j:                                             ; preds = %bb.h
  store i8 %i.bc, ptr %i.ar, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store i8 %i.az, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i8 %i.av, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  store i8 %i.as, ptr %i.bo, align 1
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %i.bp = phi i64 [ %i.bd, %bb.f ], [ %i.al, %bb.g ], [ %i.al, %bb.i ], [ %i.al, %bb.j ]
  %.sroa.2.3.ph11.i = phi ptr [ %.sroa.2.3.ph12.i, %bb.f ], [ %.sroa.2.1.i, %bb.g ], [ %.sroa.2.1.i, %bb.i ], [ %.sroa.2.1.i, %bb.j ] ; 3 uses
  %.sroa.0.03.i.i.i.i = phi i64 [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.i ], [ 4, %bb.j ]
  %i.bq = add nuw i64 %.sroa.0.03.i.i.i.i, %i.bp
  store i64 %i.bq, ptr %i.a, align 8, !alias.scope !4767
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.3.ph11.i) ]
  %.not.i.i = icmp eq ptr %0, %.sroa.2.3.ph11.i
  br i1 %.not.i.i, label %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtBL_8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB2E_6StringINtNtBL_7collect6ExtendcE6extendINtNtNtBN_8adapters3rev3RevB3_EE0E0ECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtBL_8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB2E_6StringINtNtBL_7collect6ExtendcE6extendINtNtNtBN_8adapters3rev3RevB3_EE0E0ECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2W_IBaX_INtNtB7_6copied6CopiedIB4a_NtBgv_10GenericArgEENCNvBgr_5types0ENCNvMs1x_Bhq_NtBhq_4Type14type_arguments0EIBi6_IB2W_IBiL_IB4a_NtNtBej_2ty2TyEENCBjN_s_0EINtNtNtB9_7sources5empty5EmptyBjY_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBjb_Kja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !4777 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !23, !noundef !5
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4778)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !4779
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !24, !alias.scope !4778, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !4780
  %i.m = load <2 x i64>, ptr %i.j, align 8, !noalias !4780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4779
  store ptr %i.d, ptr %i.c, align 8, !noalias !4781
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4781
  store ptr %i.c, ptr %i.b, align 8, !noalias !4782
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBaM_Kja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4782
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4782
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtBW_3MapINtNtBY_10filter_map9FilterMapINtNtBY_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB7g_10GenericArgEENCNvB7c_5types0ENCNvMs1x_B8b_NtB8b_4Type14type_arguments0EIB8R_IB9m_IBa0_IBam_NtNtB3V_2ty2TyEENCBbn_s_0EINtNtNtB10_7sources5empty5EmptyBby_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBaL_Kja_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !4783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4782
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBaM_Kja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBaM_Kja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4781
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBaM_Kja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !4781, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1U_NtBbg_10GenericArgEENCNvBbc_5types0ENCNvMs1x_Bcb_NtBcb_4Type14type_arguments0EIBcR_IBO_IBdU_IB1U_NtNtB94_2ty2TyEENCBeW_s_0EINtNtNtBa_7sources5empty5EmptyBf7_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBek_Kja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4779
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !4778, !noundef !5
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !4779, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1y_NtBaT_10GenericArgEENCNvBaP_5types0ENCNvMs1x_BbO_NtBbO_4Type14type_arguments0EIBcu_IBO_IBdx_IB1y_NtNtB8H_2ty2TyEENCBez_s_0EINtNtNtBa_7sources5empty5EmptyBeK_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBdX_Kja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !5
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_IBY_INtNtB8_6copied6CopiedIB2k_NtBbO_10GenericArgEENCNvBbK_5types0ENCNvMs1x_BcJ_NtBcJ_4Type14type_arguments0EIBdp_IBO_IBe2_IB2k_NtNtB9C_2ty2TyEENCBf4_s_0EINtNtNtBa_7sources5empty5EmptyBff_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBes_Kja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2W_IBaX_INtNtB7_6copied6CopiedIB4a_NtBgv_10GenericArgEENCNvBgr_5types0ENCNvMs1x_Bhq_NtBhq_4Type14type_arguments0EIBi6_IB2W_IBiL_IB4a_NtNtBej_2ty2TyEENCBjN_s_0EINtNtNtB9_7sources5empty5EmptyBjY_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBjb_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !4793 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !23, !noundef !5
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4794)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !4795
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !24, !alias.scope !4794, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !4796
  %i.m = load <2 x i64>, ptr %i.j, align 8, !noalias !4796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4795
  store ptr %i.d, ptr %i.c, align 8, !noalias !4797
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4797
  store ptr %i.c, ptr %i.b, align 8, !noalias !4798
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBaM_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4798
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4798
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtBW_3MapINtNtBY_10filter_map9FilterMapINtNtBY_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB7g_10GenericArgEENCNvB7c_5types0ENCNvMs1x_B8b_NtB8b_4Type14type_arguments0EIB8R_IB9m_IBa0_IBam_NtNtB3V_2ty2TyEENCBbn_s_0EINtNtNtB10_7sources5empty5EmptyBby_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBaL_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !4799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4798
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBaM_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBaM_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4797
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBaM_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !4797, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1U_NtBbg_10GenericArgEENCNvBbc_5types0ENCNvMs1x_Bcb_NtBcb_4Type14type_arguments0EIBcR_IBO_IBdU_IB1U_NtNtB94_2ty2TyEENCBeW_s_0EINtNtNtBa_7sources5empty5EmptyBf7_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBek_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4795
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !4794, !noundef !5
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !4795, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1y_NtBaT_10GenericArgEENCNvBaP_5types0ENCNvMs1x_BbO_NtBbO_4Type14type_arguments0EIBcu_IBO_IBdx_IB1y_NtNtB8H_2ty2TyEENCBez_s_0EINtNtNtBa_7sources5empty5EmptyBeK_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBdX_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !5
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_IBY_INtNtB8_6copied6CopiedIB2k_NtBbO_10GenericArgEENCNvBbK_5types0ENCNvMs1x_BcJ_NtBcJ_4Type14type_arguments0EIBdp_IBO_IBe2_IB2k_NtNtB9C_2ty2TyEENCBf4_s_0EINtNtNtBa_7sources5empty5EmptyBff_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBes_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB4a_NtBhq_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBgv_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !4809 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !23, !noundef !5
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4810)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !4811
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !24, !alias.scope !4810, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !4812
  %i.m = load <2 x i64>, ptr %i.j, align 8, !noalias !4812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4811
  store ptr %i.d, ptr %i.c, align 8, !noalias !4813
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4813
  store ptr %i.c, ptr %i.b, align 8, !noalias !4814
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_6cloned6ClonedINtNtNtB8_5slice4iter4IterNtB89_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4814
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4814
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtBY_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtB8b_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7g_10GenericArgKja_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !4815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4814
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_6cloned6ClonedINtNtNtB8_5slice4iter4IterNtB89_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_6cloned6ClonedINtNtNtB8_5slice4iter4IterNtB89_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4813
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_6cloned6ClonedINtNtNtB8_5slice4iter4IterNtB89_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB42_NtBcT_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !4813, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_6cloned6ClonedIB1U_NtBcb_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbg_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB42_NtBcT_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB42_NtBcT_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4811
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB42_NtBcT_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !4810, !noundef !5
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6Clon, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !4811, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_6cloned6ClonedIB1y_NtBbO_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBaT_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6Clon

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6Clon: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6Clon, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !5
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_6cloned6ClonedIB2k_NtBcJ_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbO_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB4a_NtBhq_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBgv_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !4825 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !23, !noundef !5
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4826)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !4827
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !24, !alias.scope !4826, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !4828
  %i.m = load <2 x i64>, ptr %i.j, align 8, !noalias !4828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4827
  store ptr %i.d, ptr %i.c, align 8, !noalias !4829
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4829
  store ptr %i.c, ptr %i.b, align 8, !noalias !4830
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_6cloned6ClonedINtNtNtB8_5slice4iter4IterNtB89_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4830
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4830
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtBY_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtB8b_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7g_10GenericArgEE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !4831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4830
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_6cloned6ClonedINtNtNtB8_5slice4iter4IterNtB89_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_6cloned6ClonedINtNtNtB8_5slice4iter4IterNtB89_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4829
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_6cloned6ClonedINtNtNtB8_5slice4iter4IterNtB89_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB42_NtBcT_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !4829, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_6cloned6ClonedIB1U_NtBcb_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbg_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB42_NtBcT_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB42_NtBcT_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4827
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB42_NtBcT_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !4826, !noundef !5
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6Clon, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !4827, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_6cloned6ClonedIB1y_NtBbO_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBaT_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6Clon

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6Clon: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6Clon, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !5
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_6cloned6ClonedIB2k_NtBcJ_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbO_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBhq_4TypeEE0IBi7_NtBgv_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !4841 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !23, !noundef !5
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4842)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !4843
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !24, !alias.scope !4842, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !4844
  %i.m = load <2 x i64>, ptr %i.j, align 8, !noalias !4844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4843
  store ptr %i.d, ptr %i.c, align 8, !noalias !4845
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4845
  store ptr %i.c, ptr %i.b, align 8, !noalias !4846
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0IB8Q_NtB7e_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4846
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4846
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB8b_4TypeEE0IB8S_NtB7g_10GenericArgEE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !4847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4846
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0IB8Q_NtB7e_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0IB8Q_NtB7e_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4845
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0IB8Q_NtB7e_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0IBdA_NtBbY_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !4845, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcb_4TypeEE0IBcS_NtBbg_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0IBdA_NtBbY_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0IBdA_NtBbY_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4843
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0IBdA_NtBbY_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !4842, !noundef !5
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !4843, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbO_4TypeEE0IBcv_NtBaT_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !5
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcJ_4TypeEE0IBdq_NtBbO_10GenericArgEE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBhq_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBgv_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !4857 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !23, !noundef !5
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4858)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !4859
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !24, !alias.scope !4858, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !4860
  %i.m = load <2 x i64>, ptr %i.j, align 8, !noalias !4860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4859
  store ptr %i.d, ptr %i.c, align 8, !noalias !4861
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4861
  store ptr %i.c, ptr %i.b, align 8, !noalias !4862
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4862
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4862
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB8b_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7g_10GenericArgKja_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !4863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4862
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4861
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !4861, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcb_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbg_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4859
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !4858, !noundef !5
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !4859, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbO_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBaT_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !5
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcJ_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbO_10GenericArgKja_EE0E0E0E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtB7_3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringB2c_ENCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB32_12global_state11GlobalState17switch_workspacessc_00EIB15_IB1l_B2c_INtNtBb_6option6OptionB2c_EENCB2V_s_0EEINtB4R_8IntoIterTB2c_B4O_EEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB5T_8for_each4callB5H_NCINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7a_7HashMapB2c_B4O_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB5X_7collect6ExtendB5H_E6extendBO_E0E0EB32_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !4880 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [80 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.g, align 8
  %i.h = load i64, ptr %0, align 8, !range !11, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4881)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8, !noalias !4882
  %i.k = load ptr, ptr %i.f, align 8, !alias.scope !4881, !noundef !5
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringB1P_ENCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB2F_12global_state11GlobalState17switch_workspacessc_00ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvNvB4d_8for_each4callTB1P_INtNtBc_6option6OptionB1P_EENCINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5Z_7HashMapB1P_B5n_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB4h_7collect6ExtendB5i_E6extendINtNtB8_5chain5ChainIB89_BN_IBO_IBY_B1P_B5n_ENCB2y_s_0EEINtB5q_8IntoIterB5i_EEE0E0EB2F_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc unwind label %.body

.noexc:                                           ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !4881, !noundef !5
  %.not2.i = icmp eq ptr %i.m, null
  br i1 %.not2.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.n = load ptr, ptr %i.d, align 8, !noalias !4882, !nonnull !5, !align !6, !noundef !5
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBc_6option6OptionB1P_EENCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB32_12global_state11GlobalState17switch_workspacessc_0s_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4C_8for_each4callTB1P_B2r_ENCINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB60_7HashMapB1P_B2r_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB4G_7collect6ExtendB5G_E6extendINtNtB8_5chain5ChainIB8a_IBO_IBY_B1P_B1P_ENCB2V_0EBN_EINtB2u_8IntoIterB5G_EEE0E0EB32_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.f unwind label %.body

bb.e:                                             ; preds = %bb.f, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !9, !noundef !5
  %.not = icmp eq i64 %i.p, -2
  br i1 %.not, label %bb.m, label %bb.g

.body:                                            ; preds = %bb.c, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !9, !noundef !5
  %.not14 = icmp eq i64 %i.s, -2
  br i1 %.not14, label %.body.thread, label %bb.n

bb.f:                                             ; preds = %.noexc, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  %i.t = load ptr, ptr %i.g, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !4883)
  %.sroa.03.0.copyload49.i = load i64, ptr %i.e, align 8, !alias.scope !4884 ; 2 uses
  store i64 -1, ptr %i.e, align 8, !alias.scope !4885
  %.not10.i = icmp eq i64 %.sroa.03.0.copyload49.i, -1
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i, %.lr.ph.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.y, %bb.j ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringINtBE_6OptionB10_EEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e) #45
          to label %.body.thread unwind label %bb.l

.lr.ph.i:                                         ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4886
  store i64 %.sroa.03.0.copyload49.i, ptr %i.c, align 8, !noalias !4887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4886
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4886
  invoke void @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBN_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc.i unwind label %bb.h, !noalias !4883

.noexc.i:                                         ; preds = %.lr.ph.i
  %i.x = load i64, ptr %i.a, align 8, !range !9, !alias.scope !4888, !noalias !4886, !noundef !5
  %switch.i.i.i.i = icmp ugt i64 %i.x, -3
  br i1 %switch.i.i.i.i, label %._crit_edge.i.loopexit, label %bb.i

bb.i:                                             ; preds = %.noexc.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i unwind label %bb.j, !noalias !4889

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.k, !noalias !4889

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !4889
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %._crit_edge.i.loopexit unwind label %bb.h, !noalias !4883

._crit_edge.i.loopexit:                           ; preds = %.noexc.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4886
  store i64 -1, ptr %i.e, align 8, !alias.scope !4885
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.g
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringINtBE_6OptionB10_EEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.m

bb.l:                                             ; preds = %.body.i
  %i.aa = landingpad { ptr, i32 }
end_hunk_0

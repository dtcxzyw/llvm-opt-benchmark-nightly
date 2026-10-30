Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/colored-278a9c439e67f658.colored.c21c1be26a5a82da-cgu.01?download=true
inline.NumInlined: 69
inline.NumDeleted: 47
begin_hunk_0_@_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1C_3str4iter12MatchIndicesReENCNvMCsgFeZUGsc24U_7coloredNtB2X_13ColoredString28escape_inner_reset_sequences0EE9from_iterB2X_:bb.a
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1k_3str4iter12MatchIndicesReENCNvMCsgFeZUGsc24U_7coloredNtB2F_13ColoredString28escape_inner_reset_sequences0EE11spec_extendB2F_.exit

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ae, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1k_3str4iter12MatchIndicesReENCNvMCsgFeZUGsc24U_7coloredNtB2F_13ColoredString28escape_inner_reset_sequences0EE11spec_extendB2F_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc7, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecjE7reserveCsgFeZUGsc24U_7colored.exit.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgFeZUGsc24U_7colored.exit
  %lpad.loopexit.split-lp11 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgFeZUGsc24U_7colored(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsgFeZUGsc24U_7colored.exit unwind label %bb.f

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1k_3str4iter12MatchIndicesReENCNvMCsgFeZUGsc24U_7coloredNtB2F_13ColoredString28escape_inner_reset_sequences0EE11spec_extendB2F_.exit: ; preds = %.noexc8, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.e

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsgFeZUGsc24U_7colored.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp11
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter12MatchIndicesReENCNvMCsgFeZUGsc24U_7coloredNtB1B_13ColoredString28escape_inner_reset_sequences0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.b = load i64, ptr %0, align 8, !range !6, !alias.scope !104, !noundef !3
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.c, label %bb.k, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !range !105, !alias.scope !106, !noundef !3
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %.promoted.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !104 ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !106, !nonnull !3, !noundef !3 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !106, !noundef !3 ; 15 uses
  %.promoted26.i.i.i = load i8, ptr %i.h, align 8, !alias.scope !106 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.m = trunc nuw i8 %.promoted26.i.i.i to i1    ; 2 uses
  %i.n = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i.peel.i.i = icmp ult i64 %.promoted.i.i.i, %i.l
  br i1 %.not.i.i.i.peel.i.i, label %bb.c, label %.split.i.i.i.peel.i.i

.split.i.i.i.peel.i.i:                            ; preds = %bb.b
  %i.o = icmp eq i64 %.promoted.i.i.i, %i.l
  br i1 %i.o, label %bb.d, label %.loopexit.i.i

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %.promoted.i.i.i
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !108, !noalias !109, !noundef !3
  %i.r = icmp sgt i8 %i.q, -65
  br i1 %i.r, label %bb.d, label %.loopexit.i.i

bb.d:                                             ; preds = %bb.c, %.split.i.i.i.peel.i.i, %.lr.ph.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.promoted.i.i.i ; 4 uses
  %i.t = icmp samesign eq i64 %.promoted.i.i.i, %i.l
  br i1 %i.t, label %.loopexit19.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i8, ptr %i.s, align 1, !noalias !110, !noundef !3 ; 5 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.f, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit12.i.i.i.peel.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit12.i.i.i.peel.i.i: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.x = and i8 %i.u, 31
  %i.y = zext nneg i8 %i.x to i32                 ; 3 uses
  %i.z = add nuw nsw i64 %.promoted.i.i.i, 1
  %i.aa = icmp samesign ne i64 %i.z, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i8, ptr %i.w, align 1, !noalias !110, !noundef !3
  %i.ac = shl nuw nsw i32 %i.y, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = icmp samesign ugt i8 %i.u, -33
  br i1 %i.ag, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit14.i.i.i.peel.i.i, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit14.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit12.i.i.i.peel.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ai = add nuw nsw i64 %.promoted.i.i.i, 2
  %i.aj = icmp samesign ne i64 %i.ai, %i.l
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i8, ptr %i.ah, align 1, !noalias !110, !noundef !3
  %i.al = shl nuw nsw i32 %i.ae, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an            ; 2 uses
  %i.ap = shl nuw nsw i32 %i.y, 12
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = icmp samesign ugt i8 %i.u, -17
  br i1 %i.ar, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit16.i.i.i.peel.i.i, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit16.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit14.i.i.i.peel.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.at = add nuw nsw i64 %.promoted.i.i.i, 3
  %i.au = icmp samesign ne i64 %i.at, %i.l
  tail call void @llvm.assume(i1 %i.au)
  %i.av = load i8, ptr %i.as, align 1, !noalias !110, !noundef !3
  %i.aw = shl nuw nsw i32 %i.y, 18
  %i.ax = and i32 %i.aw, 1835008
  %i.ay = shl nuw nsw i32 %i.ao, 6
  %i.az = and i8 %i.av, 63
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = or disjoint i32 %i.bb, %i.ax
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bd = zext nneg i8 %i.u to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit16.i.i.i.peel.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit14.i.i.i.peel.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit12.i.i.i.peel.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i = phi i32 [ %i.aq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit14.i.i.i.peel.i.i ], [ %i.bc, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit16.i.i.i.peel.i.i ], [ %i.af, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit12.i.i.i.peel.i.i ], [ %i.bd, %bb.f ] ; 4 uses
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 1114112
  tail call void @llvm.assume(i1 %i.be)
  br i1 %i.m, label %.sink.split.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 128
  br i1 %i.bf, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 2048
  br i1 %i.bg, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 65536
  %..i.i.peel.i.i = select i1 %i.bh, i64 3, i64 4
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !104, !noundef !3
  %i.bk = icmp eq i64 %i.bj, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !104, !nonnull !3, !noundef !3 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !104, !noundef !3 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !104, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !104, !noundef !3 ; 2 uses
  br i1 %i.bk, label %bb.s, label %bb.t

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.i.peel.i.i = phi i64 [ 2, %bb.i ], [ %..i.i.peel.i.i, %bb.j ], [ 1, %bb.h ]
  %i.bt = add i64 %.sroa.01.0.i.i.peel.i.i, %.promoted.i.i.i ; 16 uses
  store i64 %i.bt, ptr %i.d, align 8, !alias.scope !111
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i.i.i = icmp ult i64 %i.bt, %i.l
  br i1 %.not.i.i.i.i.i, label %bb.n, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.m
  %i.bv = icmp eq i64 %i.bt, %i.l
  br i1 %i.bv, label %bb.o, label %.loopexit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bt
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !108, !noalias !113, !noundef !3
  %i.by = icmp sgt i8 %i.bx, -65
  br i1 %i.by, label %bb.o, label %.loopexit.i.i

bb.o:                                             ; preds = %bb.n, %.split.i.i.i.i.i, %bb.l
  %i.bz = icmp samesign eq i64 %i.bt, %i.l
  br i1 %i.bz, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bt
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !114, !noundef !3 ; 3 uses
  %i.cc = icmp sgt i8 %i.cb, -1
  br i1 %i.cc, label %.sink.split.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit12.i.i.i.i.i: ; preds = %bb.p
  %i.cd = add nuw nsw i64 %i.bt, 1
  %i.ce = icmp samesign ne i64 %i.cd, %i.l
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i8 %i.cb, -33
  br i1 %i.cf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit14.i.i.i.i.i, label %.sink.split.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit12.i.i.i.i.i
  %i.cg = add nuw nsw i64 %i.bt, 2
  %i.ch = icmp samesign ne i64 %i.cg, %i.l
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = icmp samesign ugt i8 %i.cb, -17
  br i1 %i.ci, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit16.i.i.i.i.i, label %.sink.split.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit14.i.i.i.i.i
  %i.cj = add nuw nsw i64 %i.bt, 3
  %i.ck = icmp samesign ne i64 %i.cj, %i.l
  tail call void @llvm.assume(i1 %i.ck)
  br label %.sink.split.i.i

.loopexit.i.i:                                    ; preds = %bb.n, %.split.i.i.i.i.i, %bb.c, %.split.i.i.i.peel.i.i
  %.lcssa15.i.i = phi i8 [ %.promoted26.i.i.i, %.split.i.i.i.peel.i.i ], [ %.promoted26.i.i.i, %bb.c ], [ 1, %.split.i.i.i.i.i ], [ 1, %bb.n ]
  %.lcssa12.i.i = phi i64 [ %.promoted.i.i.i, %.split.i.i.i.peel.i.i ], [ %.promoted.i.i.i, %bb.c ], [ %i.bt, %.split.i.i.i.i.i ], [ %i.bt, %bb.n ]
  %i.cl = xor i8 %.lcssa15.i.i, 1
  store i8 %i.cl, ptr %i.h, align 8, !alias.scope !106
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %.lcssa12.i.i, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13, !noalias !113
  unreachable

.loopexit19.i.i:                                  ; preds = %bb.d
  %i.cm = xor i8 %.promoted26.i.i.i, 1
  store i8 %i.cm, ptr %i.h, align 8, !alias.scope !106
  br i1 %i.m, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit19.i.i
  store i8 1, ptr %i.e, align 2, !alias.scope !106
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i

.sink.split.i.i:                                  ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit12.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit14.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit16.i.i.i.i.i, %bb.p, %bb.g
  %.lcssa14.i.i = phi i64 [ %.promoted.i.i.i, %bb.g ], [ %i.bt, %bb.p ], [ %i.bt, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit16.i.i.i.i.i ], [ %i.bt, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit14.i.i.i.i.i ], [ %i.bt, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFeZUGsc24U_7colored.exit12.i.i.i.i.i ]
  store i8 0, ptr %i.h, align 8, !alias.scope !106
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i.i, %.loopexit19.i.i, %bb.o
  %1 = phi i64 [ %.lcssa14.i.i, %.sink.split.i.i ], [ %.promoted.i.i.i, %.loopexit19.i.i ], [ %i.l, %bb.o ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.cn, align 8, !alias.scope !102, !noalias !101
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i: ; preds = %bb.r, %bb.q, %.preheader.i.i.i
  %storemerge.i.i.i = phi i64 [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader.i.i.i ]
  store i64 %storemerge.i.i.i, ptr %i.a, align 8, !alias.scope !102, !noalias !101
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.s:                                             ; preds = %bb.k
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgFeZUGsc24U_7colored(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %i.bo, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef %i.bs, i1 noundef zeroext true), !noalias !115
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.t:                                             ; preds = %bb.k
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgFeZUGsc24U_7colored(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %i.bo, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef %i.bs, i1 noundef zeroext false), !noalias !115
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %bb.t, %bb.s, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i
  %i.co = load i64, ptr %i.a, align 8, !range !6, !noalias !101, !noundef !3 ; 2 uses
  %i.cp = trunc nuw i64 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cr = load i64, ptr %i.cq, align 8
  %.sroa.0.0610 = select i1 %i.cp, i64 %i.cr, i64 undef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101
  %i.cs = insertvalue { i64, i64 } poison, i64 %i.co, 0
  %i.ct = insertvalue { i64, i64 } %i.cs, i64 %.sroa.0.0610, 1
  ret { i64, i64 } %i.ct
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhEE11spec_extendCsgFeZUGsc24U_7colored(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !120, !noundef !3 ; 5 uses
  %i.f = load i64, ptr %0, align 8, !range !4, !alias.scope !120, !noundef !3
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgFeZUGsc24U_7colored.exit.thread.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgFeZUGsc24U_7colored.exit.i, !prof !5

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgFeZUGsc24U_7colored.exit.thread.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgFeZUGsc24U_7colored(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.c, i64 noundef 1, i64 noundef 1)
  %i.i = load i64, ptr %i.d, align 8, !alias.scope !121, !noundef !3 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.b

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgFeZUGsc24U_7colored.exit.i: ; preds = %bb.a
  %i.k = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.k)
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsgFeZUGsc24U_7colored.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgFeZUGsc24U_7colored.exit.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgFeZUGsc24U_7colored.exit.thread.i
  %i.l = phi i64 [ %i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgFeZUGsc24U_7colored.exit.thread.i ], [ %i.e, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgFeZUGsc24U_7colored.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !121, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %1, i64 %i.c, i1 false)
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !121
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsgFeZUGsc24U_7colored.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsgFeZUGsc24U_7colored.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgFeZUGsc24U_7colored.exit.i, %bb.b
  %i.p = phi i64 [ %.pre.i, %bb.b ], [ %i.e, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgFeZUGsc24U_7colored.exit.i ]
  %i.q = add i64 %i.p, %i.c
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !121
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1I_5slice4iter4IterNtNtCsgFeZUGsc24U_7colored5style6StylesENCNvMs7_B2Q_NtB2Q_5Style6to_str0EE9from_iterB2S_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgFeZUGsc24U_7colored(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.g = load i64, ptr %i.b, align 8, !range !6, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !7, !noundef !3 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterNtNtCsgFeZUGsc24U_7colored5style6StylesENCNvMs7_B2f_NtB2f_5Style6to_str0EEB2h_.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #13
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterNtNtCsgFeZUGsc24U_7colored5style6StylesENCNvMs7_B2f_NtB2f_5Style6to_str0EEB2h_.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.j, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !126
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %i.q, align 8, !noalias !126
  store ptr %i.p, ptr %i.a, align 8, !noalias !126
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.r, align 8, !noalias !126
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsgFeZUGsc24U_7colored5style6StylesENCNvMs7_B1p_NtB1p_5Style6to_str0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2y_8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3M_3VecB3B_E14extend_trustedBN_E0E0EB1r_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterNtNtCsgFeZUGsc24U_7colored5style6StylesENCNvMs7_B2f_NtB2f_5Style6to_str0EEB2h_.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgFeZUGsc24U_7colored(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsgFeZUGsc24U_7colored.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecReE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterNtNtCsgFeZUGsc24U_7colored5style6StylesENCNvMs7_B2f_NtB2f_5Style6to_str0EEB2h_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsgFeZUGsc24U_7colored.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsgFeZUGsc24U_7colored5style6StylesENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgFeZUGsc24U_7colored(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgFeZUGsc24U_7colored(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgFeZUGsc24U_7colored(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsgFeZUGsc24U_7colored5style6StylesENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgFeZUGsc24U_7colored(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgFeZUGsc24U_7colored(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtCsgFeZUGsc24U_7colored5styleNtBT_6Styles7from_u80INtB7_5FnMutTRRThB1n_EEE8call_mutBV_(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsgFeZUGsc24U_7colored5style6StylesENCNvMs7_B1p_NtB1p_5Style6to_str0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2y_8for_each4callReNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3M_3VecB3B_E14extend_trustedBN_E0E0EB1r_(ptr noundef nonnull, ptr noundef, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgFeZUGsc24U_7colored(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1
end_hunk_0

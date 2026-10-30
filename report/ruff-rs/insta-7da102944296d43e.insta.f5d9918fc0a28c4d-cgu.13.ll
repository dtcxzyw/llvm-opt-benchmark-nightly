Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/insta-7da102944296d43e.insta.f5d9918fc0a28c4d-cgu.13?download=true
inline.NumInlined: 648
inline.NumDeleted: 334
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE6removeCsl6EuCK7xub1_5insta:bb.a
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE10try_removeCsl6EuCK7xub1_5insta.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE10try_removeCsl6EuCK7xub1_5insta.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE10try_removeCsl6EuCK7xub1_5insta.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 230584300921369396
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE8truncateCsl6EuCK7xub1_5insta(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE9next_backCsl6EuCK7xub1_5insta(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !19, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !19, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.e, align 8
  %i.h = tail call fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE9next_backCsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(128) %0) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.u, label %bb.v

bb.d:                                             ; preds = %bb.u, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val6 = load i64, ptr %i.m, align 8, !noundef !5 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.n = load i64, ptr %0, align 8, !range !17, !alias.scope !369, !noundef !5
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.n, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.q = load i8, ptr %i.p, align 2, !range !19, !alias.scope !370, !noundef !5
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread7.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted.i = load i8, ptr %i.s, align 1, !alias.scope !370 ; 2 uses
  %.promoted29.i = load i64, ptr %i.t, align 8, !alias.scope !370 ; 12 uses
  %i.u = trunc nuw i8 %.promoted.i to i1          ; 2 uses
  %i.v = icmp eq i64 %.promoted29.i, 0
  %i.w = xor i8 %.promoted.i, 1                   ; 3 uses
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %.not.i.i.i.peel = icmp ult i64 %.promoted29.i, %.val6
  br i1 %.not.i.i.i.peel, label %bb.e, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %.lr.ph
  %i.x = icmp eq i64 %.promoted29.i, %.val6
  br i1 %i.x, label %bb.f, label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted29.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !372, !noalias !373, !noundef !5
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.peel
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted29.i ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !374, !noundef !5 ; 3 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.i, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit17.i.i.i.peel

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit17.i.i.i.peel: ; preds = %bb.f
  %i.af = icmp ne i64 %.promoted29.i, 1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds i8, ptr %i.ab, i64 -2
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !374, !noundef !5 ; 3 uses
  %i.ai = and i8 %i.ah, 31
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = icmp slt i8 %i.ah, -64
  br i1 %i.ak, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit19.i.i.i.peel, label %bb.h

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit19.i.i.i.peel: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit17.i.i.i.peel
  %i.al = icmp ne i64 %.promoted29.i, 2
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds i8, ptr %i.ab, i64 -3
  %i.an = load i8, ptr %i.am, align 1, !noalias !374, !noundef !5 ; 3 uses
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = icmp slt i8 %i.an, -64
  br i1 %i.aq, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit21.i.i.i.peel, label %bb.g

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit21.i.i.i.peel: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit19.i.i.i.peel
  %i.ar = icmp ne i64 %.promoted29.i, 3
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.at = load i8, ptr %i.as, align 1, !noalias !374, !noundef !5
  %i.au = and i8 %i.at, 7
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 6
  %i.ax = and i8 %i.an, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit21.i.i.i.peel, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit19.i.i.i.peel
  %.sroa.010.1.i.i.i.peel = phi i32 [ %i.az, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit21.i.i.i.peel ], [ %i.ap, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit19.i.i.i.peel ]
  %i.ba = shl nuw nsw i32 %.sroa.010.1.i.i.i.peel, 6
  %i.bb = and i8 %i.ah, 63
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit17.i.i.i.peel
  %.sroa.010.0.i.i.i.peel = phi i32 [ %i.bd, %bb.g ], [ %i.aj, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit17.i.i.i.peel ]
  %i.be = shl nuw nsw i32 %.sroa.010.0.i.i.i.peel, 6
  %i.bf = and i8 %i.ad, 63
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.be, %i.bg
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.bi = zext nneg i8 %i.ad to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.4.1.i.ph.i.i.peel = phi i32 [ %i.bi, %bb.i ], [ %i.bh, %bb.h ] ; 4 uses
  %i.bj = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bj)
  br i1 %i.u, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel, 128
  br i1 %i.bk, label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel, 2048
  br i1 %i.bl, label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.bm, i64 -3, i64 -4
  br label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel

_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel: ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.01.0.neg.i.i.peel = phi i64 [ -2, %bb.l ], [ %..i.i.peel, %bb.m ], [ -1, %bb.k ]
  %i.bn = add i64 %.sroa.01.0.neg.i.i.peel, %.promoted29.i ; 15 uses
  store i64 %i.bn, ptr %i.t, align 8, !alias.scope !375
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.sink.split, label %.peel.next

bb.n:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !369, !noundef !5
  %i.bs = icmp eq i64 %i.br, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !369, !nonnull !5, !noundef !5 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !369, !noundef !5 ; 2 uses
  br i1 %i.bs, label %bb.s, label %bb.t

.peel.next:                                       ; preds = %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %.not.i.i.i = icmp ult i64 %i.bn, %.val6
  br i1 %.not.i.i.i, label %bb.o, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.peel.next
  %i.bx = icmp eq i64 %i.bn, %.val6
  br i1 %i.bx, label %bb.p, label %.loopexit

bb.o:                                             ; preds = %.peel.next
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bn
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !372, !noalias !377, !noundef !5
  %i.ca = icmp sgt i8 %i.bz, -65
  br i1 %i.ca, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o, %.split.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bn ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -1
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !378, !noundef !5
  %i.ce = icmp sgt i8 %i.cd, -1
  br i1 %i.ce, label %.sink.split, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit17.i.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit17.i.i.i: ; preds = %bb.p
  %i.cf = icmp ne i64 %i.bn, 1
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.cb, i64 -2
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !378, !noundef !5
  %i.ci = icmp slt i8 %i.ch, -64
  br i1 %i.ci, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit19.i.i.i, label %.sink.split

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit17.i.i.i
  %i.cj = icmp ne i64 %i.bn, 2
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds i8, ptr %i.cb, i64 -3
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !378, !noundef !5
  %i.cm = icmp slt i8 %i.cl, -64
  br i1 %i.cm, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit21.i.i.i, label %.sink.split

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit19.i.i.i
  %i.cn = icmp ne i64 %i.bn, 3
  tail call void @llvm.assume(i1 %i.cn)
  br label %.sink.split

.loopexit:                                        ; preds = %bb.o, %.split.i.i.i, %bb.e, %.split.i.i.i.peel
  %.lcssa20 = phi i8 [ %i.w, %.split.i.i.i.peel ], [ %i.w, %bb.e ], [ 0, %.split.i.i.i ], [ 0, %bb.o ]
  %.lcssa17 = phi i64 [ %.promoted29.i, %.split.i.i.i.peel ], [ %.promoted29.i, %bb.e ], [ %i.bn, %.split.i.i.i ], [ %i.bn, %bb.o ]
  store i8 %.lcssa20, ptr %i.s, align 1, !alias.scope !370
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val6, i64 noundef 0, i64 noundef %.lcssa17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22, !noalias !377
  unreachable

._crit_edge:                                      ; preds = %.lr.ph.i
  store i8 %i.w, ptr %i.s, align 1, !alias.scope !370
  br i1 %i.u, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.p, align 2, !alias.scope !370
  br label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread7.i

.sink.split:                                      ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit19.i.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit21.i.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit17.i.i.i, %bb.p, %bb.j, %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel
  %.ph = phi i64 [ 0, %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel ], [ %.promoted29.i, %bb.j ], [ %i.bn, %bb.p ], [ %i.bn, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit17.i.i.i ], [ %i.bn, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit21.i.i.i ], [ %i.bn, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsl6EuCK7xub1_5insta.exit19.i.i.i ]
  store i8 0, ptr %i.s, align 1, !alias.scope !370
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %._crit_edge
  %1 = phi i64 [ 0, %._crit_edge ], [ %.ph, %.sink.split ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.co, align 8, !alias.scope !368
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.cp, align 8, !alias.scope !368
  br label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread7.i

_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread7.i: ; preds = %bb.r, %bb.q, %.preheader.i
  %storemerge.i = phi i64 [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader.i ]
  store i64 %storemerge.i, ptr %i.a, align 8, !alias.scope !368
  br label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

bb.s:                                             ; preds = %bb.n
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher9next_backNtB6_9MatchOnlyECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.bp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val6, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %i.bw, i1 noundef zeroext true)
  br label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

bb.t:                                             ; preds = %bb.n
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher9next_backNtB6_9MatchOnlyECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.bp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val6, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %i.bw, i1 noundef zeroext false)
  br label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit: ; preds = %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread7.i, %bb.s, %bb.t
  %i.cq = load i64, ptr %i.a, align 8, !range !17, !noundef !5
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %bb.w, label %bb.x

bb.u:                                             ; preds = %bb.c
  %i.cs = load i8, ptr %i.b, align 1, !range !19, !noundef !5
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.v, label %bb.d

bb.v:                                             ; preds = %bb.u, %bb.c, %bb.a, %bb.y
  %.sroa.8.0 = phi i64 [ %i.j, %bb.c ], [ %.sroa.8.1, %bb.y ], [ undef, %bb.a ], [ undef, %bb.u ]
  %.sroa.0.0 = phi ptr [ %i.i, %bb.c ], [ %.sroa.0.1, %bb.y ], [ null, %bb.a ], [ null, %bb.u ]
  %i.cu = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.cv = insertvalue { ptr, i64 } %i.cu, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %i.cv

bb.w:                                             ; preds = %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !5
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !5 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !noundef !5
  %i.dc = sub nuw i64 %i.db, %i.cz
  store i64 %i.cx, ptr %i.da, align 8
  br label %bb.y

bb.x:                                             ; preds = %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit
  store i8 1, ptr %i.b, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !noundef !5 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dg = load i64, ptr %i.df, align 8, !noundef !5
  %i.dh = sub nuw i64 %i.dg, %i.de
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sroa.8.1 = phi i64 [ %i.dc, %bb.w ], [ %i.dh, %bb.x ]
  %.pn = phi i64 [ %i.cz, %bb.w ], [ %i.de, %bb.x ]
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.val, i64 %.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCsl6EuCK7xub1_5insta10comparatorNtB2_17DefaultComparatorNtB2_10Comparator13matches_fully(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(272) %1, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(272) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 16              ; 24 uses
  %i.b = alloca [192 x i8], align 16              ; 24 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 3 uses
  %i.e = load i64, ptr %i.c, align 16, !range !10, !noundef !5
  %i.f = icmp eq i64 %i.e, -1
  %i.g = load i64, ptr %i.d, align 16, !range !10
  %i.h = icmp eq i64 %i.g, -1
  %or.cond = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.i = tail call noundef zeroext i1 @_RNvXs5_NtCsl6EuCK7xub1_5insta8snapshotNtB5_16SnapshotContentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
  br i1 %i.i, label %bb.c, label %_RNvXNtCsl6EuCK7xub1_5insta10comparatorNtB2_17DefaultComparatorNtB2_10Comparator7matches.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.k = load i64, ptr %i.j, align 8, !range !10, !alias.scope !388, !noundef !5
  %i.l = icmp ne i64 %i.k, -1                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.n = load i64, ptr %i.m, align 8, !range !10, !alias.scope !389, !noundef !5
  %i.o = icmp ne i64 %i.n, -1                     ; 2 uses
  %i.p = xor i1 %i.l, %i.o
  br i1 %i.p, label %_RNvXNtCsl6EuCK7xub1_5insta10comparatorNtB2_17DefaultComparatorNtB2_10Comparator7matches.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %or.cond.i = and i1 %i.l, %i.o
  br i1 %or.cond.i, label %bb.e, label %_RNvXNtCsl6EuCK7xub1_5insta10comparatorNtB2_17DefaultComparatorNtB2_10Comparator7matches.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !388, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !389, !noundef !5
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %_RNvXNtCsl6EuCK7xub1_5insta10comparatorNtB2_17DefaultComparatorNtB2_10Comparator7matches.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.w = load ptr, ptr %i.v, align 16, !alias.scope !389, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.y = load ptr, ptr %i.x, align 16, !alias.scope !388, !nonnull !5, !noundef !5
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.y, ptr nonnull %i.w, i64 %i.r)
  %i.z = icmp eq i32 %bcmp.i, 0
  br label %_RNvXNtCsl6EuCK7xub1_5insta10comparatorNtB2_17DefaultComparatorNtB2_10Comparator7matches.exit

bb.g:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_RNvMs3_NtCsl6EuCK7xub1_5insta8snapshotNtB5_20TextSnapshotContents14matches_latest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ac = load i8, ptr %i.ab, align 8, !range !19, !noundef !5
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.j, label %_RNvXNtCsl6EuCK7xub1_5insta10comparatorNtB2_17DefaultComparatorNtB2_10Comparator7matches.exit

bb.h:                                             ; preds = %bb.ag, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.cg, %bb.ag ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowNtNtCsl6EuCK7xub1_5insta8snapshot8MetaDataEEB1e_(ptr noalias noundef align 16 dereferenceable(192) %i.b) #23
          to label %bb.al unwind label %bb.ak

bb.i:                                             ; preds = %bb.ah, %_RNvXs8_NtCscdodAO9FK5_5alloc6borrowINtB5_3CowNtNtCsl6EuCK7xub1_5insta8snapshot8MetaDataENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBL_.exit.thread, %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtCsl6EuCK7xub1_5insta8snapshotNtB4_8MetaData20trim_for_persistence(ptr noalias noundef nonnull sret([192 x i8]) align 16 captures(none) dereferenceable(192) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(192) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtCsl6EuCK7xub1_5insta8snapshotNtB4_8MetaData20trim_for_persistence(ptr noalias noundef nonnull sret([192 x i8]) align 16 captures(none) dereferenceable(192) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(192) %2)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !range !9, !alias.scope !390, !noundef !5
  %.not.i = icmp eq i64 %i.ag, -2                 ; 16 uses
  %i.ah = load ptr, ptr %i.b, align 16, !alias.scope !390, !nonnull !5, !align !392 ; 16 uses
  %.sroa.0.0.i3 = select i1 %.not.i, ptr %i.ah, ptr %i.b ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !9, !alias.scope !391, !noundef !5
  %.not2.i = icmp eq i64 %i.aj, -2                ; 16 uses
  %i.ak = load ptr, ptr %i.a, align 16, !alias.scope !391, !nonnull !5, !align !392 ; 16 uses
  %.sroa.01.0.i = select i1 %.not2.i, ptr %i.ak, ptr %i.a ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %.sroa.0.0.i3.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i, ptr %i.ah, ptr %i.b
  %.sroa.0.0.i3.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 72
  %i.al = load i64, ptr %.sroa.0.0.i3.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !range !10, !alias.scope !393, !noalias !391, !noundef !5
  %.not.i.i = icmp eq i64 %i.al, -1
  %.sroa.01.0.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not2.i, ptr %i.ak, ptr %i.a
  %.sroa.01.0.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 72
  %i.am = load i64, ptr %.sroa.01.0.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !range !10, !alias.scope !394, !noalias !390, !noundef !5
  %i.an = icmp eq i64 %i.am, -1                   ; 2 uses
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.an, label %_RNvXs8_NtCscdodAO9FK5_5alloc6borrowINtB5_3CowNtNtCsl6EuCK7xub1_5insta8snapshot8MetaDataENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBL_.exit.thread, label %bb.n

bb.m:                                             ; preds = %bb.k
  br i1 %i.an, label %bb.o, label %_RNvXs8_NtCscdodAO9FK5_5alloc6borrowINtB5_3CowNtNtCsl6EuCK7xub1_5insta8snapshot8MetaDataENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBL_.exit.thread

bb.n:                                             ; preds = %bb.l
  %.sroa.0.0.i3.sroa.sel7.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i, ptr %i.ah, ptr %i.b
  %.sroa.0.0.i3.sroa.sel7.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.sroa.sel7.v.sroa.sel.v.sroa.sel.v, i64 88
  %i.ao = load i64, ptr %.sroa.0.0.i3.sroa.sel7.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !393, !noalias !391, !noundef !5 ; 2 uses
  %.sroa.01.0.i.sroa.sel51.v.sroa.sel.v.sroa.sel.v = select i1 %.not2.i, ptr %i.ak, ptr %i.a
  %.sroa.01.0.i.sroa.sel51.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.sroa.sel51.v.sroa.sel.v.sroa.sel.v, i64 88
  %i.ap = load i64, ptr %.sroa.01.0.i.sroa.sel51.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !394, !noalias !390, !noundef !5
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %.split.i.i, label %_RNvXs8_NtCscdodAO9FK5_5alloc6borrowINtB5_3CowNtNtCsl6EuCK7xub1_5insta8snapshot8MetaDataENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBL_.exit.thread

.split.i.i:                                       ; preds = %bb.n
  %.sroa.01.0.i.sroa.sel54.v.sroa.sel.v.sroa.sel.v = select i1 %.not2.i, ptr %i.ak, ptr %i.a
  %.sroa.01.0.i.sroa.sel54.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.sroa.sel54.v.sroa.sel.v.sroa.sel.v, i64 80
  %i.ar = load ptr, ptr %.sroa.01.0.i.sroa.sel54.v.sroa.sel.v.sroa.sel, align 16, !alias.scope !394, !noalias !390, !nonnull !5, !noundef !5
  %.sroa.0.0.i3.sroa.sel10.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i, ptr %i.ah, ptr %i.b
  %.sroa.0.0.i3.sroa.sel10.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.sroa.sel10.v.sroa.sel.v.sroa.sel.v, i64 80
  %i.as = load ptr, ptr %.sroa.0.0.i3.sroa.sel10.v.sroa.sel.v.sroa.sel, align 16, !alias.scope !393, !noalias !391, !nonnull !5, !noundef !5
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.as, ptr nonnull %i.ar, i64 %i.ao), !noalias !395
  %i.at = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.at, label %bb.o, label %_RNvXs8_NtCscdodAO9FK5_5alloc6borrowINtB5_3CowNtNtCsl6EuCK7xub1_5insta8snapshot8MetaDataENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBL_.exit.thread

bb.o:                                             ; preds = %.split.i.i, %bb.m
  %.sroa.0.0.i3.sroa.sel13.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i, ptr %i.ah, ptr %i.b
  %.sroa.0.0.i3.sroa.sel13.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.sroa.sel13.v.sroa.sel.v.sroa.sel.v, i64 64
  %i.au = load i32, ptr %.sroa.0.0.i3.sroa.sel13.v.sroa.sel.v.sroa.sel, align 16, !range !396, !alias.scope !393, !noalias !391, !noundef !5
  %.sroa.0.0.i3.sroa.sel16.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i, ptr %i.ah, ptr %i.b
  %.sroa.0.0.i3.sroa.sel16.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.sroa.sel16.v.sroa.sel.v.sroa.sel.v, i64 68
  %i.av = trunc nuw i32 %i.au to i1
  %.sroa.01.0.i.sroa.sel57.v.sroa.sel.v.sroa.sel.v = select i1 %.not2.i, ptr %i.ak, ptr %i.a
  %.sroa.01.0.i.sroa.sel57.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.sroa.sel57.v.sroa.sel.v.sroa.sel.v, i64 64
end_hunk_0

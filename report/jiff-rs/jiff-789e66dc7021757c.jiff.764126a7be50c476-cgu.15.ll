Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.15?download=true
inline.NumInlined: 264
inline.NumDeleted: 141
begin_hunk_0_@_RNvMs1_NtNtCsa9sSWSfjDbm_4jiff4util6borrowNtB5_9StringCow10into_owned:bb.a
  %i.h = load i64, ptr %i.a, align 8, !range !6, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !12, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f, !prof !11

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #25
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  store i64 %i.k, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.g
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, ptr } @_RNvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB7_9Extension14write_str_cold(ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %0, i8 noundef range(i8 0, 3) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(24) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i8, ptr %i.b, align 1, !range !8, !noundef !4
  switch i8 %i.c, label %bb.b [
    i8 4, label %bb.c
    i8 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %1, 0
  br i1 %i.d, label %bb.e, label %bb.h

bb.c:                                             ; preds = %bb.a
  switch i8 %1, label %default.unreachable60 [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 2, label %bb.d
  ]

default.unreachable60:                            ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.e = load ptr, ptr %4, align 8, !alias.scope !183, !nonnull !4, !align !13, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !184, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i16, ptr %i.h, align 8, !noalias !184, !noundef !4 ; 2 uses
  %i.j = zext i16 %i.i to i64                     ; 2 uses
  %i.k = sub i64 %i.g, %i.j
  %i.l = icmp ugt i64 %3, %i.k
  br i1 %i.l, label %bb.f, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread67, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.m = tail call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4) #21, !noalias !185 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread, label %bb.g

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread67: ; preds = %bb.g, %bb.e
  %.pre-phi = phi i64 [ %i.ac, %bb.g ], [ %i.j, %bb.e ]
  %i.p = phi i16 [ %i.ab, %bb.g ], [ %i.i, %bb.e ]
  %i.q = phi ptr [ %i.x, %bb.g ], [ %i.e, %bb.e ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !186, !noalias !185, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.pre-phi
  tail call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.t, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !186
  %i.u = trunc i64 %3 to i16
  %i.v = add i16 %i.p, %i.u
  store i16 %i.v, ptr %i.r, align 8, !alias.scope !186
  br label %.loopexit

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread: ; preds = %bb.f
  %i.w = extractvalue { i64, ptr } %i.m, 1
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %4, align 8, !alias.scope !183, !nonnull !4, !align !13, !noundef !4 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !185, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load i16, ptr %i.aa, align 8, !noalias !185, !noundef !4 ; 2 uses
  %i.ac = zext i16 %i.ab to i64                   ; 2 uses
  %i.ad = sub i64 %i.z, %i.ac
  %i.ae = icmp ugt i64 %3, %i.ad
  br i1 %i.ae, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread67

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !183, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !183, !nonnull !4, !align !13, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !4, !noalias !185, !nonnull !4
  %i.al = tail call { i64, ptr } %i.ak(ptr noundef nonnull %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #23, !inline_history !171 ; 2 uses
  %i.am = extractvalue { i64, ptr } %i.al, 0
  %i.an = extractvalue { i64, ptr } %i.al, 1
  br label %.loopexit

bb.h:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.sroa.0.0 = phi i8 [ 1, %bb.d ], [ %1, %bb.b ], [ 1, %bb.a ], [ 2, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 4 uses
  %i.ap = icmp samesign eq i64 %3, 0
  br i1 %i.ap, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.aq = icmp eq i8 %.sroa.0.0, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter10write_char.exit
  %.sroa.0.03553 = phi ptr [ %2, %.lr.ph ], [ %.sroa.0.1.ph, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter10write_char.exit ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.03553, i64 1 ; 3 uses
  %i.av = load i8, ptr %.sroa.0.03553, align 1, !noalias !187, !noundef !4 ; 5 uses
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %bb.j, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit12.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit12.i: ; preds = %bb.i
  %i.ax = and i8 %i.av, 31
  %i.ay = zext nneg i8 %i.ax to i32               ; 3 uses
  %i.az = icmp ne ptr %i.au, %i.ao
  call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.03553, i64 2 ; 3 uses
  %i.bb = load i8, ptr %i.au, align 1, !noalias !187, !noundef !4
  %i.bc = shl nuw nsw i32 %i.ay, 6
  %i.bd = and i8 %i.bb, 63
  %i.be = zext nneg i8 %i.bd to i32               ; 2 uses
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = icmp samesign ugt i8 %i.av, -33
  br i1 %i.bg, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit14.i, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bh = zext nneg i8 %i.av to i32
  br label %bb.k

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit14.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit12.i
  %i.bi = icmp ne ptr %i.ba, %i.ao
  call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.03553, i64 3 ; 3 uses
  %i.bk = load i8, ptr %i.ba, align 1, !noalias !187, !noundef !4
  %i.bl = shl nuw nsw i32 %i.be, 6
  %i.bm = and i8 %i.bk, 63
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bl, %i.bn            ; 2 uses
  %i.bp = shl nuw nsw i32 %i.ay, 12
  %i.bq = or disjoint i32 %i.bo, %i.bp
  %i.br = icmp samesign ugt i8 %i.av, -17
  br i1 %i.br, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit16.i, label %bb.k

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit16.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit14.i
  %i.bs = icmp ne ptr %i.bj, %i.ao
  call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.03553, i64 4
  %i.bu = load i8, ptr %i.bj, align 1, !noalias !187, !noundef !4
  %i.bv = shl nuw nsw i32 %i.ay, 18
  %i.bw = and i32 %i.bv, 1835008
  %i.bx = shl nuw nsw i32 %i.bo, 6
  %i.by = and i8 %i.bu, 63
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bx, %i.bz
  %i.cb = or disjoint i32 %i.ca, %i.bw
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit12.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit16.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit14.i
  %.sroa.0.1.ph = phi ptr [ %i.ba, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit12.i ], [ %i.bj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit14.i ], [ %i.bt, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit16.i ], [ %i.au, %bb.j ] ; 2 uses
  %.sroa.4.0.i33.ph = phi i32 [ %i.bf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit12.i ], [ %i.bq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit14.i ], [ %i.cb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit16.i ], [ %i.bh, %bb.j ] ; 7 uses
  %i.cc = icmp samesign ult i32 %.sroa.4.0.i33.ph, 1114112
  call void @llvm.assume(i1 %i.cc)
  br i1 %i.aq, label %bb.m, label %bb.l

.loopexit:                                        ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter10write_char.exit, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread67, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit, %bb.h, %5
  %.sroa.4.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread ], [ %6, %5 ], [ undef, %bb.h ], [ undef, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread67 ], [ %i.an, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit ], [ undef, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter10write_char.exit ]
  %.sroa.06.0 = phi i64 [ 1, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread ], [ 1, %5 ], [ 0, %bb.h ], [ 0, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread67 ], [ %i.am, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit ], [ 0, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter10write_char.exit ]
  %i.cd = insertvalue { i64, ptr } poison, i64 %.sroa.06.0, 0
  %i.ce = insertvalue { i64, ptr } %i.cd, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.ce

bb.l:                                             ; preds = %bb.k
  %i.cf = add nsw i32 %.sroa.4.0.i33.ph, -65
  %or.cond = icmp ult i32 %i.cf, 26
  %i.cg = or disjoint i32 %.sroa.4.0.i33.ph, 32
  %spec.select = select i1 %or.cond, i32 %i.cg, i32 %.sroa.4.0.i33.ph
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ch = add nsw i32 %.sroa.4.0.i33.ph, -97
  %or.cond3 = icmp ult i32 %i.ch, 26
  br i1 %or.cond3, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.ci = and i32 %.sroa.4.0.i33.ph, 95
  br label %bb.q

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.012.0 = phi i32 [ %spec.select, %bb.l ], [ %.sroa.4.0.i33.ph, %bb.m ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.cj = icmp samesign ult i32 %.sroa.012.0, 128
  br i1 %i.cj, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = icmp samesign ult i32 %.sroa.012.0, 2048
  br i1 %i.ck, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = icmp samesign ult i32 %.sroa.012.0, 65536
  %..i = select i1 %i.cl, i64 3, i64 4
  br label %bb.q

bb.q:                                             ; preds = %.thread, %bb.p, %bb.o, %bb.n
  %i.cm = phi i1 [ false, %bb.o ], [ false, %bb.p ], [ true, %bb.n ], [ true, %.thread ]
  %.sroa.012.042 = phi i32 [ %.sroa.012.0, %bb.o ], [ %.sroa.012.0, %bb.p ], [ %.sroa.012.0, %bb.n ], [ %i.ci, %.thread ] ; 7 uses
  %.sroa.04.0.i = phi i64 [ 2, %bb.o ], [ %..i, %bb.p ], [ 1, %bb.n ], [ 1, %.thread ]
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.cn = load ptr, ptr %4, align 8, !alias.scope !190, !nonnull !4, !align !13, !noundef !4 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load i16, ptr %i.co, align 8, !noalias !190, !noundef !4
  %i.cq = zext i16 %i.cp to i64
  %i.cr = add nuw nsw i64 %.sroa.04.0.i, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !190, !noundef !4
  %i.cu = icmp ugt i64 %i.cr, %i.ct
  br i1 %i.cu, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread, !prof !11

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i: ; preds = %bb.q
  %i.cv = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4) #21 ; 2 uses
  %i.cw = extractvalue { i64, ptr } %i.cv, 0
  %i.cx = trunc nuw i64 %i.cw to i1
  br i1 %i.cx, label %5, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread_crit_edge

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread_crit_edge: ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i
  %.pre = load ptr, ptr %4, align 8, !alias.scope !188
  br label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread: ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread_crit_edge, %bb.q
  %i.cy = phi ptr [ %.pre, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread_crit_edge ], [ %i.cn, %bb.q ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !188
  store i32 0, ptr %i.a, align 4, !noalias !188
  br i1 %i.cm, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread
  %i.cz = icmp samesign ult i32 %.sroa.012.042, 2048
  %i.da = trunc i32 %.sroa.012.042 to i8
  %i.db = and i8 %i.da, 63
  %i.dc = or disjoint i8 %i.db, -128              ; 3 uses
  %i.dd = lshr i32 %.sroa.012.042, 6
  %i.de = trunc i32 %i.dd to i8                   ; 2 uses
  %i.df = and i8 %i.de, 63
  %i.dg = or disjoint i8 %i.df, -128              ; 2 uses
  %i.dh = lshr i32 %.sroa.012.042, 12
  %i.di = trunc i32 %i.dh to i8                   ; 2 uses
  %i.dj = and i8 %i.di, 63
  %i.dk = or disjoint i8 %i.dj, -128
  %i.dl = lshr i32 %.sroa.012.042, 18
  %i.dm = trunc nuw nsw i32 %i.dl to i8
  %i.dn = or disjoint i8 %i.dm, -16
  br i1 %i.cz, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread
  %i.do = trunc nuw nsw i32 %.sroa.012.042 to i8
  store i8 %i.do, ptr %i.a, align 4, !alias.scope !191
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.t:                                             ; preds = %bb.r
  %i.dp = or disjoint i8 %i.de, -64
  store i8 %i.dp, ptr %i.a, align 4, !alias.scope !191
  store i8 %i.dc, ptr %i.ar, align 1, !alias.scope !191
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.u:                                             ; preds = %bb.r
  %i.dq = icmp samesign ult i32 %.sroa.012.042, 65536
  br i1 %i.dq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dr = or disjoint i8 %i.di, -32
  store i8 %i.dr, ptr %i.a, align 4, !alias.scope !191
  store i8 %i.dg, ptr %i.ar, align 1, !alias.scope !191
  store i8 %i.dc, ptr %i.as, align 2, !alias.scope !191
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.w:                                             ; preds = %bb.u
  store i8 %i.dn, ptr %i.a, align 4, !alias.scope !191
  store i8 %i.dk, ptr %i.ar, align 1, !alias.scope !191
  store i8 %i.dg, ptr %i.as, align 2, !alias.scope !191
  store i8 %i.dc, ptr %i.at, align 1, !alias.scope !191
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.s, %bb.t, %bb.v, %bb.w
  %.sroa.0.05.i = phi i64 [ 1, %bb.s ], [ 2, %bb.t ], [ 3, %bb.v ], [ 4, %bb.w ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !192, !noundef !4
  %i.du = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.dv = load i16, ptr %i.du, align 8, !alias.scope !192, !noundef !4 ; 2 uses
  %i.dw = zext i16 %i.dv to i64                   ; 2 uses
  %i.dx = sub nuw i64 %i.dt, %i.dw
  %.not.i.i = icmp ugt i64 %.sroa.0.05.i, %i.dx
  br i1 %.not.i.i, label %bb.x, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter10write_char.exit, !prof !14

bb.x:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #24, !noalias !193
  unreachable

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter10write_char.exit: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit
  %i.dy = load ptr, ptr %i.cy, align 8, !alias.scope !192, !nonnull !4, !noundef !4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.dz, i64 noundef %.sroa.0.05.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !192
  %i.ea = trunc nuw nsw i64 %.sroa.0.05.i to i16
  %i.eb = add i16 %i.dv, %i.ea
  store i16 %i.eb, ptr %i.du, align 8, !alias.scope !192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !188
  %i.ec = icmp eq ptr %.sroa.0.1.ph, %i.ao
  br i1 %i.ec, label %.loopexit, label %bb.i

5:                                                ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i
  %6 = extractvalue { i64, ptr } %i.cv, 1
  br label %.loopexit
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, ptr } @_RNvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB7_9Extension18write_negative_int(i8 noundef %0, i8 noundef %1, i64 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i8 @llvm.usub.sat.i8(i8 %1, i8 1) ; 3 uses
  %i.b = icmp eq i8 %0, 32
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.h, label %bb.f

.loopexit:                                        ; preds = %.thread79, %bb.h, %bb.a
  %.sroa.01.0 = phi i8 [ %i.a, %bb.a ], [ 0, %bb.h ], [ 0, %.thread79 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.c = load ptr, ptr %3, align 8, !alias.scope !208, !nonnull !4, !align !13, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !208, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i16, ptr %i.f, align 8, !noalias !208, !noundef !4 ; 2 uses
  %i.h = zext i16 %i.g to i64                     ; 2 uses
  %i.i = icmp eq i64 %i.e, %i.h
  br i1 %i.i, label %bb.c, label %.thread, !prof !11

bb.c:                                             ; preds = %.loopexit
  %i.j = tail call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #21 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit27.thread, label %bb.d

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit27.thread: ; preds = %bb.c
  %i.m = extractvalue { i64, ptr } %i.j, 1
  br label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter13write_int_padyEBa_.exit

bb.d:                                             ; preds = %bb.c
  %.pre59 = load ptr, ptr %3, align 8, !alias.scope !208 ; 3 uses
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %.pre59, i64 8
  %.pre61 = load i64, ptr %.phi.trans.insert60, align 8, !alias.scope !209
  %.phi.trans.insert62 = getelementptr inbounds nuw i8, ptr %.pre59, i64 16
  %.pre63 = load i16, ptr %.phi.trans.insert62, align 8, !alias.scope !209 ; 2 uses
  %.pre67.a = zext i16 %.pre63 to i64             ; 2 uses
  %i.n = icmp eq i64 %.pre61, %.pre67.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  br i1 %i.n, label %bb.e, label %.thread, !prof !210

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #24, !noalias !209
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %2, 9999999999              ; 2 uses
  %i.p = udiv i64 %2, 10000000000
  %.sroa.05.0.i = select i1 %i.o, i32 10, i32 0   ; 2 uses
  %.sroa.0.0.i31 = select i1 %i.o, i64 %i.p, i64 %2 ; 3 uses
  %i.q = icmp samesign ugt i64 %.sroa.0.0.i31, 99999
  br i1 %i.q, label %bb.g, label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.r = udiv i64 %.sroa.0.0.i31, 100000
  %i.s = or disjoint i32 %.sroa.05.0.i, 5
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit

_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit: ; preds = %bb.f, %bb.g
  %.sroa.05.1.i = phi i32 [ %i.s, %bb.g ], [ %.sroa.05.0.i, %bb.f ]
  %.sroa.0.1.i = phi i64 [ %i.r, %bb.g ], [ %.sroa.0.0.i31, %bb.f ]
  %i.t = trunc nuw nsw i64 %.sroa.0.1.i to i32    ; 4 uses
  %i.u = add nuw nsw i32 %i.t, 393206
  %i.v = add nuw nsw i32 %i.t, 524188
  %i.w = and i32 %i.u, %i.v
  %i.x = add nuw nsw i32 %i.t, 916504
  %i.y = add nuw nsw i32 %i.t, 514288
  %i.z = and i32 %i.x, %i.y
  %i.aa = xor i32 %i.w, %i.z
  %i.ab = lshr i32 %i.aa, 17
  %i.ac = add nuw nsw i32 %i.ab, %.sroa.05.1.i    ; 2 uses
  %i.ad = icmp samesign ult i32 %i.ac, 20
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = trunc nuw nsw i32 %i.ac to i8
  %i.af = add nuw nsw i8 %i.ae, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit
  %.sroa.03.0 = phi i8 [ %i.af, %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit ], [ 1, %bb.b ] ; 2 uses
  %.not53.not = icmp ugt i8 %i.a, %.sroa.03.0
  br i1 %.not53.not, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.ag = sub nuw i8 %i.a, %.sroa.03.0
  %umax = tail call i8 @llvm.umax.i8(i8 %i.ag, i8 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread79
  %.sroa.016.049 = phi i8 [ %i.az, %.thread79 ], [ 0, %.lr.ph.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.ah = load ptr, ptr %3, align 8, !alias.scope !211, !nonnull !4, !align !13, !noundef !4 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !211, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.al = load i16, ptr %i.ak, align 8, !noalias !211, !noundef !4 ; 2 uses
  %i.am = zext i16 %i.al to i64                   ; 2 uses
  %i.an = icmp eq i64 %i.aj, %i.am
  br i1 %i.an, label %bb.i, label %.thread79, !prof !11

bb.i:                                             ; preds = %.lr.ph
  %i.ao = tail call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #21 ; 2 uses
  %i.ap = extractvalue { i64, ptr } %i.ao, 0
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.thread, label %bb.j

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.thread: ; preds = %bb.i
  %i.ar = extractvalue { i64, ptr } %i.ao, 1
  br label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter13write_int_padyEBa_.exit

bb.j:                                             ; preds = %bb.i
  %.pre = load ptr, ptr %3, align 8, !alias.scope !211 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre55 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !212
  %.phi.trans.insert56 = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre57 = load i16, ptr %.phi.trans.insert56, align 8, !alias.scope !212 ; 2 uses
  %.pre66 = zext i16 %.pre57 to i64               ; 2 uses
  %i.as = icmp eq i64 %.pre55, %.pre66
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  br i1 %i.as, label %bb.k, label %.thread79, !prof !210

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #24, !noalias !212
  unreachable

.thread79:                                        ; preds = %.lr.ph, %bb.j
  %i.at = phi ptr [ %.pre, %bb.j ], [ %i.ah, %.lr.ph ] ; 2 uses
  %i.au = phi i16 [ %.pre57, %bb.j ], [ %i.al, %.lr.ph ]
  %.pre-phi82 = phi i64 [ %.pre66, %bb.j ], [ %i.am, %.lr.ph ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = load ptr, ptr %i.at, align 8, !alias.scope !212, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.pre-phi82
  store i8 32, ptr %i.ax, align 1, !noalias !212
  %i.ay = add i16 %i.au, 1
  store i16 %i.ay, ptr %i.av, align 8, !alias.scope !212
  %i.az = add nuw i8 %.sroa.016.049, 1            ; 2 uses
  %exitcond.not = icmp eq i8 %i.az, %umax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.thread:                                          ; preds = %.loopexit, %bb.d
  %i.ba = phi ptr [ %.pre59, %bb.d ], [ %i.c, %.loopexit ] ; 2 uses
  %i.bb = phi i16 [ %.pre63, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi6878 = phi i64 [ %.pre67.a, %bb.d ], [ %i.h, %.loopexit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bd = load ptr, ptr %i.ba, align 8, !alias.scope !209, !nonnull !4, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.pre-phi6878
  store i8 45, ptr %i.be, align 1, !noalias !209
  %i.bf = add i16 %i.bb, 1
  store i16 %i.bf, ptr %i.bc, align 8, !alias.scope !209
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %..i = tail call noundef range(i8 0, 21) i8 @llvm.umin.i8(i8 range(i8 0, -1) %.sroa.01.0, i8 20) ; 2 uses
  %i.bg = icmp ult i64 %2, 10                     ; 2 uses
  br i1 %i.bg, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit30, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.bh = icmp ult i64 %2, 100
  br i1 %i.bh, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit30, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = icmp ult i64 %2, 1000
  br i1 %i.bi, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit30, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = icmp ult i64 %2, 10000
  br i1 %i.bj, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit30, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = icmp ugt i64 %2, 9999999999             ; 2 uses
  %i.bl = udiv i64 %2, 10000000000
  %.sroa.05.0.i32 = select i1 %i.bk, i32 10, i32 0 ; 2 uses
  %.sroa.0.0.i33 = select i1 %i.bk, i64 %i.bl, i64 %2 ; 3 uses
  %i.bm = icmp samesign ugt i64 %.sroa.0.0.i33, 99999
  br i1 %i.bm, label %bb.p, label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit36

bb.p:                                             ; preds = %bb.o
  %i.bn = udiv i64 %.sroa.0.0.i33, 100000
  %i.bo = or disjoint i32 %.sroa.05.0.i32, 5
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit36

_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit36: ; preds = %bb.o, %bb.p
  %.sroa.05.1.i34 = phi i32 [ %i.bo, %bb.p ], [ %.sroa.05.0.i32, %bb.o ]
  %.sroa.0.1.i35 = phi i64 [ %i.bn, %bb.p ], [ %.sroa.0.0.i33, %bb.o ]
  %i.bp = trunc nuw nsw i64 %.sroa.0.1.i35 to i32 ; 4 uses
  %i.bq = add nuw nsw i32 %i.bp, 393206
  %i.br = add nuw nsw i32 %i.bp, 524188
  %i.bs = and i32 %i.bq, %i.br
  %i.bt = add nuw nsw i32 %i.bp, 916504
  %i.bu = add nuw nsw i32 %i.bp, 514288
  %i.bv = and i32 %i.bt, %i.bu
  %i.bw = xor i32 %i.bs, %i.bv
  %i.bx = lshr i32 %i.bw, 17
  %i.by = add nuw nsw i32 %i.bx, %.sroa.05.1.i34  ; 2 uses
  %i.bz = icmp samesign ult i32 %i.by, 20
  tail call void @llvm.assume(i1 %i.bz), !noalias !213
  %i.ca = trunc nuw nsw i32 %i.by to i8
  %i.cb = add nuw nsw i8 %i.ca, 1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit30

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit30: ; preds = %.thread, %bb.l, %bb.m, %bb.n, %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit36
  %.sroa.0.0.i29 = phi i8 [ %i.cb, %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit36 ], [ 1, %.thread ], [ 2, %bb.l ], [ 3, %bb.m ], [ 4, %bb.n ]
  %..i37 = tail call noundef range(i8 1, -1) i8 @llvm.umax.i8(i8 range(i8 1, 21) %.sroa.0.0.i29, i8 range(i8 0, -1) %..i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.cc = zext nneg i8 %..i37 to i64
  %i.cd = load ptr, ptr %3, align 8, !alias.scope !214, !nonnull !4, !align !13, !noundef !4 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i16, ptr %i.ce, align 8, !noalias !214, !noundef !4
  %i.cg = zext i16 %i.cf to i64
  %i.ch = add nuw nsw i64 %i.cg, %i.cc
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !214, !noundef !4
  %i.ck = icmp ugt i64 %i.ch, %i.cj
  br i1 %i.ck, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit.thread, !prof !11

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit: ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit30
  %i.cl = tail call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #21 ; 2 uses
  %i.cm = extractvalue { i64, ptr } %i.cl, 0
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %4, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit.thread_crit_edge

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit.thread_crit_edge: ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit
  %.pre64 = load ptr, ptr %3, align 8, !alias.scope !213
  br label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit.thread

4:                                                ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit
  %5 = extractvalue { i64, ptr } %i.cl, 1
  br label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter13write_int_padyEBa_.exit

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit.thread: ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit.thread_crit_edge, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit30
  %i.co = phi ptr [ %.pre64, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit.thread_crit_edge ], [ %i.cd, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit30 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.cp = icmp sgt i8 %0, -1
  br i1 %i.cp, label %bb.r, label %bb.q, !prof !15

bb.q:                                             ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit.thread
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 53 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #24, !noalias !215
  unreachable

bb.r:                                             ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit.thread
  br i1 %i.bg, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = icmp ult i64 %2, 100
  br i1 %i.cq, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = icmp ult i64 %2, 1000
  br i1 %i.cr, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = icmp ult i64 %2, 10000
  br i1 %i.cs, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = tail call fastcc noundef i32 @_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl(i64 noundef %2) #23, !noalias !215 ; 2 uses
  %i.cu = icmp samesign ult i32 %i.ct, 20
  tail call void @llvm.assume(i1 %i.cu), !noalias !215
  %i.cv = trunc nuw nsw i32 %i.ct to i8
  %i.cw = add nuw nsw i8 %i.cv, 1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit: ; preds = %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.sroa.0.0.i28 = phi i8 [ %i.cw, %bb.v ], [ 1, %bb.r ], [ 2, %bb.s ], [ 3, %bb.t ], [ 4, %bb.u ]
  %..i39 = tail call noundef range(i8 1, -1) i8 @llvm.umax.i8(i8 range(i8 1, 21) %.sroa.0.0.i28, i8 range(i8 0, -1) %..i) ; 2 uses
  %i.cx = zext nneg i8 %..i39 to i64              ; 2 uses
  %i.cy = load ptr, ptr %i.co, align 8, !alias.scope !215, !nonnull !4, !noundef !4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !215, !noundef !4
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %i.dc = load i16, ptr %i.db, align 8, !alias.scope !215, !noundef !4 ; 2 uses
  %i.dd = zext i16 %i.dc to i64                   ; 2 uses
  %i.de = sub nuw i64 %i.da, %i.dd
  %i.df = getelementptr i8, ptr %i.cy, i64 %i.dd  ; 2 uses
  %.not.i.i = icmp ult i64 %i.de, %i.cx
  br i1 %.not.i.i, label %bb.w, label %.preheader47, !prof !14

bb.w:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #24, !noalias !215
  unreachable

.preheader47:                                     ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, %.preheader47
  %.sroa.06.0.i.i = phi i64 [ %i.dg, %.preheader47 ], [ %i.cx, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit ]
  %.sroa.0.0.i.i = phi i64 [ %i.dl, %.preheader47 ], [ %2, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit ] ; 3 uses
  %i.dg = add i64 %.sroa.06.0.i.i, -1             ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  %i.di = urem i64 %.sroa.0.0.i.i, 10
  %i.dj = trunc nuw nsw i64 %i.di to i8
  %i.dk = or disjoint i8 %i.dj, 48
  store i8 %i.dk, ptr %i.dh, align 1, !noalias !215
  %i.dl = udiv i64 %.sroa.0.0.i.i, 10
  %i.dm = icmp ugt i64 %.sroa.0.0.i.i, 9
  %i.dn = icmp ne i64 %i.dg, 0                    ; 2 uses
  %or.cond2.i.i = and i1 %i.dm, %i.dn
  br i1 %or.cond2.i.i, label %.preheader47, label %.preheader

.preheader:                                       ; preds = %.preheader47
  br i1 %i.dn, label %.lr.ph52.preheader, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit.i

.lr.ph52.preheader:                               ; preds = %.preheader
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.df, i8 %0, i64 %i.dg, i1 false), !noalias !215
  br label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit.i

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit.i: ; preds = %.lr.ph52.preheader, %.preheader
  %i.do = zext nneg i8 %..i39 to i16
  %i.dp = add i16 %i.dc, %i.do
  store i16 %i.dp, ptr %i.db, align 8, !alias.scope !215
  br label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter13write_int_padyEBa_.exit

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter13write_int_padyEBa_.exit: ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit.i, %4, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.thread, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit27.thread
  %.sroa.3.0.i.pn = phi ptr [ %i.m, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit27.thread ], [ %i.ar, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.thread ], [ %5, %4 ], [ undef, %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit.i ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit27.thread ], [ 1, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.thread ], [ 1, %4 ], [ 0, %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit.i ]
  %i.dq = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.dr = insertvalue { i64, ptr } %i.dq, ptr %.sroa.3.0.i.pn, 1
  ret { i64, ptr } %i.dr
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime16to_date_from_iso(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load i16, ptr %i.c, align 8, !range !16, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.f = load i16, ptr %i.e, align 2              ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.h = load i8, ptr %i.g, align 1               ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.j = load i8, ptr %i.i, align 1, !range !17, !noundef !4 ; 3 uses
  %i.k = trunc nuw i16 %i.d to i1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load i8, ptr %i.l, align 8, !range !18
  %i.n = trunc nuw i8 %i.m to i1
  %or.cond = select i1 %i.k, i1 %i.n, i1 false
  %.not = icmp ne i8 %i.j, 0
  %or.cond23.not = and i1 %.not, %or.cond
  br i1 %or.cond23.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.o, align 2
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.p = add i16 %i.f, 9999
  %or.cond.i.i = icmp ult i16 %i.p, 19999
  br i1 %or.cond.i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.q = add i8 %i.h, -1
  %or.cond1.i.i = icmp ult i8 %i.q, 53
  br i1 %or.cond1.i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i8 %i.h, 53
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = sext i16 %i.f to i32
  %i.t = add nsw i32 %i.s, 32800                  ; 2 uses
  %.lhs.trunc.i.i = trunc nuw i32 %i.t to i16     ; 2 uses
  %i.u = udiv i16 %.lhs.trunc.i.i, 100
  %.zext.i.i = zext nneg i16 %i.u to i32
  %i.v = mul nuw nsw i32 %i.t, 1461
  %i.w = lshr i32 %i.v, 2
  %i.x = udiv i16 %.lhs.trunc.i.i, 400
  %.zext35.i.i = zext nneg i16 %i.x to i32
  %reass.sub.i.i.i = add nsw i32 %i.w, -12699117
  %i.y = sub nsw i32 %reass.sub.i.i.i, %.zext.i.i
  %i.z = add nsw i32 %i.y, %.zext35.i.i
  %i.aa = mul i32 %i.z, 613566757
  %i.ab = add i32 %i.aa, -1879048192
  %i.ac = lshr i32 %i.ab, 29                      ; 2 uses
  switch i32 %i.ac, label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil21is_long_iso_week_year.exit.i.i [
    i32 0, label %bb.g
    i32 4, label %bb.o
  ], !prof !228

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #24, !noalias !229
  unreachable

_RNvNtCsb09rMIQFAXO_9jiff_core5civil21is_long_iso_week_year.exit.i.i: ; preds = %bb.f
  %i.ad = srem i16 %i.f, 25
  %i.ae = icmp eq i16 %i.ad, 0
  %..i.i.i.i = select i1 %i.ae, i16 15, i16 3
  %i.af = and i16 %..i.i.i.i, %i.f
  %i.ag = icmp eq i16 %i.af, 0
  %i.ah = icmp eq i32 %i.ac, 5
  %spec.select.i.i.i = and i1 %i.ag, %i.ah
  br i1 %spec.select.i.i.i, label %bb.o, label %bb.i, !prof !230

bb.h:                                             ; preds = %bb.e
  %i.ai = icmp eq i16 %i.f, 9999
  %i.aj = icmp eq i8 %i.h, 52
  %or.cond2.i.i = and i1 %i.ai, %i.aj
  %i.ak = icmp samesign ugt i8 %i.j, 5
  %or.cond4.i.i = and i1 %or.cond2.i.i, %i.ak
  br i1 %or.cond4.i.i, label %bb.i, label %bb.o, !prof !231

bb.i:                                             ; preds = %bb.c, %bb.d, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil21is_long_iso_week_year.exit.i.i, %bb.h
  %.sroa.6.0.i.ph.i = phi i32 [ 7679, %bb.h ], [ 2303, %bb.c ], [ 2047, %bb.d ], [ 2047, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil21is_long_iso_week_year.exit.i.i ]
  %i.al = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.6.0.i.ph.i) #21, !noalias !229 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !232
  store ptr %i.al, ptr %i.b, align 8, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !232
  store i8 10, ptr %i.a, align 8
  %i.am = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.n unwind label %bb.j, !noalias !232

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = icmp eq ptr %i.al, null
  br i1 %i.ao, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !233
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %.thread.i unwind label %bb.m, !noalias !232

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !232
  unreachable

.thread.i:                                        ; preds = %bb.l, %bb.k, %bb.j
  resume { ptr, i32 } %i.an

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !232
  %i.as = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.al, ptr noundef %i.am), !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !232
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8
  br label %bb.q

bb.o:                                             ; preds = %bb.h, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil21is_long_iso_week_year.exit.i.i, %bb.f
  %.sroa.4.0.insert.ext.i.i = zext nneg i8 %i.h to i32
  %i.au = tail call noundef i32 @_RNvNtNtCsb09rMIQFAXO_9jiff_core5civil4date24iso_week_start_from_year(i16 noundef %i.f)
  %i.av = add nsw i8 %i.j, -1
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = mul nuw nsw i32 %.sroa.4.0.insert.ext.i.i, 7
  %i.ay = add nsw i32 %i.ax, -7
  %i.az = add nuw nsw i32 %i.ay, %i.aw
  %i.ba = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.au, i32 %i.az) ; 2 uses
  %i.bb = extractvalue { i32, i1 } %i.ba, 0       ; 2 uses
  %i.bc = extractvalue { i32, i1 } %i.ba, 1
  %i.bd = add i32 %i.bb, -2932897
  %or.cond.i = icmp ult i32 %i.bd, -7304484
  %or.cond8.not.i = or i1 %i.bc, %or.cond.i
  br i1 %or.cond8.not.i, label %bb.p, label %_RNvMs4_NtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB5_11ISOWeekDate17to_unix_epoch_day.exit, !prof !234

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #24
  unreachable

_RNvMs4_NtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB5_11ISOWeekDate17to_unix_epoch_day.exit: ; preds = %bb.o
  %i.be = shl nsw i32 %i.bb, 2
  %i.bf = add nsw i32 %i.be, 50797691             ; 2 uses
  %i.bg = urem i32 %i.bf, 146097
  %i.bh = or i32 %i.bg, 3
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = mul nuw nsw i64 %i.bi, 2939745          ; 2 uses
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = udiv i32 %i.bk, 11758980
  %i.bm = mul nuw nsw i32 %i.bl, 2141
  %i.bn = add nuw nsw i32 %i.bm, 197913           ; 3 uses
  %i.bo = and i32 %i.bn, 4128768
  %i.bp = icmp ugt i32 %i.bk, -696719417          ; 2 uses
  %i.bq = udiv i32 %i.bf, 146097
  %i.br = mul nuw nsw i32 %i.bq, 100
  %i.bs = lshr i64 %i.bj, 32
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = zext i1 %i.bp to i32
  %i.bv = add nuw nsw i32 %i.br, 32736
  %i.bw = add nuw nsw i32 %i.bv, %i.bt
  %i.bx = add nuw nsw i32 %i.bw, %i.bu
  %.lhs.trunc.i = trunc i32 %i.bn to i16
  %i.by = udiv i16 %.lhs.trunc.i, 2141
  %.zext.i = zext nneg i16 %i.by to i32
  %.sroa.3.0.insert.ext.i = shl nuw nsw i32 %.zext.i, 24
  %.sroa.3.0.insert.shift.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i, 16777216
  %i.bz = add nuw nsw i32 %i.bo, 15990784
  %.sroa.2.0.insert.ext.i = select i1 %i.bp, i32 %i.bz, i32 %i.bn
  %.sroa.2.0.insert.shift.i = and i32 %.sroa.2.0.insert.ext.i, 16711680
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = and i32 %i.bx, 65535
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 1, ptr %i.ca, align 2
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0.insert.insert.i, ptr %.sroa.414.0..sroa_idx, align 4
  br label %bb.q

bb.q:                                             ; preds = %_RNvMs4_NtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB5_11ISOWeekDate17to_unix_epoch_day.exit, %bb.n, %bb.b
  %.sink = phi i16 [ 0, %_RNvMs4_NtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB5_11ISOWeekDate17to_unix_epoch_day.exit ], [ 1, %bb.n ], [ 0, %bb.b ]
  store i16 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsE_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_8DateWith5build(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 2 captures(none) dead_on_return dereferenceable(14) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
end_hunk_0

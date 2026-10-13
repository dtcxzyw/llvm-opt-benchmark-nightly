Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xtask.xtask.f877180179d334e7-cgu.01?download=true
inline.NumInlined: 414
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCshzWfHUSfYae_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_Csby8LzHty7VS_9ungrammarNtB5_4RuleNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = add i64 %i.a, -9223372036854775807
  %i.d = select i1 %i.b, i64 %i.c, i64 0          ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !11, !noundef !5 ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  %i.g = add i64 %i.e, -9223372036854775807
  %i.h = select i1 %i.f, i64 %i.g, i64 0
  %i.i = icmp eq i64 %i.d, %i.h
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.j = phi i64 [ %i.ao, %tailrecurse.backedge ], [ %i.d, %bb.a ]
  %.tr522 = phi ptr [ %.tr5.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 9 uses
  %.tr21 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 9 uses
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %tailrecurse.backedge
    i64 6, label %tailrecurse.backedge
  ]

.loopexit:                                        ; preds = %tailrecurse.backedge, %bb.c, %bb.h, %bb.a, %bb.g, %bb.f, %bb.j, %bb.i, %bb.e, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %i.bi, %bb.j ], [ false, %bb.f ], [ %i.t, %bb.d ], [ %i.y, %bb.e ], [ %i.bd, %bb.i ], [ false, %bb.g ], [ false, %bb.a ], [ false, %bb.h ], [ false, %bb.c ], [ false, %tailrecurse.backedge ]
  ret i1 %.sroa.0.0.shrunk

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.tr21, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.tr522, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.h, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr21, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %.tr522, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noundef !5
  %i.t = icmp eq i64 %i.q, %i.s
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.tr21, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %.tr522, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noundef !5
  %i.y = icmp eq i64 %i.v, %i.x
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.tr21, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noundef !5 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr522, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.i, label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr21, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr522, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !5
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.j, label %.loopexit

tailrecurse.backedge:                             ; preds = %.lr.ph, %bb.h, %.lr.ph
  %.sink53 = phi i64 [ 24, %bb.h ], [ 8, %.lr.ph ], [ 8, %.lr.ph ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr21, i64 %.sink53
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr522, i64 %.sink53
  %.tr5.be = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.tr.be = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.al = load i64, ptr %.tr.be, align 8, !range !11, !noundef !5 ; 2 uses
  %i.am = icmp slt i64 %i.al, 0
  %i.an = add i64 %i.al, -9223372036854775807
  %i.ao = select i1 %i.am, i64 %i.an, i64 0       ; 2 uses
  %i.ap = load i64, ptr %.tr5.be, align 8, !range !11, !noundef !5 ; 2 uses
  %i.aq = icmp slt i64 %i.ap, 0
  %i.ar = add i64 %i.ap, -9223372036854775807
  %i.as = select i1 %i.aq, i64 %i.ar, i64 0
  %i.at = icmp eq i64 %i.ao, %i.as
  br i1 %i.at, label %.lr.ph, label %.loopexit

bb.h:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.tr522, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %.tr21, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.ax, ptr nonnull %i.av, i64 %i.l)
  %i.ay = icmp eq i32 %bcmp, 0
  br i1 %i.ay, label %tailrecurse.backedge, label %.loopexit

bb.i:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %.tr522, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !5, !noundef !5
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr21, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !5, !noundef !5
  %i.bd = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtCsby8LzHty7VS_9ungrammar4RuleINtB5_14SlicePartialEqBC_E17equal_same_lengthCslkzCjlEuW1f_5xtask(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ba, i64 noundef %i.aa)
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.tr522, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !5, !noundef !5
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr21, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !5, !noundef !5
  %i.bi = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtCsby8LzHty7VS_9ungrammar4RuleINtB5_14SlicePartialEqBC_E17equal_same_lengthCslkzCjlEuW1f_5xtask(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bf, i64 noundef %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 6
  br i1 %i.d, label %bb.c, label %bb.d

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i, %.split.us.i.i, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.lr.ph.split.us.i.i, %bb.d, %bb.a, %bb.o, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i1 [ false, %bb.d ], [ true, %bb.g ], [ true, %bb.a ], [ %i.ak, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit ], [ %i.ay, %bb.o ], [ true, %bb.i ], [ true, %.lr.ph.split.us.i.i ], [ true, %bb.e ], [ true, %bb.h ], [ true, %bb.f ], [ %i.x, %bb.j ], [ %.not27.i.i.not.not, %.split.us.i.i ], [ %.not27.i.i.not.not, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %bb.e, label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 6
  br i1 %i.f, label %bb.o, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.g = load i8, ptr %0, align 1, !noundef !5    ; 6 uses
  %i.h = load i8, ptr %2, align 1, !alias.scope !636, !noundef !5
  %i.i = icmp eq i8 %i.h, %i.g
  br i1 %i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !636, !noundef !5
  %i.l = icmp eq i8 %i.k, %i.g
  br i1 %i.l, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !636, !noundef !5
  %i.o = icmp eq i8 %i.n, %i.g
  br i1 %i.o, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !636, !noundef !5
  %i.r = icmp eq i8 %i.q, %i.g
  br i1 %i.r, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !636, !noundef !5
  %i.u = icmp eq i8 %i.t, %i.g
  br i1 %i.u, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !636, !noundef !5
  %i.x = icmp eq i8 %i.w, %i.g
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.k:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.y = load i8, ptr %0, align 1, !alias.scope !637, !noalias !638, !noundef !5 ; 4 uses
  %i.z = icmp eq i64 %1, 2
  br i1 %i.z, label %.lr.ph.split.us.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.aa = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4) ; 3 uses
  %3 = add nsw i64 %1, -1                         ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 %3
  %5 = load i8, ptr %4, align 1, !alias.scope !637, !noalias !639, !noundef !5
  %.not.i.not.i.i = icmp eq i8 %5, %i.y
  br i1 %.not.i.not.i.i, label %6, label %.lr.ph.split.us.i.i

6:                                                ; preds = %.lr.ph
  %7 = icmp ult i64 %i.aa, %3
  br i1 %7, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.1, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.1: ; preds = %6
  %8 = add nsw i64 %1, -2                         ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !alias.scope !637, !noalias !639, !noundef !5
  %.not.i.not.i.i.1 = icmp eq i8 %10, %i.y
  br i1 %.not.i.not.i.i.1, label %bb.l, label %.lr.ph.split.us.i.i

bb.l:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.1
  %i.ab = icmp ult i64 %i.aa, %8
  br i1 %i.ab, label %11, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

11:                                               ; preds = %bb.l
  %12 = add nsw i64 %1, -3                        ; 3 uses
  %13 = icmp ugt i64 %1, 2
  br i1 %13, label %bb.m, label %19

bb.m:                                             ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %12
  %15 = load i8, ptr %14, align 1, !alias.scope !637, !noalias !639, !noundef !5
  %.not.i.not.i.i.2 = icmp eq i8 %15, %i.y
  br i1 %.not.i.not.i.i.2, label %16, label %.lr.ph.split.us.i.i

16:                                               ; preds = %bb.m
  %17 = icmp ult i64 %i.aa, %12
  br i1 %17, label %bb.n, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

bb.n:                                             ; preds = %16
  %18 = add nsw i64 %1, -4                        ; 2 uses
  %.not = icmp eq i64 %1, 3
  br i1 %.not, label %19, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %18
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !637, !noalias !639, !noundef !5
  %.not.i.not.i.i.a = icmp eq i8 %i.ad, %i.y
  br i1 %.not.i.not.i.i.a, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit, label %.lr.ph.split.us.i.i

19:                                               ; preds = %bb.n, %11
  %.lcssa = phi i64 [ %18, %bb.n ], [ %12, %11 ]
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.lcssa, i64 noundef range(i64 2, 33) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !640
  unreachable

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i.1, %bb.m, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i, %bb.k
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !641, !noalias !642
  %i.ae = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.ae, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %i.ag = add nsw i64 %i.ai, -1
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.af, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !641, !noalias !642
  %i.ah = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.ah, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i: ; preds = %.lr.ph.split.us.i.i, %.split.us.i.i
  %.pn.i = phi ptr [ %i.af, %.split.us.i.i ], [ %2, %.lr.ph.split.us.i.i ]
  %i.ai = phi i64 [ %i.ag, %.split.us.i.i ], [ 5, %.lr.ph.split.us.i.i ] ; 2 uses
  %.not27.i.i.not.not = icmp samesign ule i64 %1, %i.ai ; 3 uses
  br i1 %.not27.i.i.not.not, label %.split.us.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i, %16, %bb.l, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(104) %i.a) #22
  %i.aj = load i64, ptr %i.b, align 8, !range !6, !noundef !5
  %i.ak = trunc nuw i64 %i.aj to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.o:                                             ; preds = %bb.d
  %i.al = load i32, ptr %0, align 1
  %i.am = load i32, ptr %2, align 1
  %i.an = xor i32 %i.al, %i.am
  %i.ao = getelementptr i8, ptr %0, i64 4
  %i.ap = getelementptr i8, ptr %2, i64 4
  %i.aq = load i16, ptr %i.ao, align 1
  %i.ar = load i16, ptr %i.ap, align 1
  %i.as = zext i16 %i.aq to i32
  %i.at = zext i16 %i.ar to i32
  %i.au = xor i32 %i.as, %i.at
  %i.av = or i32 %i.an, %i.au
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !6, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !16, !alias.scope !665, !noalias !666, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !665, !noalias !666, !nonnull !5, !noundef !5 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !665, !noalias !666, !noundef !5 ; 16 uses
  %.promoted52 = load i8, ptr %i.g, align 8, !alias.scope !665, !noalias !666 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.l = trunc nuw i8 %.promoted52 to i1          ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k
  br i1 %i.n, label %bb.d, label %.loopexit199

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !668, !noalias !669, !noundef !5
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit199

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit200, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !670, !noundef !5 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !670, !noundef !5
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.peel, label %bb.g

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !670, !noundef !5
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.peel, label %bb.g

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !670, !noundef !5
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128
  br i1 %i.be, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048
  br i1 %i.bf, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536
  %..i.peel = select i1 %i.bg, i64 3, i64 4
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel

_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted  ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !667, !noalias !666
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5 ; 2 uses
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !5 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !5 ; 16 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 5 uses
  br i1 %i.by, label %bb.aa, label %bb.s

bb.l:                                             ; preds = %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit199

bb.m:                                             ; preds = %bb.l
  %i.cj = load i8, ptr %i.bk, align 1, !alias.scope !668, !noalias !671, !noundef !5
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.n, label %.loopexit199

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!439 = distinct !{!439, !436, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters3map12map_try_foldRBJ_NtNtCsbSS6DM8SDEO_5alloc6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowB2i_ENCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess7_0NCINvNvBM_4find5checkB2i_QNCB3H_s8_0E0E0B2V_EB3N_: argument 0"}
!440 = distinct !{!440, i1 false, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRReNtNtCsbSS6DM8SDEO_5alloc6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowB12_ENCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess7_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB12_QNCB2r_s8_0E0E0B2x_"}
!441 = distinct !{!441, !440, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRReNtNtCsbSS6DM8SDEO_5alloc6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowB12_ENCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess7_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB12_QNCB2r_s8_0E0E0B2x_: argument 0"}
!442 = distinct !{!442, i1 false, !"_RNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14to_pascal_case"}
!443 = distinct !{!443, !442, !"_RNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14to_pascal_case: argument 1"}
!444 = distinct !{!444, i1 false, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess7_0B7_"}
!445 = distinct !{!445, !444, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess7_0B7_: argument 0"}
!446 = distinct !{!446, !442, !"_RNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14to_pascal_case: argument 0"}
!447 = distinct !{!447, i1 false, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslkzCjlEuW1f_5xtask"}
!448 = distinct !{!448, !447, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslkzCjlEuW1f_5xtask: argument 0"}
!449 = distinct !{!449, i1 false, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push"}
!450 = distinct !{!450, !449, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push: argument 0"}
!451 = distinct !{!451, i1 false, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push"}
!452 = distinct !{!452, !451, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push: argument 0"}
!453 = distinct !{!453, i1 false, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtCsbSS6DM8SDEO_5alloc6string6StringQNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess8_0E0B1X_"}
!454 = distinct !{!454, !453, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtCsbSS6DM8SDEO_5alloc6string6StringQNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess8_0E0B1X_: argument 0"}
!455 = distinct !{!455, !453, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtCsbSS6DM8SDEO_5alloc6string6StringQNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess8_0E0B1X_: argument 1"}
!456 = distinct !{!456, i1 false, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess8_0B7_"}
!457 = distinct !{!457, !456, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess8_0B7_: argument 0"}
!458 = distinct !{!458, i1 false, !"_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterRNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3any5checkRBV_NCNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess8_00E0INtNtNtB1H_3ops12control_flow11ControlFlowuEEB3d_"}
!459 = distinct !{!459, !458, !"_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterRNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3any5checkRBV_NCNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess8_00E0INtNtNtB1H_3ops12control_flow11ControlFlowuEEB3d_: argument 1"}
!460 = distinct !{!460, i1 false, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcENCNvB1O_14generate_nodess3_0EIBN_IB1l_NtB1M_10AstNodeSrcENCB2P_s4_0EENCB2P_s5_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_"}
!461 = distinct !{!461, !460, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcENCNvB1O_14generate_nodess3_0EIBN_IB1l_NtB1M_10AstNodeSrcENCB2P_s4_0EENCB2P_s5_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_: argument 1"}
!462 = distinct !{!462, !460, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcENCNvB1O_14generate_nodess3_0EIBN_IB1l_NtB1M_10AstNodeSrcENCB2P_s4_0EENCB2P_s5_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_: argument 0"}
!463 = distinct !{!463, i1 false, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess5_0B7_"}
!464 = distinct !{!464, !463, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess5_0B7_: argument 1"}
!465 = distinct !{!465, !463, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess5_0B7_: argument 0"}
!466 = distinct !{!466, i1 false, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess6_0B7_"}
!467 = distinct !{!467, !466, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess6_0B7_: argument 1"}
!468 = distinct !{!468, !466, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess6_0B7_: argument 0"}
!469 = distinct !{!469, i1 false, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsluekWoTk8SK_11proc_macro25IdentECslkzCjlEuW1f_5xtask"}
!470 = distinct !{!470, !469, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsluekWoTk8SK_11proc_macro25IdentECslkzCjlEuW1f_5xtask: argument 0"}
!471 = distinct !{!471, i1 false, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro23imp5IdentECslkzCjlEuW1f_5xtask"}
!472 = distinct !{!472, !471, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro23imp5IdentECslkzCjlEuW1f_5xtask: argument 0"}
!473 = distinct !{!473, i1 false, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsluekWoTk8SK_11proc_macro25IdentECslkzCjlEuW1f_5xtask"}
!474 = distinct !{!474, !473, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsluekWoTk8SK_11proc_macro25IdentECslkzCjlEuW1f_5xtask: argument 0"}
!475 = distinct !{!475, i1 false, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro23imp5IdentECslkzCjlEuW1f_5xtask"}
!476 = distinct !{!476, !475, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro23imp5IdentECslkzCjlEuW1f_5xtask: argument 0"}
!477 = distinct !{!477, i1 false, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtCsluekWoTk8SK_11proc_macro211TokenStreamNtB5_12SpecToString14spec_to_stringCslkzCjlEuW1f_5xtask"}
!478 = distinct !{!478, !477, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtCsluekWoTk8SK_11proc_macro211TokenStreamNtB5_12SpecToString14spec_to_stringCslkzCjlEuW1f_5xtask: argument 1"}
!479 = distinct !{!479, !477, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtCsluekWoTk8SK_11proc_macro211TokenStreamNtB5_12SpecToString14spec_to_stringCslkzCjlEuW1f_5xtask: argument 0"}
!480 = distinct !{!480, i1 false, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCslkzCjlEuW1f_5xtask"}
!481 = distinct !{!481, !480, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCslkzCjlEuW1f_5xtask: argument 0"}
!482 = distinct !{!482, i1 false, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE7get_endCslkzCjlEuW1f_5xtask"}
!483 = distinct !{!483, !482, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE7get_endCslkzCjlEuW1f_5xtask: argument 0"}
!484 = distinct !{!484, i1 false, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask"}
!485 = distinct !{!485, !484, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask: argument 0"}
!486 = distinct !{!486, i1 false, !"_RNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar17write_doc_comment"}
!487 = distinct !{!487, !486, !"_RNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar17write_doc_comment: argument 1"}
!488 = distinct !{!488, !486, !"_RNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar17write_doc_comment: argument 0"}
!489 = distinct !{!489, !480, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCslkzCjlEuW1f_5xtask: argument 0:h.rot"}
!490 = !{!336}
!491 = !{!337}
!492 = !{!336, !337}
!493 = !{!339}
!494 = !{!340}
!495 = !{!339, !340}
!496 = !{!342}
!497 = !{!343, !342}
!498 = !{!343}
!499 = !{!345}
!500 = !{!346, !343, !342}
!501 = !{!346}
!502 = !{!345, !343, !342}
!503 = !{!345, !346, !343, !342}
!504 = !{!348}
!505 = !{!350, !349, !343, !342}
!506 = !{!350, !349, !348, !343, !342}
!507 = !{!349, !348, !343, !342}
!508 = !{!352}
!509 = !{!353, !350, !349, !348, !343, !342}
!510 = !{!355}
!511 = !{!356, !343, !342}
!512 = !{!358}
!513 = !{!359, !343, !342}
!514 = !{!361}
!515 = !{!361, !343, !342}
!516 = !{!363}
!517 = !{!364, !361, !343, !342}
!518 = !{!367, !366, !361, !343, !342}
!519 = !{!367, !361, !343, !342}
!520 = !{!369}
!521 = !{!371}
!522 = !{!371, !369}
!523 = !{!371, !369, !361, !343, !342}
!524 = !{!366, !361, !343, !342}
!525 = !{!373}
!526 = !{!375}
!527 = !{!375, !373}
!528 = !{!375, !373, !361, !343, !342}
!529 = !{!377}
!530 = !{!378, !361, !343, !342}
!531 = !{!378, !377, !361, !343, !342}
!532 = !{!380}
!533 = !{!382}
!534 = !{!383}
!535 = !{!382, !384, !383, !343, !342}
!536 = !{!384, !383, !343, !342}
!537 = !{!386}
!538 = !{!388, !382}
!539 = !{!389, !384, !383, !343, !342}
!540 = !{!382, !383, !343, !342}
!541 = !{!390, !382, !384, !383, !343, !342}
!542 = !{!390, !386, !382, !384, !343, !342}
!543 = !{!390, !386, !382, !384, !383, !343, !342}
!544 = !{!392}
!545 = !{!"address", !"read_provenance"}
!546 = !{!394}
!547 = !{!395, !343, !342}
!548 = !{!397}
!549 = !{!397, !343, !342}
!550 = !{!399}
!551 = !{!401, !343, !342}
!552 = !{!406, !405, !403, !397, !343, !342}
!553 = !{!403, !397, !343, !342}
!554 = !{!406, !405, !399, !403, !397, !343, !342}
!555 = !{!408}
!556 = !{!413, !412, !410, !397, !343, !342}
!557 = !{!410, !397, !343, !342}
!558 = !{!413, !412, !408, !410, !397, !343, !342}
!559 = !{!416, !415, !401, !343, !342}
!560 = !{!"branch_weights", !"expected", i32 2146078949, i32 1404699}
!561 = !{!418, !343, !342}
!562 = !{!421, !420, !418, !343, !342}
!563 = !{!423}
!564 = !{!425, !423, !343, !342}
!565 = !{!428, !427, !425, !423, !343, !342}
!566 = !{!430}
!567 = !{!432}
!568 = !{!433, !432}
!569 = !{!433}
!570 = !{!435, !433, !432}
!571 = !{!439, !438, !437, !433, !432}
!572 = !{!441, !439, !438, !437, !433, !432}
!573 = !{!443}
!574 = !{!446, !443, !445, !441, !439, !438, !437, !433, !432}
!575 = !{!448, !446, !445, !441, !439, !438, !437, !433, !432}
!576 = !{!450}
!577 = !{!452}
!578 = !{!454}
!579 = !{!455}
!580 = !{!454, !441, !439, !438, !437, !433, !432}
!581 = !{!457, !454, !455, !441, !439, !438, !437, !433, !432}
!582 = !{!454, !455, !441, !439, !438, !437, !433, !432}
!583 = !{!459, !457, !454, !455, !441, !439, !438, !437, !433, !432}
!584 = !{!454, !455}
!585 = !{!462, !461, !433, !432}
!586 = !{!465, !464, !462, !461, !433, !432}
!587 = !{!465, !462, !461, !433, !432}
!588 = !{!461, !433, !432}
!589 = !{!467}
!590 = !{!468, !467, !433, !432}
!591 = !{!470}
!592 = !{!472}
!593 = !{!468}
!594 = !{!472, !470}
!595 = !{!468, !433, !432}
!596 = !{!472, !470, !468, !433, !432}
!597 = !{!467, !433, !432}
!598 = !{!474}
!599 = !{!476}
!600 = !{!476, !474, !467}
!601 = !{!476, !474, !468, !433, !432}
!602 = !{!479, !478, !433, !432}
!603 = !{!479, !433, !432}
!604 = !{!478, !433, !432}
!605 = !{!481}
!606 = !{!481, !433, !432}
!607 = !{!483, !481}
!608 = !{!485}
!609 = !{!488, !487, !433, !432}
!610 = !{!489}
!611 = distinct !{!611, i1 false, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push"}
!612 = distinct !{!612, !611, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push: argument 0"}
!613 = !{!612}
!614 = distinct !{!614, i1 false, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str"}
!615 = distinct !{!615, !614, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str: argument 1"}
!616 = distinct !{!616, !614, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str: argument 0"}
!617 = distinct !{!617, i1 false, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask"}
!618 = distinct !{!618, !617, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask: argument 0"}
!619 = !{!615}
!620 = !{!618, !616}
!621 = distinct !{!621, i1 false, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!622 = distinct !{!622, !621, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!623 = distinct !{!623, i1 false, !"_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains"}
!624 = distinct !{!624, !623, !"_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains: argument 0"}
!625 = distinct !{!625, !623, !"_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains: argument 1"}
!626 = distinct !{!626, i1 false, !"_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECslkzCjlEuW1f_5xtask"}
!627 = distinct !{!627, !626, !"_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECslkzCjlEuW1f_5xtask: argument 1"}
!628 = distinct !{!628, !626, !"_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECslkzCjlEuW1f_5xtask: argument 0"}
!629 = distinct !{!629, i1 false, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask"}
!630 = distinct !{!630, !629, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask: argument 0"}
!631 = distinct !{!631, i1 false, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains0CslkzCjlEuW1f_5xtask"}
!632 = distinct !{!632, !631, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains0CslkzCjlEuW1f_5xtask: argument 0"}
!633 = distinct !{!633, i1 false, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECslkzCjlEuW1f_5xtask"}
!634 = distinct !{!634, !633, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECslkzCjlEuW1f_5xtask: argument 1"}
!635 = distinct !{!635, !633, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECslkzCjlEuW1f_5xtask: argument 0"}
!636 = !{!622}
!637 = !{!624}
!638 = !{!625}
!639 = !{!632, !630, !628, !627, !625}
!640 = !{!632, !630, !628, !627, !624, !625}
!641 = !{!624, !625}
!642 = !{!635, !634}
!643 = distinct !{!643, i1 false, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!644 = distinct !{!644, !643, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!645 = distinct !{!645, !643, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!646 = distinct !{!646, !643, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!647 = distinct !{!647, i1 false, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!648 = distinct !{!648, !647, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!649 = distinct !{!649, i1 false, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslkzCjlEuW1f_5xtask"}
!650 = distinct !{!650, !649, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslkzCjlEuW1f_5xtask: argument 0"}
!651 = distinct !{!651, i1 false, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask"}
!652 = distinct !{!652, !651, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask: argument 0"}
!653 = distinct !{!653, !651, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask: argument 1"}
!654 = distinct !{!654, !651, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask: argument 2"}
!655 = distinct !{!655, !651, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask: argument 3"}
!656 = distinct !{!656, i1 false, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!657 = distinct !{!657, !656, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!658 = distinct !{!658, i1 false, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask"}
!659 = distinct !{!659, !658, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask: argument 0"}
!660 = distinct !{!660, !658, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask: argument 1"}
!661 = distinct !{!661, !658, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask: argument 2"}
!662 = distinct !{!662, !658, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask: argument 3"}
!663 = distinct !{!663, i1 false, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!664 = distinct !{!664, !663, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!665 = !{!644}
!666 = !{!645}
!667 = !{!646}
!668 = !{!648}
!669 = !{!645, !646}
!670 = !{!650, !645, !646}
!671 = !{!645, !644}
!672 = !{!650, !645, !644}
!673 = !{!652}
!674 = !{!653}
!675 = !{!654}
!676 = !{!655}
!677 = !{!652, !654, !655}
!678 = !{!652, !653, !655}
!679 = !{!652, !653, !654}
!680 = !{!657, !652}
!681 = !{!653, !654, !655}
!682 = !{!652, !653, !654, !655}
!683 = !{!659}
!684 = !{!660}
!685 = !{!661}
!686 = !{!662}
!687 = !{!659, !661, !662}
!688 = !{!659, !660, !662}
!689 = !{!659, !660, !661}
!690 = !{!659, !660, !661, !662}
!691 = !{!664, !659}
!692 = !{!660, !661, !662}
!693 = distinct !{!693, i1 false, !"_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CslkzCjlEuW1f_5xtask"}
!694 = distinct !{!694, !693, !"_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CslkzCjlEuW1f_5xtask: argument 0"}
!695 = distinct !{!695, i1 false, !"_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECslkzCjlEuW1f_5xtask"}
!696 = distinct !{!696, !695, !"_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECslkzCjlEuW1f_5xtask: argument 0"}
!697 = !{!696, !694}
end_hunk_1

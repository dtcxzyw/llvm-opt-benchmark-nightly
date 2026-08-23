Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xtask.xtask.f877180179d334e7-cgu.01?download=true
inline.NumInlined: 414
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char:bb.a
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !611
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !614
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !617, !noalias !614, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !617, !noalias !614, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !617, !noalias !614
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !617, !noalias !614
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
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
  %i.a = load i64, ptr %0, align 8, !range !70, !noundef !5 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = add i64 %i.a, -9223372036854775807
  %i.d = select i1 %i.b, i64 %i.c, i64 0          ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !70, !noundef !5 ; 2 uses
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
  %i.al = load i64, ptr %.tr.be, align 8, !range !70, !noundef !5 ; 2 uses
  %i.am = icmp slt i64 %i.al, 0
  %i.an = add i64 %i.al, -9223372036854775807
  %i.ao = select i1 %i.am, i64 %i.an, i64 0       ; 2 uses
  %i.ap = load i64, ptr %.tr5.be, align 8, !range !70, !noundef !5 ; 2 uses
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
  %.sroa.0.0 = phi i1 [ false, %bb.d ], [ true, %bb.g ], [ true, %bb.a ], [ %i.ao, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit ], [ %i.bc, %bb.o ], [ true, %bb.i ], [ true, %.lr.ph.split.us.i.i ], [ true, %bb.e ], [ true, %bb.h ], [ true, %bb.f ], [ %i.x, %bb.j ], [ %.not27.i.i.not.not, %.split.us.i.i ], [ %.not27.i.i.not.not, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %bb.e, label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 6
  br i1 %i.f, label %bb.o, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.g = load i8, ptr %0, align 1, !noundef !5    ; 6 uses
  %i.h = load i8, ptr %2, align 1, !alias.scope !621, !noundef !5
  %i.i = icmp eq i8 %i.h, %i.g
  br i1 %i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !621, !noundef !5
  %i.l = icmp eq i8 %i.k, %i.g
  br i1 %i.l, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !621, !noundef !5
  %i.o = icmp eq i8 %i.n, %i.g
  br i1 %i.o, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !621, !noundef !5
  %i.r = icmp eq i8 %i.q, %i.g
  br i1 %i.r, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !621, !noundef !5
  %i.u = icmp eq i8 %i.t, %i.g
  br i1 %i.u, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !621, !noundef !5
  %i.x = icmp eq i8 %i.w, %i.g
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.k:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.y = load i8, ptr %0, align 1, !alias.scope !624, !noalias !627, !noundef !5
  %i.z = icmp eq i64 %1, 2
  br i1 %i.z, label %.lr.ph.split.us.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4) ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %1
  br i1 %i.ab, label %.lr.ph, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i
  %i.ac = icmp ult i64 %i.aa, %i.ae
  br i1 %i.ac, label %.lr.ph, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %i.ad = phi i64 [ %i.ae, %bb.m ], [ %1, %bb.l ]
  %i.ae = add nsw i64 %i.ad, -1                   ; 5 uses
  %i.af = icmp ult i64 %i.ae, %1
  br i1 %i.af, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef range(i64 2, 33) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !629
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !624, !noalias !637, !noundef !5
  %.not.i.not.i.i = icmp eq i8 %i.ah, %i.y
  br i1 %.not.i.not.i.i, label %bb.m, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i, %bb.k
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !638, !noalias !639
  %i.ai = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.ai, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %i.ak = add nsw i64 %i.am, -1
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.aj, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !638, !noalias !639
  %i.al = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.al, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i: ; preds = %.lr.ph.split.us.i.i, %.split.us.i.i
  %.pn.i = phi ptr [ %i.aj, %.split.us.i.i ], [ %2, %.lr.ph.split.us.i.i ]
  %i.am = phi i64 [ %i.ak, %.split.us.i.i ], [ 5, %.lr.ph.split.us.i.i ] ; 2 uses
  %.not27.i.i.not.not = icmp samesign ule i64 %1, %i.am ; 3 uses
  br i1 %.not27.i.i.not.not, label %.split.us.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(104) %i.a) #22
  %i.an = load i64, ptr %i.b, align 8, !range !6, !noundef !5
  %i.ao = trunc nuw i64 %i.an to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.o:                                             ; preds = %bb.d
  %i.ap = load i32, ptr %0, align 1
  %i.aq = load i32, ptr %2, align 1
  %i.ar = xor i32 %i.ap, %i.aq
  %i.as = getelementptr i8, ptr %0, i64 4
  %i.at = getelementptr i8, ptr %2, i64 4
  %i.au = load i16, ptr %i.as, align 1
  %i.av = load i16, ptr %i.at, align 1
  %i.aw = zext i16 %i.au to i32
  %i.ax = zext i16 %i.av to i32
  %i.ay = xor i32 %i.aw, %i.ax
  %i.az = or i32 %i.ar, %i.ay
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
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
  %i.e = load i8, ptr %i.d, align 2, !range !360, !alias.scope !643, !noalias !646, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !643, !noalias !646, !nonnull !5, !noundef !5 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !643, !noalias !646, !noundef !5 ; 16 uses
  %.promoted52 = load i8, ptr %i.g, align 8, !alias.scope !643, !noalias !646 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
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
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !650, !noalias !653, !noundef !5
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit199

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit200, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !654, !noundef !5 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !654, !noundef !5
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
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !654, !noundef !5
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
  %i.au = load i8, ptr %i.ar, align 1, !noalias !654, !noundef !5
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

end_hunk_0

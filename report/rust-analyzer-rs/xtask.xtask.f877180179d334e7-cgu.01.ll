Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xtask.xtask.f877180179d334e7-cgu.01?download=true
inline.NumInlined: 414
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXst_Csby8LzHty7VS_9ungrammarNtB5_4RuleNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq:bb.a
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.tr21, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noundef !6 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr522, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !6
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.i, label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr21, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr522, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !6
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.j, label %.loopexit

tailrecurse.backedge:                             ; preds = %.lr.ph, %bb.h, %.lr.ph
  %.sink53 = phi i64 [ 24, %bb.h ], [ 8, %.lr.ph ], [ 8, %.lr.ph ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr21, i64 %.sink53
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr522, i64 %.sink53
  %.tr5.be = load ptr, ptr %i.ak, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.tr.be = load ptr, ptr %i.aj, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.al = load i64, ptr %.tr.be, align 8, !range !12, !noundef !6 ; 2 uses
  %i.am = icmp slt i64 %i.al, 0
  %i.an = add i64 %i.al, -9223372036854775807
  %i.ao = select i1 %i.am, i64 %i.an, i64 0       ; 2 uses
  %i.ap = load i64, ptr %.tr5.be, align 8, !range !12, !noundef !6 ; 2 uses
  %i.aq = icmp slt i64 %i.ap, 0
  %i.ar = add i64 %i.ap, -9223372036854775807
  %i.as = select i1 %i.aq, i64 %i.ar, i64 0
  %i.at = icmp eq i64 %i.ao, %i.as
  br i1 %i.at, label %.lr.ph, label %.loopexit

bb.h:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.tr522, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !6, !noundef !6
  %i.aw = getelementptr inbounds nuw i8, ptr %.tr21, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !6, !noundef !6
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.ax, ptr nonnull %i.av, i64 %i.l)
  %i.ay = icmp eq i32 %bcmp, 0
  br i1 %i.ay, label %tailrecurse.backedge, label %.loopexit

bb.i:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %.tr522, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !6, !noundef !6
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr21, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !6, !noundef !6
  %i.bd = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtCsby8LzHty7VS_9ungrammar4RuleINtB5_14SlicePartialEqBC_E17equal_same_lengthCslkzCjlEuW1f_5xtask(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ba, i64 noundef %i.aa)
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.tr522, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !6, !noundef !6
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr21, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !6, !noundef !6
  %i.bi = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtCsby8LzHty7VS_9ungrammar4RuleINtB5_14SlicePartialEqBC_E17equal_same_lengthCslkzCjlEuW1f_5xtask(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bf, i64 noundef %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !668 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 6
  br i1 %i.d, label %bb.c, label %bb.d

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i, %.split.us.i.i, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.lr.ph.split.us.i.i, %bb.d, %bb.a, %bb.o, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i1 [ false, %bb.d ], [ true, %bb.g ], [ true, %bb.a ], [ %i.an, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit ], [ %i.bb, %bb.o ], [ true, %bb.i ], [ true, %.lr.ph.split.us.i.i ], [ true, %bb.e ], [ true, %bb.h ], [ true, %bb.f ], [ %i.x, %bb.j ], [ %.not27.i.i.not.not, %.split.us.i.i ], [ %.not27.i.i.not.not, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %bb.e, label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 6
  br i1 %i.f, label %bb.o, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.g = load i8, ptr %0, align 1, !noundef !6    ; 6 uses
  %i.h = load i8, ptr %2, align 1, !alias.scope !669, !noundef !6
  %i.i = icmp eq i8 %i.h, %i.g
  br i1 %i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !669, !noundef !6
  %i.l = icmp eq i8 %i.k, %i.g
  br i1 %i.l, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !669, !noundef !6
  %i.o = icmp eq i8 %i.n, %i.g
  br i1 %i.o, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !669, !noundef !6
  %i.r = icmp eq i8 %i.q, %i.g
  br i1 %i.r, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !669, !noundef !6
  %i.u = icmp eq i8 %i.t, %i.g
  br i1 %i.u, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !669, !noundef !6
  %i.x = icmp eq i8 %i.w, %i.g
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.k:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.y = load i8, ptr %0, align 1, !alias.scope !670, !noundef !6
  %i.z = icmp eq i64 %1, 2
  br i1 %i.z, label %.lr.ph.split.us.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.aa = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4)
  br label %bb.m

bb.l:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i
  %i.ab = icmp ult i64 %i.aa, %i.ad
  br i1 %i.ab, label %bb.m, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %i.ac = phi i64 [ %1, %.lr.ph ], [ %i.ad, %bb.l ]
  %i.ad = add nsw i64 %i.ac, -1                   ; 5 uses
  %i.ae = icmp ult i64 %i.ad, %1
  br i1 %i.ae, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef range(i64 2, 33) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !672
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !670, !noalias !673, !noundef !6
  %.not.i.not.i.i = icmp eq i8 %i.ag, %i.y
  br i1 %.not.i.not.i.i, label %bb.l, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i, %bb.k
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !674, !noalias !675
  %i.ah = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.ah, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %i.aj = add nsw i64 %i.al, -1
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ai, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !674, !noalias !675
  %i.ak = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.ak, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i: ; preds = %.lr.ph.split.us.i.i, %.split.us.i.i
  %.pn.i = phi ptr [ %i.ai, %.split.us.i.i ], [ %2, %.lr.ph.split.us.i.i ]
  %i.al = phi i64 [ %i.aj, %.split.us.i.i ], [ 5, %.lr.ph.split.us.i.i ] ; 2 uses
  %.not27.i.i.not.not = icmp samesign ule i64 %1, %i.al ; 3 uses
  br i1 %.not27.i.i.not.not, label %.split.us.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(104) %i.a) #22
  %i.am = load i64, ptr %i.b, align 8, !range !7, !noundef !6
  %i.an = trunc nuw i64 %i.am to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.o:                                             ; preds = %bb.d
  %i.ao = load i32, ptr %0, align 1
  %i.ap = load i32, ptr %2, align 1
  %i.aq = xor i32 %i.ao, %i.ap
  %i.ar = getelementptr i8, ptr %0, i64 4
  %i.as = getelementptr i8, ptr %2, i64 4
  %i.at = load i16, ptr %i.ar, align 1
  %i.au = load i16, ptr %i.as, align 1
  %i.av = zext i16 %i.at to i32
  %i.aw = zext i16 %i.au to i32
  %i.ax = xor i32 %i.av, %i.aw
  %i.ay = or i32 %i.aq, %i.ax
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !699 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !7, !noundef !6
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !17, !alias.scope !700, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !700, !nonnull !6, !noundef !6 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !700, !noundef !6 ; 16 uses
  %.promoted52 = load i8, ptr %i.g, align 8, !alias.scope !700 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
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
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !702, !noalias !703, !noundef !6
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit199

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit200, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !704, !noundef !6 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !704, !noundef !6
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
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !704, !noundef !6
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
  %i.au = load i8, ptr %i.ar, align 1, !noalias !704, !noundef !6
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
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !701
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !6 ; 2 uses
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !6 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !6 ; 16 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 5 uses
  br i1 %i.by, label %bb.aa, label %bb.s

bb.l:                                             ; preds = %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit199

bb.m:                                             ; preds = %bb.l
  %i.cj = load i8, ptr %i.bk, align 1, !alias.scope !702, !noalias !705, !noundef !6
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.n, label %.loopexit199

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = load i8, ptr %i.bl, align 1, !noalias !706, !noundef !6 ; 5 uses
  %i.cm = icmp sgt i8 %i.cl, -1
  br i1 %i.cm, label %bb.p, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i: ; preds = %bb.o
  %i.cn = and i8 %i.cl, 31
  %i.co = zext nneg i8 %i.cn to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bp)
  %i.cp = load i8, ptr %i.bn, align 1, !noalias !706, !noundef !6
  %i.cq = shl nuw nsw i32 %i.co, 6
  %i.cr = and i8 %i.cp, 63
  %i.cs = zext nneg i8 %i.cr to i32               ; 2 uses
  %i.ct = or disjoint i32 %i.cq, %i.cs
  %i.cu = icmp samesign ugt i8 %i.cl, -33
  br i1 %i.cu, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i, label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cv = zext nneg i8 %i.cl to i32
  br label %.loopexit.loopexit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.cw = load i8, ptr %i.bq, align 1, !noalias !706, !noundef !6
  %i.cx = shl nuw nsw i32 %i.cs, 6
  %i.cy = and i8 %i.cw, 63
  %i.cz = zext nneg i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cx, %i.cz            ; 2 uses
  %i.db = shl nuw nsw i32 %i.co, 12
  %i.dc = or disjoint i32 %i.da, %i.db
  %i.dd = icmp samesign ugt i8 %i.cl, -17
  br i1 %i.dd, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i, label %.loopexit.loopexit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i
  tail call void @llvm.assume(i1 %i.bv)
  %i.de = load i8, ptr %i.bt, align 1, !noalias !706, !noundef !6
  %i.df = shl nuw nsw i32 %i.co, 18
  %i.dg = and i32 %i.df, 1835008
  %i.dh = shl nuw nsw i32 %i.da, 6
  %i.di = and i8 %i.de, 63
  %i.dj = zext nneg i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dh, %i.dj
  %i.dl = or disjoint i32 %i.dk, %i.dg
  br label %.loopexit.loopexit

.loopexit199:                                     ; preds = %bb.m, %.split.i.i, %bb.c, %.split.i.i.peel
  %.lcssa195 = phi i8 [ %.promoted52, %.split.i.i.peel ], [ %.promoted52, %bb.c ], [ 1, %.split.i.i ], [ 1, %bb.m ]
  %.lcssa192 = phi i64 [ %.promoted, %.split.i.i.peel ], [ %.promoted, %bb.c ], [ %i.bh, %.split.i.i ], [ %i.bh, %bb.m ]
  %i.dm = xor i8 %.lcssa195, 1
  store i8 %i.dm, ptr %i.g, align 8, !alias.scope !700
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef %.lcssa192, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @246) #23, !noalias !705
  unreachable

.loopexit.loopexit:                               ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i, %bb.p, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.dc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i ], [ %i.dl, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i ], [ %i.ct, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i ], [ %i.cv, %bb.p ]
  %i.dn = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.dn)
  br label %.loopexit

.loopexit200:                                     ; preds = %bb.d
  %i.do = xor i8 %.promoted52, 1
  store i8 %i.do, ptr %i.g, align 8, !alias.scope !700
  br i1 %i.l, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit200
  store i8 1, ptr %i.d, align 2, !alias.scope !700
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask.exit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %.lcssa194 = phi i64 [ %.promoted, %bb.g ], [ %i.bh, %.loopexit.loopexit ]
  store i8 0, ptr %i.g, align 8, !alias.scope !700
  br label %bb.r

.critedge:                                        ; preds = %bb.n
  store i8 0, ptr %i.g, align 8, !alias.scope !700
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %.loopexit, %.loopexit200
  %i.dp = phi i64 [ %.lcssa194, %.loopexit ], [ %i.k, %.loopexit200 ], [ %i.k, %.critedge ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dp, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dp, ptr %i.dr, align 8
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask.exit

_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.r, %bb.q, %.preheader, %.split.us.i12, %._crit_edge.i5, %.split.us.i, %._crit_edge.i
  %storemerge.i.sink = phi i64 [ 1, %.split.us.i12 ], [ 1, %.split.us.i ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i5 ], [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.s:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %.promoted.i = load i64, ptr %i.ch, align 8, !alias.scope !708 ; 2 uses
  %i.ds = add i64 %.promoted.i, %i.ci             ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cc
  br i1 %i.dt, label %.lr.ph.i1, label %._crit_edge.i

.lr.ph.i1:                                        ; preds = %bb.s
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !708, !noundef !6
  %i.dw = load i64, ptr %i.c, align 8, !alias.scope !708 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !708 ; 2 uses
  %i.dz = sub i64 %i.cg, %i.dy
  %invariant.op = sub i64 1, %i.dw
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.v, %bb.s
  store i64 %i.cc, ptr %i.ch, align 8, !alias.scope !708
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask.exit

.lr.ph.split.i:                                   ; preds = %bb.v, %.lr.ph.i1
  %i.ea = phi i64 [ %.sink70.i, %bb.v ], [ %i.bx, %.lr.ph.i1 ] ; 3 uses
  %i.eb = phi i64 [ %i.el, %bb.v ], [ %i.ds, %.lr.ph.i1 ]
  %i.ec = phi i64 [ %.sink71.i, %bb.v ], [ %.promoted.i, %.lr.ph.i1 ] ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !709, !noundef !6
  %i.ef = and i8 %i.ee, 63
  %i.eg = zext nneg i8 %i.ef to i64
  %i.eh = shl nuw i64 1, %i.eg
  %i.ei = and i64 %i.eh, %i.dv
  %.not.i2 = icmp eq i64 %i.ei, 0
  br i1 %.not.i2, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.i
  %i.ej = add i64 %i.ec, %i.cg
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.i
  %..i.i3 = tail call noundef i64 @llvm.umax.i64(i64 %i.ea, i64 %i.dw) ; 2 uses
  %i.ek = icmp ult i64 %..i.i3, %i.cg
  br i1 %i.ek, label %.lr.ph153, label %.preheader36.i.preheader

bb.v:                                             ; preds = %bb.z, %bb.y, %bb.t
  %.sink71.i = phi i64 [ %i.fj, %bb.z ], [ %i.fi, %bb.y ], [ %i.ej, %bb.t ] ; 3 uses
  %.sink70.i = phi i64 [ 0, %bb.z ], [ %i.dz, %bb.y ], [ 0, %bb.t ] ; 2 uses
  store i64 %.sink71.i, ptr %i.ch, align 8, !alias.scope !708
  store i64 %.sink70.i, ptr %i.bw, align 8, !alias.scope !708
  %i.el = add i64 %.sink71.i, %i.ci               ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cc
  br i1 %i.em, label %.lr.ph.split.i, label %._crit_edge.i

bb.w:                                             ; preds = %.lr.ph153
  %i.en = add nuw nsw i64 %.sroa.04.0.i152, 1     ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.cg
  br i1 %i.eo, label %.lr.ph153, label %.preheader36.i.preheader

.preheader36.i.preheader:                         ; preds = %bb.w, %bb.u
  %i.ep = icmp ult i64 %i.ea, %i.dw
  br i1 %i.ep, label %.lr.ph155, label %.split.us.i

.lr.ph153:                                        ; preds = %bb.u, %bb.w
  %.sroa.04.0.i152 = phi i64 [ %i.en, %bb.w ], [ %..i.i3, %bb.u ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.04.0.i152
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !710, !noundef !6
  %i.es = add i64 %.sroa.04.0.i152, %i.ec         ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.cc
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.es
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !709, !noundef !6
  %.not21.i = icmp eq i8 %i.er, %i.ev
  br i1 %.not21.i, label %bb.w, label %bb.z

.preheader36.i:                                   ; preds = %bb.x
  %i.ew = icmp ult i64 %i.ea, %i.fa
  br i1 %i.ew, label %.lr.ph155, label %.split.us.i

.split.us.i:                                      ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.ex = add i64 %i.ec, %i.cg                    ; 2 uses
  store i64 %i.ex, ptr %i.ch, align 8, !alias.scope !708
  store i64 0, ptr %i.bw, align 8, !alias.scope !708
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ec, ptr %i.ey, align 8, !alias.scope !711
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ex, ptr %i.ez, align 8, !alias.scope !711
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask.exit

.lr.ph155:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i154 = phi i64 [ %i.fa, %.preheader36.i ], [ %i.dw, %.preheader36.i.preheader ]
  %i.fa = add i64 %.sroa.2.0.i154, -1             ; 6 uses
  %i.fb = icmp ult i64 %i.fa, %i.cg
  br i1 %i.fb, label %bb.x, label %.split32.us.i

bb.x:                                             ; preds = %.lr.ph155
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.fa
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !710, !noundef !6
  %i.fe = add i64 %i.fa, %i.ec                    ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.cc
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.fe
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !709, !noundef !6
  %.not20.i = icmp eq i8 %i.fd, %i.fh
  br i1 %.not20.i, label %.preheader36.i, label %bb.y

.split32.us.i:                                    ; preds = %.lr.ph155
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.fa, i64 noundef range(i64 0, -9223372036854775808) %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !noalias !712
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.fi = add i64 %i.ec, %i.dy
  br label %bb.v

bb.z:                                             ; preds = %.lr.ph153
  %.reass.reass = add i64 %i.ec, %invariant.op
  %i.fj = add i64 %.reass.reass, %.sroa.04.0.i152
  br label %bb.v

bb.aa:                                            ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %.promoted.i4 = load i64, ptr %i.ch, align 8, !alias.scope !714 ; 3 uses
  %i.fk = add i64 %.promoted.i4, %i.ci            ; 3 uses
  %i.fl = icmp ult i64 %i.fk, %i.cc
  br i1 %i.fl, label %.lr.ph.i7, label %._crit_edge.i5

.lr.ph.i7:                                        ; preds = %bb.aa
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !714, !noundef !6 ; 2 uses
  %i.fo = load i64, ptr %i.c, align 8, !alias.scope !714
  %.fr63 = freeze i64 %i.fo                       ; 10 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !714
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr63, i64 range(i64 0, -9223372036854775808) %i.cg) ; 2 uses
  %i.fr = add i64 %.fr63, -1                      ; 2 uses
  %.first_iter.i8 = icmp ult i64 %i.fr, %i.cg
  %i.fs = sub i64 1, %.fr63                       ; 2 uses
  br i1 %.first_iter.i8, label %.lr.ph.split.us.i.us.preheader, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i7
  %exitcond.not.i157.not = icmp ult i64 %.fr63, %i.cg
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i.us.preheader:                   ; preds = %.lr.ph.i7
  %exitcond.not.i.us162.not = icmp ult i64 %.fr63, %i.cg
  %.not34.i.us.us165 = icmp eq i64 %.fr63, 0
  br label %.lr.ph.split.us.i.us

.lr.ph.split.us.i.us:                             ; preds = %.lr.ph.split.us.i.us.preheader, %bb.ad
  %i.ft = phi i64 [ %i.gt, %bb.ad ], [ %i.fk, %.lr.ph.split.us.i.us.preheader ]
  %i.fu = phi i64 [ %.sink.i9.us, %bb.ad ], [ %.promoted.i4, %.lr.ph.split.us.i.us.preheader ] ; 7 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ft
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !715, !noundef !6
  %i.fx = and i8 %i.fw, 63
  %i.fy = zext nneg i8 %i.fx to i64
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = and i64 %i.fz, %i.fn
  %.not.us.i.us = icmp eq i64 %i.ga, 0
  br i1 %.not.us.i.us, label %bb.ac, label %.preheader35.i.us.preheader

.preheader35.i.us.preheader:                      ; preds = %.lr.ph.split.us.i.us
  br i1 %exitcond.not.i.us162.not, label %.lr.ph164, label %.preheader.i10.us.us.preheader

.preheader35.i.us:                                ; preds = %.lr.ph164
  %i.gb = add i64 %.sroa.04.0.us.i.us163, 1       ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.gb, %umax.i
  br i1 %exitcond.not.i.us, label %.preheader.i10.us.us.preheader, label %.lr.ph164

.preheader.i10.us.us.preheader:                   ; preds = %.preheader35.i.us, %.preheader35.i.us.preheader
  br i1 %.not34.i.us.us165, label %.split.us.i12, label %.lr.ph167

.lr.ph164:                                        ; preds = %.preheader35.i.us.preheader, %.preheader35.i.us
  %.sroa.04.0.us.i.us163 = phi i64 [ %i.gb, %.preheader35.i.us ], [ %.fr63, %.preheader35.i.us.preheader ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.04.0.us.i.us163
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !716, !noundef !6
  %i.ge = add i64 %.sroa.04.0.us.i.us163, %i.fu   ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.cc
  tail call void @llvm.assume(i1 %i.gf)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ge
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !715, !noundef !6
  %.not21.us.i.us = icmp eq i8 %i.gd, %i.gh
  br i1 %.not21.us.i.us, label %.preheader35.i.us, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph164
  %i.gi = add i64 %i.fs, %i.fu
  %i.gj = add i64 %i.gi, %.sroa.04.0.us.i.us163
  br label %bb.ad

.preheader.i10.us.us:                             ; preds = %.lr.ph167
  %.not34.i.us.us = icmp eq i64 %i.gk, 0
  br i1 %.not34.i.us.us, label %.split.us.i12, label %.lr.ph167

.lr.ph167:                                        ; preds = %.preheader.i10.us.us.preheader, %.preheader.i10.us.us
  %.sroa.2.0.us.i.us.us166 = phi i64 [ %i.gk, %.preheader.i10.us.us ], [ %.fr63, %.preheader.i10.us.us.preheader ]
  %i.gk = add i64 %.sroa.2.0.us.i.us.us166, -1    ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !alias.scope !716, !noundef !6
  %i.gn = add i64 %i.gk, %i.fu                    ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.cc
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.gn
  %i.gq = load i8, ptr %i.gp, align 1, !alias.scope !715, !noundef !6
  %.not20.us.i.us.us = icmp eq i8 %i.gm, %i.gq
  br i1 %.not20.us.i.us.us, label %.preheader.i10.us.us, label %.split.us.us

.split.us.us:                                     ; preds = %.lr.ph167
  %i.gr = add i64 %i.fu, %i.fq
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.split.us.i.us
  %i.gs = add i64 %i.fu, %i.cg
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.split.us.us, %bb.ab
  %.sink.i9.us = phi i64 [ %i.gs, %bb.ac ], [ %i.gj, %bb.ab ], [ %i.gr, %.split.us.us ] ; 3 uses
  store i64 %.sink.i9.us, ptr %i.ch, align 8, !alias.scope !714
  %i.gt = add i64 %.sink.i9.us, %i.ci             ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.cc
  br i1 %i.gu, label %.lr.ph.split.us.i.us, label %._crit_edge.i5

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.ag
  %i.gv = phi i64 [ %i.hn, %bb.ag ], [ %i.fk, %.lr.ph.split.us.i.preheader ]
  %i.gw = phi i64 [ %.sink.i9, %bb.ag ], [ %.promoted.i4, %.lr.ph.split.us.i.preheader ] ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.gv
  %i.gy = load i8, ptr %i.gx, align 1, !alias.scope !715, !noundef !6
  %i.gz = and i8 %i.gy, 63
  %i.ha = zext nneg i8 %i.gz to i64
  %i.hb = shl nuw i64 1, %i.ha
  %i.hc = and i64 %i.hb, %i.fn
  %.not.us.i = icmp eq i64 %i.hc, 0
  br i1 %.not.us.i, label %bb.af, label %.preheader35.i.preheader

.preheader35.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i157.not, label %.lr.ph159, label %.preheader.i10

.preheader35.i:                                   ; preds = %.lr.ph159
  %i.hd = add i64 %.sroa.04.0.us.i158, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hd, %umax.i
  br i1 %exitcond.not.i, label %.preheader.i10, label %.lr.ph159

.lr.ph159:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i158 = phi i64 [ %i.hd, %.preheader35.i ], [ %.fr63, %.preheader35.i.preheader ] ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.04.0.us.i158
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !716, !noundef !6
  %i.hg = add i64 %.sroa.04.0.us.i158, %i.gw      ; 2 uses
  %i.hh = icmp ult i64 %i.hg, %i.cc
  tail call void @llvm.assume(i1 %i.hh)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.hg
  %i.hj = load i8, ptr %i.hi, align 1, !alias.scope !715, !noundef !6
  %.not21.us.i = icmp eq i8 %i.hf, %i.hj
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.ae

.preheader.i10:                                   ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.not34.i = icmp eq i64 %.fr63, 0
  br i1 %.not34.i, label %.split.us.i12, label %.split32.us.i11

.split32.us.i11:                                  ; preds = %.preheader.i10
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.fr, i64 noundef range(i64 0, -9223372036854775808) %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !noalias !717
  unreachable

bb.ae:                                            ; preds = %.lr.ph159
  %i.hk = add i64 %i.fs, %i.gw
  %i.hl = add i64 %i.hk, %.sroa.04.0.us.i158
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.split.us.i
  %i.hm = add i64 %i.gw, %i.cg
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink.i9 = phi i64 [ %i.hm, %bb.af ], [ %i.hl, %bb.ae ] ; 3 uses
  store i64 %.sink.i9, ptr %i.ch, align 8, !alias.scope !714
  %i.hn = add i64 %.sink.i9, %i.ci                ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.cc
  br i1 %i.ho, label %.lr.ph.split.us.i, label %._crit_edge.i5

._crit_edge.i5:                                   ; preds = %bb.ag, %bb.ad, %bb.aa
  store i64 %i.cc, ptr %i.ch, align 8, !alias.scope !714
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask.exit

.split.us.i12:                                    ; preds = %.preheader.i10.us.us.preheader, %.preheader.i10.us.us, %.preheader.i10
  %.us-phi = phi i64 [ %i.gw, %.preheader.i10 ], [ %i.fu, %.preheader.i10.us.us ], [ %i.fu, %.preheader.i10.us.us.preheader ] ; 2 uses
  %i.hp = add i64 %.us-phi, %i.cg                 ; 2 uses
  store i64 %i.hp, ptr %i.ch, align 8, !alias.scope !714
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi, ptr %i.hq, align 8, !alias.scope !718
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hp, ptr %i.hr, align 8, !alias.scope !718
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !723 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !17, !noalias !724, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CslkzCjlEuW1f_5xtask.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECslkzCjlEuW1f_5xtask(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CslkzCjlEuW1f_5xtask.exit

_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CslkzCjlEuW1f_5xtask.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECslkzCjlEuW1f_5xtask(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCslkzCjlEuW1f_5xtask(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtB13_3vec3VecBZ_EECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB1m_NtNtBa_3cmp10PartialOrd2ltECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyNtNtB29_6string6StringNCNvB13_5lowers0_0E0INtNtB29_3vec3VecBZ_EEB17_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 96076792050570582), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_11sort_by_keyNtNtB2w_6string6StringNCNvB1q_5lowers0_0E0EB1u_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 96076792050570582), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyNtNtB29_6string6StringNCNvB13_5lowers_0E0INtNtB29_3vec3VecBZ_EEB17_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 96076792050570582), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_11sort_by_keyNtNtB2w_6string6StringNCNvB1q_5lowers_0E0EB1u_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 96076792050570582), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyTbNtNtB23_6string6StringENCNCNvB13_5lowers1_00E0INtNtB23_3vec3VecBZ_EEB17_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_11sort_by_keyTbNtNtB2q_6string6StringENCNCNvB1q_5lowers1_00E0EB1u_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsby8LzHty7VS_9ungrammar4NodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsby8LzHty7VS_9ungrammar8NodeDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsby8LzHty7VS_9ungrammar9TokenDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsiwvLk4GMN8X_10proc_macro9TokenTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsluekWoTk8SK_11proc_macro211TokenStreamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsluekWoTk8SK_11proc_macro25IdentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecRNtCsluekWoTk8SK_11proc_macro25IdentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VeccENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecjENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsby8LzHty7VS_9ungrammar4NodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsby8LzHty7VS_9ungrammar8NodeDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsby8LzHty7VS_9ungrammar9TokenDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsiwvLk4GMN8X_10proc_macro9TokenTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsluekWoTk8SK_11proc_macro211TokenStreamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsluekWoTk8SK_11proc_macro25IdentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src5FieldENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecRNtCsluekWoTk8SK_11proc_macro25IdentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVeccENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecjENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTRNtNtCsbSS6DM8SDEO_5alloc6string6StringuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCs89JjGp7luZU_4stdx13panic_contextNtB2_12PanicContextNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 4 dereferenceable(4)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2m_8adapters3map3MapINtNtNtB2o_5slice4iter4IterNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcENCNvB4g_14generate_nodess4_0EEB4k_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs7_NtCsjFn5boE4uz6_5quote9___privateINtB5_20IdentFragmentAdapterRRNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvXNtCsjFn5boE4uz6_5quote14ident_fragmentRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB2_13IdentFragment4spanCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsjFn5boE4uz6_5quote9___private8mk_ident(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef range(i32 0, 2), i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsluekWoTk8SK_11proc_macro2NtB2_11TokenStream3new(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsjFn5boE4uz6_5quote9___private10push_ident(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsjFn5boE4uz6_5quote9___private11push_colon2(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsq_NtCsjFn5boE4uz6_5quote9to_tokensNtCsluekWoTk8SK_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsjFn5boE4uz6_5quote9___private8push_and(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!482 = distinct !{!482, !481, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtCsbSS6DM8SDEO_5alloc6string6StringQNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess8_0E0B1X_: argument 0"}
!483 = distinct !{!483, !481, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtCsbSS6DM8SDEO_5alloc6string6StringQNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess8_0E0B1X_: argument 1"}
!484 = distinct !{!484, i1 true, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess8_0B7_"}
!485 = distinct !{!485, !484, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess8_0B7_: argument 0"}
!486 = distinct !{!486, i1 true, !"_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterRNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3any5checkRBV_NCNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess8_00E0INtNtNtB1H_3ops12control_flow11ControlFlowuEEB3d_"}
!487 = distinct !{!487, !486, !"_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterRNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3any5checkRBV_NCNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess8_00E0INtNtNtB1H_3ops12control_flow11ControlFlowuEEB3d_: argument 1"}
!488 = distinct !{!488, i1 true, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcENCNvB1O_14generate_nodess3_0EIBN_IB1l_NtB1M_10AstNodeSrcENCB2P_s4_0EENCB2P_s5_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_"}
!489 = distinct !{!489, !488, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcENCNvB1O_14generate_nodess3_0EIBN_IB1l_NtB1M_10AstNodeSrcENCB2P_s4_0EENCB2P_s5_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_: argument 1"}
!490 = distinct !{!490, !488, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstEnumSrcENCNvB1O_14generate_nodess3_0EIBN_IB1l_NtB1M_10AstNodeSrcENCB2P_s4_0EENCB2P_s5_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_: argument 0"}
!491 = distinct !{!491, i1 true, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess5_0B7_"}
!492 = distinct !{!492, !491, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess5_0B7_: argument 1"}
!493 = distinct !{!493, !491, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess5_0B7_: argument 0"}
!494 = distinct !{!494, i1 true, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess6_0B7_"}
!495 = distinct !{!495, !494, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess6_0B7_: argument 1"}
!496 = distinct !{!496, !494, !"_RNCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar14generate_nodess6_0B7_: argument 0"}
!497 = distinct !{!497, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsluekWoTk8SK_11proc_macro25IdentECslkzCjlEuW1f_5xtask"}
!498 = distinct !{!498, !497, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsluekWoTk8SK_11proc_macro25IdentECslkzCjlEuW1f_5xtask: argument 0"}
!499 = distinct !{!499, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro23imp5IdentECslkzCjlEuW1f_5xtask"}
!500 = distinct !{!500, !499, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro23imp5IdentECslkzCjlEuW1f_5xtask: argument 0"}
!501 = distinct !{!501, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsluekWoTk8SK_11proc_macro25IdentECslkzCjlEuW1f_5xtask"}
!502 = distinct !{!502, !501, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsluekWoTk8SK_11proc_macro25IdentECslkzCjlEuW1f_5xtask: argument 0"}
!503 = distinct !{!503, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro23imp5IdentECslkzCjlEuW1f_5xtask"}
!504 = distinct !{!504, !503, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro23imp5IdentECslkzCjlEuW1f_5xtask: argument 0"}
!505 = distinct !{!505, i1 true, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtCsluekWoTk8SK_11proc_macro211TokenStreamNtB5_12SpecToString14spec_to_stringCslkzCjlEuW1f_5xtask"}
!506 = distinct !{!506, !505, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtCsluekWoTk8SK_11proc_macro211TokenStreamNtB5_12SpecToString14spec_to_stringCslkzCjlEuW1f_5xtask: argument 1"}
!507 = distinct !{!507, !505, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtCsluekWoTk8SK_11proc_macro211TokenStreamNtB5_12SpecToString14spec_to_stringCslkzCjlEuW1f_5xtask: argument 0"}
!508 = distinct !{!508, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCslkzCjlEuW1f_5xtask"}
!509 = distinct !{!509, !508, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCslkzCjlEuW1f_5xtask: argument 0"}
!510 = distinct !{!510, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE7get_endCslkzCjlEuW1f_5xtask"}
!511 = distinct !{!511, !510, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE7get_endCslkzCjlEuW1f_5xtask: argument 0"}
!512 = distinct !{!512, i1 true, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask"}
!513 = distinct !{!513, !512, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask: argument 0"}
!514 = distinct !{!514, i1 true, !"_RNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar17write_doc_comment"}
!515 = distinct !{!515, !514, !"_RNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar17write_doc_comment: argument 1"}
!516 = distinct !{!516, !514, !"_RNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar17write_doc_comment: argument 0"}
!517 = distinct !{!517, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCslkzCjlEuW1f_5xtask"}
!518 = distinct !{!518, !517, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCslkzCjlEuW1f_5xtask: argument 0:h.rot"}
!519 = !{i64 -376329890844639911}
!520 = !{!364}
!521 = !{!365}
!522 = !{!364, !365}
!523 = !{!367}
!524 = !{!368}
!525 = !{!367, !368}
!526 = !{!370}
!527 = !{!371, !370}
!528 = !{!373}
!529 = !{!374}
!530 = !{!373, !374, !371, !370}
!531 = !{!376}
!532 = !{!378, !377, !376, !371, !370}
!533 = !{!377, !376, !371, !370}
!534 = !{!380}
!535 = !{!381, !378, !377, !376, !371, !370}
!536 = !{!383}
!537 = !{!384, !371, !370}
!538 = !{!371}
!539 = !{!386}
!540 = !{!387, !371, !370}
!541 = !{!389}
!542 = !{!389, !371, !370}
!543 = !{!391}
!544 = !{!392, !389, !371, !370}
!545 = !{!395, !394, !389, !371, !370}
!546 = !{!395, !389, !371, !370}
!547 = !{!397}
!548 = !{!399}
!549 = !{!399, !397}
!550 = !{!399, !397, !389, !371, !370}
!551 = !{!394, !389, !371, !370}
!552 = !{!401}
!553 = !{!403}
!554 = !{!403, !401}
!555 = !{!403, !401, !389, !371, !370}
!556 = !{!405}
!557 = !{!406, !405, !389, !371, !370}
!558 = !{!408}
!559 = !{!410}
!560 = !{!411}
!561 = !{!410, !412, !411, !371, !370}
!562 = !{!414}
!563 = !{!416, !410}
!564 = !{!417, !412, !411, !371, !370}
!565 = !{!412, !411, !371, !370}
!566 = !{!410, !411, !371, !370}
!567 = !{!418, !414, !371, !370}
!568 = !{!418, !414, !410, !412, !411, !371, !370}
!569 = !{!420}
!570 = !{!"address", !"read_provenance"}
!571 = !{!422}
!572 = !{!423, !371, !370}
!573 = !{!425}
!574 = !{!425, !371, !370}
!575 = !{!427}
!576 = !{!429, !371, !370}
!577 = !{!434, !433, !431, !425, !371, !370}
!578 = !{!431, !425, !371, !370}
!579 = !{!434, !433, !427, !431, !425, !371, !370}
!580 = !{!436}
!581 = !{!441, !440, !438, !425, !371, !370}
!582 = !{!438, !425, !371, !370}
!583 = !{!441, !440, !436, !438, !425, !371, !370}
!584 = !{!444, !443, !429, !371, !370}
!585 = !{!"branch_weights", !"expected", i32 2146078949, i32 1404699}
!586 = !{!446, !371, !370}
!587 = !{!449, !448, !446, !371, !370}
!588 = !{!451}
!589 = !{!453, !451, !371, !370}
!590 = !{!456, !455, !453, !451, !371, !370}
!591 = !{!458}
!592 = !{!460}
!593 = !{!461, !460}
!594 = !{!463, !461, !460}
!595 = !{!467, !466, !465, !461, !460}
!596 = !{!469, !467, !466, !465, !461, !460}
!597 = !{!471}
!598 = !{!474, !471, !473, !469, !467, !466, !465, !461, !460}
!599 = !{!476, !473, !469, !467, !466, !465, !461, !460}
!600 = !{!478}
!601 = !{!480}
!602 = !{!482}
!603 = !{!483}
!604 = !{!485, !482, !483, !469, !467, !466, !465, !461, !460}
!605 = !{!482, !483, !469, !467, !466, !465, !461, !460}
!606 = !{!487, !485, !482, !483, !469, !467, !466, !465, !461, !460}
!607 = !{!482, !469, !467, !466, !465, !461, !460}
!608 = !{!482, !483}
!609 = !{!490, !489, !461, !460}
!610 = !{!493, !492, !490, !489, !461, !460}
!611 = !{!493, !490, !489, !461, !460}
!612 = !{!489, !461, !460}
!613 = !{!495}
!614 = !{!496, !495, !461, !460}
!615 = !{!498}
!616 = !{!500}
!617 = !{!496}
!618 = !{!500, !498}
!619 = !{!496, !461, !460}
!620 = !{!500, !498, !496, !461, !460}
!621 = !{!495, !461, !460}
!622 = !{!502}
!623 = !{!504}
!624 = !{!504, !502, !495}
!625 = !{!504, !502, !496, !461, !460}
!626 = !{!507, !506, !461, !460}
!627 = !{!507, !461, !460}
!628 = !{!506, !461, !460}
!629 = !{!509}
!630 = !{!509, !461, !460}
!631 = !{!511, !509}
!632 = !{!513}
!633 = !{!516, !515, !461, !460}
!634 = !{!518}
!635 = !{i64 -7541565899142018882}
!636 = !{i64 6410254946462269611}
!637 = !{i64 -7219616635546202347}
!638 = distinct !{!638, i1 true, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push"}
!639 = distinct !{!639, !638, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push: argument 0"}
!640 = !{i64 6575768998378669769}
!641 = !{!639}
!642 = distinct !{!642, i1 true, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str"}
!643 = distinct !{!643, !642, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str: argument 1"}
!644 = distinct !{!644, !642, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str: argument 0"}
!645 = distinct !{!645, i1 true, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask"}
!646 = distinct !{!646, !645, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask: argument 0"}
!647 = !{i64 5000069490930873103}
!648 = !{!643}
!649 = !{!646, !644}
!650 = !{i64 8469727668954115506}
!651 = !{i64 4397786905810138475}
!652 = !{i64 -5875128880098528430}
!653 = distinct !{!653, i1 true, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!654 = distinct !{!654, !653, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!655 = distinct !{!655, i1 true, !"_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains"}
!656 = distinct !{!656, !655, !"_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains: argument 0"}
!657 = distinct !{!657, !655, !"_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains: argument 1"}
!658 = distinct !{!658, i1 true, !"_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECslkzCjlEuW1f_5xtask"}
!659 = distinct !{!659, !658, !"_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECslkzCjlEuW1f_5xtask: argument 1"}
!660 = distinct !{!660, !658, !"_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECslkzCjlEuW1f_5xtask: argument 0"}
!661 = distinct !{!661, i1 true, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask"}
!662 = distinct !{!662, !661, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask: argument 0"}
!663 = distinct !{!663, i1 true, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains0CslkzCjlEuW1f_5xtask"}
!664 = distinct !{!664, !663, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains0CslkzCjlEuW1f_5xtask: argument 0"}
!665 = distinct !{!665, i1 true, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECslkzCjlEuW1f_5xtask"}
!666 = distinct !{!666, !665, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECslkzCjlEuW1f_5xtask: argument 1"}
!667 = distinct !{!667, !665, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECslkzCjlEuW1f_5xtask: argument 0"}
!668 = !{i64 2256742304615504846}
!669 = !{!654}
!670 = !{!656}
!671 = !{!657}
!672 = !{!664, !662, !660, !659, !656, !657}
!673 = !{!664, !662, !660, !659}
!674 = !{!656, !657}
!675 = !{!667, !666}
!676 = distinct !{!676, i1 true, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!677 = distinct !{!677, !676, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!678 = distinct !{!678, i1 true, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!679 = distinct !{!679, !678, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!680 = distinct !{!680, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!681 = distinct !{!681, !680, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!682 = distinct !{!682, !676, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!683 = distinct !{!683, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslkzCjlEuW1f_5xtask"}
!684 = distinct !{!684, !683, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslkzCjlEuW1f_5xtask: argument 0"}
!685 = distinct !{!685, i1 true, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask"}
!686 = distinct !{!686, !685, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask: argument 0"}
!687 = distinct !{!687, !685, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask: argument 1"}
!688 = distinct !{!688, !685, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask: argument 2"}
!689 = distinct !{!689, !685, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask: argument 3"}
!690 = distinct !{!690, i1 true, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!691 = distinct !{!691, !690, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!692 = distinct !{!692, i1 true, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask"}
!693 = distinct !{!693, !692, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask: argument 0"}
!694 = distinct !{!694, !692, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask: argument 1"}
!695 = distinct !{!695, !692, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask: argument 2"}
!696 = distinct !{!696, !692, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask: argument 3"}
!697 = distinct !{!697, i1 true, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!698 = distinct !{!698, !697, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!699 = !{i64 -9002341239530206000}
!700 = !{!677}
!701 = !{!679}
!702 = !{!681}
!703 = !{!682, !679}
!704 = !{!684, !682, !679}
!705 = !{!682, !677}
!706 = !{!684, !682, !677}
!707 = !{!686}
!708 = !{!687}
!709 = !{!688}
!710 = !{!689}
!711 = !{!691, !686}
!712 = !{!686, !687, !688, !689}
!713 = !{!693}
!714 = !{!694}
!715 = !{!695}
!716 = !{!696}
!717 = !{!693, !694, !695, !696}
!718 = !{!698, !693}
!719 = distinct !{!719, i1 true, !"_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CslkzCjlEuW1f_5xtask"}
!720 = distinct !{!720, !719, !"_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CslkzCjlEuW1f_5xtask: argument 0"}
!721 = distinct !{!721, i1 true, !"_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECslkzCjlEuW1f_5xtask"}
!722 = distinct !{!722, !721, !"_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECslkzCjlEuW1f_5xtask: argument 0"}
!723 = !{i64 6423933828715984953}
!724 = !{!722, !720}
end_hunk_1

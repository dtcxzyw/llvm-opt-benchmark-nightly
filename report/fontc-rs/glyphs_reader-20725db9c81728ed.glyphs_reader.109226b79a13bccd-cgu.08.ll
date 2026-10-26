Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs_reader-20725db9c81728ed.glyphs_reader.109226b79a13bccd-cgu.08?download=true
inline.NumInlined: 773
inline.NumDeleted: 482
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMNtCsf3Ta7LF998c_4core3stre16trim_end_matchesReECs1qcNTItuk7F_13glyphs_reader:bb.a
  br i1 %.not20.i.us.i.us.i, label %.split39.us.i.us.i, label %.lr.ph204

.lr.ph204:                                        ; preds = %.split.us.i.us.i.preheader, %.split.us.i.us.i
  %.sroa.2.0.i.us.i.us.i203 = phi i64 [ %i.ci, %.split.us.i.us.i ], [ %.sroa.03.0.i.fr.i.us.i, %.split.us.i.us.i.preheader ]
  %i.ci = add i64 %.sroa.2.0.i.us.i.us.i203, -1   ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !134, !noalias !128, !noundef !7
  %i.cl = add i64 %i.ci, %i.bz                    ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.j
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cl
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !133, !noalias !128, !noundef !7
  %.not22.i.us.i.us.i = icmp eq i8 %i.ck, %i.co
  br i1 %.not22.i.us.i.us.i, label %.split.us.i.us.i, label %.split41.us.i.us.i

.split41.us.i.us.i:                               ; preds = %.lr.ph204
  %.reass.i.i.us.i = add i64 %i.ci, %invariant.op.i.i.us.i ; 2 uses
  br i1 %i.f, label %bb.j, label %.sink.split.i.i.us.i

.split39.us.i.us.i:                               ; preds = %.split.us.i.us.i, %.split.us.i.us.i.preheader, %.split.i.us.i
  %.sroa.08.0.i.i.us.i = select i1 %i.f, i64 %i.n, i64 %i.by ; 2 uses
  %umax.i.i.us.i = tail call i64 @llvm.umax.i64(i64 %.sroa.08.0.i.i.us.i, i64 %.promoted65.i)
  %exitcond.not.i.i.us.i205.not = icmp ult i64 %.promoted65.i, %.sroa.08.0.i.i.us.i
  br i1 %exitcond.not.i.i.us.i205.not, label %.lr.ph207, label %.split39.us.i.us.i._crit_edge

bb.f:                                             ; preds = %bb.g
  %i.cp = add i64 %.sroa.09.0.i.i.us.i206, 1      ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %i.cp, %umax.i.i.us.i
  br i1 %exitcond.not.i.i.us.i, label %.split39.us.i.us.i._crit_edge, label %.lr.ph207

.lr.ph207:                                        ; preds = %.split39.us.i.us.i, %bb.f
  %.sroa.09.0.i.i.us.i206 = phi i64 [ %i.cp, %bb.f ], [ %.promoted65.i, %.split39.us.i.us.i ] ; 4 uses
  %exitcond54.not.i.i.us.i = icmp eq i64 %.sroa.09.0.i.i.us.i206, %umax53.i.i.us.i
  br i1 %exitcond54.not.i.i.us.i, label %.split108.us.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph207
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.09.0.i.i.us.i206
  %i.cr = load i8, ptr %i.cq, align 1, !alias.scope !134, !noalias !128, !noundef !7
  %i.cs = add i64 %.sroa.09.0.i.i.us.i206, %i.bz  ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.j
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cs
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !133, !noalias !128, !noundef !7
  %.not21.i.i.us.i = icmp eq i8 %i.cr, %i.cv
  br i1 %.not21.i.i.us.i, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.f, label %bb.j, label %.sink.split.i.i.us.i

bb.i:                                             ; preds = %bb.d
  br i1 %i.f, label %bb.j, label %.sink.split.i.i.us.i

.sink.split.i.i.us.i:                             ; preds = %bb.i, %bb.h, %.split41.us.i.us.i
  %.sink75.i.i.us.i = phi i64 [ %i.br, %bb.h ], [ %i.n, %.split41.us.i.us.i ], [ %i.n, %bb.i ] ; 3 uses
  %.ph74.i.i.us.i = phi i64 [ %i.bv, %bb.h ], [ %.reass.i.i.us.i, %.split41.us.i.us.i ], [ %i.bz, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i.i.us.i, %bb.i, %bb.h, %.split41.us.i.us.i
  %.sink75.i.i.us.i37 = phi i64 [ %.sink75.i.i.us.i36, %.split41.us.i.us.i ], [ %.sink75.i.i.us.i36, %bb.i ], [ %.sink75.i.i.us.i36, %bb.h ], [ %.sink75.i.i.us.i, %.sink.split.i.i.us.i ]
  %i.cw = phi i64 [ %i.bx, %.split41.us.i.us.i ], [ %i.bx, %bb.i ], [ %i.bx, %bb.h ], [ %.sink75.i.i.us.i, %.sink.split.i.i.us.i ]
  %i.cx = phi i64 [ %i.by, %.split41.us.i.us.i ], [ %i.by, %bb.i ], [ %i.by, %bb.h ], [ %.sink75.i.i.us.i, %.sink.split.i.i.us.i ]
  %i.cy = phi i64 [ %.reass.i.i.us.i, %.split41.us.i.us.i ], [ %i.bz, %bb.i ], [ %i.bv, %bb.h ], [ %.ph74.i.i.us.i, %.sink.split.i.i.us.i ] ; 2 uses
  %i.cz = sub i64 %i.cy, %i.n                     ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.j
  br i1 %i.da, label %bb.c, label %.loopexit.i.i

.split39.us.i.us.i._crit_edge:                    ; preds = %.split39.us.i.us.i, %bb.f
  %spec.select = select i1 %i.f, i64 %.sink75.i.i.us.i36, i64 %i.n
  %spec.select83 = select i1 %i.f, i64 %i.bx, i64 %i.n
  %i.db = icmp eq i64 %i.bz, 0
  br i1 %i.db, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCs1qcNTItuk7F_13glyphs_reader.exit, label %bb.b

default.unreachable:                              ; preds = %bb.a
  unreachable

.split104.us.i:                                   ; preds = %.split.i.us.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef range(i64 0, -9223372036854775808) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #30, !noalias !135
  unreachable

.split108.us.i:                                   ; preds = %.lr.ph207
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %umax53.i.i.us.i, i64 noundef range(i64 0, -9223372036854775808) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30, !noalias !135
  unreachable

.loopexit.i.i:                                    ; preds = %bb.b, %bb.j, %bb.c
  %i.dc = phi i64 [ 0, %bb.j ], [ %i.bw, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.not.i15.i.i = icmp ult i64 %i.dc, %i.j
  br i1 %.not.i15.i.i, label %bb.k, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCs1qcNTItuk7F_13glyphs_reader.exit

bb.k:                                             ; preds = %.loopexit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !alias.scope !136, !noalias !128, !noundef !7
  %i.df = icmp sgt i8 %i.de, -65
  br i1 %i.df, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCs1qcNTItuk7F_13glyphs_reader.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dg = icmp ne i64 %i.dc, 0
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr i8, ptr %i.h, i64 %i.dc
  %i.di = getelementptr i8, ptr %i.dh, i64 -1
  %i.dj = load i8, ptr %i.di, align 1, !alias.scope !136, !noalias !128, !noundef !7
  %i.dk = icmp sgt i8 %i.dj, -65
  br i1 %i.dk, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCs1qcNTItuk7F_13glyphs_reader.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = icmp ugt i64 %i.dc, 1
  tail call void @llvm.assume(i1 %i.dl)
  br label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCs1qcNTItuk7F_13glyphs_reader.exit

_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %.split39.us.i.us.i._crit_edge, %.lr.ph128.i.us, %.lr.ph, %.lr.ph128.preheader.i.split.us, %.lr.ph.preheader, %.lr.ph.split.split.i.preheader.split.split.us.split.split, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us, %.split76.us.i.loopexit91.sink.split, %.lr.ph.split.split.i.us63.us.preheader, %.lr.ph.split.split.i.us.us.us.preheader, %.split76.us.i.thread.sink.split, %.loopexit.i.i, %bb.k, %bb.l, %bb.m, %.lr.ph.split.us.split.i, %.lr.ph127.preheader.i, %.split.us.i, %.split.us93.i, %.split.us81.i
  %.sroa.0.0 = phi i64 [ %.promoted65.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split ], [ 0, %.lr.ph.split.us.split.i ], [ %.promoted65.i, %.lr.ph.split.split.i.us63.us.preheader ], [ %.lcssa3241, %.loopexit.i.i ], [ %.promoted65.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split ], [ 0, %.split.us.i ], [ 0, %.split.us81.i ], [ 0, %.split.us93.i ], [ 0, %.lr.ph127.preheader.i ], [ %.promoted65.i, %.lr.ph.split.split.i.us.us.us.preheader ], [ 0, %.lr.ph ], [ 0, %.lr.ph.preheader ], [ %.promoted65.i, %.lr.ph128.preheader.i.split.us ], [ %.lcssa3241, %bb.m ], [ %.lcssa3241, %bb.l ], [ %.lcssa3241, %bb.k ], [ %.promoted65.i, %.split76.us.i.thread.sink.split ], [ %.promoted65.i, %.split76.us.i.loopexit91.sink.split ], [ %.promoted65.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us ], [ %.promoted65.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split ], [ %.promoted65.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split ], [ %.promoted65.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us ], [ %i.bk, %.lr.ph128.i.us ], [ 0, %.split39.us.i.us.i._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dm = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.dn = insertvalue { ptr, i64 } %i.dm, i64 %.sroa.0.0, 1
  ret { ptr, i64 } %i.dn
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre16trim_end_matchescECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern13into_searcher.exit:
  %i.a = ptrtoint ptr %0 to i64
  br label %bb.a

bb.a:                                             ; preds = %_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i, %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %.reass5.i = phi i64 [ %.reass.i, %_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i ], [ %1, %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern13into_searcher.exit ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.reass5.i ; 4 uses
  %i.c = icmp samesign eq i64 %.reass5.i, 0
  br i1 %i.c, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs1qcNTItuk7F_13glyphs_reader.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !noalias !145, !noundef !7 ; 3 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1qcNTItuk7F_13glyphs_reader.exit17.i.i.i

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1qcNTItuk7F_13glyphs_reader.exit17.i.i.i: ; preds = %bb.b
  %i.g = icmp ne i64 %.reass5.i, 1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -2 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !145, !noundef !7 ; 3 uses
  %i.j = and i8 %i.i, 31
  %i.k = zext nneg i8 %i.j to i32
  %i.l = icmp slt i8 %i.i, -64
  br i1 %i.l, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1qcNTItuk7F_13glyphs_reader.exit19.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i8 %i.e to i32
  br label %_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1qcNTItuk7F_13glyphs_reader.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1qcNTItuk7F_13glyphs_reader.exit17.i.i.i
  %i.n = icmp ne i64 %.reass5.i, 2
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds i8, ptr %i.b, i64 -3 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !noalias !145, !noundef !7 ; 3 uses
  %i.q = and i8 %i.p, 15
  %i.r = zext nneg i8 %i.q to i32
  %i.s = icmp slt i8 %i.p, -64
  br i1 %i.s, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1qcNTItuk7F_13glyphs_reader.exit21.i.i.i, label %bb.e

bb.d:                                             ; preds = %bb.e, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1qcNTItuk7F_13glyphs_reader.exit17.i.i.i
  %.sroa.6.0.i.i = phi ptr [ %.sroa.6.1.i.i, %bb.e ], [ %i.h, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1qcNTItuk7F_13glyphs_reader.exit17.i.i.i ]
  %.sroa.010.0.i.i.i = phi i32 [ %i.aj, %bb.e ], [ %i.k, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1qcNTItuk7F_13glyphs_reader.exit17.i.i.i ]
  %i.t = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6
  %i.u = and i8 %i.e, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v
  br label %_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1qcNTItuk7F_13glyphs_reader.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1qcNTItuk7F_13glyphs_reader.exit19.i.i.i
  %i.x = icmp ne i64 %.reass5.i, 3
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !noalias !145, !noundef !7
  %i.aa = and i8 %i.z, 7
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 6
  %i.ad = and i8 %i.p, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1qcNTItuk7F_13glyphs_reader.exit21.i.i.i, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1qcNTItuk7F_13glyphs_reader.exit19.i.i.i
  %.sroa.6.1.i.i = phi ptr [ %i.y, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1qcNTItuk7F_13glyphs_reader.exit21.i.i.i ], [ %i.o, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1qcNTItuk7F_13glyphs_reader.exit19.i.i.i ]
  %.sroa.010.1.i.i.i = phi i32 [ %i.af, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1qcNTItuk7F_13glyphs_reader.exit21.i.i.i ], [ %i.r, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1qcNTItuk7F_13glyphs_reader.exit19.i.i.i ]
  %i.ag = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6
  %i.ah = and i8 %i.i, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  br label %bb.d

_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.6.2.ph.i.i = phi ptr [ %.sroa.6.0.i.i, %bb.d ], [ %i.d, %bb.c ]
  %.sroa.4.1.i.ph.i.i = phi i32 [ %i.w, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.ak = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = ptrtoint ptr %.sroa.6.2.ph.i.i to i64
  %.reass.i = sub i64 %i.al, %i.a
  %.not.i = icmp eq i32 %.sroa.4.1.i.ph.i.i, %2
  br i1 %.not.i, label %bb.a, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs1qcNTItuk7F_13glyphs_reader.exit

_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.a, %_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i
  %.reass5.i.lcssa = phi i64 [ 0, %bb.a ], [ %.reass5.i, %_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i ]
  %i.am = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.an = insertvalue { ptr, i64 } %i.am, i64 %.reass5.i.lcssa, 1
  ret { ptr, i64 } %i.an
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre18trim_start_matchesAcj2_ECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i32
  %.sroa.0.4.extract.shift = lshr i64 %2, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i, %bb.a
  %i.b = phi i64 [ %i.ar, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = phi ptr [ %i.an, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i ], [ %0, %bb.a ] ; 7 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = icmp eq ptr %i.c, %i.a
  br i1 %i.e, label %_RNvXsc_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_17CharArraySearcherKj2_ENtB5_8Searcher11next_rejectCs1qcNTItuk7F_13glyphs_reader.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.c, align 1, !noalias !159, !noundef !7 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.d, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.i.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.i.i.i: ; preds = %bb.c
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !159, !noundef !7
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.i.i.i, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = zext nneg i8 %i.g to i32
  br label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !159, !noundef !7
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.i.i.i, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !159, !noundef !7
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i

_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.i.i.i, %bb.d, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.i.i.i
  %i.an = phi ptr [ %i.u, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.i.i.i ], [ %i.f, %bb.d ] ; 2 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ab, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.i.i.i ], [ %i.s, %bb.d ] ; 3 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.b, %i.d
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = icmp ne i32 %.sroa.4.0.i.ph.i.i.i.i, %.sroa.0.0.extract.trunc
  %i.at = icmp ne i32 %.sroa.4.0.i.ph.i.i.i.i, %.sroa.0.4.extract.trunc
  %spec.select.i.not.i.i.i = select i1 %i.as, i1 %i.at, i1 false
  br i1 %spec.select.i.not.i.i.i, label %_RNvXsc_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_17CharArraySearcherKj2_ENtB5_8Searcher11next_rejectCs1qcNTItuk7F_13glyphs_reader.exit, label %bb.b

_RNvXsc_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_17CharArraySearcherKj2_ENtB5_8Searcher11next_rejectCs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.b, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i
  %.sroa.03.0 = phi i64 [ %i.b, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i ], [ %1, %bb.b ] ; 2 uses
  %i.au = sub nuw i64 %1, %.sroa.03.0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.03.0
  %i.aw = insertvalue { ptr, i64 } poison, ptr %i.av, 0
  %i.ax = insertvalue { ptr, i64 } %i.aw, i64 %i.au, 1
  ret { ptr, i64 } %i.ax
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs1qcNTItuk7F_13glyphs_reader.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i
  %i.c = phi i64 [ %i.ar, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %i.an, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !173, !noundef !7 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.i.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !173, !noundef !7
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !173, !noundef !7
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !173, !noundef !7
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.i.i.i
  %i.an = phi ptr [ %i.u, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ab, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.i.i.i ], [ %i.s, %bb.b ] ; 8 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.c, %i.e
  %i.ar = add i64 %i.aq, %i.ap
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i
    i32 13, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i
    i32 12, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i
    i32 11, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i
    i32 10, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i
    i32 9, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.as, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs1qcNTItuk7F_13glyphs_reader.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.at, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs1qcNTItuk7F_13glyphs_reader.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.av = zext i1 %i.au to i8
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs1qcNTItuk7F_13glyphs_reader.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aw = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.ax = zext i1 %i.aw to i8
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs1qcNTItuk7F_13glyphs_reader.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ay = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !174, !noundef !7
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEINtNtNtBa_3vec9into_iter8IntoIterTjB1u_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.promoted23 = load ptr, ptr %i.c, align 8      ; 5 uses
  switch i64 %.promoted, label %.preheader [
    i64 2, label %bb.b
    i64 0, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread13
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %.promoted23, %i.b
  br i1 %i.d, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread13, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.promoted23, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !alias.scope !1253
  %i.f = getelementptr inbounds nuw i8, ptr %.promoted23, i64 8
  br label %.preheader

.preheader:                                       ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread, %bb.a
  %.ph = phi ptr [ %.promoted23, %bb.a ], [ %i.e, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread ]
  %.sroa.6.012.ph.in = phi ptr [ %.sroa.5.0..sroa_idx, %bb.a ], [ %.promoted23, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread ]
  %.sroa.9.011.ph.in = phi ptr [ %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, %bb.a ], [ %i.f, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread ]
  %.sroa.9.011.ph = load double, ptr %.sroa.9.011.ph.in, align 8
  %.sroa.6.012.ph = load i64, ptr %.sroa.6.012.ph.in, align 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.preheader
  %i.g = phi ptr [ %.ph, %.preheader ], [ %i.h, %bb.e ] ; 4 uses
  %.sroa.9.011 = phi double [ %.sroa.9.011.ph, %.preheader ], [ %i.k, %bb.e ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  %.not28 = icmp eq ptr %i.g, %i.b
  br i1 %.not28, label %bb.f, label %bb.e

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread13: ; preds = %bb.a, %bb.b
  store i64 2, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.f, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread13
  %.sink = phi i64 [ 1, %bb.g ], [ 1, %bb.f ], [ 0, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread13 ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.c, align 8, !alias.scope !1255, !noalias !1256
  %i.i = load i64, ptr %i.g, align 8, !noalias !1257, !noundef !7 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load double, ptr %i.j, align 8, !noalias !1257, !noundef !7 ; 2 uses
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1254
  store double %i.k, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !1254
  %.not = icmp eq i64 %.sroa.6.012.ph, %i.i
  br i1 %.not, label %bb.c, label %bb.g

bb.f:                                             ; preds = %bb.c
  store i64 0, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.012.ph, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.9.011, ptr %i.m, align 8
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  store i64 1, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.012.ph, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.9.011, ptr %i.o, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterjNtNtBa_6string6StringINtNtNtBa_3vec9into_iter8IntoIterTjB1u_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.9 = alloca [16 x i8], align 8            ; 5 uses
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.promoted = load i64, ptr %1, align 8
  %.sroa.4.0..sroa_idx.promoted = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.4.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.promoted44 = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTjNtNtCsgCecv3eZDcN_5alloc6string6StringEECs1qcNTItuk7F_13glyphs_reader.exit, %bb.a
  %i.e = phi ptr [ %i.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTjNtNtCsgCecv3eZDcN_5alloc6string6StringEECs1qcNTItuk7F_13glyphs_reader.exit ], [ %.promoted44, %bb.a ] ; 6 uses
  %.sroa.4.0.copyload9.i43 = phi i64 [ %.sroa.4.0.copyload9.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTjNtNtCsgCecv3eZDcN_5alloc6string6StringEECs1qcNTItuk7F_13glyphs_reader.exit ], [ %.sroa.4.0..sroa_idx.promoted, %bb.a ] ; 2 uses
  %.val1242 = phi i64 [ %.sroa.0.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTjNtNtCsgCecv3eZDcN_5alloc6string6StringEECs1qcNTItuk7F_13glyphs_reader.exit ], [ %.promoted, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  store i64 -2, ptr %.sroa.4.0..sroa_idx, align 8
  %.not = icmp eq i64 %.sroa.4.0.copyload9.i43, -2
  br i1 %.not, label %bb.c, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjNtNtB9_6string6StringEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store ptr %i.g, ptr %i.d, align 8, !alias.scope !1266
  %.sroa.0.0.copyload13 = load i64, ptr %i.e, align 8, !noalias !1266
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0.copyload15 = load i64, ptr %.sroa.6.0..sroa_idx14, align 8, !noalias !1266
  %.sroa.9.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjNtNtB9_6string6StringEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjNtNtB9_6string6StringEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.b, %bb.d
  %.sroa.9.0..sroa_idx16.sink = phi ptr [ %.sroa.9.0..sroa_idx16, %bb.d ], [ %.sroa.5.0..sroa_idx, %bb.b ]
  %i.h = phi ptr [ %i.g, %bb.d ], [ %i.e, %bb.b ] ; 5 uses
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload15, %bb.d ], [ %.sroa.4.0.copyload9.i43, %bb.b ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload13, %bb.d ], [ %.val1242, %bb.b ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx16.sink, i64 16, i1 false)
  %.not10 = icmp eq i64 %.sroa.6.0, -1
  br i1 %.not10, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjNtNtB9_6string6StringEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.520.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  store i64 %.sroa.0.0, ptr %i.a, align 8
  store i64 %.sroa.6.0, ptr %.sroa.4.0..sroa_idx18, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  %i.i = icmp eq ptr %i.h, %i.c
  br i1 %i.i, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.e
  store i64 -1, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1267
  br label %.loopexit28

.loopexit:                                        ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjNtNtB9_6string6StringEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.loopexit28, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !1268, !noalias !1269
  %.sroa.0.0.copyload7.i = load i64, ptr %i.h, align 8, !noalias !1270 ; 2 uses
  %.sroa.4.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0.copyload9.i = load i64, ptr %.sroa.4.0..sroa_idx8.i, align 8, !noalias !1270 ; 4 uses
  %.sroa.5.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.0.0.copyload7.i, ptr %1, align 8, !alias.scope !1267
  store i64 %.sroa.4.0.copyload9.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1267
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx10.i, i64 16, i1 false)
  %i.l = icmp ne i64 %.sroa.4.0.copyload9.i, -2
  call void @llvm.assume(i1 %i.l)
  %.not11 = icmp eq i64 %.sroa.4.0.copyload9.i, -1
  br i1 %.not11, label %.loopexit28, label %bb.h

.loopexit28:                                      ; preds = %bb.g, %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  %.not27 = icmp eq i64 %.sroa.0.0, %.sroa.0.0.copyload7.i
  br i1 %.not27, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx18)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTjNtNtCsgCecv3eZDcN_5alloc6string6StringEECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx18)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i: ; preds = %bb.j
  resume { ptr, i32 } %i.m

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTjNtNtCsgCecv3eZDcN_5alloc6string6StringEECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.f
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { i32, i32 } @_RNvXs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedItermNtNtB6_7set_val9SetValZSTINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoItermENCINvMse_NtB6_3setINtB3p_8BTreeSetmE16from_sorted_iterB2H_E0EENtNtNtB20_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #15 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %.promoted = load i32, ptr %0, align 8
  %.promoted12 = load i32, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.promoted14 = load ptr, ptr %i.d, align 8      ; 4 uses
  switch i32 %.promoted, label %bb.b [
    i32 2, label %bb.a
    i32 0, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItermENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetmE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread20
  ]

bb.a:                                             ; preds = %.peel.begin
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %i.e = icmp eq ptr %.promoted14, %i.c
  br i1 %i.e, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItermENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetmE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread20, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItermENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetmE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread.peel

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItermENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetmE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread.peel: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.promoted14, i64 4 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !alias.scope !1290
  %i.g = load i32, ptr %.promoted14, align 4, !noalias !1290, !noundef !7
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItermENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetmE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread.peel, %.peel.begin
  %.sroa.6.019.peel = phi i32 [ %i.g, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItermENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetmE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread.peel ], [ %.promoted12, %.peel.begin ] ; 6 uses
  %i.h = phi ptr [ %i.f, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItermENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetmE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread.peel ], [ %.promoted14, %.peel.begin ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  %i.i = icmp eq ptr %i.h, %i.c
  br i1 %i.i, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItermENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetmE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread20, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TmNtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoItermENCINvMse_NtBS_3setINtB47_8BTreeSetmE16from_sorted_iterB3p_E0EE4peek0ECs1qcNTItuk7F_13glyphs_reader.exit.peel

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TmNtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoItermENCINvMse_NtBS_3setINtB47_8BTreeSetmE16from_sorted_iterB3p_E0EE4peek0ECs1qcNTItuk7F_13glyphs_reader.exit.peel: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store ptr %i.j, ptr %i.d, align 8, !alias.scope !1294, !noalias !1291
  %i.k = load i32, ptr %i.h, align 4, !noalias !1295, !noundef !7 ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !alias.scope !1291
  %i.l = icmp eq i32 %.sroa.6.019.peel, %i.k
  br i1 %i.l, label %.peel.newph, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItermENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetmE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread20

.peel.newph:                                      ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TmNtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoItermENCINvMse_NtBS_3setINtB47_8BTreeSetmE16from_sorted_iterB3p_E0EE4peek0ECs1qcNTItuk7F_13glyphs_reader.exit.peel, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TmNtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoItermENCINvMse_NtBS_3setINtB47_8BTreeSetmE16from_sorted_iterB3p_E0EE4peek0ECs1qcNTItuk7F_13glyphs_reader.exit
  %i.m = phi ptr [ %i.o, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TmNtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoItermENCINvMse_NtBS_3setINtB47_8BTreeSetmE16from_sorted_iterB3p_E0EE4peek0ECs1qcNTItuk7F_13glyphs_reader.exit ], [ %i.j, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TmNtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoItermENCINvMse_NtBS_3setINtB47_8BTreeSetmE16from_sorted_iterB3p_E0EE4peek0ECs1qcNTItuk7F_13glyphs_reader.exit.peel ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  %i.n = icmp eq ptr %i.m, %i.c
  br i1 %i.n, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItermENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetmE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread20, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TmNtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoItermENCINvMse_NtBS_3setINtB47_8BTreeSetmE16from_sorted_iterB3p_E0EE4peek0ECs1qcNTItuk7F_13glyphs_reader.exit

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TmNtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoItermENCINvMse_NtBS_3setINtB47_8BTreeSetmE16from_sorted_iterB3p_E0EE4peek0ECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %.peel.newph
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store ptr %i.o, ptr %i.d, align 8, !alias.scope !1299, !noalias !1296
  %i.p = load i32, ptr %i.m, align 4, !noalias !1300, !noundef !7 ; 2 uses
  store i32 %i.p, ptr %i.a, align 4, !alias.scope !1296
  %i.q = icmp eq i32 %.sroa.6.019.peel, %i.p
  br i1 %i.q, label %.peel.newph, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItermENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetmE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread20, !llvm.loop !1287

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItermENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetmE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread20: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TmNtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoItermENCINvMse_NtBS_3setINtB47_8BTreeSetmE16from_sorted_iterB3p_E0EE4peek0ECs1qcNTItuk7F_13glyphs_reader.exit, %.peel.newph, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TmNtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoItermENCINvMse_NtBS_3setINtB47_8BTreeSetmE16from_sorted_iterB3p_E0EE4peek0ECs1qcNTItuk7F_13glyphs_reader.exit.peel, %bb.b, %bb.a, %.peel.begin
  %.sroa.0.0.i.i.i11 = phi i32 [ 2, %.peel.begin ], [ 2, %bb.a ], [ 0, %bb.b ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TmNtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoItermENCINvMse_NtBS_3setINtB47_8BTreeSetmE16from_sorted_iterB3p_E0EE4peek0ECs1qcNTItuk7F_13glyphs_reader.exit.peel ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TmNtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoItermENCINvMse_NtBS_3setINtB47_8BTreeSetmE16from_sorted_iterB3p_E0EE4peek0ECs1qcNTItuk7F_13glyphs_reader.exit ], [ 0, %.peel.newph ]
  %.sroa.4.0 = phi i32 [ undef, %.peel.begin ], [ undef, %bb.a ], [ %.sroa.6.019.peel, %bb.b ], [ %.sroa.6.019.peel, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TmNtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoItermENCINvMse_NtBS_3setINtB47_8BTreeSetmE16from_sorted_iterB3p_E0EE4peek0ECs1qcNTItuk7F_13glyphs_reader.exit.peel ], [ %.sroa.6.019.peel, %.peel.newph ], [ %.sroa.6.019.peel, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TmNtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoItermENCINvMse_NtBS_3setINtB47_8BTreeSetmE16from_sorted_iterB3p_E0EE4peek0ECs1qcNTItuk7F_13glyphs_reader.exit ]
  %.sroa.0.0 = phi i32 [ 0, %.peel.begin ], [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TmNtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoItermENCINvMse_NtBS_3setINtB47_8BTreeSetmE16from_sorted_iterB3p_E0EE4peek0ECs1qcNTItuk7F_13glyphs_reader.exit.peel ], [ 1, %.peel.newph ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TmNtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree7set_val9SetValZSTEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2m_8PeekableINtNtB2o_3map3MapINtNtNtBW_3vec9into_iter8IntoItermENCINvMse_NtBS_3setINtB47_8BTreeSetmE16from_sorted_iterB3p_E0EE4peek0ECs1qcNTItuk7F_13glyphs_reader.exit ]
  store i32 %.sroa.0.0.i.i.i11, ptr %0, align 8
  %i.r = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.s = insertvalue { i32, i32 } %i.r, i32 %.sroa.4.0, 1
  ret { i32, i32 } %i.s
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterxxINtNtNtBa_3vec9into_iter8IntoIterTxxEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.promoted = load i64, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.promoted23 = load ptr, ptr %i.c, align 8      ; 5 uses
  switch i64 %.promoted, label %.preheader [
    i64 2, label %bb.b
    i64 0, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTxxEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread13
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %.promoted23, %i.b
  br i1 %i.d, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTxxEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread13, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTxxEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTxxEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.promoted23, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !alias.scope !1311
  %i.f = getelementptr inbounds nuw i8, ptr %.promoted23, i64 8
  br label %.preheader

.preheader:                                       ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTxxEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread, %bb.a
  %.ph = phi ptr [ %.promoted23, %bb.a ], [ %i.e, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTxxEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread ]
  %.sroa.6.012.ph.in = phi ptr [ %.sroa.5.0..sroa_idx, %bb.a ], [ %.promoted23, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTxxEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread ]
  %.sroa.9.011.ph.in = phi ptr [ %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, %bb.a ], [ %i.f, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTxxEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread ]
  %.sroa.9.011.ph = load i64, ptr %.sroa.9.011.ph.in, align 8
  %.sroa.6.012.ph = load i64, ptr %.sroa.6.012.ph.in, align 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.preheader
  %i.g = phi ptr [ %.ph, %.preheader ], [ %i.h, %bb.e ] ; 4 uses
  %.sroa.9.011 = phi i64 [ %.sroa.9.011.ph, %.preheader ], [ %i.k, %bb.e ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %.not28 = icmp eq ptr %i.g, %i.b
  br i1 %.not28, label %bb.f, label %bb.e

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTxxEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread13: ; preds = %bb.a, %bb.b
  store i64 2, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.f, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTxxEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread13
  %.sink = phi i64 [ 1, %bb.g ], [ 1, %bb.f ], [ 0, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTxxEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread13 ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.c, align 8, !alias.scope !1313, !noalias !1314
  %i.i = load i64, ptr %i.g, align 8, !noalias !1315, !noundef !7 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !1315, !noundef !7 ; 2 uses
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1312
  store i64 %i.k, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !1312
  %.not = icmp eq i64 %.sroa.6.012.ph, %i.i
  br i1 %.not, label %bb.c, label %bb.g

bb.f:                                             ; preds = %bb.c
  store i64 0, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.012.ph, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.011, ptr %i.m, align 8
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  store i64 1, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.012.ph, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.011, ptr %i.o, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsd_NtCs1qcNTItuk7F_13glyphs_reader5plistINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdENtB5_9FromPlist5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 4), (8, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXse_NtCs1qcNTItuk7F_13glyphs_reader5plistdNtB5_9FromPlist5parse(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = load i32, ptr %i.a, align 8, !range !25, !noundef !7 ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.415.0.copyload = load i32, ptr %.sroa.415.0..sroa_idx, align 4
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.516.0.copyload = load double, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.415.0.copyload, ptr %.sroa.419.0..sroa_idx, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load double, ptr %i.c, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.516.0.copyload.sink = phi double [ %i.d, %bb.c ], [ %.sroa.516.0.copyload, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.516.0.copyload.sink, ptr %i.e, align 8
  store i32 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsh_NtCs1qcNTItuk7F_13glyphs_reader5plistNtNtCsgCecv3eZDcN_5alloc6string6StringNtB5_9FromPlist5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsb_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_9Tokenizer3lex(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.f = load i32, ptr %i.c, align 8, !range !25, !noundef !7 ; 2 uses
  %.not = icmp eq i32 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.410.0..sroa_idx, i64 36, i1 false)
  store i32 %i.f, ptr %0, align 8
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.h = load i64, ptr %i.e, align 8, !range !22, !noundef !7
  switch i64 %i.h, label %.thread [
    i64 4, label %bb.d
    i64 5, label %bb.e
  ]

.thread:                                          ; preds = %bb.c
  store i32 16, ptr %0, align 8
  br label %bb.z

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.m, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !7, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.q, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.s unwind label %bb.o

bb.f:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #32
          to label %.body unwind label %bb.r

bb.g:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.b, align 8, !range !12, !noundef !7
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !1318, !noundef !7 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr %i.w, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.x) #36
          to label %bb.q unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.w, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.z = icmp ule i64 %i.m, %i.v
  tail call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_1

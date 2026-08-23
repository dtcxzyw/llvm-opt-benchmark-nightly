Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/ascii?download=true
inline.NumInlined: 132
inline.NumDeleted: 53
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.w = and i8 %i.v, 8
  %.not6.i = icmp eq i8 %i.w, 0
  br i1 %.not6.i, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit45, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  %i.ac = and i8 %i.ab, 8
  %.not7.i = icmp eq i8 %i.ac, 0
  br i1 %.not7.i, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit47, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.ae = add nsw i64 %.047.i.i.i.i, -1
  %i.af = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !36

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %.pre.i.i.i.i = ptrtoint ptr %scevgep.i to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.c, %bb.a ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i, %._crit_edge.loopexit.i.i.i.i ], [ %1, %bb.a ] ; 5 uses
  %i.ag = sub i64 %i.b, %.pre-phi.i.i.i.i
  switch i64 %i.ag, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = load i8, ptr %.029.lcssa.i.i.i.i, align 1, !tbaa !9
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !9
  %i.al = and i8 %i.ak, 8
  %.not8.i = icmp eq i8 %i.al, 0
  br i1 %.not8.i, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.am, %bb.g ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.an = load i8, ptr %.1.i.i.i.i, align 1, !tbaa !9
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.ar = and i8 %i.aq, 8
  %.not9.i = icmp eq i8 %i.ar, 0
  br i1 %.not9.i, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.as, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.at = load i8, ptr %.2.i.i.i.i, align 1, !tbaa !9
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %i.ax = and i8 %i.aw, 8
  %.not10.i = icmp eq i8 %i.ax, 0
  br i1 %.not10.i, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 1
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit45: ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit47: ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 3
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i:    ; preds = %.lr.ph.i.i.i.i, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit45, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit47, %bb.k, %bb.j, %bb.h, %bb.f
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.h ], [ %i.a, %bb.k ], [ %.2.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i, %bb.f ], [ %i.ba, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit47 ], [ %i.ay, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit ], [ %i.az, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit45 ], [ %.02946.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.bb = ptrtoint ptr %.028.i.i.i.i to i64       ; 3 uses
  %i.bc = sub i64 %i.bb, %i.c                     ; 4 uses
  %i.bd = icmp ugt i64 %i.bc, %0
  br i1 %i.bd, label %bb.l, label %_ZN4absl12lts_2026052627StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.l:                                             ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef %i.bc, i64 noundef %0) #7
  unreachable

_ZN4absl12lts_2026052627StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i
  %i.be = sub nuw i64 %0, %i.bc                   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc ; 4 uses
  %i.bg = ashr i64 %i.be, 2                       ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i.i.preheader.i11, label %._crit_edge.i.i.i.i7

.lr.ph.i.i.i.preheader.i11:                       ; preds = %_ZN4absl12lts_2026052627StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bi = and i64 %i.be, 3
  %scevgep.i12 = getelementptr i8, ptr %i.bf, i64 %i.bi ; 2 uses
  br label %.lr.ph.i.i.i.i13

.lr.ph.i.i.i.i13:                                 ; preds = %bb.p, %.lr.ph.i.i.i.preheader.i11
  %.sroa.03.3.i.i.i = phi ptr [ %i.cb, %bb.p ], [ %i.a, %.lr.ph.i.i.i.preheader.i11 ] ; 8 uses
  %.015.i.i.i.i = phi i64 [ %i.ch, %bb.p ], [ %i.bg, %.lr.ph.i.i.i.preheader.i11 ] ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i, i64 -1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !9, !noalias !37
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !9, !noalias !37
  %i.bo = and i8 %i.bn, 8
  %.not.i14 = icmp eq i8 %i.bo, 0
  br i1 %.not.i14, label %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i13
  %i.bp = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i, i64 -2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9, !noalias !37
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9, !noalias !37
  %i.bu = and i8 %i.bt, 8
  %.not9.i15 = icmp eq i8 %i.bu, 0
  br i1 %.not9.i15, label %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit55, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i, i64 -3
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !9, !noalias !37
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !9, !noalias !37
  %i.ca = and i8 %i.bz, 8
  %.not10.i16 = icmp eq i8 %i.ca, 0
  br i1 %.not10.i16, label %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit53, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i, i64 -4 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9, !noalias !37
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !9, !noalias !37
  %i.cg = and i8 %i.cf, 8
  %.not11.i = icmp eq i8 %i.cg, 0
  br i1 %.not11.i, label %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = add nsw i64 %.015.i.i.i.i, -1
  %i.ci = icmp sgt i64 %.015.i.i.i.i, 1
  br i1 %i.ci, label %.lr.ph.i.i.i.i13, label %._crit_edge.i.i.i.i7.loopexit, !llvm.loop !44

._crit_edge.i.i.i.i7.loopexit:                    ; preds = %bb.p
  %.pre = ptrtoint ptr %scevgep.i12 to i64
  br label %._crit_edge.i.i.i.i7

._crit_edge.i.i.i.i7:                             ; preds = %._crit_edge.i.i.i.i7.loopexit, %_ZN4absl12lts_2026052627StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.pre-phi.i.i.i.i8.pre-phi = phi i64 [ %.pre, %._crit_edge.i.i.i.i7.loopexit ], [ %i.b, %_ZN4absl12lts_2026052627StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %.sroa.03.0.i.i.i = phi ptr [ %scevgep.i12, %._crit_edge.i.i.i.i7.loopexit ], [ %i.a, %_ZN4absl12lts_2026052627StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 4 uses
  %i.cj = sub i64 %.pre-phi.i.i.i.i8.pre-phi, %i.bb
  switch i64 %i.cj, label %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit [
    i64 3, label %bb.q
    i64 2, label %bb.r
    i64 1, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i7
  %i.ck = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i, i64 -1 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !9, !noalias !37
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !9, !noalias !37
  %i.cp = and i8 %i.co, 8
  %.not12.i = icmp eq i8 %i.cp, 0
  br i1 %.not12.i, label %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i7
  %.sroa.03.2.i.i.i = phi ptr [ %.sroa.03.0.i.i.i, %._crit_edge.i.i.i.i7 ], [ %i.ck, %bb.q ] ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.03.2.i.i.i, i64 -1 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !9, !noalias !37
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !9, !noalias !37
  %i.cv = and i8 %i.cu, 8
  %.not13.i = icmp eq i8 %i.cv, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i7
  %.sroa.03.1.i.i.i = phi ptr [ %.sroa.03.0.i.i.i, %._crit_edge.i.i.i.i7 ], [ %i.cq, %bb.r ] ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.03.1.i.i.i, i64 -1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !9, !noalias !37
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !9, !noalias !37
  %i.db = and i8 %i.da, 8
  %.not14.i = icmp eq i8 %i.db, 0
  br i1 %.not14.i, label %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %2

2:                                                ; preds = %bb.s
  br label %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit: ; preds = %bb.o
  %i.dc = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i, i64 -3
  br label %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit53: ; preds = %bb.n
  %i.dd = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i, i64 -2
  br label %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit55: ; preds = %bb.m
  %i.de = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i, i64 -1
  br label %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.i.i.i13, %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit, %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit53, %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit55, %._crit_edge.i.i.i.i7, %bb.q, %bb.r, %bb.s, %2
  %.sink.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i, %bb.s ], [ %.sroa.03.2.i.i.i, %bb.r ], [ %.sroa.03.0.i.i.i, %bb.q ], [ %i.bf, %2 ], [ %i.bf, %._crit_edge.i.i.i.i7 ], [ %i.de, %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit55 ], [ %i.dc, %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit ], [ %i.dd, %_ZN4absl12lts_2026052628StripTrailingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit53 ], [ %.sroa.03.3.i.i.i, %.lr.ph.i.i.i.i13 ]
  %i.df = ptrtoint ptr %.sink.i.i.i.i to i64
  %i.dg = sub i64 %i.df, %i.bb
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.be, i64 %i.dg)
  %.fca.0.insert.i.i9 = insertvalue { i64, ptr } poison, i64 %.sroa.speculated.i.i, 0
  %.fca.1.insert.i.i10 = insertvalue { i64, ptr } %.fca.0.insert.i.i9, ptr %i.bf, 1
  ret { i64, ptr } %.fca.1.insert.i.i10
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"branch_weights", i32 8, i32 24}
!15 = distinct !{!15, !11, !12, !13}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12, !13}
!19 = distinct !{!19, !11, !12, !13}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11, !12}
!22 = !{!23, !25, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !27, i64 8, !7, i64 16}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!25 = !{!"p1 omnipotent char", !26, i64 0}
!26 = !{!"any pointer", !7, i64 0}
!27 = !{!"long", !7, i64 0}
!28 = !{!23, !27, i64 8}
!29 = distinct !{!29, !11, !12, !13}
!30 = distinct !{!30, !11, !12, !13}
!31 = distinct !{!31, !11, !13, !12}
!32 = distinct !{!32, !11, !12, !13}
!33 = distinct !{!33, !11, !12, !13}
!34 = distinct !{!34, !11, !13, !12}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = !{!38, !40, !42}
!38 = distinct !{!38, !39, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag: argument 0"}
!39 = distinct !{!39, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag"}
!40 = distinct !{!40, !41, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_: argument 0"}
!41 = distinct !{!41, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_"}
!42 = distinct !{!42, !43, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_: argument 0"}
!43 = distinct !{!43, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_"}
!44 = distinct !{!44, !11}
end_hunk_0

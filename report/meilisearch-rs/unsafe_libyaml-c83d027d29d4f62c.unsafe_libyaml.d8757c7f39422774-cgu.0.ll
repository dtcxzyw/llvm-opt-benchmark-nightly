Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/unsafe_libyaml-c83d027d29d4f62c.unsafe_libyaml.d8757c7f39422774-cgu.0?download=true
inline.NumInlined: 729
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN14unsafe_libyaml6reader29yaml_parser_update_raw_buffer17h93b31bad0759d494E:bb.a
  %i.ah = load ptr, ptr %i.ag, align 8, !noundef !6
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.y to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = call noundef i32 %i.aa(ptr noundef %i.af, ptr noundef %i.y, i64 noundef %i.ak, ptr noundef nonnull %i.a)
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.f
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @84, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #20
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ao = load i64, ptr %i.an, align 8, !noundef !6
  store i32 2, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @87, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ao, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.ar, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.u, align 8, !noundef !6
  %i.at = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.au = getelementptr i8, ptr %i.as, i64 %i.at
  store ptr %i.au, ptr %i.u, align 8
  %i.av = icmp eq i64 %i.at, 0
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.l, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.b, %bb.c
  %.sroa.0.1 = phi i1 [ true, %bb.c ], [ false, %bb.j ], [ true, %bb.b ], [ true, %bb.k ], [ true, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4, i64 noundef 18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @88, i64 noundef 104, i32 noundef 22) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i32, ptr %i.d, align 8, !range !9, !noundef !6 ; 3 uses
  %.not52 = icmp eq i32 %i.e, 0
  br i1 %.not52, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @93, i64 noundef 36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @88, i64 noundef 104, i32 noundef 23) #20
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @89, i64 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @88, i64 noundef 104, i32 noundef 24) #20
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !6 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = load ptr, ptr %i.f, align 8, !noundef !6 ; 5 uses
  store ptr %i.j, ptr %i.g, align 8
  %i.k = icmp eq ptr %i.j, %i.h
  br i1 %i.k, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i32 %i.e, label %bb.l [
    i32 1, label %bb.i
    i32 2, label %.lr.ph
  ]

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noundef !6
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = tail call noundef i32 %i.c(ptr noundef %i.m, ptr noundef %i.j, i64 noundef %i.p)
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 6, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @91, ptr %i.s, align 8
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !noundef !6 ; 2 uses
  store ptr %i.t, ptr %i.i, align 8
  store ptr %i.t, ptr %i.g, align 8
  br label %bb.r

bb.l:                                             ; preds = %bb.h
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.h
  %.sroa.03.0 = phi i64 [ 1, %bb.l ], [ 0, %bb.h ] ; 3 uses
  %i.u = icmp eq i32 %i.e, 2
  %. = zext i1 %i.u to i64                        ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  br label %bb.m

._crit_edge:                                      ; preds = %bb.y
  %.pre = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not54 = icmp eq ptr %.pre, null
  br i1 %.not54, label %bb.o, label %bb.n, !prof !4

bb.m:                                             ; preds = %.lr.ph, %bb.y
  %i.w = phi ptr [ %i.j, %.lr.ph ], [ %i.dw, %bb.y ] ; 8 uses
  %i.x = load i8, ptr %i.w, align 1, !noundef !6  ; 11 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %.thread80, label %bb.s

.thread80:                                        ; preds = %bb.m
  %i.z = zext nneg i8 %i.x to i32
  br label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.thread"

bb.n:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !6
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !noundef !6 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !noundef !6
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = tail call noundef i32 %.pre(ptr noundef %i.ab, ptr noundef %i.ad, i64 noundef %i.ai)
  %.not62 = icmp eq i32 %i.aj, 0
  br i1 %.not62, label %bb.p, label %bb.q

bb.o:                                             ; preds = %._crit_edge
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @84, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #20
  unreachable

bb.p:                                             ; preds = %bb.n
  store i32 6, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @91, ptr %i.ak, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.al = load ptr, ptr %i.f, align 8, !noundef !6 ; 2 uses
  store ptr %i.al, ptr %i.i, align 8
  store ptr %i.al, ptr %i.g, align 8
  %i.am = load ptr, ptr %i.ac, align 8, !noundef !6 ; 2 uses
  store ptr %i.am, ptr %i.ae, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.am, ptr %i.an, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.g, %bb.k, %bb.j
  %.sroa.0.1 = phi i1 [ true, %bb.g ], [ false, %bb.j ], [ true, %bb.k ], [ true, %bb.q ], [ false, %bb.p ]
  ret i1 %.sroa.0.1

bb.s:                                             ; preds = %bb.m
  %i.ao = and i8 %i.x, -32
  %i.ap = icmp eq i8 %i.ao, -64
  br i1 %i.ap, label %.thread75, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = and i8 %i.x, -16
  %i.ar = icmp eq i8 %i.aq, -32
  %i.as = and i8 %i.x, -8
  %i.at = icmp eq i8 %i.as, -16
  %.56 = select i1 %i.at, i64 4, i64 0
  %.sroa.034.0.ph.ph = select i1 %i.ar, i64 3, i64 %.56 ; 2 uses
  %i.au = and i8 %i.x, -16
  %i.av = icmp eq i8 %i.au, -32
  br i1 %i.av, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.w, %bb.v
  %.sroa.035.0 = phi i8 [ %spec.select, %bb.w ], [ %i.bd, %bb.v ]
  %i.aw = zext nneg i8 %.sroa.035.0 to i32        ; 2 uses
  %i.ax = add nsw i8 %i.x, 32
  %i.ay = icmp ult i8 %i.ax, 24
  br i1 %i.ay, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.preheader", label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.thread"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.preheader": ; preds = %.thread75, %bb.u
  %i.az = phi i32 [ %i.bc, %.thread75 ], [ %i.aw, %bb.u ] ; 2 uses
  %.sroa.034.06179 = phi i64 [ 2, %.thread75 ], [ %.sroa.034.0.ph.ph, %bb.u ] ; 3 uses
  %i.ba = add nsw i64 %.sroa.034.06179, -1        ; 2 uses
  %xtraiter = and i64 %i.ba, 3                    ; 3 uses
  %1 = icmp ugt i64 %.sroa.034.06179, 1
  br i1 %1, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.epil.preheader", label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.preheader.new"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.preheader.new": ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.preheader"
  %unroll_iter = and i64 %i.ba, -4
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit"

.thread75:                                        ; preds = %bb.s
  %i.bb = and i8 %i.x, 31
  %i.bc = zext nneg i8 %i.bb to i32
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.preheader"

bb.v:                                             ; preds = %bb.t
  %i.bd = and i8 %i.x, 15
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  %i.be = and i8 %i.x, -8
  %i.bf = icmp eq i8 %i.be, -16
  %i.bg = and i8 %i.x, 7
  %spec.select = select i1 %i.bf, i8 %i.bg, i8 0
  br label %bb.u

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.thread": ; preds = %bb.u, %.thread80
  %.sroa.034.06178.ph = phi i64 [ 1, %.thread80 ], [ %.sroa.034.0.ph.ph, %bb.u ]
  %.sroa.022.0.lcssa.ph = phi i32 [ %i.z, %.thread80 ], [ %i.aw, %bb.u ]
  %i.bh = getelementptr i8, ptr %i.w, i64 %.sroa.034.06178.ph
  store ptr %i.bh, ptr %i.g, align 8
  br label %bb.x

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.unr-lcssa": ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit"
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge", label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.epil.preheader"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.epil.preheader": ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.unr-lcssa", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.preheader"
  %.sroa.022.064.epil.init = phi i32 [ %i.az, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.preheader" ], [ %i.cr, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.unr-lcssa" ]
  %.sroa.031.063.epil.init = phi i64 [ 1, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.preheader" ], [ %i.cs, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.unr-lcssa" ]
  %lcmp.mod91 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod91)
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.epil"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.epil": ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.epil", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.epil.preheader"
  %.sroa.022.064.epil = phi i32 [ %i.bn, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.epil" ], [ %.sroa.022.064.epil.init, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.epil.preheader" ]
  %.sroa.031.063.epil = phi i64 [ %i.bo, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.epil" ], [ %.sroa.031.063.epil.init, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.epil.preheader" ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.epil" ], [ 0, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.epil.preheader" ]
  %i.bi = shl i32 %.sroa.022.064.epil, 6          ; 2 uses
  %i.bj = getelementptr i8, ptr %i.w, i64 %.sroa.031.063.epil
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !6
  %i.bl = and i8 %i.bk, 63
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bi, %i.bm            ; 2 uses
  %i.bo = add nuw i64 %.sroa.031.063.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge", label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.epil", !llvm.loop !60

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge": ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.epil", %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.unr-lcssa"
  %.lcssa88 = phi i32 [ %i.cl, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.unr-lcssa" ], [ %i.bi, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.epil" ] ; 2 uses
  %.lcssa = phi i32 [ %i.cr, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.unr-lcssa" ], [ %i.bn, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.epil" ] ; 3 uses
  %i.bp = getelementptr i8, ptr %i.w, i64 %.sroa.034.06179
  store ptr %i.bp, ptr %i.g, align 8
  %i.bq = icmp ult i32 %.lcssa88, 65536
  br i1 %i.bq, label %bb.x, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit57"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit": ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.preheader.new"
  %.sroa.022.064 = phi i32 [ %i.az, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.preheader.new" ], [ %i.cr, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit" ]
  %.sroa.031.063 = phi i64 [ 1, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.preheader.new" ], [ %i.cs, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit" ] ; 5 uses
  %niter = phi i64 [ 0, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.preheader.new" ], [ %niter.next.3, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit" ]
  %i.br = getelementptr i8, ptr %i.w, i64 %.sroa.031.063
  %i.bs = load i8, ptr %i.br, align 1, !noundef !6
  %i.bt = and i8 %i.bs, 63
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = shl i32 %.sroa.022.064, 12
  %i.bw = shl nuw nsw i32 %i.bu, 6
  %i.bx = or disjoint i32 %i.bv, %i.bw
  %i.by = getelementptr i8, ptr %i.w, i64 %.sroa.031.063
  %i.bz = getelementptr i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !noundef !6
  %i.cb = and i8 %i.ca, 63
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.bx, %i.cc
  %i.ce = getelementptr i8, ptr %i.w, i64 %.sroa.031.063
  %i.cf = getelementptr i8, ptr %i.ce, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !noundef !6
  %i.ch = and i8 %i.cg, 63
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = shl i32 %i.cd, 12
  %i.ck = shl nuw nsw i32 %i.ci, 6
  %i.cl = or disjoint i32 %i.cj, %i.ck            ; 2 uses
  %i.cm = getelementptr i8, ptr %i.w, i64 %.sroa.031.063
  %i.cn = getelementptr i8, ptr %i.cm, i64 3
  %i.co = load i8, ptr %i.cn, align 1, !noundef !6
  %i.cp = and i8 %i.co, 63
  %i.cq = zext nneg i8 %i.cp to i32
  %i.cr = or disjoint i32 %i.cl, %i.cq            ; 3 uses
  %i.cs = add nuw i64 %.sroa.031.063, 4           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.unr-lcssa", label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit57": ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge"
  %i.ct = add i32 %.lcssa, -65536                 ; 2 uses
  %i.cu = lshr i32 %i.ct, 18
  %i.cv = load ptr, ptr %i.v, align 8, !noundef !6
  %i.cw = getelementptr i8, ptr %i.cv, i64 %.
  %i.cx = trunc i32 %i.cu to i8
  %i.cy = add i8 %i.cx, -40
  store i8 %i.cy, ptr %i.cw, align 1
  %i.cz = lshr i32 %i.ct, 10
  %i.da = load ptr, ptr %i.v, align 8, !noundef !6
  %i.db = getelementptr i8, ptr %i.da, i64 %.sroa.03.0
  %i.dc = trunc i32 %i.cz to i8
  store i8 %i.dc, ptr %i.db, align 1
  %i.dd = lshr i32 %.lcssa88, 8
  %i.de = load ptr, ptr %i.v, align 8, !noundef !6
  %i.df = getelementptr i8, ptr %i.de, i64 %.
  %i.dg = getelementptr i8, ptr %i.df, i64 2
  %i.dh = trunc i32 %i.dd to i8
  %i.di = add i8 %i.dh, -36
  store i8 %i.di, ptr %i.dg, align 1
  %i.dj = load ptr, ptr %i.v, align 8, !noundef !6
  %i.dk = getelementptr i8, ptr %i.dj, i64 %.sroa.03.0
  %i.dl = getelementptr i8, ptr %i.dk, i64 2
  %i.dm = trunc i32 %.lcssa to i8
  store i8 %i.dm, ptr %i.dl, align 1
  br label %bb.y

bb.x:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.thread", %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge"
  %.sroa.022.0.lcssa85 = phi i32 [ %.sroa.022.0.lcssa.ph, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.thread" ], [ %.lcssa, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge" ] ; 2 uses
  %i.dn = lshr i32 %.sroa.022.0.lcssa85, 8
  %i.do = load ptr, ptr %i.v, align 8, !noundef !6
  %i.dp = getelementptr i8, ptr %i.do, i64 %.
  %i.dq = trunc nuw i32 %i.dn to i8
  store i8 %i.dq, ptr %i.dp, align 1
  %i.dr = load ptr, ptr %i.v, align 8, !noundef !6
  %i.ds = getelementptr i8, ptr %i.dr, i64 %.sroa.03.0
  %i.dt = trunc i32 %.sroa.022.0.lcssa85 to i8
  store i8 %i.dt, ptr %i.ds, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit57"
  %.sink86 = phi i64 [ 2, %bb.x ], [ 4, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit57" ]
  %i.du = load ptr, ptr %i.v, align 8, !noundef !6
  %i.dv = getelementptr i8, ptr %i.du, i64 %.sink86
  store ptr %i.dv, ptr %i.v, align 8
  %i.dw = load ptr, ptr %i.g, align 8, !noundef !6 ; 2 uses
  %i.dx = load ptr, ptr %i.i, align 8, !noundef !6
  %.not53 = icmp eq ptr %i.dw, %i.dx
  br i1 %.not53, label %._crit_edge, label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter11WRITE_BREAK17h4b685cba92997e93E(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 18 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6
  %i.c = getelementptr i8, ptr %i.b, i64 5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noundef !6
  %i.f = icmp ult ptr %i.c, %i.e
  br i1 %i.f, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit: ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.g, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread, label %bb.b

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread: ; preds = %bb.a, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit
  br label %bb.b

bb.b:                                             ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread
  %i.h = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit ]
  %i.i = load i8, ptr %i.h, align 1, !range !10, !noundef !6
  %i.j = trunc nuw i8 %i.i to i1                  ; 2 uses
  br i1 %i.j, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  %i.l = load ptr, ptr %i.k, align 8, !noundef !6
  %i.m = load i8, ptr %i.l, align 1, !noundef !6  ; 9 uses
  %i.n = icmp eq i8 %i.m, 10
  br i1 %i.n, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.a, align 8, !noundef !6
  %i.p = getelementptr i8, ptr %i.o, i64 5
  %i.q = load ptr, ptr %i.d, align 8, !noundef !6
  %i.r = icmp ult ptr %i.p, %i.q
  br i1 %i.r, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i: ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.s, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i, label %bb.e

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i, %bb.d
  br label %bb.e

bb.e:                                             ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i
  %i.t = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i ]
  %i.u = load i8, ptr %i.t, align 1, !range !10, !noundef !6
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN14unsafe_libyaml7emitter9PUT_BREAK17haa214da670044091E.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.x = load i32, ptr %i.w, align 4, !range !9, !noundef !6
end_hunk_0
begin_hunk_1_@_ZN14unsafe_libyaml7emitter17yaml_emitter_emit17h18610a5412076d94E:bb.a
.thread701.i.i:                                   ; preds = %.thread691.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  %i.jw = load i8, ptr %i.jv, align 1, !noundef !6
  %i.jx = icmp eq i8 %i.jw, -128
  br i1 %i.jx, label %.thread703.i.i, label %.thread704.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.jy = and i8 %i.ir, -16                       ; 2 uses
  %i.jz = icmp eq i8 %i.jy, -32                   ; 2 uses
  %i.ka = and i8 %i.ir, -8
  %i.kb = icmp eq i8 %i.ka, -16                   ; 2 uses
  %.466.i.i = select i1 %i.kb, i64 5, i64 1
  %.sroa.057.0.i.i = select i1 %i.jz, i64 4, i64 %.466.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.im, i64 %.sroa.057.0.i.i
  %i.kd = load i8, ptr %i.kc, align 1, !noundef !6
  %i.ke = icmp eq i8 %i.kd, -128
  br i1 %i.ke, label %bb.cj, label %.thread907.i.thread236.i

bb.cj:                                            ; preds = %bb.ci
  %.467.i.i = select i1 %i.kb, i64 6, i64 2
  %spec.select115.i = select i1 %i.jz, i64 5, i64 %.467.i.i
  br label %.thread703.i.i

.thread703.i.i:                                   ; preds = %bb.cj, %.thread701.i.i, %.thread903.i.i
  %.sroa.058.0.i.i = phi i64 [ %spec.select115.i, %bb.cj ], [ 3, %.thread701.i.i ], [ 4, %.thread903.i.i ]
  %i.kf = getelementptr inbounds nuw i8, ptr %i.im, i64 %.sroa.058.0.i.i
  %i.kg = load i8, ptr %i.kf, align 1, !noundef !6
  %i.kh = icmp eq i8 %i.kg, -88
  br i1 %i.kh, label %.backedge, label %.thread700.i.i.thread

.thread700.i.i.thread:                            ; preds = %.thread703.i.i, %.thread700.i.i
  br i1 %i.is, label %.thread704.i.i, label %.thread907.i.i

.thread907.i.i:                                   ; preds = %.thread699.i.thread.i, %.thread699.i.i, %.thread700.i.i.thread
  %.pre179.i = and i8 %i.ir, -32
  %i.ki = icmp eq i8 %.pre179.i, -64
  br i1 %i.ki, label %.thread704.i.i, label %.thread907.i.i..thread907.i.thread236.i_crit_edge

.thread907.i.i..thread907.i.thread236.i_crit_edge: ; preds = %.thread907.i.i
  %.pre104 = and i8 %i.ir, -16
  br label %.thread907.i.thread236.i

.thread704.i.i:                                   ; preds = %.thread691.i.i, %.thread699.thread.i.i, %bb.ck, %.thread907.i.thread236.i, %.thread907.i.i, %.thread700.i.i.thread, %.thread701.i.i, %.thread903.i.i
  %.sroa.059.0.i.i = phi i64 [ 3, %.thread907.i.thread236.i ], [ 1, %.thread700.i.i.thread ], [ 2, %.thread907.i.i ], [ %.468.i.i, %bb.ck ], [ 1, %.thread701.i.i ], [ 2, %.thread903.i.i ], [ 1, %.thread691.i.i ], [ 1, %.thread699.thread.i.i ]
  %i.kj = getelementptr inbounds nuw i8, ptr %i.im, i64 %.sroa.059.0.i.i
  %i.kk = load i8, ptr %i.kj, align 1, !noundef !6
  %i.kl = icmp eq i8 %i.kk, -30
  br i1 %i.kl, label %bb.cl, label %bb.cp

.thread907.i.thread236.i:                         ; preds = %.thread907.i.i..thread907.i.thread236.i_crit_edge, %bb.ci
  %.pre-phi105 = phi i8 [ %.pre104, %.thread907.i.i..thread907.i.thread236.i_crit_edge ], [ %i.jy, %bb.ci ]
  %i.km = icmp eq i8 %.pre-phi105, -32
  br i1 %i.km, label %.thread704.i.i, label %bb.ck

bb.ck:                                            ; preds = %.thread907.i.thread236.i
  %i.kn = and i8 %i.ir, -8
  %i.ko = icmp eq i8 %i.kn, -16
  %.468.i.i = select i1 %i.ko, i64 4, i64 0
  br label %.thread704.i.i

bb.cl:                                            ; preds = %.thread704.i.i
  br i1 %i.is, label %.thread705.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kp = and i8 %i.ir, -32
  %i.kq = icmp eq i8 %i.kp, -64
  br i1 %i.kq, label %.thread908.i.i, label %bb.cn

.thread908.i.i:                                   ; preds = %bb.cm
  %i.kr = getelementptr inbounds nuw i8, ptr %i.im, i64 3
  %i.ks = load i8, ptr %i.kr, align 1, !noundef !6
  %i.kt = icmp eq i8 %i.ks, -128
  br i1 %i.kt, label %.thread707.i.i, label %.thread708.i.i

.thread705.i.i:                                   ; preds = %bb.cl
  %i.ku = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  %i.kv = load i8, ptr %i.ku, align 1, !noundef !6
  %i.kw = icmp eq i8 %i.kv, -128
  br i1 %i.kw, label %.thread707.i.i, label %.thread708.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.kx = and i8 %i.ir, -16                       ; 2 uses
  %i.ky = icmp eq i8 %i.kx, -32                   ; 2 uses
  %i.kz = and i8 %i.ir, -8
  %i.la = icmp eq i8 %i.kz, -16                   ; 2 uses
  %.469.i.i = select i1 %i.la, i64 5, i64 1
  %.sroa.060.0.i.i = select i1 %i.ky, i64 4, i64 %.469.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.im, i64 %.sroa.060.0.i.i
  %i.lc = load i8, ptr %i.lb, align 1, !noundef !6
  %i.ld = icmp eq i8 %i.lc, -128
  br i1 %i.ld, label %bb.co, label %.thread912.i.thread239.i

bb.co:                                            ; preds = %bb.cn
  %.470.i.i = select i1 %i.la, i64 6, i64 2
  %spec.select116.i = select i1 %i.ky, i64 5, i64 %.470.i.i
  br label %.thread707.i.i

.thread707.i.i:                                   ; preds = %bb.co, %.thread705.i.i, %.thread908.i.i
  %.sroa.061.0.i.i = phi i64 [ %spec.select116.i, %bb.co ], [ 3, %.thread705.i.i ], [ 4, %.thread908.i.i ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.im, i64 %.sroa.061.0.i.i
  %i.lf = load i8, ptr %i.le, align 1, !noundef !6
  %i.lg = icmp eq i8 %i.lf, -87
  br i1 %i.lg, label %.backedge, label %bb.cp

bb.cp:                                            ; preds = %.thread707.i.i, %.thread704.i.i
  br i1 %i.is, label %.thread708.i.i, label %.thread912.i.i

.thread912.i.i:                                   ; preds = %bb.cp
  %.pre177.i = and i8 %i.ir, -32
  %i.lh = icmp eq i8 %.pre177.i, -64
  br i1 %i.lh, label %.thread708.i.i, label %.thread912.i.i..thread912.i.thread239.i_crit_edge

.thread912.i.i..thread912.i.thread239.i_crit_edge: ; preds = %.thread912.i.i
  %.pre102 = and i8 %i.ir, -16
  br label %.thread912.i.thread239.i

.thread708.i.i:                                   ; preds = %bb.cq, %.thread912.i.thread239.i, %.thread912.i.i, %bb.cp, %.thread705.i.i, %.thread908.i.i
  %.sroa.062.0.i.i = phi i64 [ 3, %.thread912.i.thread239.i ], [ 1, %bb.cp ], [ 2, %.thread912.i.i ], [ %.471.i.i, %bb.cq ], [ 1, %.thread705.i.i ], [ 2, %.thread908.i.i ]
  %i.li = getelementptr inbounds nuw i8, ptr %i.im, i64 %.sroa.062.0.i.i
  %i.lj = load i8, ptr %i.li, align 1, !noundef !6
  %i.lk = icmp eq i8 %i.lj, 0
  br label %.backedge

.thread912.i.thread239.i:                         ; preds = %.thread912.i.i..thread912.i.thread239.i_crit_edge, %bb.cn
  %.pre-phi103 = phi i8 [ %.pre102, %.thread912.i.i..thread912.i.thread239.i_crit_edge ], [ %i.kx, %bb.cn ]
  %i.ll = icmp eq i8 %.pre-phi103, -32
  br i1 %i.ll, label %.thread708.i.i, label %bb.cq

bb.cq:                                            ; preds = %.thread912.i.thread239.i
  %i.lm = and i8 %i.ir, -8
  %i.ln = icmp eq i8 %i.lm, -16
  %.471.i.i = select i1 %i.ln, i64 4, i64 0
  br label %.thread708.i.i

bb.cr:                                            ; preds = %bb.ad
  %i.lo = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.lp = load i8, ptr %i.lo, align 8, !range !10, !noundef !6
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.ae, label %bb.cy

bb.cs:                                            ; preds = %bb.cy, %bb.ad
  %strlen.i23.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cm) ; 4 uses
  %.not25.i.not.i = icmp eq i64 %strlen.i23.i, 0
  br i1 %.not25.i.not.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lr = load ptr, ptr %i.w, align 8, !noundef !6 ; 2 uses
  %i.ls = load ptr, ptr %i.x, align 8, !noundef !6 ; 2 uses
  %.not36.i.i = icmp eq ptr %i.lr, %i.ls
  br i1 %.not36.i.i, label %._crit_edge.i26.i, label %.lr.ph.i24.i

bb.cu:                                            ; preds = %bb.cs
  store i32 7, ptr %0, align 8
  store ptr @95, ptr %i.t, align 8
  br label %_ZN14unsafe_libyaml7emitter24yaml_emitter_analyze_tag17h09799cc7d6d37d1fE.exit.i

._crit_edge.i26.i:                                ; preds = %bb.cx, %bb.ct
  store ptr %i.cm, ptr %i.p, align 8
  store i64 %strlen.i23.i, ptr %i.q, align 8
  br label %_ZN14unsafe_libyaml7emitter24yaml_emitter_analyze_tag17h09799cc7d6d37d1fE.exit.i

.lr.ph.i24.i:                                     ; preds = %bb.ct, %bb.cx
  %.sroa.01.037.i.i = phi ptr [ %i.mc, %bb.cx ], [ %i.lr, %bb.ct ] ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.01.037.i.i, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !noundef !6 ; 2 uses
  %strlen47.i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lu) ; 5 uses
  %i.lv = icmp ult i64 %strlen47.i.i, %strlen.i23.i
  br i1 %i.lv, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %.lr.ph.i24.i
  %cond12.i.i.i = icmp eq i64 %strlen47.i.i, 0
  br i1 %cond12.i.i.i, label %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cv, %bb.cw
  %.sroa.0.015.i.i.i = phi i64 [ %i.mb, %bb.cw ], [ %strlen47.i.i, %bb.cv ]
  %.sroa.04.014.i.i.i = phi ptr [ %i.lz, %bb.cw ], [ %i.lu, %bb.cv ] ; 2 uses
  %.sroa.08.013.i.i.i = phi ptr [ %i.ma, %bb.cw ], [ %i.cm, %bb.cv ] ; 2 uses
  %i.lw = load i8, ptr %.sroa.04.014.i.i.i, align 1, !noundef !6 ; 2 uses
  %i.lx = icmp ne i8 %i.lw, 0
  %.pre.i.i.i = load i8, ptr %.sroa.08.013.i.i.i, align 1
  %i.ly = icmp eq i8 %i.lw, %.pre.i.i.i           ; 2 uses
  %or.cond.i.i.i = select i1 %i.lx, i1 %i.ly, i1 false
  br i1 %or.cond.i.i.i, label %bb.cw, label %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.i.i

bb.cw:                                            ; preds = %.lr.ph.i.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.04.014.i.i.i, i64 1
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i, i64 1
  %i.mb = add i64 %.sroa.0.015.i.i.i, -1          ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.mb, 0
  br i1 %cond.i.i.i, label %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i.i, label %.lr.ph.i.i.i

_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.i.i: ; preds = %.lr.ph.i.i.i
  br i1 %i.ly, label %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i.i, label %bb.cx

bb.cx:                                            ; preds = %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.i.i, %.lr.ph.i24.i
  %i.mc = getelementptr i8, ptr %.sroa.01.037.i.i, i64 16 ; 2 uses
  %.not.i25.i = icmp eq ptr %i.mc, %i.ls
  br i1 %.not.i25.i, label %._crit_edge.i26.i, label %.lr.ph.i24.i

_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i.i: ; preds = %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.i.i, %bb.cv, %bb.cw
  %strlen47.i.i245 = phi i64 [ %strlen47.i.i, %bb.cw ], [ 0, %bb.cv ], [ %strlen47.i.i, %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.i.i ] ; 2 uses
  %i.md = load ptr, ptr %.sroa.01.037.i.i, align 8, !noundef !6 ; 2 uses
  store ptr %i.md, ptr %i.n, align 8
  %strlen49.i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.md)
  store i64 %strlen49.i.i, ptr %i.o, align 8
  %i.me = getelementptr i8, ptr %i.cm, i64 %strlen47.i.i245
  store ptr %i.me, ptr %i.p, align 8
  %i.mf = sub nuw i64 %strlen.i23.i, %strlen47.i.i245
  store i64 %i.mf, ptr %i.q, align 8
  br label %_ZN14unsafe_libyaml7emitter24yaml_emitter_analyze_tag17h09799cc7d6d37d1fE.exit.i

_ZN14unsafe_libyaml7emitter24yaml_emitter_analyze_tag17h09799cc7d6d37d1fE.exit.i: ; preds = %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i.i, %._crit_edge.i26.i, %bb.cu
  %.7.i = phi ptr [ @14, %bb.cu ], [ @15, %._crit_edge.i26.i ], [ @15, %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i.i ]
  %i.mg = load i8, ptr %.7.i, align 1, !range !10, !noundef !6
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread19, label %bb.ae

bb.cy:                                            ; preds = %bb.cr
  %i.mi = getelementptr inbounds nuw i8, ptr %.val, i64 41
  %i.mj = load i8, ptr %i.mi, align 1, !range !10, !noundef !6
  %i.mk = trunc nuw i8 %i.mj to i1
  br i1 %i.mk, label %bb.ae, label %bb.cs

bb.cz:                                            ; preds = %bb.u
  %strlen.i27.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bw) ; 3 uses
  %scevgep.i28.i = getelementptr i8, ptr %i.bw, i64 %strlen.i27.i
  %i.ml = icmp eq i64 %strlen.i27.i, 0
  br i1 %i.ml, label %bb.da, label %.preheader.i29.i

bb.da:                                            ; preds = %bb.cz
  store i32 7, ptr %0, align 8
  store ptr @101, ptr %i.t, align 8
  br label %_ZN14unsafe_libyaml7emitter27yaml_emitter_analyze_anchor17hecef939ba7d6e0f5E.exit35.thread.i

.preheader.i29.i:                                 ; preds = %bb.cz, %bb.dd
  %.sroa.07.039.i30.i = phi ptr [ %i.mr, %bb.dd ], [ %i.bw, %bb.cz ] ; 2 uses
  %i.mm = load i8, ptr %.sroa.07.039.i30.i, align 1, !noundef !6 ; 3 uses
  %i.mn = add i8 %i.mm, -48
  %or.cond.i31.i = icmp ult i8 %i.mn, 10
  %i.mo = and i8 %i.mm, -33
  %i.mp = add i8 %i.mo, -65
  %i.mq = icmp ult i8 %i.mp, 26
  %or.cond38.i32.i = or i1 %or.cond.i31.i, %i.mq
  br i1 %or.cond38.i32.i, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %.preheader.i29.i
  switch i8 %i.mm, label %bb.dc [
    i8 95, label %bb.dd
    i8 45, label %bb.dd
  ]

bb.dc:                                            ; preds = %bb.db
  store i32 7, ptr %0, align 8
  store ptr @99, ptr %i.t, align 8
  br label %_ZN14unsafe_libyaml7emitter27yaml_emitter_analyze_anchor17hecef939ba7d6e0f5E.exit35.thread.i

bb.dd:                                            ; preds = %bb.db, %bb.db, %.preheader.i29.i
  %i.mr = getelementptr i8, ptr %.sroa.07.039.i30.i, i64 1 ; 2 uses
  %.not.i33.i = icmp eq ptr %i.mr, %scevgep.i28.i
  br i1 %.not.i33.i, label %bb.de, label %.preheader.i29.i

bb.de:                                            ; preds = %bb.dd
  store ptr %i.bw, ptr %i.l, align 8
  store i64 %strlen.i27.i, ptr %i.m, align 8
  store i8 0, ptr %i.u, align 8
  br label %_ZN14unsafe_libyaml7emitter27yaml_emitter_analyze_anchor17hecef939ba7d6e0f5E.exit35.thread.i

_ZN14unsafe_libyaml7emitter27yaml_emitter_analyze_anchor17hecef939ba7d6e0f5E.exit35.thread.i: ; preds = %bb.de, %bb.dc, %bb.da
  %i.ms = phi ptr [ @15, %bb.de ], [ @14, %bb.da ], [ @14, %bb.dc ]
  %i.mt = load i8, ptr %i.ms, align 1, !range !10, !noundef !6
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread19, label %bb.df

bb.df:                                            ; preds = %_ZN14unsafe_libyaml7emitter27yaml_emitter_analyze_anchor17hecef939ba7d6e0f5E.exit35.thread.i, %bb.u
  %i.mv = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8, !noundef !6 ; 5 uses
  %i.mx = icmp eq ptr %i.mw, null
  br i1 %i.mx, label %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.my = load i8, ptr %i.v, align 4, !range !10, !noundef !6
  %i.mz = trunc nuw i8 %i.my to i1
  br i1 %i.mz, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.na = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.nb = load i8, ptr %i.na, align 8, !range !10, !noundef !6
  %i.nc = trunc nuw i8 %i.nb to i1
  br i1 %i.nc, label %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread, label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %strlen.i36.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mw) ; 4 uses
  %.not25.i37.not.i = icmp eq i64 %strlen.i36.i, 0
  br i1 %.not25.i37.not.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.nd = load ptr, ptr %i.w, align 8, !noundef !6 ; 2 uses
  %i.ne = load ptr, ptr %i.x, align 8, !noundef !6 ; 2 uses
  %.not36.i38.i = icmp eq ptr %i.nd, %i.ne
  br i1 %.not36.i38.i, label %._crit_edge.i43.i, label %.lr.ph.i39.i

bb.dk:                                            ; preds = %bb.di
  store i32 7, ptr %0, align 8
  store ptr @95, ptr %i.t, align 8
  br label %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit

._crit_edge.i43.i:                                ; preds = %bb.dn, %bb.dj
  store ptr %i.mw, ptr %i.p, align 8
  store i64 %strlen.i36.i, ptr %i.q, align 8
  br label %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit

.lr.ph.i39.i:                                     ; preds = %bb.dj, %bb.dn
  %.sroa.01.037.i40.i = phi ptr [ %i.no, %bb.dn ], [ %i.nd, %bb.dj ] ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.01.037.i40.i, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !noundef !6 ; 2 uses
  %strlen47.i41.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ng) ; 5 uses
  %i.nh = icmp ult i64 %strlen47.i41.i, %strlen.i36.i
  br i1 %i.nh, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %.lr.ph.i39.i
  %cond12.i.i44.i = icmp eq i64 %strlen47.i41.i, 0
  br i1 %cond12.i.i44.i, label %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i52.i, label %.lr.ph.i.i45.i

.lr.ph.i.i45.i:                                   ; preds = %bb.dl, %bb.dm
  %.sroa.0.015.i.i46.i = phi i64 [ %i.nn, %bb.dm ], [ %strlen47.i41.i, %bb.dl ]
  %.sroa.04.014.i.i47.i = phi ptr [ %i.nl, %bb.dm ], [ %i.ng, %bb.dl ] ; 2 uses
  %.sroa.08.013.i.i48.i = phi ptr [ %i.nm, %bb.dm ], [ %i.mw, %bb.dl ] ; 2 uses
  %i.ni = load i8, ptr %.sroa.04.014.i.i47.i, align 1, !noundef !6 ; 2 uses
  %i.nj = icmp ne i8 %i.ni, 0
  %.pre.i.i49.i = load i8, ptr %.sroa.08.013.i.i48.i, align 1
  %i.nk = icmp eq i8 %i.ni, %.pre.i.i49.i         ; 2 uses
  %or.cond.i.i50.i = select i1 %i.nj, i1 %i.nk, i1 false
  br i1 %or.cond.i.i50.i, label %bb.dm, label %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.i51.i

bb.dm:                                            ; preds = %.lr.ph.i.i45.i
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.04.014.i.i47.i, i64 1
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i48.i, i64 1
  %i.nn = add i64 %.sroa.0.015.i.i46.i, -1        ; 2 uses
  %cond.i.i54.i = icmp eq i64 %i.nn, 0
  br i1 %cond.i.i54.i, label %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i52.i, label %.lr.ph.i.i45.i

_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.i51.i: ; preds = %.lr.ph.i.i45.i
  br i1 %i.nk, label %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i52.i, label %bb.dn

bb.dn:                                            ; preds = %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.i51.i, %.lr.ph.i39.i
  %i.no = getelementptr i8, ptr %.sroa.01.037.i40.i, i64 16 ; 2 uses
  %.not.i42.i = icmp eq ptr %i.no, %i.ne
  br i1 %.not.i42.i, label %._crit_edge.i43.i, label %.lr.ph.i39.i

_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i52.i: ; preds = %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.i51.i, %bb.dl, %bb.dm
  %strlen47.i41.i237 = phi i64 [ %strlen47.i41.i, %bb.dm ], [ 0, %bb.dl ], [ %strlen47.i41.i, %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.i51.i ] ; 2 uses
  %i.np = load ptr, ptr %.sroa.01.037.i40.i, align 8, !noundef !6 ; 2 uses
  store ptr %i.np, ptr %i.n, align 8
  %strlen49.i53.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.np)
  store i64 %strlen49.i53.i, ptr %i.o, align 8
  %i.nq = getelementptr i8, ptr %i.mw, i64 %strlen47.i41.i237
  store ptr %i.nq, ptr %i.p, align 8
  %i.nr = sub nuw i64 %strlen.i36.i, %strlen47.i41.i237
  store i64 %i.nr, ptr %i.q, align 8
  br label %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit

bb.do:                                            ; preds = %bb.v
  %strlen.i56.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bz) ; 3 uses
  %scevgep.i57.i = getelementptr i8, ptr %i.bz, i64 %strlen.i56.i
  %i.ns = icmp eq i64 %strlen.i56.i, 0
  br i1 %i.ns, label %bb.dp, label %.preheader.i58.i

bb.dp:                                            ; preds = %bb.do
  store i32 7, ptr %0, align 8
  store ptr @101, ptr %i.t, align 8
  br label %_ZN14unsafe_libyaml7emitter27yaml_emitter_analyze_anchor17hecef939ba7d6e0f5E.exit64.thread.i

.preheader.i58.i:                                 ; preds = %bb.do, %bb.ds
  %.sroa.07.039.i59.i = phi ptr [ %i.ny, %bb.ds ], [ %i.bz, %bb.do ] ; 2 uses
  %i.nt = load i8, ptr %.sroa.07.039.i59.i, align 1, !noundef !6 ; 3 uses
  %i.nu = add i8 %i.nt, -48
  %or.cond.i60.i = icmp ult i8 %i.nu, 10
  %i.nv = and i8 %i.nt, -33
  %i.nw = add i8 %i.nv, -65
  %i.nx = icmp ult i8 %i.nw, 26
  %or.cond38.i61.i = or i1 %or.cond.i60.i, %i.nx
  br i1 %or.cond38.i61.i, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %.preheader.i58.i
  switch i8 %i.nt, label %bb.dr [
    i8 95, label %bb.ds
    i8 45, label %bb.ds
  ]

bb.dr:                                            ; preds = %bb.dq
  store i32 7, ptr %0, align 8
  store ptr @99, ptr %i.t, align 8
  br label %_ZN14unsafe_libyaml7emitter27yaml_emitter_analyze_anchor17hecef939ba7d6e0f5E.exit64.thread.i

bb.ds:                                            ; preds = %bb.dq, %bb.dq, %.preheader.i58.i
  %i.ny = getelementptr i8, ptr %.sroa.07.039.i59.i, i64 1 ; 2 uses
  %.not.i62.i = icmp eq ptr %i.ny, %scevgep.i57.i
  br i1 %.not.i62.i, label %bb.dt, label %.preheader.i58.i

bb.dt:                                            ; preds = %bb.ds
  store ptr %i.bz, ptr %i.l, align 8
  store i64 %strlen.i56.i, ptr %i.m, align 8
  store i8 0, ptr %i.u, align 8
  br label %_ZN14unsafe_libyaml7emitter27yaml_emitter_analyze_anchor17hecef939ba7d6e0f5E.exit64.thread.i

_ZN14unsafe_libyaml7emitter27yaml_emitter_analyze_anchor17hecef939ba7d6e0f5E.exit64.thread.i: ; preds = %bb.dt, %bb.dr, %bb.dp
  %i.nz = phi ptr [ @15, %bb.dt ], [ @14, %bb.dp ], [ @14, %bb.dr ]
  %i.oa = load i8, ptr %i.nz, align 1, !range !10, !noundef !6
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread19, label %bb.du

bb.du:                                            ; preds = %_ZN14unsafe_libyaml7emitter27yaml_emitter_analyze_anchor17hecef939ba7d6e0f5E.exit64.thread.i, %bb.v
  %i.oc = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.od = load ptr, ptr %i.oc, align 8, !noundef !6 ; 5 uses
  %i.oe = icmp eq ptr %i.od, null
  br i1 %i.oe, label %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.of = load i8, ptr %i.v, align 4, !range !10, !noundef !6
  %i.og = trunc nuw i8 %i.of to i1
  br i1 %i.og, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.oh = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.oi = load i8, ptr %i.oh, align 8, !range !10, !noundef !6
  %i.oj = trunc nuw i8 %i.oi to i1
  br i1 %i.oj, label %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread, label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %strlen.i65.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.od) ; 4 uses
  %.not25.i66.not.i = icmp eq i64 %strlen.i65.i, 0
  br i1 %.not25.i66.not.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ok = load ptr, ptr %i.w, align 8, !noundef !6 ; 2 uses
  %i.ol = load ptr, ptr %i.x, align 8, !noundef !6 ; 2 uses
  %.not36.i67.i = icmp eq ptr %i.ok, %i.ol
  br i1 %.not36.i67.i, label %._crit_edge.i72.i, label %.lr.ph.i68.i

bb.dz:                                            ; preds = %bb.dx
  store i32 7, ptr %0, align 8
  store ptr @95, ptr %i.t, align 8
  br label %_ZN14unsafe_libyaml7emitter24yaml_emitter_analyze_tag17h09799cc7d6d37d1fE.exit84.i

._crit_edge.i72.i:                                ; preds = %bb.ec, %bb.dy
  store ptr %i.od, ptr %i.p, align 8
  store i64 %strlen.i65.i, ptr %i.q, align 8
  br label %_ZN14unsafe_libyaml7emitter24yaml_emitter_analyze_tag17h09799cc7d6d37d1fE.exit84.i

.lr.ph.i68.i:                                     ; preds = %bb.dy, %bb.ec
  %.sroa.01.037.i69.i = phi ptr [ %i.ov, %bb.ec ], [ %i.ok, %bb.dy ] ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.01.037.i69.i, i64 8
  %i.on = load ptr, ptr %i.om, align 8, !noundef !6 ; 2 uses
  %strlen47.i70.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.on) ; 5 uses
  %i.oo = icmp ult i64 %strlen47.i70.i, %strlen.i65.i
  br i1 %i.oo, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %.lr.ph.i68.i
  %cond12.i.i73.i = icmp eq i64 %strlen47.i70.i, 0
  br i1 %cond12.i.i73.i, label %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i81.i, label %.lr.ph.i.i74.i

.lr.ph.i.i74.i:                                   ; preds = %bb.ea, %bb.eb
  %.sroa.0.015.i.i75.i = phi i64 [ %i.ou, %bb.eb ], [ %strlen47.i70.i, %bb.ea ]
  %.sroa.04.014.i.i76.i = phi ptr [ %i.os, %bb.eb ], [ %i.on, %bb.ea ] ; 2 uses
  %.sroa.08.013.i.i77.i = phi ptr [ %i.ot, %bb.eb ], [ %i.od, %bb.ea ] ; 2 uses
  %i.op = load i8, ptr %.sroa.04.014.i.i76.i, align 1, !noundef !6 ; 2 uses
  %i.oq = icmp ne i8 %i.op, 0
  %.pre.i.i78.i = load i8, ptr %.sroa.08.013.i.i77.i, align 1
  %i.or = icmp eq i8 %i.op, %.pre.i.i78.i         ; 2 uses
  %or.cond.i.i79.i = select i1 %i.oq, i1 %i.or, i1 false
  br i1 %or.cond.i.i79.i, label %bb.eb, label %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.i80.i

bb.eb:                                            ; preds = %.lr.ph.i.i74.i
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.04.014.i.i76.i, i64 1
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i77.i, i64 1
  %i.ou = add i64 %.sroa.0.015.i.i75.i, -1        ; 2 uses
  %cond.i.i83.i = icmp eq i64 %i.ou, 0
  br i1 %cond.i.i83.i, label %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i81.i, label %.lr.ph.i.i74.i

_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.i80.i: ; preds = %.lr.ph.i.i74.i
  br i1 %i.or, label %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i81.i, label %bb.ec

bb.ec:                                            ; preds = %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.i80.i, %.lr.ph.i68.i
  %i.ov = getelementptr i8, ptr %.sroa.01.037.i69.i, i64 16 ; 2 uses
  %.not.i71.i = icmp eq ptr %i.ov, %i.ol
  br i1 %.not.i71.i, label %._crit_edge.i72.i, label %.lr.ph.i68.i

_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i81.i: ; preds = %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.i80.i, %bb.ea, %bb.eb
  %strlen47.i70.i229 = phi i64 [ %strlen47.i70.i, %bb.eb ], [ 0, %bb.ea ], [ %strlen47.i70.i, %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.i80.i ] ; 2 uses
  %i.ow = load ptr, ptr %.sroa.01.037.i69.i, align 8, !noundef !6 ; 2 uses
  store ptr %i.ow, ptr %i.n, align 8
  %strlen49.i82.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ow)
  store i64 %strlen49.i82.i, ptr %i.o, align 8
  %i.ox = getelementptr i8, ptr %i.od, i64 %strlen47.i70.i229
  store ptr %i.ox, ptr %i.p, align 8
  %i.oy = sub nuw i64 %strlen.i65.i, %strlen47.i70.i229
  store i64 %i.oy, ptr %i.q, align 8
  br label %_ZN14unsafe_libyaml7emitter24yaml_emitter_analyze_tag17h09799cc7d6d37d1fE.exit84.i

_ZN14unsafe_libyaml7emitter24yaml_emitter_analyze_tag17h09799cc7d6d37d1fE.exit84.i: ; preds = %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i81.i, %._crit_edge.i72.i, %bb.dz
  %.11.i = phi ptr [ @14, %bb.dz ], [ @15, %._crit_edge.i72.i ], [ @15, %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i81.i ]
  %i.oz = load i8, ptr %.11.i, align 1, !range !10, !noundef !6
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread19, label %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread

_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit: ; preds = %bb.dk, %._crit_edge.i43.i, %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i52.i
  %.9.i = phi ptr [ @14, %bb.dk ], [ @15, %._crit_edge.i43.i ], [ @15, %_ZN14unsafe_libyaml7externs7strncmp17h574b8fbadd8eca77E.exit.thread.i52.i ]
  %i.pb = load i8, ptr %.9.i, align 1, !range !10, !noundef !6
  %i.pc = trunc nuw i8 %i.pb to i1
  br i1 %i.pc, label %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread19, label %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread

_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread: ; preds = %bb.bh, %bb.bf, %bb.ag, %bb.p, %bb.dh, %bb.df, %bb.m, %bb.du, %bb.dw, %_ZN14unsafe_libyaml7emitter24yaml_emitter_analyze_tag17h09799cc7d6d37d1fE.exit84.i, %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit
  br label %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread19

_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread19: ; preds = %_ZN14unsafe_libyaml7emitter24yaml_emitter_analyze_tag17h09799cc7d6d37d1fE.exit.i, %_ZN14unsafe_libyaml7emitter27yaml_emitter_analyze_anchor17hecef939ba7d6e0f5E.exit35.thread.i, %bb.o, %_ZN14unsafe_libyaml7emitter27yaml_emitter_analyze_anchor17hecef939ba7d6e0f5E.exit21.thread.i, %bb.r, %_ZN14unsafe_libyaml7emitter27yaml_emitter_analyze_anchor17hecef939ba7d6e0f5E.exit64.thread.i, %_ZN14unsafe_libyaml7emitter24yaml_emitter_analyze_tag17h09799cc7d6d37d1fE.exit84.i, %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit, %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread
  %i.pd = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread ], [ @14, %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit ], [ @14, %_ZN14unsafe_libyaml7emitter24yaml_emitter_analyze_tag17h09799cc7d6d37d1fE.exit84.i ], [ @14, %_ZN14unsafe_libyaml7emitter27yaml_emitter_analyze_anchor17hecef939ba7d6e0f5E.exit64.thread.i ], [ @14, %bb.r ], [ @14, %_ZN14unsafe_libyaml7emitter27yaml_emitter_analyze_anchor17hecef939ba7d6e0f5E.exit21.thread.i ], [ @14, %bb.o ], [ @14, %_ZN14unsafe_libyaml7emitter27yaml_emitter_analyze_anchor17hecef939ba7d6e0f5E.exit35.thread.i ], [ @14, %_ZN14unsafe_libyaml7emitter24yaml_emitter_analyze_tag17h09799cc7d6d37d1fE.exit.i ]
  %i.pe = load i8, ptr %i.pd, align 1, !range !10, !noundef !6
  %i.pf = trunc nuw i8 %i.pe to i1
  br i1 %i.pf, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %_ZN14unsafe_libyaml7emitter26yaml_emitter_state_machine17h675f8841a86cd2deE.exit.thread, %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread19, %_ZN14unsafe_libyaml7emitter29yaml_emitter_need_more_events17h68e67a82e2ce6b71E.exit
  %.sroa.0.0 = xor i1 %i.bh, true
  ret i1 %.sroa.0.0

bb.ee:                                            ; preds = %_ZN14unsafe_libyaml7emitter26yaml_emitter_analyze_event17hb1437bf771b87f11E.exit.thread19
  %i.pg = load ptr, ptr %i.k, align 8, !noundef !6 ; 19 uses
  %i.ph = load i32, ptr %i.ae, align 8, !range !15, !noundef !6
  switch i32 %i.ph, label %default.unreachable [
    i32 0, label %bb.ef
    i32 1, label %_ZN14unsafe_libyaml7emitter26yaml_emitter_state_machine17h675f8841a86cd2deE.exit
    i32 2, label %.split38
    i32 3, label %bb.es
    i32 4, label %bb.ew
    i32 5, label %.split36
    i32 6, label %.split35
    i32 7, label %.split34
    i32 8, label %.split33
    i32 9, label %.split32
    i32 10, label %.split31
    i32 11, label %.split30
    i32 12, label %.split29
    i32 13, label %.split28
    i32 14, label %.split27
    i32 15, label %.split
    i32 16, label %.split37
    i32 17, label %bb.fi
  ]

default.unreachable:                              ; preds = %bb.ee
  unreachable

bb.ef:                                            ; preds = %bb.ee
  store i32 0, ptr %i.af, align 8
  %i.pi = load i32, ptr %i.pg, align 8, !range !7, !noundef !6
  %i.pj = icmp eq i32 %i.pi, 1
  br i1 %i.pj, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.pk = load i32, ptr %i.aj, align 8, !range !9, !noundef !6 ; 2 uses
  %i.pl = icmp eq i32 %i.pk, 0
  br i1 %i.pl, label %bb.ei, label %.thread.i.i11

bb.eh:                                            ; preds = %bb.ef
  store i32 7, ptr %0, align 8
  store ptr @107, ptr %i.t, align 8
  br label %_ZN14unsafe_libyaml7emitter26yaml_emitter_state_machine17h675f8841a86cd2deE.exit.thread

bb.ei:                                            ; preds = %bb.eg
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.pn = load i32, ptr %i.pm, align 8, !range !9, !noundef !6
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.pn, i32 1) ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.aj, align 8
  br label %.thread.i.i11

.thread.i.i11:                                    ; preds = %bb.ei, %bb.eg
  %i.po = phi i32 [ %spec.store.select.i.i, %bb.ei ], [ %i.pk, %bb.eg ]
  %i.pp = load i32, ptr %i.ak, align 8, !noundef !6 ; 2 uses
  %i.pq = add i32 %i.pp, -10
  %or.cond.i.i12 = icmp ult i32 %i.pq, -8
  br i1 %or.cond.i.i12, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ek, %.thread.i.i11
  %i.pr = phi i32 [ %i.pp, %.thread.i.i11 ], [ 2, %bb.ek ]
  %i.ps = load i32, ptr %i.al, align 4, !noundef !6 ; 2 uses
  %i.pt = icmp sgt i32 %i.ps, -1
  br i1 %i.pt, label %"_ZN53_$LT$i32$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h1e4244e2435ea463E.exit.i.i", label %.sink.split.i.i

bb.ek:                                            ; preds = %.thread.i.i11
  store i32 2, ptr %i.ak, align 8
  br label %bb.ej

"_ZN53_$LT$i32$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h1e4244e2435ea463E.exit.i.i": ; preds = %bb.ej
  %i.pu = shl nuw nsw i32 %i.pr, 1
  %.not.i.i14 = icmp samesign ugt i32 %i.ps, %i.pu
  br i1 %.not.i.i14, label %bb.el, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %"_ZN53_$LT$i32$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h1e4244e2435ea463E.exit.i.i", %bb.ej
  %.sink.i.i = phi i32 [ 80, %"_ZN53_$LT$i32$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h1e4244e2435ea463E.exit.i.i" ], [ 2147483647, %bb.ej ]
  store i32 %.sink.i.i, ptr %i.al, align 4
  br label %bb.el

bb.el:                                            ; preds = %.sink.split.i.i, %"_ZN53_$LT$i32$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h1e4244e2435ea463E.exit.i.i"
  %i.pv = load i32, ptr %i.am, align 4, !range !9, !noundef !6
  %i.pw = icmp eq i32 %i.pv, 0
  br i1 %i.pw, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  store i32 2, ptr %i.am, align 4
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  store i32 -1, ptr %i.an, align 8
  store i32 0, ptr %i.ao, align 4
  store i32 0, ptr %i.ap, align 8
  store i8 1, ptr %i.aq, align 4
  store i8 1, ptr %i.ar, align 1
  %.not3.i.i = icmp eq i32 %i.po, 1
  br i1 %.not3.i.i, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %_ZN14unsafe_libyaml7emitter22yaml_emitter_write_bom17hf3c69cace0c2b44dE.exit.i.i, %bb.en
  store i32 1, ptr %i.ae, align 8
  br label %_ZN14unsafe_libyaml7emitter26yaml_emitter_state_machine17h675f8841a86cd2deE.exit.thread25

bb.ep:                                            ; preds = %bb.en
  %i.px = load ptr, ptr %i.as, align 8, !noundef !6
  %i.py = getelementptr i8, ptr %i.px, i64 5
  %i.pz = load ptr, ptr %i.at, align 8, !noundef !6
  %i.qa = icmp ult ptr %i.py, %i.pz
  br i1 %i.qa, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i.i: ; preds = %bb.ep
  %i.qb = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.qb, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i.i, label %bb.eq

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i.i, %bb.ep
  br label %bb.eq

bb.eq:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i.i
  %i.qc = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i.i ]
  %i.qd = load i8, ptr %i.qc, align 1, !range !10, !noundef !6
  %i.qe = trunc nuw i8 %i.qd to i1
  br i1 %i.qe, label %_ZN14unsafe_libyaml7emitter22yaml_emitter_write_bom17hf3c69cace0c2b44dE.exit.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.qf = load ptr, ptr %i.as, align 8, !noundef !6 ; 2 uses
  %i.qg = getelementptr i8, ptr %i.qf, i64 1
  store ptr %i.qg, ptr %i.as, align 8
  store i8 -17, ptr %i.qf, align 1
  %i.qh = load ptr, ptr %i.as, align 8, !noundef !6 ; 2 uses
  %i.qi = getelementptr i8, ptr %i.qh, i64 1
  store ptr %i.qi, ptr %i.as, align 8
  store i8 -69, ptr %i.qh, align 1
  %i.qj = load ptr, ptr %i.as, align 8, !noundef !6 ; 2 uses
  %i.qk = getelementptr i8, ptr %i.qj, i64 1
  store ptr %i.qk, ptr %i.as, align 8
  store i8 -65, ptr %i.qj, align 1
  br label %_ZN14unsafe_libyaml7emitter22yaml_emitter_write_bom17hf3c69cace0c2b44dE.exit.i.i

_ZN14unsafe_libyaml7emitter22yaml_emitter_write_bom17hf3c69cace0c2b44dE.exit.i.i: ; preds = %bb.er, %bb.eq
  %..i.i13 = phi ptr [ @14, %bb.eq ], [ @15, %bb.er ]
  %i.ql = load i8, ptr %..i.i13, align 1, !range !10, !noundef !6
  %i.qm = trunc nuw i8 %i.ql to i1
  br i1 %i.qm, label %_ZN14unsafe_libyaml7emitter26yaml_emitter_state_machine17h675f8841a86cd2deE.exit.thread, label %bb.eo

.split38:                                         ; preds = %bb.ee
  %i.qn = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7emitter32yaml_emitter_emit_document_start17hbec4d6faf6b554f4E(ptr noundef nonnull %0, ptr noundef readonly %i.pg, i1 noundef zeroext false)
  br i1 %i.qn, label %_ZN14unsafe_libyaml7emitter26yaml_emitter_state_machine17h675f8841a86cd2deE.exit.thread25, label %_ZN14unsafe_libyaml7emitter26yaml_emitter_state_machine17h675f8841a86cd2deE.exit.thread

bb.es:                                            ; preds = %bb.ee
  %i.qo = load ptr, ptr %i.ag, align 8, !noundef !6 ; 3 uses
  %i.qp = load ptr, ptr %i.ah, align 8, !noundef !6
  %i.qq = icmp eq ptr %i.qo, %i.qp
  br i1 %i.qq, label %bb.et, label %_ZN14unsafe_libyaml7emitter34yaml_emitter_emit_document_content17h51ce29e89570dc37E.exit.i

bb.et:                                            ; preds = %bb.es
  %i.qr = load ptr, ptr %i.ai, align 8, !noundef !6 ; 2 uses
  %i.qs = ptrtoint ptr %i.qo to i64
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = sub i64 %i.qs, %i.qt                    ; 2 uses
  %i.qv = add i64 %i.qu, 4611686018427387904
  %i.qw = icmp slt i64 %i.qv, 0
  br i1 %i.qw, label %bb.eu, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i.i", !prof !4

bb.eu:                                            ; preds = %bb.et
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i.i": ; preds = %bb.et
  %i.qx = shl nsw i64 %i.qu, 1
  %i.qy = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.qr, i64 noundef %i.qx) ; 3 uses
  %i.qz = load ptr, ptr %i.ag, align 8, !noundef !6
  %i.ra = load ptr, ptr %i.ai, align 8, !noundef !6
  %i.rb = ptrtoint ptr %i.qz to i64
  %i.rc = ptrtoint ptr %i.ra to i64               ; 2 uses
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = getelementptr i8, ptr %i.qy, i64 %i.rd  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN14unsafe_libyaml7emitter22yaml_emitter_emit_node17h27b3476a51eec082E:bb.a
  %i.td = load i8, ptr %i.sg, align 8, !range !10, !noundef !6
  %i.te = trunc nuw i8 %i.td to i1
  br i1 %i.te, label %.thread245.i.i.i, label %.thread.thread.i.thread.i.i

.split232.i.i.i:                                  ; preds = %bb.ee
  %i.tf = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 2
  %i.tg = load i8, ptr %i.tf, align 1, !noundef !6
  %.not254.i.i.i = icmp eq i8 %i.tg, -65
  br i1 %.not254.i.i.i, label %.thread.thread.i.thread.i.i, label %bb.eg

bb.eh:                                            ; preds = %bb.ee
  %i.th = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 2
  %i.ti = load i8, ptr %i.th, align 1, !noundef !6
  %i.tj = and i8 %i.ti, -2
  %switch.i.i.i = icmp eq i8 %i.tj, -66
  br i1 %switch.i.i.i, label %.thread.thread.i.thread.i.i, label %bb.eg

bb.ei:                                            ; preds = %bb.ec
  %i.tk = icmp ugt i8 %i.sn, -17
  br i1 %i.tk, label %.split.i.i.i, label %bb.ef

.split.i.i.i:                                     ; preds = %bb.ei
  %i.tl = icmp samesign ult i8 %i.sn, -11
  br i1 %i.tl, label %bb.eg, label %.thread.i25.i.i

bb.ej:                                            ; preds = %bb.eg
  %i.tm = icmp sgt i8 %i.sn, -1
  br i1 %i.tm, label %.thread234.i.i.i, label %.thread.i25.i.i

bb.ek:                                            ; preds = %bb.eg
  switch i8 %i.sn, label %.thread245.i.i.i [
    i8 -17, label %bb.el
    i8 13, label %.thread231.thread.i.i.i
    i8 10, label %.thread231.thread.i.i.i
    i8 -62, label %bb.en
    i8 -30, label %bb.eo
    i8 34, label %.thread231.thread.i.i.i
    i8 92, label %.thread231.thread.i.i.i
    i8 32, label %bb.hc
  ]

bb.el:                                            ; preds = %bb.ek
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.8.0265.i.i.i, i64 1
  %i.to = load i8, ptr %i.tn, align 1, !noundef !6
  %i.tp = icmp eq i8 %i.to, -69
  br i1 %i.tp, label %bb.em, label %.thread245.i.i.i

bb.em:                                            ; preds = %bb.el
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.8.0265.i.i.i, i64 2
  %i.tr = load i8, ptr %i.tq, align 1, !noundef !6
  %i.ts = icmp eq i8 %i.tr, -65
  br i1 %i.ts, label %.thread.thread.i.thread.i.i, label %.thread245.i.i.i

.thread234.i.i.i:                                 ; preds = %bb.ej
  switch i8 %i.sn, label %.thread245.i.i.i [
    i8 13, label %.thread231.thread.i.i.i
    i8 10, label %.thread231.thread.i.i.i
    i8 32, label %bb.hc
    i8 92, label %.thread231.thread.i.i.i
    i8 34, label %.thread231.thread.i.i.i
  ]

bb.en:                                            ; preds = %bb.ek
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.8.0265.i.i.i, i64 1
  %i.tu = load i8, ptr %i.tt, align 1, !noundef !6
  %i.tv = icmp eq i8 %i.tu, -123
  br i1 %i.tv, label %.thread231.i.thread.i.i, label %.thread245.i.i.i

bb.eo:                                            ; preds = %bb.ek
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.8.0265.i.i.i, i64 1
  %i.tx = load i8, ptr %i.tw, align 1, !noundef !6
  %i.ty = icmp eq i8 %i.tx, -128
  br i1 %i.ty, label %bb.ep, label %.thread245.i.i.i

bb.ep:                                            ; preds = %bb.eo
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.8.0265.i.i.i, i64 2
  %i.ua = load i8, ptr %i.tz, align 1, !noundef !6
  %i.ub = and i8 %i.ua, -2
  %switch92.i.i = icmp eq i8 %i.ub, -88
  br i1 %switch92.i.i, label %.thread.thread.i.thread.i.i, label %.thread245.i.i.i

.thread.i25.i.i:                                  ; preds = %bb.ej, %.split.i.i.i, %bb.ef
  %i.uc = and i8 %i.sn, -32
  %i.ud = icmp eq i8 %i.uc, -64
  br i1 %i.ud, label %.thread231.i.thread.i.i, label %.thread.thread.i.i.i

.thread.thread.i.i.i:                             ; preds = %.thread.i25.i.i
  %i.ue = and i8 %i.sn, -16
  %i.uf = icmp eq i8 %i.ue, -32
  br i1 %i.uf, label %.thread.thread.i.thread.i.i, label %bb.eq

.thread231.thread.i.i.i:                          ; preds = %.thread234.i.i.i, %.thread234.i.i.i, %.thread234.i.i.i, %.thread234.i.i.i, %bb.ek, %bb.ek, %bb.ek, %bb.ek, %bb.ef
  %i.ug = zext nneg i8 %i.sn to i32
  br label %._crit_edge.i26.i.i

.thread231.i.thread.i.i:                          ; preds = %.thread.i25.i.i, %bb.en, %bb.ed
  %i.uh = and i8 %i.sn, 31
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i"

.thread.thread.i.thread.i.i:                      ; preds = %.thread.thread.i.i.i, %bb.ep, %bb.em, %bb.eh, %.split232.i.i.i, %.thread235.i.i.i, %.split233.i.i.i
  %i.ui = and i8 %i.sn, 15
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i"

bb.eq:                                            ; preds = %.thread.thread.i.i.i
  %i.uj = and i8 %i.sn, -8
  %i.uk = icmp eq i8 %i.uj, -16
  %i.ul = and i8 %i.sn, 7
  br i1 %i.uk, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i", label %._crit_edge.i26.i.i

._crit_edge.i26.i.i:                              ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.1", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.2", %bb.eq, %.thread231.thread.i.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %bb.eq ], [ 1, %.thread231.thread.i.i.i ], [ %.sroa.032.0248.i88.i.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.2" ], [ %.sroa.032.0248.i88.i.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.1" ], [ %.sroa.032.0248.i88.i.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i" ]
  %.sroa.021.0.lcssa.i.i.i = phi i32 [ 0, %bb.eq ], [ %i.ug, %.thread231.thread.i.i.i ], [ %i.vh, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i" ], [ %i.vn, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.1" ], [ %i.vt, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.2" ] ; 4 uses
  %i.um = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 %.pre-phi.i.i.i ; 16 uses
  %i.un = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.uo = getelementptr i8, ptr %i.un, i64 5
  %i.up = load ptr, ptr %i.sl, align 8, !noundef !6
  %i.uq = icmp ult ptr %i.uo, %i.up
  br i1 %i.uq, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i30.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i27.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i27.i.i: ; preds = %._crit_edge.i26.i.i
  %i.ur = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.ur, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i30.i.i, label %bb.er

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i30.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i27.i.i, %._crit_edge.i26.i.i
  br label %bb.er

bb.er:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i30.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i27.i.i
  %i.us = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i.i30.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i.i27.i.i ]
  %i.ut = load i8, ptr %i.us, align 1, !range !10, !noundef !6
  %i.uu = trunc nuw i8 %i.ut to i1
  br i1 %i.uu, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i28.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.uv = load ptr, ptr %i.sk, align 8, !noundef !6 ; 2 uses
  %i.uw = getelementptr i8, ptr %i.uv, i64 1
  store ptr %i.uw, ptr %i.sk, align 8
  store i8 92, ptr %i.uv, align 1
  %i.ux = load i32, ptr %i.sh, align 8, !noundef !6
  %i.uy = add i32 %i.ux, 1
  store i32 %i.uy, ptr %i.sh, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i28.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i28.i.i: ; preds = %bb.es, %bb.er
  %.89.i.i.i = phi ptr [ @14, %bb.er ], [ @15, %bb.es ]
  %i.uz = load i8, ptr %.89.i.i.i, align 1, !range !10, !noundef !6
  %i.va = trunc nuw i8 %i.uz to i1
  br i1 %i.va, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %bb.et

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i": ; preds = %.thread231.i.thread.i.i, %.thread.thread.i.thread.i.i, %bb.eq
  %.sroa.033.0.i.ph.sink.i.i = phi i8 [ %i.uh, %.thread231.i.thread.i.i ], [ %i.ui, %.thread.thread.i.thread.i.i ], [ %i.ul, %bb.eq ]
  %exitcond.not.i.i.i = phi i1 [ true, %.thread231.i.thread.i.i ], [ false, %.thread.thread.i.thread.i.i ], [ false, %bb.eq ]
  %exitcond.not.i.i.i.1 = phi i1 [ false, %.thread231.i.thread.i.i ], [ true, %.thread.thread.i.thread.i.i ], [ false, %bb.eq ]
  %.sroa.032.0248.i88.i.i = phi i64 [ 2, %.thread231.i.thread.i.i ], [ 3, %.thread.thread.i.thread.i.i ], [ 4, %bb.eq ] ; 3 uses
  %i.vb = zext nneg i8 %.sroa.033.0.i.ph.sink.i.i to i32
  %i.vc = shl nuw nsw i32 %i.vb, 6
  %i.vd = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 1
  %i.ve = load i8, ptr %i.vd, align 1, !noundef !6
  %i.vf = and i8 %i.ve, 63
  %i.vg = zext nneg i8 %i.vf to i32
  %i.vh = or disjoint i32 %i.vc, %i.vg            ; 2 uses
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i26.i.i, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.1"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.1": ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i"
  %i.vi = shl nuw nsw i32 %i.vh, 6
  %i.vj = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 2
  %i.vk = load i8, ptr %i.vj, align 1, !noundef !6
  %i.vl = and i8 %i.vk, 63
  %i.vm = zext nneg i8 %i.vl to i32
  %i.vn = or disjoint i32 %i.vi, %i.vm            ; 2 uses
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge.i26.i.i, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.2"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.2": ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.i.i.1"
  %i.vo = shl nuw nsw i32 %i.vn, 6
  %i.vp = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 3
  %i.vq = load i8, ptr %i.vp, align 1, !noundef !6
  %i.vr = and i8 %i.vq, 63
  %i.vs = zext nneg i8 %i.vr to i32
  %i.vt = or disjoint i32 %i.vo, %i.vs
  br label %._crit_edge.i26.i.i

bb.et:                                            ; preds = %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit.i28.i.i
  switch i32 %.sroa.021.0.lcssa.i.i.i, label %bb.eu [
    i32 0, label %bb.ev
    i32 7, label %bb.ey
    i32 8, label %bb.fb
    i32 9, label %bb.fe
    i32 10, label %bb.fh
    i32 11, label %bb.fk
    i32 12, label %bb.fn
    i32 13, label %bb.fq
    i32 27, label %bb.ft
    i32 34, label %bb.fw
    i32 92, label %bb.fz
    i32 133, label %bb.gc
    i32 160, label %bb.gf
    i32 8232, label %bb.gi
    i32 8233, label %bb.gl
  ]

bb.eu:                                            ; preds = %bb.et
  %i.vu = icmp samesign ult i32 %.sroa.021.0.lcssa.i.i.i, 256
  br i1 %i.vu, label %bb.gp, label %bb.go

bb.ev:                                            ; preds = %bb.et
  %i.vv = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.vw = getelementptr i8, ptr %i.vv, i64 5
  %i.vx = load ptr, ptr %i.sl, align 8, !noundef !6
  %i.vy = icmp ult ptr %i.vw, %i.vx
  br i1 %i.vy, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i119.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i117.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i117.i.i.i: ; preds = %bb.ev
  %i.vz = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.vz, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i119.i.i.i, label %bb.ew

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i119.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i117.i.i.i, %bb.ev
  br label %bb.ew

bb.ew:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i119.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i117.i.i.i
  %i.wa = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i119.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i117.i.i.i ]
  %i.wb = load i8, ptr %i.wa, align 1, !range !10, !noundef !6
  %i.wc = trunc nuw i8 %i.wb to i1
  br i1 %i.wc, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit120.i.i.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.wd = load ptr, ptr %i.sk, align 8, !noundef !6 ; 2 uses
  %i.we = getelementptr i8, ptr %i.wd, i64 1
  store ptr %i.we, ptr %i.sk, align 8
  store i8 48, ptr %i.wd, align 1
  %i.wf = load i32, ptr %i.sh, align 8, !noundef !6
  %i.wg = add i32 %i.wf, 1
  store i32 %i.wg, ptr %i.sh, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit120.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit120.i.i.i: ; preds = %bb.ex, %bb.ew
  %.90.i.i.i = phi ptr [ @14, %bb.ew ], [ @15, %bb.ex ]
  %i.wh = load i8, ptr %.90.i.i.i, align 1, !range !10, !noundef !6
  %i.wi = trunc nuw i8 %i.wh to i1
  br i1 %i.wi, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.ey:                                            ; preds = %bb.et
  %i.wj = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.wk = getelementptr i8, ptr %i.wj, i64 5
  %i.wl = load ptr, ptr %i.sl, align 8, !noundef !6
  %i.wm = icmp ult ptr %i.wk, %i.wl
  br i1 %i.wm, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i123.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i121.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i121.i.i.i: ; preds = %bb.ey
  %i.wn = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.wn, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i123.i.i.i, label %bb.ez

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i123.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i121.i.i.i, %bb.ey
  br label %bb.ez

bb.ez:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i123.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i121.i.i.i
  %i.wo = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i123.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i121.i.i.i ]
  %i.wp = load i8, ptr %i.wo, align 1, !range !10, !noundef !6
  %i.wq = trunc nuw i8 %i.wp to i1
  br i1 %i.wq, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit124.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.wr = load ptr, ptr %i.sk, align 8, !noundef !6 ; 2 uses
  %i.ws = getelementptr i8, ptr %i.wr, i64 1
  store ptr %i.ws, ptr %i.sk, align 8
  store i8 97, ptr %i.wr, align 1
  %i.wt = load i32, ptr %i.sh, align 8, !noundef !6
  %i.wu = add i32 %i.wt, 1
  store i32 %i.wu, ptr %i.sh, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit124.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit124.i.i.i: ; preds = %bb.fa, %bb.ez
  %.91.i.i.i = phi ptr [ @14, %bb.ez ], [ @15, %bb.fa ]
  %i.wv = load i8, ptr %.91.i.i.i, align 1, !range !10, !noundef !6
  %i.ww = trunc nuw i8 %i.wv to i1
  br i1 %i.ww, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.fb:                                            ; preds = %bb.et
  %i.wx = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.wy = getelementptr i8, ptr %i.wx, i64 5
  %i.wz = load ptr, ptr %i.sl, align 8, !noundef !6
  %i.xa = icmp ult ptr %i.wy, %i.wz
  br i1 %i.xa, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i127.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i125.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i125.i.i.i: ; preds = %bb.fb
  %i.xb = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.xb, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i127.i.i.i, label %bb.fc

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i127.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i125.i.i.i, %bb.fb
  br label %bb.fc

bb.fc:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i127.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i125.i.i.i
  %i.xc = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i127.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i125.i.i.i ]
  %i.xd = load i8, ptr %i.xc, align 1, !range !10, !noundef !6
  %i.xe = trunc nuw i8 %i.xd to i1
  br i1 %i.xe, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit128.i.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.xf = load ptr, ptr %i.sk, align 8, !noundef !6 ; 2 uses
  %i.xg = getelementptr i8, ptr %i.xf, i64 1
  store ptr %i.xg, ptr %i.sk, align 8
  store i8 98, ptr %i.xf, align 1
  %i.xh = load i32, ptr %i.sh, align 8, !noundef !6
  %i.xi = add i32 %i.xh, 1
  store i32 %i.xi, ptr %i.sh, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit128.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit128.i.i.i: ; preds = %bb.fd, %bb.fc
  %.92.i.i.i = phi ptr [ @14, %bb.fc ], [ @15, %bb.fd ]
  %i.xj = load i8, ptr %.92.i.i.i, align 1, !range !10, !noundef !6
  %i.xk = trunc nuw i8 %i.xj to i1
  br i1 %i.xk, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.fe:                                            ; preds = %bb.et
  %i.xl = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.xm = getelementptr i8, ptr %i.xl, i64 5
  %i.xn = load ptr, ptr %i.sl, align 8, !noundef !6
  %i.xo = icmp ult ptr %i.xm, %i.xn
  br i1 %i.xo, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i131.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i129.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i129.i.i.i: ; preds = %bb.fe
  %i.xp = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.xp, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i131.i.i.i, label %bb.ff

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i131.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i129.i.i.i, %bb.fe
  br label %bb.ff

bb.ff:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i131.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i129.i.i.i
  %i.xq = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i131.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i129.i.i.i ]
  %i.xr = load i8, ptr %i.xq, align 1, !range !10, !noundef !6
  %i.xs = trunc nuw i8 %i.xr to i1
  br i1 %i.xs, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit132.i.i.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.xt = load ptr, ptr %i.sk, align 8, !noundef !6 ; 2 uses
  %i.xu = getelementptr i8, ptr %i.xt, i64 1
  store ptr %i.xu, ptr %i.sk, align 8
  store i8 116, ptr %i.xt, align 1
  %i.xv = load i32, ptr %i.sh, align 8, !noundef !6
  %i.xw = add i32 %i.xv, 1
  store i32 %i.xw, ptr %i.sh, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit132.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit132.i.i.i: ; preds = %bb.fg, %bb.ff
  %.93.i.i.i = phi ptr [ @14, %bb.ff ], [ @15, %bb.fg ]
  %i.xx = load i8, ptr %.93.i.i.i, align 1, !range !10, !noundef !6
  %i.xy = trunc nuw i8 %i.xx to i1
  br i1 %i.xy, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.fh:                                            ; preds = %bb.et
  %i.xz = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.ya = getelementptr i8, ptr %i.xz, i64 5
  %i.yb = load ptr, ptr %i.sl, align 8, !noundef !6
  %i.yc = icmp ult ptr %i.ya, %i.yb
  br i1 %i.yc, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i135.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i133.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i133.i.i.i: ; preds = %bb.fh
  %i.yd = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.yd, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i135.i.i.i, label %bb.fi

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i135.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i133.i.i.i, %bb.fh
  br label %bb.fi

bb.fi:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i135.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i133.i.i.i
  %i.ye = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i135.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i133.i.i.i ]
  %i.yf = load i8, ptr %i.ye, align 1, !range !10, !noundef !6
  %i.yg = trunc nuw i8 %i.yf to i1
  br i1 %i.yg, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit136.i.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.yh = load ptr, ptr %i.sk, align 8, !noundef !6 ; 2 uses
  %i.yi = getelementptr i8, ptr %i.yh, i64 1
  store ptr %i.yi, ptr %i.sk, align 8
  store i8 110, ptr %i.yh, align 1
  %i.yj = load i32, ptr %i.sh, align 8, !noundef !6
  %i.yk = add i32 %i.yj, 1
  store i32 %i.yk, ptr %i.sh, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit136.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit136.i.i.i: ; preds = %bb.fj, %bb.fi
  %.94.i.i.i = phi ptr [ @14, %bb.fi ], [ @15, %bb.fj ]
  %i.yl = load i8, ptr %.94.i.i.i, align 1, !range !10, !noundef !6
  %i.ym = trunc nuw i8 %i.yl to i1
  br i1 %i.ym, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.fk:                                            ; preds = %bb.et
  %i.yn = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.yo = getelementptr i8, ptr %i.yn, i64 5
  %i.yp = load ptr, ptr %i.sl, align 8, !noundef !6
  %i.yq = icmp ult ptr %i.yo, %i.yp
  br i1 %i.yq, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i139.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i137.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i137.i.i.i: ; preds = %bb.fk
  %i.yr = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.yr, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i139.i.i.i, label %bb.fl

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i139.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i137.i.i.i, %bb.fk
  br label %bb.fl

bb.fl:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i139.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i137.i.i.i
  %i.ys = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i139.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i137.i.i.i ]
  %i.yt = load i8, ptr %i.ys, align 1, !range !10, !noundef !6
  %i.yu = trunc nuw i8 %i.yt to i1
end_hunk_2
begin_hunk_3_@_ZN14unsafe_libyaml7emitter22yaml_emitter_emit_node17h27b3476a51eec082E:bb.a
  %i.aay = trunc nuw i8 %i.aax to i1
  br i1 %i.aay, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit156.i.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aaz = load ptr, ptr %i.sk, align 8, !noundef !6 ; 2 uses
  %i.aba = getelementptr i8, ptr %i.aaz, i64 1
  store ptr %i.aba, ptr %i.sk, align 8
  store i8 34, ptr %i.aaz, align 1
  %i.abb = load i32, ptr %i.sh, align 8, !noundef !6
  %i.abc = add i32 %i.abb, 1
  store i32 %i.abc, ptr %i.sh, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit156.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit156.i.i.i: ; preds = %bb.fy, %bb.fx
  %.99.i.i.i = phi ptr [ @14, %bb.fx ], [ @15, %bb.fy ]
  %i.abd = load i8, ptr %.99.i.i.i, align 1, !range !10, !noundef !6
  %i.abe = trunc nuw i8 %i.abd to i1
  br i1 %i.abe, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.fz:                                            ; preds = %bb.et
  %i.abf = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.abg = getelementptr i8, ptr %i.abf, i64 5
  %i.abh = load ptr, ptr %i.sl, align 8, !noundef !6
  %i.abi = icmp ult ptr %i.abg, %i.abh
  br i1 %i.abi, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i159.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i157.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i157.i.i.i: ; preds = %bb.fz
  %i.abj = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.abj, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i159.i.i.i, label %bb.ga

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i159.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i157.i.i.i, %bb.fz
  br label %bb.ga

bb.ga:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i159.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i157.i.i.i
  %i.abk = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i159.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i157.i.i.i ]
  %i.abl = load i8, ptr %i.abk, align 1, !range !10, !noundef !6
  %i.abm = trunc nuw i8 %i.abl to i1
  br i1 %i.abm, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit160.i.i.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.abn = load ptr, ptr %i.sk, align 8, !noundef !6 ; 2 uses
  %i.abo = getelementptr i8, ptr %i.abn, i64 1
  store ptr %i.abo, ptr %i.sk, align 8
  store i8 92, ptr %i.abn, align 1
  %i.abp = load i32, ptr %i.sh, align 8, !noundef !6
  %i.abq = add i32 %i.abp, 1
  store i32 %i.abq, ptr %i.sh, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit160.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit160.i.i.i: ; preds = %bb.gb, %bb.ga
  %.100.i.i.i = phi ptr [ @14, %bb.ga ], [ @15, %bb.gb ]
  %i.abr = load i8, ptr %.100.i.i.i, align 1, !range !10, !noundef !6
  %i.abs = trunc nuw i8 %i.abr to i1
  br i1 %i.abs, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.gc:                                            ; preds = %bb.et
  %i.abt = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.abu = getelementptr i8, ptr %i.abt, i64 5
  %i.abv = load ptr, ptr %i.sl, align 8, !noundef !6
  %i.abw = icmp ult ptr %i.abu, %i.abv
  br i1 %i.abw, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i163.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i161.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i161.i.i.i: ; preds = %bb.gc
  %i.abx = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.abx, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i163.i.i.i, label %bb.gd

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i163.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i161.i.i.i, %bb.gc
  br label %bb.gd

bb.gd:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i163.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i161.i.i.i
  %i.aby = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i163.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i161.i.i.i ]
  %i.abz = load i8, ptr %i.aby, align 1, !range !10, !noundef !6
  %i.aca = trunc nuw i8 %i.abz to i1
  br i1 %i.aca, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit164.i.i.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.acb = load ptr, ptr %i.sk, align 8, !noundef !6 ; 2 uses
  %i.acc = getelementptr i8, ptr %i.acb, i64 1
  store ptr %i.acc, ptr %i.sk, align 8
  store i8 78, ptr %i.acb, align 1
  %i.acd = load i32, ptr %i.sh, align 8, !noundef !6
  %i.ace = add i32 %i.acd, 1
  store i32 %i.ace, ptr %i.sh, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit164.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit164.i.i.i: ; preds = %bb.ge, %bb.gd
  %.101.i.i.i = phi ptr [ @14, %bb.gd ], [ @15, %bb.ge ]
  %i.acf = load i8, ptr %.101.i.i.i, align 1, !range !10, !noundef !6
  %i.acg = trunc nuw i8 %i.acf to i1
  br i1 %i.acg, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.gf:                                            ; preds = %bb.et
  %i.ach = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.aci = getelementptr i8, ptr %i.ach, i64 5
  %i.acj = load ptr, ptr %i.sl, align 8, !noundef !6
  %i.ack = icmp ult ptr %i.aci, %i.acj
  br i1 %i.ack, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i167.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i165.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i165.i.i.i: ; preds = %bb.gf
  %i.acl = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.acl, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i167.i.i.i, label %bb.gg

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i167.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i165.i.i.i, %bb.gf
  br label %bb.gg

bb.gg:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i167.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i165.i.i.i
  %i.acm = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i167.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i165.i.i.i ]
  %i.acn = load i8, ptr %i.acm, align 1, !range !10, !noundef !6
  %i.aco = trunc nuw i8 %i.acn to i1
  br i1 %i.aco, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit168.i.i.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.acp = load ptr, ptr %i.sk, align 8, !noundef !6 ; 2 uses
  %i.acq = getelementptr i8, ptr %i.acp, i64 1
  store ptr %i.acq, ptr %i.sk, align 8
  store i8 95, ptr %i.acp, align 1
  %i.acr = load i32, ptr %i.sh, align 8, !noundef !6
  %i.acs = add i32 %i.acr, 1
  store i32 %i.acs, ptr %i.sh, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit168.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit168.i.i.i: ; preds = %bb.gh, %bb.gg
  %.102.i.i.i = phi ptr [ @14, %bb.gg ], [ @15, %bb.gh ]
  %i.act = load i8, ptr %.102.i.i.i, align 1, !range !10, !noundef !6
  %i.acu = trunc nuw i8 %i.act to i1
  br i1 %i.acu, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.gi:                                            ; preds = %bb.et
  %i.acv = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.acw = getelementptr i8, ptr %i.acv, i64 5
  %i.acx = load ptr, ptr %i.sl, align 8, !noundef !6
  %i.acy = icmp ult ptr %i.acw, %i.acx
  br i1 %i.acy, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i171.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i169.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i169.i.i.i: ; preds = %bb.gi
  %i.acz = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.acz, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i171.i.i.i, label %bb.gj

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i171.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i169.i.i.i, %bb.gi
  br label %bb.gj

bb.gj:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i171.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i169.i.i.i
  %i.ada = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i171.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i169.i.i.i ]
  %i.adb = load i8, ptr %i.ada, align 1, !range !10, !noundef !6
  %i.adc = trunc nuw i8 %i.adb to i1
  br i1 %i.adc, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit172.i.i.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.add = load ptr, ptr %i.sk, align 8, !noundef !6 ; 2 uses
  %i.ade = getelementptr i8, ptr %i.add, i64 1
  store ptr %i.ade, ptr %i.sk, align 8
  store i8 76, ptr %i.add, align 1
  %i.adf = load i32, ptr %i.sh, align 8, !noundef !6
  %i.adg = add i32 %i.adf, 1
  store i32 %i.adg, ptr %i.sh, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit172.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit172.i.i.i: ; preds = %bb.gk, %bb.gj
  %.103.i.i.i = phi ptr [ @14, %bb.gj ], [ @15, %bb.gk ]
  %i.adh = load i8, ptr %.103.i.i.i, align 1, !range !10, !noundef !6
  %i.adi = trunc nuw i8 %i.adh to i1
  br i1 %i.adi, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.gl:                                            ; preds = %bb.et
  %i.adj = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.adk = getelementptr i8, ptr %i.adj, i64 5
  %i.adl = load ptr, ptr %i.sl, align 8, !noundef !6
  %i.adm = icmp ult ptr %i.adk, %i.adl
  br i1 %i.adm, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i175.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i173.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i173.i.i.i: ; preds = %bb.gl
  %i.adn = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.adn, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i175.i.i.i, label %bb.gm

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i175.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i173.i.i.i, %bb.gl
  br label %bb.gm

bb.gm:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i175.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i173.i.i.i
  %i.ado = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i175.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i173.i.i.i ]
  %i.adp = load i8, ptr %i.ado, align 1, !range !10, !noundef !6
  %i.adq = trunc nuw i8 %i.adp to i1
  br i1 %i.adq, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit176.i.i.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.adr = load ptr, ptr %i.sk, align 8, !noundef !6 ; 2 uses
  %i.ads = getelementptr i8, ptr %i.adr, i64 1
  store ptr %i.ads, ptr %i.sk, align 8
  store i8 80, ptr %i.adr, align 1
  %i.adt = load i32, ptr %i.sh, align 8, !noundef !6
  %i.adu = add i32 %i.adt, 1
  store i32 %i.adu, ptr %i.sh, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit176.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit176.i.i.i: ; preds = %bb.gn, %bb.gm
  %.104.i.i.i = phi ptr [ @14, %bb.gm ], [ @15, %bb.gn ]
  %i.adv = load i8, ptr %.104.i.i.i, align 1, !range !10, !noundef !6
  %i.adw = trunc nuw i8 %i.adv to i1
  br i1 %i.adw, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.go:                                            ; preds = %bb.eu
  %i.adx = icmp samesign ult i32 %.sroa.021.0.lcssa.i.i.i, 65536
  %i.ady = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.adz = getelementptr i8, ptr %i.ady, i64 5
  %i.aea = load ptr, ptr %i.sl, align 8, !noundef !6
  %i.aeb = icmp ult ptr %i.adz, %i.aea            ; 2 uses
  br i1 %i.adx, label %bb.gv, label %bb.gs

bb.gp:                                            ; preds = %bb.eu
  %i.aec = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.aed = getelementptr i8, ptr %i.aec, i64 5
  %i.aee = load ptr, ptr %i.sl, align 8, !noundef !6
  %i.aef = icmp ult ptr %i.aed, %i.aee
  br i1 %i.aef, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i179.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i177.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i177.i.i.i: ; preds = %bb.gp
  %i.aeg = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.aeg, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i179.i.i.i, label %bb.gq

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i179.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i177.i.i.i, %bb.gp
  br label %bb.gq

bb.gq:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i179.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i177.i.i.i
  %i.aeh = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i179.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i177.i.i.i ]
  %i.aei = load i8, ptr %i.aeh, align 1, !range !10, !noundef !6
  %i.aej = trunc nuw i8 %i.aei to i1
  br i1 %i.aej, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit180.i.i.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aek = load ptr, ptr %i.sk, align 8, !noundef !6 ; 2 uses
  %i.ael = getelementptr i8, ptr %i.aek, i64 1
  store ptr %i.ael, ptr %i.sk, align 8
  store i8 120, ptr %i.aek, align 1
  %i.aem = load i32, ptr %i.sh, align 8, !noundef !6
  %i.aen = add i32 %i.aem, 1
  store i32 %i.aen, ptr %i.sh, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit180.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit180.i.i.i: ; preds = %bb.gr, %bb.gq
  %.105.i.i.i = phi ptr [ @14, %bb.gq ], [ @15, %bb.gr ]
  %i.aeo = load i8, ptr %.105.i.i.i, align 1, !range !10, !noundef !6
  %i.aep = trunc nuw i8 %i.aeo to i1
  br i1 %i.aep, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.preheader

bb.gs:                                            ; preds = %bb.go
  br i1 %i.aeb, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i183.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i181.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i181.i.i.i: ; preds = %bb.gs
  %i.aeq = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.aeq, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i183.i.i.i, label %bb.gt

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i183.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i181.i.i.i, %bb.gs
  br label %bb.gt

bb.gt:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i183.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i181.i.i.i
  %i.aer = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i183.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i181.i.i.i ]
  %i.aes = load i8, ptr %i.aer, align 1, !range !10, !noundef !6
  %i.aet = trunc nuw i8 %i.aes to i1
  br i1 %i.aet, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit184.i.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aeu = load ptr, ptr %i.sk, align 8, !noundef !6 ; 2 uses
  %i.aev = getelementptr i8, ptr %i.aeu, i64 1
  store ptr %i.aev, ptr %i.sk, align 8
  store i8 85, ptr %i.aeu, align 1
  %i.aew = load i32, ptr %i.sh, align 8, !noundef !6
  %i.aex = add i32 %i.aew, 1
  store i32 %i.aex, ptr %i.sh, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit184.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit184.i.i.i: ; preds = %bb.gu, %bb.gt
  %.106.i.i.i = phi ptr [ @14, %bb.gt ], [ @15, %bb.gu ]
  %i.aey = load i8, ptr %.106.i.i.i, align 1, !range !10, !noundef !6
  %i.aez = trunc nuw i8 %i.aey to i1
  br i1 %i.aez, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.preheader

bb.gv:                                            ; preds = %bb.go
  br i1 %i.aeb, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i187.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i185.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i185.i.i.i: ; preds = %bb.gv
  %i.afa = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.afa, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i187.i.i.i, label %bb.gw

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i187.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i185.i.i.i, %bb.gv
  br label %bb.gw

bb.gw:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i187.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i185.i.i.i
  %i.afb = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i187.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i185.i.i.i ]
  %i.afc = load i8, ptr %i.afb, align 1, !range !10, !noundef !6
  %i.afd = trunc nuw i8 %i.afc to i1
  br i1 %i.afd, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit188.i.i.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.afe = load ptr, ptr %i.sk, align 8, !noundef !6 ; 2 uses
  %i.aff = getelementptr i8, ptr %i.afe, i64 1
  store ptr %i.aff, ptr %i.sk, align 8
  store i8 117, ptr %i.afe, align 1
  %i.afg = load i32, ptr %i.sh, align 8, !noundef !6
  %i.afh = add i32 %i.afg, 1
  store i32 %i.afh, ptr %i.sh, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit188.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit188.i.i.i: ; preds = %bb.gx, %bb.gw
  %.107.i.i.i = phi ptr [ @14, %bb.gw ], [ @15, %bb.gx ]
  %i.afi = load i8, ptr %.107.i.i.i, align 1, !range !10, !noundef !6
  %i.afj = trunc nuw i8 %i.afi to i1
  br i1 %i.afj, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.preheader

.preheader:                                       ; preds = %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit188.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit184.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit180.i.i.i
  %.sroa.026.1263.i.i.i.ph = phi i32 [ 4, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit180.i.i.i ], [ 28, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit184.i.i.i ], [ 12, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit188.i.i.i ]
  br label %bb.gz

bb.gy:                                            ; preds = %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit192.i.i.i
  %i.afk = add nsw i32 %.sroa.026.1263.i.i.i, -4
  %.not = icmp eq i32 %.sroa.026.1263.i.i.i, 0
  br i1 %.not, label %.loopexit.i.i.i, label %bb.gz

bb.gz:                                            ; preds = %.preheader, %bb.gy
  %.sroa.026.1263.i.i.i = phi i32 [ %i.afk, %bb.gy ], [ %.sroa.026.1263.i.i.i.ph, %.preheader ] ; 3 uses
  %i.afl = lshr i32 %.sroa.021.0.lcssa.i.i.i, %.sroa.026.1263.i.i.i
  %i.afm = and i32 %i.afl, 15                     ; 2 uses
  %i.afn = icmp samesign ult i32 %i.afm, 10
  %.108.i.i.i = select i1 %i.afn, i32 48, i32 55
  %i.afo = add nuw nsw i32 %.108.i.i.i, %i.afm
  %i.afp = trunc nuw nsw i32 %i.afo to i8
  %i.afq = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.afr = getelementptr i8, ptr %i.afq, i64 5
  %i.afs = load ptr, ptr %i.sl, align 8, !noundef !6
  %i.aft = icmp ult ptr %i.afr, %i.afs
  br i1 %i.aft, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i191.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i189.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i189.i.i.i: ; preds = %bb.gz
  %i.afu = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.afu, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i191.i.i.i, label %bb.ha

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i191.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i189.i.i.i, %bb.gz
  br label %bb.ha

bb.ha:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i191.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i189.i.i.i
  %i.afv = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i191.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i189.i.i.i ]
  %i.afw = load i8, ptr %i.afv, align 1, !range !10, !noundef !6
  %i.afx = trunc nuw i8 %i.afw to i1
  br i1 %i.afx, label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit192.i.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.afy = load ptr, ptr %i.sk, align 8, !noundef !6 ; 2 uses
  %i.afz = getelementptr i8, ptr %i.afy, i64 1
  store ptr %i.afz, ptr %i.sk, align 8
  store i8 %i.afp, ptr %i.afy, align 1
  %i.aga = load i32, ptr %i.sh, align 8, !noundef !6
  %i.agb = add i32 %i.aga, 1
  store i32 %i.agb, ptr %i.sh, align 8
  br label %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit192.i.i.i

_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit192.i.i.i: ; preds = %bb.hb, %bb.ha
  %.sroa.053.0.i.i.i = phi ptr [ @14, %bb.ha ], [ @15, %bb.hb ]
  %i.agc = load i8, ptr %.sroa.053.0.i.i.i, align 1, !range !10, !noundef !6
  %i.agd = trunc nuw i8 %i.agc to i1
  br i1 %i.agd, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %bb.gy

.loopexit.i.i.i:                                  ; preds = %bb.gy, %bb.hy, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit205.i.i.i, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i33.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit176.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit172.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit168.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit164.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit160.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit156.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit152.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit148.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit144.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit140.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit136.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit132.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit128.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit124.i.i.i, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit120.i.i.i
  %.sroa.8.1.i.i.i = phi ptr [ %i.ajq, %bb.hy ], [ %i.um, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit120.i.i.i ], [ %i.um, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit124.i.i.i ], [ %i.um, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit128.i.i.i ], [ %i.um, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit132.i.i.i ], [ %i.um, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit136.i.i.i ], [ %i.um, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit140.i.i.i ], [ %i.um, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit144.i.i.i ], [ %i.um, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit148.i.i.i ], [ %i.um, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit152.i.i.i ], [ %i.um, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit156.i.i.i ], [ %i.um, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit160.i.i.i ], [ %i.um, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit164.i.i.i ], [ %i.um, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit168.i.i.i ], [ %i.um, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit172.i.i.i ], [ %i.um, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit176.i.i.i ], [ %.sroa.8.6.i.i.i, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i33.i.i ], [ %.sroa.8.11.i.i.i, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit205.i.i.i ], [ %i.um, %bb.gy ] ; 2 uses
  %.sroa.02.1.i29.i.i = phi i1 [ true, %bb.hy ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit120.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit124.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit128.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit132.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit136.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit140.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit144.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit148.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit152.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit156.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit160.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit164.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit168.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit172.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter3PUT17h6ab7f77857862044E.exit176.i.i.i ], [ false, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i33.i.i ], [ true, %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit205.i.i.i ], [ false, %bb.gy ]
  %.not82.i.i.i = icmp eq ptr %.sroa.8.1.i.i.i, %i.se
  br i1 %.not82.i.i.i, label %._crit_edge268.i.i.i, label %bb.eb

bb.hc:                                            ; preds = %.thread234.i.i.i, %bb.ek
  %or.cond.i31.i.i = or i1 %.sroa.02.0267.i.i.i, %i.sd
  br i1 %or.cond.i31.i.i, label %bb.hk, label %bb.hs

.thread245.i.i.i:                                 ; preds = %bb.ep, %bb.eo, %bb.en, %.thread234.i.i.i, %bb.em, %bb.el, %bb.ek, %.thread235.i.i.i
  %i.age = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.agf = getelementptr i8, ptr %i.age, i64 5
  %i.agg = load ptr, ptr %i.sl, align 8, !noundef !6
  %i.agh = icmp ult ptr %i.agf, %i.agg
  br i1 %i.agh, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i195.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i193.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i193.i.i.i: ; preds = %.thread245.i.i.i
  %i.agi = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.agi, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i195.i.i.i, label %bb.hd

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i195.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i193.i.i.i, %.thread245.i.i.i
  br label %bb.hd

bb.hd:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i195.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i193.i.i.i
  %i.agj = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i195.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i193.i.i.i ]
  %i.agk = load i8, ptr %i.agj, align 1, !range !10, !noundef !6
  %i.agl = trunc nuw i8 %i.agk to i1
  br i1 %i.agl, label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i33.i.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.agm = load i8, ptr %.sroa.8.0265.i.i.i, align 1, !noundef !6 ; 8 uses
  %i.agn = icmp sgt i8 %i.agm, -1
  br i1 %i.agn, label %..sink.split.i_crit_edge.i42.i.i, label %bb.hf

..sink.split.i_crit_edge.i42.i.i:                 ; preds = %bb.he
  %.pre275.i.i.i = load ptr, ptr %i.sk, align 8
  br label %.sink.split.i.i38.i.i

bb.hf:                                            ; preds = %bb.he
  %i.ago = and i8 %i.agm, -32
  %i.agp = icmp eq i8 %i.ago, -64
  br i1 %i.agp, label %..sink.split.sink.split.i_crit_edge.i41.i.i, label %bb.hh

..sink.split.sink.split.i_crit_edge.i41.i.i:      ; preds = %bb.hf
  %.pre274.i.i.i = load ptr, ptr %i.sk, align 8
  br label %.sink.split.sink.split.i.i36.i.i

.sink.split.sink.split.sink.split.i.i34.i.i:      ; preds = %bb.hj, %..sink.split.sink.split.sink.split.i_crit_edge.i40.i.i
  %i.agq = phi ptr [ %.pre273.i.i.i, %..sink.split.sink.split.sink.split.i_crit_edge.i40.i.i ], [ %i.ahm, %bb.hj ]
  %.sroa.8.3.i.i.i = phi ptr [ %.sroa.8.0265.i.i.i, %..sink.split.sink.split.sink.split.i_crit_edge.i40.i.i ], [ %i.ahn, %bb.hj ]
  %.sink38.i.i35.i.i = phi i8 [ %i.agm, %..sink.split.sink.split.sink.split.i_crit_edge.i40.i.i ], [ %i.aho, %bb.hj ]
  store i8 %.sink38.i.i35.i.i, ptr %i.agq, align 1
  %i.agr = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.ags = getelementptr i8, ptr %i.agr, i64 1    ; 2 uses
  store ptr %i.ags, ptr %i.sk, align 8
  %i.agt = getelementptr i8, ptr %.sroa.8.3.i.i.i, i64 1 ; 2 uses
  %i.agu = load i8, ptr %i.agt, align 1, !noundef !6
  br label %.sink.split.sink.split.i.i36.i.i

.sink.split.sink.split.i.i36.i.i:                 ; preds = %.sink.split.sink.split.sink.split.i.i34.i.i, %..sink.split.sink.split.i_crit_edge.i41.i.i
  %i.agv = phi ptr [ %.pre274.i.i.i, %..sink.split.sink.split.i_crit_edge.i41.i.i ], [ %i.ags, %.sink.split.sink.split.sink.split.i.i34.i.i ]
  %.sroa.8.4.i.i.i = phi ptr [ %.sroa.8.0265.i.i.i, %..sink.split.sink.split.i_crit_edge.i41.i.i ], [ %i.agt, %.sink.split.sink.split.sink.split.i.i34.i.i ]
  %.sink31.i.i37.i.i = phi i8 [ %i.agm, %..sink.split.sink.split.i_crit_edge.i41.i.i ], [ %i.agu, %.sink.split.sink.split.sink.split.i.i34.i.i ]
  store i8 %.sink31.i.i37.i.i, ptr %i.agv, align 1
  %i.agw = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.agx = getelementptr i8, ptr %i.agw, i64 1    ; 2 uses
  store ptr %i.agx, ptr %i.sk, align 8
  %i.agy = getelementptr i8, ptr %.sroa.8.4.i.i.i, i64 1 ; 2 uses
  %i.agz = load i8, ptr %i.agy, align 1, !noundef !6
  br label %.sink.split.i.i38.i.i

.sink.split.i.i38.i.i:                            ; preds = %.sink.split.sink.split.i.i36.i.i, %..sink.split.i_crit_edge.i42.i.i
  %i.aha = phi ptr [ %.pre275.i.i.i, %..sink.split.i_crit_edge.i42.i.i ], [ %i.agx, %.sink.split.sink.split.i.i36.i.i ]
  %.sroa.8.5.i.i.i = phi ptr [ %.sroa.8.0265.i.i.i, %..sink.split.i_crit_edge.i42.i.i ], [ %i.agy, %.sink.split.sink.split.i.i36.i.i ]
  %.sink.i.i39.i.i = phi i8 [ %i.agm, %..sink.split.i_crit_edge.i42.i.i ], [ %i.agz, %.sink.split.sink.split.i.i36.i.i ]
  store i8 %.sink.i.i39.i.i, ptr %i.aha, align 1
  %i.ahb = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 1
  store ptr %i.ahc, ptr %i.sk, align 8
  %i.ahd = getelementptr i8, ptr %.sroa.8.5.i.i.i, i64 1
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hi, %.sink.split.i.i38.i.i
  %.sroa.8.2.i.i.i = phi ptr [ %i.ahd, %.sink.split.i.i38.i.i ], [ %.sroa.8.0265.i.i.i, %bb.hi ]
  %i.ahe = load i32, ptr %i.sh, align 8, !noundef !6
  %i.ahf = add i32 %i.ahe, 1
  store i32 %i.ahf, ptr %i.sh, align 8
  br label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i33.i.i

bb.hh:                                            ; preds = %bb.hf
  %i.ahg = and i8 %i.agm, -16
  %i.ahh = icmp eq i8 %i.ahg, -32
  br i1 %i.ahh, label %..sink.split.sink.split.sink.split.i_crit_edge.i40.i.i, label %bb.hi

..sink.split.sink.split.sink.split.i_crit_edge.i40.i.i: ; preds = %bb.hh
  %.pre273.i.i.i = load ptr, ptr %i.sk, align 8
  br label %.sink.split.sink.split.sink.split.i.i34.i.i

bb.hi:                                            ; preds = %bb.hh
  %i.ahi = and i8 %i.agm, -8
  %i.ahj = icmp eq i8 %i.ahi, -16
  br i1 %i.ahj, label %bb.hj, label %bb.hg

bb.hj:                                            ; preds = %bb.hi
  %i.ahk = load ptr, ptr %i.sk, align 8, !noundef !6
  store i8 %i.agm, ptr %i.ahk, align 1
  %i.ahl = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.ahm = getelementptr i8, ptr %i.ahl, i64 1    ; 2 uses
  store ptr %i.ahm, ptr %i.sk, align 8
  %i.ahn = getelementptr i8, ptr %.sroa.8.0265.i.i.i, i64 1 ; 2 uses
  %i.aho = load i8, ptr %i.ahn, align 1, !noundef !6
  br label %.sink.split.sink.split.sink.split.i.i34.i.i

_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit.i33.i.i: ; preds = %bb.hg, %bb.hd
  %.109.i.i.i = phi ptr [ @14, %bb.hd ], [ @15, %bb.hg ]
  %.sroa.8.6.i.i.i = phi ptr [ %.sroa.8.0265.i.i.i, %bb.hd ], [ %.sroa.8.2.i.i.i, %bb.hg ]
  %i.ahp = load i8, ptr %.109.i.i.i, align 1, !range !10, !noundef !6
  %i.ahq = trunc nuw i8 %i.ahp to i1
  br i1 %i.ahq, label %_ZN14unsafe_libyaml7emitter27yaml_emitter_process_scalar17hc7297643a490550bE.exit.thread.i, label %.loopexit.i.i.i

bb.hk:                                            ; preds = %bb.hs, %bb.hc
  %i.ahr = load ptr, ptr %i.sk, align 8, !noundef !6
  %i.ahs = getelementptr i8, ptr %i.ahr, i64 5
  %i.aht = load ptr, ptr %i.sl, align 8, !noundef !6
  %i.ahu = icmp ult ptr %i.ahs, %i.aht
  br i1 %i.ahu, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i204.i.i.i, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i196.i.i.i

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i196.i.i.i: ; preds = %bb.hk
  %i.ahv = tail call noundef zeroext i1 @_ZN14unsafe_libyaml6writer18yaml_emitter_flush17h22370d9652430099E(ptr noundef nonnull %0)
  br i1 %i.ahv, label %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i204.i.i.i, label %bb.hl

_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i204.i.i.i: ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i196.i.i.i, %bb.hk
  br label %bb.hl

bb.hl:                                            ; preds = %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i204.i.i.i, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i196.i.i.i
  %i.ahw = phi ptr [ @15, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.thread.i204.i.i.i ], [ @14, %_ZN14unsafe_libyaml7emitter5FLUSH17h1e31acfe2b5604c4E.exit.i196.i.i.i ]
  %i.ahx = load i8, ptr %i.ahw, align 1, !range !10, !noundef !6
  %i.ahy = trunc nuw i8 %i.ahx to i1
  br i1 %i.ahy, label %_ZN14unsafe_libyaml7emitter5WRITE17h9c79fc5dd2e55e11E.exit205.i.i.i, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ahz = load i8, ptr %.sroa.8.0265.i.i.i, align 1, !noundef !6 ; 8 uses
  %i.aia = icmp sgt i8 %i.ahz, -1
  br i1 %i.aia, label %..sink.split.i202_crit_edge.i.i.i, label %bb.hn

..sink.split.i202_crit_edge.i.i.i:                ; preds = %bb.hm
  %.pre272.i.i.i = load ptr, ptr %i.sk, align 8
  br label %.sink.split.i202.i.i.i

bb.hn:                                            ; preds = %bb.hm
  %i.aib = and i8 %i.ahz, -32
  %i.aic = icmp eq i8 %i.aib, -64
  br i1 %i.aic, label %..sink.split.sink.split.i200_crit_edge.i.i.i, label %bb.hp

..sink.split.sink.split.i200_crit_edge.i.i.i:     ; preds = %bb.hn
end_hunk_3
begin_hunk_4_@_ZN14unsafe_libyaml7scanner29yaml_parser_fetch_flow_scalar17h27a076f4a9d487c3E:bb.a

bb.fe:                                            ; preds = %bb.fd
  %i.sl = and i8 %i.sf, -8
  %i.sm = icmp eq i8 %i.sl, -16
  %..i203.i.7 = select i1 %i.sm, i64 4, i64 0
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %bb.fc, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.6
  %.sroa.0.0.i204.i.7 = phi i64 [ 3, %bb.fd ], [ 1, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.6 ], [ 2, %bb.fc ], [ %..i203.i.7, %bb.fe ] ; 2 uses
  %i.sn = add i64 %.sroa.0.0.i204.i.7, %i.rx      ; 2 uses
  %i.so = icmp ult i64 %i.sn, %i.rx
  br i1 %i.so, label %bb.dy, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.7", !prof !4

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.7": ; preds = %bb.ff
  store i64 %i.sn, ptr %i.cl, align 8
  %i.sp = load i64, ptr %i.cv, align 8, !noundef !6 ; 2 uses
  %i.sq = icmp eq i64 %i.sp, -1
  br i1 %i.sq, label %bb.dz, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.7, !prof !4

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.7: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.7"
  %i.sr = add nuw i64 %i.sp, 1
  store i64 %i.sr, ptr %i.cv, align 8
  %i.ss = load i64, ptr %i.dd, align 8, !noundef !6
  %i.st = add i64 %i.ss, -1
  store i64 %i.st, ptr %i.dd, align 8
  %i.su = getelementptr i8, ptr %i.se, i64 %.sroa.0.0.i204.i.7
  store ptr %i.su, ptr %i.cm, align 8
  br label %.loopexit.i

bb.fg:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit208.preheader.i"
  %i.sv = add i8 %i.mf, -65
  %or.cond144.i = icmp ult i8 %i.sv, 6
  br i1 %or.cond144.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.sw = add i8 %i.mf, -97
  %or.cond145.i = icmp ult i8 %i.sw, 6
  br i1 %or.cond145.i, label %bb.fj, label %.loopexit296.i.sink.split

bb.fi:                                            ; preds = %bb.fg
  %i.sx = add nsw i8 %i.mf, -55
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i"

bb.fj:                                            ; preds = %bb.fh
  %i.sy = add nsw i8 %i.mf, -87
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i": ; preds = %bb.fj, %bb.fi, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit208.preheader.i"
  %.sroa.056.0.i = phi i8 [ %i.sx, %bb.fi ], [ %i.sy, %bb.fj ], [ %i.mg, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit208.preheader.i" ]
  %i.sz = zext nneg i8 %.sroa.056.0.i to i32
  %i.ta = getelementptr i8, ptr %i.me, i64 1
  %i.tb = load i8, ptr %i.ta, align 1, !noundef !6 ; 5 uses
  %i.tc = add i8 %i.tb, -48                       ; 2 uses
  %or.cond143.i.1 = icmp ult i8 %i.tc, 10
  br i1 %or.cond143.i.1, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.1", label %bb.fk

bb.fk:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i"
  %i.td = add i8 %i.tb, -65
  %or.cond144.i.1 = icmp ult i8 %i.td, 6
  br i1 %or.cond144.i.1, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.te = add i8 %i.tb, -97
  %or.cond145.i.1 = icmp ult i8 %i.te, 6
  br i1 %or.cond145.i.1, label %bb.fm, label %.loopexit296.i.sink.split

bb.fm:                                            ; preds = %bb.fl
  %i.tf = add nsw i8 %i.tb, -87
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.1"

bb.fn:                                            ; preds = %bb.fk
  %i.tg = add nsw i8 %i.tb, -55
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.1"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.1": ; preds = %bb.fn, %bb.fm, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i"
  %.sroa.056.0.i.1 = phi i8 [ %i.tg, %bb.fn ], [ %i.tf, %bb.fm ], [ %i.tc, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i" ]
  %i.th = shl nuw nsw i32 %i.sz, 4
  %i.ti = zext nneg i8 %.sroa.056.0.i.1 to i32
  %i.tj = add nuw nsw i32 %i.th, %i.ti            ; 2 uses
  br i1 %exitcond.not.i.1, label %bb.dq, label %bb.fo

bb.fo:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.1"
  %i.tk = getelementptr i8, ptr %i.me, i64 2
  %i.tl = load i8, ptr %i.tk, align 1, !noundef !6 ; 5 uses
  %i.tm = add i8 %i.tl, -48                       ; 2 uses
  %or.cond143.i.2 = icmp ult i8 %i.tm, 10
  br i1 %or.cond143.i.2, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.2", label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.tn = add i8 %i.tl, -65
  %or.cond144.i.2 = icmp ult i8 %i.tn, 6
  br i1 %or.cond144.i.2, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.to = add i8 %i.tl, -97
  %or.cond145.i.2 = icmp ult i8 %i.to, 6
  br i1 %or.cond145.i.2, label %bb.fr, label %.loopexit296.i.sink.split

bb.fr:                                            ; preds = %bb.fq
  %i.tp = add nsw i8 %i.tl, -87
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.2"

bb.fs:                                            ; preds = %bb.fp
  %i.tq = add nsw i8 %i.tl, -55
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.2"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.2": ; preds = %bb.fs, %bb.fr, %bb.fo
  %.sroa.056.0.i.2 = phi i8 [ %i.tq, %bb.fs ], [ %i.tp, %bb.fr ], [ %i.tm, %bb.fo ]
  %i.tr = zext nneg i8 %.sroa.056.0.i.2 to i32
  %i.ts = getelementptr i8, ptr %i.me, i64 3
  %i.tt = load i8, ptr %i.ts, align 1, !noundef !6 ; 5 uses
  %i.tu = add i8 %i.tt, -48                       ; 2 uses
  %or.cond143.i.3 = icmp ult i8 %i.tu, 10
  br i1 %or.cond143.i.3, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.3", label %bb.ft

bb.ft:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.2"
  %i.tv = add i8 %i.tt, -65
  %or.cond144.i.3 = icmp ult i8 %i.tv, 6
  br i1 %or.cond144.i.3, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.tw = add i8 %i.tt, -97
  %or.cond145.i.3 = icmp ult i8 %i.tw, 6
  br i1 %or.cond145.i.3, label %bb.fv, label %.loopexit296.i.sink.split

bb.fv:                                            ; preds = %bb.fu
  %i.tx = add nsw i8 %i.tt, -87
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.3"

bb.fw:                                            ; preds = %bb.ft
  %i.ty = add nsw i8 %i.tt, -55
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.3"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.3": ; preds = %bb.fw, %bb.fv, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.2"
  %.sroa.056.0.i.3 = phi i8 [ %i.ty, %bb.fw ], [ %i.tx, %bb.fv ], [ %i.tu, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.2" ]
  %i.tz = shl nuw nsw i32 %i.tj, 8
  %i.ua = shl nuw nsw i32 %i.tr, 4
  %i.ub = add nuw nsw i32 %i.tz, %i.ua
  %i.uc = zext nneg i8 %.sroa.056.0.i.3 to i32
  %i.ud = add nuw nsw i32 %i.ub, %i.uc            ; 2 uses
  br i1 %exitcond.not.i.3, label %bb.dq, label %bb.fx

bb.fx:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.3"
  %i.ue = getelementptr i8, ptr %i.me, i64 4
  %i.uf = load i8, ptr %i.ue, align 1, !noundef !6 ; 5 uses
  %i.ug = add i8 %i.uf, -48                       ; 2 uses
  %or.cond143.i.4 = icmp ult i8 %i.ug, 10
  br i1 %or.cond143.i.4, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.4", label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.uh = add i8 %i.uf, -65
  %or.cond144.i.4 = icmp ult i8 %i.uh, 6
  br i1 %or.cond144.i.4, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ui = add i8 %i.uf, -97
  %or.cond145.i.4 = icmp ult i8 %i.ui, 6
  br i1 %or.cond145.i.4, label %bb.ga, label %.loopexit296.i.sink.split

bb.ga:                                            ; preds = %bb.fz
  %i.uj = add nsw i8 %i.uf, -87
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.4"

bb.gb:                                            ; preds = %bb.fy
  %i.uk = add nsw i8 %i.uf, -55
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.4"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.4": ; preds = %bb.gb, %bb.ga, %bb.fx
  %.sroa.056.0.i.4 = phi i8 [ %i.uk, %bb.gb ], [ %i.uj, %bb.ga ], [ %i.ug, %bb.fx ]
  %i.ul = zext nneg i8 %.sroa.056.0.i.4 to i32
  %i.um = getelementptr i8, ptr %i.me, i64 5
  %i.un = load i8, ptr %i.um, align 1, !noundef !6 ; 5 uses
  %i.uo = add i8 %i.un, -48                       ; 2 uses
  %or.cond143.i.5 = icmp ult i8 %i.uo, 10
  br i1 %or.cond143.i.5, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.5", label %bb.gc

bb.gc:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.4"
  %i.up = add i8 %i.un, -65
  %or.cond144.i.5 = icmp ult i8 %i.up, 6
  br i1 %or.cond144.i.5, label %bb.gf, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.uq = add i8 %i.un, -97
  %or.cond145.i.5 = icmp ult i8 %i.uq, 6
  br i1 %or.cond145.i.5, label %bb.ge, label %.loopexit296.i.sink.split

bb.ge:                                            ; preds = %bb.gd
  %i.ur = add nsw i8 %i.un, -87
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.5"

bb.gf:                                            ; preds = %bb.gc
  %i.us = add nsw i8 %i.un, -55
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.5"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.5": ; preds = %bb.gf, %bb.ge, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.4"
  %.sroa.056.0.i.5 = phi i8 [ %i.us, %bb.gf ], [ %i.ur, %bb.ge ], [ %i.uo, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.4" ]
  %i.ut = shl nuw nsw i32 %i.ud, 8
  %i.uu = shl nuw nsw i32 %i.ul, 4
  %i.uv = add nuw i32 %i.ut, %i.uu
  %i.uw = zext nneg i8 %.sroa.056.0.i.5 to i32
  %i.ux = add nuw nsw i32 %i.uv, %i.uw
  %i.uy = getelementptr i8, ptr %i.me, i64 6
  %i.uz = load i8, ptr %i.uy, align 1, !noundef !6 ; 5 uses
  %i.va = add i8 %i.uz, -48                       ; 2 uses
  %or.cond143.i.6 = icmp ult i8 %i.va, 10
  br i1 %or.cond143.i.6, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.6", label %bb.gg

bb.gg:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.5"
  %i.vb = add i8 %i.uz, -65
  %or.cond144.i.6 = icmp ult i8 %i.vb, 6
  br i1 %or.cond144.i.6, label %bb.gj, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.vc = add i8 %i.uz, -97
  %or.cond145.i.6 = icmp ult i8 %i.vc, 6
  br i1 %or.cond145.i.6, label %bb.gi, label %.loopexit296.i.sink.split

bb.gi:                                            ; preds = %bb.gh
  %i.vd = add nsw i8 %i.uz, -87
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.6"

bb.gj:                                            ; preds = %bb.gg
  %i.ve = add nsw i8 %i.uz, -55
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.6"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.6": ; preds = %bb.gj, %bb.gi, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.5"
  %.sroa.056.0.i.6 = phi i8 [ %i.ve, %bb.gj ], [ %i.vd, %bb.gi ], [ %i.va, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.5" ]
  %i.vf = zext nneg i8 %.sroa.056.0.i.6 to i32
  %i.vg = getelementptr i8, ptr %i.me, i64 7
  %i.vh = load i8, ptr %i.vg, align 1, !noundef !6 ; 5 uses
  %i.vi = add i8 %i.vh, -48                       ; 2 uses
  %or.cond143.i.7 = icmp ult i8 %i.vi, 10
  br i1 %or.cond143.i.7, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.7", label %bb.gk

bb.gk:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.6"
  %i.vj = add i8 %i.vh, -65
  %or.cond144.i.7 = icmp ult i8 %i.vj, 6
  br i1 %or.cond144.i.7, label %bb.gn, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.vk = add i8 %i.vh, -97
  %or.cond145.i.7 = icmp ult i8 %i.vk, 6
  br i1 %or.cond145.i.7, label %bb.gm, label %.loopexit296.i.sink.split

bb.gm:                                            ; preds = %bb.gl
  %i.vl = add nsw i8 %i.vh, -87
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.7"

bb.gn:                                            ; preds = %bb.gk
  %i.vm = add nsw i8 %i.vh, -55
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.7"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.7": ; preds = %bb.gn, %bb.gm, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.6"
  %.sroa.056.0.i.7 = phi i8 [ %i.vm, %bb.gn ], [ %i.vl, %bb.gm ], [ %i.vi, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.6" ]
  %i.vn = shl i32 %i.ux, 8
  %i.vo = shl nuw nsw i32 %i.vf, 4
  %i.vp = add i32 %i.vn, %i.vo
  %i.vq = zext nneg i8 %.sroa.056.0.i.7 to i32
  %i.vr = add nuw i32 %i.vp, %i.vq
  br label %bb.dq

bb.go:                                            ; preds = %.loopexit298.i
  %i.vs = load ptr, ptr %i.cm, align 8, !noundef !6 ; 2 uses
  %i.vt = load i8, ptr %i.vs, align 1, !noundef !6
  %i.vu = icmp eq i8 %i.vt, %.148.i
  br i1 %i.vu, label %bb.hx, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.vv = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner5CACHE17h435fe5f305cc104bE(ptr noundef nonnull %0, i64 noundef 1)
  br i1 %i.vv, label %.preheader.i, label %.loopexit296.i

.preheader.i:                                     ; preds = %bb.gp, %bb.gy
  %.sroa.05.1.i = phi i8 [ %.sroa.05.2.i, %bb.gy ], [ %.sroa.05.0.i, %bb.gp ] ; 3 uses
  %i.vw = load ptr, ptr %i.cm, align 8, !noundef !6 ; 5 uses
  %i.vx = load i8, ptr %i.vw, align 1, !noundef !6
  switch i8 %i.vx, label %.thread281.i [
    i8 -62, label %bb.gq
    i8 32, label %bb.gt
    i8 9, label %bb.gt
    i8 10, label %.thread277.i
    i8 13, label %.thread277.i
    i8 -30, label %bb.gr
  ]

bb.gq:                                            ; preds = %.preheader.i
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vw, i64 1
  %i.vz = load i8, ptr %i.vy, align 1, !noundef !6
  %i.wa = icmp eq i8 %i.vz, -123
  br i1 %i.wa, label %.thread277.i, label %.thread281.i

bb.gr:                                            ; preds = %.preheader.i
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vw, i64 1
  %i.wc = load i8, ptr %i.wb, align 1, !noundef !6
  %i.wd = icmp eq i8 %i.wc, -128
  br i1 %i.wd, label %bb.gs, label %.thread281.i

bb.gs:                                            ; preds = %bb.gr
  %i.we = getelementptr inbounds nuw i8, ptr %i.vw, i64 2
  %i.wf = load i8, ptr %i.we, align 1, !noundef !6
  %i.wg = and i8 %i.wf, -2
  %switch34 = icmp eq i8 %i.wg, -88
  br i1 %switch34, label %.thread277.i, label %.thread281.i

bb.gt:                                            ; preds = %.preheader.i, %.preheader.i
  %i.wh = trunc nuw i8 %.sroa.05.1.i to i1
  br i1 %i.wh, label %bb.gv, label %bb.gu

.thread277.i:                                     ; preds = %bb.gs, %bb.gq, %.preheader.i, %.preheader.i
  %i.wi = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner5CACHE17h435fe5f305cc104bE(ptr noundef nonnull %0, i64 noundef 2)
  br i1 %i.wi, label %bb.gz, label %.loopexit296.i

bb.gu:                                            ; preds = %bb.gt
  call fastcc void @_ZN14unsafe_libyaml7scanner4READ17he812c9f45329f0f7E(ptr noundef nonnull %0, ptr noundef %i.b)
  br label %bb.gy

bb.gv:                                            ; preds = %bb.gt
  %i.wj = load i64, ptr %i.cl, align 8, !noundef !6 ; 2 uses
  %i.wk = icmp eq i64 %i.wj, -1
  br i1 %i.wk, label %bb.gw, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i211.i", !prof !4

bb.gw:                                            ; preds = %bb.gv
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i211.i": ; preds = %bb.gv
  %i.wl = add nuw i64 %i.wj, 1
  store i64 %i.wl, ptr %i.cl, align 8
  %i.wm = load i64, ptr %i.cv, align 8, !noundef !6 ; 2 uses
  %i.wn = icmp eq i64 %i.wm, -1
  br i1 %i.wn, label %bb.gx, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit212.i, !prof !4

bb.gx:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i211.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit212.i: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i211.i"
  %i.wo = add nuw i64 %i.wm, 1
  store i64 %i.wo, ptr %i.cv, align 8
  %i.wp = load i64, ptr %i.dd, align 8, !noundef !6
  %i.wq = add i64 %i.wp, -1
  store i64 %i.wq, ptr %i.dd, align 8
  %i.wr = getelementptr i8, ptr %i.vw, i64 1
  store ptr %i.wr, ptr %i.cm, align 8
  br label %bb.gy

bb.gy:                                            ; preds = %bb.hb, %bb.ha, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit212.i, %bb.gu
  %.sroa.05.2.i = phi i8 [ 1, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit212.i ], [ 0, %bb.gu ], [ 1, %bb.hb ], [ 1, %bb.ha ]
  %i.ws = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner5CACHE17h435fe5f305cc104bE(ptr noundef nonnull %0, i64 noundef 1)
  br i1 %i.ws, label %.preheader.i, label %.loopexit296.i

bb.gz:                                            ; preds = %.thread277.i
  %i.wt = trunc nuw i8 %.sroa.05.1.i to i1
  br i1 %i.wt, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.wu = load ptr, ptr %i.b, align 8, !noundef !6 ; 3 uses
  store ptr %i.wu, ptr %i.ci, align 8
  %i.wv = load ptr, ptr %i.ck, align 8, !noundef !6
  %i.ww = ptrtoint ptr %i.wv to i64
  %i.wx = ptrtoint ptr %i.wu to i64
  %i.wy = sub i64 %i.ww, %i.wx
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.wu, i8 0, i64 %i.wy, i1 false)
  call fastcc void @_ZN14unsafe_libyaml7scanner9READ_LINE17h88f7fbc974d67c94E(ptr noundef nonnull %0, ptr noundef %i.d)
  br label %bb.gy

bb.hb:                                            ; preds = %bb.gz
  call fastcc void @_ZN14unsafe_libyaml7scanner9READ_LINE17h88f7fbc974d67c94E(ptr noundef nonnull %0, ptr noundef %i.c)
  br label %bb.gy

.thread281.i:                                     ; preds = %bb.gs, %bb.gr, %bb.gq, %.preheader.i
  %i.wz = trunc nuw i8 %.sroa.05.1.i to i1
  br i1 %i.wz, label %bb.hf, label %bb.hc

bb.hc:                                            ; preds = %.thread281.i
  %.val160.i = load ptr, ptr %i.b, align 8, !noundef !6 ; 6 uses
  %.val161.i = load ptr, ptr %i.ci, align 8, !noundef !6 ; 2 uses
  %i.xa = icmp eq ptr %.val160.i, %.val161.i
  br i1 %i.xa, label %._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit_crit_edge.i, label %.preheader.i.i

._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit_crit_edge.i: ; preds = %bb.hc
  %.pre365.i = ptrtoint ptr %.val160.i to i64
  br label %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit.i

.preheader.i.i:                                   ; preds = %bb.hc
  %i.xb = ptrtoint ptr %.val161.i to i64
  %i.xc = ptrtoint ptr %.val160.i to i64          ; 2 uses
  %i.xd = sub i64 %i.xb, %i.xc                    ; 4 uses
  %i.xe = load ptr, ptr %i.bp, align 8, !noundef !6 ; 2 uses
  %i.xf = load ptr, ptr %i.bn, align 8, !noundef !6 ; 3 uses
  %i.xg = ptrtoint ptr %i.xe to i64               ; 2 uses
  %i.xh = ptrtoint ptr %i.xf to i64
  %i.xi = sub i64 %i.xg, %i.xh
  %.not8.i.i = icmp sgt i64 %i.xi, %i.xd
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %.lr.ph.i.i

._crit_edge.i.loopexit.i:                         ; preds = %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i.i
  store ptr %i.ye, ptr %i.bp, align 8
end_hunk_4
begin_hunk_5_@_ZN14unsafe_libyaml7scanner5CACHE17h435fe5f305cc104bE:bb.a

bb.i:                                             ; preds = %bb.h
  %i.t = icmp slt i64 %.pre26.i.i, 3
  br i1 %i.t, label %bb.j, label %split.thread.i.i

split.i.i:                                        ; preds = %bb.h
  %i.u = icmp sgt i64 %.pre26.i.i, 1
  br i1 %i.u, label %split.thread.i.i, label %.thread20.i.i

bb.j:                                             ; preds = %bb.i
  %i.v = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml6reader29yaml_parser_update_raw_buffer17h93b31bad0759d494E(ptr noundef nonnull %0)
  br i1 %i.v, label %bb.h, label %_ZN14unsafe_libyaml6reader30yaml_parser_determine_encoding17h2f180ceaf3ea3ac8E.exit.i

split.thread.i.i:                                 ; preds = %bb.i, %split.i.i
  %i.w = load i16, ptr %.pre22.i.i, align 1
  %i.x = icmp ne i16 %i.w, -257
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.m

bb.k:                                             ; preds = %split.thread.i.i
  store i32 2, ptr %i.m, align 8
  %i.aa = getelementptr i8, ptr %.pre22.i.i, i64 2
  store ptr %i.aa, ptr %i.q, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !6 ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, -3
  br i1 %i.ad, label %bb.l, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i.i", !prof !4

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i.i": ; preds = %bb.k
  %i.ae = add nuw i64 %i.ac, 2
  store i64 %i.ae, ptr %i.ab, align 8
  br label %_ZN14unsafe_libyaml6reader30yaml_parser_determine_encoding17h2f180ceaf3ea3ac8E.exit.i

bb.m:                                             ; preds = %split.thread.i.i
  %i.af = load i16, ptr %.pre22.i.i, align 1
  %i.ag = icmp ne i16 %i.af, -2
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i64 %.pre26.i.i, 2
  br i1 %.not.i.i, label %.thread20.i.i, label %bb.q

bb.o:                                             ; preds = %bb.m
  store i32 3, ptr %i.m, align 8
  %i.aj = getelementptr i8, ptr %.pre22.i.i, i64 2
  store ptr %i.aj, ptr %i.q, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !noundef !6 ; 2 uses
  %i.am = icmp ugt i64 %i.al, -3
  br i1 %i.am, label %bb.p, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit18.i.i", !prof !4

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit18.i.i": ; preds = %bb.o
  %i.an = add nuw i64 %i.al, 2
  store i64 %i.an, ptr %i.ak, align 8
  br label %_ZN14unsafe_libyaml6reader30yaml_parser_determine_encoding17h2f180ceaf3ea3ac8E.exit.i

bb.q:                                             ; preds = %bb.n
  %i.ao = load i16, ptr %.pre22.i.i, align 1
  %i.ap = xor i16 %i.ao, -17425
  %i.aq = getelementptr i8, ptr %.pre22.i.i, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i16
  %i.at = xor i16 %i.as, 191
  %i.au = or i16 %i.ap, %i.at
  %i.av = icmp ne i16 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.r, label %.thread20.i.i

.thread20.i.i:                                    ; preds = %bb.q, %bb.n, %split.i.i
  store i32 1, ptr %i.m, align 8
  br label %_ZN14unsafe_libyaml6reader30yaml_parser_determine_encoding17h2f180ceaf3ea3ac8E.exit.i

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.m, align 8
  %i.ay = getelementptr i8, ptr %.pre22.i.i, i64 3
  store ptr %i.ay, ptr %i.q, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !noundef !6 ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %bb.s, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit19.i.i", !prof !4

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit19.i.i": ; preds = %bb.r
  %i.bc = add nuw i64 %i.ba, 3
  store i64 %i.bc, ptr %i.az, align 8
  br label %_ZN14unsafe_libyaml6reader30yaml_parser_determine_encoding17h2f180ceaf3ea3ac8E.exit.i

_ZN14unsafe_libyaml6reader30yaml_parser_determine_encoding17h2f180ceaf3ea3ac8E.exit.i: ; preds = %bb.j, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit19.i.i", %.thread20.i.i, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit18.i.i", %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i.i"
  %i.bd = phi ptr [ @15, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit18.i.i" ], [ @15, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i.i" ], [ @15, %.thread20.i.i ], [ @15, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit19.i.i" ], [ @14, %bb.j ]
  %i.be = load i8, ptr %i.bd, align 1, !range !10, !noundef !6
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit, label %bb.t

bb.t:                                             ; preds = %_ZN14unsafe_libyaml6reader30yaml_parser_determine_encoding17h2f180ceaf3ea3ac8E.exit.i, %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !noundef !6 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !noundef !6 ; 5 uses
  %i.bk = icmp ult ptr %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 22 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 3 uses
  %i.bn = icmp ult ptr %i.bj, %i.bm
  %or.cond286.i = select i1 %i.bk, i1 %i.bn, i1 false
  br i1 %or.cond286.i, label %bb.u, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.t
  %i.bo = icmp eq ptr %i.bj, %i.bm
  br i1 %i.bo, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bj to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bh, ptr nonnull align 1 %i.bj, i64 %i.br, i1 false)
  %i.bs = load ptr, ptr %i.bg, align 8, !noundef !6 ; 2 uses
  store ptr %i.bs, ptr %i.bi, align 8
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.br
  br label %.sink.split

bb.v:                                             ; preds = %._crit_edge.i
  store ptr %i.bh, ptr %i.bi, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.u, %bb.v
  %.sink = phi ptr [ %i.bh, %bb.v ], [ %i.bt, %bb.u ]
  store ptr %.sink, ptr %i.bl, align 8
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %._crit_edge.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 13 uses
  br label %bb.x

bb.x:                                             ; preds = %.critedge.i, %bb.w
  %.sroa.024.0.i = phi i1 [ true, %bb.w ], [ false, %.critedge.i ]
  %i.bx = load i64, ptr %i.a, align 8, !noundef !6
  %i.by = icmp ult i64 %i.bx, %1
  br i1 %i.by, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = load i64, ptr %i.bw, align 8, !noundef !6 ; 2 uses
  %i.ca = icmp ugt i64 %i.bz, 9223372036854775806
  br i1 %i.ca, label %bb.aa, label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit

bb.z:                                             ; preds = %bb.x
  br i1 %.sroa.024.0.i, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i32 2, ptr %0, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @71, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bz, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.cd, align 8
  br label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit

bb.ab:                                            ; preds = %bb.ac, %bb.z
  %i.ce = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml6reader29yaml_parser_update_raw_buffer17h93b31bad0759d494E(ptr noundef nonnull %0)
  br i1 %i.ce, label %._crit_edge221.i, label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit

._crit_edge221.i:                                 ; preds = %bb.ab
  %.pre222.i = load ptr, ptr %i.bu, align 8
  %.pre223.i = load ptr, ptr %i.bv, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.cf = load ptr, ptr %i.bu, align 8, !noundef !6 ; 2 uses
  %i.cg = load ptr, ptr %i.bv, align 8, !noundef !6 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.ab, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge221.i
  %i.ci = phi ptr [ %.pre223.i, %._crit_edge221.i ], [ %i.cg, %bb.ac ] ; 2 uses
  %i.cj = phi ptr [ %.pre222.i, %._crit_edge221.i ], [ %i.cf, %bb.ac ] ; 2 uses
  %.not126199.i = icmp eq ptr %i.cj, %i.ci
  br i1 %.not126199.i, label %.critedge.i, label %.lr.ph200.i

.lr.ph200.i:                                      ; preds = %bb.ad, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit152.i"
  %i.ck = phi ptr [ %i.jx, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit152.i" ], [ %i.ci, %bb.ad ]
  %i.cl = phi ptr [ %i.jw, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit152.i" ], [ %i.cj, %bb.ad ] ; 8 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 5 uses
  %i.cp = load i32, ptr %i.m, align 8, !range !9, !noundef !6 ; 2 uses
  switch i32 %i.cp, label %default.unreachable [
    i32 1, label %bb.ae
    i32 2, label %bb.af
    i32 3, label %bb.af
    i32 0, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.thread.i"
  ]

.critedge.i:                                      ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit152.i", %bb.aw, %bb.as, %bb.ak, %bb.ad
  %i.cq = load i8, ptr %i.e, align 8, !range !10, !noundef !6
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.bj, label %bb.x

default.unreachable:                              ; preds = %.lr.ph200.i
  unreachable

bb.ae:                                            ; preds = %.lr.ph200.i
  %i.cs = load i8, ptr %i.cl, align 1, !noundef !6 ; 7 uses
  %i.ct = icmp sgt i8 %i.cs, -1                   ; 2 uses
  br i1 %i.ct, label %.thread174.i, label %bb.ag

bb.af:                                            ; preds = %.lr.ph200.i, %.lr.ph200.i
  %i.cu = icmp ult i64 %i.co, 2
  br i1 %i.cu, label %bb.as, label %bb.ar

bb.ag:                                            ; preds = %bb.ae
  %i.cv = and i8 %i.cs, -32
  %i.cw = icmp eq i8 %i.cv, -64                   ; 5 uses
  br i1 %i.cw, label %.thread.i, label %bb.ai

bb.ah:                                            ; preds = %bb.ai
  %i.cx = and i8 %i.cs, -8
  %i.cy = icmp eq i8 %i.cx, -16
  br i1 %i.cy, label %.thread158.i, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.cz = and i8 %i.cs, -16
  %i.da = icmp eq i8 %i.cz, -32
  br i1 %i.da, label %.thread.thread.i, label %bb.ah

bb.aj:                                            ; preds = %bb.ah
  %i.db = load i64, ptr %i.bw, align 8, !noundef !6
  %i.dc = zext i8 %i.cs to i32
  store i32 2, ptr %0, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @72, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.db, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.dc, ptr %i.df, align 8
  br label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit

.thread.i:                                        ; preds = %bb.ag
  %i.dg = icmp ult i64 %i.co, 2
  br i1 %i.dg, label %bb.ak, label %.lr.ph.preheader.i

.thread.thread.i:                                 ; preds = %bb.ai
  %i.dh = icmp ult i64 %i.co, 3
  br i1 %i.dh, label %bb.ak, label %.lr.ph.preheader.i

.thread158.i:                                     ; preds = %bb.ah
  %i.di = icmp ult i64 %i.co, 4
  br i1 %i.di, label %bb.ak, label %.lr.ph.preheader.i

bb.ak:                                            ; preds = %.thread158.i, %.thread.thread.i, %.thread.i
  %i.dj = load i8, ptr %i.e, align 8, !range !10, !noundef !6
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.aq, label %.critedge.i

.thread174.i:                                     ; preds = %bb.ae
  %i.dl = zext nneg i8 %i.cs to i32
  br label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.i"

.lr.ph.preheader.i:                               ; preds = %.thread158.i, %.thread.thread.i, %.thread.i
  %.sink85 = phi i8 [ 15, %.thread.thread.i ], [ 31, %.thread.i ], [ 7, %.thread158.i ]
  %.ph.i = phi i1 [ false, %.thread.thread.i ], [ false, %.thread.i ], [ true, %.thread158.i ] ; 3 uses
  %.ph259.i = phi i1 [ true, %.thread.thread.i ], [ false, %.thread.i ], [ false, %.thread158.i ] ; 4 uses
  %.ph261.i = phi i64 [ 3, %.thread.thread.i ], [ 2, %.thread.i ], [ 4, %.thread158.i ] ; 3 uses
  %i.dm = and i8 %i.cs, %.sink85
  %i.dn = zext nneg i8 %i.dm to i32
  %i.do = getelementptr i8, ptr %i.cl, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !noundef !6 ; 3 uses
  %i.dq = icmp slt i8 %i.dp, -64
  br i1 %i.dq, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i", label %bb.ao

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.i": ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.1", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.2", %.thread174.i
  %i.dr = phi i1 [ false, %.thread174.i ], [ %i.cw, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.2" ], [ %i.cw, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.1" ], [ %i.cw, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i" ]
  %i.ds = phi i1 [ false, %.thread174.i ], [ %.ph259.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.2" ], [ %.ph259.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.1" ], [ %.ph259.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i" ]
  %i.dt = phi i1 [ false, %.thread174.i ], [ %.ph.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.2" ], [ %.ph.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.1" ], [ %.ph.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i" ]
  %.sroa.095.0157160164264.i = phi i64 [ 1, %.thread174.i ], [ %.ph261.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.2" ], [ %.ph261.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.1" ], [ %.ph261.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i" ]
  %.sroa.027.1.lcssa.i = phi i32 [ %i.dl, %.thread174.i ], [ %i.ek, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i" ], [ %i.er, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.1" ], [ %i.ey, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.2" ] ; 7 uses
  %i.du = icmp samesign ugt i32 %.sroa.027.1.lcssa.i, 127
  %or.cond.i = select i1 %i.dr, i1 %i.du, i1 false
  %or.cond132.i = select i1 %i.ct, i1 true, i1 %or.cond.i
  %i.dv = icmp samesign ugt i32 %.sroa.027.1.lcssa.i, 2047
  %or.cond3.i = select i1 %i.ds, i1 %i.dv, i1 false
  %or.cond133.i = select i1 %or.cond132.i, i1 true, i1 %or.cond3.i
  %i.dw = icmp samesign ugt i32 %.sroa.027.1.lcssa.i, 65535
  %or.cond5.i = select i1 %i.dt, i1 %i.dw, i1 false
  %or.cond134.i = select i1 %or.cond133.i, i1 true, i1 %or.cond5.i
  br i1 %or.cond134.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.i"
  %i.dx = and i32 %.sroa.027.1.lcssa.i, -2048
  %or.cond7.i = icmp eq i32 %i.dx, 55296
  %i.dy = icmp samesign ugt i32 %.sroa.027.1.lcssa.i, 1114111
  %or.cond9.i = or i1 %i.dy, %or.cond7.i
  br i1 %or.cond9.i, label %bb.an, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i"

bb.am:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.i"
  %i.dz = load i64, ptr %i.bw, align 8, !noundef !6
  store i32 2, ptr %0, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @74, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dz, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.ec, align 8
  br label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit

bb.an:                                            ; preds = %bb.al
  %i.ed = load i64, ptr %i.bw, align 8, !noundef !6
  store i32 2, ptr %0, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @73, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ed, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.027.1.lcssa.i, ptr %i.eg, align 8
  br label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i": ; preds = %.lr.ph.preheader.i
  %i.eh = shl nuw nsw i32 %i.dn, 6
  %i.ei = and i8 %i.dp, 63
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = or disjoint i32 %i.eh, %i.ej            ; 2 uses
  br i1 %i.cw, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.i", label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i"
  %i.el = getelementptr i8, ptr %i.cl, i64 2
  %i.em = load i8, ptr %i.el, align 1, !noundef !6 ; 3 uses
  %i.en = icmp slt i8 %i.em, -64
  br i1 %i.en, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.1", label %bb.ao

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.1": ; preds = %.lr.ph.i.1
  %i.eo = shl nuw nsw i32 %i.ek, 6
  %i.ep = and i8 %i.em, 63
  %i.eq = zext nneg i8 %i.ep to i32
  %i.er = or disjoint i32 %i.eo, %i.eq            ; 2 uses
  br i1 %.ph259.i, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.i", label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.1"
  %i.es = getelementptr i8, ptr %i.cl, i64 3
  %i.et = load i8, ptr %i.es, align 1, !noundef !6 ; 3 uses
  %i.eu = icmp slt i8 %i.et, -64
  br i1 %i.eu, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.2", label %bb.ao

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i.2": ; preds = %.lr.ph.i.2
  %i.ev = shl nuw nsw i32 %i.er, 6
  %i.ew = and i8 %i.et, 63
  %i.ex = zext nneg i8 %i.ew to i32
  %i.ey = or disjoint i32 %i.ev, %i.ex
  br label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.i"

bb.ao:                                            ; preds = %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.preheader.i
  %.sroa.091.0197.i.lcssa = phi i64 [ 1, %.lr.ph.preheader.i ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ]
  %.lcssa = phi i8 [ %i.dp, %.lr.ph.preheader.i ], [ %i.em, %.lr.ph.i.1 ], [ %i.et, %.lr.ph.i.2 ]
  %i.ez = load i64, ptr %i.bw, align 8, !noundef !6 ; 2 uses
  %i.fa = add i64 %i.ez, %.sroa.091.0197.i.lcssa  ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %i.ez
  br i1 %i.fb, label %bb.ap, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit138.i", !prof !4

bb.ap:                                            ; preds = %bb.ao
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit138.i": ; preds = %bb.ao
  %i.fc = zext i8 %.lcssa to i32
  store i32 2, ptr %0, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @75, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fa, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.fc, ptr %i.ff, align 8
  br label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit

bb.aq:                                            ; preds = %bb.ak
  %i.fg = load i64, ptr %i.bw, align 8, !noundef !6
  store i32 2, ptr %0, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @76, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fg, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.fj, align 8
  br label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit

bb.ar:                                            ; preds = %bb.af
  %i.fk = icmp ne i32 %i.cp, 2                    ; 2 uses
  %not..i = xor i1 %i.fk, true
  %.sroa.098.0.i = zext i1 %not..i to i64
  %.128.i = zext i1 %i.fk to i64
  %i.fl = getelementptr i8, ptr %i.cl, i64 %.128.i ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !noundef !6
  %i.fn = zext i8 %i.fm to i32
  %i.fo = getelementptr i8, ptr %i.cl, i64 %.sroa.098.0.i ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !noundef !6
  %i.fq = zext i8 %i.fp to i32
  %i.fr = shl nuw nsw i32 %i.fq, 8                ; 2 uses
  %i.fs = or disjoint i32 %i.fr, %i.fn            ; 3 uses
  %i.ft = trunc nuw i32 %i.fr to i16
  %trunc.i = and i16 %i.ft, -1024
  switch i16 %trunc.i, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" [
    i16 -9216, label %bb.at
    i16 -10240, label %bb.au
  ]

bb.as:                                            ; preds = %bb.af
  %i.fu = load i8, ptr %i.e, align 8, !range !10, !noundef !6
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.ba, label %.critedge.i

bb.at:                                            ; preds = %bb.ar
  %i.fw = load i64, ptr %i.bw, align 8, !noundef !6
  store i32 2, ptr %0, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @77, ptr %i.fx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fw, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.fs, ptr %i.fz, align 8
  br label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit

bb.au:                                            ; preds = %bb.ar
  %i.ga = icmp ult i64 %i.co, 4
  br i1 %i.ga, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gb = getelementptr i8, ptr %i.fl, i64 2
  %i.gc = load i8, ptr %i.gb, align 1, !noundef !6
  %i.gd = zext i8 %i.gc to i32
  %i.ge = getelementptr i8, ptr %i.fo, i64 2
  %i.gf = load i8, ptr %i.ge, align 1, !noundef !6
  %i.gg = zext i8 %i.gf to i32                    ; 2 uses
  %i.gh = shl nuw nsw i32 %i.gg, 8
  %i.gi = or disjoint i32 %i.gh, %i.gd            ; 2 uses
  %i.gj = and i32 %i.gg, 252
  %i.gk = icmp eq i32 %i.gj, 220
  br i1 %i.gk, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit139.i", label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.gl = load i8, ptr %i.e, align 8, !range !10, !noundef !6
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.az, label %.critedge.i

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit139.i": ; preds = %bb.av
  %i.gn = shl nuw nsw i32 %i.fs, 10
  %i.go = and i32 %i.gn, 1047552
  %i.gp = add nuw nsw i32 %i.go, 65536
  %i.gq = and i32 %i.gi, 1023
  %i.gr = or disjoint i32 %i.gq, %i.gp
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i"

bb.ax:                                            ; preds = %bb.av
  %i.gs = load i64, ptr %i.bw, align 8, !noundef !6 ; 2 uses
  %i.gt = icmp ugt i64 %i.gs, -3
  br i1 %i.gt, label %bb.ay, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit141.i", !prof !4

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit141.i": ; preds = %bb.ax
  %i.gu = add nuw i64 %i.gs, 2
  store i32 2, ptr %0, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @78, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gu, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.gi, ptr %i.gx, align 8
  br label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit

bb.az:                                            ; preds = %bb.aw
  %i.gy = load i64, ptr %i.bw, align 8, !noundef !6
  store i32 2, ptr %0, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @79, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gy, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.hb, align 8
  br label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit

bb.ba:                                            ; preds = %bb.as
  %i.hc = load i64, ptr %i.bw, align 8, !noundef !6
  store i32 2, ptr %0, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @80, ptr %i.hd, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hc, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.hf, align 8
  br label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i": ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit139.i", %bb.ar, %bb.al
  %.sroa.082.0.i = phi i64 [ 2, %bb.ar ], [ %.sroa.095.0157160164264.i, %bb.al ], [ 4, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit139.i" ] ; 4 uses
  %.sroa.027.0.i = phi i32 [ %i.fs, %bb.ar ], [ %.sroa.027.1.lcssa.i, %bb.al ], [ %i.gr, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit139.i" ] ; 5 uses
  switch i32 %.sroa.027.0.i, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.thread.i" [
    i32 13, label %bb.bb
    i32 10, label %bb.bb
    i32 9, label %bb.bb
  ]

bb.bb:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.thread.i", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i"
  %.sroa.027.0170.i = phi i32 [ %.sroa.027.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ %.sroa.027.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ %.sroa.027.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ %.sroa.027.0169.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.thread.i" ] ; 13 uses
  %.sroa.082.0167.i = phi i64 [ %.sroa.082.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ %.sroa.082.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ %.sroa.082.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ %.sroa.082.0168.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.thread.i" ] ; 2 uses
  %i.hg = getelementptr i8, ptr %i.cl, i64 %.sroa.082.0167.i
  store ptr %i.hg, ptr %i.bu, align 8
  %i.hh = load i64, ptr %i.bw, align 8, !noundef !6 ; 2 uses
  %i.hi = add i64 %i.hh, %.sroa.082.0167.i        ; 2 uses
  %i.hj = icmp ult i64 %i.hi, %i.hh
  br i1 %i.hj, label %bb.bc, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit142.i", !prof !4

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit142.i": ; preds = %bb.bb
  store i64 %i.hi, ptr %i.bw, align 8
  %i.hk = icmp samesign ult i32 %.sroa.027.0170.i, 128
  br i1 %i.hk, label %bb.bf, label %bb.be

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.thread.i": ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i", %.lr.ph200.i
  %.sroa.027.0169.i = phi i32 [ %.sroa.027.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ 0, %.lr.ph200.i ] ; 7 uses
  %.sroa.082.0168.i = phi i64 [ %.sroa.082.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ 0, %.lr.ph200.i ]
  %i.hl = add nsw i32 %.sroa.027.0169.i, -32
  %or.cond15.i = icmp ult i32 %i.hl, 95
  %i.hm = icmp eq i32 %.sroa.027.0169.i, 133
  %or.cond17.i = or i1 %i.hm, %or.cond15.i
  %i.hn = add nsw i32 %.sroa.027.0169.i, -160
  %or.cond19.i = icmp ult i32 %i.hn, 55136
  %or.cond135.i = or i1 %or.cond19.i, %or.cond17.i
  %i.ho = add nsw i32 %.sroa.027.0169.i, -57344
  %or.cond21.i = icmp ult i32 %i.ho, 8190
  %or.cond136.i = or i1 %or.cond21.i, %or.cond135.i
  %i.hp = icmp samesign ugt i32 %.sroa.027.0169.i, 65535
  %or.cond137.i = or i1 %i.hp, %or.cond136.i
  br i1 %or.cond137.i, label %bb.bb, label %bb.bd

bb.bd:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.thread.i"
  %i.hq = load i64, ptr %i.bw, align 8, !noundef !6
  store i32 2, ptr %0, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @81, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hq, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.027.0169.i, ptr %i.ht, align 8
  br label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit

bb.be:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit142.i"
  %i.hu = icmp samesign ult i32 %.sroa.027.0170.i, 2048
  br i1 %i.hu, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit143.i", label %bb.bg

bb.bf:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit142.i"
  %i.hv = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 1
  store ptr %i.hw, ptr %i.bl, align 8
  %i.hx = trunc nuw nsw i32 %.sroa.027.0170.i to i8
  store i8 %i.hx, ptr %i.hv, align 1
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.hy = icmp samesign ult i32 %.sroa.027.0170.i, 65536
  %i.hz = load ptr, ptr %i.bl, align 8, !noundef !6 ; 3 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 1
  store ptr %i.ia, ptr %i.bl, align 8
  br i1 %i.hy, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit149.i", label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit145.i"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit143.i": ; preds = %bb.be
  %i.ib = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 1
  store ptr %i.ic, ptr %i.bl, align 8
  %i.id = lshr i32 %.sroa.027.0170.i, 6
  %i.ie = trunc nuw nsw i32 %i.id to i8
  %i.if = or disjoint i8 %i.ie, -64
  store i8 %i.if, ptr %i.ib, align 1
  %i.ig = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 1
  store ptr %i.ih, ptr %i.bl, align 8
  %i.ii = trunc i32 %.sroa.027.0170.i to i8
  %i.ij = and i8 %i.ii, 63
  %i.ik = or disjoint i8 %i.ij, -128
  store i8 %i.ik, ptr %i.ig, align 1
  br label %bb.bh

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit145.i": ; preds = %bb.bg
  %i.il = lshr i32 %.sroa.027.0170.i, 18
  %i.im = trunc nuw nsw i32 %i.il to i8
  %i.in = add nuw nsw i8 %i.im, -16
  store i8 %i.in, ptr %i.hz, align 1
  %i.io = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.ip = getelementptr i8, ptr %i.io, i64 1
  store ptr %i.ip, ptr %i.bl, align 8
  %i.iq = lshr i32 %.sroa.027.0170.i, 12
  %i.ir = trunc i32 %i.iq to i8
  %i.is = and i8 %i.ir, 63
  %i.it = or disjoint i8 %i.is, -128
  store i8 %i.it, ptr %i.io, align 1
  %i.iu = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 1
  store ptr %i.iv, ptr %i.bl, align 8
  %i.iw = lshr i32 %.sroa.027.0170.i, 6
  %i.ix = trunc i32 %i.iw to i8
  %i.iy = and i8 %i.ix, 63
  %i.iz = or disjoint i8 %i.iy, -128
  store i8 %i.iz, ptr %i.iu, align 1
  %i.ja = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 1
  store ptr %i.jb, ptr %i.bl, align 8
  %i.jc = trunc i32 %.sroa.027.0170.i to i8
  %i.jd = and i8 %i.jc, 63
  %i.je = or disjoint i8 %i.jd, -128
  store i8 %i.je, ptr %i.ja, align 1
  br label %bb.bh

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit149.i": ; preds = %bb.bg
  %i.jf = lshr i32 %.sroa.027.0170.i, 12
  %i.jg = trunc nuw nsw i32 %i.jf to i8
  %i.jh = or disjoint i8 %i.jg, -32
  store i8 %i.jh, ptr %i.hz, align 1
  %i.ji = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 1
  store ptr %i.jj, ptr %i.bl, align 8
  %i.jk = lshr i32 %.sroa.027.0170.i, 6
  %i.jl = trunc i32 %i.jk to i8
  %i.jm = and i8 %i.jl, 63
  %i.jn = or disjoint i8 %i.jm, -128
  store i8 %i.jn, ptr %i.ji, align 1
  %i.jo = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 1
  store ptr %i.jp, ptr %i.bl, align 8
  %i.jq = trunc i32 %.sroa.027.0170.i to i8
  %i.jr = and i8 %i.jq, 63
  %i.js = or disjoint i8 %i.jr, -128
  store i8 %i.js, ptr %i.jo, align 1
  br label %bb.bh

bb.bh:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit149.i", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit145.i", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit143.i", %bb.bf
  %i.jt = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, -1
  br i1 %i.ju, label %bb.bi, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit152.i", !prof !4

bb.bi:                                            ; preds = %bb.bh
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit152.i": ; preds = %bb.bh
  %i.jv = add nuw i64 %i.jt, 1
  store i64 %i.jv, ptr %i.a, align 8
  %i.jw = load ptr, ptr %i.bu, align 8, !noundef !6 ; 2 uses
  %i.jx = load ptr, ptr %i.bv, align 8, !noundef !6 ; 2 uses
  %.not126.i = icmp eq ptr %i.jw, %i.jx
  br i1 %.not126.i, label %.critedge.i, label %.lr.ph200.i

bb.bj:                                            ; preds = %.critedge.i
  %i.jy = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 1
  store ptr %i.jz, ptr %i.bl, align 8
  store i8 0, ptr %i.jy, align 1
  %i.ka = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.kb = icmp eq i64 %i.ka, -1
  br i1 %i.kb, label %bb.bk, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit153.i", !prof !4

bb.bk:                                            ; preds = %bb.bj
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit153.i": ; preds = %bb.bj
  %i.kc = add nuw i64 %i.ka, 1
  store i64 %i.kc, ptr %i.a, align 8
  br label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit

_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit: ; preds = %bb.ab, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit153.i", %bb.bd, %bb.ba, %bb.az, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit141.i", %bb.at, %bb.aq, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit138.i", %bb.an, %bb.am, %bb.aj, %bb.aa, %bb.y, %_ZN14unsafe_libyaml6reader30yaml_parser_determine_encoding17h2f180ceaf3ea3ac8E.exit.i, %bb.e, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ false, %_ZN14unsafe_libyaml6reader30yaml_parser_determine_encoding17h2f180ceaf3ea3ac8E.exit.i ], [ false, %bb.aa ], [ true, %bb.e ], [ false, %bb.bd ], [ true, %bb.y ], [ false, %bb.aj ], [ true, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit153.i" ], [ false, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit141.i" ], [ false, %bb.az ], [ false, %bb.at ], [ false, %bb.ba ], [ false, %bb.am ], [ false, %bb.an ], [ false, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit138.i" ], [ false, %bb.aq ], [ false, %bb.ab ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14unsafe_libyaml7scanner9READ_LINE17h88f7fbc974d67c94E(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 17 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %.not = icmp ult ptr %i.c, %i.e
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !noundef !6   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = add i64 %i.i, 4611686018427387904
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i", !prof !4

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i": ; preds = %bb.b
  %i.l = shl nsw i64 %i.i, 1
  %i.m = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.f, i64 noundef %i.l) ; 4 uses
  %i.n = load ptr, ptr %i.d, align 8, !noundef !6
  %i.o = load ptr, ptr %1, align 8, !noundef !6
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = getelementptr i8, ptr %i.m, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.r, i1 false)
  %i.t = load ptr, ptr %i.a, align 8, !noundef !6
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.q
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v     ; 2 uses
  store ptr %i.w, ptr %i.a, align 8
  %i.x = add i64 %i.r, 4611686018427387904
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit, !prof !4

bb.d:                                             ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i"
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable
end_hunk_5

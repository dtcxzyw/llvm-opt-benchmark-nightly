Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/unsafe_libyaml-c83d027d29d4f62c.unsafe_libyaml.d8757c7f39422774-cgu.0?download=true
inline.NumInlined: 729
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN14unsafe_libyaml7scanner5CACHE17h435fe5f305cc104bE:bb.a

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
  %i.cp = load i32, ptr %i.m, align 8, !range !9, !noundef !6 ; 3 uses
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
  %.sink87 = phi i8 [ 15, %.thread.thread.i ], [ 31, %.thread.i ], [ 7, %.thread158.i ]
  %.ph.i = phi i1 [ false, %.thread.thread.i ], [ false, %.thread.i ], [ true, %.thread158.i ] ; 3 uses
  %.ph259.i = phi i1 [ true, %.thread.thread.i ], [ false, %.thread.i ], [ false, %.thread158.i ] ; 4 uses
  %.ph261.i = phi i64 [ 3, %.thread.thread.i ], [ 2, %.thread.i ], [ 4, %.thread158.i ] ; 3 uses
  %i.dm = and i8 %i.cs, %.sink87
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
  %i.du = icmp ugt i32 %.sroa.027.1.lcssa.i, 127
  %or.cond.i = select i1 %i.dr, i1 %i.du, i1 false
  %or.cond132.i = select i1 %i.ct, i1 true, i1 %or.cond.i
  %i.dv = icmp ugt i32 %.sroa.027.1.lcssa.i, 2047
  %or.cond3.i = select i1 %i.ds, i1 %i.dv, i1 false
  %or.cond133.i = select i1 %or.cond132.i, i1 true, i1 %or.cond3.i
  %i.dw = icmp ugt i32 %.sroa.027.1.lcssa.i, 65535
  %or.cond5.i = select i1 %i.dt, i1 %i.dw, i1 false
  %or.cond134.i = select i1 %or.cond133.i, i1 true, i1 %or.cond5.i
  br i1 %or.cond134.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit._crit_edge.i"
  %i.dx = and i32 %.sroa.027.1.lcssa.i, -2048
  %or.cond7.i = icmp eq i32 %i.dx, 55296
  %i.dy = icmp ugt i32 %.sroa.027.1.lcssa.i, 1114111
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
  %.sroa.082.0167.i.a = phi i32 [ %.sroa.027.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ %.sroa.027.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ %.sroa.027.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ %.sroa.027.0169.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.thread.i" ] ; 13 uses
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
  %i.hk = icmp samesign ult i32 %.sroa.082.0167.i.a, 128
  br i1 %i.hk, label %bb.bf, label %bb.be

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.thread.i": ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i", %.lr.ph200.i
  %.sroa.027.0169.i = phi i32 [ %.sroa.027.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ %i.cp, %.lr.ph200.i ] ; 7 uses
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
  %i.hu = icmp samesign ult i32 %.sroa.082.0167.i.a, 2048
  br i1 %i.hu, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit143.i", label %bb.bg

bb.bf:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit142.i"
  %i.hv = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 1
  store ptr %i.hw, ptr %i.bl, align 8
  %i.hx = trunc nuw nsw i32 %.sroa.082.0167.i.a to i8
  store i8 %i.hx, ptr %i.hv, align 1
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.hy = icmp samesign ult i32 %.sroa.082.0167.i.a, 65536
  %i.hz = load ptr, ptr %i.bl, align 8, !noundef !6 ; 3 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 1
  store ptr %i.ia, ptr %i.bl, align 8
  br i1 %i.hy, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit149.i", label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit145.i"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit143.i": ; preds = %bb.be
  %i.ib = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 1
  store ptr %i.ic, ptr %i.bl, align 8
  %i.id = lshr i32 %.sroa.082.0167.i.a, 6
  %i.ie = trunc nuw nsw i32 %i.id to i8
  %i.if = or disjoint i8 %i.ie, -64
  store i8 %i.if, ptr %i.ib, align 1
  %i.ig = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 1
  store ptr %i.ih, ptr %i.bl, align 8
  %i.ii = trunc i32 %.sroa.082.0167.i.a to i8
  %i.ij = and i8 %i.ii, 63
  %i.ik = or disjoint i8 %i.ij, -128
  store i8 %i.ik, ptr %i.ig, align 1
  br label %bb.bh

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit145.i": ; preds = %bb.bg
  %i.il = lshr i32 %.sroa.082.0167.i.a, 18
  %i.im = trunc nuw nsw i32 %i.il to i8
  %i.in = add nuw nsw i8 %i.im, -16
  store i8 %i.in, ptr %i.hz, align 1
  %i.io = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.ip = getelementptr i8, ptr %i.io, i64 1
  store ptr %i.ip, ptr %i.bl, align 8
  %i.iq = lshr i32 %.sroa.082.0167.i.a, 12
  %i.ir = trunc i32 %i.iq to i8
  %i.is = and i8 %i.ir, 63
  %i.it = or disjoint i8 %i.is, -128
  store i8 %i.it, ptr %i.io, align 1
  %i.iu = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 1
  store ptr %i.iv, ptr %i.bl, align 8
  %i.iw = lshr i32 %.sroa.082.0167.i.a, 6
  %i.ix = trunc i32 %i.iw to i8
  %i.iy = and i8 %i.ix, 63
  %i.iz = or disjoint i8 %i.iy, -128
  store i8 %i.iz, ptr %i.iu, align 1
  %i.ja = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 1
  store ptr %i.jb, ptr %i.bl, align 8
  %i.jc = trunc i32 %.sroa.082.0167.i.a to i8
  %i.jd = and i8 %i.jc, 63
  %i.je = or disjoint i8 %i.jd, -128
  store i8 %i.je, ptr %i.ja, align 1
  br label %bb.bh

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit149.i": ; preds = %bb.bg
  %i.jf = lshr i32 %.sroa.082.0167.i.a, 12
  %i.jg = trunc nuw nsw i32 %i.jf to i8
  %i.jh = or disjoint i8 %i.jg, -32
  store i8 %i.jh, ptr %i.hz, align 1
  %i.ji = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 1
  store ptr %i.jj, ptr %i.bl, align 8
  %i.jk = lshr i32 %.sroa.082.0167.i.a, 6
  %i.jl = trunc i32 %i.jk to i8
  %i.jm = and i8 %i.jl, 63
  %i.jn = or disjoint i8 %i.jm, -128
  store i8 %i.jn, ptr %i.ji, align 1
  %i.jo = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 1
  store ptr %i.jp, ptr %i.bl, align 8
  %i.jq = trunc i32 %.sroa.082.0167.i.a to i8
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
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
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
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = getelementptr i8, ptr %i.m, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.r, i1 false)
  %i.t = load ptr, ptr %i.a, align 8, !noundef !6
  %i.u = load ptr, ptr %1, align 8, !noundef !6
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = getelementptr i8, ptr %i.m, i64 %i.x     ; 2 uses
  store ptr %i.y, ptr %i.a, align 8
  %i.z = load ptr, ptr %i.d, align 8, !noundef !6
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.w                     ; 2 uses
  %i.ac = add i64 %i.ab, 4611686018427387904
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit, !prof !4

bb.d:                                             ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i"
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit: ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i"
  %i.ae = shl nsw i64 %i.ab, 1
  %i.af = getelementptr i8, ptr %i.m, i64 %i.ae
  store ptr %i.af, ptr %i.d, align 8
  store ptr %i.m, ptr %1, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit
  %i.ag = phi ptr [ %i.b, %bb.a ], [ %i.y, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 13 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noundef !6 ; 5 uses
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !6
  switch i8 %i.aj, label %.thread21 [
    i8 13, label %bb.f
    i8 -62, label %bb.l
    i8 10, label %.thread
    i8 -30, label %bb.p
  ]

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !noundef !6
  %i.am = icmp eq i8 %i.al, 10
  br i1 %i.am, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  store i8 10, ptr %i.ag, align 1
  %i.an = load ptr, ptr %i.a, align 8, !noundef !6
  %i.ao = getelementptr i8, ptr %i.an, i64 1
  store ptr %i.ao, ptr %i.a, align 8
  %i.ap = load ptr, ptr %i.ah, align 8, !noundef !6
  %i.aq = getelementptr i8, ptr %i.ap, i64 2
  store ptr %i.aq, ptr %i.ah, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !noundef !6 ; 2 uses
  %i.at = icmp ugt i64 %i.as, -3
  br i1 %i.at, label %bb.h, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit", !prof !4

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit": ; preds = %bb.g
  %i.au = add nuw i64 %i.as, 2
  store i64 %i.au, ptr %i.ar, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !6 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, -1
  br i1 %i.ay, label %bb.i, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit14", !prof !4

bb.i:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit14": ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit"
  %i.az = add nuw i64 %i.ax, 1
  store i64 %i.az, ptr %i.aw, align 8
  br label %.thread21.sink.split

.thread21.sink.split:                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit14", %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit16", %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit18", %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit20"
  %.sink32 = phi i64 [ -1, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit20" ], [ -1, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit18" ], [ -1, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit16" ], [ -2, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit14" ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !6
  %i.bc = add i64 %i.bb, %.sink32
  store i64 %i.bc, ptr %i.ba, align 8
  br label %.thread21

.thread21:                                        ; preds = %.thread21.sink.split, %bb.e, %bb.l, %bb.q, %bb.p
  ret void

.thread:                                          ; preds = %bb.e, %bb.f
  store i8 10, ptr %i.ag, align 1
  %i.bd = load ptr, ptr %i.a, align 8, !noundef !6
  %i.be = getelementptr i8, ptr %i.bd, i64 1
  store ptr %i.be, ptr %i.a, align 8
  %i.bf = load ptr, ptr %i.ah, align 8, !noundef !6
  %i.bg = getelementptr i8, ptr %i.bf, i64 1
  store ptr %i.bg, ptr %i.ah, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !6 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, -1
  br i1 %i.bj, label %bb.j, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit15", !prof !4

bb.j:                                             ; preds = %.thread
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit15": ; preds = %.thread
  %i.bk = add nuw i64 %i.bi, 1
  store i64 %i.bk, ptr %i.bh, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !6 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, -1
  br i1 %i.bo, label %bb.k, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit16", !prof !4

bb.k:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit15"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

end_hunk_0

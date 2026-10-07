Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 274
loop-unroll.NumUnrolled: 473
begin_hunk_0_@_ZL22preprocess_text_hangulPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t:bb.a
bb.bv:                                            ; preds = %bb.bu
  %i.ou = load ptr, ptr %i.t, align 8, !tbaa !589
  %i.ov = zext i32 %i.os to i64
  %i.ow = getelementptr inbounds nuw [20 x i8], ptr %i.ou, i64 %i.ov
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !637 ; 2 uses
  %i.oy = add i32 %i.ox, -4520
  %i.oz = icmp ult i32 %i.oy, 88
  %i.pa = add i32 %i.ox, -55243
  %i.pb = icmp ult i32 %i.pa, 49
  %i.pc = or i1 %i.oz, %i.pb
  br i1 %i.pc, label %bb.bw, label %.thread313

bb.bw:                                            ; preds = %.thread312, %bb.bv, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #63
  %i.pd = add nuw nsw <2 x i16> %i.nm, <i16 4352, i16 4449> ; 2 uses
  %i.pe = zext nneg <2 x i16> %i.pd to <2 x i32>
  store <2 x i32> %i.pe, ptr %i.l, align 8, !tbaa !324
  %narrow338 = add nuw nsw i16 %i.nn, 4519
  %i.pf = zext nneg i16 %narrow338 to i32
  store i32 %i.pf, ptr %i.ac, align 8, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #63
  store i32 0, ptr %i.c, align 4, !tbaa !324
  %i.pg = load ptr, ptr %i.z, align 8, !tbaa !638 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 48
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !280
  %i.pj = load ptr, ptr %i.aa, align 8, !tbaa !639
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !641 ; 2 uses
  %.not.i.i259 = icmp eq ptr %i.pl, null
  br i1 %.not.i.i259, label %_ZN9hb_font_t9has_glyphEj.exit260, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !947
  br label %_ZN9hb_font_t9has_glyphEj.exit260

_ZN9hb_font_t9has_glyphEj.exit260:                ; preds = %bb.bw, %bb.bx
  %i.po = phi ptr [ %i.pn, %bb.bx ], [ null, %bb.bw ]
  %i.pp = extractelement <2 x i16> %i.pd, i64 0
  %i.pq = zext nneg i16 %i.pp to i32
  %i.pr = call noundef i32 %i.pi(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %i.pj, i32 noundef %i.pq, ptr noundef nonnull %i.c, ptr noundef %i.po) #63, !inline_history !2999
  %.not339 = icmp eq i32 %i.pr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  br i1 %.not339, label %bb.cm, label %bb.by

bb.by:                                            ; preds = %_ZN9hb_font_t9has_glyphEj.exit260
  %i.ps = load i32, ptr %i.ab, align 4, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  store i32 0, ptr %i.b, align 4, !tbaa !324
  %i.pt = load ptr, ptr %i.z, align 8, !tbaa !638 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 48
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !280
  %i.pw = load ptr, ptr %i.aa, align 8, !tbaa !639
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !641 ; 2 uses
  %.not.i.i261 = icmp eq ptr %i.py, null
  br i1 %.not.i.i261, label %_ZN9hb_font_t9has_glyphEj.exit262, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !947
  br label %_ZN9hb_font_t9has_glyphEj.exit262

_ZN9hb_font_t9has_glyphEj.exit262:                ; preds = %bb.by, %bb.bz
  %i.qb = phi ptr [ %i.qa, %bb.bz ], [ null, %bb.by ]
  %i.qc = call noundef i32 %i.pv(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %i.pw, i32 noundef %i.ps, ptr noundef nonnull %i.b, ptr noundef %i.qb) #63, !inline_history !2999
  %.not340 = icmp eq i32 %i.qc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  br i1 %.not340, label %bb.cm, label %bb.ca

bb.ca:                                            ; preds = %_ZN9hb_font_t9has_glyphEj.exit262
  br i1 %i.no, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qd = load i32, ptr %i.ac, align 8, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  store i32 0, ptr %i.a, align 4, !tbaa !324
  %i.qe = load ptr, ptr %i.z, align 8, !tbaa !638 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 48
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !280
  %i.qh = load ptr, ptr %i.aa, align 8, !tbaa !639
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !641 ; 2 uses
  %.not.i.i263 = icmp eq ptr %i.qj, null
  br i1 %.not.i.i263, label %_ZN9hb_font_t9has_glyphEj.exit264, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !947
  br label %_ZN9hb_font_t9has_glyphEj.exit264

_ZN9hb_font_t9has_glyphEj.exit264:                ; preds = %bb.cb, %bb.cc
  %i.qm = phi ptr [ %i.ql, %bb.cc ], [ null, %bb.cb ]
  %i.qn = call noundef i32 %i.qg(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %i.qh, i32 noundef %i.qd, ptr noundef nonnull %i.a, ptr noundef %i.qm) #63, !inline_history !2999
  %.not341 = icmp eq i32 %i.qn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br i1 %.not341, label %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit280.thread, label %.thread314.a

.thread314.a:                                     ; preds = %_ZN9hb_font_t9has_glyphEj.exit264
  %i.qo = call noundef zeroext i1 @_ZN11hb_buffer_t14replace_glyphsIjEEbjjPKT_(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %i.l) ; 0 uses
  br label %_ZN11hb_buffer_t10next_glyphEv.exit278

bb.cd:                                            ; preds = %bb.ca
  %i.qp = call noundef zeroext i1 @_ZN11hb_buffer_t14replace_glyphsIjEEbjjPKT_(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.l) ; 0 uses
  br i1 %.not342.a, label %_ZN11hb_buffer_t10next_glyphEv.exit278, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.qq = load i8, ptr %i.p, align 1, !tbaa !634, !range !380, !noundef !293
  %i.qr = trunc nuw i8 %i.qq to i1
  %.pre346.a = load i32, ptr %i.r, align 4        ; 5 uses
  br i1 %i.qr, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.qs = load ptr, ptr %i.v, align 8, !tbaa !636 ; 2 uses
  %i.qt = load ptr, ptr %i.t, align 8, !tbaa !589 ; 2 uses
  %.not.i266 = icmp eq ptr %i.qs, %i.qt
  %i.qu = load i32, ptr %i.s, align 4, !tbaa !635 ; 3 uses
  %.not2.i267 = icmp eq i32 %i.qu, %.pre346.a
  %or.cond.i268 = select i1 %.not.i266, i1 %.not2.i267, i1 false
  br i1 %or.cond.i268, label %bb.cg, label %._crit_edge.i269

._crit_edge.i269:                                 ; preds = %bb.cf
  %i.qv = add i32 %i.qu, 1                        ; 3 uses
  %.not.i.i270 = icmp eq i32 %i.qv, 0
  %i.qw = load i32, ptr %i.ad, align 8
  %i.qx = icmp ult i32 %i.qv, %i.qw
  %i.qy = select i1 %.not.i.i270, i1 true, i1 %i.qx
  br i1 %i.qy, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i276, label %_ZN11hb_buffer_t6ensureEj.exit.i271, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i271:              ; preds = %._crit_edge.i269
  %i.qz = call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.qv)
  br i1 %i.qz, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i272, label %_ZN11hb_buffer_t10next_glyphEv.exit278, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i272: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i271
  %.pre3.i273 = load ptr, ptr %i.t, align 8, !tbaa !589
  %.pre4.i274 = load ptr, ptr %i.v, align 8, !tbaa !636
  %.pre5.i275 = load i32, ptr %i.s, align 4, !tbaa !635
  %.pre = load i32, ptr %i.r, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i276

_ZN11hb_buffer_t6ensureEj.exit.thread.i276:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i272, %._crit_edge.i269
  %i.ra = phi i32 [ %.pre, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i272 ], [ %.pre346.a, %._crit_edge.i269 ]
  %i.rb = phi i32 [ %.pre5.i275, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i272 ], [ %i.qu, %._crit_edge.i269 ]
  %i.rc = phi ptr [ %.pre4.i274, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i272 ], [ %i.qs, %._crit_edge.i269 ]
  %i.rd = phi ptr [ %.pre3.i273, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i272 ], [ %i.qt, %._crit_edge.i269 ]
  %i.re = zext i32 %i.ra to i64
  %i.rf = getelementptr inbounds nuw [20 x i8], ptr %i.rd, i64 %i.re
  %i.rg = zext i32 %i.rb to i64
  %i.rh = getelementptr inbounds nuw [20 x i8], ptr %i.rc, i64 %i.rg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.rh, ptr noundef nonnull align 4 dereferenceable(20) %i.rf, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i277 = load i32, ptr %i.s, align 4, !tbaa !635
  %.pre345.pre = load i32, ptr %i.r, align 4, !tbaa !653
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i276, %bb.cf
  %.pre345 = phi i32 [ %.pre345.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i276 ], [ %.pre346.a, %bb.cf ]
  %i.ri = phi i32 [ %.pre7.i277, %_ZN11hb_buffer_t6ensureEj.exit.thread.i276 ], [ %.pre346.a, %bb.cf ]
  %i.rj = add i32 %i.ri, 1
  store i32 %i.rj, ptr %i.s, align 4, !tbaa !635
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ce
  %i.rk = phi i32 [ %.pre345, %bb.cg ], [ %.pre346.a, %bb.ce ]
  %i.rl = add i32 %i.rk, 1
  store i32 %i.rl, ptr %i.r, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t10next_glyphEv.exit278

_ZN11hb_buffer_t10next_glyphEv.exit278:           ; preds = %bb.ch, %_ZN11hb_buffer_t6ensureEj.exit.i271, %.thread314.a, %bb.cd
  %.0 = phi i32 [ 2, %bb.cd ], [ 3, %.thread314.a ], [ 3, %_ZN11hb_buffer_t6ensureEj.exit.i271 ], [ 3, %bb.ch ]
  %i.rm = load i8, ptr %i.y, align 8, !tbaa !586, !range !380, !noundef !293
  %i.rn = trunc nuw i8 %i.rm to i1
  br i1 %i.rn, label %bb.ci, label %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit280.thread430, !prof !268

_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit280.thread430: ; preds = %_ZN11hb_buffer_t10next_glyphEv.exit278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #63
  br label %.critedge

bb.ci:                                            ; preds = %_ZN11hb_buffer_t10next_glyphEv.exit278
  %i.ro = load ptr, ptr %i.v, align 8, !tbaa !636 ; 3 uses
  %i.rp = add i32 %.0, %i.hn                      ; 3 uses
  %i.rq = add i32 %i.hn, 1
  %i.rr = zext i32 %i.hn to i64
  %i.rs = getelementptr inbounds nuw [20 x i8], ptr %i.ro, i64 %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 19
  store i8 1, ptr %i.rt, align 1, !tbaa !280
  %i.ru = add i32 %i.hn, 2                        ; 2 uses
  %i.rv = zext i32 %i.rq to i64
  %i.rw = getelementptr inbounds nuw [20 x i8], ptr %i.ro, i64 %i.rv
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 19
  store i8 2, ptr %i.rx, align 1, !tbaa !280
  %i.ry = icmp ult i32 %i.ru, %i.rp
  br i1 %i.ry, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.rz = zext i32 %i.ru to i64
  %i.sa = getelementptr inbounds nuw [20 x i8], ptr %i.ro, i64 %i.rz
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 19
  store i8 3, ptr %i.sb, align 1, !tbaa !280
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj
  %i.sc = load i32, ptr %i.ae, align 4, !tbaa !609
  %i.sd = shl nuw i32 1, %i.sc
  %i.se = and i32 %i.sd, 9
  %.not.i279 = icmp eq i32 %i.se, 0
  br i1 %.not.i279, label %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit280, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN11hb_buffer_t23merge_out_clusters_implEjj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.hn, i32 noundef %i.rp)
  br label %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit280

bb.cm:                                            ; preds = %_ZN9hb_font_t9has_glyphEj.exit262, %_ZN9hb_font_t9has_glyphEj.exit260
  br i1 %i.no, label %bb.cn, label %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit280.thread

bb.cn:                                            ; preds = %bb.cm
  %i.sf = load i32, ptr %i.r, align 4, !tbaa !653 ; 4 uses
  %i.sg = add i32 %i.sf, 1                        ; 2 uses
  %i.sh = icmp ult i32 %i.sg, %i.x
  br i1 %i.sh, label %bb.co, label %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit280.thread

bb.co:                                            ; preds = %bb.cn
  %i.si = load ptr, ptr %i.t, align 8, !tbaa !589
  %i.sj = zext i32 %i.sg to i64
  %i.sk = getelementptr inbounds nuw [20 x i8], ptr %i.si, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !637 ; 2 uses
  %i.sm = add i32 %i.sl, -4520
  %i.sn = icmp ult i32 %i.sm, 88
  %i.so = add i32 %i.sl, -55243
  %i.sp = icmp ult i32 %i.so, 49
  %i.sq = or i1 %i.sn, %i.sp
  br i1 %i.sq, label %bb.cp, label %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit280.thread

bb.cp:                                            ; preds = %bb.co
  %i.sr = add i32 %i.sf, 2
  %i.ss = load i32, ptr %i.w, align 8, !tbaa !324
  %.sroa.speculated.i281 = call i32 @llvm.umin.i32(i32 %i.sr, i32 %i.ss) ; 2 uses
  %i.st = sub i32 %.sroa.speculated.i281, %i.sf
  %i.su = icmp ult i32 %i.st, 2
  br i1 %i.su, label %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit280.thread, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef 3, i32 noundef %i.sf, i32 noundef %.sroa.speculated.i281, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit280.thread

_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit280.thread: ; preds = %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %_ZN9hb_font_t9has_glyphEj.exit264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #63
  br label %.thread313

_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit280: ; preds = %bb.cl, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #63
  br label %.backedge

.thread313:                                       ; preds = %.thread312, %bb.bu, %bb.bv, %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit280.thread
  %i.sv = add i32 %i.hn, 1
  %spec.select = select i1 %.not342.a, i32 %.0164437, i32 %i.sv
  %.pre349.pre.a = load i32, ptr %i.r, align 4
  br label %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit

_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit: ; preds = %bb.an, %.thread313, %bb.ao, %bb.bk
  %.pre349.a = phi i32 [ %i.am, %bb.bk ], [ %.pre349.pre.a, %.thread313 ], [ %i.am, %bb.ao ], [ %i.am, %bb.an ] ; 5 uses
  %.12 = phi i32 [ %.0164437, %bb.bk ], [ %spec.select, %.thread313 ], [ %.0164437, %bb.ao ], [ %.0164437, %bb.an ] ; 2 uses
  %i.sw = load i8, ptr %i.p, align 1, !tbaa !634, !range !380, !noundef !293
  %i.sx = trunc nuw i8 %i.sw to i1
  br i1 %i.sx, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit
  %i.sy = load ptr, ptr %i.v, align 8, !tbaa !636 ; 2 uses
  %i.sz = load ptr, ptr %i.t, align 8, !tbaa !589 ; 2 uses
  %.not.i284 = icmp eq ptr %i.sy, %i.sz
  %i.ta = load i32, ptr %i.s, align 4, !tbaa !635 ; 3 uses
  %.not2.i285 = icmp eq i32 %i.ta, %.pre349.a
  %or.cond.i286 = select i1 %.not.i284, i1 %.not2.i285, i1 false
  br i1 %or.cond.i286, label %bb.cs, label %._crit_edge.i287

._crit_edge.i287:                                 ; preds = %bb.cr
  %i.tb = add i32 %i.ta, 1                        ; 3 uses
  %.not.i.i288 = icmp eq i32 %i.tb, 0
  %i.tc = load i32, ptr %i.ad, align 8
  %i.td = icmp ult i32 %i.tb, %i.tc
  %i.te = select i1 %.not.i.i288, i1 true, i1 %i.td
  br i1 %i.te, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i294, label %_ZN11hb_buffer_t6ensureEj.exit.i289, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i289:              ; preds = %._crit_edge.i287
  %i.tf = call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.tb)
  br i1 %i.tf, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i290, label %.backedge, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i290: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i289
  %.pre3.i291 = load ptr, ptr %i.t, align 8, !tbaa !589
  %.pre4.i292 = load ptr, ptr %i.v, align 8, !tbaa !636
  %.pre5.i293 = load i32, ptr %i.s, align 4, !tbaa !635
  %.pre347 = load i32, ptr %i.r, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i294

_ZN11hb_buffer_t6ensureEj.exit.thread.i294:       ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i290, %._crit_edge.i287
  %i.tg = phi i32 [ %.pre347, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i290 ], [ %.pre349.a, %._crit_edge.i287 ]
  %i.th = phi i32 [ %.pre5.i293, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i290 ], [ %i.ta, %._crit_edge.i287 ]
  %i.ti = phi ptr [ %.pre4.i292, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i290 ], [ %i.sy, %._crit_edge.i287 ]
  %i.tj = phi ptr [ %.pre3.i291, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i290 ], [ %i.sz, %._crit_edge.i287 ]
  %i.tk = zext i32 %i.tg to i64
  %i.tl = getelementptr inbounds nuw [20 x i8], ptr %i.tj, i64 %i.tk
  %i.tm = zext i32 %i.th to i64
  %i.tn = getelementptr inbounds nuw [20 x i8], ptr %i.ti, i64 %i.tm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.tn, ptr noundef nonnull align 4 dereferenceable(20) %i.tl, i64 20, i1 false), !tbaa.struct !610
  %.pre7.i295 = load i32, ptr %i.s, align 4, !tbaa !635
  %.pre348.pre = load i32, ptr %i.r, align 4, !tbaa !653
  br label %bb.cs

bb.cs:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i294, %bb.cr
  %.pre348 = phi i32 [ %.pre348.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i294 ], [ %.pre349.a, %bb.cr ]
  %i.to = phi i32 [ %.pre7.i295, %_ZN11hb_buffer_t6ensureEj.exit.thread.i294 ], [ %.pre349.a, %bb.cr ]
  %i.tp = add i32 %i.to, 1
  store i32 %i.tp, ptr %i.s, align 4, !tbaa !635
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit
  %i.tq = phi i32 [ %.pre348, %bb.cs ], [ %.pre349.a, %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit ]
  %i.tr = add i32 %i.tq, 1
  store i32 %i.tr, ptr %i.r, align 4, !tbaa !653
  br label %.backedge

.backedge:                                        ; preds = %_ZN11hb_buffer_t10next_glyphEv.exit206, %_ZN11hb_buffer_t6ensureEj.exit.i289, %bb.ct, %.thread, %bb.bi, %bb.bj, %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit258, %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit280
  %.0164.be = phi i32 [ %i.rp, %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit280 ], [ %i.oq, %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit258 ], [ %i.hm, %_ZN11hb_buffer_t10next_glyphEv.exit206 ], [ %.12, %bb.ct ], [ %.12, %_ZN11hb_buffer_t6ensureEj.exit.i289 ], [ %i.mr, %bb.bj ], [ %i.mr, %bb.bi ], [ %i.jo, %.thread ]
  %.0161.be = phi i32 [ %i.hn, %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit280 ], [ %i.hn, %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit258 ], [ %i.hm, %_ZN11hb_buffer_t10next_glyphEv.exit206 ], [ %i.hn, %bb.ct ], [ %i.hn, %_ZN11hb_buffer_t6ensureEj.exit.i289 ], [ %i.hn, %bb.bj ], [ %i.hn, %bb.bi ], [ %i.hn, %.thread ]
  %i.ts = load i32, ptr %i.r, align 4, !tbaa !653 ; 2 uses
  %i.tt = icmp ult i32 %i.ts, %i.x
  br i1 %i.tt, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.backedge, %_ZN11hb_buffer_t6ensureEj.exit.i, %_ZN11hb_buffer_t10next_glyphEv.exit251, %bb.a, %_ZN11hb_buffer_t27merge_out_grapheme_clustersEjj.exit280.thread430
  %i.tu = load i8, ptr %i.y, align 8, !tbaa !586, !range !380, !noundef !293
  %i.tv = trunc nuw i8 %i.tu to i1
  %.pre374 = load ptr, ptr %i.t, align 8, !tbaa !589 ; 5 uses
  br i1 %i.tv, label %bb.cu, label %_ZN11hb_buffer_t4syncEv.exit, !prof !268

bb.cu:                                            ; preds = %.critedge
  %i.tw = load i32, ptr %i.w, align 8, !tbaa !607
  %i.tx = load i32, ptr %i.r, align 4, !tbaa !653 ; 4 uses
  %i.ty = sub i32 %i.tw, %i.tx                    ; 3 uses
  %i.tz = load i8, ptr %i.p, align 1, !tbaa !634, !range !380, !noundef !293
  %i.ua = trunc nuw i8 %i.tz to i1
  %.pre371.a = load ptr, ptr %i.v, align 8, !tbaa !636 ; 4 uses
  br i1 %i.ua, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %.not.i.i299 = icmp eq ptr %.pre371.a, %.pre374
  %i.ub = load i32, ptr %i.s, align 4, !tbaa !635 ; 3 uses
  %.not5.i.i = icmp eq i32 %i.ub, %i.tx
  %or.cond.i.i = select i1 %.not.i.i299, i1 %.not5.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.cw, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.cv
  %i.uc = add i32 %i.ub, %i.ty                    ; 3 uses
  %.not.i.i.i300 = icmp eq i32 %i.uc, 0
  %i.ud = load i32, ptr %i.ad, align 8
  %i.ue = icmp ult i32 %i.uc, %i.ud
  %i.uf = select i1 %.not.i.i.i300, i1 true, i1 %i.ue
  br i1 %i.uf, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i303, label %_ZN11hb_buffer_t6ensureEj.exit.i.i301, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i.i301:            ; preds = %._crit_edge.i.i
  %i.ug = call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.uc)
  %.pre375 = load ptr, ptr %i.t, align 8, !tbaa !589 ; 2 uses
  br i1 %i.ug, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, label %_ZN11hb_buffer_t4syncEv.exit, !prof !318

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i301
  %.pre6.i.i = load ptr, ptr %i.v, align 8, !tbaa !636
  %.pre7.i.i = load i32, ptr %i.s, align 4, !tbaa !635
  %.pre.i302 = load i32, ptr %i.r, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i303

_ZN11hb_buffer_t6ensureEj.exit.thread.i.i303:     ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, %._crit_edge.i.i
  %i.uh = phi i32 [ %.pre.i302, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i ], [ %i.tx, %._crit_edge.i.i ]
  %i.ui = phi ptr [ %.pre375, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i ], [ %.pre374, %._crit_edge.i.i ]
  %i.uj = phi i32 [ %.pre7.i.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i ], [ %i.ub, %._crit_edge.i.i ]
  %i.uk = phi ptr [ %.pre6.i.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i ], [ %.pre371.a, %._crit_edge.i.i ]
  %i.ul = zext i32 %i.uj to i64
  %i.um = getelementptr inbounds nuw [20 x i8], ptr %i.uk, i64 %i.ul
  %i.un = zext i32 %i.uh to i64
  %i.uo = getelementptr inbounds nuw [20 x i8], ptr %i.ui, i64 %i.un
  %i.up = zext i32 %i.ty to i64
  %i.uq = mul nuw nsw i64 %i.up, 20
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.um, ptr align 4 %i.uo, i64 %i.uq, i1 false)
  %.pre10.i.i = load i32, ptr %i.s, align 4, !tbaa !635
  %.pre370.pre = load ptr, ptr %i.v, align 8, !tbaa !636
  %.pre372.pre = load ptr, ptr %i.t, align 8, !tbaa !589
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i303, %bb.cv
  %.pre372 = phi ptr [ %.pre372.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i303 ], [ %.pre374, %bb.cv ]
  %.pre370 = phi ptr [ %.pre370.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i303 ], [ %.pre371.a, %bb.cv ]
  %i.ur = phi i32 [ %.pre10.i.i, %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i303 ], [ %i.tx, %bb.cv ]
  %i.us = add i32 %i.ur, %i.ty
  store i32 %i.us, ptr %i.s, align 4, !tbaa !635
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cu
  %i.ut = phi ptr [ %.pre372, %bb.cw ], [ %.pre374, %bb.cu ] ; 3 uses
  %i.uu = phi ptr [ %.pre370, %bb.cw ], [ %.pre371.a, %bb.cu ] ; 3 uses
  %.not.i298 = icmp eq ptr %i.uu, %i.ut
  br i1 %.not.i298, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store ptr %i.ut, ptr %i.aj, align 8, !tbaa !611
end_hunk_0

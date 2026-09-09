Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 175
begin_hunk_0_@js_bigint_divrem:bb.a
js_mp_neg.exit.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %js_mp_neg.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %js_mp_neg.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %js_mp_neg.exit.loopexit.unr-lcssa ] ; 2 uses
  %.013.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i ], [ %i.bx, %js_mp_neg.exit.loopexit.unr-lcssa ]
  %lcmp.mod403 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod403)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i.epil.init
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !191
  %i.cd = xor i32 %i.cc, -1
  %i.ce = add i32 %.013.i.epil.init, %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.epil.init
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !191
  br label %js_mp_neg.exit

js_mp_neg.exit:                                   ; preds = %.lr.ph.i.epil.preheader, %js_mp_neg.exit.loopexit.unr-lcssa, %bb.q
  %i.cg = icmp sgt i32 %i.h, 1
  br i1 %i.cg, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %js_mp_neg.exit, %bb.r
  %.0116296 = phi i32 [ %i.cl, %bb.r ], [ %i.h, %js_mp_neg.exit ] ; 4 uses
  %i.ch = zext nneg i32 %.0116296 to i64
  %i.ci = getelementptr [4 x i8], ptr %i.ai, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !191
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.r, label %.critedge

bb.r:                                             ; preds = %.lr.ph
  %i.cl = add nsw i32 %.0116296, -1
  %i.cm = icmp sgt i32 %.0116296, 2
  br i1 %i.cm, label %.lr.ph, label %.critedge, !llvm.loop !1781

.critedge:                                        ; preds = %.lr.ph, %bb.r, %bb.p, %js_mp_neg.exit
  %.0116.lcssa = phi i32 [ %i.h, %js_mp_neg.exit ], [ %i.h, %bb.p ], [ %.0116296, %.lr.ph ], [ 1, %bb.r ] ; 9 uses
  %i.cn = sext i32 %i.a to i64
  %i.co = shl nsw i64 %i.cn, 2                    ; 3 uses
  %i.cp = load ptr, ptr %i.x, align 8, !tbaa !232 ; 8 uses
  %i.cq = icmp eq i32 %i.a, 0
  br i1 %i.cq, label %bb.y, label %bb.s, !prof !192

bb.s:                                             ; preds = %.critedge
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 40 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 48 ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !196
  %i.cu = add i64 %i.ct, %i.co
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !197
  %i.cx = add i64 %i.cw, -1
  %i.cy = icmp ugt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.y, label %bb.t, !prof !192

bb.t:                                             ; preds = %bb.s
  %i.cz = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.cp, i64 noundef %i.co) ; 26 uses
  %.not.i198 = icmp eq ptr %i.cz, null
  br i1 %.not.i198, label %._crit_edge334, label %bb.u

._crit_edge334:                                   ; preds = %bb.t
  %.pre335 = load ptr, ptr %i.x, align 8, !tbaa !232
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.da = load i64, ptr %i.cr, align 8, !tbaa !217
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.cr, align 8, !tbaa !217
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 -8 ; 3 uses
  %i.dd = load i16, ptr %i.dc, align 8, !tbaa !218
  %i.de = icmp eq i16 %i.dd, -1
  br i1 %i.de, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 1064
  %i.dg = icmp eq ptr %i.dc, %i.df
  br i1 %i.dg, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !219
  %i.dj = tail call i64 %i.di(ptr noundef nonnull %i.dc) #49, !inline_history !12 ; 2 uses
  %.not15.i.i = icmp eq i64 %i.dj, 0
  %i.dk = select i1 %.not15.i.i, i64 8, i64 %i.dj
  br label %bb.ab

bb.x:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds i8, ptr %i.cz, i64 -6
  %i.dm = load i8, ptr %i.dl, align 2, !tbaa !218
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !221
  %i.dq = zext i16 %i.dp to i64
  br label %bb.ab

bb.y:                                             ; preds = %._crit_edge334, %bb.s, %.critedge
  %i.dr = phi ptr [ %.pre335, %._crit_edge334 ], [ %i.cp, %bb.s ], [ %i.cp, %.critedge ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1256 ; 3 uses
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !233, !range !234, !noundef !235
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.ds, align 8, !tbaa !233
  %i.dv = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !309 ; 0 uses
  store i8 0, ptr %i.ds, align 8, !tbaa !233
  %.pre336 = load ptr, ptr %i.x, align 8, !tbaa !232
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.dw = phi ptr [ %i.dr, %bb.y ], [ %.pre336, %bb.z ]
  tail call void @js_free_rt(ptr noundef %i.dw, ptr noundef nonnull %i.ai)
  br label %js_bigint_new_si.exit

bb.ab:                                            ; preds = %bb.v, %bb.w, %bb.x
  %.011.i.i = phi i64 [ 8, %bb.v ], [ %i.dk, %bb.w ], [ %i.dq, %bb.x ]
  %i.dx = load i64, ptr %i.cs, align 8, !tbaa !196
  %i.dy = add i64 %i.dx, %.011.i.i
  store i64 %i.dy, ptr %i.cs, align 8, !tbaa !196
  %.not126 = icmp sgt i32 %i.q, -1
  br i1 %.not126, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dz = icmp sgt i32 %i.a, 0
  br i1 %i.dz, label %.lr.ph.preheader.i135, label %.critedge2

.lr.ph.preheader.i135:                            ; preds = %bb.ac
  %wide.trip.count.i136 = zext nneg i32 %i.a to i64 ; 2 uses
  %xtraiter404 = and i64 %wide.trip.count.i136, 1
  %i.ea = icmp eq i32 %i.a, 1
  br i1 %i.ea, label %.lr.ph.i137.epil.preheader, label %.lr.ph.preheader.i135.new

.lr.ph.preheader.i135.new:                        ; preds = %.lr.ph.preheader.i135
  %unroll_iter407 = and i64 %wide.trip.count.i136, 2147483646
  br label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137, %.lr.ph.preheader.i135.new
  %indvars.iv.i138 = phi i64 [ 0, %.lr.ph.preheader.i135.new ], [ %indvars.iv.next.i140.1, %.lr.ph.i137 ] ; 4 uses
  %.013.i139 = phi i32 [ 1, %.lr.ph.preheader.i135.new ], [ %i.en, %.lr.ph.i137 ] ; 2 uses
  %niter408 = phi i64 [ 0, %.lr.ph.preheader.i135.new ], [ %niter408.next.1, %.lr.ph.i137 ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i138
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !191
  %i.ed = xor i32 %i.ec, -1
  %i.ee = add i32 %.013.i139, %i.ed               ; 2 uses
  %i.ef = icmp ult i32 %i.ee, %.013.i139
  %i.eg = zext i1 %i.ef to i32                    ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i138
  store i32 %i.ee, ptr %i.eh, align 4, !tbaa !191
  %indvars.iv.next.i140 = or disjoint i64 %indvars.iv.i138, 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i140
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !191
  %i.ek = xor i32 %i.ej, -1
  %i.el = add i32 %i.eg, %i.ek                    ; 2 uses
  %i.em = icmp ult i32 %i.el, %i.eg
  %i.en = zext i1 %i.em to i32                    ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i140
  store i32 %i.el, ptr %i.eo, align 4, !tbaa !191
  %indvars.iv.next.i140.1 = add nuw nsw i64 %indvars.iv.i138, 2 ; 2 uses
  %niter408.next.1 = add i64 %niter408, 2         ; 2 uses
  %niter408.ncmp.1 = icmp eq i64 %niter408.next.1, %unroll_iter407
  br i1 %niter408.ncmp.1, label %js_mp_neg.exit142.loopexit.unr-lcssa, label %.lr.ph.i137, !llvm.loop !1780

bb.ad:                                            ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cz, ptr nonnull align 4 %i.m, i64 %i.co, i1 false)
  br label %js_mp_neg.exit142

js_mp_neg.exit142.loopexit.unr-lcssa:             ; preds = %.lr.ph.i137
  %lcmp.mod405.not = icmp eq i64 %xtraiter404, 0
  br i1 %lcmp.mod405.not, label %js_mp_neg.exit142, label %.lr.ph.i137.epil.preheader

.lr.ph.i137.epil.preheader:                       ; preds = %js_mp_neg.exit142.loopexit.unr-lcssa, %.lr.ph.preheader.i135
  %indvars.iv.i138.epil.init = phi i64 [ 0, %.lr.ph.preheader.i135 ], [ %indvars.iv.next.i140.1, %js_mp_neg.exit142.loopexit.unr-lcssa ] ; 2 uses
  %.013.i139.epil.init = phi i32 [ 1, %.lr.ph.preheader.i135 ], [ %i.en, %js_mp_neg.exit142.loopexit.unr-lcssa ]
  %lcmp.mod406 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod406)
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i138.epil.init
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !191
  %i.er = xor i32 %i.eq, -1
  %i.es = add i32 %.013.i139.epil.init, %i.er
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i138.epil.init
  store i32 %i.es, ptr %i.et, align 4, !tbaa !191
  br label %js_mp_neg.exit142

js_mp_neg.exit142:                                ; preds = %.lr.ph.i137.epil.preheader, %js_mp_neg.exit142.loopexit.unr-lcssa, %bb.ad
  %i.eu = icmp sgt i32 %i.a, 1
  br i1 %i.eu, label %.lr.ph300, label %.critedge2

.lr.ph300:                                        ; preds = %js_mp_neg.exit142, %bb.ae
  %.0115299 = phi i32 [ %i.fa, %bb.ae ], [ %i.a, %js_mp_neg.exit142 ] ; 4 uses
  %i.ev = zext nneg i32 %.0115299 to i64
  %i.ew = getelementptr [4 x i8], ptr %i.cz, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 -4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !191
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.ae, label %.critedge2

bb.ae:                                            ; preds = %.lr.ph300
  %i.fa = add nsw i32 %.0115299, -1
  %i.fb = icmp sgt i32 %.0115299, 2
  br i1 %i.fb, label %.lr.ph300, label %.critedge2, !llvm.loop !1782

.critedge2:                                       ; preds = %.lr.ph300, %bb.ae, %bb.ac, %js_mp_neg.exit142
  %.0115.lcssa = phi i32 [ %i.a, %js_mp_neg.exit142 ], [ %i.a, %bb.ac ], [ %.0115299, %.lr.ph300 ], [ 1, %bb.ae ] ; 23 uses
  %i.fc = icmp slt i32 %.0116.lcssa, %.0115.lcssa
  br i1 %i.fc, label %bb.af, label %bb.bd

bb.af:                                            ; preds = %.critedge2
  %i.fd = load ptr, ptr %i.x, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.fd, ptr noundef nonnull %i.ai)
  %i.fe = load ptr, ptr %i.x, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.fe, ptr noundef nonnull %i.cz)
  br i1 %3, label %bb.ag, label %bb.as

bb.ag:                                            ; preds = %bb.af
  %i.ff = load i32, ptr %1, align 4, !tbaa !191   ; 3 uses
  %i.fg = icmp sgt i32 %i.ff, 32768
  br i1 %i.fg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fh = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.143), !inline_history !790 ; 0 uses
  br label %js_bigint_new_si.exit

bb.ai:                                            ; preds = %bb.ag
  %i.fi = sext i32 %i.ff to i64
  %i.fj = shl nsw i64 %i.fi, 2
  %i.fk = add nsw i64 %i.fj, 4                    ; 3 uses
  %i.fl = load ptr, ptr %i.x, align 8, !tbaa !232 ; 8 uses
  %i.fm = icmp eq i64 %i.fk, 0
  br i1 %i.fm, label %bb.ap, label %bb.aj, !prof !192

bb.aj:                                            ; preds = %bb.ai
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 40 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 48 ; 3 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !196
  %i.fq = add i64 %i.fp, %i.fk
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !197
  %i.ft = add i64 %i.fs, -1
  %i.fu = icmp ugt i64 %i.fq, %i.ft
  br i1 %i.fu, label %bb.ap, label %bb.ak, !prof !192

bb.ak:                                            ; preds = %bb.aj
  %i.fv = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.fl, i64 noundef %i.fk), !inline_history !791 ; 7 uses
  %.not.i.i200 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i200, label %._crit_edge332, label %bb.al

._crit_edge332:                                   ; preds = %bb.ak
  %.pre333 = load ptr, ptr %i.x, align 8, !tbaa !232
  br label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.fw = load i64, ptr %i.fn, align 8, !tbaa !217
  %i.fx = add i64 %i.fw, 1
  store i64 %i.fx, ptr %i.fn, align 8, !tbaa !217
  %i.fy = getelementptr inbounds i8, ptr %i.fv, i64 -8 ; 3 uses
  %i.fz = load i16, ptr %i.fy, align 8, !tbaa !218
  %i.ga = icmp eq i16 %i.fz, -1
  br i1 %i.ga, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fl, i64 1064
  %i.gc = icmp eq ptr %i.fy, %i.gb
  br i1 %i.gc, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !219
  %i.gf = tail call i64 %i.ge(ptr noundef nonnull %i.fy) #49, !inline_history !143 ; 2 uses
  %.not15.i.i.i208 = icmp eq i64 %i.gf, 0
  %i.gg = select i1 %.not15.i.i.i208, i64 8, i64 %i.gf
  br label %bb.ar

bb.ao:                                            ; preds = %bb.al
  %i.gh = getelementptr inbounds i8, ptr %i.fv, i64 -6
  %i.gi = load i8, ptr %i.gh, align 2, !tbaa !218
  %i.gj = zext i8 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.gj
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !221
  %i.gm = zext i16 %i.gl to i64
  br label %bb.ar

bb.ap:                                            ; preds = %._crit_edge332, %bb.aj, %bb.ai
  %i.gn = phi ptr [ %.pre333, %._crit_edge332 ], [ %i.fl, %bb.aj ], [ %i.fl, %bb.ai ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1256 ; 3 uses
  %i.gp = load i8, ptr %i.go, align 8, !tbaa !233, !range !234, !noundef !235
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %js_bigint_new_si.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i8 1, ptr %i.go, align 8, !tbaa !233
  %i.gr = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !792 ; 0 uses
  store i8 0, ptr %i.go, align 8, !tbaa !233
  br label %js_bigint_new_si.exit

bb.ar:                                            ; preds = %bb.am, %bb.an, %bb.ao
  %.011.i.i.i202 = phi i64 [ 8, %bb.am ], [ %i.gg, %bb.an ], [ %i.gm, %bb.ao ]
  %i.gs = load i64, ptr %i.fo, align 8, !tbaa !196
  %i.gt = add i64 %i.gs, %.011.i.i.i202
  store i64 %i.gt, ptr %i.fo, align 8, !tbaa !196
  %i.gu = getelementptr inbounds i8, ptr %i.fv, i64 -4
  store i32 1, ptr %i.gu, align 4, !tbaa !191
  store i32 %i.ff, ptr %i.fv, align 8, !tbaa !191
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.gw = load i32, ptr %1, align 4, !tbaa !191
  %i.gx = zext i32 %i.gw to i64
  %i.gy = shl nuw nsw i64 %i.gx, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gv, ptr nonnull align 4 %i.g, i64 %i.gy, i1 false)
  br label %js_bigint_new_si.exit

bb.as:                                            ; preds = %bb.af
  %i.gz = load ptr, ptr %i.x, align 8, !tbaa !232 ; 9 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 40 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 48 ; 3 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !196
  %i.hd = add i64 %i.hc, 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 56
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !197
  %i.hg = add i64 %i.hf, -1
  %i.hh = icmp ugt i64 %i.hd, %i.hg
  br i1 %i.hh, label %js_arena_malloc.exit.thread, label %bb.at, !prof !192

bb.at:                                            ; preds = %bb.as
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 568
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gz, i64 576
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !222 ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.hi
  br i1 %i.hl, label %bb.au, label %bb.av, !prof !192

bb.au:                                            ; preds = %bb.at
  %i.hm = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.gz, i32 noundef 0) ; 2 uses
  %.not.i249 = icmp eq ptr %i.hm, null
  br i1 %.not.i249, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.av

.js_arena_malloc.exit.thread_crit_edge:           ; preds = %bb.au
  %.pre331 = load ptr, ptr %i.x, align 8, !tbaa !232
  br label %js_arena_malloc.exit.thread

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0.i247 = phi ptr [ %i.hm, %bb.au ], [ %i.hk, %bb.at ] ; 7 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i247, i64 38 ; 2 uses
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !221 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i247, i64 40
  %i.hq = zext i16 %i.ho to i64
  %i.hr = shl nuw nsw i64 %i.hq, 4
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hr ; 9 uses
  %i.ht = load i16, ptr %i.hs, align 8, !tbaa !218
  store i16 %i.ht, ptr %i.hn, align 2, !tbaa !221
  store i16 %i.ho, ptr %i.hs, align 8, !tbaa !218
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i247, i64 34 ; 2 uses
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !221
  %i.hw = add i16 %i.hv, 1                        ; 2 uses
  store i16 %i.hw, ptr %i.hu, align 2, !tbaa !221
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i247, i64 36
  %i.hy = load i16, ptr %i.hx, align 4, !tbaa !221
  %i.hz = icmp eq i16 %i.hw, %i.hy
  br i1 %i.hz, label %bb.aw, label %bb.ax, !prof !192

bb.aw:                                            ; preds = %bb.av
  %i.ia = load ptr, ptr %.0.i247, align 8, !tbaa !223 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i247, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !222 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store ptr %i.ic, ptr %i.id, align 8, !tbaa !222
  store ptr %i.ia, ptr %i.ic, align 8, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i247, i8 0, i64 16, i1 false)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.if = load i64, ptr %i.ha, align 8, !tbaa !217
  %i.ig = add i64 %i.if, 1
  store i64 %i.ig, ptr %i.ha, align 8, !tbaa !217
  %i.ih = load i16, ptr %i.hs, align 8, !tbaa !218
  %i.ii = icmp eq i16 %i.ih, -1
  br i1 %i.ii, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gz, i64 1064
  %i.ik = icmp eq ptr %i.hs, %i.ij
  br i1 %i.ik, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.il = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !219
  %i.in = tail call i64 %i.im(ptr noundef nonnull %i.hs) #49, !inline_history !157 ; 2 uses
  %.not15.i.i243 = icmp eq i64 %i.in, 0
  %i.io = select i1 %.not15.i.i243, i64 8, i64 %i.in
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ax
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  %i.iq = load i8, ptr %i.ip, align 2, !tbaa !218
  %i.ir = zext i8 %i.iq to i64
  %i.is = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ir
  %i.it = load i16, ptr %i.is, align 2, !tbaa !221
  %i.iu = zext i16 %i.it to i64
  br label %bb.bc

js_arena_malloc.exit.thread:                      ; preds = %.js_arena_malloc.exit.thread_crit_edge, %bb.as
  %i.iv = phi ptr [ %.pre331, %.js_arena_malloc.exit.thread_crit_edge ], [ %i.gz, %bb.as ]
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 1256 ; 3 uses
  %i.ix = load i8, ptr %i.iw, align 8, !tbaa !233, !range !234, !noundef !235
  %i.iy = trunc nuw i8 %i.ix to i1
end_hunk_0
begin_hunk_1_@js_bigint_divrem:bb.a
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.na = zext i32 %i.mv to i64                   ; 2 uses
  %.030.i.i = add i32 %.1, -1                     ; 2 uses
  %i.nb = icmp sgt i32 %.030.i.i, -1
  br i1 %i.nb, label %.lr.ph33.i.i, label %js_mp_div1norm.exit.i

.lr.ph33.i.i:                                     ; preds = %bb.bu
  %i.nc = xor i32 %i.mv, -1
  %i.nd = zext i32 %i.nc to i64
  %i.ne = shl nuw i64 %i.nd, 32
  %i.nf = or disjoint i64 %i.ne, 4294967295
  %i.ng = udiv i64 %i.nf, %i.na
  %i.nh = and i64 %i.ng, 4294967295
  %i.ni = zext nneg i32 %.030.i.i to i64
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph33.i.i
  %indvars.iv38.i.i = phi i64 [ %i.ni, %.lr.ph33.i.i ], [ %indvars.iv.next39.i.i, %bb.bv ] ; 4 uses
  %.02531.i.i = phi i32 [ 0, %.lr.ph33.i.i ], [ %i.oi, %bb.bv ] ; 3 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv38.i.i
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !191 ; 3 uses
  %i.nl = ashr i32 %i.nk, 31                      ; 2 uses
  %i.nm = and i32 %i.nl, %i.mv
  %i.nn = add i32 %i.nm, %i.nk
  %i.no = sub i32 %.02531.i.i, %i.nl
  %i.np = zext i32 %i.no to i64
  %i.nq = mul nuw i64 %i.nh, %i.np
  %i.nr = zext i32 %i.nn to i64
  %i.ns = add nuw i64 %i.nq, %i.nr
  %i.nt = lshr i64 %i.ns, 32
  %i.nu = zext i32 %.02531.i.i to i64
  %i.nv = trunc nuw i64 %i.nt to i32
  %i.nw = add i32 %.02531.i.i, %i.nv              ; 2 uses
  %i.nx = shl nuw i64 %i.nu, 32
  %i.ny = zext i32 %i.nk to i64
  %i.nz = or disjoint i64 %i.nx, %i.ny
  %i.oa = zext i32 %i.nw to i64
  %.neg.i.i.i = xor i64 %i.oa, -1
  %.neg24.i.i.i = mul i64 %.neg.i.i.i, %i.na
  %i.ob = add i64 %i.nz, %.neg24.i.i.i            ; 2 uses
  %i.oc = lshr i64 %i.ob, 32
  %i.od = trunc nuw i64 %i.oc to i32              ; 2 uses
  %i.oe = add i32 %i.nw, 1
  %i.of = add i32 %i.oe, %i.od
  %i.og = trunc i64 %i.ob to i32
  %i.oh = and i32 %i.mv, %i.od
  %i.oi = add i32 %i.oh, %i.og                    ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %indvars.iv38.i.i
  store i32 %i.of, ptr %i.oj, align 4, !tbaa !191
  %indvars.iv.next39.i.i = add nsw i64 %indvars.iv38.i.i, -1
  %.not42.i.i = icmp eq i64 %indvars.iv38.i.i, 0
  br i1 %.not42.i.i, label %js_mp_div1norm.exit.i, label %bb.bv, !llvm.loop !1783

bb.bw:                                            ; preds = %bb.bw, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.mz, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.bw ] ; 4 uses
  %.12628.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.os, %bb.bw ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.ok = shl nuw i64 %.12628.i.i, 32
  %i.ol = getelementptr [4 x i8], ptr %i.ai, i64 %indvars.iv.i.i
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !191
  %i.on = zext i32 %i.om to i64
  %i.oo = or disjoint i64 %i.ok, %i.on            ; 2 uses
  %i.op = udiv i64 %i.oo, %i.my
  %i.oq = trunc i64 %i.op to i32
  %i.or = getelementptr [4 x i8], ptr %i.lo, i64 %indvars.iv.i.i
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !191
  %i.os = urem i64 %i.oo, %i.my                   ; 2 uses
  %i.ot = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.ot, label %bb.bw, label %.loopexit.loopexit35.i.i, !llvm.loop !1784

.loopexit.loopexit35.i.i:                         ; preds = %bb.bw
  %i.ou = trunc nuw i64 %i.os to i32
  br label %js_mp_div1norm.exit.i

js_mp_div1norm.exit.i:                            ; preds = %bb.bv, %.loopexit.loopexit35.i.i, %bb.bu, %.preheader.i.i
  %.2.i.i = phi i32 [ %i.ou, %.loopexit.loopexit35.i.i ], [ 0, %bb.bu ], [ 0, %.preheader.i.i ], [ %i.oi, %bb.bv ]
  store i32 %.2.i.i, ptr %i.mr, align 4, !tbaa !191
  br label %js_mp_divnorm.exit

bb.bx:                                            ; preds = %bb.bs
  %i.ov = icmp ugt i32 %i.kx, 2
  br i1 %i.ov, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ow = xor i32 %i.mv, -1
  %i.ox = zext i32 %i.ow to i64
  %i.oy = shl nuw i64 %i.ox, 32
  %i.oz = or disjoint i64 %i.oy, 4294967295
  %i.pa = zext i32 %i.mv to i64
  %i.pb = udiv i64 %i.oz, %i.pa
  %i.pc = trunc i64 %i.pb to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.092.i = phi i32 [ %i.pc, %bb.by ], [ 0, %bb.bx ] ; 2 uses
  %i.pd = icmp sgt i32 %i.ms, -1
  br i1 %i.pd, label %.lr.ph.i167, label %.thread.i

bb.ca:                                            ; preds = %.lr.ph.i167
  %i.pe = add nsw i32 %.0137.i, -1
  %i.pf = icmp sgt i32 %.0137.i, 0
  br i1 %i.pf, label %.lr.ph.i167, label %.thread.i, !llvm.loop !1785

.thread.i:                                        ; preds = %bb.ca, %bb.bz
  %i.pg = zext i32 %i.kx to i64                   ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.pg
  store i32 1, ptr %i.ph, align 4, !tbaa !191
  br label %bb.cc

.lr.ph.i167:                                      ; preds = %bb.bz, %bb.ca
  %.0137.i = phi i32 [ %i.pe, %bb.ca ], [ %i.ms, %bb.bz ] ; 4 uses
  %i.pi = add i32 %.0137.i, %i.kx
  %i.pj = zext i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.pj
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !191 ; 2 uses
  %i.pm = zext nneg i32 %.0137.i to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.pm
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !191 ; 2 uses
  %.not.i168 = icmp eq i32 %i.pl, %i.po
  br i1 %.not.i168, label %bb.ca, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i167
  %i.pp = icmp uge i32 %i.pl, %i.po               ; 2 uses
  %spec.select103.i = zext i1 %i.pp to i32
  %i.pq = zext i32 %i.kx to i64                   ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.pq
  store i32 %spec.select103.i, ptr %i.pr, align 4, !tbaa !191
  br i1 %i.pp, label %bb.cc, label %js_mp_sub.exit.i

bb.cc:                                            ; preds = %bb.cb, %.thread.i
  %i.ps = phi i64 [ %i.pg, %.thread.i ], [ %i.pq, %bb.cb ]
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.ps ; 3 uses
  %i.pu = icmp sgt i32 %.0115.lcssa, 0
  br i1 %i.pu, label %.lr.ph.preheader.i.i, label %js_mp_sub.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.cc
  %wide.trip.count.i.i = zext nneg i32 %.0115.lcssa to i64 ; 2 uses
  %xtraiter421 = and i64 %wide.trip.count.i.i, 1
  %unroll_iter424 = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i104.i

.lr.ph.i104.i:                                    ; preds = %.lr.ph.i104.i, %.lr.ph.preheader.i.i
  %indvars.iv.i105.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i106.i.1, %.lr.ph.i104.i ] ; 4 uses
  %.021.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.qo, %.lr.ph.i104.i ] ; 2 uses
  %niter425 = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %niter425.next.1, %.lr.ph.i104.i ]
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %indvars.iv.i105.i ; 2 uses
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !191 ; 2 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i105.i
  %i.py = load i32, ptr %i.px, align 4, !tbaa !191 ; 2 uses
  %i.pz = sub i32 %i.pw, %i.py                    ; 2 uses
  %i.qa = icmp ugt i32 %i.py, %i.pw
  %i.qb = sub i32 %i.pz, %.021.i.i
  %i.qc = icmp ugt i32 %.021.i.i, %i.pz
  %i.qd = or i1 %i.qa, %i.qc
  %i.qe = zext i1 %i.qd to i32                    ; 2 uses
  store i32 %i.qb, ptr %i.pv, align 4, !tbaa !191
  %indvars.iv.next.i106.i = or disjoint i64 %indvars.iv.i105.i, 1 ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %indvars.iv.next.i106.i ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !191 ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i106.i
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !191 ; 2 uses
  %i.qj = sub i32 %i.qg, %i.qi                    ; 2 uses
  %i.qk = icmp ugt i32 %i.qi, %i.qg
  %i.ql = sub i32 %i.qj, %i.qe
  %i.qm = icmp ult i32 %i.qj, %i.qe
  %i.qn = or i1 %i.qk, %i.qm
  %i.qo = zext i1 %i.qn to i32                    ; 2 uses
  store i32 %i.ql, ptr %i.qf, align 4, !tbaa !191
  %indvars.iv.next.i106.i.1 = add nuw nsw i64 %indvars.iv.i105.i, 2 ; 3 uses
  %niter425.next.1 = add i64 %niter425, 2         ; 2 uses
  %niter425.ncmp.1 = icmp eq i64 %niter425.next.1, %unroll_iter424
  br i1 %niter425.ncmp.1, label %js_mp_sub.exit.i.loopexit.unr-lcssa, label %.lr.ph.i104.i, !llvm.loop !154

js_mp_sub.exit.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i104.i
  %lcmp.mod422.not = icmp eq i64 %xtraiter421, 0
  br i1 %lcmp.mod422.not, label %js_mp_sub.exit.i, label %.lr.ph.i104.i.epil.preheader

.lr.ph.i104.i.epil.preheader:                     ; preds = %js_mp_sub.exit.i.loopexit.unr-lcssa
  %lcmp.mod423 = trunc i32 %.0115.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod423)
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %indvars.iv.next.i106.i.1 ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !191
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i106.i.1
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !191
  %i.qt = add i32 %i.qs, %i.qo
  %i.qu = sub i32 %i.qq, %i.qt
  store i32 %i.qu, ptr %i.qp, align 4, !tbaa !191
  br label %js_mp_sub.exit.i

js_mp_sub.exit.i:                                 ; preds = %.lr.ph.i104.i.epil.preheader, %js_mp_sub.exit.i.loopexit.unr-lcssa, %bb.cc, %bb.cb
  %.091138.i = add i32 %i.kx, -1                  ; 2 uses
  %i.qv = icmp sgt i32 %.091138.i, -1
  br i1 %i.qv, label %.lr.ph140.i, label %js_mp_divnorm.exit

.lr.ph140.i:                                      ; preds = %js_mp_sub.exit.i
  %.not101.i = icmp eq i32 %.092.i, 0
  %i.qw = zext i32 %.092.i to i64
  %i.qx = zext i32 %i.mv to i64                   ; 2 uses
  %.not.i107.i = icmp eq i32 %.0115.lcssa, 0
  %wide.trip.count.i109.i = zext i32 %.0115.lcssa to i64 ; 4 uses
  %i.qy = zext nneg i32 %.091138.i to i64
  %xtraiter427 = and i64 %wide.trip.count.i109.i, 1
  %unroll_iter432 = and i64 %wide.trip.count.i109.i, 4294967294
  %lcmp.mod428.not = icmp eq i64 %xtraiter427, 0
  %lcmp.mod431 = trunc i32 %.0115.lcssa to i1
  %xtraiter434 = and i64 %wide.trip.count.i109.i, 1
  %unroll_iter438 = and i64 %wide.trip.count.i109.i, 4294967294
  %lcmp.mod435.not = icmp eq i64 %xtraiter434, 0
  %lcmp.mod437 = trunc i32 %.0115.lcssa to i1
  br label %bb.cd

bb.cd:                                            ; preds = %js_mp_sub_mul1.exit.thread.i, %.lr.ph140.i
  %indvars.iv.i165 = phi i64 [ %i.qy, %.lr.ph140.i ], [ %indvars.iv.next.i166, %js_mp_sub_mul1.exit.thread.i ] ; 5 uses
  %i.qz = trunc nuw nsw i64 %indvars.iv.i165 to i32
  %i.ra = add i32 %.0115.lcssa, %i.qz             ; 3 uses
  %i.rb = zext i32 %i.ra to i64
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.rb ; 5 uses
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !191 ; 5 uses
  %.not100.i = icmp ult i32 %i.rd, %i.mv
  br i1 %.not100.i, label %bb.ce, label %bb.ch, !prof !324

bb.ce:                                            ; preds = %bb.cd
  br i1 %.not101.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.re = add i32 %i.ra, -1
  %i.rf = zext i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.rf
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !191 ; 3 uses
  %i.ri = ashr i32 %i.rh, 31                      ; 2 uses
  %i.rj = and i32 %i.ri, %i.mv
  %i.rk = add i32 %i.rj, %i.rh
  %i.rl = sub i32 %i.rd, %i.ri
  %i.rm = zext i32 %i.rl to i64
  %i.rn = mul nuw i64 %i.rm, %i.qw
  %i.ro = zext i32 %i.rk to i64
  %i.rp = add nuw i64 %i.rn, %i.ro
  %i.rq = lshr i64 %i.rp, 32
  %i.rr = zext i32 %i.rd to i64
  %i.rs = trunc nuw i64 %i.rq to i32
  %i.rt = add i32 %i.rd, %i.rs                    ; 2 uses
  %i.ru = shl nuw i64 %i.rr, 32
  %i.rv = zext i32 %i.rh to i64
  %i.rw = or disjoint i64 %i.ru, %i.rv
  %i.rx = zext i32 %i.rt to i64
  %.neg.i.i = xor i64 %i.rx, -1
  %.neg24.i.i = mul i64 %.neg.i.i, %i.qx
  %i.ry = add i64 %.neg24.i.i, %i.rw
  %i.rz = lshr i64 %i.ry, 32
  %i.sa = trunc nuw i64 %i.rz to i32
  %i.sb = add i32 %i.rt, 1
  %i.sc = add i32 %i.sb, %i.sa
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.sd = zext i32 %i.rd to i64
  %i.se = shl nuw i64 %i.sd, 32
  %i.sf = add i32 %i.ra, -1
  %i.sg = zext i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.sg
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !191
  %i.sj = zext i32 %i.si to i64
  %i.sk = or disjoint i64 %i.se, %i.sj
  %i.sl = udiv i64 %i.sk, %i.qx
  %i.sm = trunc i64 %i.sl to i32
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.cd
  %.1.i = phi i32 [ %i.sm, %bb.cg ], [ %i.sc, %bb.cf ], [ -1, %bb.cd ] ; 4 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv.i165 ; 6 uses
  br i1 %.not.i107.i, label %js_mp_sub_mul1.exit.thread.i, label %.lr.ph.i108.i

.lr.ph.i108.i:                                    ; preds = %bb.ch
  %4 = zext i32 %.1.i to i64                      ; 3 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %.lr.ph.i108.i
  %indvars.iv.i110.i = phi i64 [ 0, %.lr.ph.i108.i ], [ %indvars.iv.next.i111.i.1, %bb.ci ] ; 4 uses
  %.017.i.i = phi i32 [ 0, %.lr.ph.i108.i ], [ %i.to, %bb.ci ]
  %niter433 = phi i64 [ 0, %.lr.ph.i108.i ], [ %niter433.next.1, %bb.ci ]
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.i110.i ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !191
  %i.sq = zext i32 %i.sp to i64
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i110.i
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !191
  %i.st = zext i32 %i.ss to i64
  %i.su = mul nuw i64 %4, %i.st
  %i.sv = zext i32 %.017.i.i to i64
  %i.sw = add nuw i64 %i.su, %i.sv
  %i.sx = sub i64 %i.sq, %i.sw                    ; 2 uses
  %i.sy = trunc i64 %i.sx to i32
  store i32 %i.sy, ptr %i.so, align 4, !tbaa !191
  %i.sz = lshr i64 %i.sx, 32
  %i.ta = sub nsw i64 0, %i.sz
  %indvars.iv.next.i111.i = or disjoint i64 %indvars.iv.i110.i, 1 ; 2 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.next.i111.i ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !191
  %i.td = zext i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i111.i
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !191
  %i.tg = zext i32 %i.tf to i64
  %i.th = mul nuw i64 %4, %i.tg
  %i.ti = and i64 %i.ta, 4294967295
  %i.tj = add nuw i64 %i.th, %i.ti
  %i.tk = sub i64 %i.td, %i.tj                    ; 2 uses
  %i.tl = trunc i64 %i.tk to i32
  store i32 %i.tl, ptr %i.tb, align 4, !tbaa !191
  %i.tm = lshr i64 %i.tk, 32
  %i.tn = trunc nuw i64 %i.tm to i32              ; 2 uses
  %i.to = sub i32 0, %i.tn                        ; 3 uses
  %indvars.iv.next.i111.i.1 = add nuw nsw i64 %indvars.iv.i110.i, 2 ; 3 uses
  %niter433.next.1 = add i64 %niter433, 2         ; 2 uses
  %niter433.ncmp.1 = icmp eq i64 %niter433.next.1, %unroll_iter432
  br i1 %niter433.ncmp.1, label %js_mp_sub_mul1.exit.i.unr-lcssa, label %bb.ci, !llvm.loop !1786

js_mp_sub_mul1.exit.i.unr-lcssa:                  ; preds = %bb.ci
  br i1 %lcmp.mod428.not, label %js_mp_sub_mul1.exit.i, label %.epil.preheader426

.epil.preheader426:                               ; preds = %js_mp_sub_mul1.exit.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod431)
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.next.i111.i.1 ; 2 uses
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !191
  %i.tr = zext i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i111.i.1
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !191
  %i.tu = zext i32 %i.tt to i64
  %i.tv = mul nuw i64 %4, %i.tu
  %i.tw = zext i32 %i.to to i64
  %i.tx = add nuw i64 %i.tv, %i.tw
  %i.ty = sub i64 %i.tr, %i.tx                    ; 2 uses
  %i.tz = trunc i64 %i.ty to i32
  store i32 %i.tz, ptr %i.tp, align 4, !tbaa !191
  %i.ua = lshr i64 %i.ty, 32
  %i.ub = trunc nuw i64 %i.ua to i32              ; 2 uses
  %i.uc = sub i32 0, %i.ub
  br label %js_mp_sub_mul1.exit.i

js_mp_sub_mul1.exit.i:                            ; preds = %js_mp_sub_mul1.exit.i.unr-lcssa, %.epil.preheader426
  %.lcssa395 = phi i32 [ %i.tn, %js_mp_sub_mul1.exit.i.unr-lcssa ], [ %i.ub, %.epil.preheader426 ]
  %.lcssa394 = phi i32 [ %i.to, %js_mp_sub_mul1.exit.i.unr-lcssa ], [ %i.uc, %.epil.preheader426 ]
  %i.ud = load i32, ptr %i.rc, align 4, !tbaa !191 ; 2 uses
  %i.ue = add i32 %i.ud, %.lcssa395
  %i.uf = icmp ult i32 %i.ud, %.lcssa394
  store i32 %i.ue, ptr %i.rc, align 4, !tbaa !191
  br i1 %i.uf, label %.lr.ph.preheader.i115.i, label %js_mp_sub_mul1.exit.thread.i

.lr.ph.preheader.i115.i:                          ; preds = %js_mp_sub_mul1.exit.i, %.lr.ph.preheader.i115.i.backedge
  %.2.i = phi i32 [ %i.vj, %.lr.ph.preheader.i115.i.backedge ], [ %.1.i, %js_mp_sub_mul1.exit.i ]
  br label %.lr.ph.i117.i

.lr.ph.i117.i:                                    ; preds = %.lr.ph.i117.i, %.lr.ph.preheader.i115.i
  %indvars.iv.i118.i = phi i64 [ 0, %.lr.ph.preheader.i115.i ], [ %indvars.iv.next.i120.i.1, %.lr.ph.i117.i ] ; 4 uses
  %.021.i119.i = phi i32 [ 0, %.lr.ph.preheader.i115.i ], [ %i.uz, %.lr.ph.i117.i ] ; 2 uses
  %niter439 = phi i64 [ 0, %.lr.ph.preheader.i115.i ], [ %niter439.next.1, %.lr.ph.i117.i ]
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.i118.i ; 2 uses
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !191 ; 2 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i118.i
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !191
  %i.uk = add i32 %i.uj, %i.uh                    ; 2 uses
  %i.ul = icmp ult i32 %i.uk, %i.uh
  %i.um = add i32 %i.uk, %.021.i119.i             ; 2 uses
  %i.un = icmp ult i32 %i.um, %.021.i119.i
  %i.uo = or i1 %i.ul, %i.un
  %i.up = zext i1 %i.uo to i32                    ; 2 uses
  store i32 %i.um, ptr %i.ug, align 4, !tbaa !191
  %indvars.iv.next.i120.i = or disjoint i64 %indvars.iv.i118.i, 1 ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.next.i120.i ; 2 uses
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !191 ; 2 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i120.i
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !191
  %i.uu = add i32 %i.ut, %i.ur                    ; 2 uses
  %i.uv = icmp ult i32 %i.uu, %i.ur
  %i.uw = add i32 %i.uu, %i.up                    ; 2 uses
  %i.ux = icmp ult i32 %i.uw, %i.up
  %i.uy = or i1 %i.uv, %i.ux                      ; 2 uses
  %i.uz = zext i1 %i.uy to i32                    ; 3 uses
  store i32 %i.uw, ptr %i.uq, align 4, !tbaa !191
  %indvars.iv.next.i120.i.1 = add nuw nsw i64 %indvars.iv.i118.i, 2 ; 3 uses
  %niter439.next.1 = add i64 %niter439, 2         ; 2 uses
  %niter439.ncmp.1 = icmp eq i64 %niter439.next.1, %unroll_iter438
  br i1 %niter439.ncmp.1, label %js_mp_add.exit.i.unr-lcssa, label %.lr.ph.i117.i, !llvm.loop !1787

js_mp_add.exit.i.unr-lcssa:                       ; preds = %.lr.ph.i117.i
  br i1 %lcmp.mod435.not, label %js_mp_add.exit.i, label %.lr.ph.i117.i.epil.preheader

.lr.ph.i117.i.epil.preheader:                     ; preds = %js_mp_add.exit.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod437)
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.next.i120.i.1 ; 2 uses
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !191 ; 2 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i120.i.1
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !191
  %i.ve = add i32 %i.vd, %i.vb                    ; 2 uses
  %i.vf = icmp ult i32 %i.ve, %i.vb
  %i.vg = add i32 %i.ve, %i.uz                    ; 2 uses
  %i.vh = icmp ult i32 %i.vg, %i.uz
  %i.vi = or i1 %i.vf, %i.vh
  store i32 %i.vg, ptr %i.va, align 4, !tbaa !191
  br label %js_mp_add.exit.i

js_mp_add.exit.i:                                 ; preds = %js_mp_add.exit.i.unr-lcssa, %.lr.ph.i117.i.epil.preheader
  %.lcssa396 = phi i1 [ %i.uy, %js_mp_add.exit.i.unr-lcssa ], [ %i.vi, %.lr.ph.i117.i.epil.preheader ]
  %i.vj = add i32 %.2.i, -1                       ; 2 uses
  br i1 %.lcssa396, label %bb.cj, label %.lr.ph.preheader.i115.i.backedge

bb.cj:                                            ; preds = %js_mp_add.exit.i
  %i.vk = load i32, ptr %i.rc, align 4, !tbaa !191
  %i.vl = add i32 %i.vk, 1                        ; 2 uses
  store i32 %i.vl, ptr %i.rc, align 4, !tbaa !191
  %i.vm = icmp eq i32 %i.vl, 0
  br i1 %i.vm, label %js_mp_sub_mul1.exit.thread.i, label %.lr.ph.preheader.i115.i.backedge

.lr.ph.preheader.i115.i.backedge:                 ; preds = %bb.cj, %js_mp_add.exit.i
  br label %.lr.ph.preheader.i115.i

js_mp_sub_mul1.exit.thread.i:                     ; preds = %bb.cj, %js_mp_sub_mul1.exit.i, %bb.ch
  %.3.i = phi i32 [ %.1.i, %bb.ch ], [ %.1.i, %js_mp_sub_mul1.exit.i ], [ %i.vj, %bb.cj ]
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %indvars.iv.i165
  store i32 %.3.i, ptr %i.vn, align 4, !tbaa !191
  %indvars.iv.next.i166 = add nsw i64 %indvars.iv.i165, -1
  %i.vo = icmp sgt i64 %indvars.iv.i165, 0
  br i1 %i.vo, label %bb.cd, label %js_mp_divnorm.exit, !llvm.loop !1788

js_mp_divnorm.exit:                               ; preds = %js_mp_sub_mul1.exit.thread.i, %js_mp_div1norm.exit.i, %js_mp_sub.exit.i
  %i.vp = load ptr, ptr %i.x, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.vp, ptr noundef nonnull %i.cz)
  %i.vq = load ptr, ptr %i.x, align 8, !tbaa !232 ; 2 uses
  br i1 %3, label %bb.ck, label %bb.cq

bb.ck:                                            ; preds = %js_mp_divnorm.exit
  tail call void @js_free_rt(ptr noundef %i.vq, ptr noundef nonnull %i.lo)
  %i.vr = icmp sgt i32 %.0115.lcssa, 0            ; 2 uses
  %or.cond283 = and i1 %i.vr, %.not127
  br i1 %or.cond283, label %.lr.ph.i170, label %js_mp_shr.exit

.lr.ph.i170:                                      ; preds = %bb.ck
  %i.vs = sub nuw nsw i32 32, %i.ji               ; 2 uses
  %i.vt = zext nneg i32 %.0115.lcssa to i64       ; 5 uses
  %min.iters.check = icmp ult i32 %.0115.lcssa, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i170
  %n.vec = and i64 %i.vt, 2147483640              ; 2 uses
  %i.vu = and i64 %i.vt, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.vs, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert387 = insertelement <4 x i32> poison, i32 %i.ji, i64 0
  %broadcast.splat388 = shufflevector <4 x i32> %broadcast.splatinsert387, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %reverse390, %vector.body ]
  %i.vv = sub i64 %i.vt, %index
  %i.vw = getelementptr [4 x i8], ptr %i.ai, i64 %i.vv ; 2 uses
  %i.vx = getelementptr i8, ptr %i.vw, i64 -12    ; 2 uses
  %i.vy = getelementptr i8, ptr %i.vw, i64 -28    ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.vx, align 4, !tbaa !191 ; 3 uses
  %wide.load389 = load <4 x i32>, ptr %i.vy, align 4, !tbaa !191 ; 3 uses
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse390 = shufflevector <4 x i32> %wide.load389, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.vz = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 7, i32 6, i32 5>
  %i.wa = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load389, <4 x i32> <i32 0, i32 7, i32 6, i32 5>
  %i.wb = lshr <4 x i32> %reverse, %broadcast.splat388
  %i.wc = lshr <4 x i32> %reverse390, %broadcast.splat388
  %i.wd = shl <4 x i32> %i.vz, %broadcast.splat
  %i.we = shl <4 x i32> %i.wa, %broadcast.splat
  %i.wf = or disjoint <4 x i32> %i.wb, %i.wd
  %i.wg = or disjoint <4 x i32> %i.wc, %i.we
  %reverse391 = shufflevector <4 x i32> %i.wf, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse392 = shufflevector <4 x i32> %i.wg, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse391, ptr %i.vx, align 4, !tbaa !191
  store <4 x i32> %reverse392, ptr %i.vy, align 4, !tbaa !191
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.wh = icmp eq i64 %index.next, %n.vec
  br i1 %i.wh, label %middle.block, label %vector.body, !llvm.loop !1789

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load389, i64 0
  %cmp.n = icmp eq i64 %n.vec, %i.vt
  br i1 %cmp.n, label %js_mp_shr.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i170, %middle.block
  %indvars.iv.i171.ph = phi i64 [ %i.vt, %.lr.ph.i170 ], [ %i.vu, %middle.block ]
  %.016.i.ph = phi i32 [ 0, %.lr.ph.i170 ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i171 = phi i64 [ %indvars.iv.next.i172, %scalar.ph ], [ %indvars.iv.i171.ph, %scalar.ph.preheader ] ; 3 uses
  %.016.i = phi i32 [ %i.wj, %scalar.ph ], [ %.016.i.ph, %scalar.ph.preheader ]
  %indvars.iv.next.i172 = add nsw i64 %indvars.iv.i171, -1
  %i.wi = getelementptr [4 x i8], ptr %i.ai, i64 %indvars.iv.i171 ; 2 uses
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !191 ; 2 uses
  %i.wk = lshr i32 %i.wj, %i.ji
  %i.wl = shl i32 %.016.i, %i.vs
  %i.wm = or disjoint i32 %i.wk, %i.wl
  store i32 %i.wm, ptr %i.wi, align 4, !tbaa !191
  %i.wn = icmp samesign ugt i64 %indvars.iv.i171, 1
  br i1 %i.wn, label %scalar.ph, label %js_mp_shr.exit, !llvm.loop !1790

js_mp_shr.exit:                                   ; preds = %scalar.ph, %middle.block, %bb.ck
  %i.wo = add i32 %.0115.lcssa, 1                 ; 5 uses
  %i.wp = getelementptr inbounds [4 x i8], ptr %i.mr, i64 %i.je
  store i32 0, ptr %i.wp, align 4, !tbaa !191
  %i.wq = icmp sgt i32 %.0115.lcssa, -1
  %or.cond = and i1 %.not124, %i.wq
  br i1 %or.cond, label %.lr.ph.preheader.i174, label %js_mp_neg.exit181

.lr.ph.preheader.i174:                            ; preds = %js_mp_shr.exit
  %wide.trip.count.i175 = zext nneg i32 %i.wo to i64 ; 2 uses
  %xtraiter445 = and i64 %wide.trip.count.i175, 1
  %i.wr = icmp eq i32 %.0115.lcssa, 0
  br i1 %i.wr, label %.lr.ph.i176.epil.preheader, label %.lr.ph.preheader.i174.new

.lr.ph.preheader.i174.new:                        ; preds = %.lr.ph.preheader.i174
  %unroll_iter448 = and i64 %wide.trip.count.i175, 2147483646
  br label %.lr.ph.i176

.lr.ph.i176:                                      ; preds = %.lr.ph.i176, %.lr.ph.preheader.i174.new
  %indvars.iv.i177 = phi i64 [ 0, %.lr.ph.preheader.i174.new ], [ %indvars.iv.next.i179.1, %.lr.ph.i176 ] ; 3 uses
  %.013.i178 = phi i32 [ 1, %.lr.ph.preheader.i174.new ], [ %i.xe, %.lr.ph.i176 ] ; 2 uses
  %niter449 = phi i64 [ 0, %.lr.ph.preheader.i174.new ], [ %niter449.next.1, %.lr.ph.i176 ]
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv.i177 ; 2 uses
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !191
  %i.wu = xor i32 %i.wt, -1
  %i.wv = add i32 %.013.i178, %i.wu               ; 2 uses
  %i.ww = icmp ult i32 %i.wv, %.013.i178
  %i.wx = zext i1 %i.ww to i32                    ; 2 uses
  store i32 %i.wv, ptr %i.ws, align 4, !tbaa !191
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv.i177
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 4 ; 2 uses
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !191
  %i.xb = xor i32 %i.xa, -1
  %i.xc = add i32 %i.wx, %i.xb                    ; 2 uses
  %i.xd = icmp ult i32 %i.xc, %i.wx
  %i.xe = zext i1 %i.xd to i32                    ; 2 uses
  store i32 %i.xc, ptr %i.wz, align 4, !tbaa !191
  %indvars.iv.next.i179.1 = add nuw nsw i64 %indvars.iv.i177, 2 ; 2 uses
  %niter449.next.1 = add i64 %niter449, 2         ; 2 uses
  %niter449.ncmp.1 = icmp eq i64 %niter449.next.1, %unroll_iter448
  br i1 %niter449.ncmp.1, label %js_mp_neg.exit181.loopexit.unr-lcssa, label %.lr.ph.i176, !llvm.loop !1780

js_mp_neg.exit181.loopexit.unr-lcssa:             ; preds = %.lr.ph.i176
  %lcmp.mod446.not = icmp eq i64 %xtraiter445, 0
  br i1 %lcmp.mod446.not, label %js_mp_neg.exit181, label %.lr.ph.i176.epil.preheader

.lr.ph.i176.epil.preheader:                       ; preds = %js_mp_neg.exit181.loopexit.unr-lcssa, %.lr.ph.preheader.i174
  %indvars.iv.i177.epil.init = phi i64 [ 0, %.lr.ph.preheader.i174 ], [ %indvars.iv.next.i179.1, %js_mp_neg.exit181.loopexit.unr-lcssa ]
  %.013.i178.epil.init = phi i32 [ 1, %.lr.ph.preheader.i174 ], [ %i.xe, %js_mp_neg.exit181.loopexit.unr-lcssa ]
  %lcmp.mod447 = trunc i32 %i.wo to i1
  tail call void @llvm.assume(i1 %lcmp.mod447)
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv.i177.epil.init ; 2 uses
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !191
  %i.xh = xor i32 %i.xg, -1
  %i.xi = add i32 %.013.i178.epil.init, %i.xh
  store i32 %i.xi, ptr %i.xf, align 4, !tbaa !191
  br label %js_mp_neg.exit181

js_mp_neg.exit181:                                ; preds = %.lr.ph.i176.epil.preheader, %js_mp_neg.exit181.loopexit.unr-lcssa, %js_mp_shr.exit
  br i1 %i.vr, label %.lr.ph312.preheader, label %._crit_edge313

.lr.ph312.preheader:                              ; preds = %js_mp_neg.exit181
  %smin = tail call i32 @llvm.smin.i32(i32 %i.wo, i32 2)
  %i.xj = add i32 %smin, -1
  br label %.lr.ph312

.lr.ph312:                                        ; preds = %.lr.ph312.preheader, %bb.cm
  %.0.i182311 = phi i32 [ %i.xt, %bb.cm ], [ %i.wo, %.lr.ph312.preheader ] ; 5 uses
  %i.xk = zext nneg i32 %.0.i182311 to i64
  %i.xl = getelementptr [4 x i8], ptr %i.mr, i64 %i.xk ; 2 uses
  %i.xm = getelementptr i8, ptr %i.xl, i64 -4
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !191 ; 2 uses
  %i.xo = add i32 %i.xn, -1
  %or.cond.i = icmp ult i32 %i.xo, -2
  br i1 %or.cond.i, label %._crit_edge313, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph312
  %i.xp = and i32 %i.xn, 1
  %i.xq = getelementptr i8, ptr %i.xl, i64 -8
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !191
  %i.xs = lshr i32 %i.xr, 31
  %.not.i184 = icmp eq i32 %i.xp, %i.xs
  br i1 %.not.i184, label %bb.cm, label %._crit_edge313

bb.cm:                                            ; preds = %bb.cl
  %i.xt = add nsw i32 %.0.i182311, -1
  %i.xu = icmp sgt i32 %.0.i182311, 2
  br i1 %i.xu, label %.lr.ph312, label %._crit_edge313, !llvm.loop !140

._crit_edge313:                                   ; preds = %bb.cm, %.lr.ph312, %bb.cl, %js_mp_neg.exit181
  %.0.i182.lcssa = phi i32 [ %i.wo, %js_mp_neg.exit181 ], [ %.0.i182311, %bb.cl ], [ %.0.i182311, %.lr.ph312 ], [ %i.xj, %bb.cm ] ; 3 uses
  %i.xv = load i32, ptr %i.ai, align 8, !tbaa !191
  %.not21.i = icmp eq i32 %.0.i182.lcssa, %i.xv
  br i1 %.not21.i, label %js_bigint_new_si.exit, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge313
  store i32 %.0.i182.lcssa, ptr %i.ai, align 8, !tbaa !191
  %i.xw = sext i32 %.0.i182.lcssa to i64
  %i.xx = shl nsw i64 %i.xw, 2
  %i.xy = add nsw i64 %i.xx, 4                    ; 2 uses
  %i.xz = load ptr, ptr %i.x, align 8, !tbaa !232
  %i.ya = tail call ptr @js_realloc_rt(ptr noundef %i.xz, ptr noundef nonnull %i.ai, i64 noundef %i.xy), !inline_history !141 ; 2 uses
  %.not.i225 = icmp eq ptr %i.ya, null            ; 2 uses
  %i.yb = icmp ne i64 %i.xy, 0
  %i.yc = and i1 %i.yb, %.not.i225
  br i1 %i.yc, label %bb.co, label %js_realloc.exit, !prof !192

bb.co:                                            ; preds = %bb.cn
  %i.yd = load ptr, ptr %i.x, align 8, !tbaa !232
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 1256 ; 3 uses
  %i.yf = load i8, ptr %i.ye, align 8, !tbaa !233, !range !234, !noundef !235
  %i.yg = trunc nuw i8 %i.yf to i1
  br i1 %i.yg, label %js_realloc.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i8 1, ptr %i.ye, align 8, !tbaa !233
  %i.yh = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !142 ; 0 uses
end_hunk_1

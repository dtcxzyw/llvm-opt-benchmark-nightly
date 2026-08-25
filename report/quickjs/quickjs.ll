Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 174
begin_hunk_0_@js_array_toSpliced:bb.a
  %i.di = icmp ugt i32 %i.dh, -10
  br i1 %i.di, label %bb.ad, label %js_dup.exit.1

bb.ad:                                            ; preds = %js_dup.exit
  %i.dj = inttoptr i64 %i.de to ptr
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -4 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !8
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !8
  br label %js_dup.exit.1

js_dup.exit.1:                                    ; preds = %bb.ad, %js_dup.exit
  store i64 %i.de, ptr %i.db, align 8, !tbaa !35
  %.sroa.47.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.0204, i64 24
  store i64 %i.dg, ptr %.sroa.47.0..sroa_idx.1, align 8, !tbaa !72
  %i.dn = add nuw nsw i64 %.098203, 2             ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0204, i64 32 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader193.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2153

.lr.ph208:                                        ; preds = %js_dup.exit128.1, %.lr.ph208.preheader.new
  %.1207 = phi ptr [ %.0.lcssa, %.lr.ph208.preheader.new ], [ %i.en, %js_dup.exit128.1 ] ; 5 uses
  %.0102206 = phi i64 [ 0, %.lr.ph208.preheader.new ], [ %i.em, %js_dup.exit128.1 ] ; 3 uses
  %niter295 = phi i64 [ 0, %.lr.ph208.preheader.new ], [ %niter295.next.1, %js_dup.exit128.1 ]
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.0102206 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load i64, ptr %i.dq, align 8            ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  %i.dv = icmp ugt i32 %i.du, -10
  br i1 %i.dv, label %bb.ae, label %js_dup.exit128

bb.ae:                                            ; preds = %.lr.ph208
  %i.dw = inttoptr i64 %i.dr to ptr
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -4 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !8
  %i.dz = add nsw i32 %i.dy, 1
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !8
  br label %js_dup.exit128

js_dup.exit128:                                   ; preds = %.lr.ph208, %bb.ae
  store i64 %i.dr, ptr %.1207, align 8, !tbaa !35
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1207, i64 8
  store i64 %i.dt, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !72
  %i.ea = getelementptr inbounds nuw i8, ptr %.1207, i64 16
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.0102206 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = load i64, ptr %i.ec, align 8            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.ef = load i64, ptr %i.ee, align 8            ; 2 uses
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = icmp ugt i32 %i.eg, -10
  br i1 %i.eh, label %bb.af, label %js_dup.exit128.1

bb.af:                                            ; preds = %js_dup.exit128
  %i.ei = inttoptr i64 %i.ed to ptr
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -4 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !8
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !8
  br label %js_dup.exit128.1

js_dup.exit128.1:                                 ; preds = %bb.af, %js_dup.exit128
  store i64 %i.ed, ptr %i.ea, align 8, !tbaa !35
  %.sroa.45.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.1207, i64 24
  store i64 %i.ef, ptr %.sroa.45.0..sroa_idx.1, align 8, !tbaa !72
  %i.em = add nuw nsw i64 %.0102206, 2            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.1207, i64 32 ; 3 uses
  %niter295.next.1 = add i64 %niter295, 2         ; 2 uses
  %niter295.ncmp.1 = icmp eq i64 %niter295.next.1, %unroll_iter294
  br i1 %niter295.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph208, !llvm.loop !2154

._crit_edge.loopexit.unr-lcssa:                   ; preds = %js_dup.exit128.1
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  br i1 %lcmp.mod291.not, label %._crit_edge, label %.lr.ph208.epil.preheader

.lr.ph208.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph208.preheader
  %.1207.epil.init = phi ptr [ %.0.lcssa, %.lr.ph208.preheader ], [ %i.en, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.0102206.epil.init = phi i64 [ 0, %.lr.ph208.preheader ], [ %i.em, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod293 = trunc i32 %i.ba to i1
  tail call void @llvm.assume(i1 %lcmp.mod293)
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.0102206.epil.init ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = load i64, ptr %i.ep, align 8            ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.es = load i64, ptr %i.er, align 8            ; 2 uses
  %i.et = trunc i64 %i.es to i32
  %i.eu = icmp ugt i32 %i.et, -10
  br i1 %i.eu, label %bb.ag, label %js_dup.exit128.epil

bb.ag:                                            ; preds = %.lr.ph208.epil.preheader
  %i.ev = inttoptr i64 %i.eq to ptr
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -4 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !8
  %i.ey = add nsw i32 %i.ex, 1
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !8
  br label %js_dup.exit128.epil

js_dup.exit128.epil:                              ; preds = %bb.ag, %.lr.ph208.epil.preheader
  store i64 %i.eq, ptr %.1207.epil.init, align 8, !tbaa !35
  %.sroa.45.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %.1207.epil.init, i64 8
  store i64 %i.es, ptr %.sroa.45.0..sroa_idx.epil, align 8, !tbaa !72
  %i.ez = getelementptr inbounds nuw i8, ptr %.1207.epil.init, i64 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %js_dup.exit128.epil, %._crit_edge.loopexit.unr-lcssa, %.preheader193
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader193 ], [ %i.en, %._crit_edge.loopexit.unr-lcssa ], [ %i.ez, %js_dup.exit128.epil ] ; 4 uses
  %i.fa = add nsw i64 %.098.lcssa, %.1153         ; 4 uses
  %i.fb = icmp slt i64 %i.fa, %.pre
  br i1 %i.fb, label %.lr.ph213.preheader, label %JS_ToInt64Clamp.exit.thread183

.lr.ph213.preheader:                              ; preds = %._crit_edge
  %i.fc = add i64 %.1153, %.098.lcssa
  %i.fd = sub i64 %.pre, %i.fc
  %i.fe = xor i64 %.1153, -1
  %i.ff = add i64 %.pre, %i.fe
  %xtraiter296 = and i64 %i.fd, 1
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %.lr.ph213.prol.loopexit, label %.lr.ph213.prol

.lr.ph213.prol:                                   ; preds = %.lr.ph213.preheader
  %i.fg = getelementptr inbounds [16 x i8], ptr %i.ca, i64 %i.fa ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8            ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fj = load i64, ptr %i.fi, align 8            ; 2 uses
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = icmp ugt i32 %i.fk, -10
  br i1 %i.fl, label %bb.ah, label %js_dup.exit131.prol

bb.ah:                                            ; preds = %.lr.ph213.prol
  %i.fm = inttoptr i64 %i.fh to ptr
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !8
  %i.fp = add nsw i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !8
  br label %js_dup.exit131.prol

js_dup.exit131.prol:                              ; preds = %bb.ah, %.lr.ph213.prol
  store i64 %i.fh, ptr %.1.lcssa, align 8, !tbaa !35
  %.sroa.43.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  store i64 %i.fj, ptr %.sroa.43.0..sroa_idx.prol, align 8, !tbaa !72
  %i.fq = add nsw i64 %i.fa, 1
  %i.fr = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 16
  br label %.lr.ph213.prol.loopexit

.lr.ph213.prol.loopexit:                          ; preds = %js_dup.exit131.prol, %.lr.ph213.preheader
  %.2211.unr = phi ptr [ %.1.lcssa, %.lr.ph213.preheader ], [ %i.fr, %js_dup.exit131.prol ]
  %.199210.unr = phi i64 [ %i.fa, %.lr.ph213.preheader ], [ %i.fq, %js_dup.exit131.prol ]
  %i.fs = icmp eq i64 %i.ff, %.098.lcssa
  br i1 %i.fs, label %JS_ToInt64Clamp.exit.thread183, label %.lr.ph213

.lr.ph213:                                        ; preds = %.lr.ph213.prol.loopexit, %js_dup.exit131.1
  %.2211 = phi ptr [ %i.gq, %js_dup.exit131.1 ], [ %.2211.unr, %.lr.ph213.prol.loopexit ] ; 5 uses
  %.199210 = phi i64 [ %i.gp, %js_dup.exit131.1 ], [ %.199210.unr, %.lr.ph213.prol.loopexit ] ; 3 uses
  %i.ft = getelementptr inbounds [16 x i8], ptr %i.ca, i64 %.199210 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8            ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = load i64, ptr %i.fv, align 8            ; 2 uses
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = icmp ugt i32 %i.fx, -10
  br i1 %i.fy, label %bb.ai, label %js_dup.exit131

bb.ai:                                            ; preds = %.lr.ph213
  %i.fz = inttoptr i64 %i.fu to ptr
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -4 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !8
  %i.gc = add nsw i32 %i.gb, 1
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !8
  br label %js_dup.exit131

js_dup.exit131:                                   ; preds = %.lr.ph213, %bb.ai
  store i64 %i.fu, ptr %.2211, align 8, !tbaa !35
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2211, i64 8
  store i64 %i.fw, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !72
  %i.gd = getelementptr inbounds nuw i8, ptr %.2211, i64 16
  %i.ge = getelementptr [16 x i8], ptr %i.ca, i64 %.199210 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 16
  %i.gg = load i64, ptr %i.gf, align 8            ; 2 uses
  %i.gh = getelementptr i8, ptr %i.ge, i64 24
  %i.gi = load i64, ptr %i.gh, align 8            ; 2 uses
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = icmp ugt i32 %i.gj, -10
  br i1 %i.gk, label %bb.aj, label %js_dup.exit131.1

bb.aj:                                            ; preds = %js_dup.exit131
  %i.gl = inttoptr i64 %i.gg to ptr
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 -4 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !8
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !8
  br label %js_dup.exit131.1

js_dup.exit131.1:                                 ; preds = %bb.aj, %js_dup.exit131
  store i64 %i.gg, ptr %i.gd, align 8, !tbaa !35
  %.sroa.43.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.2211, i64 24
  store i64 %i.gi, ptr %.sroa.43.0..sroa_idx.1, align 8, !tbaa !72
  %i.gp = add nsw i64 %.199210, 2                 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.2211, i64 32
  %5 = icmp slt i64 %i.gp, %.pre
  br i1 %5, label %.lr.ph213, label %JS_ToInt64Clamp.exit.thread183, !llvm.loop !2155

js_get_fast_array.exit.thread:                    ; preds = %bb.y, %bb.z, %bb.x, %bb.aa
  %i.gr = icmp sgt i64 %.0156169, 0
  br i1 %i.gr, label %.lr.ph216, label %.preheader

.preheader:                                       ; preds = %bb.ak, %js_get_fast_array.exit.thread
  %.2100.lcssa = phi i64 [ 0, %js_get_fast_array.exit.thread ], [ %.0156169, %bb.ak ]
  %.3.lcssa = phi ptr [ %i.bn, %js_get_fast_array.exit.thread ], [ %i.gw, %bb.ak ] ; 3 uses
  %.not229 = icmp eq i32 %narrow, 0
  br i1 %.not229, label %._crit_edge222, label %.lr.ph221.preheader

.lr.ph221.preheader:                              ; preds = %.preheader
  %xtraiter298 = and i64 %.0104, 1
  %i.gs = icmp eq i32 %3, 3
  br i1 %i.gs, label %.lr.ph221.epil.preheader, label %.lr.ph221.preheader.new

.lr.ph221.preheader.new:                          ; preds = %.lr.ph221.preheader
  %unroll_iter302 = and i64 %.0104, 2147483646
  br label %.lr.ph221

.lr.ph216:                                        ; preds = %js_get_fast_array.exit.thread, %bb.ak
  %.3215 = phi ptr [ %i.gw, %bb.ak ], [ %i.bn, %js_get_fast_array.exit.thread ] ; 2 uses
  %.2100214 = phi i64 [ %i.gv, %bb.ak ], [ 0, %js_get_fast_array.exit.thread ] ; 2 uses
  %i.gt = tail call fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %i.c, i64 %i.d, i64 noundef %.2100214, ptr noundef %.3215)
  %i.gu = icmp eq i32 %i.gt, -1
  br i1 %i.gu, label %JS_ToInt64Clamp.exit, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph216
  %i.gv = add nuw nsw i64 %.2100214, 1            ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.3215, i64 16 ; 2 uses
  %exitcond244.not = icmp eq i64 %i.gv, %.0156169
  br i1 %exitcond244.not, label %.preheader, label %.lr.ph216, !llvm.loop !2156

.lr.ph221:                                        ; preds = %js_dup.exit134.1, %.lr.ph221.preheader.new
  %.4220 = phi ptr [ %.3.lcssa, %.lr.ph221.preheader.new ], [ %i.hv, %js_dup.exit134.1 ] ; 5 uses
  %.1103219 = phi i64 [ 0, %.lr.ph221.preheader.new ], [ %i.hu, %js_dup.exit134.1 ] ; 3 uses
  %niter303 = phi i64 [ 0, %.lr.ph221.preheader.new ], [ %niter303.next.1, %js_dup.exit134.1 ]
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.1103219 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.gz = load i64, ptr %i.gy, align 8            ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.hb = load i64, ptr %i.ha, align 8            ; 2 uses
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = icmp ugt i32 %i.hc, -10
  br i1 %i.hd, label %bb.al, label %js_dup.exit134

bb.al:                                            ; preds = %.lr.ph221
  %i.he = inttoptr i64 %i.gz to ptr
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 -4 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !8
  %i.hh = add nsw i32 %i.hg, 1
  store i32 %i.hh, ptr %i.hf, align 4, !tbaa !8
  br label %js_dup.exit134

js_dup.exit134:                                   ; preds = %.lr.ph221, %bb.al
  store i64 %i.gz, ptr %.4220, align 8, !tbaa !35
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.4220, i64 8
  store i64 %i.hb, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !72
  %i.hi = getelementptr inbounds nuw i8, ptr %.4220, i64 16
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.1103219 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 48
  %i.hl = load i64, ptr %i.hk, align 8            ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  %i.hn = load i64, ptr %i.hm, align 8            ; 2 uses
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = icmp ugt i32 %i.ho, -10
  br i1 %i.hp, label %bb.am, label %js_dup.exit134.1

bb.am:                                            ; preds = %js_dup.exit134
  %i.hq = inttoptr i64 %i.hl to ptr
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -4 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !8
  %i.ht = add nsw i32 %i.hs, 1
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !8
  br label %js_dup.exit134.1

js_dup.exit134.1:                                 ; preds = %bb.am, %js_dup.exit134
  store i64 %i.hl, ptr %i.hi, align 8, !tbaa !35
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.4220, i64 24
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx.1, align 8, !tbaa !72
  %i.hu = add nuw nsw i64 %.1103219, 2            ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.4220, i64 32 ; 3 uses
  %niter303.next.1 = add i64 %niter303, 2         ; 2 uses
  %niter303.ncmp.1 = icmp eq i64 %niter303.next.1, %unroll_iter302
  br i1 %niter303.ncmp.1, label %._crit_edge222.loopexit.unr-lcssa, label %.lr.ph221, !llvm.loop !2157

._crit_edge222.loopexit.unr-lcssa:                ; preds = %js_dup.exit134.1
  %lcmp.mod299.not = icmp eq i64 %xtraiter298, 0
  br i1 %lcmp.mod299.not, label %._crit_edge222, label %.lr.ph221.epil.preheader

.lr.ph221.epil.preheader:                         ; preds = %._crit_edge222.loopexit.unr-lcssa, %.lr.ph221.preheader
  %.4220.epil.init = phi ptr [ %.3.lcssa, %.lr.ph221.preheader ], [ %i.hv, %._crit_edge222.loopexit.unr-lcssa ] ; 3 uses
  %.1103219.epil.init = phi i64 [ 0, %.lr.ph221.preheader ], [ %i.hu, %._crit_edge222.loopexit.unr-lcssa ]
  %lcmp.mod301 = trunc i32 %i.ba to i1
  tail call void @llvm.assume(i1 %lcmp.mod301)
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.1103219.epil.init ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  %i.hy = load i64, ptr %i.hx, align 8            ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  %i.ia = load i64, ptr %i.hz, align 8            ; 2 uses
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = icmp ugt i32 %i.ib, -10
  br i1 %i.ic, label %bb.an, label %js_dup.exit134.epil

bb.an:                                            ; preds = %.lr.ph221.epil.preheader
  %i.id = inttoptr i64 %i.hy to ptr
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 -4 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !8
  %i.ig = add nsw i32 %i.if, 1
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !8
  br label %js_dup.exit134.epil

js_dup.exit134.epil:                              ; preds = %bb.an, %.lr.ph221.epil.preheader
  store i64 %i.hy, ptr %.4220.epil.init, align 8, !tbaa !35
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %.4220.epil.init, i64 8
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx.epil, align 8, !tbaa !72
  %i.ih = getelementptr inbounds nuw i8, ptr %.4220.epil.init, i64 16
  br label %._crit_edge222

._crit_edge222:                                   ; preds = %js_dup.exit134.epil, %._crit_edge222.loopexit.unr-lcssa, %.preheader
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader ], [ %i.hv, %._crit_edge222.loopexit.unr-lcssa ], [ %i.ih, %js_dup.exit134.epil ]
  %i.ii = add nsw i64 %.2100.lcssa, %.1153        ; 2 uses
  %i.ij = icmp slt i64 %i.ii, %.pre
  br i1 %i.ij, label %.lr.ph227, label %JS_ToInt64Clamp.exit.thread183

.lr.ph227:                                        ; preds = %._crit_edge222, %bb.ao
  %.5225 = phi ptr [ %i.in, %bb.ao ], [ %.4.lcssa, %._crit_edge222 ] ; 2 uses
  %.3101224 = phi i64 [ %i.im, %bb.ao ], [ %i.ii, %._crit_edge222 ] ; 2 uses
  %i.ik = tail call fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %i.c, i64 %i.d, i64 noundef %.3101224, ptr noundef %.5225)
  %i.il = icmp eq i32 %i.ik, -1
  br i1 %i.il, label %JS_ToInt64Clamp.exit, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph227
  %i.im = add nsw i64 %.3101224, 1                ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.5225, i64 16
  %6 = icmp slt i64 %i.im, %.pre
  br i1 %6, label %.lr.ph227, label %JS_ToInt64Clamp.exit.thread183, !llvm.loop !2158

JS_ToInt64Clamp.exit.thread183:                   ; preds = %bb.j, %js_dup.exit.i, %js_dup.exit.i111, %bb.t, %.lr.ph213.prol.loopexit, %js_dup.exit131.1, %bb.ao, %._crit_edge, %._crit_edge222, %bb.w, %bb.a, %bb.u
  %.ph182 = phi i64 [ %i.bg, %bb.w ], [ %i.bg, %._crit_edge222 ], [ %i.bg, %bb.ao ], [ 0, %bb.a ], [ 0, %bb.u ], [ %i.bg, %._crit_edge ], [ 0, %js_dup.exit.i111 ], [ %i.bg, %.lr.ph213.prol.loopexit ], [ %i.bg, %js_dup.exit131.1 ], [ 0, %bb.t ], [ 0, %js_dup.exit.i ], [ 0, %bb.j ]
  %.sroa.497.0.ph = phi i64 [ %i.bh, %bb.w ], [ %i.bh, %._crit_edge222 ], [ %i.bh, %bb.ao ], [ 6, %bb.a ], [ 6, %bb.u ], [ %i.bh, %._crit_edge ], [ 6, %js_dup.exit.i111 ], [ %i.bh, %.lr.ph213.prol.loopexit ], [ %i.bh, %js_dup.exit131.1 ], [ 6, %bb.t ], [ 6, %js_dup.exit.i ], [ 6, %bb.j ]
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %JS_FreeValue.exit

JS_ToInt64Clamp.exit:                             ; preds = %.lr.ph216, %.lr.ph227, %bb.v
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !50
  %i.ir = trunc i64 %i.bh to i32
  %i.is = icmp ugt i32 %i.ir, -10
  br i1 %i.is, label %bb.ap, label %JS_FreeValue.exit

bb.ap:                                            ; preds = %JS_ToInt64Clamp.exit
  %i.it = inttoptr i64 %i.bg to ptr
  %i.iu = getelementptr inbounds i8, ptr %i.it, i64 -4 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !8  ; 2 uses
  %i.iw = add nsw i32 %i.iv, -1
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !8
  %i.ix = icmp slt i32 %i.iv, 2
  br i1 %i.ix, label %bb.aq, label %JS_FreeValue.exit

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @js_free_value_rt(ptr noundef %i.iq, i64 %i.bg, i64 %i.bh), !inline_history !143
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %JS_ToInt64Clamp.exit.thread183, %JS_ToInt64Clamp.exit, %bb.ap, %bb.aq
  %i.iy = phi ptr [ %i.io, %JS_ToInt64Clamp.exit.thread183 ], [ %i.ip, %JS_ToInt64Clamp.exit ], [ %i.ip, %bb.ap ], [ %i.ip, %bb.aq ]
  %.sroa.497.0187 = phi i64 [ %.sroa.497.0.ph, %JS_ToInt64Clamp.exit.thread183 ], [ 6, %JS_ToInt64Clamp.exit ], [ 6, %bb.ap ], [ 6, %bb.aq ]
  %i.iz = phi i64 [ %.ph182, %JS_ToInt64Clamp.exit.thread183 ], [ 0, %JS_ToInt64Clamp.exit ], [ 0, %bb.ap ], [ 0, %bb.aq ]
  %i.ja = load ptr, ptr %i.iy, align 8, !tbaa !50
  %i.jb = trunc i64 %i.d to i32
  %i.jc = icmp ugt i32 %i.jb, -10
  br i1 %i.jc, label %bb.ar, label %JS_FreeValue.exit135

bb.ar:                                            ; preds = %JS_FreeValue.exit
  %i.jd = inttoptr i64 %i.c to ptr
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 -4 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !8  ; 2 uses
  %i.jg = add nsw i32 %i.jf, -1
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !8
  %i.jh = icmp slt i32 %i.jf, 2
  br i1 %i.jh, label %bb.as, label %JS_FreeValue.exit135

bb.as:                                            ; preds = %bb.ar
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ja, i64 %i.c, i64 %i.d), !inline_history !143
  br label %JS_FreeValue.exit135

JS_FreeValue.exit135:                             ; preds = %JS_FreeValue.exit, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.iz, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.497.0187, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_array_copyWithin(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.c = tail call { i64, i64 } @JS_ToObject(ptr noundef %0, i64 %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 5 uses
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 5 uses
  %i.f = call fastcc i32 @js_get_length64(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.d, i64 %i.e)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %JS_ToInt64Clamp.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !72   ; 10 uses
  %i.h = load i64, ptr %4, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp ugt i32 %i.k, -10
  br i1 %i.l, label %bb.c, label %js_dup.exit.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.m = inttoptr i64 %i.h to ptr
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !8
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !8
  br label %js_dup.exit.i.preheader

js_dup.exit.i.preheader:                          ; preds = %bb.c, %bb.b
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.i
  %.sroa.012.0.in.i.i = phi i64 [ %i.x, %bb.i ], [ %i.h, %js_dup.exit.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.y, %bb.i ], [ %i.j, %js_dup.exit.i.preheader ] ; 2 uses
  %i.q = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.q, label %bb.i [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 6, label %JS_ToInt64Clamp.exit
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %sext.i.i = shl i64 %.sroa.012.0.in.i.i, 32
  %i.r = ashr exact i64 %sext.i.i, 32
  br label %bb.j

bb.e:                                             ; preds = %js_dup.exit.i
  %.sroa.012.0.le.i.i = bitcast i64 %.sroa.012.0.in.i.i to double ; 4 uses
  %i.s = fcmp uno double %.sroa.012.0.le.i.i, 0.000000e+00
  br i1 %i.s, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = fcmp olt double %.sroa.012.0.le.i.i, f0xC3E0000000000000
  br i1 %i.t, label %.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = fcmp ult double %.sroa.012.0.le.i.i, f0x43E0000000000000
  br i1 %i.u, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.v = fptosi double %.sroa.012.0.le.i.i to i64
  br label %bb.j

bb.i:                                             ; preds = %js_dup.exit.i
  %i.w = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.012.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !1101 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1        ; 2 uses
  %i.z = and i64 %i.y, 4294967295
  %i.aa = icmp eq i64 %i.z, 6
  br i1 %i.aa, label %JS_ToInt64Clamp.exit, label %js_dup.exit.i

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink.i.ph.i = phi i64 [ %i.r, %bb.d ], [ %i.v, %bb.h ] ; 3 uses
  %i.ab = icmp slt i64 %.sink.i.ph.i, 0
  br i1 %i.ab, label %.sink.split.i, label %bb.k

.sink.split.i:                                    ; preds = %bb.f, %bb.j
  %.sink.i.ph27.i = phi i64 [ %.sink.i.ph.i, %bb.j ], [ -9223372036854775808, %bb.f ]
  %i.ac = add nsw i64 %.sink.i.ph27.i, %i.g
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 0)
  br label %.thread

bb.k:                                             ; preds = %bb.j, %bb.e, %bb.g
  %.0.ph = phi i64 [ 9223372036854775807, %bb.g ], [ 0, %bb.e ], [ %.sink.i.ph.i, %bb.j ]
  %spec.select62 = tail call i64 @llvm.smin.i64(i64 %.0.ph, i64 %i.g)
  br label %.thread

.thread:                                          ; preds = %bb.k, %.sink.split.i
  %.1.ph = phi i64 [ %spec.select62, %bb.k ], [ %spec.select, %.sink.split.i ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = icmp ugt i32 %i.ah, -10
  br i1 %i.ai, label %bb.l, label %js_dup.exit.i26.preheader

bb.l:                                             ; preds = %.thread
  %i.aj = inttoptr i64 %i.ae to ptr
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !8
  br label %js_dup.exit.i26.preheader

js_dup.exit.i26.preheader:                        ; preds = %bb.l, %.thread
  br label %js_dup.exit.i26

js_dup.exit.i26:                                  ; preds = %js_dup.exit.i26.preheader, %bb.r
  %.sroa.012.0.in.i.i27 = phi i64 [ %i.au, %bb.r ], [ %i.ae, %js_dup.exit.i26.preheader ] ; 3 uses
  %.sroa.6.0.i.i28 = phi i64 [ %i.av, %bb.r ], [ %i.ag, %js_dup.exit.i26.preheader ] ; 2 uses
  %i.an = trunc i64 %.sroa.6.0.i.i28 to i32
  switch i32 %i.an, label %bb.r [
    i32 0, label %bb.m
    i32 1, label %bb.m
    i32 2, label %bb.m
    i32 3, label %bb.m
    i32 6, label %JS_ToInt64Clamp.exit
    i32 8, label %bb.n
  ]

bb.m:                                             ; preds = %js_dup.exit.i26, %js_dup.exit.i26, %js_dup.exit.i26, %js_dup.exit.i26
  %sext.i.i39 = shl i64 %.sroa.012.0.in.i.i27, 32
  %i.ao = ashr exact i64 %sext.i.i39, 32
  br label %bb.s

bb.n:                                             ; preds = %js_dup.exit.i26
  %.sroa.012.0.le.i.i29 = bitcast i64 %.sroa.012.0.in.i.i27 to double ; 4 uses
  %i.ap = fcmp uno double %.sroa.012.0.le.i.i29, 0.000000e+00
  br i1 %i.ap, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = fcmp olt double %.sroa.012.0.le.i.i29, f0xC3E0000000000000
  br i1 %i.aq, label %.sink.split.i30, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = fcmp ult double %.sroa.012.0.le.i.i29, f0x43E0000000000000
  br i1 %i.ar, label %bb.q, label %bb.t
end_hunk_0

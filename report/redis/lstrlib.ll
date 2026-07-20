inline.NumInlined: 39
inline.NumDeleted: 21
begin_hunk_0_@match:bb.a
check_capture.exit.i:                             ; preds = %bb.bg, %bb.bf
  %.0.i.i = phi i32 [ %i.fp, %bb.bg ], [ %i.fg, %bb.bf ]
  %i.fq = sext i32 %.0.i.i to i64
  %i.fr = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !33 ; 3 uses
  %i.fu = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %.075.ph.ph to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %.not.i113 = icmp ult i64 %i.fx, %i.ft
  br i1 %.not.i113, label %start_capture.exit, label %bb.bh

bb.bh:                                            ; preds = %check_capture.exit.i
  %i.fy = load ptr, ptr %i.fr, align 8, !tbaa !35
  %bcmp.i = tail call i32 @bcmp(ptr %i.fy, ptr %.075.ph.ph, i64 %i.ft)
  %i.fz = icmp ne i32 %bcmp.i, 0
  %i.ga = icmp eq ptr %.075.ph.ph, null
  %or.cond = select i1 %i.fz, i1 true, i1 %i.ga
  br i1 %or.cond, label %start_capture.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gb = getelementptr inbounds nuw i8, ptr %.075.ph.ph, i64 %i.ft
  %i.gc = getelementptr inbounds nuw i8, ptr %.077, i64 2
  br label %.outer.outer.backedge

bb.bj:                                            ; preds = %bb.b
  %i.gd = getelementptr inbounds nuw i8, ptr %.077, i64 1 ; 3 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !10
  %i.gf = icmp eq i8 %i.ge, 0
  br i1 %i.gf, label %bb.bk, label %classend.exit124

bb.bk:                                            ; preds = %bb.bj
  %i.gg = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.gh = icmp eq ptr %.075.ph.ph, %i.gg
  %i.gi = select i1 %i.gh, ptr %.075.ph.ph, ptr null
  br label %start_capture.exit

bb.bl:                                            ; preds = %bb.b
  %i.gj = getelementptr inbounds nuw i8, ptr %.077, i64 1 ; 5 uses
  %cond = icmp eq i8 %i.g, 91
  br i1 %cond, label %bb.bo, label %classend.exit124

bb.bm:                                            ; preds = %.thread198
  %i.gk = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.gl = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.gk, ptr noundef nonnull @.str.24) #10 ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.thread198
  %i.gm = getelementptr inbounds nuw i8, ptr %.077, i64 2
  br label %classend.exit124

bb.bo:                                            ; preds = %bb.bl
  %i.gn = load i8, ptr %i.gj, align 1, !tbaa !10
  %i.go = icmp eq i8 %i.gn, 94
  %i.gp = getelementptr inbounds nuw i8, ptr %.077, i64 2
  %spec.select.i115 = select i1 %i.go, ptr %i.gp, ptr %i.gj ; 2 uses
  %.pr.i116 = load i8, ptr %spec.select.i115, align 1, !tbaa !10
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bt, %bb.bo
  %i.gq = phi i8 [ %i.gz, %bb.bt ], [ %.pr.i116, %bb.bo ] ; 2 uses
  %.1.i117 = phi ptr [ %.2.i118, %bb.bt ], [ %spec.select.i115, %bb.bo ] ; 3 uses
  %i.gr = icmp eq i8 %i.gq, 0
  br i1 %i.gr, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.gt = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.gs, ptr noundef nonnull @.str.25) #10 ; 0 uses
  %.pre.i123 = load i8, ptr %.1.i117, align 1, !tbaa !10
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.gu = phi i8 [ %.pre.i123, %bb.bq ], [ %i.gq, %bb.bp ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.1.i117, i64 1 ; 3 uses
  %i.gw = icmp eq i8 %i.gu, 37
  br i1 %i.gw, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.gx = load i8, ptr %i.gv, align 1, !tbaa !10
  %.not.i121 = icmp eq i8 %i.gx, 0
  %i.gy = getelementptr inbounds nuw i8, ptr %.1.i117, i64 2
  %spec.select17.i122 = select i1 %.not.i121, ptr %i.gv, ptr %i.gy
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.2.i118 = phi ptr [ %i.gv, %bb.br ], [ %spec.select17.i122, %bb.bs ] ; 3 uses
  %i.gz = load i8, ptr %.2.i118, align 1, !tbaa !10 ; 2 uses
  %.not16.i119 = icmp eq i8 %i.gz, 93
  br i1 %.not16.i119, label %bb.bu, label %bb.bp, !llvm.loop !48

bb.bu:                                            ; preds = %bb.bt
  %i.ha = getelementptr inbounds nuw i8, ptr %.2.i118, i64 1
  br label %classend.exit124

classend.exit124:                                 ; preds = %bb.bj, %bb.bl, %bb.bn, %bb.bu
  %i.hb = phi ptr [ %i.gj, %bb.bu ], [ %i.ex, %bb.bn ], [ %i.gj, %bb.bl ], [ %i.gd, %bb.bj ] ; 12 uses
  %.015.i120 = phi ptr [ %i.ha, %bb.bu ], [ %i.gm, %bb.bn ], [ %i.gj, %bb.bl ], [ %i.gd, %bb.bj ] ; 11 uses
  %i.hc = load ptr, ptr %i.b, align 8, !tbaa !29  ; 4 uses
  %i.hd = icmp ult ptr %.075.ph.ph, %i.hc         ; 2 uses
  br i1 %i.hd, label %bb.bv, label %singlematch.exit

bb.bv:                                            ; preds = %classend.exit124
  %i.he = load i8, ptr %.075.ph.ph, align 1, !tbaa !10 ; 5 uses
  %i.hf = zext i8 %i.he to i32                    ; 2 uses
  %i.hg = load i8, ptr %.077, align 1, !tbaa !10  ; 2 uses
  switch i8 %i.hg, label %bb.cf [
    i8 46, label %singlematch.exit
    i8 37, label %bb.bw
    i8 91, label %bb.bx
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.hh = load i8, ptr %i.hb, align 1, !tbaa !10
  %i.hi = zext i8 %i.hh to i32
  %i.hj = tail call fastcc i32 @match_class(i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.hi)
  %i.hk = icmp ne i32 %i.hj, 0
  br label %singlematch.exit

bb.bx:                                            ; preds = %bb.bv
  %i.hl = getelementptr inbounds i8, ptr %.015.i120, i64 -1 ; 3 uses
  %i.hm = load i8, ptr %i.hb, align 1, !tbaa !10
  %i.hn = icmp eq i8 %i.hm, 94                    ; 4 uses
  %spec.select.i.i = select i1 %i.hn, ptr %i.hb, ptr %.077 ; 2 uses
  %not..i.i = xor i1 %i.hn, true                  ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 1 ; 2 uses
  %i.hp = icmp ult ptr %i.ho, %i.hl
  br i1 %i.hp, label %.lr.ph.i.i, label %singlematch.exit

.lr.ph.i.i:                                       ; preds = %bb.bx, %bb.ce
  %i.hq = phi ptr [ %i.ic, %bb.ce ], [ %i.ho, %bb.bx ] ; 2 uses
  %.131.i.i = phi ptr [ %.2.i.i, %bb.ce ], [ %spec.select.i.i, %bb.bx ] ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !10  ; 3 uses
  %i.hs = icmp eq i8 %i.hr, 37
  %i.ht = getelementptr inbounds nuw i8, ptr %.131.i.i, i64 2 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !10  ; 2 uses
  br i1 %i.hs, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.lr.ph.i.i
  %i.hv = zext i8 %i.hu to i32
  %i.hw = tail call fastcc i32 @match_class(i32 noundef range(i32 0, 256) %i.hf, i32 noundef %i.hv)
  %.not29.i.i = icmp eq i32 %i.hw, 0
  br i1 %.not29.i.i, label %bb.ce, label %singlematch.exit

bb.bz:                                            ; preds = %.lr.ph.i.i
  %i.hx = icmp eq i8 %i.hu, 45
  br i1 %i.hx, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.hy = getelementptr inbounds nuw i8, ptr %.131.i.i, i64 3 ; 4 uses
  %i.hz = icmp ult ptr %i.hy, %i.hl
  br i1 %i.hz, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %.not.i.i126 = icmp ult i8 %i.he, %i.hr
  br i1 %.not.i.i126, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ia = load i8, ptr %i.hy, align 1, !tbaa !10
  %.not28.i.i = icmp ult i8 %i.ia, %i.he
  br i1 %.not28.i.i, label %bb.ce, label %singlematch.exit

bb.cd:                                            ; preds = %bb.ca, %bb.bz
  %i.ib = icmp eq i8 %i.he, %i.hr
  br i1 %i.ib, label %singlematch.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.by
  %.2.i.i = phi ptr [ %i.ht, %bb.by ], [ %i.hy, %bb.cc ], [ %i.hy, %bb.cb ], [ %i.hq, %bb.cd ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 1 ; 2 uses
  %i.id = icmp ult ptr %i.ic, %i.hl
  br i1 %i.id, label %.lr.ph.i.i, label %singlematch.exit, !llvm.loop !49

bb.cf:                                            ; preds = %bb.bv
  %i.ie = icmp eq i8 %i.he, %i.hg
  br label %singlematch.exit

singlematch.exit:                                 ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.by, %bb.cf, %bb.bw, %bb.bv, %bb.bx, %classend.exit124
  %i.if = phi i1 [ false, %classend.exit124 ], [ %i.ie, %bb.cf ], [ true, %bb.bv ], [ %i.hk, %bb.bw ], [ %i.hn, %bb.bx ], [ %i.hn, %bb.ce ], [ %not..i.i, %bb.cc ], [ %not..i.i, %bb.cd ], [ %not..i.i, %bb.by ] ; 3 uses
  %i.ig = load i8, ptr %.015.i120, align 1, !tbaa !10
  switch i8 %i.ig, label %bb.dv [
    i8 63, label %bb.cg
    i8 42, label %.preheader
    i8 43, label %bb.cv
    i8 45, label %.preheader217
  ]

.preheader217:                                    ; preds = %singlematch.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %.015.i120, i64 1 ; 2 uses
  %i.ii = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %.075.ph.ph, ptr noundef nonnull %i.ih), !inline_history !50 ; 2 uses
  %.not.i141266 = icmp eq ptr %i.ii, null
  br i1 %.not.i141266, label %.lr.ph, label %start_capture.exit

.lr.ph:                                           ; preds = %.preheader217
  %i.ij = getelementptr inbounds i8, ptr %.015.i120, i64 -1 ; 3 uses
  br label %bb.dj

.preheader:                                       ; preds = %singlematch.exit
  br i1 %i.hd, label %.lr.ph276, label %.critedge.i

.lr.ph276:                                        ; preds = %.preheader
  %.075.ph.lcssa351354 = ptrtoint ptr %.075.ph.ph to i64
  %.lcssa341344 = ptrtoint ptr %i.hc to i64
  %i.ik = load i8, ptr %.077, align 1, !tbaa !10  ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %.015.i120, i64 -1 ; 3 uses
  %i.im = sub i64 %.lcssa341344, %.075.ph.lcssa351354 ; 2 uses
  br label %bb.cj

bb.cg:                                            ; preds = %singlematch.exit
  br i1 %i.if, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.in = getelementptr inbounds nuw i8, ptr %.015.i120, i64 1
  %i.io = tail call fastcc ptr @match(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.in) ; 2 uses
  %.not90 = icmp eq ptr %i.io, null
  br i1 %.not90, label %bb.ci, label %start_capture.exit

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ip = getelementptr inbounds nuw i8, ptr %.015.i120, i64 1
  br label %.outer

bb.cj:                                            ; preds = %.lr.ph276, %singlematch.exit158.thread
  %.018.i275 = phi i64 [ 0, %.lr.ph276 ], [ %i.jp, %singlematch.exit158.thread ] ; 6 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.075.ph.ph, i64 %.018.i275
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !10  ; 5 uses
  %i.is = zext i8 %i.ir to i32                    ; 2 uses
  switch i8 %i.ik, label %bb.ct [
    i8 46, label %singlematch.exit158.thread
    i8 37, label %bb.ck
    i8 91, label %bb.cl
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.it = load i8, ptr %i.hb, align 1, !tbaa !10
  %i.iu = zext i8 %i.it to i32
  %i.iv = tail call fastcc i32 @match_class(i32 noundef range(i32 0, 256) %i.is, i32 noundef %i.iu)
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %.critedge.i, label %singlematch.exit158.thread

bb.cl:                                            ; preds = %bb.cj
  %i.ix = load i8, ptr %i.hb, align 1, !tbaa !10
  %i.iy = icmp eq i8 %i.ix, 94                    ; 4 uses
  %spec.select.i.i145 = select i1 %i.iy, ptr %i.hb, ptr %.077 ; 2 uses
  %not..i.i146 = xor i1 %i.iy, true               ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %spec.select.i.i145, i64 1 ; 2 uses
  %i.ja = icmp ult ptr %i.iz, %i.il
  br i1 %i.ja, label %.lr.ph.i.i152, label %singlematch.exit158

.lr.ph.i.i152:                                    ; preds = %bb.cl, %bb.cs
  %i.jb = phi ptr [ %i.jn, %bb.cs ], [ %i.iz, %bb.cl ] ; 2 uses
  %.131.i.i153 = phi ptr [ %.2.i.i154, %bb.cs ], [ %spec.select.i.i145, %bb.cl ] ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !10  ; 3 uses
  %i.jd = icmp eq i8 %i.jc, 37
  %i.je = getelementptr inbounds nuw i8, ptr %.131.i.i153, i64 2 ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !10  ; 2 uses
  br i1 %i.jd, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.lr.ph.i.i152
  %i.jg = zext i8 %i.jf to i32
  %i.jh = tail call fastcc i32 @match_class(i32 noundef range(i32 0, 256) %i.is, i32 noundef %i.jg)
  %.not29.i.i157 = icmp eq i32 %i.jh, 0
  br i1 %.not29.i.i157, label %bb.cs, label %matchbracketclass.exit.i147.loopexit

bb.cn:                                            ; preds = %.lr.ph.i.i152
  %i.ji = icmp eq i8 %i.jf, 45
  br i1 %i.ji, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.jj = getelementptr inbounds nuw i8, ptr %.131.i.i153, i64 3 ; 4 uses
  %i.jk = icmp ult ptr %i.jj, %i.il
  br i1 %i.jk, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %.not.i.i155 = icmp ult i8 %i.ir, %i.jc
  br i1 %.not.i.i155, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jl = load i8, ptr %i.jj, align 1, !tbaa !10
  %.not28.i.i156 = icmp ult i8 %i.jl, %i.ir
  br i1 %.not28.i.i156, label %bb.cs, label %matchbracketclass.exit.i147.loopexit

bb.cr:                                            ; preds = %bb.co, %bb.cn
  %i.jm = icmp eq i8 %i.ir, %i.jc
  br i1 %i.jm, label %matchbracketclass.exit.i147.loopexit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.cm
  %.2.i.i154 = phi ptr [ %i.je, %bb.cm ], [ %i.jj, %bb.cq ], [ %i.jj, %bb.cp ], [ %i.jb, %bb.cr ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.2.i.i154, i64 1 ; 2 uses
  %i.jo = icmp ult ptr %i.jn, %i.il
  br i1 %i.jo, label %.lr.ph.i.i152, label %matchbracketclass.exit.i147.loopexit, !llvm.loop !49

matchbracketclass.exit.i147.loopexit:             ; preds = %bb.cm, %bb.cq, %bb.cr, %bb.cs
  %.022.in.i.i148.ph = phi i1 [ %not..i.i146, %bb.cm ], [ %not..i.i146, %bb.cr ], [ %not..i.i146, %bb.cq ], [ %i.iy, %bb.cs ]
  br i1 %.022.in.i.i148.ph, label %singlematch.exit158.thread, label %.critedge.i

bb.ct:                                            ; preds = %bb.cj
  %.not474 = icmp eq i8 %i.ir, %i.ik
  br i1 %.not474, label %singlematch.exit158.thread, label %.critedge.i

singlematch.exit158:                              ; preds = %bb.cl
  br i1 %i.iy, label %singlematch.exit158.thread, label %.critedge.i

singlematch.exit158.thread:                       ; preds = %matchbracketclass.exit.i147.loopexit, %bb.ck, %bb.ct, %bb.cj, %singlematch.exit158
  %i.jp = add nuw i64 %.018.i275, 1               ; 2 uses
  %exitcond355.not = icmp eq i64 %i.jp, %i.im
  br i1 %exitcond355.not, label %.critedge.i, label %bb.cj, !llvm.loop !51

.critedge.i:                                      ; preds = %singlematch.exit158.thread, %singlematch.exit158, %bb.ct, %bb.ck, %matchbracketclass.exit.i147.loopexit, %.preheader
  %.018.i.lcssa = phi i64 [ 0, %.preheader ], [ %.018.i275, %matchbracketclass.exit.i147.loopexit ], [ %.018.i275, %bb.ck ], [ %.018.i275, %bb.ct ], [ %.018.i275, %singlematch.exit158 ], [ %i.im, %singlematch.exit158.thread ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.015.i120, i64 1
  %i.jr = icmp sgt i64 %.018.i.lcssa, -1
  br i1 %i.jr, label %.lr.ph532, label %start_capture.exit

bb.cu:                                            ; preds = %.lr.ph532
  %i.js = add nsw i64 %.119.i127531, -1
  %i.jt = icmp sgt i64 %.119.i127531, 0
  br i1 %i.jt, label %.lr.ph532, label %start_capture.exit, !llvm.loop !52

.lr.ph532:                                        ; preds = %.critedge.i, %bb.cu
  %.119.i127531 = phi i64 [ %i.js, %bb.cu ], [ %.018.i.lcssa, %.critedge.i ] ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.075.ph.ph, i64 %.119.i127531
  %i.jv = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %i.ju, ptr noundef nonnull %i.jq), !inline_history !53 ; 2 uses
  %.not23.i = icmp eq ptr %i.jv, null
  br i1 %.not23.i, label %bb.cu, label %.start_capture.exit.loopexit_crit_edge, !llvm.loop !52

bb.cv:                                            ; preds = %singlematch.exit
  %.lcssa328330 = ptrtoint ptr %i.hc to i64
  %.075.ph.lcssa338340 = ptrtoint ptr %.075.ph.ph to i64
  br i1 %i.if, label %bb.cw, label %start_capture.exit

bb.cw:                                            ; preds = %bb.cv
  %i.jw = getelementptr inbounds nuw i8, ptr %.075.ph.ph, i64 1 ; 3 uses
  %i.jx = icmp ult ptr %i.jw, %i.hc
  br i1 %i.jx, label %.lr.ph272, label %.critedge.i132

.lr.ph272:                                        ; preds = %bb.cw
  %i.jy = load i8, ptr %.077, align 1, !tbaa !10  ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %.015.i120, i64 -1 ; 3 uses
  %i.ka = xor i64 %.075.ph.lcssa338340, -1
  %i.kb = add i64 %i.ka, %.lcssa328330            ; 2 uses
  br label %bb.cx

bb.cx:                                            ; preds = %.lr.ph272, %singlematch.exit172.thread
  %.018.i131271 = phi i64 [ 0, %.lr.ph272 ], [ %i.lb, %singlematch.exit172.thread ] ; 6 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.018.i131271
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !10  ; 5 uses
  %i.ke = zext i8 %i.kd to i32                    ; 2 uses
  switch i8 %i.jy, label %bb.dh [
    i8 46, label %singlematch.exit172.thread
    i8 37, label %bb.cy
    i8 91, label %bb.cz
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.kf = load i8, ptr %i.hb, align 1, !tbaa !10
  %i.kg = zext i8 %i.kf to i32
  %i.kh = tail call fastcc i32 @match_class(i32 noundef range(i32 0, 256) %i.ke, i32 noundef %i.kg)
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %.critedge.i132, label %singlematch.exit172.thread

bb.cz:                                            ; preds = %bb.cx
  %i.kj = load i8, ptr %i.hb, align 1, !tbaa !10
  %i.kk = icmp eq i8 %i.kj, 94                    ; 4 uses
  %spec.select.i.i159 = select i1 %i.kk, ptr %i.hb, ptr %.077 ; 2 uses
  %not..i.i160 = xor i1 %i.kk, true               ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %spec.select.i.i159, i64 1 ; 2 uses
  %i.km = icmp ult ptr %i.kl, %i.jz
  br i1 %i.km, label %.lr.ph.i.i166, label %singlematch.exit172

.lr.ph.i.i166:                                    ; preds = %bb.cz, %bb.dg
  %i.kn = phi ptr [ %i.kz, %bb.dg ], [ %i.kl, %bb.cz ] ; 2 uses
  %.131.i.i167 = phi ptr [ %.2.i.i168, %bb.dg ], [ %spec.select.i.i159, %bb.cz ] ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !10  ; 3 uses
  %i.kp = icmp eq i8 %i.ko, 37
  %i.kq = getelementptr inbounds nuw i8, ptr %.131.i.i167, i64 2 ; 2 uses
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !10  ; 2 uses
  br i1 %i.kp, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.lr.ph.i.i166
  %i.ks = zext i8 %i.kr to i32
  %i.kt = tail call fastcc i32 @match_class(i32 noundef range(i32 0, 256) %i.ke, i32 noundef %i.ks)
  %.not29.i.i171 = icmp eq i32 %i.kt, 0
  br i1 %.not29.i.i171, label %bb.dg, label %matchbracketclass.exit.i161.loopexit

bb.db:                                            ; preds = %.lr.ph.i.i166
  %i.ku = icmp eq i8 %i.kr, 45
  br i1 %i.ku, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.kv = getelementptr inbounds nuw i8, ptr %.131.i.i167, i64 3 ; 4 uses
  %i.kw = icmp ult ptr %i.kv, %i.jz
  br i1 %i.kw, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %.not.i.i169 = icmp ult i8 %i.kd, %i.ko
  br i1 %.not.i.i169, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.kx = load i8, ptr %i.kv, align 1, !tbaa !10
  %.not28.i.i170 = icmp ult i8 %i.kx, %i.kd
  br i1 %.not28.i.i170, label %bb.dg, label %matchbracketclass.exit.i161.loopexit

bb.df:                                            ; preds = %bb.dc, %bb.db
  %i.ky = icmp eq i8 %i.kd, %i.ko
  br i1 %i.ky, label %matchbracketclass.exit.i161.loopexit, label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd, %bb.da
  %.2.i.i168 = phi ptr [ %i.kq, %bb.da ], [ %i.kv, %bb.de ], [ %i.kv, %bb.dd ], [ %i.kn, %bb.df ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.2.i.i168, i64 1 ; 2 uses
  %i.la = icmp ult ptr %i.kz, %i.jz
  br i1 %i.la, label %.lr.ph.i.i166, label %matchbracketclass.exit.i161.loopexit, !llvm.loop !49

matchbracketclass.exit.i161.loopexit:             ; preds = %bb.da, %bb.de, %bb.df, %bb.dg
  %.022.in.i.i162.ph = phi i1 [ %not..i.i160, %bb.da ], [ %not..i.i160, %bb.df ], [ %not..i.i160, %bb.de ], [ %i.kk, %bb.dg ]
  br i1 %.022.in.i.i162.ph, label %singlematch.exit172.thread, label %.critedge.i132

bb.dh:                                            ; preds = %bb.cx
  %.not473 = icmp eq i8 %i.kd, %i.jy
  br i1 %.not473, label %singlematch.exit172.thread, label %.critedge.i132

singlematch.exit172:                              ; preds = %bb.cz
  br i1 %i.kk, label %singlematch.exit172.thread, label %.critedge.i132

singlematch.exit172.thread:                       ; preds = %matchbracketclass.exit.i161.loopexit, %bb.cy, %bb.dh, %bb.cx, %singlematch.exit172
  %i.lb = add nuw i64 %.018.i131271, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.lb, %i.kb
  br i1 %exitcond.not, label %.critedge.i132, label %bb.cx, !llvm.loop !51

.critedge.i132:                                   ; preds = %singlematch.exit172.thread, %singlematch.exit172, %bb.dh, %bb.cy, %matchbracketclass.exit.i161.loopexit, %bb.cw
  %.018.i131.lcssa = phi i64 [ 0, %bb.cw ], [ %.018.i131271, %matchbracketclass.exit.i161.loopexit ], [ %.018.i131271, %bb.cy ], [ %.018.i131271, %bb.dh ], [ %.018.i131271, %singlematch.exit172 ], [ %i.kb, %singlematch.exit172.thread ] ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.015.i120, i64 1
  %i.ld = icmp sgt i64 %.018.i131.lcssa, -1
  br i1 %i.ld, label %.lr.ph528, label %start_capture.exit

bb.di:                                            ; preds = %.lr.ph528
  %i.le = add nsw i64 %.119.i133527, -1
  %i.lf = icmp sgt i64 %.119.i133527, 0
  br i1 %i.lf, label %.lr.ph528, label %start_capture.exit, !llvm.loop !52

.lr.ph528:                                        ; preds = %.critedge.i132, %bb.di
  %.119.i133527 = phi i64 [ %i.le, %bb.di ], [ %.018.i131.lcssa, %.critedge.i132 ] ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.119.i133527
  %i.lh = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef nonnull %i.lg, ptr noundef nonnull %i.lc), !inline_history !53 ; 2 uses
  %.not23.i136 = icmp eq ptr %i.lh, null
  br i1 %.not23.i136, label %bb.di, label %.start_capture.exit.loopexit475_crit_edge, !llvm.loop !52

bb.dj:                                            ; preds = %.lr.ph, %singlematch.exit186.thread
  %.013.i267 = phi ptr [ %.075.ph.ph, %.lr.ph ], [ %i.mj, %singlematch.exit186.thread ] ; 3 uses
  %i.li = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.lj = icmp ult ptr %.013.i267, %i.li
  br i1 %i.lj, label %bb.dk, label %start_capture.exit

bb.dk:                                            ; preds = %bb.dj
  %i.lk = load i8, ptr %.013.i267, align 1, !tbaa !10 ; 5 uses
  %i.ll = zext i8 %i.lk to i32                    ; 2 uses
  %i.lm = load i8, ptr %.077, align 1, !tbaa !10  ; 2 uses
  switch i8 %i.lm, label %bb.du [
    i8 46, label %singlematch.exit186.thread
    i8 37, label %bb.dl
    i8 91, label %bb.dm
  ]

bb.dl:                                            ; preds = %bb.dk
  %i.ln = load i8, ptr %i.hb, align 1, !tbaa !10
  %i.lo = zext i8 %i.ln to i32
  %i.lp = tail call fastcc i32 @match_class(i32 noundef range(i32 0, 256) %i.ll, i32 noundef %i.lo)
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %start_capture.exit, label %singlematch.exit186.thread

bb.dm:                                            ; preds = %bb.dk
  %i.lr = load i8, ptr %i.hb, align 1, !tbaa !10
  %i.ls = icmp eq i8 %i.lr, 94                    ; 4 uses
  %spec.select.i.i173 = select i1 %i.ls, ptr %i.hb, ptr %.077 ; 2 uses
  %not..i.i174 = xor i1 %i.ls, true               ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %spec.select.i.i173, i64 1 ; 2 uses
  %i.lu = icmp ult ptr %i.lt, %i.ij
  br i1 %i.lu, label %.lr.ph.i.i180, label %singlematch.exit186

.lr.ph.i.i180:                                    ; preds = %bb.dm, %bb.dt
  %i.lv = phi ptr [ %i.mh, %bb.dt ], [ %i.lt, %bb.dm ] ; 2 uses
  %.131.i.i181 = phi ptr [ %.2.i.i182, %bb.dt ], [ %spec.select.i.i173, %bb.dm ] ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !10  ; 3 uses
  %i.lx = icmp eq i8 %i.lw, 37
  %i.ly = getelementptr inbounds nuw i8, ptr %.131.i.i181, i64 2 ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !10  ; 2 uses
  br i1 %i.lx, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %.lr.ph.i.i180
  %i.ma = zext i8 %i.lz to i32
  %i.mb = tail call fastcc i32 @match_class(i32 noundef range(i32 0, 256) %i.ll, i32 noundef %i.ma)
  %.not29.i.i185 = icmp eq i32 %i.mb, 0
  br i1 %.not29.i.i185, label %bb.dt, label %matchbracketclass.exit.i175.loopexit

bb.do:                                            ; preds = %.lr.ph.i.i180
  %i.mc = icmp eq i8 %i.lz, 45
  br i1 %i.mc, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.md = getelementptr inbounds nuw i8, ptr %.131.i.i181, i64 3 ; 4 uses
  %i.me = icmp ult ptr %i.md, %i.ij
  br i1 %i.me, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  %.not.i.i183 = icmp ult i8 %i.lk, %i.lw
  br i1 %.not.i.i183, label %bb.dt, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.mf = load i8, ptr %i.md, align 1, !tbaa !10
  %.not28.i.i184 = icmp ult i8 %i.mf, %i.lk
  br i1 %.not28.i.i184, label %bb.dt, label %matchbracketclass.exit.i175.loopexit

bb.ds:                                            ; preds = %bb.dp, %bb.do
  %i.mg = icmp eq i8 %i.lk, %i.lw
  br i1 %i.mg, label %matchbracketclass.exit.i175.loopexit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.dn
  %.2.i.i182 = phi ptr [ %i.ly, %bb.dn ], [ %i.md, %bb.dr ], [ %i.md, %bb.dq ], [ %i.lv, %bb.ds ] ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.2.i.i182, i64 1 ; 2 uses
  %i.mi = icmp ult ptr %i.mh, %i.ij
  br i1 %i.mi, label %.lr.ph.i.i180, label %matchbracketclass.exit.i175.loopexit, !llvm.loop !49

matchbracketclass.exit.i175.loopexit:             ; preds = %bb.dn, %bb.dr, %bb.ds, %bb.dt
  %.022.in.i.i176.ph = phi i1 [ %not..i.i174, %bb.dn ], [ %not..i.i174, %bb.ds ], [ %not..i.i174, %bb.dr ], [ %i.ls, %bb.dt ]
  br i1 %.022.in.i.i176.ph, label %singlematch.exit186.thread, label %start_capture.exit

bb.du:                                            ; preds = %bb.dk
  %.not472 = icmp eq i8 %i.lk, %i.lm
  br i1 %.not472, label %singlematch.exit186.thread, label %start_capture.exit
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lstrlib?download=true
begin_hunk_0_@match:bb.a
  %i.gt = getelementptr inbounds nuw i8, ptr %.1.i123, i64 2
  %spec.select21.i127 = select i1 %i.gs, ptr %i.gt, ptr %i.go
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.2.i124 = phi ptr [ %i.go, %bb.bq ], [ %spec.select21.i127, %bb.br ] ; 3 uses
  %i.gu = load i8, ptr %.2.i124, align 1, !tbaa !13
  %.not.i125 = icmp eq i8 %i.gu, 93
  br i1 %.not.i125, label %bb.bt, label %bb.bo

bb.bt:                                            ; preds = %bb.bs
  %i.gv = getelementptr inbounds nuw i8, ptr %.2.i124, i64 1
  br label %classend.exit128

classend.exit128:                                 ; preds = %bb.e, %bb.s, %bb.bm, %bb.bt
  %i.gw = phi ptr [ %i.q, %bb.bt ], [ %i.br, %bb.bm ], [ %i.q, %bb.s ], [ %i.q, %bb.e ] ; 9 uses
  %.018.i126 = phi ptr [ %i.gv, %bb.bt ], [ %i.gg, %bb.bm ], [ %i.q, %bb.s ], [ %i.q, %bb.e ] ; 10 uses
  %.val = load ptr, ptr %i.l, align 8, !tbaa !31  ; 3 uses
  %.not.i129 = icmp ult ptr %.080.ph.ph, %.val
  br i1 %.not.i129, label %bb.bu, label %singlematch.exit.thread

bb.bu:                                            ; preds = %classend.exit128
  %i.gx = load i8, ptr %.080.ph.ph, align 1, !tbaa !13 ; 5 uses
  %i.gy = zext i8 %i.gx to i32                    ; 2 uses
  %i.gz = load i8, ptr %.077, align 1, !tbaa !13  ; 4 uses
  switch i8 %i.gz, label %.split421 [
    i8 46, label %singlematch.exit.thread183
    i8 37, label %.split
    i8 91, label %bb.bv
  ]

.split:                                           ; preds = %bb.bu
  %i.ha = load i8, ptr %i.gw, align 1, !tbaa !13
  %i.hb = zext i8 %i.ha to i32
  %i.hc = tail call fastcc i32 @match_class(i32 noundef %i.gy, i32 noundef %i.hb)
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %singlematch.exit.thread, label %singlematch.exit.thread183

bb.bv:                                            ; preds = %bb.bu
  %i.he = getelementptr inbounds i8, ptr %.018.i126, i64 -1 ; 3 uses
  %i.hf = load i8, ptr %i.gw, align 1, !tbaa !13
  %i.hg = icmp eq i8 %i.hf, 94                    ; 4 uses
  %spec.select.i.i = select i1 %i.hg, ptr %i.gw, ptr %.077 ; 2 uses
  %not..i.i = xor i1 %i.hg, true                  ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 1 ; 2 uses
  %i.hi = icmp ult ptr %i.hh, %i.he
  br i1 %i.hi, label %.lr.ph.i.i, label %singlematch.exit

.lr.ph.i.i:                                       ; preds = %bb.bv, %bb.cc
  %i.hj = phi ptr [ %i.hv, %bb.cc ], [ %i.hh, %bb.bv ] ; 2 uses
  %.131.i.i = phi ptr [ %.2.i.i, %bb.cc ], [ %spec.select.i.i, %bb.bv ] ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !13  ; 3 uses
  %i.hl = icmp eq i8 %i.hk, 37
  %i.hm = getelementptr inbounds nuw i8, ptr %.131.i.i, i64 2 ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !13  ; 2 uses
  br i1 %i.hl, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.lr.ph.i.i
  %i.ho = zext i8 %i.hn to i32
  %i.hp = tail call fastcc i32 @match_class(i32 noundef range(i32 0, 256) %i.gy, i32 noundef %i.ho)
  %.not29.i.i = icmp eq i32 %i.hp, 0
  br i1 %.not29.i.i, label %bb.cc, label %matchbracketclass.exit.i.loopexit

bb.bx:                                            ; preds = %.lr.ph.i.i
  %i.hq = icmp eq i8 %i.hn, 45
  br i1 %i.hq, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.hr = getelementptr inbounds nuw i8, ptr %.131.i.i, i64 3 ; 4 uses
  %i.hs = icmp ult ptr %i.hr, %i.he
  br i1 %i.hs, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %.not.i.i131 = icmp ult i8 %i.gx, %i.hk
  br i1 %.not.i.i131, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ht = load i8, ptr %i.hr, align 1, !tbaa !13
  %.not28.i.i = icmp ult i8 %i.ht, %i.gx
  br i1 %.not28.i.i, label %bb.cc, label %matchbracketclass.exit.i.loopexit

bb.cb:                                            ; preds = %bb.by, %bb.bx
  %i.hu = icmp eq i8 %i.gx, %i.hk
  br i1 %i.hu, label %matchbracketclass.exit.i.loopexit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bw
  %.2.i.i = phi ptr [ %i.hm, %bb.bw ], [ %i.hr, %bb.ca ], [ %i.hr, %bb.bz ], [ %i.hj, %bb.cb ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 1 ; 2 uses
  %i.hw = icmp ult ptr %i.hv, %i.he
  br i1 %i.hw, label %.lr.ph.i.i, label %matchbracketclass.exit.i.loopexit

matchbracketclass.exit.i.loopexit:                ; preds = %bb.bw, %bb.ca, %bb.cb, %bb.cc
  %.022.in.i.i.ph = phi i1 [ %not..i.i, %bb.bw ], [ %not..i.i, %bb.cb ], [ %not..i.i, %bb.ca ], [ %i.hg, %bb.cc ]
  br i1 %.022.in.i.i.ph, label %singlematch.exit.thread183, label %singlematch.exit.thread

.split421:                                        ; preds = %bb.bu
  %.not488 = icmp eq i8 %i.gz, %i.gx
  br i1 %.not488, label %singlematch.exit.thread183, label %singlematch.exit.thread

singlematch.exit:                                 ; preds = %bb.bv
  br i1 %i.hg, label %singlematch.exit.thread183, label %singlematch.exit.thread

singlematch.exit.thread:                          ; preds = %matchbracketclass.exit.i.loopexit, %.split421, %.split, %classend.exit128, %singlematch.exit
  %i.hx = load i8, ptr %.018.i126, align 1, !tbaa !13
  switch i8 %i.hx, label %start_capture.exit [
    i8 42, label %bb.cd
    i8 63, label %bb.cd
    i8 45, label %bb.cd
  ]

bb.cd:                                            ; preds = %singlematch.exit.thread, %singlematch.exit.thread, %singlematch.exit.thread
  %i.hy = getelementptr inbounds nuw i8, ptr %.018.i126, i64 1
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.cd, %bb.ce
  %.077.ph.be = phi ptr [ %i.hy, %bb.cd ], [ %i.id, %bb.ce ]
  br label %.outer

singlematch.exit.thread183:                       ; preds = %matchbracketclass.exit.i.loopexit, %.split421, %.split, %bb.bu, %singlematch.exit
  %i.hz = load i8, ptr %.018.i126, align 1, !tbaa !13
  switch i8 %i.hz, label %bb.cx [
    i8 63, label %bb.ce
    i8 43, label %bb.cf
    i8 42, label %.loopexit
    i8 45, label %.preheader
  ]

.preheader:                                       ; preds = %singlematch.exit.thread183
  %i.ia = getelementptr inbounds nuw i8, ptr %.018.i126, i64 1 ; 2 uses
  %i.ib = tail call fastcc ptr @match(ptr noundef %0, ptr noundef nonnull %.080.ph.ph, ptr noundef nonnull %i.ia), !inline_history !63 ; 2 uses
  %.not.i135267 = icmp eq ptr %i.ib, null
  br i1 %.not.i135267, label %.lr.ph, label %start_capture.exit

.lr.ph:                                           ; preds = %.preheader
  %i.ic = getelementptr inbounds i8, ptr %.018.i126, i64 -1 ; 3 uses
  br label %bb.cn

bb.ce:                                            ; preds = %singlematch.exit.thread183
  %i.id = getelementptr inbounds nuw i8, ptr %.018.i126, i64 1 ; 2 uses
  %i.ie = tail call fastcc ptr @match(ptr noundef %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.id) ; 2 uses
  %.not99.not = icmp eq ptr %i.ie, null
  br i1 %.not99.not, label %.outer.backedge, label %start_capture.exit

bb.cf:                                            ; preds = %singlematch.exit.thread183
  %i.if = getelementptr inbounds nuw i8, ptr %.080.ph.ph, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %singlematch.exit.thread183, %bb.cf
  %.383 = phi ptr [ %i.if, %bb.cf ], [ %.080.ph.ph, %singlematch.exit.thread183 ] ; 6 uses
  %.val351366 = ptrtoaddr ptr %.val to i64        ; 4 uses
  %.383367 = ptrtoaddr ptr %.383 to i64           ; 4 uses
  %.not.i139272 = icmp ult ptr %.383, %.val
  br i1 %.not.i139272, label %.lr.ph274, label %.critedge.preheader

.lr.ph274:                                        ; preds = %.loopexit
  %i.ig = getelementptr inbounds i8, ptr %.018.i126, i64 -1 ; 3 uses
  switch i8 %i.gz, label %singlematch.exit152.preheader [
    i8 46, label %singlematch.exit152.thread.us.preheader
    i8 37, label %.lr.ph274.split.us278
    i8 91, label %.lr.ph274.split.us288
  ]

singlematch.exit152.thread.us.preheader:          ; preds = %.lr.ph274
  %i.ih = sub i64 %.val351366, %.383367
  br label %.critedge.preheader

singlematch.exit152.preheader:                    ; preds = %.lr.ph274
  %i.ii = sub i64 %.val351366, %.383367           ; 2 uses
  br label %singlematch.exit152

.lr.ph274.split.us278:                            ; preds = %.lr.ph274
  %i.ij = load i8, ptr %i.gw, align 1, !tbaa !13
  %i.ik = zext i8 %i.ij to i32
  %i.il = sub i64 %.val351366, %.383367           ; 2 uses
  br label %singlematch.exit152.us280

singlematch.exit152.us280:                        ; preds = %singlematch.exit152.thread.us282, %.lr.ph274.split.us278
  %.015.i273.us279 = phi i64 [ 0, %.lr.ph274.split.us278 ], [ %i.ir, %singlematch.exit152.thread.us282 ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.383, i64 %.015.i273.us279
  %i.in = load i8, ptr %i.im, align 1, !tbaa !13
  %i.io = zext i8 %i.in to i32
  %i.ip = tail call fastcc i32 @match_class(i32 noundef %i.io, i32 noundef %i.ik)
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %.critedge.preheader, label %singlematch.exit152.thread.us282

singlematch.exit152.thread.us282:                 ; preds = %singlematch.exit152.us280
  %i.ir = add nuw i64 %.015.i273.us279, 1         ; 2 uses
  %exitcond368.not = icmp eq i64 %i.ir, %i.il
  br i1 %exitcond368.not, label %.critedge.preheader, label %singlematch.exit152.us280

.lr.ph274.split.us288:                            ; preds = %.lr.ph274
  %i.is = load i8, ptr %i.gw, align 1, !tbaa !13
  %i.it = icmp eq i8 %i.is, 94                    ; 4 uses
  %spec.select.i.i141.us = select i1 %i.it, ptr %i.gw, ptr %.077 ; 2 uses
  %not..i.i142.us = xor i1 %i.it, true            ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %spec.select.i.i141.us, i64 1 ; 2 uses
  %i.iv = icmp ult ptr %i.iu, %i.ig
  %i.iw = sub i64 %.val351366, %.383367           ; 3 uses
  br i1 %i.iv, label %.lr.ph.i.i146.preheader.us.us, label %.lr.ph274.split.us288.split

.lr.ph.i.i146.preheader.us.us:                    ; preds = %.lr.ph274.split.us288, %singlematch.exit152.thread.us292.us.a
  %.015.i273.us289.us = phi i64 [ %3, %singlematch.exit152.thread.us292.us.a ], [ 0, %.lr.ph274.split.us288 ] ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.383, i64 %.015.i273.us289.us
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !13  ; 4 uses
  %i.iz = zext i8 %i.iy to i32
  br label %.lr.ph.i.i146.us.us

.lr.ph.i.i146.us.us:                              ; preds = %.lr.ph.i.i146.preheader.us.us, %bb.cm
  %i.ja = phi ptr [ %i.jm, %bb.cm ], [ %i.iu, %.lr.ph.i.i146.preheader.us.us ] ; 2 uses
  %.131.i.i147.us.us = phi ptr [ %.2.i.i148.us.us, %bb.cm ], [ %spec.select.i.i141.us, %.lr.ph.i.i146.preheader.us.us ] ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !13  ; 3 uses
  %i.jc = icmp eq i8 %i.jb, 37
  %i.jd = getelementptr inbounds nuw i8, ptr %.131.i.i147.us.us, i64 2 ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !13  ; 2 uses
  br i1 %i.jc, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i146.us.us
  %i.jf = icmp eq i8 %i.je, 45
  br i1 %i.jf, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.jg = getelementptr inbounds nuw i8, ptr %.131.i.i147.us.us, i64 3 ; 4 uses
  %i.jh = icmp ult ptr %i.jg, %i.ig
  br i1 %i.jh, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ji = icmp eq i8 %i.iy, %i.jb
  br i1 %i.ji, label %matchbracketclass.exit.i143.loopexit.us.us, label %bb.cm

bb.cj:                                            ; preds = %bb.ch
  %.not.i.i149.us.us = icmp ult i8 %i.iy, %i.jb
  br i1 %.not.i.i149.us.us, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jj = load i8, ptr %i.jg, align 1, !tbaa !13
  %.not28.i.i150.us.us = icmp ult i8 %i.jj, %i.iy
  br i1 %.not28.i.i150.us.us, label %bb.cm, label %matchbracketclass.exit.i143.loopexit.us.us

bb.cl:                                            ; preds = %.lr.ph.i.i146.us.us
  %i.jk = zext i8 %i.je to i32
  %i.jl = tail call fastcc i32 @match_class(i32 noundef range(i32 0, 256) %i.iz, i32 noundef %i.jk)
  %.not29.i.i151.us.us = icmp eq i32 %i.jl, 0
  br i1 %.not29.i.i151.us.us, label %bb.cm, label %matchbracketclass.exit.i143.loopexit.us.us

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci
  %.2.i.i148.us.us = phi ptr [ %i.jd, %bb.cl ], [ %i.jg, %bb.ck ], [ %i.jg, %bb.cj ], [ %i.ja, %bb.ci ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.2.i.i148.us.us, i64 1 ; 2 uses
  %i.jn = icmp ult ptr %i.jm, %i.ig
  br i1 %i.jn, label %.lr.ph.i.i146.us.us, label %matchbracketclass.exit.i143.loopexit.us.us

singlematch.exit152.thread.us292.us.a:            ; preds = %matchbracketclass.exit.i143.loopexit.us.us
  %3 = add nuw i64 %.015.i273.us289.us, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %3, %i.iw
  br i1 %exitcond.not, label %.critedge.preheader, label %.lr.ph.i.i146.preheader.us.us

matchbracketclass.exit.i143.loopexit.us.us:       ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.ci
  %.022.in.i.i144.ph.us.us = phi i1 [ %i.it, %bb.cm ], [ %not..i.i142.us, %bb.ck ], [ %not..i.i142.us, %bb.ci ], [ %not..i.i142.us, %bb.cl ]
  br i1 %.022.in.i.i144.ph.us.us, label %singlematch.exit152.thread.us292.us.a, label %.critedge.preheader

.lr.ph274.split.us288.split:                      ; preds = %.lr.ph274.split.us288
  %spec.select = select i1 %i.it, i64 %i.iw, i64 0
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %singlematch.exit152.thread.us292.us.a, %matchbracketclass.exit.i143.loopexit.us.us, %singlematch.exit152.thread.us282, %singlematch.exit152.us280, %singlematch.exit152.thread, %singlematch.exit152, %.lr.ph274.split.us288.split, %singlematch.exit152.thread.us.preheader, %.loopexit
  %.015.i.lcssa = phi i64 [ 0, %.loopexit ], [ %i.ih, %singlematch.exit152.thread.us.preheader ], [ %i.il, %singlematch.exit152.thread.us282 ], [ %spec.select, %.lr.ph274.split.us288.split ], [ %.015.i273, %singlematch.exit152 ], [ %i.ii, %singlematch.exit152.thread ], [ %.015.i273.us279, %singlematch.exit152.us280 ], [ %.015.i273.us289.us, %matchbracketclass.exit.i143.loopexit.us.us ], [ %i.iw, %singlematch.exit152.thread.us292.us.a ] ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.018.i126, i64 1
  %i.jp = icmp sgt i64 %.015.i.lcssa, -1
  br i1 %i.jp, label %.lr.ph554, label %start_capture.exit

singlematch.exit152:                              ; preds = %singlematch.exit152.preheader, %singlematch.exit152.thread
  %.015.i273 = phi i64 [ %i.js, %singlematch.exit152.thread ], [ 0, %singlematch.exit152.preheader ] ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.383, i64 %.015.i273
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !13
  %.not303 = icmp eq i8 %i.gz, %i.jr
  br i1 %.not303, label %singlematch.exit152.thread, label %.critedge.preheader

singlematch.exit152.thread:                       ; preds = %singlematch.exit152
  %i.js = add nuw i64 %.015.i273, 1               ; 2 uses
  %exitcond369.not = icmp eq i64 %i.js, %i.ii
  br i1 %exitcond369.not, label %.critedge.preheader, label %singlematch.exit152

.critedge:                                        ; preds = %.lr.ph554
  %i.jt = add nsw i64 %.1.i133553, -1
  %i.ju = icmp sgt i64 %.1.i133553, 0
  br i1 %i.ju, label %.lr.ph554, label %start_capture.exit

.lr.ph554:                                        ; preds = %.critedge.preheader, %.critedge
  %.1.i133553 = phi i64 [ %i.jt, %.critedge ], [ %.015.i.lcssa, %.critedge.preheader ] ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.383, i64 %.1.i133553
  %i.jw = tail call fastcc ptr @match(ptr noundef %0, ptr noundef nonnull %i.jv, ptr noundef nonnull %i.jo), !inline_history !64 ; 2 uses
  %.not20.i = icmp eq ptr %i.jw, null
  br i1 %.not20.i, label %.critedge, label %start_capture.exit

bb.cn:                                            ; preds = %.lr.ph, %singlematch.exit166.thread190
  %.012.i268 = phi ptr [ %.080.ph.ph, %.lr.ph ], [ %i.kw, %singlematch.exit166.thread190 ] ; 3 uses
  %.val.i138 = load ptr, ptr %i.l, align 8, !tbaa !31
  %.not.i153 = icmp ult ptr %.012.i268, %.val.i138
  br i1 %.not.i153, label %bb.co, label %start_capture.exit

bb.co:                                            ; preds = %bb.cn
  %i.jx = load i8, ptr %.012.i268, align 1, !tbaa !13 ; 5 uses
  %i.jy = zext i8 %i.jx to i32                    ; 2 uses
  %i.jz = load i8, ptr %.077, align 1, !tbaa !13  ; 2 uses
  switch i8 %i.jz, label %.split423 [
    i8 46, label %singlematch.exit166.thread190
    i8 37, label %.split422
    i8 91, label %bb.cp
  ]

.split422:                                        ; preds = %bb.co
  %i.ka = load i8, ptr %i.gw, align 1, !tbaa !13
  %i.kb = zext i8 %i.ka to i32
  %i.kc = tail call fastcc i32 @match_class(i32 noundef %i.jy, i32 noundef %i.kb)
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %start_capture.exit, label %singlematch.exit166.thread190

bb.cp:                                            ; preds = %bb.co
  %i.ke = load i8, ptr %i.gw, align 1, !tbaa !13
  %i.kf = icmp eq i8 %i.ke, 94                    ; 4 uses
  %spec.select.i.i155 = select i1 %i.kf, ptr %i.gw, ptr %.077 ; 2 uses
  %not..i.i156 = xor i1 %i.kf, true               ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %spec.select.i.i155, i64 1 ; 2 uses
  %i.kh = icmp ult ptr %i.kg, %i.ic
  br i1 %i.kh, label %.lr.ph.i.i160, label %singlematch.exit166

.lr.ph.i.i160:                                    ; preds = %bb.cp, %bb.cw
  %i.ki = phi ptr [ %i.ku, %bb.cw ], [ %i.kg, %bb.cp ] ; 2 uses
  %.131.i.i161 = phi ptr [ %.2.i.i162, %bb.cw ], [ %spec.select.i.i155, %bb.cp ] ; 2 uses
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !13  ; 3 uses
  %i.kk = icmp eq i8 %i.kj, 37
  %i.kl = getelementptr inbounds nuw i8, ptr %.131.i.i161, i64 2 ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !13  ; 2 uses
  br i1 %i.kk, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.lr.ph.i.i160
  %i.kn = zext i8 %i.km to i32
  %i.ko = tail call fastcc i32 @match_class(i32 noundef range(i32 0, 256) %i.jy, i32 noundef %i.kn)
  %.not29.i.i165 = icmp eq i32 %i.ko, 0
  br i1 %.not29.i.i165, label %bb.cw, label %matchbracketclass.exit.i157.loopexit

bb.cr:                                            ; preds = %.lr.ph.i.i160
  %i.kp = icmp eq i8 %i.km, 45
  br i1 %i.kp, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  %i.kq = getelementptr inbounds nuw i8, ptr %.131.i.i161, i64 3 ; 4 uses
  %i.kr = icmp ult ptr %i.kq, %i.ic
  br i1 %i.kr, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %.not.i.i163 = icmp ult i8 %i.jx, %i.kj
  br i1 %.not.i.i163, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ks = load i8, ptr %i.kq, align 1, !tbaa !13
  %.not28.i.i164 = icmp ult i8 %i.ks, %i.jx
  br i1 %.not28.i.i164, label %bb.cw, label %matchbracketclass.exit.i157.loopexit

bb.cv:                                            ; preds = %bb.cs, %bb.cr
  %i.kt = icmp eq i8 %i.jx, %i.kj
  br i1 %i.kt, label %matchbracketclass.exit.i157.loopexit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cq
  %.2.i.i162 = phi ptr [ %i.kl, %bb.cq ], [ %i.kq, %bb.cu ], [ %i.kq, %bb.ct ], [ %i.ki, %bb.cv ] ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.2.i.i162, i64 1 ; 2 uses
  %i.kv = icmp ult ptr %i.ku, %i.ic
  br i1 %i.kv, label %.lr.ph.i.i160, label %matchbracketclass.exit.i157.loopexit

matchbracketclass.exit.i157.loopexit:             ; preds = %bb.cq, %bb.cu, %bb.cv, %bb.cw
  %.022.in.i.i158.ph = phi i1 [ %not..i.i156, %bb.cq ], [ %not..i.i156, %bb.cv ], [ %not..i.i156, %bb.cu ], [ %i.kf, %bb.cw ]
  br i1 %.022.in.i.i158.ph, label %singlematch.exit166.thread190, label %start_capture.exit

.split423:                                        ; preds = %bb.co
  %.not489 = icmp eq i8 %i.jz, %i.jx
  br i1 %.not489, label %singlematch.exit166.thread190, label %start_capture.exit

singlematch.exit166:                              ; preds = %bb.cp
  br i1 %i.kf, label %singlematch.exit166.thread190, label %start_capture.exit

singlematch.exit166.thread190:                    ; preds = %matchbracketclass.exit.i157.loopexit, %.split423, %.split422, %bb.co, %singlematch.exit166
  %i.kw = getelementptr inbounds nuw i8, ptr %.012.i268, i64 1 ; 2 uses
  %i.kx = tail call fastcc ptr @match(ptr noundef %0, ptr noundef nonnull %i.kw, ptr noundef nonnull %i.ia), !inline_history !63 ; 2 uses
  %.not.i135 = icmp eq ptr %i.kx, null
  br i1 %.not.i135, label %bb.cn, label %start_capture.exit

bb.cx:                                            ; preds = %singlematch.exit.thread183
  %i.ky = getelementptr inbounds nuw i8, ptr %.080.ph.ph, i64 1
  br label %.outer.outer.backedge

start_capture.exit:                               ; preds = %singlematch.exit.thread, %bb.ce, %bb.bj, %check_capture.exit.i, %bb.y, %bb.x, %bb.aq, %matchbracketclass.exit119, %matchbracketclass.exit, %bb.d, %bb.ab, %singlematch.exit166.thread190, %singlematch.exit166, %bb.cn, %.split422, %.split423, %matchbracketclass.exit.i157.loopexit, %.lr.ph554, %.critedge, %.critedge.preheader, %.preheader, %bb.r, %capture_to_close.exit, %bb.n, %bb.m, %bb.j, %bb.i, %bb.t
  %.6 = phi ptr [ null, %bb.ab ], [ %i.bl, %capture_to_close.exit ], [ null, %bb.j ], [ null, %bb.n ], [ %i.bp, %bb.t ], [ null, %bb.r ], [ %i.ib, %.preheader ], [ null, %matchbracketclass.exit119 ], [ %i.ac, %bb.i ], [ %i.ao, %bb.m ], [ null, %matchbracketclass.exit.i157.loopexit ], [ null, %.critedge ], [ null, %.critedge.preheader ], [ %i.jw, %.lr.ph554 ], [ null, %.split423 ], [ null, %.split422 ], [ null, %bb.cn ], [ %i.kx, %singlematch.exit166.thread190 ], [ null, %singlematch.exit166 ], [ null, %bb.aq ], [ null, %matchbracketclass.exit ], [ %.080.ph.ph, %bb.d ], [ %i.ie, %bb.ce ], [ null, %singlematch.exit.thread ], [ null, %bb.bj ], [ null, %check_capture.exit.i ], [ null, %bb.y ], [ null, %bb.x ]
  %i.kz = load i32, ptr %i.a, align 8, !tbaa !37
  %i.la = add nsw i32 %i.kz, 1
  store i32 %i.la, ptr %i.a, align 8, !tbaa !37
  ret ptr %.6
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @push_captures(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  %spec.select = select i1 %or.cond, i32 1, i32 %i.b ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 15 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  tail call void @luaL_checkstack(ptr noundef %i.f, i32 noundef %spec.select, ptr noundef nonnull @.str.23) #12
  %i.g = icmp sgt i32 %spec.select, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = ptrtoint ptr %2 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.j, -2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %wide.trip.count23 = zext nneg i32 %spec.select to i64 ; 2 uses
  %i.l = load i32, ptr %i.a, align 4, !tbaa !38
  %.not.i.i.us.peel = icmp sgt i32 %i.l, 0        ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %.not.i.i.us.peel, label %bb.b, label %get_onecapture.exit.thread.i.peel

bb.b:                                             ; preds = %.lr.ph.split.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !40   ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !41   ; 3 uses
  switch i64 %i.n, label %get_onecapture.exit.thread.i.peel [
    i64 -1, label %bb.c
    i64 -2, label %get_onecapture.exit.thread11.i.peel
  ], !prof !42

get_onecapture.exit.thread11.i.peel:              ; preds = %bb.b
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.q = load ptr, ptr %0, align 8, !tbaa !30
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = add i64 %i.r, 1
  %i.u = sub i64 %i.t, %i.s
  tail call void @lua_pushinteger(ptr noundef %i.p, i64 noundef %i.u) #12
  br label %push_onecapture.exit.peel

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.w = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.v, ptr noundef nonnull @.str.29) #12 ; 0 uses
  br label %get_onecapture.exit.thread.i.peel

get_onecapture.exit.thread.i.peel:                ; preds = %.lr.ph.split.preheader, %bb.c, %bb.b
  %.0.i10.i.peel = phi i64 [ %i.n, %bb.b ], [ -1, %bb.c ], [ %i.j, %.lr.ph.split.preheader ]
  %.09.i.peel = phi ptr [ %i.o, %bb.b ], [ %i.o, %bb.c ], [ %1, %.lr.ph.split.preheader ]
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.y = tail call ptr @lua_pushlstring(ptr noundef %i.x, ptr noundef %.09.i.peel, i64 noundef %.0.i10.i.peel) #12 ; 0 uses
  br label %push_onecapture.exit.peel

push_onecapture.exit.peel:                        ; preds = %get_onecapture.exit.thread.i.peel, %get_onecapture.exit.thread11.i.peel
  %exitcond.peel.not = icmp eq i32 %spec.select, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %.not.i.i.us.peel, label %bb.d, label %push_onecapture.exit.us.peel

bb.d:                                             ; preds = %.lr.ph.split.us.preheader
end_hunk_0

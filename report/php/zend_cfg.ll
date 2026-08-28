Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_cfg?download=true
inline.NumInlined: 35
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@zend_cfg_identify_loops:bb.a
  br i1 %i.eo, label %.lr.ph.i, label %dominates.exit, !llvm.loop !149

dominates.exit:                                   ; preds = %.lr.ph.i, %bb.r
  %.0.lcssa.i = phi i32 [ %i.dy, %bb.r ], [ %i.ej, %.lr.ph.i ]
  %i.ep = icmp eq i32 %i.dh, %.0.lcssa.i
  br i1 %i.ep, label %bb.s, label %bb.w

bb.s:                                             ; preds = %dominates.exit
  %i.eq = load i32, ptr %i.du, align 8, !tbaa !18
  %i.er = or i32 %i.eq, 65536
  store i32 %i.er, ptr %i.du, align 8, !tbaa !18
  %i.es = and i32 %.1281, -9                      ; 2 uses
  %.not183 = icmp eq i32 %.sroa.19.6279, 0
  br i1 %.not183, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.r, i8 0, i64 %i.cn, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.et = icmp samesign ult i32 %i.dy, %i.p
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = zext nneg i32 %i.dy to i64              ; 2 uses
  %i.ev = lshr i64 %i.eu, 6
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !141
  %i.ey = and i64 %i.eu, 63
  %i.ez = lshr i64 %i.ex, %i.ey
  %i.fa = trunc i64 %i.ez to i1
  br i1 %i.fa, label %zend_worklist_push.exit193, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fb = and i32 %i.dy, 63
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = shl nuw i64 1, %i.fc
  %i.fe = lshr i32 %i.dy, 6
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ff ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !141
  %i.fi = or i64 %i.fh, %i.fd
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !141
  %i.fj = icmp slt i32 %.sroa.19.6279, %i.p
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = add nsw i32 %.sroa.19.6279, 1
  %i.fl = sext i32 %.sroa.19.6279 to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.fl
  store i32 %i.dy, ptr %i.fm, align 4, !tbaa !45
  br label %zend_worklist_push.exit193

bb.w:                                             ; preds = %dominates.exit
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.eb
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !45
  %i.fp = load i32, ptr %i.ds, align 4, !tbaa !45
  %i.fq = icmp sgt i32 %i.fo, %i.fp
  br i1 %i.fq, label %bb.x, label %zend_worklist_push.exit193

bb.x:                                             ; preds = %bb.w
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.eb
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !45
  %i.ft = load i32, ptr %i.dt, align 4, !tbaa !45
  %i.fu = icmp slt i32 %i.fs, %i.ft
  br i1 %i.fu, label %bb.y, label %zend_worklist_push.exit193

bb.y:                                             ; preds = %bb.x
  %i.fv = load i32, ptr %i.du, align 8, !tbaa !18
  %i.fw = or i32 %i.fv, 131072
  store i32 %i.fw, ptr %i.du, align 8, !tbaa !18
  %i.fx = and i32 %.1281, -25
  %i.fy = or disjoint i32 %i.fx, 16
  br label %zend_worklist_push.exit193

zend_worklist_push.exit193:                       ; preds = %bb.v, %bb.u, %bb.y, %bb.x, %bb.w, %bb.q
  %.sroa.19.7 = phi i32 [ %.sroa.19.6279, %bb.q ], [ %.sroa.19.6279, %bb.w ], [ %.sroa.19.6279, %bb.y ], [ %.sroa.19.6279, %bb.x ], [ %.sroa.19.6279, %bb.u ], [ %i.fk, %bb.v ] ; 3 uses
  %.3 = phi i32 [ %.1281, %bb.q ], [ %.1281, %bb.w ], [ %i.fy, %bb.y ], [ %.1281, %bb.x ], [ %i.es, %bb.u ], [ %i.es, %bb.v ] ; 3 uses
  %i.fz = add nuw nsw i32 %.3173280, 1            ; 2 uses
  %i.ga = icmp slt i32 %i.fz, %i.dl
  br i1 %i.ga, label %bb.q, label %.preheader, !llvm.loop !150

bb.z:                                             ; preds = %.lr.ph292, %.backedge
  %.sroa.19.8291 = phi i32 [ %.sroa.19.7, %.lr.ph292 ], [ %.sroa.19.8.be, %.backedge ]
  %i.gb = add nsw i32 %.sroa.19.8291, -1          ; 5 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !45
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %.4 = phi i32 [ %i.ge, %bb.z ], [ %i.gi, %bb.aa ] ; 3 uses
  %i.gf = sext i32 %.4 to i64
  %i.gg = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.gf ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 36
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !151 ; 2 uses
  %i.gj = icmp sgt i32 %i.gi, -1
  br i1 %i.gj, label %bb.aa, label %bb.ab, !llvm.loop !152

bb.ab:                                            ; preds = %bb.aa
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 36
  %.not182 = icmp eq i32 %.4, %i.dh
  br i1 %.not182, label %.backedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !128
  %i.gn = icmp slt i32 %i.gm, 0
  %i.go = icmp ne i32 %.4, 0
  %or.cond = and i1 %i.go, %i.gn
  br i1 %or.cond, label %.backedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.dh, ptr %i.gk, align 4, !tbaa !151
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !110 ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph288, label %.backedge

.lr.ph288:                                        ; preds = %bb.ad
  %i.gs = load ptr, ptr %i.ck, align 8, !tbaa !121
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gg, i64 28
  %.pre327 = load i32, ptr %i.gt, align 4, !tbaa !122
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph288, %zend_worklist_push.exit195
  %.0169286 = phi i32 [ 0, %.lr.ph288 ], [ %i.hs, %zend_worklist_push.exit195 ] ; 2 uses
  %.sroa.19.9285 = phi i32 [ %i.gb, %.lr.ph288 ], [ %.sroa.19.15, %zend_worklist_push.exit195 ] ; 4 uses
  %i.gu = add nsw i32 %.pre327, %.0169286
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !45 ; 5 uses
  %i.gy = icmp samesign ult i32 %i.gx, %i.p
  tail call void @llvm.assume(i1 %i.gy)
  %i.gz = zext nneg i32 %i.gx to i64              ; 2 uses
  %i.ha = lshr i64 %i.gz, 6
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ha
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !141
  %i.hd = and i64 %i.gz, 63
  %i.he = lshr i64 %i.hc, %i.hd
  %i.hf = trunc i64 %i.he to i1
  br i1 %i.hf, label %zend_worklist_push.exit195, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hg = and i32 %i.gx, 63
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = shl nuw i64 1, %i.hh
  %i.hj = lshr i32 %i.gx, 6
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.hk ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !141
  %i.hn = or i64 %i.hm, %i.hi
  store i64 %i.hn, ptr %i.hl, align 8, !tbaa !141
  %i.ho = icmp slt i32 %.sroa.19.9285, %i.p
  tail call void @llvm.assume(i1 %i.ho)
  %i.hp = add nsw i32 %.sroa.19.9285, 1
  %i.hq = sext i32 %.sroa.19.9285 to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.hq
  store i32 %i.gx, ptr %i.hr, align 4, !tbaa !45
  br label %zend_worklist_push.exit195

zend_worklist_push.exit195:                       ; preds = %bb.ae, %bb.af
  %.sroa.19.15 = phi i32 [ %.sroa.19.9285, %bb.ae ], [ %i.hp, %bb.af ] ; 2 uses
  %i.hs = add nuw nsw i32 %.0169286, 1            ; 2 uses
  %i.ht = icmp slt i32 %i.hs, %i.gq
  br i1 %i.ht, label %bb.ae, label %.backedge, !llvm.loop !153

.backedge:                                        ; preds = %zend_worklist_push.exit195, %bb.ab, %bb.ad, %bb.ac
  %.sroa.19.8.be = phi i32 [ %i.gb, %bb.ac ], [ %i.gb, %bb.ab ], [ %i.gb, %bb.ad ], [ %.sroa.19.15, %zend_worklist_push.exit195 ] ; 2 uses
  %.not181 = icmp eq i32 %.sroa.19.8.be, 0
  br i1 %.not181, label %..loopexit233_crit_edge, label %bb.z, !llvm.loop !154

.outer._crit_edge:                                ; preds = %.loopexit233, %bb.o, %.preheader235
  %.0161.ph.lcssa = phi i32 [ %.0161.ph402, %bb.o ], [ 8, %.preheader235 ], [ %.3, %.loopexit233 ] ; 2 uses
  br i1 %i.t, label %bb.ag, label %bb.ah, !prof !71

bb.ag:                                            ; preds = %.outer._crit_edge
  call void @_efree(ptr noundef %i.w) #9
  br label %bb.ah

bb.ah:                                            ; preds = %.outer._crit_edge, %bb.ag
  br i1 %i.m, label %bb.ai, label %bb.aj, !prof !71

bb.ai:                                            ; preds = %bb.ah
  call void @_efree(ptr noundef %i.q) #9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.a
  %.0161.ph.lcssa.sink = phi i32 [ 8, %bb.a ], [ %.0161.ph.lcssa, %bb.ai ], [ %.0161.ph.lcssa, %bb.ah ]
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !55
  %i.hw = or i32 %i.hv, %.0161.ph.lcssa.sink
  store i32 %i.hw, ptr %i.hu, align 8, !tbaa !55
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_mark_reachable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !17     ; 3 uses
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2
  %i.f = add nsw i64 %i.e, 4                      ; 2 uses
  %i.g = and i64 %i.f, -8
  %i.h = zext i32 %i.c to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %sh.diff = lshr i64 %i.i, 3
  %i.j = and i64 %sh.diff, 1073741816
  %i.k = add nsw i64 %i.g, %i.j                   ; 3 uses
  %i.l = icmp ugt i64 %i.k, 32768                 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noalias ptr @_emalloc(i64 noundef %i.k) #12
  %.pre = load i32, ptr %1, align 8, !tbaa !17    ; 2 uses
  %.pre108 = load ptr, ptr %i.a, align 8, !tbaa !12
  %.pre109 = sext i32 %.pre to i64
  %.pre110 = shl nuw nsw i64 %.pre109, 2
  %.pre112 = add nuw nsw i64 %.pre110, 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = alloca i8, i64 %i.k, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi115 = phi i64 [ %i.f, %bb.c ], [ %.pre112, %bb.b ]
  %i.o = phi ptr [ %i.b, %bb.c ], [ %.pre108, %bb.b ] ; 2 uses
  %i.p = phi i32 [ %i.c, %bb.c ], [ %.pre, %bb.b ] ; 6 uses
  %i.q = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 5 uses
  %3 = and i64 %.pre-phi115, 9223372036854775800
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %3 ; 7 uses
  %narrow = add nuw i32 %i.p, 63
  %i.s = lshr i32 %narrow, 3
  %i.t = and i32 %i.s, 536870904
  %i.u = zext nneg i32 %i.t to i64
  call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.u, i1 false)
  %i.v = ptrtoint ptr %2 to i64
  %i.w = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = lshr exact i64 %i.x, 6                   ; 2 uses
  %i.z = trunc i64 %i.y to i32                    ; 3 uses
  %i.aa = icmp sgt i32 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp sgt i32 %i.p, %i.z
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = lshr i64 %i.x, 12                       ; 2 uses
  %i.ad = and i64 %i.ac, 33554431
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !141
  %i.ag = and i64 %i.y, 63                        ; 2 uses
  %i.ah = lshr i64 %i.af, %i.ag
  %i.ai = trunc i64 %i.ah to i1
  br i1 %i.ai, label %._crit_edge, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.d
  %i.aj = shl nuw i64 1, %i.ag
  %i.ak = and i64 %i.ac, 67108863
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !141
  %i.an = or i64 %i.am, %i.aj
  store i64 %i.an, ptr %i.al, align 8, !tbaa !141
  store i32 %i.z, ptr %i.q, align 4, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph105, %.loopexit
  %.sroa.10.0104 = phi i32 [ 1, %.lr.ph105 ], [ %.sroa.10.3, %.loopexit ] ; 3 uses
  %i.ap = add nsw i32 %.sroa.10.0104, -1          ; 5 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !45
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [64 x i8], ptr %i.o, i64 %i.at ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !18 ; 2 uses
  %i.ax = or i32 %i.aw, -2147483648
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !111 ; 8 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.y, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.bb = icmp sgt i32 %i.az, 0
  br i1 %i.bb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !109 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 12 ; 2 uses
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !45
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.bg ; 6 uses
  %i.bi = load i32, ptr %i.bd, align 8, !tbaa !56 ; 3 uses
  %.not85.peel = icmp eq i32 %i.bi, 0             ; 2 uses
  br i1 %.not85.peel, label %bb.u, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bj = load i32, ptr %i.be, align 4, !tbaa !48
  %i.bk = add i32 %i.bi, -1
  %i.bl = add i32 %i.bk, %i.bj
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !57  ; 5 uses
  %i.bq = icmp eq i8 %i.bp, -61
  br i1 %i.bq, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = add i8 %i.bp, 69
  %or.cond.peel = icmp ult i8 %i.br, 2
  %i.bs = icmp eq i32 %i.az, 1                    ; 2 uses
  br i1 %or.cond.peel, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.bs, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = icmp eq i32 %i.az, 2
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !18
  %i.bw = or i32 %i.bv, 4                         ; 2 uses
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !18
  br label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.bx = icmp eq i8 %i.bp, 42
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 5 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !18 ; 3 uses
  br i1 %i.bx, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = or i32 %i.bz, 2                         ; 3 uses
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !18
  %i.cb = load i32, ptr %i.ao, align 8, !tbaa !55 ; 2 uses
  %i.cc = and i32 %i.cb, 1073741824
  %.not86.peel = icmp eq i32 %i.cc, 0
  br i1 %.not86.peel, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  switch i8 %i.bp, label %bb.n [
    i8 -90, label %bb.m
    i8 -96, label %bb.m
    i8 -117, label %bb.m
    i8 -125, label %bb.m
    i8 -126, label %bb.m
    i8 73, label %bb.m
    i8 60, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.cd = or i32 %i.bz, 18                        ; 2 uses
  store i32 %i.cd, ptr %i.by, align 8, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ce = phi i32 [ %i.cd, %bb.m ], [ %i.ca, %bb.l ], [ %i.ca, %bb.k ] ; 2 uses
  %i.cf = and i32 %i.cb, 16777216
  %.not87.peel = icmp ne i32 %i.cf, 0
  %i.cg = add i8 %i.bp, -63
  %or.cond23.peel = icmp ult i8 %i.cg, 2
  %or.cond89.peel = and i1 %or.cond23.peel, %.not87.peel
  br i1 %or.cond89.peel, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.ch = or i32 %i.ce, 4096                      ; 2 uses
  store i32 %i.ch, ptr %i.by, align 8, !tbaa !18
  br label %bb.v

bb.p:                                             ; preds = %bb.j
  %i.ci = or i32 %i.bz, 4                         ; 2 uses
  store i32 %i.ci, ptr %i.by, align 8, !tbaa !18
  br label %bb.v

bb.q:                                             ; preds = %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !18 ; 2 uses
  br i1 %i.bs, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = or i32 %i.ck, 4                         ; 2 uses
  store i32 %i.cl, ptr %i.cj, align 8, !tbaa !18
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.cm = or i32 %i.ck, 6                         ; 2 uses
  store i32 %i.cm, ptr %i.cj, align 8, !tbaa !18
  br label %bb.v

bb.t:                                             ; preds = %bb.f
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !18
  %i.cp = or i32 %i.co, 4                         ; 2 uses
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !18
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !18
  %i.cs = or i32 %i.cr, 2                         ; 2 uses
  store i32 %i.cs, ptr %i.cq, align 8, !tbaa !18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.i
  %i.ct = phi i32 [ %i.cs, %bb.u ], [ %i.cp, %bb.t ], [ %i.cm, %bb.s ], [ %i.cl, %bb.r ], [ %i.ci, %bb.p ], [ %i.ch, %bb.o ], [ %i.ce, %bb.n ], [ %i.bw, %bb.i ]
  %.not88.peel = icmp sgt i32 %i.ct, -1
  br i1 %.not88.peel, label %bb.w, label %zend_worklist_push.exit91.peel

bb.w:                                             ; preds = %bb.v
  %i.cu = ptrtoint ptr %i.bh to i64
  %i.cv = sub i64 %i.cu, %i.w                     ; 2 uses
  %i.cw = lshr exact i64 %i.cv, 6                 ; 2 uses
  %i.cx = trunc i64 %i.cw to i32                  ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, -1
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = icmp sgt i32 %i.p, %i.cx
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = lshr i64 %i.cv, 12                      ; 2 uses
  %i.db = and i64 %i.da, 33554431
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !141
  %i.de = and i64 %i.cw, 63                       ; 2 uses
  %i.df = lshr i64 %i.dd, %i.de
  %i.dg = trunc i64 %i.df to i1
  br i1 %i.dg, label %zend_worklist_push.exit91.peel, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = shl nuw i64 1, %i.de
  %i.di = and i64 %i.da, 67108863
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.di ; 2 uses
end_hunk_0

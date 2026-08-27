Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereobm?download=true
inline.NumInlined: 442
inline.NumDeleted: 208
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn69 = phi { ptr, i32 } [ %i.cc, %bb.s ], [ %i.cb, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.ca

bb.u:                                             ; preds = %bb.p
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.ca

bb.v:                                             ; preds = %bb.q, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19, !noalias !218
  store i32 %i.az, ptr %12, align 4, !tbaa !102, !noalias !218
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %i.bh, ptr %i.cf, align 4, !tbaa !104, !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19, !noalias !218
  store i64 9223372034707292160, ptr %13, align 8, !noalias !218
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(208) %i.ce, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %13)
          to label %bb.w unwind label %bb.am

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19, !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19, !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19, !noalias !221
  store i32 %i.az, ptr %10, align 4, !tbaa !102, !noalias !221
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.bh, ptr %i.ci, align 4, !tbaa !104, !noalias !221
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19, !noalias !221
  store i64 9223372034707292160, ptr %11, align 8, !noalias !221
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %i.ch, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.x unwind label %bb.an

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19, !noalias !221
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !221
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.cj = load ptr, ptr %i.r, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !224
  store i32 %i.az, ptr %8, align 4, !tbaa !102, !noalias !224
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.bh, ptr %i.ck, align 4, !tbaa !104, !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19, !noalias !224
  store i64 9223372034707292160, ptr %9, align 8, !noalias !224
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 8 dereferenceable(208) %i.cj, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.y unwind label %bb.ao

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.cl = load ptr, ptr %i.x, align 8, !tbaa !205, !nonnull !160, !align !163
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !38
  %i.co = icmp sgt i32 %i.cn, -1
  br i1 %i.co, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !227
  store i32 %i.az, ptr %6, align 4, !tbaa !102, !noalias !227
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.bh, ptr %i.cr, align 4, !tbaa !104, !noalias !227
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !227
  store i64 9223372034707292160, ptr %7, align 8, !noalias !227
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(208) %i.cq, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %_ZNK2cv3Mat8rowRangeEii.exit97 unwind label %bb.ap

_ZNK2cv3Mat8rowRangeEii.exit97:                   ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !227
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %26) #19
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK2cv3Mat8rowRangeEii.exit97, %bb.aa
  %i.cs = load i32, ptr %25, align 8, !tbaa !96
  %i.ct = and i32 %i.cs, 4095
  %i.cu = icmp eq i32 %i.ct, 3
  %i.cv = load ptr, ptr %i.x, align 8, !tbaa !205, !nonnull !160, !align !163 ; 5 uses
  %i.cw = sub i32 %i.h, %i.bh                     ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !230, !nonnull !160, !align !165 ; 10 uses
  %i.cz = load i32, ptr %1, align 4, !tbaa !102
  %i.da = sext i32 %i.cz to i64                   ; 8 uses
  %i.db = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.val = load ptr, ptr %i.db, align 8, !tbaa !120 ; 10 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %25, i64 24
  %.val86 = load ptr, ptr %i.dc, align 8, !tbaa !120 ; 8 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %25, i64 128
  %.val87 = load i64, ptr %i.dd, align 8, !tbaa !125 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !33 ; 7 uses
  %i.dg = sdiv i32 %i.df, 2                       ; 31 uses
  %i.dh = add nsw i32 %i.dg, 1                    ; 12 uses
  %i.di = call i32 @llvm.smin.i32(i32 %i.az, i32 %i.dh) ; 21 uses
  %i.dj = sub i32 0, %i.di                        ; 12 uses
  %i.dk = call i32 @llvm.smin.i32(i32 %i.cw, i32 %i.dh) ; 10 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !35 ; 48 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !34 ; 13 uses
  %i.dp = add i32 %i.do, %i.dm                    ; 3 uses
  %i.dq = add i32 %i.dp, -1                       ; 18 uses
  %i.dr = call i32 @llvm.smax.i32(i32 %i.dq, i32 0) ; 12 uses
  %i.ds = call i32 @llvm.smin.i32(i32 %i.dq, i32 0) ; 8 uses
  %i.dt = sub i32 0, %i.ds                        ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !94 ; 11 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !95 ; 20 uses
  %i.dy = sub i32 %i.dv, %i.dm                    ; 3 uses
  %i.dz = add i32 %i.ds, %i.dy                    ; 12 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !36 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cv, i64 28
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !37 ; 4 uses
  br i1 %i.cu, label %bb.ac, label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  %.tr.i = trunc i32 %i.do to i16
  %i.ee = shl i16 %.tr.i, 4
  %i.ef = add i16 %i.ee, -16                      ; 14 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !120
  %i.ei = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.ej = zext nneg i32 %i.dr to i64              ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ej ; 2 uses
  %i.el = zext i32 %i.dt to i64                   ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val, i64 %i.el ; 2 uses
  %i.en = load i64, ptr %i.ei, align 8, !tbaa !125 ; 3 uses
  %i.eo = trunc i64 %i.en to i32                  ; 2 uses
  %i.ep = lshr i64 %.val87, 1                     ; 4 uses
  %i.eq = add i32 %i.dx, %i.dk                    ; 7 uses
  %i.er = add i32 %i.eq, %i.di
  %i.es = mul nsw i32 %i.er, %i.dm                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.et = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !120
  %.not.i = icmp eq ptr %i.eu, null
  %i.ev = getelementptr inbounds nuw i8, ptr %26, i64 128
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = shl i64 %i.ew, 30
  %i.ey = ashr i64 %i.ex, 32
  %i.ez = select i1 %.not.i, i64 0, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cy, i64 160 ; 6 uses
  %i.fb = load ptr, ptr %i.cy, align 8, !tbaa !126
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.da
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !131 ; 6 uses
  %i.fe = ptrtoaddr ptr %i.fd to i64
  %i.ff = getelementptr i8, ptr %i.fd, i64 4      ; 19 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !126
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.da
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !131 ; 5 uses
  %i.fk = ptrtoaddr ptr %i.fj to i64
  %i.fl = mul i32 %i.dh, %i.dm
  %i.fm = sext i32 %i.fl to i64                   ; 10 uses
  %i.fn = getelementptr [4 x i8], ptr %i.fj, i64 %i.fm ; 10 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !126
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.da
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !131
  %i.fs = sext i32 %i.dh to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.fs ; 15 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !134
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.da
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !46 ; 7 uses
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 %i.fm
  %i.fz = add nsw i32 %i.dm, 2
  %i.ga = sext i32 %i.fz to i64
  %i.gb = shl nsw i64 %i.ga, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fd, i8 0, i64 %i.gb, i1 false)
  %i.gc = mul i32 %i.di, %i.dm
  %i.gd = sext i32 %i.gc to i64                   ; 14 uses
  %i.ge = sub nsw i64 0, %i.gd                    ; 2 uses
  %i.gf = getelementptr [4 x i8], ptr %i.fn, i64 %i.ge ; 8 uses
  %i.gg = add i32 %i.df, 2
  %i.gh = add i32 %i.gg, %i.dx                    ; 2 uses
  %i.gi = mul nsw i32 %i.gh, %i.dm
  %i.gj = sext i32 %i.gi to i64
  %i.gk = shl nsw i64 %i.gj, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gf, i8 0, i64 %i.gk, i1 false)
  %i.gl = sext i32 %i.di to i64
  %i.gm = sub nsw i64 0, %i.gl
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.gm
  %i.go = sext i32 %i.gh to i64
  %i.gp = shl nsw i64 %i.go, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gn, i8 0, i64 %i.gp, i1 false)
  %i.gq = xor i32 %i.dg, -1                       ; 6 uses
  %invariant.gep.i = getelementptr i8, ptr %i.fy, i64 %i.ge ; 3 uses
  %i.gr = icmp sgt i32 %i.df, -2                  ; 2 uses
  br i1 %i.gr, label %.lr.ph.i, label %.preheader43.i

.lr.ph.i:                                         ; preds = %bb.ac
  %i.gs = sub nsw i32 0, %i.dr                    ; 2 uses
  %i.gt = xor i32 %i.dr, -1
  %i.gu = add i32 %i.dv, %i.gt                    ; 2 uses
  %i.gv = mul i32 %i.di, %i.eo
  %i.gw = sext i32 %i.gv to i64                   ; 3 uses
  %i.gx = sub nsw i64 0, %i.gw                    ; 2 uses
  %invariant.gep54.i = getelementptr i8, ptr %i.ek, i64 %i.gx ; 2 uses
  %invariant.gep56.i = getelementptr i8, ptr %i.em, i64 %i.gx
  %i.gy = icmp sgt i32 %i.eq, %i.dj
  %i.gz = sext i32 %i.dm to i64                   ; 3 uses
  %sext461.i = shl i64 %i.en, 32
  %i.ha = ashr exact i64 %sext461.i, 32           ; 7 uses
  br i1 %i.gy, label %.lr.ph.split.i, label %.preheader43.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.hb = icmp sgt i32 %i.dm, 0
  %i.hc = sext i32 %i.dj to i64                   ; 7 uses
  br i1 %i.hb, label %.lr.ph51.us.preheader.i, label %.lr.ph51.preheader.i

.lr.ph51.preheader.i:                             ; preds = %.lr.ph.split.i
  %smax.i = call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %wide.trip.count.i = sext i32 %i.eq to i64      ; 3 uses
  %i.hd = sub nsw i64 %wide.trip.count.i, %i.hc
  %xtraiter934 = and i64 %i.hd, 1
  %lcmp.mod935.not = icmp eq i64 %xtraiter934, 0
  %i.he = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.hc ; 2 uses
  %indvars.iv.next.i.prol = add nsw i64 %i.hc, 1
  %i.hf = add nsw i64 %wide.trip.count.i, -1
  %i.hg = icmp eq i64 %i.hf, %i.hc
  br label %.lr.ph51.i

.lr.ph51.us.preheader.i:                          ; preds = %.lr.ph.split.i
  %i.hh = sext i32 %i.gq to i64
  %smax149.i = call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %wide.trip.count150.i = zext nneg i32 %smax149.i to i64
  %wide.trip.count144.i = sext i32 %i.eq to i64   ; 2 uses
  %wide.trip.count139.i = zext nneg i32 %i.dm to i64 ; 8 uses
  %i.hi = sub nsw i64 %i.fm, %i.gd
  %scevgep613 = getelementptr i8, ptr %i.fx, i64 %i.hi
  %i.hj = add i32 %i.dx, %i.di
  %i.hk = add i32 %i.hj, %i.dk
  %i.hl = mul i32 %i.dm, %i.hk
  %i.hm = xor i64 %i.hc, -1
  %i.hn = add nsw i64 %i.hm, %wide.trip.count144.i ; 2 uses
  %i.ho = mul nsw i64 %i.hn, %i.gz                ; 2 uses
  %i.hp = add i64 %i.ho, %i.fm
  %i.hq = add i64 %i.hp, %wide.trip.count139.i
  %i.hr = sub i64 %i.hq, %i.gd
  %scevgep617 = getelementptr i8, ptr %i.fx, i64 %i.hr
  %i.hs = add i64 %i.ho, %i.fm
  %i.ht = add i64 %i.hs, %wide.trip.count139.i
  %i.hu = sub i64 %i.ht, %i.gd
  %i.hv = shl i64 %i.hu, 2
  %scevgep619 = getelementptr i8, ptr %i.fj, i64 %i.hv ; 2 uses
  %i.hw = sub nsw i64 %i.el, %i.gw
  %scevgep620 = getelementptr i8, ptr %.val, i64 %i.hw
  %i.hx = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %smin621 = sext i32 %i.hx to i64
  %33 = sext i32 %i.dz to i64
  %i.hy = mul i64 %i.hn, %i.ha
  %i.hz = add i64 %i.hy, %wide.trip.count139.i
  %i.ia = add i64 %i.hz, %i.el
  %i.ib = sub i64 %i.ia, %i.gw
  %scevgep625 = getelementptr i8, ptr %.val, i64 %i.ib
  %min.iters.check641 = icmp ult i32 %i.dm, 8
  %stride.check633 = icmp slt i64 %i.ha, 0
  %n.vec643 = and i64 %wide.trip.count139.i, 2147483644 ; 3 uses
  %cmp.n652 = icmp eq i64 %n.vec643, %wide.trip.count139.i
  %xtraiter937 = and i64 %wide.trip.count139.i, 1
  %lcmp.mod938.not = icmp eq i64 %xtraiter937, 0
  %i.ic = add nsw i64 %wide.trip.count139.i, -1
  br label %.lr.ph51.us.i

.lr.ph51.us.i:                                    ; preds = %._crit_edge52.split.us.us.i, %.lr.ph51.us.preheader.i
  %indvar614 = phi i32 [ %indvar.next615, %._crit_edge52.split.us.us.i ], [ 0, %.lr.ph51.us.preheader.i ] ; 2 uses
  %indvars.iv146.i = phi i64 [ %indvars.iv.next147.i, %._crit_edge52.split.us.us.i ], [ %i.hh, %.lr.ph51.us.preheader.i ] ; 3 uses
  %i.id = mul i32 %i.hl, %indvar614
  %i.ie = sext i32 %i.id to i64                   ; 2 uses
  %scevgep616 = getelementptr i8, ptr %scevgep613, i64 %i.ie ; 2 uses
  %scevgep618 = getelementptr i8, ptr %scevgep617, i64 %i.ie ; 2 uses
  %smax622 = call i64 @llvm.smax.i64(i64 %smin621, i64 %indvars.iv146.i)
  %smin623 = call i64 @llvm.smin.i64(i64 %smax622, i64 %33) ; 2 uses
  %scevgep624 = getelementptr i8, ptr %scevgep620, i64 %smin623 ; 2 uses
  %scevgep626 = getelementptr i8, ptr %scevgep625, i64 %smin623 ; 2 uses
  %i.if = trunc nsw i64 %indvars.iv146.i to i32   ; 3 uses
  %i.ig = add i32 %i.dh, %i.if
  %i.ih = mul nsw i32 %i.ig, %i.es
  %i.ii = sext i32 %i.ih to i64
  %gep.us.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.ii
  %.sroa.speculated15.us.i = call i32 @llvm.smax.i32(i32 %i.if, i32 %i.gs)
  %.sroa.speculated11.us.i = call i32 @llvm.smin.i32(i32 %i.gu, i32 %.sroa.speculated15.us.i)
  %i.ij = sext i32 %.sroa.speculated11.us.i to i64
  %gep55.us.i = getelementptr i8, ptr %invariant.gep54.i, i64 %i.ij
  %.sroa.speculated6.us.i = call i32 @llvm.smax.i32(i32 %i.if, i32 %i.ds)
  %.sroa.speculated.us.i = call i32 @llvm.smin.i32(i32 %i.dz, i32 %.sroa.speculated6.us.i)
  %i.ik = sext i32 %.sroa.speculated.us.i to i64
  %gep57.us.i = getelementptr i8, ptr %invariant.gep56.i, i64 %i.ik
  %bound0627 = icmp ult ptr %scevgep616, %scevgep619
  %bound1628 = icmp ult ptr %i.gf, %scevgep618
  %found.conflict629 = and i1 %bound0627, %bound1628
  %bound0630 = icmp ult ptr %scevgep616, %scevgep626
  %bound1631 = icmp ult ptr %scevgep624, %scevgep618
  %found.conflict632 = and i1 %bound0630, %bound1631
  %i.il = or i1 %found.conflict632, %stride.check633
  %conflict.rdx634 = or i1 %found.conflict629, %i.il
  %bound0635 = icmp ult ptr %i.gf, %scevgep626
  %bound1636 = icmp ult ptr %scevgep624, %scevgep619
  %found.conflict637 = and i1 %bound0635, %bound1636
  %conflict.rdx639 = or i1 %found.conflict637, %conflict.rdx634
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph51.us.i
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %._crit_edge.us.us.i ], [ %i.hc, %.lr.ph51.us.i ] ; 2 uses
  %.041948.us.us.i = phi ptr [ %i.km, %._crit_edge.us.us.i ], [ %gep57.us.i, %.lr.ph51.us.i ] ; 5 uses
  %.042247.us.us.i = phi ptr [ %i.kl, %._crit_edge.us.us.i ], [ %gep55.us.i, %.lr.ph51.us.i ] ; 2 uses
  %.042446.us.us.i = phi ptr [ %i.kk, %._crit_edge.us.us.i ], [ %gep.us.i, %.lr.ph51.us.i ] ; 5 uses
  %.042645.us.us.i = phi ptr [ %i.kj, %._crit_edge.us.us.i ], [ %i.gf, %.lr.ph51.us.i ] ; 5 uses
  %i.im = load i8, ptr %.042247.us.us.i, align 1, !tbaa !45 ; 2 uses
  %i.in = zext i8 %i.im to i32                    ; 4 uses
  %brmerge = select i1 %min.iters.check641, i1 true, i1 %conflict.rdx639
  br i1 %brmerge, label %scalar.ph640.preheader, label %vector.ph642

vector.ph642:                                     ; preds = %.lr.ph.us.us.i
  %broadcast.splatinsert644 = insertelement <4 x i32> poison, i32 %i.in, i64 0
  %broadcast.splat645 = shufflevector <4 x i32> %broadcast.splatinsert644, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body646

vector.body646:                                   ; preds = %vector.body646, %vector.ph642
  %index647 = phi i64 [ 0, %vector.ph642 ], [ %index.next650, %vector.body646 ] ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.041948.us.us.i, i64 %index647
  %wide.load648 = load <4 x i8>, ptr %i.io, align 1, !tbaa !45, !alias.scope !231
  %i.ip = zext <4 x i8> %wide.load648 to <4 x i32>
  %i.iq = sub nsw <4 x i32> %broadcast.splat645, %i.ip
  %i.ir = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.iq, i1 true) ; 2 uses
  %i.is = trunc nuw <4 x i32> %i.ir to <4 x i8>
  %i.it = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %index647
  store <4 x i8> %i.is, ptr %i.it, align 1, !tbaa !45, !alias.scope !234, !noalias !236
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %index647 ; 2 uses
  %wide.load649 = load <4 x i32>, ptr %i.iu, align 4, !tbaa !8, !alias.scope !238, !noalias !231
  %i.iv = add nsw <4 x i32> %i.ir, %wide.load649
  store <4 x i32> %i.iv, ptr %i.iu, align 4, !tbaa !8, !alias.scope !238, !noalias !231
  %index.next650 = add nuw i64 %index647, 4       ; 2 uses
  %i.iw = icmp eq i64 %index.next650, %n.vec643
  br i1 %i.iw, label %middle.block651, label %vector.body646, !llvm.loop !239

middle.block651:                                  ; preds = %vector.body646
  br i1 %cmp.n652, label %._crit_edge.us.us.i, label %scalar.ph640.preheader

scalar.ph640.preheader:                           ; preds = %.lr.ph.us.us.i, %middle.block651
  %indvars.iv136.i.ph = phi i64 [ %n.vec643, %middle.block651 ], [ 0, %.lr.ph.us.us.i ] ; 6 uses
  br i1 %lcmp.mod938.not, label %scalar.ph640.prol.loopexit, label %scalar.ph640.prol

scalar.ph640.prol:                                ; preds = %scalar.ph640.preheader
  %i.ix = getelementptr inbounds nuw i8, ptr %.041948.us.us.i, i64 %indvars.iv136.i.ph
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !45
  %i.iz = zext i8 %i.iy to i32
  %i.ja = sub nsw i32 %i.in, %i.iz
  %i.jb = call i32 @llvm.abs.i32(i32 %i.ja, i1 true) ; 2 uses
  %i.jc = trunc nuw i32 %i.jb to i8
  %i.jd = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %indvars.iv136.i.ph
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !45
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %indvars.iv136.i.ph ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !8
  %i.jg = add nsw i32 %i.jb, %i.jf
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !8
  %indvars.iv.next137.i.prol = or disjoint i64 %indvars.iv136.i.ph, 1
  br label %scalar.ph640.prol.loopexit

scalar.ph640.prol.loopexit:                       ; preds = %scalar.ph640.prol, %scalar.ph640.preheader
  %indvars.iv136.i.unr = phi i64 [ %indvars.iv136.i.ph, %scalar.ph640.preheader ], [ %indvars.iv.next137.i.prol, %scalar.ph640.prol ]
  %i.jh = icmp eq i64 %indvars.iv136.i.ph, %i.ic
  br i1 %i.jh, label %._crit_edge.us.us.i, label %scalar.ph640

scalar.ph640:                                     ; preds = %scalar.ph640.prol.loopexit, %scalar.ph640
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i.1, %scalar.ph640 ], [ %indvars.iv136.i.unr, %scalar.ph640.prol.loopexit ] ; 5 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.041948.us.us.i, i64 %indvars.iv136.i
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !45
  %i.jk = zext i8 %i.jj to i32
  %i.jl = sub nsw i32 %i.in, %i.jk
  %i.jm = call i32 @llvm.abs.i32(i32 %i.jl, i1 true) ; 2 uses
  %i.jn = trunc nuw i32 %i.jm to i8
  %i.jo = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %indvars.iv136.i
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !45
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %indvars.iv136.i ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !8
  %i.jr = add nsw i32 %i.jm, %i.jq
  store i32 %i.jr, ptr %i.jp, align 4, !tbaa !8
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 1 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.041948.us.us.i, i64 %indvars.iv.next137.i
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !45
  %i.ju = zext i8 %i.jt to i32
  %i.jv = sub nsw i32 %i.in, %i.ju
  %i.jw = call i32 @llvm.abs.i32(i32 %i.jv, i1 true) ; 2 uses
  %i.jx = trunc nuw i32 %i.jw to i8
  %i.jy = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %indvars.iv.next137.i
  store i8 %i.jx, ptr %i.jy, align 1, !tbaa !45
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %indvars.iv.next137.i ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !8
  %i.kb = add nsw i32 %i.jw, %i.ka
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !8
  %indvars.iv.next137.i.1 = add nuw nsw i64 %indvars.iv136.i, 2 ; 2 uses
  %exitcond140.not.i.1 = icmp eq i64 %indvars.iv.next137.i.1, %wide.trip.count139.i
  br i1 %exitcond140.not.i.1, label %._crit_edge.us.us.i, label %scalar.ph640, !llvm.loop !240

._crit_edge.us.us.i:                              ; preds = %scalar.ph640.prol.loopexit, %scalar.ph640, %middle.block651
  %i.kc = zext i8 %i.im to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !45
  %i.kf = zext i8 %i.ke to i32
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv141.i ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !8
  %i.ki = add nsw i32 %i.kh, %i.kf
  store i32 %i.ki, ptr %i.kg, align 4, !tbaa !8
  %indvars.iv.next142.i = add nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %i.gz
  %i.kk = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %i.gz
  %i.kl = getelementptr inbounds i8, ptr %.042247.us.us.i, i64 %i.ha
  %i.km = getelementptr inbounds i8, ptr %.041948.us.us.i, i64 %i.ha
  %exitcond145.not.i = icmp eq i64 %indvars.iv.next142.i, %wide.trip.count144.i
  br i1 %exitcond145.not.i, label %._crit_edge52.split.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !241

._crit_edge52.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %indvars.iv.next147.i = add nsw i64 %indvars.iv146.i, 1 ; 2 uses
  %exitcond151.not.i = icmp eq i64 %indvars.iv.next147.i, %wide.trip.count150.i
  %indvar.next615 = add i32 %indvar614, 1
  br i1 %exitcond151.not.i, label %.preheader43.i, label %.lr.ph51.us.i, !llvm.loop !242

.preheader43.i:                                   ; preds = %._crit_edge52.split.i, %._crit_edge52.split.us.us.i, %.lr.ph.i, %bb.ac
  %i.kn = icmp sgt i32 %i.dx, 0                   ; 2 uses
  br i1 %i.kn, label %.preheader42.lr.ph.i, label %._crit_edge67.i

.preheader42.lr.ph.i:                             ; preds = %.preheader43.i
  %i.ko = icmp sgt i32 %i.dq, 0
  %i.kp = add nuw i32 %i.dr, 1
  %i.kq = add i32 %i.kp, %i.dz                    ; 3 uses
  %i.kr = icmp slt i32 %i.kq, %i.dv               ; 2 uses
  br i1 %i.ko, label %.preheader42.lr.ph.split.us.i, label %.preheader42.lr.ph.split.i

.preheader42.lr.ph.split.us.i:                    ; preds = %.preheader42.lr.ph.i
  br i1 %i.kr, label %.preheader42.us.us.preheader.i, label %.preheader42.us.preheader.i

.preheader42.us.preheader.i:                      ; preds = %.preheader42.lr.ph.split.us.i
  %sext260.i = shl i64 %i.ep, 32
  %i.ks = ashr exact i64 %sext260.i, 32
  %wide.trip.count169.i = zext nneg i32 %i.dx to i64
  %wide.trip.count164.i = zext nneg i32 %i.dq to i64 ; 6 uses
  %min.iters.check675 = icmp ult i32 %i.dq, 4
  %min.iters.check677 = icmp ult i32 %i.dq, 16
  %i.kt = and i64 %wide.trip.count164.i, 12
  %n.vec679 = and i64 %wide.trip.count164.i, 2147483632 ; 4 uses
  %broadcast.splatinsert680 = insertelement <8 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat681 = shufflevector <8 x i16> %broadcast.splatinsert680, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n686 = icmp eq i64 %n.vec679, %wide.trip.count164.i
  %min.epilog.iters.check691 = icmp eq i64 %i.kt, 0
  %n.vec693 = and i64 %wide.trip.count164.i, 2147483644 ; 3 uses
  %broadcast.splatinsert694 = insertelement <4 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat695 = shufflevector <4 x i16> %broadcast.splatinsert694, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n700 = icmp eq i64 %n.vec693, %wide.trip.count164.i
  br label %iter.check688

.preheader42.us.us.preheader.i:                   ; preds = %.preheader42.lr.ph.split.us.i
  %i.ku = sext i32 %i.kq to i64                   ; 5 uses
  %sext261.i = shl i64 %i.ep, 32
  %i.kv = ashr exact i64 %sext261.i, 32
  %wide.trip.count184.i = zext nneg i32 %i.dx to i64
  %wide.trip.count174.i = zext nneg i32 %i.dq to i64 ; 6 uses
  %i.kw = xor i32 %i.do, -1
  %i.kx = zext i32 %i.kw to i64
  %i.ky = add nuw nsw i64 %i.kx, 1                ; 5 uses
  %min.iters.check732 = icmp ult i32 %i.dq, 4
  %min.iters.check734 = icmp ult i32 %i.dq, 16
  %i.kz = and i64 %wide.trip.count174.i, 12
  %n.vec736 = and i64 %wide.trip.count174.i, 2147483632 ; 4 uses
  %broadcast.splatinsert737 = insertelement <8 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat738 = shufflevector <8 x i16> %broadcast.splatinsert737, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n743 = icmp eq i64 %n.vec736, %wide.trip.count174.i
  %min.epilog.iters.check748 = icmp eq i64 %i.kz, 0
  %n.vec750 = and i64 %wide.trip.count174.i, 2147483644 ; 3 uses
  %broadcast.splatinsert751 = insertelement <4 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat752 = shufflevector <4 x i16> %broadcast.splatinsert751, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n757 = icmp eq i64 %n.vec750, %wide.trip.count174.i
  %min.iters.check703 = icmp ugt i32 %i.do, -4
end_hunk_0
begin_hunk_1_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  %i.me = load i8, ptr %i.md, align 1, !tbaa !45
  %i.mf = zext i8 %i.me to i32
  %i.mg = load i32, ptr %i.he, align 4, !tbaa !8
  %i.mh = add nsw i32 %i.mg, %i.mf
  store i32 %i.mh, ptr %i.he, align 4, !tbaa !8
  %i.mi = getelementptr inbounds i8, ptr %gep55.i, i64 %i.ha
  br label %.prol.loopexit933

.prol.loopexit933:                                ; preds = %.prol.loopexit933.unr-lcssa, %.lr.ph51.i
  %indvars.iv.i.unr = phi i64 [ %i.hc, %.lr.ph51.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit933.unr-lcssa ]
  %.042247.i.unr = phi ptr [ %gep55.i, %.lr.ph51.i ], [ %i.mi, %.prol.loopexit933.unr-lcssa ]
  br i1 %i.hg, label %._crit_edge52.split.i, label %.lr.ph51.i.new

.lr.ph51.i.new:                                   ; preds = %.prol.loopexit933, %.lr.ph51.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph51.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit933 ] ; 3 uses
  %.042247.i = phi ptr [ %i.nb, %.lr.ph51.i.new ], [ %.042247.i.unr, %.prol.loopexit933 ] ; 2 uses
  %i.mj = load i8, ptr %.042247.i, align 1, !tbaa !45
  %i.mk = zext i8 %i.mj to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !45
  %i.mn = zext i8 %i.mm to i32
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv.i ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !8
  %i.mq = add nsw i32 %i.mp, %i.mn
  store i32 %i.mq, ptr %i.mo, align 4, !tbaa !8
  %i.mr = getelementptr inbounds i8, ptr %.042247.i, i64 %i.ha ; 2 uses
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !45
  %i.mt = zext i8 %i.ms to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !45
  %i.mw = zext i8 %i.mv to i32
  %i.mx = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.i
  %i.my = getelementptr i8, ptr %i.mx, i64 4      ; 2 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !8
  %i.na = add nsw i32 %i.mz, %i.mw
  store i32 %i.na, ptr %i.my, align 4, !tbaa !8
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.nb = getelementptr inbounds i8, ptr %i.mr, i64 %i.ha
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge52.split.i, label %.lr.ph51.i.new, !llvm.loop !241

._crit_edge52.split.i:                            ; preds = %.lr.ph51.i.new, %.prol.loopexit933
  %i.nc = add nsw i32 %storemerge53.i, 1          ; 2 uses
  %exitcond135.not.i = icmp eq i32 %i.nc, %smax.i
  br i1 %exitcond135.not.i, label %.preheader43.i, label %.lr.ph51.i, !llvm.loop !242

iter.check:                                       ; preds = %._crit_edge65.i, %.preheader42.preheader.i
  %indvars.iv156.i = phi i64 [ 0, %.preheader42.preheader.i ], [ %indvars.iv.next157.i, %._crit_edge65.i ] ; 2 uses
  %i.nd = mul nsw i64 %indvars.iv156.i, %i.lt
  %invariant.gep269.i = getelementptr [2 x i8], ptr %.val86, i64 %i.nd ; 3 uses
  br i1 %min.iters.check655, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check656, label %vec.epilog.ph, label %vector.ph657

vector.ph657:                                     ; preds = %vector.main.loop.iter.check
  %invariant.gep966 = getelementptr [2 x i8], ptr %invariant.gep269.i, i64 %i.ls
  br label %vector.body661

vector.body661:                                   ; preds = %vector.body661, %vector.ph657
  %index662 = phi i64 [ 0, %vector.ph657 ], [ %index.next663, %vector.body661 ] ; 2 uses
  %gep967 = getelementptr [2 x i8], ptr %invariant.gep966, i64 %index662 ; 2 uses
  %i.ne = getelementptr i8, ptr %gep967, i64 16
  store <8 x i16> %broadcast.splat660, ptr %gep967, align 2, !tbaa !243
  store <8 x i16> %broadcast.splat660, ptr %i.ne, align 2, !tbaa !243
  %index.next663 = add nuw i64 %index662, 16      ; 2 uses
  %i.nf = icmp eq i64 %index.next663, %n.vec658
  br i1 %i.nf, label %middle.block664, label %vector.body661, !llvm.loop !256

middle.block664:                                  ; preds = %vector.body661
  br i1 %cmp.n665, label %._crit_edge65.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block664
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !246

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec658, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %invariant.gep968 = getelementptr [2 x i8], ptr %invariant.gep269.i, i64 %i.ls
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index670 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next671, %vec.epilog.vector.body ] ; 2 uses
  %gep969 = getelementptr [2 x i8], ptr %invariant.gep968, i64 %index670
  store <4 x i16> %broadcast.splat669, ptr %gep969, align 2, !tbaa !243
  %index.next671 = add nuw i64 %index670, 4       ; 2 uses
  %i.ng = icmp eq i64 %index.next671, %n.vec667
  br i1 %i.ng, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !257

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n672, label %._crit_edge65.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv152.i.ph = phi i64 [ %i.ls, %iter.check ], [ %i.ly, %vec.epilog.iter.check ], [ %i.lz, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv152.i = phi i64 [ %indvars.iv.next153.i, %vec.epilog.scalar.ph ], [ %indvars.iv152.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep269.i, i64 %indvars.iv152.i
  store i16 %i.ef, ptr %gep.i, align 2, !tbaa !243
  %indvars.iv.next153.i = add nsw i64 %indvars.iv152.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next153.i to i32
  %exitcond155.not.i = icmp eq i32 %i.dv, %lftr.wideiv.i
  br i1 %exitcond155.not.i, label %._crit_edge65.i, label %vec.epilog.scalar.ph, !llvm.loop !258

._crit_edge65.i:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block664
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %exitcond160.not.i = icmp eq i64 %indvars.iv.next157.i, %wide.trip.count159.i
  br i1 %exitcond160.not.i, label %._crit_edge67.i, label %iter.check, !llvm.loop !252

._crit_edge67.i:                                  ; preds = %._crit_edge65.i, %._crit_edge.us.i, %._crit_edge65.us.us.i, %.preheader42.lr.ph.split.i, %.preheader43.i
  %.not453117.i = icmp slt i32 %i.dz, 0
  br i1 %.not453117.i, label %_ZN2cvL26findStereoCorrespondenceBMIsEEvRKNS_3MatES3_RS1_S4_RKNS_14StereoBMParamsEiiRKNS_8BufferBMEm.exit, label %.lr.ph121.i

.lr.ph121.i:                                      ; preds = %._crit_edge67.i
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %.val86, i64 %i.ej
  %i.ni = add nsw i32 %i.df, 1                    ; 2 uses
  %i.nj = sub nsw i32 0, %i.dr                    ; 2 uses
  %i.nk = xor i32 %i.dr, -1
  %i.nl = add i32 %i.dv, %i.nk                    ; 2 uses
  %i.nm = mul i32 %i.di, %i.eo
  %i.nn = sext i32 %i.nm to i64                   ; 3 uses
  %i.no = sub nsw i64 0, %i.nn                    ; 2 uses
  %invariant.gep123.i = getelementptr i8, ptr %i.ek, i64 %i.no ; 2 uses
  %invariant.gep127.i = getelementptr i8, ptr %i.em, i64 %i.no
  %i.np = icmp sgt i32 %i.eq, %i.dj
  %i.nq = icmp sgt i32 %i.dm, 0                   ; 4 uses
  %i.nr = sext i32 %i.dm to i64                   ; 7 uses
  %sext.i = shl i64 %i.en, 32
  %i.ns = ashr exact i64 %sext.i, 32              ; 5 uses
  %.not45580.i = icmp sgt i32 %i.cw, %i.dg
  %i.nt = sext i32 %i.eq to i64                   ; 3 uses
  %i.nu = getelementptr [4 x i8], ptr %i.ft, i64 %i.nt
  %i.nv = getelementptr i8, ptr %i.nu, i64 -4
  %i.nw = icmp slt i32 %i.gq, %i.dj
  %i.nx = sext i32 %i.dj to i64                   ; 5 uses
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.nx
  %i.nz = add nsw i32 %i.dg, 2
  %i.oa = sub i32 %i.nz, %i.di                    ; 6 uses
  %i.ob = sub i32 1, %i.di                        ; 3 uses
  %i.oc = mul i32 %i.ob, %i.dm
  %i.od = sext i32 %i.oc to i64                   ; 2 uses
  %i.oe = getelementptr [4 x i8], ptr %i.fn, i64 %i.od ; 2 uses
  %i.of = icmp sge i32 %i.ob, %i.dg
  %i.og = icmp eq i32 %i.dm, 0
  %i.oh = add nsw i32 %i.eq, -1
  %i.oi = icmp sgt i32 %i.ed, 0
  %i.oj = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ok = getelementptr [4 x i8], ptr %i.ff, i64 %i.nr ; 2 uses
  %i.ol = getelementptr i8, ptr %i.ok, i64 -8
  %smin.i = sext i32 %i.dk to i64                 ; 3 uses
  %i.om = sext i32 %i.dx to i64
  %i.on = sext i32 %i.gq to i64                   ; 6 uses
  %smax219.i = call i32 @llvm.abs.i32(i32 %i.dg, i1 false)
  %i.oo = sext i32 %i.dg to i64
  %sext263.i = shl i64 %i.ep, 32
  %i.op = ashr exact i64 %sext263.i, 32           ; 3 uses
  %i.oq = add i32 %i.dy, 1
  %i.or = add i32 %i.oq, %i.ds
  %wide.trip.count240.i = zext i32 %i.or to i64
  %wide.trip.count189.i = zext i32 %i.dm to i64   ; 21 uses
  %invariant.gep276.i = getelementptr [4 x i8], ptr %i.ft, i64 %i.om ; 2 uses
  %brmerge.i = select i1 %i.of, i1 true, i1 %i.og
  %wide.trip.count220.i = zext i32 %smax219.i to i64 ; 2 uses
  %wide.trip.count235.i = zext nneg i32 %i.dx to i64
  %i.os = shl nuw nsw i64 %wide.trip.count189.i, 2
  %i.ot = getelementptr i8, ptr %i.fd, i64 %i.os
  %scevgep776 = getelementptr i8, ptr %i.ot, i64 4
  %i.ou = add i32 %i.dg, %i.di
  %i.ov = add i32 %i.ou, -2
  %i.ow = zext i32 %i.ov to i64
  %i.ox = mul nsw i64 %i.nr, %i.ow
  %i.oy = add i64 %i.ox, %i.fm
  %i.oz = add i64 %i.oy, %i.od
  %i.pa = add i64 %i.oz, %wide.trip.count189.i
  %i.pb = shl i64 %i.pa, 2
  %scevgep777 = getelementptr i8, ptr %i.fj, i64 %i.pb
  %i.pc = shl nsw i64 %i.fm, 2
  %i.pd = add i64 %i.pc, %i.fk
  %i.pe = shl nsw i64 %i.gd, 2
  %.neg896 = sub i64 %i.pe, %i.pd
  %i.pf = sub nsw i64 %i.fm, %i.gd                ; 2 uses
  %scevgep836 = getelementptr i8, ptr %i.fx, i64 %i.pf
  %i.pg = add i32 %i.dx, %i.di
  %i.ph = add i32 %i.pg, %i.dk                    ; 2 uses
  %i.pi = mul i32 %i.dm, %i.ph
  %i.pj = xor i64 %i.nx, -1
  %i.pk = add nsw i64 %i.pj, %i.nt                ; 2 uses
  %i.pl = mul i64 %i.pk, %i.nr                    ; 2 uses
  %i.pm = add i64 %i.pl, %i.fm
  %i.pn = add i64 %i.pm, %wide.trip.count189.i
  %i.po = sub i64 %i.pn, %i.gd                    ; 2 uses
  %scevgep838 = getelementptr i8, ptr %i.fx, i64 %i.po
  %i.pp = add i64 %i.pl, %i.fm
  %i.pq = add i64 %i.pp, %wide.trip.count189.i
  %i.pr = sub i64 %i.pq, %i.gd
  %i.ps = shl i64 %i.pr, 2
  %scevgep840 = getelementptr i8, ptr %i.fj, i64 %i.ps ; 3 uses
  %i.pt = sub nsw i64 %i.el, %i.nn
  %scevgep841 = getelementptr i8, ptr %.val, i64 %i.pt
  %i.pu = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %smin842 = sext i32 %i.pu to i64
  %34 = sext i32 %i.dg to i64
  %i.pv = zext nneg i32 %i.dz to i64
  %i.pw = mul i64 %i.pk, %i.ns
  %i.px = add i64 %i.pw, %wide.trip.count189.i
  %i.py = add i64 %i.px, %i.el
  %i.pz = sub i64 %i.py, %i.nn
  %scevgep846 = getelementptr i8, ptr %.val, i64 %i.pz
  %scevgep848 = getelementptr i8, ptr %i.fx, i64 %i.pf
  %i.qa = mul i32 %i.dm, %i.ph
  %scevgep850 = getelementptr i8, ptr %i.fx, i64 %i.po
  %i.qb = add nsw i64 %wide.trip.count189.i, -1   ; 2 uses
  %min.iters.check882 = icmp ult i32 %i.dm, 20
  %stride.check861 = icmp slt i64 %i.ns, 0
  %n.vec884 = and i64 %wide.trip.count189.i, 2147483644 ; 3 uses
  %cmp.n894 = icmp eq i64 %n.vec884, %wide.trip.count189.i
  %i.qc = sub i32 %i.dg, %i.dk                    ; 2 uses
  %i.qd = zext i32 %i.qc to i64
  %i.qe = add nuw nsw i64 %i.qd, 1                ; 2 uses
  %min.iters.check824 = icmp ult i32 %i.qc, 7
  %n.vec826 = and i64 %i.qe, 8589934584           ; 3 uses
  %i.qf = add nsw i64 %n.vec826, %smin.i
  %invariant.gep974 = getelementptr [4 x i8], ptr %invariant.gep276.i, i64 %smin.i
  %cmp.n833 = icmp eq i64 %i.qe, %n.vec826
  %i.qg = sub nsw i32 0, %i.dg
  %i.qh = sext i32 %i.qg to i64
  %i.qi = add nsw i64 %i.nx, 1
  %i.qj = sub nsw i64 %i.qi, %i.qh                ; 3 uses
  %min.iters.check812 = icmp ult i64 %i.qj, 8
  %n.vec814 = and i64 %i.qj, -8                   ; 3 uses
  %i.qk = add nsw i64 %n.vec814, %i.on
  %invariant.gep976 = getelementptr [4 x i8], ptr %i.ft, i64 %i.on
  %cmp.n821 = icmp eq i64 %i.qj, %n.vec814
  %min.iters.check798 = icmp ult i32 %i.dm, 8
  %op.rdx = add i64 %.neg896, 3
  %op.rdx899 = add i64 %op.rdx, %i.fe
  %diff.check796 = icmp ult i64 %op.rdx899, 31
  %or.cond897 = select i1 %min.iters.check798, i1 true, i1 %diff.check796
  %n.vec800 = and i64 %wide.trip.count189.i, 2147483640 ; 3 uses
  %broadcast.splatinsert801 = insertelement <4 x i32> poison, i32 %i.oa, i64 0
  %broadcast.splat802 = shufflevector <4 x i32> %broadcast.splatinsert801, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n809 = icmp eq i64 %n.vec800, %wide.trip.count189.i
  %xtraiter940 = and i64 %wide.trip.count189.i, 3 ; 2 uses
  %lcmp.mod941.not = icmp eq i64 %xtraiter940, 0
  %min.iters.check782 = icmp ult i32 %i.dm, 8
  %bound0778 = icmp ult ptr %i.ff, %scevgep777
  %bound1779 = icmp ult ptr %i.oe, %scevgep776
  %found.conflict780 = and i1 %bound0778, %bound1779
  %n.vec784 = and i64 %wide.trip.count189.i, 2147483640 ; 3 uses
  %cmp.n793 = icmp eq i64 %n.vec784, %wide.trip.count189.i
  %xtraiter943 = and i64 %wide.trip.count189.i, 3 ; 2 uses
  %lcmp.mod944.not = icmp eq i64 %xtraiter943, 0
  %i.ql = sub nsw i32 0, %i.dg
  %i.qm = sext i32 %i.ql to i64
  %i.qn = add nuw nsw i64 %wide.trip.count220.i, 1
  %i.qo = sub nsw i64 %i.qn, %i.qm                ; 3 uses
  %min.iters.check760 = icmp ult i64 %i.qo, 8
  %n.vec762 = and i64 %i.qo, -8                   ; 3 uses
  %i.qp = add nsw i64 %n.vec762, %i.on
  %invariant.gep978 = getelementptr [4 x i8], ptr %i.ft, i64 %i.on
  %cmp.n772 = icmp eq i64 %i.qo, %n.vec762
  %xtraiter946 = and i64 %wide.trip.count189.i, 1
  %i.qq = icmp eq i64 %i.qb, 0
  %unroll_iter951 = and i64 %wide.trip.count189.i, 2147483646
  %lcmp.mod947.not = icmp eq i64 %xtraiter946, 0
  %lcmp.mod950 = trunc i32 %i.dm to i1
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge112.i, %.lr.ph121.i
  %indvars.iv237.i = phi i64 [ 0, %.lr.ph121.i ], [ %indvars.iv.next238.i, %._crit_edge112.i ] ; 4 uses
  %.0418119.i = phi ptr [ %i.nh, %.lr.ph121.i ], [ %i.aaj, %._crit_edge112.i ] ; 4 uses
  %35 = add i64 %indvars.iv237.i, %34
  %smax843 = call i64 @llvm.smax.i64(i64 %smin842, i64 %35)
  %smin844 = call i64 @llvm.smin.i64(i64 %smax843, i64 %i.pv) ; 2 uses
  %scevgep845 = getelementptr i8, ptr %scevgep841, i64 %smin844 ; 2 uses
  %scevgep847 = getelementptr i8, ptr %scevgep846, i64 %smin844 ; 2 uses
  %i.qr = load ptr, ptr %i.et, align 8, !tbaa !120 ; 2 uses
  %.not454.i = icmp eq ptr %i.qr, null
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.ej
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %indvars.iv237.i
  %i.qu = select i1 %.not454.i, ptr %i.b, ptr %i.qt
  br i1 %i.np, label %.lr.ph79.preheader.i, label %.preheader41.i

.lr.ph79.preheader.i:                             ; preds = %bb.ad
  %i.qv = trunc i64 %indvars.iv237.i to i32       ; 3 uses
  %i.qw = add i32 %i.dg, %i.qv                    ; 3 uses
  %i.qx = call i32 @llvm.smax.i32(i32 %i.qw, i32 %i.ds)
  %i.qy = call i32 @llvm.smin.i32(i32 %i.qx, i32 %i.dz)
  %i.qz = sext i32 %i.qy to i64
  %gep128.i = getelementptr i8, ptr %invariant.gep127.i, i64 %i.qz
  %i.ra = call i32 @llvm.smax.i32(i32 %i.qw, i32 %i.nj)
  %i.rb = call i32 @llvm.smin.i32(i32 %i.ra, i32 %i.nl)
  %i.rc = sext i32 %i.rb to i64
  %gep126.i = getelementptr i8, ptr %invariant.gep123.i, i64 %i.rc
  %i.rd = add i32 %i.qv, %i.gq
  %i.re = call i32 @llvm.smax.i32(i32 %i.rd, i32 %i.nj)
  %..i99 = call i32 @llvm.smin.i32(i32 %i.re, i32 %i.nl)
  %i.rf = sext i32 %..i99 to i64
  %gep124.i = getelementptr i8, ptr %invariant.gep123.i, i64 %i.rf
  %i.rg = add i32 %i.qw, %i.dh
  %i.rh = srem i32 %i.rg, %i.ni                   ; 2 uses
  %i.ri = mul nsw i32 %i.rh, %i.es
  %i.rj = sext i32 %i.ri to i64
  %gep116.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.rj
  %i.rk = srem i32 %i.qv, %i.ni                   ; 2 uses
  %i.rl = mul nsw i32 %i.rk, %i.es
  %i.rm = sext i32 %i.rl to i64
  %gep114.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.rm
  %i.rn = mul i32 %i.pi, %i.rh
  %i.ro = sext i32 %i.rn to i64                   ; 2 uses
  %scevgep837 = getelementptr i8, ptr %scevgep836, i64 %i.ro ; 3 uses
  %scevgep839 = getelementptr i8, ptr %scevgep838, i64 %i.ro ; 3 uses
  %i.rp = mul i32 %i.qa, %i.rk
  %i.rq = sext i32 %i.rp to i64                   ; 2 uses
  %scevgep849 = getelementptr i8, ptr %scevgep848, i64 %i.rq ; 2 uses
  %scevgep851 = getelementptr i8, ptr %scevgep850, i64 %i.rq ; 2 uses
  %bound0852 = icmp ult ptr %scevgep837, %scevgep840
  %bound1853 = icmp ult ptr %i.gf, %scevgep839
  %found.conflict854 = and i1 %bound0852, %bound1853
  %bound0857 = icmp ult ptr %scevgep837, %scevgep847
  %bound1858 = icmp ult ptr %scevgep845, %scevgep839
  %found.conflict859 = and i1 %bound0857, %bound1858
  %i.rr = or i1 %found.conflict859, %stride.check861
  %conflict.rdx862 = or i1 %found.conflict854, %i.rr
  %bound0863 = icmp ult ptr %scevgep837, %scevgep851
  %bound1864 = icmp ult ptr %scevgep849, %scevgep839
  %found.conflict865 = and i1 %bound0863, %bound1864
  %conflict.rdx868 = or i1 %conflict.rdx862, %found.conflict865
  %bound0869 = icmp ult ptr %i.gf, %scevgep847
  %bound1870 = icmp ult ptr %scevgep845, %scevgep840
  %found.conflict871 = and i1 %bound0869, %bound1870
  %conflict.rdx874 = or i1 %found.conflict871, %conflict.rdx868
  %bound0875 = icmp ult ptr %i.gf, %scevgep851
  %bound1876 = icmp ult ptr %scevgep849, %scevgep840
  %found.conflict877 = and i1 %bound0875, %bound1876
  %conflict.rdx880 = or i1 %conflict.rdx874, %found.conflict877
  br label %.lr.ph79.i

.preheader41.i:                                   ; preds = %._crit_edge.i, %bb.ad
  br i1 %.not45580.i, label %.preheader40.i, label %.lr.ph82.preheader.i

.lr.ph82.preheader.i:                             ; preds = %.preheader41.i
  %.pre.i = load i32, ptr %i.nv, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check824, label %.lr.ph82.i.preheader, label %vector.ph825

vector.ph825:                                     ; preds = %.lr.ph82.preheader.i
  %broadcast.splatinsert827 = insertelement <4 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat828 = shufflevector <4 x i32> %broadcast.splatinsert827, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body829

vector.body829:                                   ; preds = %vector.body829, %vector.ph825
  %index830 = phi i64 [ 0, %vector.ph825 ], [ %index.next831, %vector.body829 ] ; 2 uses
  %gep975 = getelementptr [4 x i8], ptr %invariant.gep974, i64 %index830 ; 2 uses
  %i.rs = getelementptr i8, ptr %gep975, i64 16
  store <4 x i32> %broadcast.splat828, ptr %gep975, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat828, ptr %i.rs, align 4, !tbaa !8
  %index.next831 = add nuw i64 %index830, 8       ; 2 uses
  %i.rt = icmp eq i64 %index.next831, %n.vec826
  br i1 %i.rt, label %middle.block832, label %vector.body829, !llvm.loop !259

middle.block832:                                  ; preds = %vector.body829
  br i1 %cmp.n833, label %.preheader40.i, label %.lr.ph82.i.preheader

.lr.ph82.i.preheader:                             ; preds = %.lr.ph82.preheader.i, %middle.block832
  %indvars.iv196.i.ph = phi i64 [ %smin.i, %.lr.ph82.preheader.i ], [ %i.qf, %middle.block832 ]
  br label %.lr.ph82.i

.lr.ph79.i:                                       ; preds = %._crit_edge.i, %.lr.ph79.preheader.i
  %indvars.iv191.i = phi i64 [ %i.nx, %.lr.ph79.preheader.i ], [ %indvars.iv.next192.i, %._crit_edge.i ] ; 2 uses
  %.041776.i = phi ptr [ %gep114.i, %.lr.ph79.preheader.i ], [ %i.tk, %._crit_edge.i ] ; 3 uses
  %.142075.i = phi ptr [ %gep128.i, %.lr.ph79.preheader.i ], [ %i.to, %._crit_edge.i ] ; 3 uses
  %.042174.i = phi ptr [ %gep124.i, %.lr.ph79.preheader.i ], [ %i.tn, %._crit_edge.i ] ; 2 uses
  %.142373.i = phi ptr [ %gep126.i, %.lr.ph79.preheader.i ], [ %i.tm, %._crit_edge.i ] ; 2 uses
  %.142572.i = phi ptr [ %gep116.i, %.lr.ph79.preheader.i ], [ %i.tj, %._crit_edge.i ] ; 3 uses
  %.142771.i = phi ptr [ %i.gf, %.lr.ph79.preheader.i ], [ %i.tl, %._crit_edge.i ] ; 3 uses
  %i.ru = load i8, ptr %.142373.i, align 1, !tbaa !45 ; 2 uses
  %i.rv = zext i8 %i.ru to i32                    ; 2 uses
  br i1 %i.nq, label %.lr.ph70.i.preheader, label %._crit_edge.i

.lr.ph70.i.preheader:                             ; preds = %.lr.ph79.i
  %brmerge980 = select i1 %min.iters.check882, i1 true, i1 %conflict.rdx880
  br i1 %brmerge980, label %.lr.ph70.i.preheader902, label %vector.ph883

vector.ph883:                                     ; preds = %.lr.ph70.i.preheader
  %broadcast.splatinsert885 = insertelement <4 x i32> poison, i32 %i.rv, i64 0
  %broadcast.splat886 = shufflevector <4 x i32> %broadcast.splatinsert885, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body887

vector.body887:                                   ; preds = %vector.body887, %vector.ph883
  %index888 = phi i64 [ 0, %vector.ph883 ], [ %index.next892, %vector.body887 ] ; 5 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.142075.i, i64 %index888
  %wide.load889 = load <4 x i8>, ptr %i.rw, align 1, !tbaa !45, !alias.scope !260
  %i.rx = zext <4 x i8> %wide.load889 to <4 x i32>
  %i.ry = sub nsw <4 x i32> %broadcast.splat886, %i.rx
  %i.rz = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ry, i1 true) ; 2 uses
  %i.sa = trunc nuw <4 x i32> %i.rz to <4 x i8>
  %i.sb = getelementptr inbounds nuw i8, ptr %.142572.i, i64 %index888
  store <4 x i8> %i.sa, ptr %i.sb, align 1, !tbaa !45, !alias.scope !263, !noalias !265
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %.142771.i, i64 %index888 ; 2 uses
  %wide.load890 = load <4 x i32>, ptr %i.sc, align 4, !tbaa !8, !alias.scope !268, !noalias !269
  %i.sd = add nsw <4 x i32> %i.rz, %wide.load890
  %i.se = getelementptr inbounds nuw i8, ptr %.041776.i, i64 %index888
  %wide.load891 = load <4 x i8>, ptr %i.se, align 1, !tbaa !45, !alias.scope !270
  %i.sf = zext <4 x i8> %wide.load891 to <4 x i32>
  %i.sg = sub <4 x i32> %i.sd, %i.sf
  store <4 x i32> %i.sg, ptr %i.sc, align 4, !tbaa !8, !alias.scope !268, !noalias !269
  %index.next892 = add nuw i64 %index888, 4       ; 2 uses
  %i.sh = icmp eq i64 %index.next892, %n.vec884
  br i1 %i.sh, label %middle.block893, label %vector.body887, !llvm.loop !271

middle.block893:                                  ; preds = %vector.body887
  br i1 %cmp.n894, label %._crit_edge.i, label %.lr.ph70.i.preheader902

.lr.ph70.i.preheader902:                          ; preds = %.lr.ph70.i.preheader, %middle.block893
  %indvars.iv186.i.ph = phi i64 [ %n.vec884, %middle.block893 ], [ 0, %.lr.ph70.i.preheader ]
  br label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.preheader902, %.lr.ph70.i
  %indvars.iv186.i = phi i64 [ %indvars.iv.next187.i, %.lr.ph70.i ], [ %indvars.iv186.i.ph, %.lr.ph70.i.preheader902 ] ; 5 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.142075.i, i64 %indvars.iv186.i
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !45
  %i.sk = zext i8 %i.sj to i32
  %i.sl = sub nsw i32 %i.rv, %i.sk
  %i.sm = call i32 @llvm.abs.i32(i32 %i.sl, i1 true) ; 2 uses
  %i.sn = trunc nuw i32 %i.sm to i8
  %i.so = getelementptr inbounds nuw i8, ptr %.142572.i, i64 %indvars.iv186.i
  store i8 %i.sn, ptr %i.so, align 1, !tbaa !45
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %.142771.i, i64 %indvars.iv186.i ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !8
  %i.sr = add nsw i32 %i.sm, %i.sq
  %i.ss = getelementptr inbounds nuw i8, ptr %.041776.i, i64 %indvars.iv186.i
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !45
  %i.su = zext i8 %i.st to i32
  %i.sv = sub i32 %i.sr, %i.su
  store i32 %i.sv, ptr %i.sp, align 4, !tbaa !8
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 2 uses
  %exitcond190.not.i = icmp eq i64 %indvars.iv.next187.i, %wide.trip.count189.i
  br i1 %exitcond190.not.i, label %._crit_edge.i, label %.lr.ph70.i, !llvm.loop !272

._crit_edge.i:                                    ; preds = %.lr.ph70.i, %middle.block893, %.lr.ph79.i
  %i.sw = zext i8 %i.ru to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !45
  %i.sz = zext i8 %i.sy to i32
  %i.ta = load i8, ptr %.042174.i, align 1, !tbaa !45
  %i.tb = zext i8 %i.ta to i64
  %i.tc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.tb
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !45
  %i.te = zext i8 %i.td to i32
  %i.tf = sub nsw i32 %i.sz, %i.te
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv191.i ; 2 uses
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !8
  %i.ti = add nsw i32 %i.tf, %i.th
  store i32 %i.ti, ptr %i.tg, align 4, !tbaa !8
  %indvars.iv.next192.i = add nsw i64 %indvars.iv191.i, 1 ; 2 uses
  %i.tj = getelementptr inbounds i8, ptr %.142572.i, i64 %i.nr
  %i.tk = getelementptr inbounds i8, ptr %.041776.i, i64 %i.nr
  %i.tl = getelementptr inbounds [4 x i8], ptr %.142771.i, i64 %i.nr
  %i.tm = getelementptr inbounds i8, ptr %.142373.i, i64 %i.ns
  %i.tn = getelementptr inbounds i8, ptr %.042174.i, i64 %i.ns
  %i.to = getelementptr inbounds i8, ptr %.142075.i, i64 %i.ns
  %exitcond195.not.i = icmp eq i64 %indvars.iv.next192.i, %i.nt
  br i1 %exitcond195.not.i, label %.preheader41.i, label %.lr.ph79.i, !llvm.loop !273

.preheader40.i:                                   ; preds = %.lr.ph82.i, %middle.block832, %.preheader41.i
  br i1 %i.nw, label %.lr.ph84.preheader.i, label %.preheader39.i

.lr.ph84.preheader.i:                             ; preds = %.preheader40.i
  %.pre242.i = load i32, ptr %i.ny, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check812, label %.lr.ph84.i.preheader, label %vector.ph813

vector.ph813:                                     ; preds = %.lr.ph84.preheader.i
  %broadcast.splatinsert815 = insertelement <4 x i32> poison, i32 %.pre242.i, i64 0
end_hunk_1
begin_hunk_2_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !8
  %i.yo = sub nsw i32 %i.yk, %i.yn
  %i.yp = add nsw i32 %i.yo, %.1416109.i          ; 2 uses
  %i.yq = icmp slt i32 %i.yp, %i.eb
  br i1 %i.yq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge102.i
  %i.yr = mul nsw i64 %indvars.iv232.i, %i.op
  %i.ys = getelementptr inbounds [2 x i8], ptr %.0418119.i, i64 %i.yr
  store i16 %i.ef, ptr %i.ys, align 2, !tbaa !243
  br label %bb.al

bb.af:                                            ; preds = %._crit_edge102.i
  br i1 %i.oi, label %bb.ag, label %.critedge464.i

bb.ag:                                            ; preds = %bb.af
  %i.yt = mul nsw i32 %.0413.lcssa.i, %i.ed
  %i.yu = sdiv i32 %i.yt, 100
  %i.yv = add nsw i32 %i.yu, %.0413.lcssa.i
  br i1 %i.nq, label %.lr.ph108.i, label %.critedge464.i

.lr.ph108.i:                                      ; preds = %bb.ag
  %i.yw = add nsw i32 %.0411.lcssa.i, -1
  %i.yx = add nsw i32 %.0411.lcssa.i, 1
  %i.yy = sext i32 %i.yx to i64
  %i.yz = sext i32 %i.yw to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.lr.ph108.i
  %indvars.iv227.i = phi i64 [ 0, %.lr.ph108.i ], [ %indvars.iv.next228.i, %bb.aj ] ; 4 uses
  %i.za = icmp slt i64 %indvars.iv227.i, %i.yz
  %i.zb = icmp sgt i64 %indvars.iv227.i, %i.yy
  %or.cond.i = select i1 %i.za, i1 true, i1 %i.zb
  br i1 %or.cond.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv227.i
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !8
  %.not457.i = icmp sgt i32 %i.zd, %i.yv
  br i1 %.not457.i, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %exitcond231.not.i = icmp eq i64 %indvars.iv.next228.i, %wide.trip.count189.i
  br i1 %exitcond231.not.i, label %.critedge464.i, label %bb.ah, !llvm.loop !292

.critedge.i:                                      ; preds = %bb.ai
  %i.ze = mul nsw i64 %indvars.iv232.i, %i.op
  %i.zf = getelementptr inbounds [2 x i8], ptr %.0418119.i, i64 %i.ze
  store i16 %i.ef, ptr %i.zf, align 2, !tbaa !243
  br label %bb.al

.critedge464.i:                                   ; preds = %bb.aj, %bb.ag, %bb.af
  %i.zg = load i32, ptr %i.oj, align 4, !tbaa !8
  store i32 %i.zg, ptr %i.fd, align 4, !tbaa !8
  %i.zh = load i32, ptr %i.ol, align 4, !tbaa !8
  store i32 %i.zh, ptr %i.ok, align 4, !tbaa !8
  %i.zi = sext i32 %.0411.lcssa.i to i64
  %i.zj = getelementptr [4 x i8], ptr %i.ff, i64 %i.zi ; 3 uses
  %i.zk = getelementptr i8, ptr %i.zj, i64 4
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !8  ; 2 uses
  %i.zm = getelementptr i8, ptr %i.zj, i64 -4
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !8  ; 2 uses
  %i.zo = add nsw i32 %i.zn, %i.zl
  %i.zp = load i32, ptr %i.zj, align 4, !tbaa !8  ; 2 uses
  %i.zq = shl i32 %i.zp, 1
  %i.zr = sub i32 %i.zo, %i.zq
  %i.zs = sub nsw i32 %i.zl, %i.zn                ; 2 uses
  %i.zt = call i32 @llvm.abs.i32(i32 %i.zs, i1 true)
  %i.zu = add nsw i32 %i.zr, %i.zt                ; 2 uses
  %i.zv = xor i32 %.0411.lcssa.i, -1
  %i.zw = add i32 %i.dp, %i.zv
  %.not.i.i = icmp eq i32 %i.zu, 0
  br i1 %.not.i.i, label %_ZN2cv11dispDescaleIsEET_iii.exit.i, label %bb.ak

bb.ak:                                            ; preds = %.critedge464.i
  %i.zx = shl nsw i32 %i.zs, 8
  %i.zy = sdiv i32 %i.zx, %i.zu
  br label %_ZN2cv11dispDescaleIsEET_iii.exit.i

_ZN2cv11dispDescaleIsEET_iii.exit.i:              ; preds = %bb.ak, %.critedge464.i
  %i.zz = phi i32 [ %i.zy, %bb.ak ], [ 0, %.critedge464.i ]
  %i.aaa = shl nsw i32 %i.zw, 8
  %i.aab = or disjoint i32 %i.aaa, 15
  %i.aac = add i32 %i.aab, %i.zz
  %i.aad = lshr i32 %i.aac, 4
  %i.aae = trunc i32 %i.aad to i16
  %i.aaf = mul nsw i64 %indvars.iv232.i, %i.op
  %i.aag = getelementptr inbounds [2 x i8], ptr %.0418119.i, i64 %i.aaf
  store i16 %i.aae, ptr %i.aag, align 2, !tbaa !243
  %i.aah = mul nsw i64 %indvars.iv232.i, %i.ez
  %i.aai = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.aah
  store i32 %i.zp, ptr %i.aai, align 4, !tbaa !8
  br label %bb.al

bb.al:                                            ; preds = %_ZN2cv11dispDescaleIsEET_iii.exit.i, %.critedge.i, %bb.ae
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count235.i
  br i1 %exitcond236.not.i, label %._crit_edge112.i, label %.lr.ph111.i, !llvm.loop !293

._crit_edge112.i:                                 ; preds = %bb.al, %.preheader37.i
  %indvars.iv.next238.i = add nuw nsw i64 %indvars.iv237.i, 1 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %.0418119.i, i64 2
  %exitcond241.not.i = icmp eq i64 %indvars.iv.next238.i, %wide.trip.count240.i
  br i1 %exitcond241.not.i, label %_ZN2cvL26findStereoCorrespondenceBMIsEEvRKNS_3MatES3_RS1_S4_RKNS_14StereoBMParamsEiiRKNS_8BufferBMEm.exit, label %bb.ad, !llvm.loop !294

_ZN2cvL26findStereoCorrespondenceBMIsEEvRKNS_3MatES3_RS1_S4_RKNS_14StereoBMParamsEiiRKNS_8BufferBMEm.exit: ; preds = %._crit_edge112.i, %._crit_edge67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ay

bb.am:                                            ; preds = %bb.v
  %i.aak = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.an:                                            ; preds = %bb.w
  %i.aal = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.ao:                                            ; preds = %bb.x
  %i.aam = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ap:                                            ; preds = %bb.z
  %i.aan = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.aq:                                            ; preds = %bb.ab
  %i.aao = shl i32 %i.do, 8
  %i.aap = add i32 %i.aao, -256                   ; 10 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !120
  %i.aas = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.aat = zext nneg i32 %i.dr to i64             ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.aat ; 2 uses
  %i.aav = zext i32 %i.dt to i64                  ; 5 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aav ; 2 uses
  %i.aax = load i64, ptr %i.aas, align 8, !tbaa !125 ; 3 uses
  %i.aay = trunc i64 %i.aax to i32                ; 2 uses
  %i.aaz = lshr i64 %.val87, 2                    ; 4 uses
  %i.aba = add i32 %i.dx, %i.dk                   ; 7 uses
  %i.abb = add i32 %i.aba, %i.di
  %i.abc = mul nsw i32 %i.abb, %i.dm              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.abd = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !120
  %.not.i100 = icmp eq ptr %i.abe, null
  %i.abf = getelementptr inbounds nuw i8, ptr %26, i64 128
  %i.abg = load i64, ptr %i.abf, align 8
  %i.abh = shl i64 %i.abg, 30
  %i.abi = ashr i64 %i.abh, 32
  %i.abj = select i1 %.not.i100, i64 0, i64 %i.abi
  %i.abk = getelementptr inbounds nuw i8, ptr %i.cy, i64 160 ; 6 uses
  %i.abl = load ptr, ptr %i.cy, align 8, !tbaa !126
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.abl, i64 %i.da
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !131 ; 6 uses
  %i.abo = ptrtoaddr ptr %i.abn to i64
  %i.abp = getelementptr i8, ptr %i.abn, i64 4    ; 19 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !126
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %i.da
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !131 ; 5 uses
  %i.abu = ptrtoaddr ptr %i.abt to i64
  %i.abv = mul i32 %i.dh, %i.dm
  %i.abw = sext i32 %i.abv to i64                 ; 10 uses
  %i.abx = getelementptr [4 x i8], ptr %i.abt, i64 %i.abw ; 10 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !126
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.abz, i64 %i.da
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !131
  %i.acc = sext i32 %i.dh to i64
  %i.acd = getelementptr inbounds [4 x i8], ptr %i.acb, i64 %i.acc ; 15 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !134
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %i.da
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !46 ; 7 uses
  %i.aci = getelementptr inbounds i8, ptr %i.ach, i64 %i.abw
  %i.acj = add nsw i32 %i.dm, 2
  %i.ack = sext i32 %i.acj to i64
  %i.acl = shl nsw i64 %i.ack, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.abn, i8 0, i64 %i.acl, i1 false)
  %i.acm = mul i32 %i.di, %i.dm
  %i.acn = sext i32 %i.acm to i64                 ; 14 uses
  %i.aco = sub nsw i64 0, %i.acn                  ; 2 uses
  %i.acp = getelementptr [4 x i8], ptr %i.abx, i64 %i.aco ; 8 uses
  %i.acq = add i32 %i.df, 2
  %i.acr = add i32 %i.acq, %i.dx                  ; 2 uses
  %i.acs = mul nsw i32 %i.acr, %i.dm
  %i.act = sext i32 %i.acs to i64
  %i.acu = shl nsw i64 %i.act, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.acp, i8 0, i64 %i.acu, i1 false)
  %i.acv = sext i32 %i.di to i64
  %i.acw = sub nsw i64 0, %i.acv
  %i.acx = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.acw
  %i.acy = sext i32 %i.acr to i64
  %i.acz = shl nsw i64 %i.acy, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.acx, i8 0, i64 %i.acz, i1 false)
  %i.ada = xor i32 %i.dg, -1                      ; 6 uses
  %invariant.gep.i101 = getelementptr i8, ptr %i.aci, i64 %i.aco ; 3 uses
  %i.adb = icmp sgt i32 %i.df, -2                 ; 2 uses
  br i1 %i.adb, label %.lr.ph.i267, label %.preheader43.i102

.lr.ph.i267:                                      ; preds = %bb.aq
  %i.adc = sub nsw i32 0, %i.dr                   ; 2 uses
  %i.add = xor i32 %i.dr, -1
  %i.ade = add i32 %i.dv, %i.add                  ; 2 uses
  %i.adf = mul i32 %i.di, %i.aay
  %i.adg = sext i32 %i.adf to i64                 ; 3 uses
  %i.adh = sub nsw i64 0, %i.adg                  ; 2 uses
  %invariant.gep54.i268 = getelementptr i8, ptr %i.aau, i64 %i.adh ; 2 uses
  %invariant.gep56.i269 = getelementptr i8, ptr %i.aaw, i64 %i.adh
  %i.adi = icmp sgt i32 %i.aba, %i.dj
  %i.adj = sext i32 %i.dm to i64                  ; 3 uses
  %sext461.i270 = shl i64 %i.aax, 32
  %i.adk = ashr exact i64 %sext461.i270, 32       ; 7 uses
  br i1 %i.adi, label %.lr.ph.split.i271, label %.preheader43.i102

.lr.ph.split.i271:                                ; preds = %.lr.ph.i267
  %i.adl = icmp sgt i32 %i.dm, 0
  %i.adm = sext i32 %i.dj to i64                  ; 7 uses
  br i1 %i.adl, label %.lr.ph51.us.preheader.i286, label %.lr.ph51.preheader.i272

.lr.ph51.preheader.i272:                          ; preds = %.lr.ph.split.i271
  %smax.i273 = call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %wide.trip.count.i274 = sext i32 %i.aba to i64  ; 3 uses
  %i.adn = sub nsw i64 %wide.trip.count.i274, %i.adm
  %xtraiter = and i64 %i.adn, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ado = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.adm ; 2 uses
  %indvars.iv.next.i282.prol = add nsw i64 %i.adm, 1
  %i.adp = add nsw i64 %wide.trip.count.i274, -1
  %i.adq = icmp eq i64 %i.adp, %i.adm
  br label %.lr.ph51.i275

.lr.ph51.us.preheader.i286:                       ; preds = %.lr.ph.split.i271
  %i.adr = sext i32 %i.ada to i64
  %smax149.i288 = call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %wide.trip.count150.i289 = zext nneg i32 %smax149.i288 to i64
  %wide.trip.count144.i290 = sext i32 %i.aba to i64 ; 2 uses
  %wide.trip.count139.i291 = zext nneg i32 %i.dm to i64 ; 8 uses
  %i.ads = sub nsw i64 %i.abw, %i.acn
  %scevgep = getelementptr i8, ptr %i.ach, i64 %i.ads
  %i.adt = add i32 %i.dx, %i.di
  %i.adu = add i32 %i.adt, %i.dk
  %i.adv = mul i32 %i.dm, %i.adu
  %i.adw = xor i64 %i.adm, -1
  %i.adx = add nsw i64 %i.adw, %wide.trip.count144.i290 ; 2 uses
  %i.ady = mul nsw i64 %i.adx, %i.adj             ; 2 uses
  %i.adz = add i64 %i.ady, %i.abw
  %i.aea = add i64 %i.adz, %wide.trip.count139.i291
  %i.aeb = sub i64 %i.aea, %i.acn
  %scevgep414 = getelementptr i8, ptr %i.ach, i64 %i.aeb
  %i.aec = add i64 %i.ady, %i.abw
  %i.aed = add i64 %i.aec, %wide.trip.count139.i291
  %i.aee = sub i64 %i.aed, %i.acn
  %i.aef = shl i64 %i.aee, 2
  %scevgep416 = getelementptr i8, ptr %i.abt, i64 %i.aef ; 2 uses
  %i.aeg = sub nsw i64 %i.aav, %i.adg
  %scevgep417 = getelementptr i8, ptr %.val, i64 %i.aeg
  %i.aeh = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %smin = sext i32 %i.aeh to i64
  %36 = sext i32 %i.dz to i64
  %i.aei = mul i64 %i.adx, %i.adk
  %i.aej = add i64 %i.aei, %wide.trip.count139.i291
  %i.aek = add i64 %i.aej, %i.aav
  %i.ael = sub i64 %i.aek, %i.adg
  %scevgep420 = getelementptr i8, ptr %.val, i64 %i.ael
  %min.iters.check = icmp ult i32 %i.dm, 8
  %stride.check = icmp slt i64 %i.adk, 0
  %n.vec = and i64 %wide.trip.count139.i291, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count139.i291
  %xtraiter920 = and i64 %wide.trip.count139.i291, 1
  %lcmp.mod921.not = icmp eq i64 %xtraiter920, 0
  %i.aem = add nsw i64 %wide.trip.count139.i291, -1
  br label %.lr.ph51.us.i292

.lr.ph51.us.i292:                                 ; preds = %._crit_edge52.split.us.us.i313, %.lr.ph51.us.preheader.i286
  %indvar = phi i32 [ %indvar.next, %._crit_edge52.split.us.us.i313 ], [ 0, %.lr.ph51.us.preheader.i286 ] ; 2 uses
  %indvars.iv146.i293 = phi i64 [ %indvars.iv.next147.i314, %._crit_edge52.split.us.us.i313 ], [ %i.adr, %.lr.ph51.us.preheader.i286 ] ; 3 uses
  %i.aen = mul i32 %i.adv, %indvar
  %i.aeo = sext i32 %i.aen to i64                 ; 2 uses
  %scevgep413 = getelementptr i8, ptr %scevgep, i64 %i.aeo ; 2 uses
  %scevgep415 = getelementptr i8, ptr %scevgep414, i64 %i.aeo ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %smin, i64 %indvars.iv146.i293)
  %smin418 = call i64 @llvm.smin.i64(i64 %smax, i64 %36) ; 2 uses
  %scevgep419 = getelementptr i8, ptr %scevgep417, i64 %smin418 ; 2 uses
  %scevgep421 = getelementptr i8, ptr %scevgep420, i64 %smin418 ; 2 uses
  %i.aep = trunc nsw i64 %indvars.iv146.i293 to i32 ; 3 uses
  %i.aeq = add i32 %i.dh, %i.aep
  %i.aer = mul nsw i32 %i.aeq, %i.abc
  %i.aes = sext i32 %i.aer to i64
  %gep.us.i294 = getelementptr i8, ptr %invariant.gep.i101, i64 %i.aes
  %.sroa.speculated15.us.i295 = call i32 @llvm.smax.i32(i32 %i.aep, i32 %i.adc)
  %.sroa.speculated11.us.i296 = call i32 @llvm.smin.i32(i32 %i.ade, i32 %.sroa.speculated15.us.i295)
  %i.aet = sext i32 %.sroa.speculated11.us.i296 to i64
  %gep55.us.i297 = getelementptr i8, ptr %invariant.gep54.i268, i64 %i.aet
  %.sroa.speculated6.us.i298 = call i32 @llvm.smax.i32(i32 %i.aep, i32 %i.ds)
  %.sroa.speculated.us.i299 = call i32 @llvm.smin.i32(i32 %i.dz, i32 %.sroa.speculated6.us.i298)
  %i.aeu = sext i32 %.sroa.speculated.us.i299 to i64
  %gep57.us.i300 = getelementptr i8, ptr %invariant.gep56.i269, i64 %i.aeu
  %bound0 = icmp ult ptr %scevgep413, %scevgep416
  %bound1 = icmp ult ptr %i.acp, %scevgep415
  %found.conflict = and i1 %bound0, %bound1
  %bound0422 = icmp ult ptr %scevgep413, %scevgep421
  %bound1423 = icmp ult ptr %scevgep419, %scevgep415
  %found.conflict424 = and i1 %bound0422, %bound1423
  %i.aev = or i1 %found.conflict424, %stride.check
  %conflict.rdx = or i1 %found.conflict, %i.aev
  %bound0425 = icmp ult ptr %i.acp, %scevgep421
  %bound1426 = icmp ult ptr %scevgep419, %scevgep416
  %found.conflict427 = and i1 %bound0425, %bound1426
  %conflict.rdx429 = or i1 %found.conflict427, %conflict.rdx
  br label %.lr.ph.us.us.i301

.lr.ph.us.us.i301:                                ; preds = %._crit_edge.us.us.i310, %.lr.ph51.us.i292
  %indvars.iv141.i302 = phi i64 [ %indvars.iv.next142.i311, %._crit_edge.us.us.i310 ], [ %i.adm, %.lr.ph51.us.i292 ] ; 2 uses
  %.041948.us.us.i303 = phi ptr [ %i.agw, %._crit_edge.us.us.i310 ], [ %gep57.us.i300, %.lr.ph51.us.i292 ] ; 5 uses
  %.042247.us.us.i304 = phi ptr [ %i.agv, %._crit_edge.us.us.i310 ], [ %gep55.us.i297, %.lr.ph51.us.i292 ] ; 2 uses
  %.042446.us.us.i305 = phi ptr [ %i.agu, %._crit_edge.us.us.i310 ], [ %gep.us.i294, %.lr.ph51.us.i292 ] ; 5 uses
  %.042645.us.us.i306 = phi ptr [ %i.agt, %._crit_edge.us.us.i310 ], [ %i.acp, %.lr.ph51.us.i292 ] ; 5 uses
  %i.aew = load i8, ptr %.042247.us.us.i304, align 1, !tbaa !45 ; 2 uses
  %i.aex = zext i8 %i.aew to i32                  ; 4 uses
  %brmerge982 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx429
  br i1 %brmerge982, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.i301
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aex, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %.041948.us.us.i303, i64 %index
  %wide.load = load <4 x i8>, ptr %i.aey, align 1, !tbaa !45, !alias.scope !295
  %i.aez = zext <4 x i8> %wide.load to <4 x i32>
  %i.afa = sub nsw <4 x i32> %broadcast.splat, %i.aez
  %i.afb = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.afa, i1 true) ; 2 uses
  %i.afc = trunc nuw <4 x i32> %i.afb to <4 x i8>
  %i.afd = getelementptr inbounds nuw i8, ptr %.042446.us.us.i305, i64 %index
  store <4 x i8> %i.afc, ptr %i.afd, align 1, !tbaa !45, !alias.scope !298, !noalias !300
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i306, i64 %index ; 2 uses
  %wide.load430 = load <4 x i32>, ptr %i.afe, align 4, !tbaa !8, !alias.scope !302, !noalias !295
  %i.aff = add nsw <4 x i32> %i.afb, %wide.load430
  store <4 x i32> %i.aff, ptr %i.afe, align 4, !tbaa !8, !alias.scope !302, !noalias !295
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.afg = icmp eq i64 %index.next, %n.vec
  br i1 %i.afg, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.i310, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.i301, %middle.block
  %indvars.iv136.i307.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.i301 ] ; 6 uses
  br i1 %lcmp.mod921.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.afh = getelementptr inbounds nuw i8, ptr %.041948.us.us.i303, i64 %indvars.iv136.i307.ph
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !45
  %i.afj = zext i8 %i.afi to i32
  %i.afk = sub nsw i32 %i.aex, %i.afj
  %i.afl = call i32 @llvm.abs.i32(i32 %i.afk, i1 true) ; 2 uses
  %i.afm = trunc nuw i32 %i.afl to i8
  %i.afn = getelementptr inbounds nuw i8, ptr %.042446.us.us.i305, i64 %indvars.iv136.i307.ph
  store i8 %i.afm, ptr %i.afn, align 1, !tbaa !45
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i306, i64 %indvars.iv136.i307.ph ; 2 uses
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !8
  %i.afq = add nsw i32 %i.afl, %i.afp
  store i32 %i.afq, ptr %i.afo, align 4, !tbaa !8
  %indvars.iv.next137.i308.prol = or disjoint i64 %indvars.iv136.i307.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv136.i307.unr = phi i64 [ %indvars.iv136.i307.ph, %scalar.ph.preheader ], [ %indvars.iv.next137.i308.prol, %scalar.ph.prol ]
  %i.afr = icmp eq i64 %indvars.iv136.i307.ph, %i.aem
  br i1 %i.afr, label %._crit_edge.us.us.i310, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv136.i307 = phi i64 [ %indvars.iv.next137.i308.1, %scalar.ph ], [ %indvars.iv136.i307.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %.041948.us.us.i303, i64 %indvars.iv136.i307
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !45
  %i.afu = zext i8 %i.aft to i32
  %i.afv = sub nsw i32 %i.aex, %i.afu
  %i.afw = call i32 @llvm.abs.i32(i32 %i.afv, i1 true) ; 2 uses
  %i.afx = trunc nuw i32 %i.afw to i8
  %i.afy = getelementptr inbounds nuw i8, ptr %.042446.us.us.i305, i64 %indvars.iv136.i307
  store i8 %i.afx, ptr %i.afy, align 1, !tbaa !45
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i306, i64 %indvars.iv136.i307 ; 2 uses
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !8
  %i.agb = add nsw i32 %i.afw, %i.aga
  store i32 %i.agb, ptr %i.afz, align 4, !tbaa !8
  %indvars.iv.next137.i308 = add nuw nsw i64 %indvars.iv136.i307, 1 ; 3 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.041948.us.us.i303, i64 %indvars.iv.next137.i308
  %i.agd = load i8, ptr %i.agc, align 1, !tbaa !45
  %i.age = zext i8 %i.agd to i32
  %i.agf = sub nsw i32 %i.aex, %i.age
  %i.agg = call i32 @llvm.abs.i32(i32 %i.agf, i1 true) ; 2 uses
  %i.agh = trunc nuw i32 %i.agg to i8
  %i.agi = getelementptr inbounds nuw i8, ptr %.042446.us.us.i305, i64 %indvars.iv.next137.i308
  store i8 %i.agh, ptr %i.agi, align 1, !tbaa !45
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i306, i64 %indvars.iv.next137.i308 ; 2 uses
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !8
  %i.agl = add nsw i32 %i.agg, %i.agk
  store i32 %i.agl, ptr %i.agj, align 4, !tbaa !8
  %indvars.iv.next137.i308.1 = add nuw nsw i64 %indvars.iv136.i307, 2 ; 2 uses
  %exitcond140.not.i309.1 = icmp eq i64 %indvars.iv.next137.i308.1, %wide.trip.count139.i291
  br i1 %exitcond140.not.i309.1, label %._crit_edge.us.us.i310, label %scalar.ph, !llvm.loop !304

._crit_edge.us.us.i310:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.agm = zext i8 %i.aew to i64
  %i.agn = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.agm
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !45
  %i.agp = zext i8 %i.ago to i32
  %i.agq = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %indvars.iv141.i302 ; 2 uses
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !8
  %i.ags = add nsw i32 %i.agr, %i.agp
  store i32 %i.ags, ptr %i.agq, align 4, !tbaa !8
  %indvars.iv.next142.i311 = add nsw i64 %indvars.iv141.i302, 1 ; 2 uses
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i306, i64 %i.adj
  %i.agu = getelementptr inbounds nuw i8, ptr %.042446.us.us.i305, i64 %i.adj
  %i.agv = getelementptr inbounds i8, ptr %.042247.us.us.i304, i64 %i.adk
  %i.agw = getelementptr inbounds i8, ptr %.041948.us.us.i303, i64 %i.adk
  %exitcond145.not.i312 = icmp eq i64 %indvars.iv.next142.i311, %wide.trip.count144.i290
  br i1 %exitcond145.not.i312, label %._crit_edge52.split.us.us.i313, label %.lr.ph.us.us.i301, !llvm.loop !305

._crit_edge52.split.us.us.i313:                   ; preds = %._crit_edge.us.us.i310
  %indvars.iv.next147.i314 = add nsw i64 %indvars.iv146.i293, 1 ; 2 uses
  %exitcond151.not.i315 = icmp eq i64 %indvars.iv.next147.i314, %wide.trip.count150.i289
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond151.not.i315, label %.preheader43.i102, label %.lr.ph51.us.i292, !llvm.loop !306

.preheader43.i102:                                ; preds = %._crit_edge52.split.i284, %._crit_edge52.split.us.us.i313, %.lr.ph.i267, %bb.aq
  %i.agx = icmp sgt i32 %i.dx, 0                  ; 2 uses
  br i1 %i.agx, label %.preheader42.lr.ph.i215, label %._crit_edge67.i103

.preheader42.lr.ph.i215:                          ; preds = %.preheader43.i102
  %i.agy = icmp sgt i32 %i.dq, 0
  %i.agz = add nuw i32 %i.dr, 1
  %i.aha = add i32 %i.agz, %i.dz                  ; 3 uses
  %i.ahb = icmp slt i32 %i.aha, %i.dv             ; 2 uses
  br i1 %i.agy, label %.preheader42.lr.ph.split.us.i231, label %.preheader42.lr.ph.split.i216

.preheader42.lr.ph.split.us.i231:                 ; preds = %.preheader42.lr.ph.i215
  br i1 %i.ahb, label %.preheader42.us.us.preheader.i246, label %.preheader42.us.preheader.i232

.preheader42.us.preheader.i232:                   ; preds = %.preheader42.lr.ph.split.us.i231
  %sext260.i233 = shl i64 %i.aaz, 32
  %i.ahc = ashr exact i64 %sext260.i233, 32
  %wide.trip.count169.i234 = zext nneg i32 %i.dx to i64
  %wide.trip.count164.i235 = zext nneg i32 %i.dq to i64 ; 3 uses
  %min.iters.check444 = icmp ult i32 %i.dq, 8
  %n.vec446 = and i64 %wide.trip.count164.i235, 2147483640 ; 3 uses
  %broadcast.splatinsert447 = insertelement <4 x i32> poison, i32 %i.aap, i64 0
  %broadcast.splat448 = shufflevector <4 x i32> %broadcast.splatinsert447, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n453 = icmp eq i64 %n.vec446, %wide.trip.count164.i235
  br label %.preheader42.us.i236

.preheader42.us.us.preheader.i246:                ; preds = %.preheader42.lr.ph.split.us.i231
  %i.ahd = sext i32 %i.aha to i64                 ; 3 uses
  %sext261.i247 = shl i64 %i.aaz, 32
  %i.ahe = ashr exact i64 %sext261.i247, 32
  %wide.trip.count184.i248 = zext nneg i32 %i.dx to i64
  %wide.trip.count174.i249 = zext nneg i32 %i.dq to i64 ; 3 uses
  %min.iters.check468 = icmp ult i32 %i.dq, 8
  %n.vec470 = and i64 %wide.trip.count174.i249, 2147483640 ; 3 uses
  %broadcast.splatinsert471 = insertelement <4 x i32> poison, i32 %i.aap, i64 0
  %broadcast.splat472 = shufflevector <4 x i32> %broadcast.splatinsert471, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n477 = icmp eq i64 %n.vec470, %wide.trip.count174.i249
  %i.ahf = xor i32 %i.do, -1
  %i.ahg = zext i32 %i.ahf to i64
  %i.ahh = add nuw nsw i64 %i.ahg, 1              ; 2 uses
  %min.iters.check456 = icmp ugt i32 %i.do, -8
  %n.vec458 = and i64 %i.ahh, 8589934584          ; 3 uses
  %i.ahi = add nsw i64 %n.vec458, %i.ahd
  %broadcast.splatinsert459 = insertelement <4 x i32> poison, i32 %i.aap, i64 0
  %broadcast.splat460 = shufflevector <4 x i32> %broadcast.splatinsert459, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n465 = icmp eq i64 %i.ahh, %n.vec458
  br label %.preheader42.us.us.i250

.preheader42.us.us.i250:                          ; preds = %._crit_edge65.us.us.i264, %.preheader42.us.us.preheader.i246
  %indvars.iv181.i251 = phi i64 [ 0, %.preheader42.us.us.preheader.i246 ], [ %indvars.iv.next182.i265, %._crit_edge65.us.us.i264 ] ; 2 uses
  %i.ahj = mul nsw i64 %indvars.iv181.i251, %i.ahe
  %invariant.gep272.i252 = getelementptr [4 x i8], ptr %.val86, i64 %i.ahj ; 4 uses
  br i1 %min.iters.check468, label %scalar.ph467.preheader, label %vector.body473

vector.body473:                                   ; preds = %.preheader42.us.us.i250, %vector.body473
end_hunk_2
begin_hunk_3_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  %i.ahw = zext i32 %i.ahv to i64
  %i.ahx = add nuw nsw i64 %i.ahw, 1              ; 2 uses
  %min.iters.check432 = icmp ugt i32 %i.do, -8
  %n.vec434 = and i64 %i.ahx, 8589934584          ; 3 uses
  %i.ahy = add nsw i64 %n.vec434, %i.aht
  %broadcast.splatinsert435 = insertelement <4 x i32> poison, i32 %i.aap, i64 0
  %broadcast.splat436 = shufflevector <4 x i32> %broadcast.splatinsert435, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n441 = icmp eq i64 %i.ahx, %n.vec434
  br label %.preheader42.i220

.lr.ph51.i275:                                    ; preds = %._crit_edge52.split.i284, %.lr.ph51.preheader.i272
  %storemerge53.i276 = phi i32 [ %i.ajb, %._crit_edge52.split.i284 ], [ %i.ada, %.lr.ph51.preheader.i272 ] ; 2 uses
  %.sroa.speculated15.i277 = call i32 @llvm.smax.i32(i32 %storemerge53.i276, i32 %i.adc)
  %.sroa.speculated11.i278 = call i32 @llvm.smin.i32(i32 %i.ade, i32 %.sroa.speculated15.i277)
  %i.ahz = sext i32 %.sroa.speculated11.i278 to i64
  %gep55.i279 = getelementptr i8, ptr %invariant.gep54.i268, i64 %i.ahz ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph51.i275
  %i.aia = load i8, ptr %gep55.i279, align 1, !tbaa !45
  %i.aib = zext i8 %i.aia to i64
  %i.aic = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.aib
  %i.aid = load i8, ptr %i.aic, align 1, !tbaa !45
  %i.aie = zext i8 %i.aid to i32
  %i.aif = load i32, ptr %i.ado, align 4, !tbaa !8
  %i.aig = add nsw i32 %i.aif, %i.aie
  store i32 %i.aig, ptr %i.ado, align 4, !tbaa !8
  %i.aih = getelementptr inbounds i8, ptr %gep55.i279, i64 %i.adk
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph51.i275
  %indvars.iv.i280.unr = phi i64 [ %i.adm, %.lr.ph51.i275 ], [ %indvars.iv.next.i282.prol, %.prol.loopexit.unr-lcssa ]
  %.042247.i281.unr = phi ptr [ %gep55.i279, %.lr.ph51.i275 ], [ %i.aih, %.prol.loopexit.unr-lcssa ]
  br i1 %i.adq, label %._crit_edge52.split.i284, label %.lr.ph51.i275.new

.lr.ph51.i275.new:                                ; preds = %.prol.loopexit, %.lr.ph51.i275.new
  %indvars.iv.i280 = phi i64 [ %indvars.iv.next.i282.1, %.lr.ph51.i275.new ], [ %indvars.iv.i280.unr, %.prol.loopexit ] ; 3 uses
  %.042247.i281 = phi ptr [ %i.aja, %.lr.ph51.i275.new ], [ %.042247.i281.unr, %.prol.loopexit ] ; 2 uses
  %i.aii = load i8, ptr %.042247.i281, align 1, !tbaa !45
  %i.aij = zext i8 %i.aii to i64
  %i.aik = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.aij
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !45
  %i.aim = zext i8 %i.ail to i32
  %i.ain = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %indvars.iv.i280 ; 2 uses
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !8
  %i.aip = add nsw i32 %i.aio, %i.aim
  store i32 %i.aip, ptr %i.ain, align 4, !tbaa !8
  %i.aiq = getelementptr inbounds i8, ptr %.042247.i281, i64 %i.adk ; 2 uses
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !45
  %i.ais = zext i8 %i.air to i64
  %i.ait = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.ais
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !45
  %i.aiv = zext i8 %i.aiu to i32
  %i.aiw = getelementptr [4 x i8], ptr %i.acd, i64 %indvars.iv.i280
  %i.aix = getelementptr i8, ptr %i.aiw, i64 4    ; 2 uses
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !8
  %i.aiz = add nsw i32 %i.aiy, %i.aiv
  store i32 %i.aiz, ptr %i.aix, align 4, !tbaa !8
  %indvars.iv.next.i282.1 = add nsw i64 %indvars.iv.i280, 2 ; 2 uses
  %i.aja = getelementptr inbounds i8, ptr %i.aiq, i64 %i.adk
  %exitcond.not.i283.1 = icmp eq i64 %indvars.iv.next.i282.1, %wide.trip.count.i274
  br i1 %exitcond.not.i283.1, label %._crit_edge52.split.i284, label %.lr.ph51.i275.new, !llvm.loop !305

._crit_edge52.split.i284:                         ; preds = %.lr.ph51.i275.new, %.prol.loopexit
  %i.ajb = add nsw i32 %storemerge53.i276, 1      ; 2 uses
  %exitcond135.not.i285 = icmp eq i32 %i.ajb, %smax.i273
  br i1 %exitcond135.not.i285, label %.preheader43.i102, label %.lr.ph51.i275, !llvm.loop !306

.preheader42.i220:                                ; preds = %._crit_edge65.i228, %.preheader42.preheader.i217
  %indvars.iv156.i221 = phi i64 [ 0, %.preheader42.preheader.i217 ], [ %indvars.iv.next157.i229, %._crit_edge65.i228 ] ; 2 uses
  %i.ajc = mul nsw i64 %indvars.iv156.i221, %i.ahu
  %invariant.gep269.i222 = getelementptr [4 x i8], ptr %.val86, i64 %i.ajc ; 2 uses
  br i1 %min.iters.check432, label %scalar.ph431.preheader, label %vector.ph433

vector.ph433:                                     ; preds = %.preheader42.i220
  %invariant.gep = getelementptr [4 x i8], ptr %invariant.gep269.i222, i64 %i.aht
  br label %vector.body437

vector.body437:                                   ; preds = %vector.body437, %vector.ph433
  %index438 = phi i64 [ 0, %vector.ph433 ], [ %index.next439, %vector.body437 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index438 ; 2 uses
  %i.ajd = getelementptr i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat436, ptr %gep, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat436, ptr %i.ajd, align 4, !tbaa !8
  %index.next439 = add nuw i64 %index438, 8       ; 2 uses
  %i.aje = icmp eq i64 %index.next439, %n.vec434
  br i1 %i.aje, label %middle.block440, label %vector.body437, !llvm.loop !314

middle.block440:                                  ; preds = %vector.body437
  br i1 %cmp.n441, label %._crit_edge65.i228, label %scalar.ph431.preheader

scalar.ph431.preheader:                           ; preds = %.preheader42.i220, %middle.block440
  %indvars.iv152.i223.ph = phi i64 [ %i.aht, %.preheader42.i220 ], [ %i.ahy, %middle.block440 ]
  br label %scalar.ph431

scalar.ph431:                                     ; preds = %scalar.ph431.preheader, %scalar.ph431
  %indvars.iv152.i223 = phi i64 [ %indvars.iv.next153.i225, %scalar.ph431 ], [ %indvars.iv152.i223.ph, %scalar.ph431.preheader ] ; 2 uses
  %gep.i224 = getelementptr [4 x i8], ptr %invariant.gep269.i222, i64 %indvars.iv152.i223
  store i32 %i.aap, ptr %gep.i224, align 4, !tbaa !8
  %indvars.iv.next153.i225 = add nsw i64 %indvars.iv152.i223, 1 ; 2 uses
  %lftr.wideiv.i226 = trunc i64 %indvars.iv.next153.i225 to i32
  %exitcond155.not.i227 = icmp eq i32 %i.dv, %lftr.wideiv.i226
  br i1 %exitcond155.not.i227, label %._crit_edge65.i228, label %scalar.ph431, !llvm.loop !315

._crit_edge65.i228:                               ; preds = %scalar.ph431, %middle.block440
  %indvars.iv.next157.i229 = add nuw nsw i64 %indvars.iv156.i221, 1 ; 2 uses
  %exitcond160.not.i230 = icmp eq i64 %indvars.iv.next157.i229, %wide.trip.count159.i219
  br i1 %exitcond160.not.i230, label %._crit_edge67.i103, label %.preheader42.i220, !llvm.loop !311

._crit_edge67.i103:                               ; preds = %._crit_edge65.i228, %._crit_edge.us.i243, %._crit_edge65.us.us.i264, %.preheader42.lr.ph.split.i216, %.preheader43.i102
  %.not453117.i104 = icmp slt i32 %i.dz, 0
  br i1 %.not453117.i104, label %_ZN2cvL26findStereoCorrespondenceBMIiEEvRKNS_3MatES3_RS1_S4_RKNS_14StereoBMParamsEiiRKNS_8BufferBMEm.exit, label %.lr.ph121.i105

.lr.ph121.i105:                                   ; preds = %._crit_edge67.i103
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %.val86, i64 %i.aat
  %i.ajg = add nsw i32 %i.df, 1                   ; 2 uses
  %i.ajh = sub nsw i32 0, %i.dr                   ; 2 uses
  %i.aji = xor i32 %i.dr, -1
  %i.ajj = add i32 %i.dv, %i.aji                  ; 2 uses
  %i.ajk = mul i32 %i.di, %i.aay
  %i.ajl = sext i32 %i.ajk to i64                 ; 3 uses
  %i.ajm = sub nsw i64 0, %i.ajl                  ; 2 uses
  %invariant.gep123.i106 = getelementptr i8, ptr %i.aau, i64 %i.ajm ; 2 uses
  %invariant.gep127.i107 = getelementptr i8, ptr %i.aaw, i64 %i.ajm
  %i.ajn = icmp sgt i32 %i.aba, %i.dj
  %i.ajo = icmp sgt i32 %i.dm, 0                  ; 4 uses
  %i.ajp = sext i32 %i.dm to i64                  ; 7 uses
  %sext.i108 = shl i64 %i.aax, 32
  %i.ajq = ashr exact i64 %sext.i108, 32          ; 5 uses
  %.not45580.i109 = icmp sgt i32 %i.cw, %i.dg
  %i.ajr = sext i32 %i.aba to i64                 ; 3 uses
  %i.ajs = getelementptr [4 x i8], ptr %i.acd, i64 %i.ajr
  %i.ajt = getelementptr i8, ptr %i.ajs, i64 -4
  %i.aju = icmp slt i32 %i.ada, %i.dj
  %i.ajv = sext i32 %i.dj to i64                  ; 5 uses
  %i.ajw = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.ajv
  %i.ajx = add nsw i32 %i.dg, 2
  %i.ajy = sub i32 %i.ajx, %i.di                  ; 6 uses
  %i.ajz = sub i32 1, %i.di                       ; 3 uses
  %i.aka = mul i32 %i.ajz, %i.dm
  %i.akb = sext i32 %i.aka to i64                 ; 2 uses
  %i.akc = getelementptr [4 x i8], ptr %i.abx, i64 %i.akb ; 2 uses
  %i.akd = icmp sge i32 %i.ajz, %i.dg
  %i.ake = icmp eq i32 %i.dm, 0
  %i.akf = add nsw i32 %i.aba, -1
  %i.akg = icmp sgt i32 %i.ed, 0
  %i.akh = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  %i.aki = getelementptr [4 x i8], ptr %i.abp, i64 %i.ajp ; 2 uses
  %i.akj = getelementptr i8, ptr %i.aki, i64 -8
  %smin.i110 = sext i32 %i.dk to i64              ; 3 uses
  %i.akk = sext i32 %i.dx to i64
  %i.akl = sext i32 %i.ada to i64                 ; 6 uses
  %smax219.i112 = call i32 @llvm.abs.i32(i32 %i.dg, i1 false)
  %i.akm = sext i32 %i.dg to i64
  %sext263.i113 = shl i64 %i.aaz, 32
  %i.akn = ashr exact i64 %sext263.i113, 32       ; 3 uses
  %i.ako = add i32 %i.dy, 1
  %i.akp = add i32 %i.ako, %i.ds
  %wide.trip.count240.i114 = zext i32 %i.akp to i64
  %wide.trip.count189.i115 = zext i32 %i.dm to i64 ; 21 uses
  %invariant.gep276.i116 = getelementptr [4 x i8], ptr %i.acd, i64 %i.akk ; 2 uses
  %brmerge.i118 = select i1 %i.akd, i1 true, i1 %i.ake
  %wide.trip.count220.i120 = zext i32 %smax219.i112 to i64 ; 2 uses
  %wide.trip.count235.i121 = zext nneg i32 %i.dx to i64
  %i.akq = shl nuw nsw i64 %wide.trip.count189.i115, 2
  %i.akr = getelementptr i8, ptr %i.abn, i64 %i.akq
  %scevgep493 = getelementptr i8, ptr %i.akr, i64 4
  %i.aks = add i32 %i.dg, %i.di
  %i.akt = add i32 %i.aks, -2
  %i.aku = zext i32 %i.akt to i64
  %i.akv = mul nsw i64 %i.ajp, %i.aku
  %i.akw = add i64 %i.akv, %i.abw
  %i.akx = add i64 %i.akw, %i.akb
  %i.aky = add i64 %i.akx, %wide.trip.count189.i115
  %i.akz = shl i64 %i.aky, 2
  %scevgep494 = getelementptr i8, ptr %i.abt, i64 %i.akz
  %i.ala = shl nsw i64 %i.abw, 2
  %i.alb = add i64 %i.ala, %i.abu
  %i.alc = shl nsw i64 %i.acn, 2
  %.neg = sub i64 %i.alc, %i.alb
  %i.ald = sub nsw i64 %i.abw, %i.acn             ; 2 uses
  %scevgep552 = getelementptr i8, ptr %i.ach, i64 %i.ald
  %i.ale = add i32 %i.dx, %i.di
  %i.alf = add i32 %i.ale, %i.dk                  ; 2 uses
  %i.alg = mul i32 %i.dm, %i.alf
  %i.alh = xor i64 %i.ajv, -1
  %i.ali = add nsw i64 %i.alh, %i.ajr             ; 2 uses
  %i.alj = mul i64 %i.ali, %i.ajp                 ; 2 uses
  %i.alk = add i64 %i.alj, %i.abw
  %i.all = add i64 %i.alk, %wide.trip.count189.i115
  %i.alm = sub i64 %i.all, %i.acn                 ; 2 uses
  %scevgep554 = getelementptr i8, ptr %i.ach, i64 %i.alm
  %i.aln = add i64 %i.alj, %i.abw
  %i.alo = add i64 %i.aln, %wide.trip.count189.i115
  %i.alp = sub i64 %i.alo, %i.acn
  %i.alq = shl i64 %i.alp, 2
  %scevgep556 = getelementptr i8, ptr %i.abt, i64 %i.alq ; 3 uses
  %i.alr = sub nsw i64 %i.aav, %i.ajl
  %scevgep557 = getelementptr i8, ptr %.val, i64 %i.alr
  %i.als = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %smin558 = sext i32 %i.als to i64
  %37 = sext i32 %i.dg to i64
  %i.alt = zext nneg i32 %i.dz to i64
  %i.alu = mul i64 %i.ali, %i.ajq
  %i.alv = add i64 %i.alu, %wide.trip.count189.i115
  %i.alw = add i64 %i.alv, %i.aav
  %i.alx = sub i64 %i.alw, %i.ajl
  %scevgep562 = getelementptr i8, ptr %.val, i64 %i.alx
  %scevgep564 = getelementptr i8, ptr %i.ach, i64 %i.ald
  %i.aly = mul i32 %i.dm, %i.alf
  %scevgep566 = getelementptr i8, ptr %i.ach, i64 %i.alm
  %i.alz = add nsw i64 %wide.trip.count189.i115, -1 ; 2 uses
  %min.iters.check598 = icmp ult i32 %i.dm, 20
  %stride.check577 = icmp slt i64 %i.ajq, 0
  %n.vec600 = and i64 %wide.trip.count189.i115, 2147483644 ; 3 uses
  %cmp.n610 = icmp eq i64 %n.vec600, %wide.trip.count189.i115
  %i.ama = sub i32 %i.dg, %i.dk                   ; 2 uses
  %i.amb = zext i32 %i.ama to i64
  %i.amc = add nuw nsw i64 %i.amb, 1              ; 2 uses
  %min.iters.check540 = icmp ult i32 %i.ama, 7
  %n.vec542 = and i64 %i.amc, 8589934584          ; 3 uses
  %i.amd = add nsw i64 %n.vec542, %smin.i110
  %invariant.gep960 = getelementptr [4 x i8], ptr %invariant.gep276.i116, i64 %smin.i110
  %cmp.n549 = icmp eq i64 %i.amc, %n.vec542
  %i.ame = sub nsw i32 0, %i.dg
  %i.amf = sext i32 %i.ame to i64
  %i.amg = add nsw i64 %i.ajv, 1
  %i.amh = sub nsw i64 %i.amg, %i.amf             ; 3 uses
  %min.iters.check528 = icmp ult i64 %i.amh, 8
  %n.vec530 = and i64 %i.amh, -8                  ; 3 uses
  %i.ami = add nsw i64 %n.vec530, %i.akl
  %invariant.gep962 = getelementptr [4 x i8], ptr %i.acd, i64 %i.akl
  %cmp.n537 = icmp eq i64 %i.amh, %n.vec530
  %min.iters.check514 = icmp ult i32 %i.dm, 8
  %op.rdx900 = add i64 %.neg, 3
  %op.rdx901 = add i64 %op.rdx900, %i.abo
  %diff.check = icmp ult i64 %op.rdx901, 31
  %or.cond898 = select i1 %min.iters.check514, i1 true, i1 %diff.check
  %n.vec516 = and i64 %wide.trip.count189.i115, 2147483640 ; 3 uses
  %broadcast.splatinsert517 = insertelement <4 x i32> poison, i32 %i.ajy, i64 0
  %broadcast.splat518 = shufflevector <4 x i32> %broadcast.splatinsert517, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n525 = icmp eq i64 %n.vec516, %wide.trip.count189.i115
  %xtraiter922 = and i64 %wide.trip.count189.i115, 3 ; 2 uses
  %lcmp.mod923.not = icmp eq i64 %xtraiter922, 0
  %min.iters.check499 = icmp ult i32 %i.dm, 8
  %bound0495 = icmp ult ptr %i.abp, %scevgep494
  %bound1496 = icmp ult ptr %i.akc, %scevgep493
  %found.conflict497 = and i1 %bound0495, %bound1496
  %n.vec501 = and i64 %wide.trip.count189.i115, 2147483640 ; 3 uses
  %cmp.n510 = icmp eq i64 %n.vec501, %wide.trip.count189.i115
  %xtraiter924 = and i64 %wide.trip.count189.i115, 3 ; 2 uses
  %lcmp.mod925.not = icmp eq i64 %xtraiter924, 0
  %i.amj = sub nsw i32 0, %i.dg
  %i.amk = sext i32 %i.amj to i64
  %i.aml = add nuw nsw i64 %wide.trip.count220.i120, 1
  %i.amm = sub nsw i64 %i.aml, %i.amk             ; 3 uses
  %min.iters.check480 = icmp ult i64 %i.amm, 8
  %n.vec482 = and i64 %i.amm, -8                  ; 3 uses
  %i.amn = add nsw i64 %n.vec482, %i.akl
  %invariant.gep964 = getelementptr [4 x i8], ptr %i.acd, i64 %i.akl
  %cmp.n490 = icmp eq i64 %i.amm, %n.vec482
  %xtraiter927 = and i64 %wide.trip.count189.i115, 1
  %i.amo = icmp eq i64 %i.alz, 0
  %unroll_iter = and i64 %wide.trip.count189.i115, 2147483646
  %lcmp.mod928.not = icmp eq i64 %xtraiter927, 0
  %lcmp.mod931 = trunc i32 %i.dm to i1
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge112.i141, %.lr.ph121.i105
  %indvars.iv237.i124 = phi i64 [ 0, %.lr.ph121.i105 ], [ %indvars.iv.next238.i142, %._crit_edge112.i141 ] ; 4 uses
  %.0418119.i125 = phi ptr [ %i.ajf, %.lr.ph121.i105 ], [ %i.awb, %._crit_edge112.i141 ] ; 4 uses
  %38 = add i64 %indvars.iv237.i124, %37
  %smax559 = call i64 @llvm.smax.i64(i64 %smin558, i64 %38)
  %smin560 = call i64 @llvm.smin.i64(i64 %smax559, i64 %i.alt) ; 2 uses
  %scevgep561 = getelementptr i8, ptr %scevgep557, i64 %smin560 ; 2 uses
  %scevgep563 = getelementptr i8, ptr %scevgep562, i64 %smin560 ; 2 uses
  %i.amp = load ptr, ptr %i.abd, align 8, !tbaa !120 ; 2 uses
  %.not454.i126 = icmp eq ptr %i.amp, null
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %i.amp, i64 %i.aat
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.amq, i64 %indvars.iv237.i124
  %i.ams = select i1 %.not454.i126, ptr %i.a, ptr %i.amr
  br i1 %i.ajn, label %.lr.ph79.preheader.i193, label %.preheader41.i127

.lr.ph79.preheader.i193:                          ; preds = %bb.ar
  %i.amt = trunc i64 %indvars.iv237.i124 to i32   ; 3 uses
  %i.amu = add i32 %i.dg, %i.amt                  ; 3 uses
  %i.amv = call i32 @llvm.smax.i32(i32 %i.amu, i32 %i.ds)
  %i.amw = call i32 @llvm.smin.i32(i32 %i.amv, i32 %i.dz)
  %i.amx = sext i32 %i.amw to i64
  %gep128.i194 = getelementptr i8, ptr %invariant.gep127.i107, i64 %i.amx
  %i.amy = call i32 @llvm.smax.i32(i32 %i.amu, i32 %i.ajh)
  %i.amz = call i32 @llvm.smin.i32(i32 %i.amy, i32 %i.ajj)
  %i.ana = sext i32 %i.amz to i64
  %gep126.i195 = getelementptr i8, ptr %invariant.gep123.i106, i64 %i.ana
  %i.anb = add i32 %i.amt, %i.ada
  %i.anc = call i32 @llvm.smax.i32(i32 %i.anb, i32 %i.ajh)
  %..i196 = call i32 @llvm.smin.i32(i32 %i.anc, i32 %i.ajj)
  %i.and = sext i32 %..i196 to i64
  %gep124.i197 = getelementptr i8, ptr %invariant.gep123.i106, i64 %i.and
  %i.ane = add i32 %i.amu, %i.dh
  %i.anf = srem i32 %i.ane, %i.ajg                ; 2 uses
  %i.ang = mul nsw i32 %i.anf, %i.abc
  %i.anh = sext i32 %i.ang to i64
  %gep116.i198 = getelementptr i8, ptr %invariant.gep.i101, i64 %i.anh
  %i.ani = srem i32 %i.amt, %i.ajg                ; 2 uses
  %i.anj = mul nsw i32 %i.ani, %i.abc
  %i.ank = sext i32 %i.anj to i64
  %gep114.i199 = getelementptr i8, ptr %invariant.gep.i101, i64 %i.ank
  %i.anl = mul i32 %i.alg, %i.anf
  %i.anm = sext i32 %i.anl to i64                 ; 2 uses
  %scevgep553 = getelementptr i8, ptr %scevgep552, i64 %i.anm ; 3 uses
  %scevgep555 = getelementptr i8, ptr %scevgep554, i64 %i.anm ; 3 uses
  %i.ann = mul i32 %i.aly, %i.ani
  %i.ano = sext i32 %i.ann to i64                 ; 2 uses
  %scevgep565 = getelementptr i8, ptr %scevgep564, i64 %i.ano ; 2 uses
  %scevgep567 = getelementptr i8, ptr %scevgep566, i64 %i.ano ; 2 uses
  %bound0568 = icmp ult ptr %scevgep553, %scevgep556
  %bound1569 = icmp ult ptr %i.acp, %scevgep555
  %found.conflict570 = and i1 %bound0568, %bound1569
  %bound0573 = icmp ult ptr %scevgep553, %scevgep563
  %bound1574 = icmp ult ptr %scevgep561, %scevgep555
  %found.conflict575 = and i1 %bound0573, %bound1574
  %i.anp = or i1 %found.conflict575, %stride.check577
  %conflict.rdx578 = or i1 %found.conflict570, %i.anp
  %bound0579 = icmp ult ptr %scevgep553, %scevgep567
  %bound1580 = icmp ult ptr %scevgep565, %scevgep555
  %found.conflict581 = and i1 %bound0579, %bound1580
  %conflict.rdx584 = or i1 %conflict.rdx578, %found.conflict581
  %bound0585 = icmp ult ptr %i.acp, %scevgep563
  %bound1586 = icmp ult ptr %scevgep561, %scevgep556
  %found.conflict587 = and i1 %bound0585, %bound1586
  %conflict.rdx590 = or i1 %found.conflict587, %conflict.rdx584
  %bound0591 = icmp ult ptr %i.acp, %scevgep567
  %bound1592 = icmp ult ptr %scevgep565, %scevgep556
  %found.conflict593 = and i1 %bound0591, %bound1592
  %conflict.rdx596 = or i1 %conflict.rdx590, %found.conflict593
  br label %.lr.ph79.i200

.preheader41.i127:                                ; preds = %._crit_edge.i208, %bb.ar
  br i1 %.not45580.i109, label %.preheader40.i136, label %.lr.ph82.preheader.i128

.lr.ph82.preheader.i128:                          ; preds = %.preheader41.i127
  %.pre.i129 = load i32, ptr %i.ajt, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check540, label %.lr.ph82.i130.preheader, label %vector.ph541

vector.ph541:                                     ; preds = %.lr.ph82.preheader.i128
  %broadcast.splatinsert543 = insertelement <4 x i32> poison, i32 %.pre.i129, i64 0
  %broadcast.splat544 = shufflevector <4 x i32> %broadcast.splatinsert543, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body545

vector.body545:                                   ; preds = %vector.body545, %vector.ph541
  %index546 = phi i64 [ 0, %vector.ph541 ], [ %index.next547, %vector.body545 ] ; 2 uses
  %gep961 = getelementptr [4 x i8], ptr %invariant.gep960, i64 %index546 ; 2 uses
  %i.anq = getelementptr i8, ptr %gep961, i64 16
  store <4 x i32> %broadcast.splat544, ptr %gep961, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat544, ptr %i.anq, align 4, !tbaa !8
  %index.next547 = add nuw i64 %index546, 8       ; 2 uses
  %i.anr = icmp eq i64 %index.next547, %n.vec542
  br i1 %i.anr, label %middle.block548, label %vector.body545, !llvm.loop !316

middle.block548:                                  ; preds = %vector.body545
  br i1 %cmp.n549, label %.preheader40.i136, label %.lr.ph82.i130.preheader

.lr.ph82.i130.preheader:                          ; preds = %.lr.ph82.preheader.i128, %middle.block548
  %indvars.iv196.i131.ph = phi i64 [ %smin.i110, %.lr.ph82.preheader.i128 ], [ %i.amd, %middle.block548 ]
  br label %.lr.ph82.i130

.lr.ph79.i200:                                    ; preds = %._crit_edge.i208, %.lr.ph79.preheader.i193
  %indvars.iv191.i201 = phi i64 [ %i.ajv, %.lr.ph79.preheader.i193 ], [ %indvars.iv.next192.i209, %._crit_edge.i208 ] ; 2 uses
  %.041776.i202 = phi ptr [ %gep114.i199, %.lr.ph79.preheader.i193 ], [ %i.api, %._crit_edge.i208 ] ; 3 uses
  %.142075.i203 = phi ptr [ %gep128.i194, %.lr.ph79.preheader.i193 ], [ %i.apm, %._crit_edge.i208 ] ; 3 uses
  %.042174.i204 = phi ptr [ %gep124.i197, %.lr.ph79.preheader.i193 ], [ %i.apl, %._crit_edge.i208 ] ; 2 uses
  %.142373.i205 = phi ptr [ %gep126.i195, %.lr.ph79.preheader.i193 ], [ %i.apk, %._crit_edge.i208 ] ; 2 uses
  %.142572.i206 = phi ptr [ %gep116.i198, %.lr.ph79.preheader.i193 ], [ %i.aph, %._crit_edge.i208 ] ; 3 uses
  %.142771.i207 = phi ptr [ %i.acp, %.lr.ph79.preheader.i193 ], [ %i.apj, %._crit_edge.i208 ] ; 3 uses
  %i.ans = load i8, ptr %.142373.i205, align 1, !tbaa !45 ; 2 uses
  %i.ant = zext i8 %i.ans to i32                  ; 2 uses
  br i1 %i.ajo, label %.lr.ph70.i211.preheader, label %._crit_edge.i208

.lr.ph70.i211.preheader:                          ; preds = %.lr.ph79.i200
  %brmerge983 = select i1 %min.iters.check598, i1 true, i1 %conflict.rdx596
  br i1 %brmerge983, label %.lr.ph70.i211.preheader910, label %vector.ph599

vector.ph599:                                     ; preds = %.lr.ph70.i211.preheader
  %broadcast.splatinsert601 = insertelement <4 x i32> poison, i32 %i.ant, i64 0
  %broadcast.splat602 = shufflevector <4 x i32> %broadcast.splatinsert601, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body603

vector.body603:                                   ; preds = %vector.body603, %vector.ph599
  %index604 = phi i64 [ 0, %vector.ph599 ], [ %index.next608, %vector.body603 ] ; 5 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %.142075.i203, i64 %index604
  %wide.load605 = load <4 x i8>, ptr %i.anu, align 1, !tbaa !45, !alias.scope !317
  %i.anv = zext <4 x i8> %wide.load605 to <4 x i32>
  %i.anw = sub nsw <4 x i32> %broadcast.splat602, %i.anv
  %i.anx = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.anw, i1 true) ; 2 uses
  %i.any = trunc nuw <4 x i32> %i.anx to <4 x i8>
  %i.anz = getelementptr inbounds nuw i8, ptr %.142572.i206, i64 %index604
  store <4 x i8> %i.any, ptr %i.anz, align 1, !tbaa !45, !alias.scope !320, !noalias !322
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %.142771.i207, i64 %index604 ; 2 uses
  %wide.load606 = load <4 x i32>, ptr %i.aoa, align 4, !tbaa !8, !alias.scope !325, !noalias !326
  %i.aob = add nsw <4 x i32> %i.anx, %wide.load606
  %i.aoc = getelementptr inbounds nuw i8, ptr %.041776.i202, i64 %index604
  %wide.load607 = load <4 x i8>, ptr %i.aoc, align 1, !tbaa !45, !alias.scope !327
  %i.aod = zext <4 x i8> %wide.load607 to <4 x i32>
  %i.aoe = sub <4 x i32> %i.aob, %i.aod
  store <4 x i32> %i.aoe, ptr %i.aoa, align 4, !tbaa !8, !alias.scope !325, !noalias !326
  %index.next608 = add nuw i64 %index604, 4       ; 2 uses
  %i.aof = icmp eq i64 %index.next608, %n.vec600
  br i1 %i.aof, label %middle.block609, label %vector.body603, !llvm.loop !328

middle.block609:                                  ; preds = %vector.body603
  br i1 %cmp.n610, label %._crit_edge.i208, label %.lr.ph70.i211.preheader910

.lr.ph70.i211.preheader910:                       ; preds = %.lr.ph70.i211.preheader, %middle.block609
  %indvars.iv186.i212.ph = phi i64 [ %n.vec600, %middle.block609 ], [ 0, %.lr.ph70.i211.preheader ]
  br label %.lr.ph70.i211

.lr.ph70.i211:                                    ; preds = %.lr.ph70.i211.preheader910, %.lr.ph70.i211
  %indvars.iv186.i212 = phi i64 [ %indvars.iv.next187.i213, %.lr.ph70.i211 ], [ %indvars.iv186.i212.ph, %.lr.ph70.i211.preheader910 ] ; 5 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %.142075.i203, i64 %indvars.iv186.i212
  %i.aoh = load i8, ptr %i.aog, align 1, !tbaa !45
  %i.aoi = zext i8 %i.aoh to i32
  %i.aoj = sub nsw i32 %i.ant, %i.aoi
  %i.aok = call i32 @llvm.abs.i32(i32 %i.aoj, i1 true) ; 2 uses
  %i.aol = trunc nuw i32 %i.aok to i8
  %i.aom = getelementptr inbounds nuw i8, ptr %.142572.i206, i64 %indvars.iv186.i212
  store i8 %i.aol, ptr %i.aom, align 1, !tbaa !45
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %.142771.i207, i64 %indvars.iv186.i212 ; 2 uses
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !8
  %i.aop = add nsw i32 %i.aok, %i.aoo
  %i.aoq = getelementptr inbounds nuw i8, ptr %.041776.i202, i64 %indvars.iv186.i212
  %i.aor = load i8, ptr %i.aoq, align 1, !tbaa !45
  %i.aos = zext i8 %i.aor to i32
  %i.aot = sub i32 %i.aop, %i.aos
  store i32 %i.aot, ptr %i.aon, align 4, !tbaa !8
  %indvars.iv.next187.i213 = add nuw nsw i64 %indvars.iv186.i212, 1 ; 2 uses
  %exitcond190.not.i214 = icmp eq i64 %indvars.iv.next187.i213, %wide.trip.count189.i115
  br i1 %exitcond190.not.i214, label %._crit_edge.i208, label %.lr.ph70.i211, !llvm.loop !329

._crit_edge.i208:                                 ; preds = %.lr.ph70.i211, %middle.block609, %.lr.ph79.i200
  %i.aou = zext i8 %i.ans to i64
  %i.aov = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.aou
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !45
  %i.aox = zext i8 %i.aow to i32
  %i.aoy = load i8, ptr %.042174.i204, align 1, !tbaa !45
  %i.aoz = zext i8 %i.aoy to i64
  %i.apa = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.aoz
  %i.apb = load i8, ptr %i.apa, align 1, !tbaa !45
  %i.apc = zext i8 %i.apb to i32
  %i.apd = sub nsw i32 %i.aox, %i.apc
  %i.ape = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %indvars.iv191.i201 ; 2 uses
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !8
  %i.apg = add nsw i32 %i.apd, %i.apf
  store i32 %i.apg, ptr %i.ape, align 4, !tbaa !8
  %indvars.iv.next192.i209 = add nsw i64 %indvars.iv191.i201, 1 ; 2 uses
  %i.aph = getelementptr inbounds i8, ptr %.142572.i206, i64 %i.ajp
  %i.api = getelementptr inbounds i8, ptr %.041776.i202, i64 %i.ajp
  %i.apj = getelementptr inbounds [4 x i8], ptr %.142771.i207, i64 %i.ajp
  %i.apk = getelementptr inbounds i8, ptr %.142373.i205, i64 %i.ajq
  %i.apl = getelementptr inbounds i8, ptr %.042174.i204, i64 %i.ajq
  %i.apm = getelementptr inbounds i8, ptr %.142075.i203, i64 %i.ajq
  %exitcond195.not.i210 = icmp eq i64 %indvars.iv.next192.i209, %i.ajr
  br i1 %exitcond195.not.i210, label %.preheader41.i127, label %.lr.ph79.i200, !llvm.loop !330

.preheader40.i136:                                ; preds = %.lr.ph82.i130, %middle.block548, %.preheader41.i127
  br i1 %i.aju, label %.lr.ph84.preheader.i187, label %.preheader39.i137

.lr.ph84.preheader.i187:                          ; preds = %.preheader40.i136
  %.pre242.i188 = load i32, ptr %i.ajw, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check528, label %.lr.ph84.i189.preheader, label %vector.ph529

vector.ph529:                                     ; preds = %.lr.ph84.preheader.i187
  %broadcast.splatinsert531 = insertelement <4 x i32> poison, i32 %.pre242.i188, i64 0
end_hunk_3
begin_hunk_4_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !354
  store i64 9223372034707292160, ptr %4, align 8, !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !354
  store i32 0, ptr %5, align 4, !tbaa !102, !noalias !354
  %i.awq = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.ao, ptr %i.awq, align 4, !tbaa !104, !noalias !354
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %29, ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !354
  %i.awr = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %29)
          to label %bb.bf unwind label %bb.bi     ; 0 uses

bb.bf:                                            ; preds = %bb.be
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  %i.aws = sitofp i32 %i.ac to double
  %i.awt = insertelement <4 x double> poison, double %i.aws, i64 0
  %i.awu = shufflevector <4 x double> %i.awt, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.awu, ptr %30, align 8, !tbaa !97, !alias.scope !357
  %i.awv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.bg unwind label %bb.bk     ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bd
  %i.aww = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.be
  %i.awx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #19
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn74 = phi { ptr, i32 } [ %i.awx, %bb.bi ], [ %i.aww, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  br label %bb.bv

bb.bk:                                            ; preds = %bb.bf
  %i.awy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %bb.bv

bb.bl:                                            ; preds = %bb.bg, %bb.bc
  %i.awz = add nuw nsw i32 %.sroa.speculated53.i.i, %i.ao ; 2 uses
  %i.axa = icmp slt i32 %i.awz, %i.f
  br i1 %i.axa, label %bb.bm, label %bb.bu

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !360
  store i64 9223372034707292160, ptr %2, align 8, !noalias !360
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !360
  store i32 %i.awz, ptr %3, align 4, !tbaa !102, !noalias !360
  %i.axb = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.f, ptr %i.axb, align 4, !tbaa !104, !noalias !360
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !360
  %i.axc = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %31)
          to label %bb.bo unwind label %bb.br     ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.axd = sitofp i32 %i.ac to double
  %i.axe = insertelement <4 x double> poison, double %i.axd, i64 0
  %i.axf = shufflevector <4 x double> %i.axe, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.axf, ptr %32, align 8, !tbaa !97, !alias.scope !363
  %i.axg = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.bp unwind label %bb.bt     ; 0 uses

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bm
  %i.axh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %bb.bn
  %i.axi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #19
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pn76 = phi { ptr, i32 } [ %i.axi, %bb.br ], [ %i.axh, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bo
  %i.axj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bp, %bb.bl
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.thread

_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.thread:   ; preds = %.cont35.i, %bb.c, %.cont52.i, %bb.b, %bb.a, %bb.bu
  ret void

bb.bv:                                            ; preds = %bb.bt, %bb.bs, %bb.bk, %bb.bj, %bb.bb
  %.pn78 = phi { ptr, i32 } [ %i.axj, %bb.bt ], [ %.pn76, %bb.bs ], [ %i.awy, %bb.bk ], [ %.pn74, %bb.bj ], [ %i.awp, %bb.bb ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #19
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.ap
  %.pn78.pn = phi { ptr, i32 } [ %.pn78, %bb.bv ], [ %i.aan, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #19
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.ao
  %.pn78.pn.pn = phi { ptr, i32 } [ %.pn78.pn, %bb.bw ], [ %i.aam, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #19
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.an
  %.pn78.pn.pn.pn = phi { ptr, i32 } [ %.pn78.pn.pn, %bb.bx ], [ %i.aal, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #19
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.am
  %.pn78.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn78.pn.pn.pn, %bb.by ], [ %i.aak, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.u, %bb.t, %bb.l, %bb.k
  %.pn78.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn78.pn.pn.pn.pn, %bb.bz ], [ %i.cd, %bb.u ], [ %.pn69, %bb.t ], [ %i.bs, %bb.l ], [ %.pn, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  resume { ptr, i32 } %.pn78.pn.pn.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #8

declare void @_ZN2cv17validateDisparityERKNS_17_InputOutputArrayERKNS_11_InputArrayEiii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #8

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN2cvL7makePtrINS_12StereoBMImplEJiiEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!11 = distinct !{!11, !"_ZN2cvL7makePtrINS_12StereoBMImplEJiiEEENS_3PtrIT_EEDpRKT0_"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZSt11make_sharedIN2cv12StereoBMImplEJRKiS3_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_: argument 0"}
!14 = distinct !{!14, !"_ZSt11make_sharedIN2cv12StereoBMImplEJRKiS3_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_"}
!15 = !{!13, !10}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSSt12__shared_ptrIN2cv12StereoBMImplELN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0, !20, i64 8}
!18 = !{!"p1 _ZTSN2cv12StereoBMImplE", !19, i64 0}
!19 = !{!"any pointer", !6, i64 0}
!20 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0}
!21 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0}
!22 = !{!19, !19, i64 0}
!23 = !{!24, !5, i64 8}
!24 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!25 = !{!24, !5, i64 12}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !7, i64 0}
!28 = !{!29, !5, i64 0}
!29 = !{!"_ZTSN2cv14StereoBMParamsE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !30, i64 40, !30, i64 56, !5, i64 72, !5, i64 76}
!30 = !{!"_ZTSN2cv5Rect_IiEE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!31 = !{!29, !5, i64 4}
!32 = !{!29, !5, i64 8}
!33 = !{!29, !5, i64 12}
!34 = !{!29, !5, i64 16}
!35 = !{!29, !5, i64 20}
!36 = !{!29, !5, i64 24}
!37 = !{!29, !5, i64 28}
!38 = !{!29, !5, i64 72}
!39 = !{!29, !5, i64 76}
!40 = !{!20, !21, i64 0}
!41 = !{!18, !18, i64 0}
!42 = !{!43, !44, i64 8}
!43 = !{!"_ZTSSt9type_info", !44, i64 8}
!44 = !{!"p1 omnipotent char", !19, i64 0}
!45 = !{!6, !6, i64 0}
!46 = !{!44, !44, i64 0}
!47 = distinct !{null}
!48 = !{!49, !5, i64 8}
!49 = !{!"_ZTSN2cv11FileStorageE", !5, i64 8, !50, i64 16, !53, i64 48}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !51, i64 0, !52, i64 8, !6, i64 16}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !44, i64 0}
!52 = !{!"long", !6, i64 0}
!53 = !{!"_ZTSN2cv3PtrINS_11FileStorage4ImplEEE", !54, i64 0}
!54 = !{!"_ZTSSt10shared_ptrIN2cv11FileStorage4ImplEE", !55, i64 0}
!55 = !{!"_ZTSSt12__shared_ptrIN2cv11FileStorage4ImplELN9__gnu_cxx12_Lock_policyE2EE", !56, i64 0, !20, i64 8}
!56 = !{!"p1 _ZTSN2cv11FileStorage4ImplE", !19, i64 0}
!57 = !{!50, !44, i64 0}
!58 = !{!50, !52, i64 8}
!59 = !{!60, !5, i64 24}
!60 = !{!"_ZTSN2cv12StereoBMImplE", !61, i64 0, !29, i64 8, !64, i64 88, !64, i64 296, !64, i64 504, !64, i64 712, !64, i64 920}
!61 = !{!"_ZTSN2cv8StereoBME", !62, i64 0}
!62 = !{!"_ZTSN2cv13StereoMatcherE", !63, i64 0}
!63 = !{!"_ZTSN2cv9AlgorithmE"}
!64 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !65, i64 56, !66, i64 64, !67, i64 72, !69, i64 128}
!65 = !{!"p1 _ZTSN2cv12MatAllocatorE", !19, i64 0}
!66 = !{!"p1 _ZTSN2cv8UMatDataE", !19, i64 0}
!67 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !68, i64 4, !5, i64 8, !6, i64 12}
!68 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!69 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!70 = !{!60, !5, i64 28}
!71 = !{!60, !5, i64 20}
!72 = !{!60, !5, i64 44}
!73 = !{!60, !5, i64 40}
!74 = !{!60, !5, i64 80}
!75 = !{!60, !5, i64 8}
!76 = !{!60, !5, i64 12}
!77 = !{!60, !5, i64 16}
!78 = !{!60, !5, i64 32}
!79 = !{!60, !5, i64 36}
!80 = !{!60, !5, i64 84}
!81 = !{!82, !19, i64 8}
!82 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !19, i64 8, !83, i64 16}
!83 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!86 = distinct !{!86, !"_ZNK2cv11_InputArray6getMatEi"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!89 = distinct !{!89, !"_ZNK2cv11_InputArray6getMatEi"}
!90 = !{!67, !5, i64 0}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!93 = distinct !{!93, !"_ZNK2cv11_InputArray6getMatEi"}
!94 = !{!64, !5, i64 12}
!95 = !{!64, !5, i64 8}
!96 = !{!64, !5, i64 0}
!97 = !{!98, !98, i64 0}
!98 = !{!"double", !6, i64 0}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!101 = distinct !{!101, !"_ZN2cv7Scalar_IdE3allEd"}
!102 = !{!103, !5, i64 0}
!103 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!104 = !{!103, !5, i64 4}
!105 = !{!106, !106, i64 0}
!106 = !{!"p1 _ZTSN2cv8BufferBME", !19, i64 0}
!107 = !{!108, !108, i64 0}
!108 = !{!"p1 _ZTSN2cv14StereoBMParamsE", !19, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"p1 _ZTSN2cv3MatE", !19, i64 0}
!111 = !{!112, !110, i64 8}
!112 = !{!"_ZTSN2cv24FindStereoCorrespInvokerE", !113, i64 0, !110, i64 8, !110, i64 16, !110, i64 24, !110, i64 32, !108, i64 40, !5, i64 48, !30, i64 52, !106, i64 72}
!113 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!114 = !{!112, !110, i64 16}
!115 = !{!112, !110, i64 24}
!116 = !{!112, !5, i64 48}
!117 = !{!112, !110, i64 32}
!118 = !{!29, !5, i64 32}
!119 = !{!82, !5, i64 0}
!120 = !{!64, !44, i64 24}
!121 = !{!122, !5, i64 8}
!122 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !123, i64 0, !5, i64 8}
!123 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !19, i64 0}
!124 = !{!51, !44, i64 0}
!125 = !{!52, !52, i64 0}
!126 = !{!127, !128, i64 0}
!127 = !{!"_ZTSNSt12_Vector_baseIPiSaIS0_EE17_Vector_impl_dataE", !128, i64 0, !128, i64 8, !128, i64 16}
!128 = !{!"p2 int", !129, i64 0}
!129 = !{!"any p2 pointer", !19, i64 0}
!130 = !{!127, !128, i64 16}
!131 = !{!132, !132, i64 0}
!132 = !{!"p1 int", !19, i64 0}
!133 = !{!127, !128, i64 8}
!134 = !{!135, !136, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseIPhSaIS0_EE17_Vector_impl_dataE", !136, i64 0, !136, i64 8, !136, i64 16}
!136 = !{!"p2 omnipotent char", !129, i64 0}
!137 = !{!135, !136, i64 16}
!138 = !{!135, !136, i64 8}
!139 = !{!140, !141, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseIPtSaIS0_EE17_Vector_impl_dataE", !141, i64 0, !141, i64 8, !141, i64 16}
!141 = !{!"p2 short", !129, i64 0}
!142 = !{!140, !141, i64 16}
!143 = !{!144, !144, i64 0}
!144 = !{!"p1 short", !19, i64 0}
!145 = !{!140, !141, i64 8}
!146 = distinct !{!146, !147}
!147 = !{!"llvm.loop.mustprogress"}
!148 = distinct !{!148, !147, !149, !150}
!149 = !{!"llvm.loop.isvectorized", i32 1}
!150 = !{!"llvm.loop.unroll.runtime.disable"}
!151 = !{!152, !158, i64 40}
!152 = !{!"_ZTSN2cv5utils10BufferAreaE", !153, i64 0, !19, i64 24, !52, i64 32, !158, i64 40}
!153 = !{!"_ZTSSt6vectorIN2cv5utils10BufferArea5BlockESaIS3_EE", !154, i64 0}
!154 = !{!"_ZTSSt12_Vector_baseIN2cv5utils10BufferArea5BlockESaIS3_EE", !155, i64 0}
!155 = !{!"_ZTSNSt12_Vector_baseIN2cv5utils10BufferArea5BlockESaIS3_EE12_Vector_implE", !156, i64 0}
!156 = !{!"_ZTSNSt12_Vector_baseIN2cv5utils10BufferArea5BlockESaIS3_EE17_Vector_impl_dataE", !157, i64 0, !157, i64 8, !157, i64 16}
!157 = !{!"p1 _ZTSN2cv5utils10BufferArea5BlockE", !19, i64 0}
!158 = !{!"bool", !6, i64 0}
!159 = !{i8 0, i8 2}
!160 = !{}
!161 = !{!162, !108, i64 48}
!162 = !{!"_ZTSN2cv16PrefilterInvokerE", !113, i64 0, !6, i64 8, !6, i64 24, !106, i64 40, !108, i64 48}
!163 = !{i64 4}
!164 = !{!162, !106, i64 40}
!165 = !{i64 8}
!166 = distinct !{!166, !147, !149, !150}
!167 = !{!168}
end_hunk_4

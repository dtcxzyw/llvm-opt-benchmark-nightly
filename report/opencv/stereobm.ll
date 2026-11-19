Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereobm?download=true
inline.NumInlined: 442
inline.NumDeleted: 208
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.bu, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %15)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19, !noalias !326
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19, !noalias !326
  %i.bw = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %bb.p unwind label %bb.s       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.bx = sitofp i32 %i.ac to double
  %i.by = insertelement <4 x double> poison, double %i.bx, i64 0
  %i.bz = shufflevector <4 x double> %i.by, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.bz, ptr %22, align 8, !tbaa !63, !alias.scope !327
  %i.ca = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.q unwind label %bb.u       ; 0 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.v

bb.r:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
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
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19, !noalias !328
  store i32 %i.az, ptr %12, align 4, !tbaa !65, !noalias !328
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %i.bh, ptr %i.cf, align 4, !tbaa !66, !noalias !328
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19, !noalias !328
  store i64 9223372034707292160, ptr %13, align 8, !noalias !328
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(208) %i.ce, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %13)
          to label %bb.w unwind label %bb.am

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19, !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19, !noalias !328
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19, !noalias !329
  store i32 %i.az, ptr %10, align 4, !tbaa !65, !noalias !329
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.bh, ptr %i.ci, align 4, !tbaa !66, !noalias !329
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19, !noalias !329
  store i64 9223372034707292160, ptr %11, align 8, !noalias !329
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %i.ch, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.x unwind label %bb.an

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19, !noalias !329
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !329
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.cj = load ptr, ptr %i.r, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !330
  store i32 %i.az, ptr %8, align 4, !tbaa !65, !noalias !330
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.bh, ptr %i.ck, align 4, !tbaa !66, !noalias !330
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19, !noalias !330
  store i64 9223372034707292160, ptr %9, align 8, !noalias !330
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 8 dereferenceable(208) %i.cj, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.y unwind label %bb.ao

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !330
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.cl = load ptr, ptr %i.x, align 8, !tbaa !323, !nonnull !112, !align !113
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !25
  %i.co = icmp sgt i32 %i.cn, -1
  br i1 %i.co, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !331
  store i32 %i.az, ptr %6, align 4, !tbaa !65, !noalias !331
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.bh, ptr %i.cr, align 4, !tbaa !66, !noalias !331
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !331
  store i64 9223372034707292160, ptr %7, align 8, !noalias !331
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(208) %i.cq, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %_ZNK2cv3Mat8rowRangeEii.exit97 unwind label %bb.ap

_ZNK2cv3Mat8rowRangeEii.exit97:                   ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !331
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !331
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %26) #19
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK2cv3Mat8rowRangeEii.exit97, %bb.aa
  %i.cs = load i32, ptr %25, align 8, !tbaa !61
  %i.ct = and i32 %i.cs, 4095
  %i.cu = icmp eq i32 %i.ct, 3
  %i.cv = load ptr, ptr %i.x, align 8, !tbaa !323, !nonnull !112, !align !113 ; 5 uses
  %i.cw = sub i32 %i.h, %i.bh                     ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !332, !nonnull !112, !align !114 ; 10 uses
  %i.cz = load i32, ptr %1, align 4, !tbaa !65
  %i.da = sext i32 %i.cz to i64                   ; 8 uses
  %i.db = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.val = load ptr, ptr %i.db, align 8, !tbaa !79 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %25, i64 24
  %.val86 = load ptr, ptr %i.dc, align 8, !tbaa !79 ; 8 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %25, i64 128
  %.val87 = load i64, ptr %i.dd, align 8, !tbaa !84 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !20 ; 7 uses
  %i.dg = sdiv i32 %i.df, 2                       ; 31 uses
  %i.dh = add nsw i32 %i.dg, 1                    ; 12 uses
  %i.di = call i32 @llvm.smin.i32(i32 %i.az, i32 %i.dh) ; 17 uses
  %i.dj = sub i32 0, %i.di                        ; 12 uses
  %i.dk = call i32 @llvm.smin.i32(i32 %i.cw, i32 %i.dh) ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !22 ; 44 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !21 ; 13 uses
  %i.dp = add i32 %i.do, %i.dm                    ; 3 uses
  %i.dq = add i32 %i.dp, -1                       ; 18 uses
  %i.dr = call i32 @llvm.smax.i32(i32 %i.dq, i32 0) ; 12 uses
  %i.ds = call i32 @llvm.smin.i32(i32 %i.dq, i32 0) ; 8 uses
  %i.dt = sub i32 0, %i.ds                        ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !59 ; 11 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !60 ; 16 uses
  %i.dy = sub i32 %i.dv, %i.dm                    ; 3 uses
  %i.dz = add i32 %i.ds, %i.dy                    ; 12 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !23 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cv, i64 28
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !24 ; 4 uses
  br i1 %i.cu, label %bb.ac, label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  %.tr.i = trunc i32 %i.do to i16
  %i.ee = shl i16 %.tr.i, 4
  %i.ef = add i16 %i.ee, -16                      ; 14 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !79
  %i.ei = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.ej = zext nneg i32 %i.dr to i64              ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ej ; 2 uses
  %i.el = zext i32 %i.dt to i64                   ; 3 uses
  %i.em = getelementptr i8, ptr %.val, i64 %i.el  ; 2 uses
  %i.en = load i64, ptr %i.ei, align 8, !tbaa !84 ; 3 uses
  %i.eo = trunc i64 %i.en to i32                  ; 2 uses
  %i.ep = lshr i64 %.val87, 1                     ; 4 uses
  %i.eq = add i32 %i.dx, %i.dk                    ; 7 uses
  %i.er = add i32 %i.eq, %i.di                    ; 2 uses
  %i.es = mul i32 %i.er, %i.dm                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.et = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.eu, null
  %i.ev = getelementptr inbounds nuw i8, ptr %26, i64 128
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = shl i64 %i.ew, 30
  %i.ey = ashr i64 %i.ex, 32
  %i.ez = select i1 %.not.i, i64 0, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cy, i64 160 ; 6 uses
  %i.fb = load ptr, ptr %i.cy, align 8, !tbaa !88
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.da
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !91 ; 6 uses
  %i.fe = ptrtoaddr ptr %i.fd to i64
  %i.ff = getelementptr i8, ptr %i.fd, i64 4      ; 19 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !88
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.da
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !91 ; 5 uses
  %i.fk = ptrtoaddr ptr %i.fj to i64
  %i.fl = mul i32 %i.dh, %i.dm
  %i.fm = sext i32 %i.fl to i64                   ; 9 uses
  %i.fn = getelementptr [4 x i8], ptr %i.fj, i64 %i.fm ; 10 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !88
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.da
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !91
  %i.fs = sext i32 %i.dh to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.fs ; 15 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !94
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.da
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !28 ; 6 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fm
  %i.fz = add nsw i32 %i.dm, 2
  %i.ga = sext i32 %i.fz to i64
  %i.gb = shl nsw i64 %i.ga, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fd, i8 0, i64 %i.gb, i1 false)
  %i.gc = mul i32 %i.di, %i.dm
  %i.gd = sext i32 %i.gc to i64                   ; 13 uses
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
  %i.gq = xor i32 %i.dg, -1                       ; 7 uses
  %invariant.gep.i = getelementptr i8, ptr %i.fy, i64 %i.ge ; 3 uses
  %i.gr = icmp sgt i32 %i.df, -2                  ; 2 uses
  br i1 %i.gr, label %.lr.ph.i, label %.preheader43.i

.lr.ph.i:                                         ; preds = %bb.ac
  %i.gs = sub nsw i32 0, %i.dr                    ; 2 uses
  %i.gt = xor i32 %i.dr, -1
  %i.gu = add i32 %i.dv, %i.gt                    ; 2 uses
  %i.gv = mul i32 %i.di, %i.eo
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  %i.gx = sub nsw i64 0, %i.gw                    ; 2 uses
  %invariant.gep54.i = getelementptr i8, ptr %i.ek, i64 %i.gx ; 2 uses
  %invariant.gep56.i = getelementptr i8, ptr %i.em, i64 %i.gx
  %i.gy = icmp sgt i32 %i.eq, %i.dj
  %i.gz = sext i32 %i.dm to i64                   ; 4 uses
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
  %xtraiter1011 = and i64 %i.hd, 1
  %lcmp.mod1012.not = icmp eq i64 %xtraiter1011, 0
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
  %i.hi = xor i64 %i.hc, -1
  %i.hj = add nsw i64 %i.hi, %wide.trip.count144.i ; 3 uses
  %i.hk = mul i64 %i.hj, %i.ha
  %i.hl = add i64 %i.hk, %wide.trip.count139.i
  %i.hm = add i64 %i.hl, %i.el
  %i.hn = sub i64 %i.hm, %i.gw
  %scevgep668 = getelementptr i8, ptr %.val, i64 %i.hn
  %i.ho = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %i.hp = mul nsw i64 %i.hj, %i.gz
  %i.hq = add i64 %i.hp, %i.fm
  %i.hr = add i64 %i.hq, %wide.trip.count139.i
  %i.hs = sub i64 %i.hr, %i.gd
  %i.ht = shl i64 %i.hs, 2
  %scevgep675 = getelementptr i8, ptr %i.fj, i64 %i.ht ; 2 uses
  %i.hu = mul nsw i64 %i.hj, %i.gz
  %i.hv = add i64 %i.hu, %i.fm
  %i.hw = add i64 %i.hv, %wide.trip.count139.i
  %i.hx = sub i64 %i.hw, %i.gd
  %scevgep676 = getelementptr i8, ptr %i.fx, i64 %i.hx
  %i.hy = mul i32 %i.dm, %i.er
  %min.iters.check679 = icmp ult i32 %i.dm, 8
  %stride.check687 = icmp slt i64 %i.ha, 0
  %n.vec694 = and i64 %wide.trip.count139.i, 2147483644 ; 3 uses
  %cmp.n703 = icmp eq i64 %n.vec694, %wide.trip.count139.i
  %xtraiter1014 = and i64 %wide.trip.count139.i, 1
  %lcmp.mod1015.not = icmp eq i64 %xtraiter1014, 0
  %i.hz = add nsw i64 %wide.trip.count139.i, -1
  br label %.lr.ph51.us.i

.lr.ph51.us.i:                                    ; preds = %._crit_edge52.split.us.us.i, %.lr.ph51.us.preheader.i
  %indvar670 = phi i32 [ %indvar.next671, %._crit_edge52.split.us.us.i ], [ 0, %.lr.ph51.us.preheader.i ] ; 3 uses
  %indvars.iv146.i = phi i64 [ %indvars.iv.next147.i, %._crit_edge52.split.us.us.i ], [ %i.hh, %.lr.ph51.us.preheader.i ] ; 2 uses
  %i.ia = add i32 %indvar670, %i.gq
  %i.ib = call i32 @llvm.smax.i32(i32 %i.ho, i32 %i.ia)
  %i.ic = call i32 @llvm.smin.i32(i32 %i.ib, i32 %i.dz)
  %smin673 = sext i32 %i.ic to i64
  %scevgep674 = getelementptr i8, ptr %scevgep668, i64 %smin673 ; 2 uses
  %i.id = mul i32 %i.hy, %indvar670
  %i.ie = sext i32 %i.id to i64
  %scevgep677 = getelementptr i8, ptr %scevgep676, i64 %i.ie ; 2 uses
  %i.if = trunc i64 %indvars.iv146.i to i32       ; 3 uses
  %i.ig = add i32 %i.dh, %i.if
  %i.ih = mul i32 %i.ig, %i.es
  %i.ii = sext i32 %i.ih to i64
  %gep.us.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.ii ; 3 uses
  %.sroa.speculated15.us.i = call i32 @llvm.smax.i32(i32 %i.if, i32 %i.gs)
  %.sroa.speculated11.us.i = call i32 @llvm.smin.i32(i32 %i.gu, i32 %.sroa.speculated15.us.i)
  %i.ij = sext i32 %.sroa.speculated11.us.i to i64
  %gep55.us.i = getelementptr i8, ptr %invariant.gep54.i, i64 %i.ij
  %.sroa.speculated6.us.i = call i32 @llvm.smax.i32(i32 %i.if, i32 %i.ds)
  %.sroa.speculated.us.i = call i32 @llvm.smin.i32(i32 %i.dz, i32 %.sroa.speculated6.us.i)
  %i.ik = sext i32 %.sroa.speculated.us.i to i64
  %gep57.us.i = getelementptr i8, ptr %invariant.gep56.i, i64 %i.ik ; 3 uses
  %bound0681 = icmp ult ptr %gep.us.i, %scevgep675
  %bound1682 = icmp ult ptr %i.gf, %scevgep677
  %found.conflict683 = and i1 %bound0681, %bound1682
  %bound0684 = icmp ult ptr %gep.us.i, %scevgep674
  %bound1685 = icmp ult ptr %gep57.us.i, %scevgep677
  %found.conflict686 = and i1 %bound0684, %bound1685
  %i.il = or i1 %found.conflict686, %stride.check687
  %conflict.rdx688 = or i1 %found.conflict683, %i.il
  %bound0689 = icmp ult ptr %i.gf, %scevgep674
  %bound1690 = icmp ult ptr %gep57.us.i, %scevgep675
  %found.conflict691 = and i1 %bound0689, %bound1690
  %conflict.rdx692 = or i1 %conflict.rdx688, %found.conflict691
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph51.us.i
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %._crit_edge.us.us.i ], [ %i.hc, %.lr.ph51.us.i ] ; 2 uses
  %.041948.us.us.i = phi ptr [ %i.km, %._crit_edge.us.us.i ], [ %gep57.us.i, %.lr.ph51.us.i ] ; 5 uses
  %.042247.us.us.i = phi ptr [ %i.kl, %._crit_edge.us.us.i ], [ %gep55.us.i, %.lr.ph51.us.i ] ; 2 uses
  %.042446.us.us.i = phi ptr [ %i.kk, %._crit_edge.us.us.i ], [ %gep.us.i, %.lr.ph51.us.i ] ; 5 uses
  %.042645.us.us.i = phi ptr [ %i.kj, %._crit_edge.us.us.i ], [ %i.gf, %.lr.ph51.us.i ] ; 5 uses
  %i.im = load i8, ptr %.042247.us.us.i, align 1, !tbaa !27 ; 2 uses
  %i.in = zext i8 %i.im to i32                    ; 4 uses
  %brmerge = select i1 %min.iters.check679, i1 true, i1 %conflict.rdx692
  br i1 %brmerge, label %scalar.ph678.preheader, label %vector.ph693

vector.ph693:                                     ; preds = %.lr.ph.us.us.i
  %broadcast.splatinsert695 = insertelement <4 x i32> poison, i32 %i.in, i64 0
  %broadcast.splat696 = shufflevector <4 x i32> %broadcast.splatinsert695, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body697

vector.body697:                                   ; preds = %vector.body697, %vector.ph693
  %index698 = phi i64 [ 0, %vector.ph693 ], [ %index.next701, %vector.body697 ] ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.041948.us.us.i, i64 %index698
  %wide.load699 = load <4 x i8>, ptr %i.io, align 1, !tbaa !27, !alias.scope !333
  %i.ip = zext <4 x i8> %wide.load699 to <4 x i32>
  %i.iq = sub nsw <4 x i32> %broadcast.splat696, %i.ip
  %i.ir = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.iq, i1 true) ; 2 uses
  %i.is = trunc nuw <4 x i32> %i.ir to <4 x i8>
  %i.it = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %index698
  store <4 x i8> %i.is, ptr %i.it, align 1, !tbaa !27, !alias.scope !334, !noalias !335
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %index698 ; 2 uses
  %wide.load700 = load <4 x i32>, ptr %i.iu, align 4, !tbaa !8, !alias.scope !336, !noalias !333
  %i.iv = add nsw <4 x i32> %i.ir, %wide.load700
  store <4 x i32> %i.iv, ptr %i.iu, align 4, !tbaa !8, !alias.scope !336, !noalias !333
  %index.next701 = add nuw i64 %index698, 4       ; 2 uses
  %i.iw = icmp eq i64 %index.next701, %n.vec694
  br i1 %i.iw, label %middle.block702, label %vector.body697, !llvm.loop !225

middle.block702:                                  ; preds = %vector.body697
  br i1 %cmp.n703, label %._crit_edge.us.us.i, label %scalar.ph678.preheader

scalar.ph678.preheader:                           ; preds = %.lr.ph.us.us.i, %middle.block702
  %indvars.iv136.i.ph = phi i64 [ %n.vec694, %middle.block702 ], [ 0, %.lr.ph.us.us.i ] ; 6 uses
  br i1 %lcmp.mod1015.not, label %scalar.ph678.prol.loopexit, label %scalar.ph678.prol

scalar.ph678.prol:                                ; preds = %scalar.ph678.preheader
  %i.ix = getelementptr inbounds nuw i8, ptr %.041948.us.us.i, i64 %indvars.iv136.i.ph
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !27
  %i.iz = zext i8 %i.iy to i32
  %i.ja = sub nsw i32 %i.in, %i.iz
  %i.jb = call i32 @llvm.abs.i32(i32 %i.ja, i1 true) ; 2 uses
  %i.jc = trunc nuw i32 %i.jb to i8
  %i.jd = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %indvars.iv136.i.ph
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !27
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %indvars.iv136.i.ph ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !8
  %i.jg = add nsw i32 %i.jb, %i.jf
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !8
  %indvars.iv.next137.i.prol = or disjoint i64 %indvars.iv136.i.ph, 1
  br label %scalar.ph678.prol.loopexit

scalar.ph678.prol.loopexit:                       ; preds = %scalar.ph678.prol, %scalar.ph678.preheader
  %indvars.iv136.i.unr = phi i64 [ %indvars.iv136.i.ph, %scalar.ph678.preheader ], [ %indvars.iv.next137.i.prol, %scalar.ph678.prol ]
  %i.jh = icmp eq i64 %indvars.iv136.i.ph, %i.hz
  br i1 %i.jh, label %._crit_edge.us.us.i, label %scalar.ph678

scalar.ph678:                                     ; preds = %scalar.ph678.prol.loopexit, %scalar.ph678
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i.1, %scalar.ph678 ], [ %indvars.iv136.i.unr, %scalar.ph678.prol.loopexit ] ; 5 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.041948.us.us.i, i64 %indvars.iv136.i
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !27
  %i.jk = zext i8 %i.jj to i32
  %i.jl = sub nsw i32 %i.in, %i.jk
  %i.jm = call i32 @llvm.abs.i32(i32 %i.jl, i1 true) ; 2 uses
  %i.jn = trunc nuw i32 %i.jm to i8
  %i.jo = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %indvars.iv136.i
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !27
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %indvars.iv136.i ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !8
  %i.jr = add nsw i32 %i.jm, %i.jq
  store i32 %i.jr, ptr %i.jp, align 4, !tbaa !8
end_hunk_0
begin_hunk_1_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  br i1 %exitcond170.not.i, label %._crit_edge67.i, label %iter.check737, !llvm.loop !235

.preheader42.lr.ph.split.i:                       ; preds = %.preheader42.lr.ph.i
  br i1 %i.kr, label %.preheader42.preheader.i, label %._crit_edge67.i

.preheader42.preheader.i:                         ; preds = %.preheader42.lr.ph.split.i
  %i.ls = sext i32 %i.kq to i64                   ; 5 uses
  %sext259.i = shl i64 %i.ep, 32
  %i.lt = ashr exact i64 %sext259.i, 32
  %wide.trip.count159.i = zext nneg i32 %i.dx to i64
  %i.lu = xor i32 %i.do, -1
  %i.lv = zext i32 %i.lu to i64
  %i.lw = add nuw nsw i64 %i.lv, 1                ; 5 uses
  %min.iters.check706 = icmp ugt i32 %i.do, -4
  %min.iters.check707 = icmp ugt i32 %i.do, -16
  %i.lx = and i64 %i.lw, 12
  %n.vec709 = and i64 %i.lw, 8589934576           ; 4 uses
  %i.ly = add nsw i64 %n.vec709, %i.ls
  %broadcast.splatinsert710 = insertelement <8 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat711 = shufflevector <8 x i16> %broadcast.splatinsert710, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n716 = icmp eq i64 %i.lw, %n.vec709
  %min.epilog.iters.check = icmp eq i64 %i.lx, 0
  %n.vec717 = and i64 %i.lw, 8589934588           ; 3 uses
  %i.lz = add nsw i64 %n.vec717, %i.ls
  %broadcast.splatinsert718 = insertelement <4 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat719 = shufflevector <4 x i16> %broadcast.splatinsert718, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n722 = icmp eq i64 %i.lw, %n.vec717
  br label %iter.check

.lr.ph51.i:                                       ; preds = %._crit_edge52.split.i, %.lr.ph51.preheader.i
  %storemerge53.i = phi i32 [ %i.nc, %._crit_edge52.split.i ], [ %i.gq, %.lr.ph51.preheader.i ] ; 2 uses
  %.sroa.speculated15.i = call i32 @llvm.smax.i32(i32 %storemerge53.i, i32 %i.gs)
  %.sroa.speculated11.i = call i32 @llvm.smin.i32(i32 %i.gu, i32 %.sroa.speculated15.i)
  %i.ma = sext i32 %.sroa.speculated11.i to i64
  %gep55.i = getelementptr i8, ptr %invariant.gep54.i, i64 %i.ma ; 3 uses
  br i1 %lcmp.mod1012.not, label %.prol.loopexit1010, label %.prol.loopexit1010.unr-lcssa

.prol.loopexit1010.unr-lcssa:                     ; preds = %.lr.ph51.i
  %i.mb = load i8, ptr %gep55.i, align 1, !tbaa !27
  %i.mc = zext i8 %i.mb to i64
  %i.md = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !tbaa !27
  %i.mf = zext i8 %i.me to i32
  %i.mg = load i32, ptr %i.he, align 4, !tbaa !8
  %i.mh = add nsw i32 %i.mg, %i.mf
  store i32 %i.mh, ptr %i.he, align 4, !tbaa !8
  %i.mi = getelementptr inbounds i8, ptr %gep55.i, i64 %i.ha
  br label %.prol.loopexit1010

.prol.loopexit1010:                               ; preds = %.prol.loopexit1010.unr-lcssa, %.lr.ph51.i
  %indvars.iv.i.unr = phi i64 [ %i.hc, %.lr.ph51.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit1010.unr-lcssa ]
  %.042247.i.unr = phi ptr [ %gep55.i, %.lr.ph51.i ], [ %i.mi, %.prol.loopexit1010.unr-lcssa ]
  br i1 %i.hg, label %._crit_edge52.split.i, label %.lr.ph51.i.new

.lr.ph51.i.new:                                   ; preds = %.prol.loopexit1010, %.lr.ph51.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph51.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit1010 ] ; 3 uses
  %.042247.i = phi ptr [ %i.nb, %.lr.ph51.i.new ], [ %.042247.i.unr, %.prol.loopexit1010 ] ; 2 uses
  %i.mj = load i8, ptr %.042247.i, align 1, !tbaa !27
  %i.mk = zext i8 %i.mj to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !27
  %i.mn = zext i8 %i.mm to i32
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv.i ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !8
  %i.mq = add nsw i32 %i.mp, %i.mn
  store i32 %i.mq, ptr %i.mo, align 4, !tbaa !8
  %i.mr = getelementptr inbounds i8, ptr %.042247.i, i64 %i.ha ; 2 uses
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !27
  %i.mt = zext i8 %i.ms to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !27
  %i.mw = zext i8 %i.mv to i32
  %i.mx = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.i
  %i.my = getelementptr i8, ptr %i.mx, i64 4      ; 2 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !8
  %i.na = add nsw i32 %i.mz, %i.mw
  store i32 %i.na, ptr %i.my, align 4, !tbaa !8
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.nb = getelementptr inbounds i8, ptr %i.mr, i64 %i.ha
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge52.split.i, label %.lr.ph51.i.new, !llvm.loop !227

._crit_edge52.split.i:                            ; preds = %.lr.ph51.i.new, %.prol.loopexit1010
  %i.nc = add nsw i32 %storemerge53.i, 1          ; 2 uses
  %exitcond135.not.i = icmp eq i32 %i.nc, %smax.i
  br i1 %exitcond135.not.i, label %.preheader43.i, label %.lr.ph51.i, !llvm.loop !228

iter.check:                                       ; preds = %._crit_edge65.i, %.preheader42.preheader.i
  %indvars.iv156.i = phi i64 [ 0, %.preheader42.preheader.i ], [ %indvars.iv.next157.i, %._crit_edge65.i ] ; 2 uses
  %i.nd = mul nsw i64 %indvars.iv156.i, %i.lt
  %invariant.gep267.i = getelementptr [2 x i8], ptr %.val86, i64 %i.nd ; 3 uses
  br i1 %min.iters.check706, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check707, label %vec.epilog.ph, label %vector.ph708

vector.ph708:                                     ; preds = %vector.main.loop.iter.check
  %invariant.gep1043 = getelementptr [2 x i8], ptr %invariant.gep267.i, i64 %i.ls
  br label %vector.body712

vector.body712:                                   ; preds = %vector.ph708, %vector.body712
  %index713 = phi i64 [ 0, %vector.ph708 ], [ %index.next714, %vector.body712 ] ; 2 uses
  %gep1044 = getelementptr [2 x i8], ptr %invariant.gep1043, i64 %index713 ; 2 uses
  %i.ne = getelementptr i8, ptr %gep1044, i64 16
  store <8 x i16> %broadcast.splat711, ptr %gep1044, align 2, !tbaa !338
  store <8 x i16> %broadcast.splat711, ptr %i.ne, align 2, !tbaa !338
  %index.next714 = add nuw i64 %index713, 16      ; 2 uses
  %i.nf = icmp eq i64 %index.next714, %n.vec709
  br i1 %i.nf, label %middle.block715, label %vector.body712, !llvm.loop !239

middle.block715:                                  ; preds = %vector.body712
  br i1 %cmp.n716, label %._crit_edge65.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block715
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !339

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec709, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %invariant.gep1045 = getelementptr [2 x i8], ptr %invariant.gep267.i, i64 %i.ls
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index720 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next721, %vec.epilog.vector.body ] ; 2 uses
  %gep1046 = getelementptr [2 x i8], ptr %invariant.gep1045, i64 %index720
  store <4 x i16> %broadcast.splat719, ptr %gep1046, align 2, !tbaa !338
  %index.next721 = add nuw i64 %index720, 4       ; 2 uses
  %i.ng = icmp eq i64 %index.next721, %n.vec717
  br i1 %i.ng, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !240

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n722, label %._crit_edge65.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv152.i.ph = phi i64 [ %i.ls, %iter.check ], [ %i.ly, %vec.epilog.iter.check ], [ %i.lz, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv152.i = phi i64 [ %indvars.iv.next153.i, %vec.epilog.scalar.ph ], [ %indvars.iv152.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep267.i, i64 %indvars.iv152.i
  store i16 %i.ef, ptr %gep.i, align 2, !tbaa !338
  %indvars.iv.next153.i = add nsw i64 %indvars.iv152.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next153.i to i32
  %exitcond155.not.i = icmp eq i32 %i.dv, %lftr.wideiv.i
  br i1 %exitcond155.not.i, label %._crit_edge65.i, label %vec.epilog.scalar.ph, !llvm.loop !241

._crit_edge65.i:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block715
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %exitcond160.not.i = icmp eq i64 %indvars.iv.next157.i, %wide.trip.count159.i
  br i1 %exitcond160.not.i, label %._crit_edge67.i, label %iter.check, !llvm.loop !235

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
  %i.nn = sext i32 %i.nm to i64                   ; 2 uses
  %i.no = sub nsw i64 0, %i.nn                    ; 2 uses
  %invariant.gep123.i = getelementptr i8, ptr %i.ek, i64 %i.no ; 2 uses
  %invariant.gep127.i = getelementptr i8, ptr %i.em, i64 %i.no
  %i.np = icmp sgt i32 %i.eq, %i.dj
  %i.nq = icmp sgt i32 %i.dm, 0                   ; 4 uses
  %i.nr = sext i32 %i.dm to i64                   ; 8 uses
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
  %i.op = shl i64 %i.ep, 32
  %i.oq = ashr exact i64 %i.op, 32                ; 3 uses
  %i.or = add i32 %i.dy, 1
  %i.os = add i32 %i.or, %i.ds
  %wide.trip.count240.i = zext i32 %i.os to i64
  %wide.trip.count189.i = zext i32 %i.dm to i64   ; 22 uses
  %invariant.gep274.i = getelementptr [4 x i8], ptr %i.ft, i64 %i.om ; 2 uses
  %brmerge.i = select i1 %i.of, i1 true, i1 %i.og
  %wide.trip.count220.i = zext i32 %smax219.i to i64 ; 2 uses
  %wide.trip.count235.i = zext nneg i32 %i.dx to i64
  %i.ot = add i32 %i.dg, %i.di
  %i.ou = add i32 %i.ot, -2
  %i.ov = zext i32 %i.ou to i64
  %i.ow = mul nsw i64 %i.nr, %i.ov
  %i.ox = add i64 %i.ow, %i.fm
  %i.oy = add i64 %i.ox, %i.od
  %i.oz = shl nuw nsw i64 %wide.trip.count189.i, 2
  %i.pa = add i64 %i.oy, %wide.trip.count189.i
  %i.pb = shl i64 %i.pa, 2
  %scevgep830 = getelementptr i8, ptr %i.fj, i64 %i.pb
  %i.pc = getelementptr i8, ptr %i.fd, i64 %i.oz
  %scevgep831 = getelementptr i8, ptr %i.pc, i64 4
  %i.pd = shl nsw i64 %i.fm, 2
  %i.pe = add i64 %i.pd, %i.fk
  %i.pf = shl nsw i64 %i.gd, 2
  %.neg973 = sub i64 %i.pf, %i.pe
  %i.pg = xor i64 %i.nx, -1
  %i.ph = add nsw i64 %i.pg, %i.nt                ; 3 uses
  %i.pi = mul i64 %i.ph, %i.nr
  %33 = add i64 %i.pi, %i.fm
  %i.pj = add i64 %33, %wide.trip.count189.i
  %34 = sub i64 %i.pj, %i.gd                      ; 2 uses
  %scevgep937 = getelementptr i8, ptr %i.fx, i64 %34
  %i.pk = add nsw i64 %i.fm, %wide.trip.count189.i
  %i.pl = sub nsw i64 %i.pk, %i.gd                ; 2 uses
  %scevgep939 = getelementptr i8, ptr %i.fx, i64 %i.pl
  %scevgep925 = getelementptr i8, ptr %i.fx, i64 %i.pl
  %i.pm = mul i64 %i.ph, %i.ns
  %i.pn = add i64 %i.pm, %wide.trip.count189.i
  %i.po = add i64 %i.pn, %i.el
  %i.pp = sub i64 %i.po, %i.nn
  %scevgep927 = getelementptr i8, ptr %.val, i64 %i.pp
  %i.pq = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %i.pr = zext nneg i32 %i.dz to i64
  %i.ps = mul i64 %i.ph, %i.nr
  %i.pt = add i64 %i.ps, %i.fm
  %i.pu = add i64 %i.pt, %wide.trip.count189.i
  %i.pv = sub i64 %i.pu, %i.gd
  %i.pw = shl i64 %i.pv, 2
  %scevgep932 = getelementptr i8, ptr %i.fj, i64 %i.pw ; 3 uses
  %scevgep933 = getelementptr i8, ptr %i.fx, i64 %34
  %i.px = add nsw i64 %wide.trip.count189.i, -1   ; 2 uses
  %min.iters.check936 = icmp ult i32 %i.dm, 12
  %stride.check946 = icmp slt i64 %i.ns, 0
  %n.vec961 = and i64 %wide.trip.count189.i, 2147483644 ; 3 uses
  %cmp.n971 = icmp eq i64 %n.vec961, %wide.trip.count189.i
  %i.py = sub i32 %i.dg, %i.dk                    ; 2 uses
  %i.pz = zext i32 %i.py to i64
  %i.qa = add nuw nsw i64 %i.pz, 1                ; 2 uses
  %min.iters.check881 = icmp ult i32 %i.py, 7
  %n.vec883 = and i64 %i.qa, 8589934584           ; 3 uses
  %i.qb = add nsw i64 %n.vec883, %smin.i
  %invariant.gep1051.a = getelementptr [4 x i8], ptr %invariant.gep274.i, i64 %smin.i
  %cmp.n890 = icmp eq i64 %i.qa, %n.vec883
  %i.qc = sub nsw i32 0, %i.dg
  %i.qd = sext i32 %i.qc to i64
  %i.qe = add nsw i64 %i.nx, 1
  %i.qf = sub nsw i64 %i.qe, %i.qd                ; 3 uses
  %min.iters.check869 = icmp ult i64 %i.qf, 8
  %n.vec871 = and i64 %i.qf, -8                   ; 3 uses
  %i.qg = add nsw i64 %n.vec871, %i.on
  %invariant.gep1053.a = getelementptr [4 x i8], ptr %i.ft, i64 %i.on
  %cmp.n878 = icmp eq i64 %i.qf, %n.vec871
  %min.iters.check853 = icmp ult i32 %i.dm, 8
  %op.rdx = add i64 %.neg973, 3
  %op.rdx976 = add i64 %op.rdx, %i.fe
  %diff.check855 = icmp ult i64 %op.rdx976, 31
  %or.cond974 = select i1 %min.iters.check853, i1 true, i1 %diff.check855
  %n.vec857 = and i64 %wide.trip.count189.i, 2147483640 ; 3 uses
  %broadcast.splatinsert858 = insertelement <4 x i32> poison, i32 %i.oa, i64 0
  %broadcast.splat859 = shufflevector <4 x i32> %broadcast.splatinsert858, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n866 = icmp eq i64 %n.vec857, %wide.trip.count189.i
  %xtraiter1017.a = and i64 %wide.trip.count189.i, 3 ; 2 uses
  %lcmp.mod1018.not.a = icmp eq i64 %xtraiter1017.a, 0
  %min.iters.check833 = icmp ult i32 %i.dm, 8
  %bound0835 = icmp ult ptr %i.ff, %scevgep830
  %bound1836 = icmp ult ptr %i.oe, %scevgep831
  %found.conflict837 = and i1 %bound0835, %bound1836
  %n.vec839 = and i64 %wide.trip.count189.i, 2147483640 ; 3 uses
  %cmp.n848 = icmp eq i64 %n.vec839, %wide.trip.count189.i
  %xtraiter1020.a = and i64 %wide.trip.count189.i, 3 ; 2 uses
  %lcmp.mod1021.not.a = icmp eq i64 %xtraiter1020.a, 0
  %i.qh = sub nsw i32 0, %i.dg
  %i.qi = sext i32 %i.qh to i64
  %i.qj = add nuw nsw i64 %wide.trip.count220.i, 1
  %i.qk = sub nsw i64 %i.qj, %i.qi                ; 3 uses
  %min.iters.check809 = icmp ult i64 %i.qk, 8
  %n.vec811 = and i64 %i.qk, -8                   ; 3 uses
  %i.ql = add nsw i64 %n.vec811, %i.on
  %invariant.gep1055.a = getelementptr [4 x i8], ptr %i.ft, i64 %i.on
  %cmp.n821 = icmp eq i64 %i.qk, %n.vec811
  %xtraiter1023 = and i64 %wide.trip.count189.i, 1
  %i.qm = icmp eq i64 %i.px, 0
  %unroll_iter1028 = and i64 %wide.trip.count189.i, 2147483646
  %lcmp.mod1024.not = icmp eq i64 %xtraiter1023, 0
  %lcmp.mod1027 = trunc i32 %i.dm to i1
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge112.i, %.lr.ph121.i
  %indvars.iv237.i = phi i64 [ 0, %.lr.ph121.i ], [ %indvars.iv.next238.i, %._crit_edge112.i ] ; 4 uses
  %.0418119.i = phi ptr [ %i.nh, %.lr.ph121.i ], [ %i.aae, %._crit_edge112.i ] ; 4 uses
  %i.qn = trunc i64 %indvars.iv237.i to i32
  %i.qo = add i32 %i.dg, %i.qn
  %i.qp = call i32 @llvm.smax.i32(i32 %i.pq, i32 %i.qo)
  %smax929 = sext i32 %i.qp to i64
  %smin930 = call i64 @llvm.smin.i64(i64 %smax929, i64 %i.pr)
  %scevgep931 = getelementptr i8, ptr %scevgep927, i64 %smin930 ; 2 uses
  %i.qq = load ptr, ptr %i.et, align 8, !tbaa !79 ; 2 uses
  %.not454.i = icmp eq ptr %i.qq, null
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.ej
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %indvars.iv237.i
  %i.qt = select i1 %.not454.i, ptr %i.b, ptr %i.qs
  br i1 %i.np, label %.lr.ph79.preheader.i, label %.preheader41.i

.lr.ph79.preheader.i:                             ; preds = %bb.ad
  %i.qu = trunc i64 %indvars.iv237.i to i32       ; 3 uses
  %i.qv = add i32 %i.dg, %i.qu                    ; 3 uses
  %i.qw = call i32 @llvm.smax.i32(i32 %i.qv, i32 %i.ds)
  %i.qx = call i32 @llvm.smin.i32(i32 %i.qw, i32 %i.dz)
  %i.qy = sext i32 %i.qx to i64
  %gep128.i = getelementptr i8, ptr %invariant.gep127.i, i64 %i.qy ; 3 uses
  %i.qz = call i32 @llvm.smax.i32(i32 %i.qv, i32 %i.nj)
  %i.ra = call i32 @llvm.smin.i32(i32 %i.qz, i32 %i.nl)
  %i.rb = sext i32 %i.ra to i64
  %gep126.i = getelementptr i8, ptr %invariant.gep123.i, i64 %i.rb
  %i.rc = add i32 %i.qu, %i.gq
  %i.rd = call i32 @llvm.smax.i32(i32 %i.rc, i32 %i.nj)
  %..i99 = call i32 @llvm.smin.i32(i32 %i.rd, i32 %i.nl)
  %i.re = sext i32 %..i99 to i64
  %gep124.i = getelementptr i8, ptr %invariant.gep123.i, i64 %i.re
  %i.rf = add i32 %i.qv, %i.dh
  %i.rg = srem i32 %i.rf, %i.ni
  %i.rh = mul i32 %i.rg, %i.es
  %i.ri = sext i32 %i.rh to i64                   ; 3 uses
  %gep116.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.ri ; 4 uses
  %i.rj = srem i32 %i.qu, %i.ni
  %i.rk = mul i32 %i.rj, %i.es
  %i.rl = sext i32 %i.rk to i64                   ; 3 uses
  %gep114.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.rl ; 3 uses
  %scevgep938 = getelementptr i8, ptr %scevgep937, i64 %i.rl
  %gep114.i.a = getelementptr i8, ptr %scevgep939, i64 %i.rl
  %scevgep926 = getelementptr i8, ptr %scevgep925, i64 %i.ri
  %scevgep934 = getelementptr i8, ptr %scevgep933, i64 %i.ri ; 2 uses
  %bound0938 = icmp ult ptr %gep116.i, %scevgep932
  %bound1939 = icmp ult ptr %i.gf, %scevgep934
  %found.conflict940 = and i1 %bound0938, %bound1939
  %bound0943 = icmp ult ptr %gep116.i, %scevgep931
  %bound1944 = icmp ult ptr %gep128.i, %scevgep934
  %found.conflict945 = and i1 %bound0943, %bound1944
  %i.rm = or i1 %found.conflict945, %stride.check946
  %conflict.rdx947 = or i1 %found.conflict940, %i.rm
  %bound0948 = icmp ult ptr %gep116.i, %gep114.i.a
  %bound1949 = icmp ult ptr %gep114.i, %scevgep926
  %found.conflict950 = and i1 %bound0948, %bound1949
  %conflict.rdx951 = or i1 %conflict.rdx947, %found.conflict950
  %bound0952 = icmp ult ptr %i.gf, %scevgep931
  %bound1953 = icmp ult ptr %gep128.i, %scevgep932
  %found.conflict954 = and i1 %bound0952, %bound1953
  %conflict.rdx955 = or i1 %conflict.rdx951, %found.conflict954
  %bound0956 = icmp ult ptr %i.gf, %scevgep938
  %bound1957 = icmp ult ptr %gep114.i, %scevgep932
  %found.conflict958 = and i1 %bound0956, %bound1957
  %conflict.rdx959 = or i1 %conflict.rdx955, %found.conflict958
  br label %.lr.ph79.i

.preheader41.i:                                   ; preds = %._crit_edge.i, %bb.ad
  br i1 %.not45580.i, label %.preheader40.i, label %.lr.ph82.preheader.i

.lr.ph82.preheader.i:                             ; preds = %.preheader41.i
  %.pre.i = load i32, ptr %i.nv, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check881, label %.lr.ph82.i.preheader, label %vector.ph882

vector.ph882:                                     ; preds = %.lr.ph82.preheader.i
  %broadcast.splatinsert884 = insertelement <4 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat885 = shufflevector <4 x i32> %broadcast.splatinsert884, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body886

vector.body886:                                   ; preds = %vector.body886, %vector.ph882
  %index887 = phi i64 [ 0, %vector.ph882 ], [ %index.next888, %vector.body886 ] ; 2 uses
  %gep1052.a = getelementptr [4 x i8], ptr %invariant.gep1051.a, i64 %index887 ; 2 uses
  %i.rn = getelementptr i8, ptr %gep1052.a, i64 16
  store <4 x i32> %broadcast.splat885, ptr %gep1052.a, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat885, ptr %i.rn, align 4, !tbaa !8
  %index.next888 = add nuw i64 %index887, 8       ; 2 uses
  %i.ro = icmp eq i64 %index.next888, %n.vec883
  br i1 %i.ro, label %middle.block889, label %vector.body886, !llvm.loop !242

middle.block889:                                  ; preds = %vector.body886
  br i1 %cmp.n890, label %.preheader40.i, label %.lr.ph82.i.preheader

.lr.ph82.i.preheader:                             ; preds = %.lr.ph82.preheader.i, %middle.block889
  %indvars.iv196.i.ph = phi i64 [ %smin.i, %.lr.ph82.preheader.i ], [ %i.qb, %middle.block889 ]
  br label %.lr.ph82.i

.lr.ph79.i:                                       ; preds = %._crit_edge.i, %.lr.ph79.preheader.i
  %indvars.iv191.i = phi i64 [ %i.nx, %.lr.ph79.preheader.i ], [ %indvars.iv.next192.i, %._crit_edge.i ] ; 2 uses
  %.041776.i = phi ptr [ %gep114.i, %.lr.ph79.preheader.i ], [ %i.tf, %._crit_edge.i ] ; 3 uses
  %.142075.i = phi ptr [ %gep128.i, %.lr.ph79.preheader.i ], [ %i.tj, %._crit_edge.i ] ; 3 uses
  %.042174.i = phi ptr [ %gep124.i, %.lr.ph79.preheader.i ], [ %i.ti, %._crit_edge.i ] ; 2 uses
  %.142373.i = phi ptr [ %gep126.i, %.lr.ph79.preheader.i ], [ %i.th, %._crit_edge.i ] ; 2 uses
  %.142572.i = phi ptr [ %gep116.i, %.lr.ph79.preheader.i ], [ %i.te, %._crit_edge.i ] ; 3 uses
  %.142771.i = phi ptr [ %i.gf, %.lr.ph79.preheader.i ], [ %i.tg, %._crit_edge.i ] ; 3 uses
  %i.rp = load i8, ptr %.142373.i, align 1, !tbaa !27 ; 2 uses
  %i.rq = zext i8 %i.rp to i32                    ; 2 uses
  br i1 %i.nq, label %.lr.ph70.i.preheader, label %._crit_edge.i

.lr.ph70.i.preheader:                             ; preds = %.lr.ph79.i
  %brmerge1057 = select i1 %min.iters.check936, i1 true, i1 %conflict.rdx959
  br i1 %brmerge1057, label %.lr.ph70.i.preheader979, label %vector.ph960

vector.ph960:                                     ; preds = %.lr.ph70.i.preheader
  %broadcast.splatinsert962 = insertelement <4 x i32> poison, i32 %i.rq, i64 0
  %broadcast.splat963 = shufflevector <4 x i32> %broadcast.splatinsert962, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body964

vector.body964:                                   ; preds = %vector.body964, %vector.ph960
  %index965 = phi i64 [ 0, %vector.ph960 ], [ %index.next969, %vector.body964 ] ; 5 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.142075.i, i64 %index965
  %wide.load966 = load <4 x i8>, ptr %i.rr, align 1, !tbaa !27, !alias.scope !340
  %i.rs = zext <4 x i8> %wide.load966 to <4 x i32>
  %i.rt = sub nsw <4 x i32> %broadcast.splat963, %i.rs
  %i.ru = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.rt, i1 true) ; 2 uses
  %i.rv = trunc nuw <4 x i32> %i.ru to <4 x i8>
  %i.rw = getelementptr inbounds nuw i8, ptr %.142572.i, i64 %index965
  store <4 x i8> %i.rv, ptr %i.rw, align 1, !tbaa !27, !alias.scope !341, !noalias !342
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %.142771.i, i64 %index965 ; 2 uses
  %wide.load967 = load <4 x i32>, ptr %i.rx, align 4, !tbaa !8, !alias.scope !343, !noalias !344
  %i.ry = add nsw <4 x i32> %i.ru, %wide.load967
  %i.rz = getelementptr inbounds nuw i8, ptr %.041776.i, i64 %index965
  %wide.load968 = load <4 x i8>, ptr %i.rz, align 1, !tbaa !27, !alias.scope !345
  %i.sa = zext <4 x i8> %wide.load968 to <4 x i32>
  %i.sb = sub <4 x i32> %i.ry, %i.sa
  store <4 x i32> %i.sb, ptr %i.rx, align 4, !tbaa !8, !alias.scope !343, !noalias !344
  %index.next969 = add nuw i64 %index965, 4       ; 2 uses
  %i.sc = icmp eq i64 %index.next969, %n.vec961
  br i1 %i.sc, label %middle.block970, label %vector.body964, !llvm.loop !248

middle.block970:                                  ; preds = %vector.body964
  br i1 %cmp.n971, label %._crit_edge.i, label %.lr.ph70.i.preheader979

.lr.ph70.i.preheader979:                          ; preds = %.lr.ph70.i.preheader, %middle.block970
  %indvars.iv186.i.ph = phi i64 [ %n.vec961, %middle.block970 ], [ 0, %.lr.ph70.i.preheader ]
  br label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.preheader979, %.lr.ph70.i
  %indvars.iv186.i = phi i64 [ %indvars.iv.next187.i, %.lr.ph70.i ], [ %indvars.iv186.i.ph, %.lr.ph70.i.preheader979 ] ; 5 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.142075.i, i64 %indvars.iv186.i
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !27
  %i.sf = zext i8 %i.se to i32
  %i.sg = sub nsw i32 %i.rq, %i.sf
  %i.sh = call i32 @llvm.abs.i32(i32 %i.sg, i1 true) ; 2 uses
  %i.si = trunc nuw i32 %i.sh to i8
  %i.sj = getelementptr inbounds nuw i8, ptr %.142572.i, i64 %indvars.iv186.i
  store i8 %i.si, ptr %i.sj, align 1, !tbaa !27
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.142771.i, i64 %indvars.iv186.i ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !8
  %i.sm = add nsw i32 %i.sh, %i.sl
  %i.sn = getelementptr inbounds nuw i8, ptr %.041776.i, i64 %indvars.iv186.i
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !27
  %i.sp = zext i8 %i.so to i32
  %i.sq = sub i32 %i.sm, %i.sp
  store i32 %i.sq, ptr %i.sk, align 4, !tbaa !8
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 2 uses
  %exitcond190.not.i = icmp eq i64 %indvars.iv.next187.i, %wide.trip.count189.i
  br i1 %exitcond190.not.i, label %._crit_edge.i, label %.lr.ph70.i, !llvm.loop !249

._crit_edge.i:                                    ; preds = %.lr.ph70.i, %middle.block970, %.lr.ph79.i
  %i.sr = zext i8 %i.rp to i64
  %i.ss = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !27
  %i.su = zext i8 %i.st to i32
  %i.sv = load i8, ptr %.042174.i, align 1, !tbaa !27
  %i.sw = zext i8 %i.sv to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !27
  %i.sz = zext i8 %i.sy to i32
  %i.ta = sub nsw i32 %i.su, %i.sz
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv191.i ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !8
  %i.td = add nsw i32 %i.ta, %i.tc
  store i32 %i.td, ptr %i.tb, align 4, !tbaa !8
  %indvars.iv.next192.i = add nsw i64 %indvars.iv191.i, 1 ; 2 uses
  %i.te = getelementptr inbounds i8, ptr %.142572.i, i64 %i.nr
  %i.tf = getelementptr inbounds i8, ptr %.041776.i, i64 %i.nr
  %i.tg = getelementptr inbounds [4 x i8], ptr %.142771.i, i64 %i.nr
  %i.th = getelementptr inbounds i8, ptr %.142373.i, i64 %i.ns
  %i.ti = getelementptr inbounds i8, ptr %.042174.i, i64 %i.ns
  %i.tj = getelementptr inbounds i8, ptr %.142075.i, i64 %i.ns
  %exitcond195.not.i = icmp eq i64 %indvars.iv.next192.i, %i.nt
  br i1 %exitcond195.not.i, label %.preheader41.i, label %.lr.ph79.i, !llvm.loop !250

.preheader40.i:                                   ; preds = %.lr.ph82.i, %middle.block889, %.preheader41.i
  br i1 %i.nw, label %.lr.ph84.preheader.i, label %.preheader39.i

.lr.ph84.preheader.i:                             ; preds = %.preheader40.i
  %.pre242.i = load i32, ptr %i.ny, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check869, label %.lr.ph84.i.preheader, label %vector.ph870

vector.ph870:                                     ; preds = %.lr.ph84.preheader.i
  %broadcast.splatinsert872 = insertelement <4 x i32> poison, i32 %.pre242.i, i64 0
  %broadcast.splat873 = shufflevector <4 x i32> %broadcast.splatinsert872, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body874

vector.body874:                                   ; preds = %vector.body874, %vector.ph870
  %index875 = phi i64 [ 0, %vector.ph870 ], [ %index.next876, %vector.body874 ] ; 2 uses
  %gep1054.a = getelementptr [4 x i8], ptr %invariant.gep1053.a, i64 %index875 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %gep1054.a, i64 16
  store <4 x i32> %broadcast.splat873, ptr %gep1054.a, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat873, ptr %i.tk, align 4, !tbaa !8
  %index.next876 = add nuw i64 %index875, 8       ; 2 uses
  %i.tl = icmp eq i64 %index.next876, %n.vec871
  br i1 %i.tl, label %middle.block877, label %vector.body874, !llvm.loop !251

middle.block877:                                  ; preds = %vector.body874
  br i1 %cmp.n878, label %.preheader39.i, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %.lr.ph84.preheader.i, %middle.block877
  %indvars.iv200.i.ph = phi i64 [ %i.on, %.lr.ph84.preheader.i ], [ %i.qg, %middle.block877 ]
  br label %.lr.ph84.i

.lr.ph82.i:                                       ; preds = %.lr.ph82.i.preheader, %.lr.ph82.i
  %indvars.iv196.i = phi i64 [ %indvars.iv.next197.i, %.lr.ph82.i ], [ %indvars.iv196.i.ph, %.lr.ph82.i.preheader ] ; 2 uses
  %gep275.i = getelementptr [4 x i8], ptr %invariant.gep274.i, i64 %indvars.iv196.i
  store i32 %.pre.i, ptr %gep275.i, align 4, !tbaa !8
  %indvars.iv.next197.i = add nsw i64 %indvars.iv196.i, 1 ; 2 uses
  %lftr.wideiv198.i = trunc i64 %indvars.iv.next197.i to i32
  %exitcond199.not.i = icmp eq i32 %i.dh, %lftr.wideiv198.i
  br i1 %exitcond199.not.i, label %.preheader40.i, label %.lr.ph82.i, !llvm.loop !252

.preheader39.i:                                   ; preds = %.lr.ph84.i, %middle.block877, %.preheader40.i
  br i1 %i.nq, label %.lr.ph86.i.preheader, label %.preheader38.i

.lr.ph86.i.preheader:                             ; preds = %.preheader39.i
  br i1 %or.cond974, label %.lr.ph86.i.preheader981, label %vector.body860

vector.body860:                                   ; preds = %.lr.ph86.i.preheader, %vector.body860
  %index861 = phi i64 [ %index.next864, %vector.body860 ], [ 0, %.lr.ph86.i.preheader ] ; 3 uses
  %i.tm = sub nsw i64 %index861, %i.gd
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.tm ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %wide.load862 = load <4 x i32>, ptr %i.tn, align 4, !tbaa !8
  %wide.load863 = load <4 x i32>, ptr %i.to, align 4, !tbaa !8
  %i.tp = mul nsw <4 x i32> %wide.load862, %broadcast.splat859
  %i.tq = mul nsw <4 x i32> %wide.load863, %broadcast.splat859
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %index861 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  store <4 x i32> %i.tp, ptr %i.tr, align 4, !tbaa !8
  store <4 x i32> %i.tq, ptr %i.ts, align 4, !tbaa !8
  %index.next864 = add nuw i64 %index861, 8       ; 2 uses
  %i.tt = icmp eq i64 %index.next864, %n.vec857
  br i1 %i.tt, label %middle.block865, label %vector.body860, !llvm.loop !253

middle.block865:                                  ; preds = %vector.body860
  br i1 %cmp.n866, label %._crit_edge87.i, label %.lr.ph86.i.preheader981

.lr.ph86.i.preheader981:                          ; preds = %.lr.ph86.i.preheader, %middle.block865
  %indvars.iv205.i.ph = phi i64 [ 0, %.lr.ph86.i.preheader ], [ %n.vec857, %middle.block865 ] ; 3 uses
  %i.tu = sub nsw i64 %i.px, %indvars.iv205.i.ph
  br i1 %lcmp.mod1018.not.a, label %.lr.ph86.i.prol.loopexit, label %.lr.ph86.i.prol

.lr.ph86.i.prol:                                  ; preds = %.lr.ph86.i.preheader981, %.lr.ph86.i.prol
  %indvars.iv205.i.prol = phi i64 [ %indvars.iv.next206.i.prol, %.lr.ph86.i.prol ], [ %indvars.iv205.i.ph, %.lr.ph86.i.preheader981 ] ; 3 uses
  %prol.iter1019.a = phi i64 [ %prol.iter1019.next.a, %.lr.ph86.i.prol ], [ 0, %.lr.ph86.i.preheader981 ]
  %i.tv = sub nsw i64 %indvars.iv205.i.prol, %i.gd
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.tv
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !8
  %i.ty = mul nsw i32 %i.tx, %i.oa
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv205.i.prol
  store i32 %i.ty, ptr %i.tz, align 4, !tbaa !8
  %indvars.iv.next206.i.prol = add nuw nsw i64 %indvars.iv205.i.prol, 1 ; 2 uses
  %prol.iter1019.next.a = add i64 %prol.iter1019.a, 1 ; 2 uses
  %prol.iter1019.cmp.not.a = icmp eq i64 %prol.iter1019.next.a, %xtraiter1017.a
  br i1 %prol.iter1019.cmp.not.a, label %.lr.ph86.i.prol.loopexit, label %.lr.ph86.i.prol, !llvm.loop !254

.lr.ph86.i.prol.loopexit:                         ; preds = %.lr.ph86.i.prol, %.lr.ph86.i.preheader981
  %indvars.iv205.i.unr = phi i64 [ %indvars.iv205.i.ph, %.lr.ph86.i.preheader981 ], [ %indvars.iv.next206.i.prol, %.lr.ph86.i.prol ]
  %i.ua = icmp ult i64 %i.tu, 3
  br i1 %i.ua, label %._crit_edge87.i, label %.lr.ph86.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.preheader, %.lr.ph84.i
  %indvars.iv200.i = phi i64 [ %indvars.iv.next201.i, %.lr.ph84.i ], [ %indvars.iv200.i.ph, %.lr.ph84.i.preheader ] ; 2 uses
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv200.i
  store i32 %.pre242.i, ptr %i.ub, align 4, !tbaa !8
  %indvars.iv.next201.i = add nsw i64 %indvars.iv200.i, 1 ; 2 uses
  %exitcond204.not.i = icmp eq i64 %indvars.iv.next201.i, %i.nx
  br i1 %exitcond204.not.i, label %.preheader39.i, label %.lr.ph84.i, !llvm.loop !255

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.prol.loopexit, %.lr.ph86.i
  %indvars.iv205.i = phi i64 [ %indvars.iv.next206.i.3, %.lr.ph86.i ], [ %indvars.iv205.i.unr, %.lr.ph86.i.prol.loopexit ] ; 6 uses
  %i.uc = sub nsw i64 %indvars.iv205.i, %i.gd
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.uc
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !8
  %i.uf = mul nsw i32 %i.ue, %i.oa
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv205.i
  store i32 %i.uf, ptr %i.ug, align 4, !tbaa !8
  %indvars.iv.next206.i = add nuw nsw i64 %indvars.iv205.i, 1 ; 2 uses
  %i.uh = sub nsw i64 %indvars.iv.next206.i, %i.gd
end_hunk_1
begin_hunk_2_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  %niter1029.ncmp.1 = icmp eq i64 %niter1029.next.1, %unroll_iter1028
  br i1 %niter1029.ncmp.1, label %._crit_edge102.i.loopexit.unr-lcssa, label %.lr.ph101.i, !llvm.loop !266

._crit_edge102.i.loopexit.unr-lcssa:              ; preds = %.lr.ph101.i
  br i1 %lcmp.mod1024.not, label %._crit_edge102.i, label %.lr.ph101.i.epil.preheader

.lr.ph101.i.epil.preheader:                       ; preds = %._crit_edge102.i.loopexit.unr-lcssa, %.lr.ph101.i.preheader
  %indvars.iv222.i.epil.init = phi i64 [ 0, %.lr.ph101.i.preheader ], [ %indvars.iv.next223.i.1, %._crit_edge102.i.loopexit.unr-lcssa ] ; 4 uses
  %.041198.i.epil.init = phi i32 [ -1, %.lr.ph101.i.preheader ], [ %spec.select462.i.1, %._crit_edge102.i.loopexit.unr-lcssa ]
  %.041397.i.epil.init = phi i32 [ 2147483647, %.lr.ph101.i.preheader ], [ %spec.select.i98.1, %._crit_edge102.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1027)
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv222.i.epil.init ; 2 uses
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !8
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %indvars.iv222.i.epil.init
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !8
  %i.xy = add nsw i32 %i.xx, %i.xv
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %indvars.iv222.i.epil.init
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !8
  %i.yb = sub i32 %i.xy, %i.ya                    ; 3 uses
  store i32 %i.yb, ptr %i.xu, align 4, !tbaa !8
  %i.yc = icmp slt i32 %i.yb, %.041397.i.epil.init
  %spec.select.i98.epil = call i32 @llvm.smin.i32(i32 %i.yb, i32 %.041397.i.epil.init)
  %i.yd = trunc nuw nsw i64 %indvars.iv222.i.epil.init to i32
  %spec.select462.i.epil = select i1 %i.yc, i32 %i.yd, i32 %.041198.i.epil.init
  br label %._crit_edge102.i

._crit_edge102.i:                                 ; preds = %.lr.ph101.i.epil.preheader, %._crit_edge102.i.loopexit.unr-lcssa, %.lr.ph111.i
  %.0413.lcssa.i = phi i32 [ 2147483647, %.lr.ph111.i ], [ %spec.select.i98.1, %._crit_edge102.i.loopexit.unr-lcssa ], [ %spec.select.i98.epil, %.lr.ph101.i.epil.preheader ] ; 2 uses
  %.0411.lcssa.i = phi i32 [ -1, %.lr.ph111.i ], [ %spec.select462.i.1, %._crit_edge102.i.loopexit.unr-lcssa ], [ %spec.select462.i.epil, %.lr.ph101.i.epil.preheader ] ; 4 uses
  %i.ye = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.wo
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !8
  %i.yg = sext i32 %i.wv to i64
  %i.yh = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.yg
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !8
  %i.yj = sub nsw i32 %i.yf, %i.yi
  %i.yk = add nsw i32 %i.yj, %.1416109.i          ; 2 uses
  %i.yl = icmp slt i32 %i.yk, %i.eb
  br i1 %i.yl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge102.i
  %i.ym = mul nsw i64 %indvars.iv232.i, %i.oq
  %i.yn = getelementptr inbounds [2 x i8], ptr %.0418119.i, i64 %i.ym
  store i16 %i.ef, ptr %i.yn, align 2, !tbaa !338
  br label %bb.al

bb.af:                                            ; preds = %._crit_edge102.i
  br i1 %i.oi, label %bb.ag, label %.critedge464.i

bb.ag:                                            ; preds = %bb.af
  %i.yo = mul nsw i32 %.0413.lcssa.i, %i.ed
  %i.yp = sdiv i32 %i.yo, 100
  %i.yq = add nsw i32 %i.yp, %.0413.lcssa.i
  br i1 %i.nq, label %.lr.ph108.i, label %.critedge464.i

.lr.ph108.i:                                      ; preds = %bb.ag
  %i.yr = add nsw i32 %.0411.lcssa.i, -1
  %i.ys = add nsw i32 %.0411.lcssa.i, 1
  %i.yt = sext i32 %i.ys to i64
  %i.yu = sext i32 %i.yr to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.lr.ph108.i
  %indvars.iv227.i = phi i64 [ 0, %.lr.ph108.i ], [ %indvars.iv.next228.i, %bb.aj ] ; 4 uses
  %i.yv = icmp slt i64 %indvars.iv227.i, %i.yu
  %i.yw = icmp sgt i64 %indvars.iv227.i, %i.yt
  %or.cond.i = select i1 %i.yv, i1 true, i1 %i.yw
  br i1 %or.cond.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv227.i
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !8
  %.not457.i = icmp sgt i32 %i.yy, %i.yq
  br i1 %.not457.i, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %exitcond231.not.i = icmp eq i64 %indvars.iv.next228.i, %wide.trip.count189.i
  br i1 %exitcond231.not.i, label %.critedge464.i, label %bb.ah, !llvm.loop !267

.critedge.i:                                      ; preds = %bb.ai
  %i.yz = mul nsw i64 %indvars.iv232.i, %i.oq
  %i.za = getelementptr inbounds [2 x i8], ptr %.0418119.i, i64 %i.yz
  store i16 %i.ef, ptr %i.za, align 2, !tbaa !338
  br label %bb.al

.critedge464.i:                                   ; preds = %bb.aj, %bb.ag, %bb.af
  %i.zb = load i32, ptr %i.oj, align 4, !tbaa !8
  store i32 %i.zb, ptr %i.fd, align 4, !tbaa !8
  %i.zc = load i32, ptr %i.ol, align 4, !tbaa !8
  store i32 %i.zc, ptr %i.ok, align 4, !tbaa !8
  %i.zd = sext i32 %.0411.lcssa.i to i64
  %i.ze = getelementptr [4 x i8], ptr %i.ff, i64 %i.zd ; 3 uses
  %i.zf = getelementptr i8, ptr %i.ze, i64 4
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !8  ; 2 uses
  %i.zh = getelementptr i8, ptr %i.ze, i64 -4
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !8  ; 2 uses
  %i.zj = add nsw i32 %i.zi, %i.zg
  %i.zk = load i32, ptr %i.ze, align 4, !tbaa !8  ; 2 uses
  %i.zl = shl i32 %i.zk, 1
  %i.zm = sub i32 %i.zj, %i.zl
  %i.zn = sub nsw i32 %i.zg, %i.zi                ; 2 uses
  %i.zo = call i32 @llvm.abs.i32(i32 %i.zn, i1 true)
  %i.zp = add nsw i32 %i.zm, %i.zo                ; 2 uses
  %i.zq = xor i32 %.0411.lcssa.i, -1
  %i.zr = add i32 %i.dp, %i.zq
  %.not.i.i = icmp eq i32 %i.zp, 0
  br i1 %.not.i.i, label %_ZN2cv11dispDescaleIsEET_iii.exit.i, label %bb.ak

bb.ak:                                            ; preds = %.critedge464.i
  %i.zs = shl nsw i32 %i.zn, 8
  %i.zt = sdiv i32 %i.zs, %i.zp
  br label %_ZN2cv11dispDescaleIsEET_iii.exit.i

_ZN2cv11dispDescaleIsEET_iii.exit.i:              ; preds = %bb.ak, %.critedge464.i
  %i.zu = phi i32 [ %i.zt, %bb.ak ], [ 0, %.critedge464.i ]
  %i.zv = shl nsw i32 %i.zr, 8
  %i.zw = or disjoint i32 %i.zv, 15
  %i.zx = add i32 %i.zw, %i.zu
  %i.zy = lshr i32 %i.zx, 4
  %i.zz = trunc i32 %i.zy to i16
  %i.aaa = mul nsw i64 %indvars.iv232.i, %i.oq
  %i.aab = getelementptr inbounds [2 x i8], ptr %.0418119.i, i64 %i.aaa
  store i16 %i.zz, ptr %i.aab, align 2, !tbaa !338
  %i.aac = mul nsw i64 %indvars.iv232.i, %i.ez
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %i.aac
  store i32 %i.zk, ptr %i.aad, align 4, !tbaa !8
  br label %bb.al

bb.al:                                            ; preds = %_ZN2cv11dispDescaleIsEET_iii.exit.i, %.critedge.i, %bb.ae
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count235.i
  br i1 %exitcond236.not.i, label %._crit_edge112.i, label %.lr.ph111.i, !llvm.loop !268

._crit_edge112.i:                                 ; preds = %bb.al, %.preheader37.i
  %indvars.iv.next238.i = add nuw nsw i64 %indvars.iv237.i, 1 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %.0418119.i, i64 2
  %exitcond241.not.i = icmp eq i64 %indvars.iv.next238.i, %wide.trip.count240.i
  br i1 %exitcond241.not.i, label %_ZN2cvL26findStereoCorrespondenceBMIsEEvRKNS_3MatES3_RS1_S4_RKNS_14StereoBMParamsEiiRKNS_8BufferBMEm.exit, label %bb.ad, !llvm.loop !269

_ZN2cvL26findStereoCorrespondenceBMIsEEvRKNS_3MatES3_RS1_S4_RKNS_14StereoBMParamsEiiRKNS_8BufferBMEm.exit: ; preds = %._crit_edge112.i, %._crit_edge67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ay

bb.am:                                            ; preds = %bb.v
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.an:                                            ; preds = %bb.w
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.ao:                                            ; preds = %bb.x
  %i.aah = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ap:                                            ; preds = %bb.z
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.aq:                                            ; preds = %bb.ab
  %i.aaj = shl i32 %i.do, 8
  %i.aak = add i32 %i.aaj, -256                   ; 10 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !79
  %i.aan = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.aao = zext nneg i32 %i.dr to i64             ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aam, i64 %i.aao ; 2 uses
  %i.aaq = zext i32 %i.dt to i64                  ; 3 uses
  %i.aar = getelementptr i8, ptr %.val, i64 %i.aaq ; 2 uses
  %i.aas = load i64, ptr %i.aan, align 8, !tbaa !84 ; 3 uses
  %i.aat = trunc i64 %i.aas to i32                ; 2 uses
  %i.aau = lshr i64 %.val87, 2                    ; 4 uses
  %i.aav = add i32 %i.dx, %i.dk                   ; 7 uses
  %i.aaw = add i32 %i.aav, %i.di                  ; 2 uses
  %i.aax = mul i32 %i.aaw, %i.dm                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.aay = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !79
  %.not.i100 = icmp eq ptr %i.aaz, null
  %i.aba = getelementptr inbounds nuw i8, ptr %26, i64 128
  %i.abb = load i64, ptr %i.aba, align 8
  %i.abc = shl i64 %i.abb, 30
  %i.abd = ashr i64 %i.abc, 32
  %i.abe = select i1 %.not.i100, i64 0, i64 %i.abd
  %i.abf = getelementptr inbounds nuw i8, ptr %i.cy, i64 160 ; 6 uses
  %i.abg = load ptr, ptr %i.cy, align 8, !tbaa !88
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %i.da
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !91 ; 6 uses
  %i.abj = ptrtoaddr ptr %i.abi to i64
  %i.abk = getelementptr i8, ptr %i.abi, i64 4    ; 19 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !88
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %i.da
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !91 ; 5 uses
  %i.abp = ptrtoaddr ptr %i.abo to i64
  %i.abq = mul i32 %i.dh, %i.dm
  %i.abr = sext i32 %i.abq to i64                 ; 9 uses
  %i.abs = getelementptr [4 x i8], ptr %i.abo, i64 %i.abr ; 10 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !88
  %i.abv = getelementptr inbounds nuw [8 x i8], ptr %i.abu, i64 %i.da
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !91
  %i.abx = sext i32 %i.dh to i64
  %i.aby = getelementptr inbounds [4 x i8], ptr %i.abw, i64 %i.abx ; 15 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !94
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.aca, i64 %i.da
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !28 ; 6 uses
  %i.acd = getelementptr i8, ptr %i.acc, i64 %i.abr
  %i.ace = add nsw i32 %i.dm, 2
  %i.acf = sext i32 %i.ace to i64
  %i.acg = shl nsw i64 %i.acf, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.abi, i8 0, i64 %i.acg, i1 false)
  %i.ach = mul i32 %i.di, %i.dm
  %i.aci = sext i32 %i.ach to i64                 ; 13 uses
  %i.acj = sub nsw i64 0, %i.aci                  ; 2 uses
  %i.ack = getelementptr [4 x i8], ptr %i.abs, i64 %i.acj ; 8 uses
  %i.acl = add i32 %i.df, 2
  %i.acm = add i32 %i.acl, %i.dx                  ; 2 uses
  %i.acn = mul nsw i32 %i.acm, %i.dm
  %i.aco = sext i32 %i.acn to i64
  %i.acp = shl nsw i64 %i.aco, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ack, i8 0, i64 %i.acp, i1 false)
  %i.acq = sext i32 %i.di to i64
  %i.acr = sub nsw i64 0, %i.acq
  %i.acs = getelementptr inbounds [4 x i8], ptr %i.aby, i64 %i.acr
  %i.act = sext i32 %i.acm to i64
  %i.acu = shl nsw i64 %i.act, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.acs, i8 0, i64 %i.acu, i1 false)
  %i.acv = xor i32 %i.dg, -1                      ; 7 uses
  %invariant.gep.i101 = getelementptr i8, ptr %i.acd, i64 %i.acj ; 3 uses
  %i.acw = icmp sgt i32 %i.df, -2                 ; 2 uses
  br i1 %i.acw, label %.lr.ph.i266, label %.preheader43.i102

.lr.ph.i266:                                      ; preds = %bb.aq
  %i.acx = sub nsw i32 0, %i.dr                   ; 2 uses
  %i.acy = xor i32 %i.dr, -1
  %i.acz = add i32 %i.dv, %i.acy                  ; 2 uses
  %i.ada = mul i32 %i.di, %i.aat
  %i.adb = sext i32 %i.ada to i64                 ; 2 uses
  %i.adc = sub nsw i64 0, %i.adb                  ; 2 uses
  %invariant.gep54.i267 = getelementptr i8, ptr %i.aap, i64 %i.adc ; 2 uses
  %invariant.gep56.i268 = getelementptr i8, ptr %i.aar, i64 %i.adc
  %i.add = icmp sgt i32 %i.aav, %i.dj
  %i.ade = sext i32 %i.dm to i64                  ; 4 uses
  %sext461.i269 = shl i64 %i.aas, 32
  %i.adf = ashr exact i64 %sext461.i269, 32       ; 7 uses
  br i1 %i.add, label %.lr.ph.split.i270, label %.preheader43.i102

.lr.ph.split.i270:                                ; preds = %.lr.ph.i266
  %i.adg = icmp sgt i32 %i.dm, 0
  %i.adh = sext i32 %i.dj to i64                  ; 7 uses
  br i1 %i.adg, label %.lr.ph51.us.preheader.i285, label %.lr.ph51.preheader.i271

.lr.ph51.preheader.i271:                          ; preds = %.lr.ph.split.i270
  %smax.i272 = call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %wide.trip.count.i273 = sext i32 %i.aav to i64  ; 3 uses
  %i.adi = sub nsw i64 %wide.trip.count.i273, %i.adh
  %xtraiter = and i64 %i.adi, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.adj = getelementptr inbounds [4 x i8], ptr %i.aby, i64 %i.adh ; 2 uses
  %indvars.iv.next.i281.prol = add nsw i64 %i.adh, 1
  %i.adk = add nsw i64 %wide.trip.count.i273, -1
  %i.adl = icmp eq i64 %i.adk, %i.adh
  br label %.lr.ph51.i274

.lr.ph51.us.preheader.i285:                       ; preds = %.lr.ph.split.i270
  %i.adm = sext i32 %i.acv to i64
  %smax149.i287 = call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %wide.trip.count150.i288 = zext nneg i32 %smax149.i287 to i64
  %wide.trip.count144.i289 = sext i32 %i.aav to i64 ; 2 uses
  %wide.trip.count139.i290 = zext nneg i32 %i.dm to i64 ; 8 uses
  %i.adn = xor i64 %i.adh, -1
  %i.ado = add nsw i64 %i.adn, %wide.trip.count144.i289 ; 3 uses
  %i.adp = mul i64 %i.ado, %i.adf
  %i.adq = add i64 %i.adp, %wide.trip.count139.i290
  %i.adr = add i64 %i.adq, %i.aaq
  %i.ads = sub i64 %i.adr, %i.adb
  %scevgep = getelementptr i8, ptr %.val, i64 %i.ads
  %i.adt = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %i.adu = mul nsw i64 %i.ado, %i.ade
  %i.adv = add i64 %i.adu, %i.abr
  %i.adw = add i64 %i.adv, %wide.trip.count139.i290
  %i.adx = sub i64 %i.adw, %i.aci
  %i.ady = shl i64 %i.adx, 2
  %scevgep426 = getelementptr i8, ptr %i.abo, i64 %i.ady ; 2 uses
  %i.adz = mul nsw i64 %i.ado, %i.ade
  %i.aea = add i64 %i.adz, %i.abr
  %i.aeb = add i64 %i.aea, %wide.trip.count139.i290
  %i.aec = sub i64 %i.aeb, %i.aci
  %scevgep427 = getelementptr i8, ptr %i.acc, i64 %i.aec
  %i.aed = mul i32 %i.dm, %i.aaw
  %min.iters.check = icmp ult i32 %i.dm, 8
  %stride.check = icmp slt i64 %i.adf, 0
  %n.vec = and i64 %wide.trip.count139.i290, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count139.i290
  %xtraiter997 = and i64 %wide.trip.count139.i290, 1
  %lcmp.mod998.not = icmp eq i64 %xtraiter997, 0
  %i.aee = add nsw i64 %wide.trip.count139.i290, -1
  br label %.lr.ph51.us.i291

.lr.ph51.us.i291:                                 ; preds = %._crit_edge52.split.us.us.i312, %.lr.ph51.us.preheader.i285
  %indvar = phi i32 [ %indvar.next, %._crit_edge52.split.us.us.i312 ], [ 0, %.lr.ph51.us.preheader.i285 ] ; 3 uses
  %indvars.iv146.i292 = phi i64 [ %indvars.iv.next147.i313, %._crit_edge52.split.us.us.i312 ], [ %i.adm, %.lr.ph51.us.preheader.i285 ] ; 2 uses
  %i.aef = add i32 %indvar, %i.acv
  %i.aeg = call i32 @llvm.smax.i32(i32 %i.adt, i32 %i.aef)
  %i.aeh = call i32 @llvm.smin.i32(i32 %i.aeg, i32 %i.dz)
  %smin424 = sext i32 %i.aeh to i64
  %scevgep425 = getelementptr i8, ptr %scevgep, i64 %smin424 ; 2 uses
  %i.aei = mul i32 %i.aed, %indvar
  %i.aej = sext i32 %i.aei to i64
  %scevgep428 = getelementptr i8, ptr %scevgep427, i64 %i.aej ; 2 uses
  %i.aek = trunc i64 %indvars.iv146.i292 to i32   ; 3 uses
  %i.ael = add i32 %i.dh, %i.aek
  %i.aem = mul i32 %i.ael, %i.aax
  %i.aen = sext i32 %i.aem to i64
  %gep.us.i293 = getelementptr i8, ptr %invariant.gep.i101, i64 %i.aen ; 3 uses
  %.sroa.speculated15.us.i294 = call i32 @llvm.smax.i32(i32 %i.aek, i32 %i.acx)
  %.sroa.speculated11.us.i295 = call i32 @llvm.smin.i32(i32 %i.acz, i32 %.sroa.speculated15.us.i294)
  %i.aeo = sext i32 %.sroa.speculated11.us.i295 to i64
  %gep55.us.i296 = getelementptr i8, ptr %invariant.gep54.i267, i64 %i.aeo
  %.sroa.speculated6.us.i297 = call i32 @llvm.smax.i32(i32 %i.aek, i32 %i.ds)
  %.sroa.speculated.us.i298 = call i32 @llvm.smin.i32(i32 %i.dz, i32 %.sroa.speculated6.us.i297)
  %i.aep = sext i32 %.sroa.speculated.us.i298 to i64
  %gep57.us.i299 = getelementptr i8, ptr %invariant.gep56.i268, i64 %i.aep ; 3 uses
  %bound0 = icmp ult ptr %gep.us.i293, %scevgep426
  %bound1 = icmp ult ptr %i.ack, %scevgep428
  %found.conflict = and i1 %bound0, %bound1
  %bound0429 = icmp ult ptr %gep.us.i293, %scevgep425
  %bound1430 = icmp ult ptr %gep57.us.i299, %scevgep428
  %found.conflict431 = and i1 %bound0429, %bound1430
  %i.aeq = or i1 %found.conflict431, %stride.check
  %conflict.rdx = or i1 %found.conflict, %i.aeq
  %bound0432 = icmp ult ptr %i.ack, %scevgep425
  %bound1433 = icmp ult ptr %gep57.us.i299, %scevgep426
  %found.conflict434 = and i1 %bound0432, %bound1433
  %conflict.rdx435 = or i1 %conflict.rdx, %found.conflict434
  br label %.lr.ph.us.us.i300

.lr.ph.us.us.i300:                                ; preds = %._crit_edge.us.us.i309, %.lr.ph51.us.i291
  %indvars.iv141.i301 = phi i64 [ %indvars.iv.next142.i310, %._crit_edge.us.us.i309 ], [ %i.adh, %.lr.ph51.us.i291 ] ; 2 uses
  %.041948.us.us.i302 = phi ptr [ %i.agr, %._crit_edge.us.us.i309 ], [ %gep57.us.i299, %.lr.ph51.us.i291 ] ; 5 uses
  %.042247.us.us.i303 = phi ptr [ %i.agq, %._crit_edge.us.us.i309 ], [ %gep55.us.i296, %.lr.ph51.us.i291 ] ; 2 uses
  %.042446.us.us.i304 = phi ptr [ %i.agp, %._crit_edge.us.us.i309 ], [ %gep.us.i293, %.lr.ph51.us.i291 ] ; 5 uses
  %.042645.us.us.i305 = phi ptr [ %i.ago, %._crit_edge.us.us.i309 ], [ %i.ack, %.lr.ph51.us.i291 ] ; 5 uses
  %i.aer = load i8, ptr %.042247.us.us.i303, align 1, !tbaa !27 ; 2 uses
  %i.aes = zext i8 %i.aer to i32                  ; 4 uses
  %brmerge1059 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx435
  br i1 %brmerge1059, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.i300
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aes, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %.041948.us.us.i302, i64 %index
  %wide.load = load <4 x i8>, ptr %i.aet, align 1, !tbaa !27, !alias.scope !348
  %i.aeu = zext <4 x i8> %wide.load to <4 x i32>
  %i.aev = sub nsw <4 x i32> %broadcast.splat, %i.aeu
  %i.aew = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aev, i1 true) ; 2 uses
  %i.aex = trunc nuw <4 x i32> %i.aew to <4 x i8>
  %i.aey = getelementptr inbounds nuw i8, ptr %.042446.us.us.i304, i64 %index
  store <4 x i8> %i.aex, ptr %i.aey, align 1, !tbaa !27, !alias.scope !349, !noalias !350
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i305, i64 %index ; 2 uses
  %wide.load436 = load <4 x i32>, ptr %i.aez, align 4, !tbaa !8, !alias.scope !351, !noalias !348
  %i.afa = add nsw <4 x i32> %i.aew, %wide.load436
  store <4 x i32> %i.afa, ptr %i.aez, align 4, !tbaa !8, !alias.scope !351, !noalias !348
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.afb = icmp eq i64 %index.next, %n.vec
  br i1 %i.afb, label %middle.block, label %vector.body, !llvm.loop !274

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.i309, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.i300, %middle.block
  %indvars.iv136.i306.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.i300 ] ; 6 uses
  br i1 %lcmp.mod998.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.afc = getelementptr inbounds nuw i8, ptr %.041948.us.us.i302, i64 %indvars.iv136.i306.ph
  %i.afd = load i8, ptr %i.afc, align 1, !tbaa !27
  %i.afe = zext i8 %i.afd to i32
  %i.aff = sub nsw i32 %i.aes, %i.afe
  %i.afg = call i32 @llvm.abs.i32(i32 %i.aff, i1 true) ; 2 uses
  %i.afh = trunc nuw i32 %i.afg to i8
  %i.afi = getelementptr inbounds nuw i8, ptr %.042446.us.us.i304, i64 %indvars.iv136.i306.ph
  store i8 %i.afh, ptr %i.afi, align 1, !tbaa !27
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i305, i64 %indvars.iv136.i306.ph ; 2 uses
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !8
  %i.afl = add nsw i32 %i.afg, %i.afk
  store i32 %i.afl, ptr %i.afj, align 4, !tbaa !8
  %indvars.iv.next137.i307.prol = or disjoint i64 %indvars.iv136.i306.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv136.i306.unr = phi i64 [ %indvars.iv136.i306.ph, %scalar.ph.preheader ], [ %indvars.iv.next137.i307.prol, %scalar.ph.prol ]
  %i.afm = icmp eq i64 %indvars.iv136.i306.ph, %i.aee
  br i1 %i.afm, label %._crit_edge.us.us.i309, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv136.i306 = phi i64 [ %indvars.iv.next137.i307.1, %scalar.ph ], [ %indvars.iv136.i306.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %.041948.us.us.i302, i64 %indvars.iv136.i306
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !27
  %i.afp = zext i8 %i.afo to i32
  %i.afq = sub nsw i32 %i.aes, %i.afp
  %i.afr = call i32 @llvm.abs.i32(i32 %i.afq, i1 true) ; 2 uses
  %i.afs = trunc nuw i32 %i.afr to i8
  %i.aft = getelementptr inbounds nuw i8, ptr %.042446.us.us.i304, i64 %indvars.iv136.i306
  store i8 %i.afs, ptr %i.aft, align 1, !tbaa !27
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i305, i64 %indvars.iv136.i306 ; 2 uses
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !8
  %i.afw = add nsw i32 %i.afr, %i.afv
  store i32 %i.afw, ptr %i.afu, align 4, !tbaa !8
end_hunk_2
begin_hunk_3_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  br i1 %min.iters.check450, label %scalar.ph449.preheader, label %vector.body455

vector.body455:                                   ; preds = %.preheader42.us.i235, %vector.body455
  %index456 = phi i64 [ %index.next457, %vector.body455 ], [ 0, %.preheader42.us.i235 ] ; 2 uses
  %i.ahl = getelementptr [4 x i8], ptr %invariant.gep268.i237, i64 %index456 ; 2 uses
  %i.ahm = getelementptr i8, ptr %i.ahl, i64 16
  store <4 x i32> %broadcast.splat454, ptr %i.ahl, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat454, ptr %i.ahm, align 4, !tbaa !8
  %index.next457 = add nuw i64 %index456, 8       ; 2 uses
  %i.ahn = icmp eq i64 %index.next457, %n.vec452
  br i1 %i.ahn, label %middle.block458, label %vector.body455, !llvm.loop !283

middle.block458:                                  ; preds = %vector.body455
  br i1 %cmp.n459, label %._crit_edge.us.i242, label %scalar.ph449.preheader

scalar.ph449.preheader:                           ; preds = %.preheader42.us.i235, %middle.block458
  %indvars.iv161.i238.ph = phi i64 [ 0, %.preheader42.us.i235 ], [ %n.vec452, %middle.block458 ]
  br label %scalar.ph449

scalar.ph449:                                     ; preds = %scalar.ph449.preheader, %scalar.ph449
  %indvars.iv161.i238 = phi i64 [ %indvars.iv.next162.i240, %scalar.ph449 ], [ %indvars.iv161.i238.ph, %scalar.ph449.preheader ] ; 2 uses
  %gep269.i239 = getelementptr [4 x i8], ptr %invariant.gep268.i237, i64 %indvars.iv161.i238
  store i32 %i.aak, ptr %gep269.i239, align 4, !tbaa !8
  %indvars.iv.next162.i240 = add nuw nsw i64 %indvars.iv161.i238, 1 ; 2 uses
  %exitcond165.not.i241 = icmp eq i64 %indvars.iv.next162.i240, %wide.trip.count164.i234
  br i1 %exitcond165.not.i241, label %._crit_edge.us.i242, label %scalar.ph449, !llvm.loop !284

._crit_edge.us.i242:                              ; preds = %scalar.ph449, %middle.block458
  %indvars.iv.next167.i243 = add nuw nsw i64 %indvars.iv166.i236, 1 ; 2 uses
  %exitcond170.not.i244 = icmp eq i64 %indvars.iv.next167.i243, %wide.trip.count169.i233
  br i1 %exitcond170.not.i244, label %._crit_edge67.i103, label %.preheader42.us.i235, !llvm.loop !282

.preheader42.lr.ph.split.i215:                    ; preds = %.preheader42.lr.ph.i214
  br i1 %i.agw, label %.preheader42.preheader.i216, label %._crit_edge67.i103

.preheader42.preheader.i216:                      ; preds = %.preheader42.lr.ph.split.i215
  %i.aho = sext i32 %i.agv to i64                 ; 3 uses
  %sext259.i217 = shl i64 %i.aau, 32
  %i.ahp = ashr exact i64 %sext259.i217, 32
  %wide.trip.count159.i218 = zext nneg i32 %i.dx to i64
  %i.ahq = xor i32 %i.do, -1
  %i.ahr = zext i32 %i.ahq to i64
  %i.ahs = add nuw nsw i64 %i.ahr, 1              ; 2 uses
  %min.iters.check438 = icmp ugt i32 %i.do, -8
  %n.vec440 = and i64 %i.ahs, 8589934584          ; 3 uses
  %i.aht = add nsw i64 %n.vec440, %i.aho
  %broadcast.splatinsert441 = insertelement <4 x i32> poison, i32 %i.aak, i64 0
  %broadcast.splat442 = shufflevector <4 x i32> %broadcast.splatinsert441, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n447 = icmp eq i64 %i.ahs, %n.vec440
  br label %.preheader42.i219

.lr.ph51.i274:                                    ; preds = %._crit_edge52.split.i283, %.lr.ph51.preheader.i271
  %storemerge53.i275 = phi i32 [ %i.aiw, %._crit_edge52.split.i283 ], [ %i.acv, %.lr.ph51.preheader.i271 ] ; 2 uses
  %.sroa.speculated15.i276 = call i32 @llvm.smax.i32(i32 %storemerge53.i275, i32 %i.acx)
  %.sroa.speculated11.i277 = call i32 @llvm.smin.i32(i32 %i.acz, i32 %.sroa.speculated15.i276)
  %i.ahu = sext i32 %.sroa.speculated11.i277 to i64
  %gep55.i278 = getelementptr i8, ptr %invariant.gep54.i267, i64 %i.ahu ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph51.i274
  %i.ahv = load i8, ptr %gep55.i278, align 1, !tbaa !27
  %i.ahw = zext i8 %i.ahv to i64
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.ahw
  %i.ahy = load i8, ptr %i.ahx, align 1, !tbaa !27
  %i.ahz = zext i8 %i.ahy to i32
  %i.aia = load i32, ptr %i.adj, align 4, !tbaa !8
  %i.aib = add nsw i32 %i.aia, %i.ahz
  store i32 %i.aib, ptr %i.adj, align 4, !tbaa !8
  %i.aic = getelementptr inbounds i8, ptr %gep55.i278, i64 %i.adf
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph51.i274
  %indvars.iv.i279.unr = phi i64 [ %i.adh, %.lr.ph51.i274 ], [ %indvars.iv.next.i281.prol, %.prol.loopexit.unr-lcssa ]
  %.042247.i280.unr = phi ptr [ %gep55.i278, %.lr.ph51.i274 ], [ %i.aic, %.prol.loopexit.unr-lcssa ]
  br i1 %i.adl, label %._crit_edge52.split.i283, label %.lr.ph51.i274.new

.lr.ph51.i274.new:                                ; preds = %.prol.loopexit, %.lr.ph51.i274.new
  %indvars.iv.i279 = phi i64 [ %indvars.iv.next.i281.1, %.lr.ph51.i274.new ], [ %indvars.iv.i279.unr, %.prol.loopexit ] ; 3 uses
  %.042247.i280 = phi ptr [ %i.aiv, %.lr.ph51.i274.new ], [ %.042247.i280.unr, %.prol.loopexit ] ; 2 uses
  %i.aid = load i8, ptr %.042247.i280, align 1, !tbaa !27
  %i.aie = zext i8 %i.aid to i64
  %i.aif = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.aie
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !27
  %i.aih = zext i8 %i.aig to i32
  %i.aii = getelementptr inbounds [4 x i8], ptr %i.aby, i64 %indvars.iv.i279 ; 2 uses
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !8
  %i.aik = add nsw i32 %i.aij, %i.aih
  store i32 %i.aik, ptr %i.aii, align 4, !tbaa !8
  %i.ail = getelementptr inbounds i8, ptr %.042247.i280, i64 %i.adf ; 2 uses
  %i.aim = load i8, ptr %i.ail, align 1, !tbaa !27
  %i.ain = zext i8 %i.aim to i64
  %i.aio = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.ain
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !27
  %i.aiq = zext i8 %i.aip to i32
  %i.air = getelementptr [4 x i8], ptr %i.aby, i64 %indvars.iv.i279
  %i.ais = getelementptr i8, ptr %i.air, i64 4    ; 2 uses
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !8
  %i.aiu = add nsw i32 %i.ait, %i.aiq
  store i32 %i.aiu, ptr %i.ais, align 4, !tbaa !8
  %indvars.iv.next.i281.1 = add nsw i64 %indvars.iv.i279, 2 ; 2 uses
  %i.aiv = getelementptr inbounds i8, ptr %i.ail, i64 %i.adf
  %exitcond.not.i282.1 = icmp eq i64 %indvars.iv.next.i281.1, %wide.trip.count.i273
  br i1 %exitcond.not.i282.1, label %._crit_edge52.split.i283, label %.lr.ph51.i274.new, !llvm.loop !276

._crit_edge52.split.i283:                         ; preds = %.lr.ph51.i274.new, %.prol.loopexit
  %i.aiw = add nsw i32 %storemerge53.i275, 1      ; 2 uses
  %exitcond135.not.i284 = icmp eq i32 %i.aiw, %smax.i272
  br i1 %exitcond135.not.i284, label %.preheader43.i102, label %.lr.ph51.i274, !llvm.loop !277

.preheader42.i219:                                ; preds = %._crit_edge65.i227, %.preheader42.preheader.i216
  %indvars.iv156.i220 = phi i64 [ 0, %.preheader42.preheader.i216 ], [ %indvars.iv.next157.i228, %._crit_edge65.i227 ] ; 2 uses
  %i.aix = mul nsw i64 %indvars.iv156.i220, %i.ahp
  %invariant.gep267.i221 = getelementptr [4 x i8], ptr %.val86, i64 %i.aix ; 2 uses
  br i1 %min.iters.check438, label %scalar.ph437.preheader, label %vector.ph439

vector.ph439:                                     ; preds = %.preheader42.i219
  %invariant.gep = getelementptr [4 x i8], ptr %invariant.gep267.i221, i64 %i.aho
  br label %vector.body443

vector.body443:                                   ; preds = %vector.body443, %vector.ph439
  %index444 = phi i64 [ 0, %vector.ph439 ], [ %index.next445, %vector.body443 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index444 ; 2 uses
  %i.aiy = getelementptr i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat442, ptr %gep, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat442, ptr %i.aiy, align 4, !tbaa !8
  %index.next445 = add nuw i64 %index444, 8       ; 2 uses
  %i.aiz = icmp eq i64 %index.next445, %n.vec440
  br i1 %i.aiz, label %middle.block446, label %vector.body443, !llvm.loop !285

middle.block446:                                  ; preds = %vector.body443
  br i1 %cmp.n447, label %._crit_edge65.i227, label %scalar.ph437.preheader

scalar.ph437.preheader:                           ; preds = %.preheader42.i219, %middle.block446
  %indvars.iv152.i222.ph = phi i64 [ %i.aho, %.preheader42.i219 ], [ %i.aht, %middle.block446 ]
  br label %scalar.ph437

scalar.ph437:                                     ; preds = %scalar.ph437.preheader, %scalar.ph437
  %indvars.iv152.i222 = phi i64 [ %indvars.iv.next153.i224, %scalar.ph437 ], [ %indvars.iv152.i222.ph, %scalar.ph437.preheader ] ; 2 uses
  %gep.i223 = getelementptr [4 x i8], ptr %invariant.gep267.i221, i64 %indvars.iv152.i222
  store i32 %i.aak, ptr %gep.i223, align 4, !tbaa !8
  %indvars.iv.next153.i224 = add nsw i64 %indvars.iv152.i222, 1 ; 2 uses
  %lftr.wideiv.i225 = trunc i64 %indvars.iv.next153.i224 to i32
  %exitcond155.not.i226 = icmp eq i32 %i.dv, %lftr.wideiv.i225
  br i1 %exitcond155.not.i226, label %._crit_edge65.i227, label %scalar.ph437, !llvm.loop !286

._crit_edge65.i227:                               ; preds = %scalar.ph437, %middle.block446
  %indvars.iv.next157.i228 = add nuw nsw i64 %indvars.iv156.i220, 1 ; 2 uses
  %exitcond160.not.i229 = icmp eq i64 %indvars.iv.next157.i228, %wide.trip.count159.i218
  br i1 %exitcond160.not.i229, label %._crit_edge67.i103, label %.preheader42.i219, !llvm.loop !282

._crit_edge67.i103:                               ; preds = %._crit_edge65.i227, %._crit_edge.us.i242, %._crit_edge65.us.us.i263, %.preheader42.lr.ph.split.i215, %.preheader43.i102
  %.not453117.i104 = icmp slt i32 %i.dz, 0
  br i1 %.not453117.i104, label %_ZN2cvL26findStereoCorrespondenceBMIiEEvRKNS_3MatES3_RS1_S4_RKNS_14StereoBMParamsEiiRKNS_8BufferBMEm.exit, label %.lr.ph121.i105

.lr.ph121.i105:                                   ; preds = %._crit_edge67.i103
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %.val86, i64 %i.aao
  %i.ajb = add nsw i32 %i.df, 1                   ; 2 uses
  %i.ajc = sub nsw i32 0, %i.dr                   ; 2 uses
  %i.ajd = xor i32 %i.dr, -1
  %i.aje = add i32 %i.dv, %i.ajd                  ; 2 uses
  %i.ajf = mul i32 %i.di, %i.aat
  %i.ajg = sext i32 %i.ajf to i64                 ; 2 uses
  %i.ajh = sub nsw i64 0, %i.ajg                  ; 2 uses
  %invariant.gep123.i106 = getelementptr i8, ptr %i.aap, i64 %i.ajh ; 2 uses
  %invariant.gep127.i107 = getelementptr i8, ptr %i.aar, i64 %i.ajh
  %i.aji = icmp sgt i32 %i.aav, %i.dj
  %i.ajj = icmp sgt i32 %i.dm, 0                  ; 4 uses
  %i.ajk = sext i32 %i.dm to i64                  ; 8 uses
  %sext.i108 = shl i64 %i.aas, 32
  %i.ajl = ashr exact i64 %sext.i108, 32          ; 5 uses
  %.not45580.i109 = icmp sgt i32 %i.cw, %i.dg
  %i.ajm = sext i32 %i.aav to i64                 ; 3 uses
  %i.ajn = getelementptr [4 x i8], ptr %i.aby, i64 %i.ajm
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 -4
  %i.ajp = icmp slt i32 %i.acv, %i.dj
  %i.ajq = sext i32 %i.dj to i64                  ; 5 uses
  %i.ajr = getelementptr inbounds [4 x i8], ptr %i.aby, i64 %i.ajq
  %i.ajs = add nsw i32 %i.dg, 2
  %i.ajt = sub i32 %i.ajs, %i.di                  ; 6 uses
  %i.aju = sub i32 1, %i.di                       ; 3 uses
  %i.ajv = mul i32 %i.aju, %i.dm
  %i.ajw = sext i32 %i.ajv to i64                 ; 2 uses
  %i.ajx = getelementptr [4 x i8], ptr %i.abs, i64 %i.ajw ; 2 uses
  %i.ajy = icmp sge i32 %i.aju, %i.dg
  %i.ajz = icmp eq i32 %i.dm, 0
  %i.aka = add nsw i32 %i.aav, -1
  %i.akb = icmp sgt i32 %i.ed, 0
  %i.akc = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  %i.akd = getelementptr [4 x i8], ptr %i.abk, i64 %i.ajk ; 2 uses
  %i.ake = getelementptr i8, ptr %i.akd, i64 -8
  %smin.i110 = sext i32 %i.dk to i64              ; 3 uses
  %i.akf = sext i32 %i.dx to i64
  %i.akg = sext i32 %i.acv to i64                 ; 6 uses
  %smax219.i112 = call i32 @llvm.abs.i32(i32 %i.dg, i1 false)
  %i.akh = sext i32 %i.dg to i64
  %i.aki = shl i64 %i.aau, 32
  %i.akj = ashr exact i64 %i.aki, 32              ; 3 uses
  %i.akk = add i32 %i.dy, 1
  %i.akl = add i32 %i.akk, %i.ds
  %wide.trip.count240.i113 = zext i32 %i.akl to i64
  %wide.trip.count189.i114 = zext i32 %i.dm to i64 ; 22 uses
  %invariant.gep274.i115 = getelementptr [4 x i8], ptr %i.aby, i64 %i.akf ; 2 uses
  %brmerge.i117 = select i1 %i.ajy, i1 true, i1 %i.ajz
  %wide.trip.count220.i119 = zext i32 %smax219.i112 to i64 ; 2 uses
  %wide.trip.count235.i120 = zext nneg i32 %i.dx to i64
  %i.akm = add i32 %i.dg, %i.di
  %i.akn = add i32 %i.akm, -2
  %i.ako = zext i32 %i.akn to i64
  %i.akp = mul nsw i64 %i.ajk, %i.ako
  %i.akq = add i64 %i.akp, %i.abr
  %i.akr = add i64 %i.akq, %i.ajw
  %i.aks = shl nuw nsw i64 %wide.trip.count189.i114, 2
  %i.akt = add i64 %i.akr, %wide.trip.count189.i114
  %i.aku = shl i64 %i.akt, 2
  %scevgep504 = getelementptr i8, ptr %i.abo, i64 %i.aku
  %i.akv = getelementptr i8, ptr %i.abi, i64 %i.aks
  %scevgep505 = getelementptr i8, ptr %i.akv, i64 4
  %i.akw = shl nsw i64 %i.abr, 2
  %i.akx = add i64 %i.akw, %i.abp
  %i.aky = shl nsw i64 %i.aci, 2
  %.neg = sub i64 %i.aky, %i.akx
  %i.akz = xor i64 %i.ajq, -1
  %i.ala = add nsw i64 %i.akz, %i.ajm             ; 3 uses
  %i.alb = mul i64 %i.ala, %i.ajk
  %35 = add i64 %i.alb, %i.abr
  %i.alc = add i64 %35, %wide.trip.count189.i114
  %36 = sub i64 %i.alc, %i.aci                    ; 2 uses
  %scevgep601 = getelementptr i8, ptr %i.acc, i64 %36
  %i.ald = add nsw i64 %i.abr, %wide.trip.count189.i114
  %i.ale = sub nsw i64 %i.ald, %i.aci             ; 2 uses
  %scevgep603 = getelementptr i8, ptr %i.acc, i64 %i.ale
  %scevgep597 = getelementptr i8, ptr %i.acc, i64 %i.ale
  %i.alf = mul i64 %i.ala, %i.ajl
  %i.alg = add i64 %i.alf, %wide.trip.count189.i114
  %i.alh = add i64 %i.alg, %i.aaq
  %i.ali = sub i64 %i.alh, %i.ajg
  %scevgep599 = getelementptr i8, ptr %.val, i64 %i.ali
  %i.alj = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %i.alk = zext nneg i32 %i.dz to i64
  %i.all = mul i64 %i.ala, %i.ajk
  %i.alm = add i64 %i.all, %i.abr
  %i.aln = add i64 %i.alm, %wide.trip.count189.i114
  %i.alo = sub i64 %i.aln, %i.aci
  %i.alp = shl i64 %i.alo, 2
  %scevgep604.a = getelementptr i8, ptr %i.abo, i64 %i.alp ; 3 uses
  %scevgep605 = getelementptr i8, ptr %i.acc, i64 %36
  %i.alq = add nsw i64 %wide.trip.count189.i114, -1 ; 2 uses
  %min.iters.check608 = icmp ult i32 %i.dm, 12
  %stride.check618 = icmp slt i64 %i.ajl, 0
  %n.vec633 = and i64 %wide.trip.count189.i114, 2147483644 ; 3 uses
  %cmp.n643 = icmp eq i64 %n.vec633, %wide.trip.count189.i114
  %i.alr = sub i32 %i.dg, %i.dk                   ; 2 uses
  %i.als = zext i32 %i.alr to i64
  %i.alt = add nuw nsw i64 %i.als, 1              ; 2 uses
  %min.iters.check553 = icmp ult i32 %i.alr, 7
  %n.vec555 = and i64 %i.alt, 8589934584          ; 3 uses
  %i.alu = add nsw i64 %n.vec555, %smin.i110
  %invariant.gep1037 = getelementptr [4 x i8], ptr %invariant.gep274.i115, i64 %smin.i110
  %cmp.n562 = icmp eq i64 %i.alt, %n.vec555
  %i.alv = sub nsw i32 0, %i.dg
  %i.alw = sext i32 %i.alv to i64
  %i.alx = add nsw i64 %i.ajq, 1
  %i.aly = sub nsw i64 %i.alx, %i.alw             ; 3 uses
  %min.iters.check541 = icmp ult i64 %i.aly, 8
  %n.vec543 = and i64 %i.aly, -8                  ; 3 uses
  %i.alz = add nsw i64 %n.vec543, %i.akg
  %invariant.gep1039 = getelementptr [4 x i8], ptr %i.aby, i64 %i.akg
  %cmp.n550 = icmp eq i64 %i.aly, %n.vec543
  %min.iters.check526 = icmp ult i32 %i.dm, 8
  %op.rdx977 = add i64 %.neg, 3
  %op.rdx978 = add i64 %op.rdx977, %i.abj
  %diff.check = icmp ult i64 %op.rdx978, 31
  %or.cond975 = select i1 %min.iters.check526, i1 true, i1 %diff.check
  %n.vec529 = and i64 %wide.trip.count189.i114, 2147483640 ; 3 uses
  %broadcast.splatinsert530 = insertelement <4 x i32> poison, i32 %i.ajt, i64 0
  %broadcast.splat531 = shufflevector <4 x i32> %broadcast.splatinsert530, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n538 = icmp eq i64 %n.vec529, %wide.trip.count189.i114
  %xtraiter999 = and i64 %wide.trip.count189.i114, 3 ; 2 uses
  %lcmp.mod1000.not = icmp eq i64 %xtraiter999, 0
  %min.iters.check507 = icmp ult i32 %i.dm, 8
  %bound0509 = icmp ult ptr %i.abk, %scevgep504
  %bound1510 = icmp ult ptr %i.ajx, %scevgep505
  %found.conflict511 = and i1 %bound0509, %bound1510
  %n.vec513 = and i64 %wide.trip.count189.i114, 2147483640 ; 3 uses
  %cmp.n522 = icmp eq i64 %n.vec513, %wide.trip.count189.i114
  %xtraiter1001 = and i64 %wide.trip.count189.i114, 3 ; 2 uses
  %lcmp.mod1002.not = icmp eq i64 %xtraiter1001, 0
  %i.ama = sub nsw i32 0, %i.dg
  %i.amb = sext i32 %i.ama to i64
  %i.amc = add nuw nsw i64 %wide.trip.count220.i119, 1
  %i.amd = sub nsw i64 %i.amc, %i.amb             ; 3 uses
  %min.iters.check486 = icmp ult i64 %i.amd, 8
  %n.vec488 = and i64 %i.amd, -8                  ; 3 uses
  %i.ame = add nsw i64 %n.vec488, %i.akg
  %invariant.gep1041 = getelementptr [4 x i8], ptr %i.aby, i64 %i.akg
  %cmp.n496 = icmp eq i64 %i.amd, %n.vec488
  %xtraiter1004 = and i64 %wide.trip.count189.i114, 1
  %i.amf = icmp eq i64 %i.alq, 0
  %unroll_iter = and i64 %wide.trip.count189.i114, 2147483646
  %lcmp.mod1005.not = icmp eq i64 %xtraiter1004, 0
  %lcmp.mod1008 = trunc i32 %i.dm to i1
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge112.i140, %.lr.ph121.i105
  %indvars.iv237.i123 = phi i64 [ 0, %.lr.ph121.i105 ], [ %indvars.iv.next238.i141, %._crit_edge112.i140 ] ; 4 uses
  %.0418119.i124 = phi ptr [ %i.aja, %.lr.ph121.i105 ], [ %i.avr, %._crit_edge112.i140 ] ; 4 uses
  %i.amg = trunc i64 %indvars.iv237.i123 to i32
  %i.amh = add i32 %i.dg, %i.amg
  %i.ami = call i32 @llvm.smax.i32(i32 %i.alj, i32 %i.amh)
  %smax601 = sext i32 %i.ami to i64
  %smin602 = call i64 @llvm.smin.i64(i64 %smax601, i64 %i.alk)
  %scevgep603.a = getelementptr i8, ptr %scevgep599, i64 %smin602 ; 2 uses
  %i.amj = load ptr, ptr %i.aay, align 8, !tbaa !79 ; 2 uses
  %.not454.i125 = icmp eq ptr %i.amj, null
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %i.amj, i64 %i.aao
  %i.aml = getelementptr inbounds nuw [4 x i8], ptr %i.amk, i64 %indvars.iv237.i123
  %i.amm = select i1 %.not454.i125, ptr %i.a, ptr %i.aml
  br i1 %i.aji, label %.lr.ph79.preheader.i192, label %.preheader41.i126

.lr.ph79.preheader.i192:                          ; preds = %bb.ar
  %i.amn = trunc i64 %indvars.iv237.i123 to i32   ; 3 uses
  %i.amo = add i32 %i.dg, %i.amn                  ; 3 uses
  %i.amp = call i32 @llvm.smax.i32(i32 %i.amo, i32 %i.ds)
  %i.amq = call i32 @llvm.smin.i32(i32 %i.amp, i32 %i.dz)
  %i.amr = sext i32 %i.amq to i64
  %gep128.i193 = getelementptr i8, ptr %invariant.gep127.i107, i64 %i.amr ; 3 uses
  %i.ams = call i32 @llvm.smax.i32(i32 %i.amo, i32 %i.ajc)
  %i.amt = call i32 @llvm.smin.i32(i32 %i.ams, i32 %i.aje)
  %i.amu = sext i32 %i.amt to i64
  %gep126.i194 = getelementptr i8, ptr %invariant.gep123.i106, i64 %i.amu
  %i.amv = add i32 %i.amn, %i.acv
  %i.amw = call i32 @llvm.smax.i32(i32 %i.amv, i32 %i.ajc)
  %..i195 = call i32 @llvm.smin.i32(i32 %i.amw, i32 %i.aje)
  %i.amx = sext i32 %..i195 to i64
  %gep124.i196 = getelementptr i8, ptr %invariant.gep123.i106, i64 %i.amx
  %i.amy = add i32 %i.amo, %i.dh
  %i.amz = srem i32 %i.amy, %i.ajb
  %i.ana = mul i32 %i.amz, %i.aax
  %i.anb = sext i32 %i.ana to i64                 ; 3 uses
  %gep116.i197 = getelementptr i8, ptr %invariant.gep.i101, i64 %i.anb ; 4 uses
  %i.anc = srem i32 %i.amn, %i.ajb
  %i.and = mul i32 %i.anc, %i.aax
  %i.ane = sext i32 %i.and to i64                 ; 3 uses
  %gep114.i198 = getelementptr i8, ptr %invariant.gep.i101, i64 %i.ane ; 3 uses
  %scevgep602 = getelementptr i8, ptr %scevgep601, i64 %i.ane
  %gep114.i198.a = getelementptr i8, ptr %scevgep603, i64 %i.ane
  %scevgep598 = getelementptr i8, ptr %scevgep597, i64 %i.anb
  %scevgep606 = getelementptr i8, ptr %scevgep605, i64 %i.anb ; 2 uses
  %bound0610 = icmp ult ptr %gep116.i197, %scevgep604.a
  %bound1611 = icmp ult ptr %i.ack, %scevgep606
  %found.conflict612 = and i1 %bound0610, %bound1611
  %bound0615 = icmp ult ptr %gep116.i197, %scevgep603.a
  %bound1616 = icmp ult ptr %gep128.i193, %scevgep606
  %found.conflict617 = and i1 %bound0615, %bound1616
  %i.anf = or i1 %found.conflict617, %stride.check618
  %conflict.rdx619 = or i1 %found.conflict612, %i.anf
  %bound0620 = icmp ult ptr %gep116.i197, %gep114.i198.a
  %bound1621 = icmp ult ptr %gep114.i198, %scevgep598
  %found.conflict622 = and i1 %bound0620, %bound1621
  %conflict.rdx623 = or i1 %conflict.rdx619, %found.conflict622
  %bound0624 = icmp ult ptr %i.ack, %scevgep603.a
  %bound1625 = icmp ult ptr %gep128.i193, %scevgep604.a
  %found.conflict626 = and i1 %bound0624, %bound1625
  %conflict.rdx627 = or i1 %conflict.rdx623, %found.conflict626
  %bound0628 = icmp ult ptr %i.ack, %scevgep602
  %bound1629 = icmp ult ptr %gep114.i198, %scevgep604.a
  %found.conflict630 = and i1 %bound0628, %bound1629
  %conflict.rdx631 = or i1 %conflict.rdx627, %found.conflict630
  br label %.lr.ph79.i199

.preheader41.i126:                                ; preds = %._crit_edge.i207, %bb.ar
  br i1 %.not45580.i109, label %.preheader40.i135, label %.lr.ph82.preheader.i127

.lr.ph82.preheader.i127:                          ; preds = %.preheader41.i126
  %.pre.i128 = load i32, ptr %i.ajo, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check553, label %.lr.ph82.i129.preheader, label %vector.ph554

vector.ph554:                                     ; preds = %.lr.ph82.preheader.i127
  %broadcast.splatinsert556 = insertelement <4 x i32> poison, i32 %.pre.i128, i64 0
  %broadcast.splat557 = shufflevector <4 x i32> %broadcast.splatinsert556, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body558

vector.body558:                                   ; preds = %vector.body558, %vector.ph554
  %index559 = phi i64 [ 0, %vector.ph554 ], [ %index.next560, %vector.body558 ] ; 2 uses
  %gep1038 = getelementptr [4 x i8], ptr %invariant.gep1037, i64 %index559 ; 2 uses
  %i.ang = getelementptr i8, ptr %gep1038, i64 16
  store <4 x i32> %broadcast.splat557, ptr %gep1038, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat557, ptr %i.ang, align 4, !tbaa !8
  %index.next560 = add nuw i64 %index559, 8       ; 2 uses
  %i.anh = icmp eq i64 %index.next560, %n.vec555
  br i1 %i.anh, label %middle.block561, label %vector.body558, !llvm.loop !287

middle.block561:                                  ; preds = %vector.body558
  br i1 %cmp.n562, label %.preheader40.i135, label %.lr.ph82.i129.preheader

.lr.ph82.i129.preheader:                          ; preds = %.lr.ph82.preheader.i127, %middle.block561
  %indvars.iv196.i130.ph = phi i64 [ %smin.i110, %.lr.ph82.preheader.i127 ], [ %i.alu, %middle.block561 ]
  br label %.lr.ph82.i129

.lr.ph79.i199:                                    ; preds = %._crit_edge.i207, %.lr.ph79.preheader.i192
  %indvars.iv191.i200 = phi i64 [ %i.ajq, %.lr.ph79.preheader.i192 ], [ %indvars.iv.next192.i208, %._crit_edge.i207 ] ; 2 uses
  %.041776.i201 = phi ptr [ %gep114.i198, %.lr.ph79.preheader.i192 ], [ %i.aoy, %._crit_edge.i207 ] ; 3 uses
  %.142075.i202 = phi ptr [ %gep128.i193, %.lr.ph79.preheader.i192 ], [ %i.apc, %._crit_edge.i207 ] ; 3 uses
  %.042174.i203 = phi ptr [ %gep124.i196, %.lr.ph79.preheader.i192 ], [ %i.apb, %._crit_edge.i207 ] ; 2 uses
  %.142373.i204 = phi ptr [ %gep126.i194, %.lr.ph79.preheader.i192 ], [ %i.apa, %._crit_edge.i207 ] ; 2 uses
  %.142572.i205 = phi ptr [ %gep116.i197, %.lr.ph79.preheader.i192 ], [ %i.aox, %._crit_edge.i207 ] ; 3 uses
  %.142771.i206 = phi ptr [ %i.ack, %.lr.ph79.preheader.i192 ], [ %i.aoz, %._crit_edge.i207 ] ; 3 uses
  %i.ani = load i8, ptr %.142373.i204, align 1, !tbaa !27 ; 2 uses
  %i.anj = zext i8 %i.ani to i32                  ; 2 uses
  br i1 %i.ajj, label %.lr.ph70.i210.preheader, label %._crit_edge.i207

.lr.ph70.i210.preheader:                          ; preds = %.lr.ph79.i199
  %brmerge1060 = select i1 %min.iters.check608, i1 true, i1 %conflict.rdx631
  br i1 %brmerge1060, label %.lr.ph70.i210.preheader987, label %vector.ph632

vector.ph632:                                     ; preds = %.lr.ph70.i210.preheader
  %broadcast.splatinsert634 = insertelement <4 x i32> poison, i32 %i.anj, i64 0
  %broadcast.splat635 = shufflevector <4 x i32> %broadcast.splatinsert634, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body636

vector.body636:                                   ; preds = %vector.body636, %vector.ph632
  %index637 = phi i64 [ 0, %vector.ph632 ], [ %index.next641, %vector.body636 ] ; 5 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %.142075.i202, i64 %index637
  %wide.load638 = load <4 x i8>, ptr %i.ank, align 1, !tbaa !27, !alias.scope !352
  %i.anl = zext <4 x i8> %wide.load638 to <4 x i32>
  %i.anm = sub nsw <4 x i32> %broadcast.splat635, %i.anl
  %i.ann = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.anm, i1 true) ; 2 uses
  %i.ano = trunc nuw <4 x i32> %i.ann to <4 x i8>
  %i.anp = getelementptr inbounds nuw i8, ptr %.142572.i205, i64 %index637
  store <4 x i8> %i.ano, ptr %i.anp, align 1, !tbaa !27, !alias.scope !353, !noalias !354
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %.142771.i206, i64 %index637 ; 2 uses
  %wide.load639 = load <4 x i32>, ptr %i.anq, align 4, !tbaa !8, !alias.scope !355, !noalias !356
  %i.anr = add nsw <4 x i32> %i.ann, %wide.load639
  %i.ans = getelementptr inbounds nuw i8, ptr %.041776.i201, i64 %index637
  %wide.load640 = load <4 x i8>, ptr %i.ans, align 1, !tbaa !27, !alias.scope !357
  %i.ant = zext <4 x i8> %wide.load640 to <4 x i32>
  %i.anu = sub <4 x i32> %i.anr, %i.ant
  store <4 x i32> %i.anu, ptr %i.anq, align 4, !tbaa !8, !alias.scope !355, !noalias !356
  %index.next641 = add nuw i64 %index637, 4       ; 2 uses
  %i.anv = icmp eq i64 %index.next641, %n.vec633
  br i1 %i.anv, label %middle.block642, label %vector.body636, !llvm.loop !293

middle.block642:                                  ; preds = %vector.body636
  br i1 %cmp.n643, label %._crit_edge.i207, label %.lr.ph70.i210.preheader987

.lr.ph70.i210.preheader987:                       ; preds = %.lr.ph70.i210.preheader, %middle.block642
  %indvars.iv186.i211.ph = phi i64 [ %n.vec633, %middle.block642 ], [ 0, %.lr.ph70.i210.preheader ]
  br label %.lr.ph70.i210

.lr.ph70.i210:                                    ; preds = %.lr.ph70.i210.preheader987, %.lr.ph70.i210
  %indvars.iv186.i211 = phi i64 [ %indvars.iv.next187.i212, %.lr.ph70.i210 ], [ %indvars.iv186.i211.ph, %.lr.ph70.i210.preheader987 ] ; 5 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %.142075.i202, i64 %indvars.iv186.i211
  %i.anx = load i8, ptr %i.anw, align 1, !tbaa !27
  %i.any = zext i8 %i.anx to i32
  %i.anz = sub nsw i32 %i.anj, %i.any
  %i.aoa = call i32 @llvm.abs.i32(i32 %i.anz, i1 true) ; 2 uses
  %i.aob = trunc nuw i32 %i.aoa to i8
  %i.aoc = getelementptr inbounds nuw i8, ptr %.142572.i205, i64 %indvars.iv186.i211
  store i8 %i.aob, ptr %i.aoc, align 1, !tbaa !27
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %.142771.i206, i64 %indvars.iv186.i211 ; 2 uses
  %i.aoe = load i32, ptr %i.aod, align 4, !tbaa !8
  %i.aof = add nsw i32 %i.aoa, %i.aoe
  %i.aog = getelementptr inbounds nuw i8, ptr %.041776.i201, i64 %indvars.iv186.i211
  %i.aoh = load i8, ptr %i.aog, align 1, !tbaa !27
  %i.aoi = zext i8 %i.aoh to i32
  %i.aoj = sub i32 %i.aof, %i.aoi
  store i32 %i.aoj, ptr %i.aod, align 4, !tbaa !8
  %indvars.iv.next187.i212 = add nuw nsw i64 %indvars.iv186.i211, 1 ; 2 uses
  %exitcond190.not.i213 = icmp eq i64 %indvars.iv.next187.i212, %wide.trip.count189.i114
  br i1 %exitcond190.not.i213, label %._crit_edge.i207, label %.lr.ph70.i210, !llvm.loop !294

._crit_edge.i207:                                 ; preds = %.lr.ph70.i210, %middle.block642, %.lr.ph79.i199
  %i.aok = zext i8 %i.ani to i64
  %i.aol = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.aok
  %i.aom = load i8, ptr %i.aol, align 1, !tbaa !27
  %i.aon = zext i8 %i.aom to i32
  %i.aoo = load i8, ptr %.042174.i203, align 1, !tbaa !27
  %i.aop = zext i8 %i.aoo to i64
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.aop
  %i.aor = load i8, ptr %i.aoq, align 1, !tbaa !27
  %i.aos = zext i8 %i.aor to i32
  %i.aot = sub nsw i32 %i.aon, %i.aos
  %i.aou = getelementptr inbounds [4 x i8], ptr %i.aby, i64 %indvars.iv191.i200 ; 2 uses
  %i.aov = load i32, ptr %i.aou, align 4, !tbaa !8
  %i.aow = add nsw i32 %i.aot, %i.aov
  store i32 %i.aow, ptr %i.aou, align 4, !tbaa !8
  %indvars.iv.next192.i208 = add nsw i64 %indvars.iv191.i200, 1 ; 2 uses
  %i.aox = getelementptr inbounds i8, ptr %.142572.i205, i64 %i.ajk
  %i.aoy = getelementptr inbounds i8, ptr %.041776.i201, i64 %i.ajk
  %i.aoz = getelementptr inbounds [4 x i8], ptr %.142771.i206, i64 %i.ajk
  %i.apa = getelementptr inbounds i8, ptr %.142373.i204, i64 %i.ajl
  %i.apb = getelementptr inbounds i8, ptr %.042174.i203, i64 %i.ajl
  %i.apc = getelementptr inbounds i8, ptr %.142075.i202, i64 %i.ajl
  %exitcond195.not.i209 = icmp eq i64 %indvars.iv.next192.i208, %i.ajm
  br i1 %exitcond195.not.i209, label %.preheader41.i126, label %.lr.ph79.i199, !llvm.loop !295

.preheader40.i135:                                ; preds = %.lr.ph82.i129, %middle.block561, %.preheader41.i126
  br i1 %i.ajp, label %.lr.ph84.preheader.i186, label %.preheader39.i136

.lr.ph84.preheader.i186:                          ; preds = %.preheader40.i135
  %.pre242.i187 = load i32, ptr %i.ajr, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check541, label %.lr.ph84.i188.preheader, label %vector.ph542

vector.ph542:                                     ; preds = %.lr.ph84.preheader.i186
  %broadcast.splatinsert544 = insertelement <4 x i32> poison, i32 %.pre242.i187, i64 0
  %broadcast.splat545 = shufflevector <4 x i32> %broadcast.splatinsert544, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph542
  %index547 = phi i64 [ 0, %vector.ph542 ], [ %index.next548, %vector.body546 ] ; 2 uses
  %gep1040 = getelementptr [4 x i8], ptr %invariant.gep1039, i64 %index547 ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %gep1040, i64 16
  store <4 x i32> %broadcast.splat545, ptr %gep1040, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat545, ptr %i.apd, align 4, !tbaa !8
  %index.next548 = add nuw i64 %index547, 8       ; 2 uses
  %i.ape = icmp eq i64 %index.next548, %n.vec543
  br i1 %i.ape, label %middle.block549, label %vector.body546, !llvm.loop !296

middle.block549:                                  ; preds = %vector.body546
  br i1 %cmp.n550, label %.preheader39.i136, label %.lr.ph84.i188.preheader

.lr.ph84.i188.preheader:                          ; preds = %.lr.ph84.preheader.i186, %middle.block549
  %indvars.iv200.i189.ph = phi i64 [ %i.akg, %.lr.ph84.preheader.i186 ], [ %i.alz, %middle.block549 ]
  br label %.lr.ph84.i188

.lr.ph82.i129:                                    ; preds = %.lr.ph82.i129.preheader, %.lr.ph82.i129
  %indvars.iv196.i130 = phi i64 [ %indvars.iv.next197.i132, %.lr.ph82.i129 ], [ %indvars.iv196.i130.ph, %.lr.ph82.i129.preheader ] ; 2 uses
  %gep275.i131 = getelementptr [4 x i8], ptr %invariant.gep274.i115, i64 %indvars.iv196.i130
  store i32 %.pre.i128, ptr %gep275.i131, align 4, !tbaa !8
  %indvars.iv.next197.i132 = add nsw i64 %indvars.iv196.i130, 1 ; 2 uses
  %lftr.wideiv198.i133 = trunc i64 %indvars.iv.next197.i132 to i32
  %exitcond199.not.i134 = icmp eq i32 %i.dh, %lftr.wideiv198.i133
  br i1 %exitcond199.not.i134, label %.preheader40.i135, label %.lr.ph82.i129, !llvm.loop !297

.preheader39.i136:                                ; preds = %.lr.ph84.i188, %middle.block549, %.preheader40.i135
  br i1 %i.ajj, label %.lr.ph86.i173.preheader, label %.preheader38.i137

.lr.ph86.i173.preheader:                          ; preds = %.preheader39.i136
  br i1 %or.cond975, label %.lr.ph86.i173.preheader989, label %vector.body532

vector.body532:                                   ; preds = %.lr.ph86.i173.preheader, %vector.body532
  %index533 = phi i64 [ %index.next536, %vector.body532 ], [ 0, %.lr.ph86.i173.preheader ] ; 3 uses
  %i.apf = sub nsw i64 %index533, %i.aci
  %i.apg = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.apf ; 2 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 16
  %wide.load534 = load <4 x i32>, ptr %i.apg, align 4, !tbaa !8
  %wide.load535 = load <4 x i32>, ptr %i.aph, align 4, !tbaa !8
  %i.api = mul nsw <4 x i32> %wide.load534, %broadcast.splat531
  %i.apj = mul nsw <4 x i32> %wide.load535, %broadcast.splat531
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %index533 ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 16
  store <4 x i32> %i.api, ptr %i.apk, align 4, !tbaa !8
  store <4 x i32> %i.apj, ptr %i.apl, align 4, !tbaa !8
  %index.next536 = add nuw i64 %index533, 8       ; 2 uses
  %i.apm = icmp eq i64 %index.next536, %n.vec529
  br i1 %i.apm, label %middle.block537, label %vector.body532, !llvm.loop !298

middle.block537:                                  ; preds = %vector.body532
  br i1 %cmp.n538, label %._crit_edge87.i177, label %.lr.ph86.i173.preheader989

.lr.ph86.i173.preheader989:                       ; preds = %.lr.ph86.i173.preheader, %middle.block537
  %indvars.iv205.i174.ph = phi i64 [ 0, %.lr.ph86.i173.preheader ], [ %n.vec529, %middle.block537 ] ; 3 uses
  %i.apn = sub nsw i64 %i.alq, %indvars.iv205.i174.ph
  br i1 %lcmp.mod1000.not, label %.lr.ph86.i173.prol.loopexit, label %.lr.ph86.i173.prol

.lr.ph86.i173.prol:                               ; preds = %.lr.ph86.i173.preheader989, %.lr.ph86.i173.prol
  %indvars.iv205.i174.prol = phi i64 [ %indvars.iv.next206.i175.prol, %.lr.ph86.i173.prol ], [ %indvars.iv205.i174.ph, %.lr.ph86.i173.preheader989 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph86.i173.prol ], [ 0, %.lr.ph86.i173.preheader989 ]
  %i.apo = sub nsw i64 %indvars.iv205.i174.prol, %i.aci
  %i.app = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.apo
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !8
  %i.apr = mul nsw i32 %i.apq, %i.ajt
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %indvars.iv205.i174.prol
  store i32 %i.apr, ptr %i.aps, align 4, !tbaa !8
  %indvars.iv.next206.i175.prol = add nuw nsw i64 %indvars.iv205.i174.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter999
  br i1 %prol.iter.cmp.not, label %.lr.ph86.i173.prol.loopexit, label %.lr.ph86.i173.prol, !llvm.loop !299

.lr.ph86.i173.prol.loopexit:                      ; preds = %.lr.ph86.i173.prol, %.lr.ph86.i173.preheader989
  %indvars.iv205.i174.unr = phi i64 [ %indvars.iv205.i174.ph, %.lr.ph86.i173.preheader989 ], [ %indvars.iv.next206.i175.prol, %.lr.ph86.i173.prol ]
  %i.apt = icmp ult i64 %i.apn, 3
  br i1 %i.apt, label %._crit_edge87.i177, label %.lr.ph86.i173

.lr.ph84.i188:                                    ; preds = %.lr.ph84.i188.preheader, %.lr.ph84.i188
  %indvars.iv200.i189 = phi i64 [ %indvars.iv.next201.i190, %.lr.ph84.i188 ], [ %indvars.iv200.i189.ph, %.lr.ph84.i188.preheader ] ; 2 uses
  %i.apu = getelementptr inbounds [4 x i8], ptr %i.aby, i64 %indvars.iv200.i189
  store i32 %.pre242.i187, ptr %i.apu, align 4, !tbaa !8
  %indvars.iv.next201.i190 = add nsw i64 %indvars.iv200.i189, 1 ; 2 uses
  %exitcond204.not.i191 = icmp eq i64 %indvars.iv.next201.i190, %i.ajq
  br i1 %exitcond204.not.i191, label %.preheader39.i136, label %.lr.ph84.i188, !llvm.loop !300

.lr.ph86.i173:                                    ; preds = %.lr.ph86.i173.prol.loopexit, %.lr.ph86.i173
  %indvars.iv205.i174 = phi i64 [ %indvars.iv.next206.i175.3, %.lr.ph86.i173 ], [ %indvars.iv205.i174.unr, %.lr.ph86.i173.prol.loopexit ] ; 6 uses
  %i.apv = sub nsw i64 %indvars.iv205.i174, %i.aci
  %i.apw = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.apv
  %i.apx = load i32, ptr %i.apw, align 4, !tbaa !8
  %i.apy = mul nsw i32 %i.apx, %i.ajt
  %i.apz = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %indvars.iv205.i174
  store i32 %i.apy, ptr %i.apz, align 4, !tbaa !8
  %indvars.iv.next206.i175 = add nuw nsw i64 %indvars.iv205.i174, 1 ; 2 uses
  %i.aqa = sub nsw i64 %indvars.iv.next206.i175, %i.aci
end_hunk_3

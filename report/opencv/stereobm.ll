inline.NumInlined: 442
inline.NumDeleted: 208
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19, !noalias !206
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19, !noalias !206
  %i.bl = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.g unwind label %bb.j       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.bm = sitofp i32 %i.ac to double
  %i.bn = insertelement <4 x double> poison, double %i.bm, i64 0
  %i.bo = shufflevector <4 x double> %i.bn, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.bo, ptr %20, align 8, !tbaa !97, !alias.scope !209
  %i.bp = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.h unwind label %bb.l       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.br, %bb.j ], [ %i.bq, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.ca

bb.l:                                             ; preds = %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.ca

bb.m:                                             ; preds = %bb.h, %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit
  %i.bt = icmp sgt i32 %.sroa.speculated, %i.bh
  br i1 %i.bt, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.bu = load ptr, ptr %i.r, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19, !noalias !212
  store i32 %i.bh, ptr %14, align 4, !tbaa !102, !noalias !212
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %.sroa.speculated, ptr %i.bv, align 4, !tbaa !104, !noalias !212
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19, !noalias !212
  store i64 9223372034707292160, ptr %15, align 8, !noalias !212
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.bu, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %15)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19, !noalias !212
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19, !noalias !212
  %i.bw = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %bb.p unwind label %bb.s       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.bx = sitofp i32 %i.ac to double
  %i.by = insertelement <4 x double> poison, double %i.bx, i64 0
  %i.bz = shufflevector <4 x double> %i.by, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.bz, ptr %22, align 8, !tbaa !97, !alias.scope !215
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
  %i.di = call i32 @llvm.smin.i32(i32 %i.az, i32 %i.dh) ; 23 uses
  %i.dj = sub i32 0, %i.di                        ; 12 uses
  %i.dk = call i32 @llvm.smin.i32(i32 %i.cw, i32 %i.dh) ; 12 uses
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
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !95 ; 22 uses
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
  %i.gq = xor i32 %i.dg, -1                       ; 7 uses
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
  %i.hc = sext i32 %i.dj to i64                   ; 4 uses
  br i1 %i.hb, label %.lr.ph51.us.preheader.i, label %.lr.ph51.preheader.i

.lr.ph51.preheader.i:                             ; preds = %.lr.ph.split.i
  %smax.i = call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %i.hd = add i32 %i.dx, %i.di
  %i.he = add i32 %i.hd, %i.dk                    ; 2 uses
  %xtraiter934 = and i32 %i.he, 1
  %lcmp.mod935.not = icmp eq i32 %xtraiter934, 0
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.hc ; 2 uses
  %indvars.iv.next.i.prol = add nsw i64 %i.hc, 1
  %i.hg = icmp eq i32 %i.he, 1
  br label %.lr.ph51.i

.lr.ph51.us.preheader.i:                          ; preds = %.lr.ph.split.i
  %i.hh = sext i32 %i.gq to i64
  %smax147.i = call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %wide.trip.count148.i = zext nneg i32 %smax147.i to i64
  %wide.trip.count.i = zext nneg i32 %i.dm to i64 ; 8 uses
  %i.hi = sub nsw i64 %i.fm, %i.gd
  %scevgep613 = getelementptr i8, ptr %i.fx, i64 %i.hi
  %i.hj = add i32 %i.dx, %i.di
  %i.hk = add i32 %i.hj, %i.dk                    ; 2 uses
  %i.hl = mul i32 %i.dm, %i.hk
  %i.hm = add i32 %i.hk, -1
  %i.hn = zext i32 %i.hm to i64                   ; 2 uses
  %i.ho = mul nuw nsw i64 %i.gz, %i.hn            ; 2 uses
  %i.hp = add i64 %i.ho, %i.fm
  %i.hq = add i64 %i.hp, %wide.trip.count.i
  %i.hr = sub i64 %i.hq, %i.gd
  %scevgep617 = getelementptr i8, ptr %i.fx, i64 %i.hr
  %i.hs = add i64 %i.ho, %i.fm
  %i.ht = add i64 %i.hs, %wide.trip.count.i
  %i.hu = sub i64 %i.ht, %i.gd
  %i.hv = shl i64 %i.hu, 2
  %scevgep619 = getelementptr i8, ptr %i.fj, i64 %i.hv ; 2 uses
  %i.hw = sub nsw i64 %i.el, %i.gw
  %scevgep620 = getelementptr i8, ptr %.val, i64 %i.hw
  %i.hx = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %i.hy = mul nsw i64 %i.ha, %i.hn
  %i.hz = add i64 %i.hy, %wide.trip.count.i
  %i.ia = add i64 %i.hz, %i.el
  %i.ib = sub i64 %i.ia, %i.gw
  %scevgep625 = getelementptr i8, ptr %.val, i64 %i.ib
  %min.iters.check641 = icmp ult i32 %i.dm, 8
  %stride.check633 = icmp slt i64 %i.ha, 0
  %n.vec643 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n652 = icmp eq i64 %n.vec643, %wide.trip.count.i
  %xtraiter937 = and i64 %wide.trip.count.i, 1
  %lcmp.mod938.not = icmp eq i64 %xtraiter937, 0
  %i.ic = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph51.us.i

.lr.ph51.us.i:                                    ; preds = %._crit_edge52.split.us.us.i, %.lr.ph51.us.preheader.i
  %indvar614 = phi i32 [ %indvar.next615, %._crit_edge52.split.us.us.i ], [ 0, %.lr.ph51.us.preheader.i ] ; 3 uses
  %indvars.iv144.i = phi i64 [ %indvars.iv.next145.i, %._crit_edge52.split.us.us.i ], [ %i.hh, %.lr.ph51.us.preheader.i ] ; 2 uses
  %i.id = mul i32 %i.hl, %indvar614
  %i.ie = sext i32 %i.id to i64                   ; 2 uses
  %scevgep616 = getelementptr i8, ptr %scevgep613, i64 %i.ie ; 2 uses
  %scevgep618 = getelementptr i8, ptr %scevgep617, i64 %i.ie ; 2 uses
  %i.if = add i32 %indvar614, %i.gq
  %i.ig = call i32 @llvm.smax.i32(i32 %i.hx, i32 %i.if)
  %i.ih = call i32 @llvm.smin.i32(i32 %i.ig, i32 %i.dz)
  %smin623 = sext i32 %i.ih to i64                ; 2 uses
  %scevgep624 = getelementptr i8, ptr %scevgep620, i64 %smin623 ; 2 uses
  %scevgep626 = getelementptr i8, ptr %scevgep625, i64 %smin623 ; 2 uses
  %i.ii = trunc nsw i64 %indvars.iv144.i to i32   ; 3 uses
  %i.ij = add i32 %i.dh, %i.ii
  %i.ik = mul nsw i32 %i.ij, %i.es
  %i.il = sext i32 %i.ik to i64
  %gep.us.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.il
  %.sroa.speculated15.us.i = call i32 @llvm.smax.i32(i32 %i.ii, i32 %i.gs)
  %.sroa.speculated11.us.i = call i32 @llvm.smin.i32(i32 %i.gu, i32 %.sroa.speculated15.us.i)
  %i.im = sext i32 %.sroa.speculated11.us.i to i64
  %gep55.us.i = getelementptr i8, ptr %invariant.gep54.i, i64 %i.im
  %.sroa.speculated6.us.i = call i32 @llvm.smax.i32(i32 %i.ii, i32 %i.ds)
  %.sroa.speculated.us.i = call i32 @llvm.smin.i32(i32 %i.dz, i32 %.sroa.speculated6.us.i)
  %i.in = sext i32 %.sroa.speculated.us.i to i64
  %gep57.us.i = getelementptr i8, ptr %invariant.gep56.i, i64 %i.in
  %bound0627 = icmp ult ptr %scevgep616, %scevgep619
  %bound1628 = icmp ult ptr %i.gf, %scevgep618
  %found.conflict629 = and i1 %bound0627, %bound1628
  %bound0630 = icmp ult ptr %scevgep616, %scevgep626
  %bound1631 = icmp ult ptr %scevgep624, %scevgep618
  %found.conflict632 = and i1 %bound0630, %bound1631
  %i.io = or i1 %found.conflict632, %stride.check633
  %conflict.rdx634 = or i1 %found.conflict629, %i.io
  %bound0635 = icmp ult ptr %i.gf, %scevgep626
  %bound1636 = icmp ult ptr %scevgep624, %scevgep619
  %found.conflict637 = and i1 %bound0635, %bound1636
  %conflict.rdx639 = or i1 %found.conflict637, %conflict.rdx634
end_hunk_0
begin_hunk_1_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  %i.mu = getelementptr inbounds i8, ptr %.042246.i, i64 %i.ha ; 2 uses
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !45
  %i.mw = zext i8 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !45
  %i.mz = zext i8 %i.my to i32
  %i.na = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.i
  %i.nb = getelementptr i8, ptr %i.na, i64 4      ; 2 uses
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !8
  %i.nd = add nsw i32 %i.nc, %i.mz
  store i32 %i.nd, ptr %i.nb, align 4, !tbaa !8
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ne = getelementptr inbounds i8, ptr %i.mu, i64 %i.ha
  %lftr.wideiv.i.1 = trunc i64 %indvars.iv.next.i.1 to i32
  %exitcond.not.i.1 = icmp eq i32 %i.eq, %lftr.wideiv.i.1
  br i1 %exitcond.not.i.1, label %._crit_edge52.split.i, label %.lr.ph51.i.new, !llvm.loop !241

._crit_edge52.split.i:                            ; preds = %.lr.ph51.i.new, %.prol.loopexit933
  %i.nf = add nsw i32 %storemerge53.i, 1          ; 2 uses
  %exitcond134.not.i = icmp eq i32 %i.nf, %smax.i
  br i1 %exitcond134.not.i, label %.preheader43.i, label %.lr.ph51.i, !llvm.loop !242

iter.check:                                       ; preds = %._crit_edge65.i, %.preheader42.preheader.i
  %indvars.iv155.i = phi i64 [ 0, %.preheader42.preheader.i ], [ %indvars.iv.next156.i, %._crit_edge65.i ] ; 2 uses
  %i.ng = mul nsw i64 %indvars.iv155.i, %i.lw
  %invariant.gep268.i = getelementptr [2 x i8], ptr %.val86, i64 %i.ng ; 3 uses
  br i1 %min.iters.check655, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check656, label %vec.epilog.ph, label %vector.ph657

vector.ph657:                                     ; preds = %vector.main.loop.iter.check
  %invariant.gep966 = getelementptr [2 x i8], ptr %invariant.gep268.i, i64 %i.lv
  br label %vector.body661

vector.body661:                                   ; preds = %vector.body661, %vector.ph657
  %index662 = phi i64 [ 0, %vector.ph657 ], [ %index.next663, %vector.body661 ] ; 2 uses
  %gep967 = getelementptr [2 x i8], ptr %invariant.gep966, i64 %index662 ; 2 uses
  %i.nh = getelementptr i8, ptr %gep967, i64 16
  store <8 x i16> %broadcast.splat660, ptr %gep967, align 2, !tbaa !243
  store <8 x i16> %broadcast.splat660, ptr %i.nh, align 2, !tbaa !243
  %index.next663 = add nuw i64 %index662, 16      ; 2 uses
  %i.ni = icmp eq i64 %index.next663, %n.vec658
  br i1 %i.ni, label %middle.block664, label %vector.body661, !llvm.loop !256

middle.block664:                                  ; preds = %vector.body661
  br i1 %cmp.n665, label %._crit_edge65.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block664
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !246

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec658, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %invariant.gep968 = getelementptr [2 x i8], ptr %invariant.gep268.i, i64 %i.lv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index670 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next671, %vec.epilog.vector.body ] ; 2 uses
  %gep969 = getelementptr [2 x i8], ptr %invariant.gep968, i64 %index670
  store <4 x i16> %broadcast.splat669, ptr %gep969, align 2, !tbaa !243
  %index.next671 = add nuw i64 %index670, 4       ; 2 uses
  %i.nj = icmp eq i64 %index.next671, %n.vec667
  br i1 %i.nj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !257

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n672, label %._crit_edge65.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv150.i.ph = phi i64 [ %i.lv, %iter.check ], [ %i.mb, %vec.epilog.iter.check ], [ %i.mc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i, %vec.epilog.scalar.ph ], [ %indvars.iv150.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep268.i, i64 %indvars.iv150.i
  store i16 %i.ef, ptr %gep.i, align 2, !tbaa !243
  %indvars.iv.next151.i = add nsw i64 %indvars.iv150.i, 1 ; 2 uses
  %lftr.wideiv153.i = trunc i64 %indvars.iv.next151.i to i32
  %exitcond154.not.i = icmp eq i32 %i.dv, %lftr.wideiv153.i
  br i1 %exitcond154.not.i, label %._crit_edge65.i, label %vec.epilog.scalar.ph, !llvm.loop !258

._crit_edge65.i:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block664
  %indvars.iv.next156.i = add nuw nsw i64 %indvars.iv155.i, 1 ; 2 uses
  %exitcond159.not.i = icmp eq i64 %indvars.iv.next156.i, %wide.trip.count158.i
  br i1 %exitcond159.not.i, label %._crit_edge67.i, label %iter.check, !llvm.loop !252

._crit_edge67.i:                                  ; preds = %._crit_edge65.i, %._crit_edge.us.i, %._crit_edge65.us.us.i, %.preheader42.lr.ph.split.i, %.preheader43.i
  %.not453117.i = icmp slt i32 %i.dz, 0
  br i1 %.not453117.i, label %_ZN2cvL26findStereoCorrespondenceBMIsEEvRKNS_3MatES3_RS1_S4_RKNS_14StereoBMParamsEiiRKNS_8BufferBMEm.exit, label %.lr.ph121.i

.lr.ph121.i:                                      ; preds = %._crit_edge67.i
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %.val86, i64 %i.ej
  %i.nl = add nsw i32 %i.df, 1                    ; 2 uses
  %i.nm = sub nsw i32 0, %i.dr                    ; 2 uses
  %i.nn = xor i32 %i.dr, -1
  %i.no = add i32 %i.dv, %i.nn                    ; 2 uses
  %i.np = mul i32 %i.di, %i.eo
  %i.nq = sext i32 %i.np to i64                   ; 3 uses
  %i.nr = sub nsw i64 0, %i.nq                    ; 2 uses
  %invariant.gep123.i = getelementptr i8, ptr %i.ek, i64 %i.nr ; 2 uses
  %invariant.gep127.i = getelementptr i8, ptr %i.em, i64 %i.nr
  %i.ns = icmp sgt i32 %i.eq, %i.dj
  %i.nt = icmp sgt i32 %i.dm, 0                   ; 4 uses
  %i.nu = sext i32 %i.dm to i64                   ; 7 uses
  %sext.i = shl i64 %i.en, 32
  %i.nv = ashr exact i64 %sext.i, 32              ; 5 uses
  %.not45580.i = icmp sgt i32 %i.cw, %i.dg
  %i.nw = sext i32 %i.eq to i64                   ; 3 uses
  %i.nx = getelementptr [4 x i8], ptr %i.ft, i64 %i.nw
  %i.ny = getelementptr i8, ptr %i.nx, i64 -4
  %i.nz = icmp slt i32 %i.gq, %i.dj
  %i.oa = sext i32 %i.dj to i64                   ; 5 uses
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.oa
  %i.oc = add nsw i32 %i.dg, 2
  %i.od = sub i32 %i.oc, %i.di                    ; 6 uses
  %i.oe = sub i32 1, %i.di                        ; 3 uses
  %i.of = mul i32 %i.oe, %i.dm
  %i.og = sext i32 %i.of to i64                   ; 2 uses
  %i.oh = getelementptr [4 x i8], ptr %i.fn, i64 %i.og ; 2 uses
  %i.oi = icmp sge i32 %i.oe, %i.dg
  %i.oj = icmp eq i32 %i.dm, 0
  %i.ok = add nsw i32 %i.eq, -1
  %i.ol = icmp sgt i32 %i.ed, 0
  %i.om = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.on = getelementptr [4 x i8], ptr %i.ff, i64 %i.nu ; 2 uses
  %i.oo = getelementptr i8, ptr %i.on, i64 -8
  %smin195.i = sext i32 %i.dk to i64              ; 3 uses
  %i.op = sext i32 %i.dx to i64
  %i.oq = sext i32 %i.gq to i64                   ; 6 uses
  %smax219.i = call i32 @llvm.abs.i32(i32 %i.dg, i1 false)
  %i.or = sext i32 %i.dg to i64
  %sext262.i = shl i64 %i.ep, 32
  %i.os = ashr exact i64 %sext262.i, 32           ; 3 uses
  %i.ot = add i32 %i.dy, 1
  %i.ou = add i32 %i.ot, %i.ds
  %wide.trip.count240.i = zext i32 %i.ou to i64
  %wide.trip.count188.i = zext i32 %i.dm to i64   ; 21 uses
  %invariant.gep275.i = getelementptr [4 x i8], ptr %i.ft, i64 %i.op ; 2 uses
  %brmerge.i = select i1 %i.oi, i1 true, i1 %i.oj
  %wide.trip.count220.i = zext i32 %smax219.i to i64 ; 2 uses
  %wide.trip.count235.i = zext nneg i32 %i.dx to i64
  %i.ov = shl nuw nsw i64 %wide.trip.count188.i, 2
  %i.ow = getelementptr i8, ptr %i.fd, i64 %i.ov
  %scevgep776 = getelementptr i8, ptr %i.ow, i64 4
  %i.ox = add i32 %i.dg, %i.di
  %i.oy = add i32 %i.ox, -2
  %i.oz = zext i32 %i.oy to i64
  %i.pa = mul nsw i64 %i.nu, %i.oz
  %i.pb = add i64 %i.pa, %i.fm
  %i.pc = add i64 %i.pb, %i.og
  %i.pd = add i64 %i.pc, %wide.trip.count188.i
  %i.pe = shl i64 %i.pd, 2
  %scevgep777 = getelementptr i8, ptr %i.fj, i64 %i.pe
  %i.pf = shl nsw i64 %i.fm, 2
  %i.pg = add i64 %i.pf, %i.fk
  %i.ph = shl nsw i64 %i.gd, 2
  %.neg896 = sub i64 %i.ph, %i.pg
  %i.pi = sub nsw i64 %i.fm, %i.gd                ; 2 uses
  %scevgep836 = getelementptr i8, ptr %i.fx, i64 %i.pi
  %i.pj = add i32 %i.dx, %i.di
  %i.pk = add i32 %i.pj, %i.dk                    ; 2 uses
  %i.pl = mul i32 %i.dm, %i.pk
  %i.pm = xor i64 %i.oa, -1
  %i.pn = add nsw i64 %i.pm, %i.nw                ; 2 uses
  %i.po = mul i64 %i.pn, %i.nu                    ; 2 uses
  %i.pp = add i64 %i.po, %i.fm
  %i.pq = add i64 %i.pp, %wide.trip.count188.i
  %i.pr = sub i64 %i.pq, %i.gd                    ; 2 uses
  %scevgep838 = getelementptr i8, ptr %i.fx, i64 %i.pr
  %i.ps = add i64 %i.po, %i.fm
  %i.pt = add i64 %i.ps, %wide.trip.count188.i
  %i.pu = sub i64 %i.pt, %i.gd
  %i.pv = shl i64 %i.pu, 2
  %scevgep840 = getelementptr i8, ptr %i.fj, i64 %i.pv ; 3 uses
  %i.pw = sub nsw i64 %i.el, %i.nq
  %scevgep841 = getelementptr i8, ptr %.val, i64 %i.pw
  %i.px = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %i.py = zext nneg i32 %i.dz to i64
  %i.pz = mul i64 %i.pn, %i.nv
  %i.qa = add i64 %i.pz, %wide.trip.count188.i
  %i.qb = add i64 %i.qa, %i.el
  %i.qc = sub i64 %i.qb, %i.nq
  %scevgep846 = getelementptr i8, ptr %.val, i64 %i.qc
  %scevgep848 = getelementptr i8, ptr %i.fx, i64 %i.pi
  %i.qd = mul i32 %i.dm, %i.pk
  %scevgep850 = getelementptr i8, ptr %i.fx, i64 %i.pr
  %i.qe = add nsw i64 %wide.trip.count188.i, -1   ; 2 uses
  %min.iters.check882 = icmp ult i32 %i.dm, 20
  %stride.check861 = icmp slt i64 %i.nv, 0
  %n.vec884 = and i64 %wide.trip.count188.i, 2147483644 ; 3 uses
  %cmp.n894 = icmp eq i64 %n.vec884, %wide.trip.count188.i
  %i.qf = sub i32 %i.dg, %i.dk                    ; 2 uses
  %i.qg = zext i32 %i.qf to i64
  %i.qh = add nuw nsw i64 %i.qg, 1                ; 2 uses
  %min.iters.check824 = icmp ult i32 %i.qf, 7
  %n.vec826 = and i64 %i.qh, 8589934584           ; 3 uses
  %i.qi = add nsw i64 %n.vec826, %smin195.i
  %invariant.gep974 = getelementptr [4 x i8], ptr %invariant.gep275.i, i64 %smin195.i
  %cmp.n833 = icmp eq i64 %i.qh, %n.vec826
  %i.qj = sub nsw i32 0, %i.dg
  %i.qk = sext i32 %i.qj to i64
  %33 = add nsw i64 %i.oa, 1
  %34 = sub nsw i64 %33, %i.qk                    ; 3 uses
  %min.iters.check812 = icmp ult i64 %34, 8
  %n.vec814 = and i64 %34, -8                     ; 3 uses
  %i.ql = add nsw i64 %n.vec814, %i.oq
  %invariant.gep976 = getelementptr [4 x i8], ptr %i.ft, i64 %i.oq
  %cmp.n821 = icmp eq i64 %34, %n.vec814
  %min.iters.check798 = icmp ult i32 %i.dm, 8
  %op.rdx = add i64 %.neg896, 3
  %op.rdx899 = add i64 %op.rdx, %i.fe
  %diff.check796 = icmp ult i64 %op.rdx899, 31
  %or.cond897 = select i1 %min.iters.check798, i1 true, i1 %diff.check796
  %n.vec800 = and i64 %wide.trip.count188.i, 2147483640 ; 3 uses
  %broadcast.splatinsert801 = insertelement <4 x i32> poison, i32 %i.od, i64 0
  %broadcast.splat802 = shufflevector <4 x i32> %broadcast.splatinsert801, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n809 = icmp eq i64 %n.vec800, %wide.trip.count188.i
  %xtraiter940 = and i64 %wide.trip.count188.i, 3 ; 2 uses
  %lcmp.mod941.not = icmp eq i64 %xtraiter940, 0
  %min.iters.check782 = icmp ult i32 %i.dm, 8
  %bound0778 = icmp ult ptr %i.ff, %scevgep777
  %bound1779 = icmp ult ptr %i.oh, %scevgep776
  %found.conflict780 = and i1 %bound0778, %bound1779
  %n.vec784 = and i64 %wide.trip.count188.i, 2147483640 ; 3 uses
  %cmp.n793 = icmp eq i64 %n.vec784, %wide.trip.count188.i
  %xtraiter943 = and i64 %wide.trip.count188.i, 3 ; 2 uses
  %lcmp.mod944.not = icmp eq i64 %xtraiter943, 0
  %i.qm = sub nsw i32 0, %i.dg
  %i.qn = sext i32 %i.qm to i64
  %35 = add nuw nsw i64 %wide.trip.count220.i, 1
  %36 = sub nsw i64 %35, %i.qn                    ; 3 uses
  %min.iters.check760 = icmp ult i64 %36, 8
  %n.vec762 = and i64 %36, -8                     ; 3 uses
  %i.qo = add nsw i64 %n.vec762, %i.oq
  %invariant.gep978 = getelementptr [4 x i8], ptr %i.ft, i64 %i.oq
  %cmp.n772 = icmp eq i64 %36, %n.vec762
  %xtraiter946 = and i64 %wide.trip.count188.i, 1
  %i.qp = icmp eq i64 %i.qe, 0
  %unroll_iter951 = and i64 %wide.trip.count188.i, 2147483646
  %lcmp.mod947.not = icmp eq i64 %xtraiter946, 0
  %lcmp.mod950 = trunc i32 %i.dm to i1
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge112.i, %.lr.ph121.i
  %indvars.iv237.i = phi i64 [ 0, %.lr.ph121.i ], [ %indvars.iv.next238.i, %._crit_edge112.i ] ; 4 uses
  %.0428119.i = phi ptr [ %i.nk, %.lr.ph121.i ], [ %i.aal, %._crit_edge112.i ] ; 4 uses
  %i.qq = trunc i64 %indvars.iv237.i to i32
  %i.qr = add i32 %i.dg, %i.qq
  %i.qs = call i32 @llvm.smax.i32(i32 %i.px, i32 %i.qr)
  %smax843 = sext i32 %i.qs to i64
  %smin844 = call i64 @llvm.smin.i64(i64 %smax843, i64 %i.py) ; 2 uses
  %scevgep845 = getelementptr i8, ptr %scevgep841, i64 %smin844 ; 2 uses
  %scevgep847 = getelementptr i8, ptr %scevgep846, i64 %smin844 ; 2 uses
  %i.qt = load ptr, ptr %i.et, align 8, !tbaa !120 ; 2 uses
  %.not454.i = icmp eq ptr %i.qt, null
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.ej
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv237.i
  %i.qw = select i1 %.not454.i, ptr %i.b, ptr %i.qv
  br i1 %i.ns, label %.lr.ph79.preheader.i, label %.preheader41.i

.lr.ph79.preheader.i:                             ; preds = %bb.ad
  %i.qx = trunc i64 %indvars.iv237.i to i32       ; 3 uses
  %i.qy = add i32 %i.dg, %i.qx                    ; 3 uses
  %i.qz = call i32 @llvm.smax.i32(i32 %i.qy, i32 %i.ds)
  %i.ra = call i32 @llvm.smin.i32(i32 %i.qz, i32 %i.dz)
  %i.rb = sext i32 %i.ra to i64
  %gep128.i = getelementptr i8, ptr %invariant.gep127.i, i64 %i.rb
  %i.rc = call i32 @llvm.smax.i32(i32 %i.qy, i32 %i.nm)
  %i.rd = call i32 @llvm.smin.i32(i32 %i.rc, i32 %i.no)
  %i.re = sext i32 %i.rd to i64
  %gep126.i = getelementptr i8, ptr %invariant.gep123.i, i64 %i.re
  %i.rf = add i32 %i.qx, %i.gq
  %i.rg = call i32 @llvm.smax.i32(i32 %i.rf, i32 %i.nm)
  %..i99 = call i32 @llvm.smin.i32(i32 %i.rg, i32 %i.no)
  %i.rh = sext i32 %..i99 to i64
  %gep124.i = getelementptr i8, ptr %invariant.gep123.i, i64 %i.rh
  %i.ri = add i32 %i.qy, %i.dh
  %i.rj = srem i32 %i.ri, %i.nl                   ; 2 uses
  %i.rk = mul nsw i32 %i.rj, %i.es
  %i.rl = sext i32 %i.rk to i64
  %gep116.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.rl
  %i.rm = srem i32 %i.qx, %i.nl                   ; 2 uses
  %i.rn = mul nsw i32 %i.rm, %i.es
  %i.ro = sext i32 %i.rn to i64
  %gep114.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.ro
  %i.rp = mul i32 %i.pl, %i.rj
  %i.rq = sext i32 %i.rp to i64                   ; 2 uses
  %scevgep837 = getelementptr i8, ptr %scevgep836, i64 %i.rq ; 3 uses
  %scevgep839 = getelementptr i8, ptr %scevgep838, i64 %i.rq ; 3 uses
  %i.rr = mul i32 %i.qd, %i.rm
  %i.rs = sext i32 %i.rr to i64                   ; 2 uses
  %scevgep849 = getelementptr i8, ptr %scevgep848, i64 %i.rs ; 2 uses
  %scevgep851 = getelementptr i8, ptr %scevgep850, i64 %i.rs ; 2 uses
  %bound0852 = icmp ult ptr %scevgep837, %scevgep840
  %bound1853 = icmp ult ptr %i.gf, %scevgep839
  %found.conflict854 = and i1 %bound0852, %bound1853
  %bound0857 = icmp ult ptr %scevgep837, %scevgep847
  %bound1858 = icmp ult ptr %scevgep845, %scevgep839
  %found.conflict859 = and i1 %bound0857, %bound1858
  %i.rt = or i1 %found.conflict859, %stride.check861
  %conflict.rdx862 = or i1 %found.conflict854, %i.rt
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
  %.pre.i = load i32, ptr %i.ny, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check824, label %.lr.ph82.i.preheader, label %vector.ph825

vector.ph825:                                     ; preds = %.lr.ph82.preheader.i
  %broadcast.splatinsert827 = insertelement <4 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat828 = shufflevector <4 x i32> %broadcast.splatinsert827, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body829

vector.body829:                                   ; preds = %vector.body829, %vector.ph825
  %index830 = phi i64 [ 0, %vector.ph825 ], [ %index.next831, %vector.body829 ] ; 2 uses
  %gep975 = getelementptr [4 x i8], ptr %invariant.gep974, i64 %index830 ; 2 uses
  %i.ru = getelementptr i8, ptr %gep975, i64 16
  store <4 x i32> %broadcast.splat828, ptr %gep975, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat828, ptr %i.ru, align 4, !tbaa !8
  %index.next831 = add nuw i64 %index830, 8       ; 2 uses
  %i.rv = icmp eq i64 %index.next831, %n.vec826
  br i1 %i.rv, label %middle.block832, label %vector.body829, !llvm.loop !259

middle.block832:                                  ; preds = %vector.body829
  br i1 %cmp.n833, label %.preheader40.i, label %.lr.ph82.i.preheader

.lr.ph82.i.preheader:                             ; preds = %.lr.ph82.preheader.i, %middle.block832
  %indvars.iv196.i.ph = phi i64 [ %smin195.i, %.lr.ph82.preheader.i ], [ %i.qi, %middle.block832 ]
  br label %.lr.ph82.i

.lr.ph79.i:                                       ; preds = %._crit_edge.i, %.lr.ph79.preheader.i
  %indvars.iv190.i = phi i64 [ %i.oa, %.lr.ph79.preheader.i ], [ %indvars.iv.next191.i, %._crit_edge.i ] ; 2 uses
  %.141176.i = phi ptr [ %i.gf, %.lr.ph79.preheader.i ], [ %i.tn, %._crit_edge.i ] ; 3 uses
  %.141575.i = phi ptr [ %gep116.i, %.lr.ph79.preheader.i ], [ %i.tl, %._crit_edge.i ] ; 3 uses
  %.142374.i = phi ptr [ %gep126.i, %.lr.ph79.preheader.i ], [ %i.to, %._crit_edge.i ] ; 2 uses
  %.042473.i = phi ptr [ %gep124.i, %.lr.ph79.preheader.i ], [ %i.tp, %._crit_edge.i ] ; 2 uses
  %.042572.i = phi ptr [ %gep114.i, %.lr.ph79.preheader.i ], [ %i.tm, %._crit_edge.i ] ; 3 uses
  %.142771.i = phi ptr [ %gep128.i, %.lr.ph79.preheader.i ], [ %i.tq, %._crit_edge.i ] ; 3 uses
  %i.rw = load i8, ptr %.142374.i, align 1, !tbaa !45 ; 2 uses
  %i.rx = zext i8 %i.rw to i32                    ; 2 uses
  br i1 %i.nt, label %.lr.ph70.i.preheader, label %._crit_edge.i

.lr.ph70.i.preheader:                             ; preds = %.lr.ph79.i
  %brmerge980 = select i1 %min.iters.check882, i1 true, i1 %conflict.rdx880
  br i1 %brmerge980, label %.lr.ph70.i.preheader902, label %vector.ph883

vector.ph883:                                     ; preds = %.lr.ph70.i.preheader
  %broadcast.splatinsert885 = insertelement <4 x i32> poison, i32 %i.rx, i64 0
  %broadcast.splat886 = shufflevector <4 x i32> %broadcast.splatinsert885, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body887

vector.body887:                                   ; preds = %vector.body887, %vector.ph883
  %index888 = phi i64 [ 0, %vector.ph883 ], [ %index.next892, %vector.body887 ] ; 5 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.142771.i, i64 %index888
  %wide.load889 = load <4 x i8>, ptr %i.ry, align 1, !tbaa !45, !alias.scope !260
  %i.rz = zext <4 x i8> %wide.load889 to <4 x i32>
  %i.sa = sub nsw <4 x i32> %broadcast.splat886, %i.rz
  %i.sb = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.sa, i1 true) ; 2 uses
  %i.sc = trunc nuw <4 x i32> %i.sb to <4 x i8>
  %i.sd = getelementptr inbounds nuw i8, ptr %.141575.i, i64 %index888
  store <4 x i8> %i.sc, ptr %i.sd, align 1, !tbaa !45, !alias.scope !263, !noalias !265
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.141176.i, i64 %index888 ; 2 uses
  %wide.load890 = load <4 x i32>, ptr %i.se, align 4, !tbaa !8, !alias.scope !268, !noalias !269
  %i.sf = add nsw <4 x i32> %i.sb, %wide.load890
  %i.sg = getelementptr inbounds nuw i8, ptr %.042572.i, i64 %index888
  %wide.load891 = load <4 x i8>, ptr %i.sg, align 1, !tbaa !45, !alias.scope !270
  %i.sh = zext <4 x i8> %wide.load891 to <4 x i32>
  %i.si = sub <4 x i32> %i.sf, %i.sh
  store <4 x i32> %i.si, ptr %i.se, align 4, !tbaa !8, !alias.scope !268, !noalias !269
  %index.next892 = add nuw i64 %index888, 4       ; 2 uses
  %i.sj = icmp eq i64 %index.next892, %n.vec884
  br i1 %i.sj, label %middle.block893, label %vector.body887, !llvm.loop !271

middle.block893:                                  ; preds = %vector.body887
  br i1 %cmp.n894, label %._crit_edge.i, label %.lr.ph70.i.preheader902

.lr.ph70.i.preheader902:                          ; preds = %.lr.ph70.i.preheader, %middle.block893
  %indvars.iv185.i.ph = phi i64 [ %n.vec884, %middle.block893 ], [ 0, %.lr.ph70.i.preheader ]
  br label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.preheader902, %.lr.ph70.i
  %indvars.iv185.i = phi i64 [ %indvars.iv.next186.i, %.lr.ph70.i ], [ %indvars.iv185.i.ph, %.lr.ph70.i.preheader902 ] ; 5 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.142771.i, i64 %indvars.iv185.i
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !45
  %i.sm = zext i8 %i.sl to i32
  %i.sn = sub nsw i32 %i.rx, %i.sm
  %i.so = call i32 @llvm.abs.i32(i32 %i.sn, i1 true) ; 2 uses
  %i.sp = trunc nuw i32 %i.so to i8
  %i.sq = getelementptr inbounds nuw i8, ptr %.141575.i, i64 %indvars.iv185.i
  store i8 %i.sp, ptr %i.sq, align 1, !tbaa !45
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %.141176.i, i64 %indvars.iv185.i ; 2 uses
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !8
  %i.st = add nsw i32 %i.so, %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %.042572.i, i64 %indvars.iv185.i
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !45
  %i.sw = zext i8 %i.sv to i32
  %i.sx = sub i32 %i.st, %i.sw
  store i32 %i.sx, ptr %i.sr, align 4, !tbaa !8
  %indvars.iv.next186.i = add nuw nsw i64 %indvars.iv185.i, 1 ; 2 uses
  %exitcond189.not.i = icmp eq i64 %indvars.iv.next186.i, %wide.trip.count188.i
  br i1 %exitcond189.not.i, label %._crit_edge.i, label %.lr.ph70.i, !llvm.loop !272

._crit_edge.i:                                    ; preds = %.lr.ph70.i, %middle.block893, %.lr.ph79.i
  %i.sy = zext i8 %i.rw to i64
  %i.sz = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.sy
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !45
  %i.tb = zext i8 %i.ta to i32
  %i.tc = load i8, ptr %.042473.i, align 1, !tbaa !45
  %i.td = zext i8 %i.tc to i64
  %i.te = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !45
  %i.tg = zext i8 %i.tf to i32
  %i.th = sub nsw i32 %i.tb, %i.tg
  %i.ti = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv190.i ; 2 uses
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !8
  %i.tk = add nsw i32 %i.th, %i.tj
  store i32 %i.tk, ptr %i.ti, align 4, !tbaa !8
end_hunk_1
begin_hunk_2_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i290
  %xtraiter920 = and i64 %wide.trip.count.i290, 1
  %lcmp.mod921.not = icmp eq i64 %xtraiter920, 0
  %i.aeo = add nsw i64 %wide.trip.count.i290, -1
  br label %.lr.ph51.us.i291

.lr.ph51.us.i291:                                 ; preds = %._crit_edge52.split.us.us.i313, %.lr.ph51.us.preheader.i286
  %indvar = phi i32 [ %indvar.next, %._crit_edge52.split.us.us.i313 ], [ 0, %.lr.ph51.us.preheader.i286 ] ; 3 uses
  %indvars.iv144.i292 = phi i64 [ %indvars.iv.next145.i314, %._crit_edge52.split.us.us.i313 ], [ %i.adt, %.lr.ph51.us.preheader.i286 ] ; 2 uses
  %i.aep = mul i32 %i.adx, %indvar
  %i.aeq = sext i32 %i.aep to i64                 ; 2 uses
  %scevgep413 = getelementptr i8, ptr %scevgep, i64 %i.aeq ; 2 uses
  %scevgep415 = getelementptr i8, ptr %scevgep414, i64 %i.aeq ; 2 uses
  %i.aer = add i32 %indvar, %i.adc
  %i.aes = call i32 @llvm.smax.i32(i32 %i.aej, i32 %i.aer)
  %i.aet = call i32 @llvm.smin.i32(i32 %i.aes, i32 %i.dz)
  %smin418 = sext i32 %i.aet to i64               ; 2 uses
  %scevgep419 = getelementptr i8, ptr %scevgep417, i64 %smin418 ; 2 uses
  %scevgep421 = getelementptr i8, ptr %scevgep420, i64 %smin418 ; 2 uses
  %i.aeu = trunc nsw i64 %indvars.iv144.i292 to i32 ; 3 uses
  %i.aev = add i32 %i.dh, %i.aeu
  %i.aew = mul nsw i32 %i.aev, %i.abe
  %i.aex = sext i32 %i.aew to i64
  %gep.us.i293 = getelementptr i8, ptr %invariant.gep.i101, i64 %i.aex
  %.sroa.speculated15.us.i294 = call i32 @llvm.smax.i32(i32 %i.aeu, i32 %i.ade)
  %.sroa.speculated11.us.i295 = call i32 @llvm.smin.i32(i32 %i.adg, i32 %.sroa.speculated15.us.i294)
  %i.aey = sext i32 %.sroa.speculated11.us.i295 to i64
  %gep55.us.i296 = getelementptr i8, ptr %invariant.gep54.i268, i64 %i.aey
  %.sroa.speculated6.us.i297 = call i32 @llvm.smax.i32(i32 %i.aeu, i32 %i.ds)
  %.sroa.speculated.us.i298 = call i32 @llvm.smin.i32(i32 %i.dz, i32 %.sroa.speculated6.us.i297)
  %i.aez = sext i32 %.sroa.speculated.us.i298 to i64
  %gep57.us.i299 = getelementptr i8, ptr %invariant.gep56.i269, i64 %i.aez
  %bound0 = icmp ult ptr %scevgep413, %scevgep416
  %bound1 = icmp ult ptr %i.acr, %scevgep415
  %found.conflict = and i1 %bound0, %bound1
  %bound0422 = icmp ult ptr %scevgep413, %scevgep421
  %bound1423 = icmp ult ptr %scevgep419, %scevgep415
  %found.conflict424 = and i1 %bound0422, %bound1423
  %i.afa = or i1 %found.conflict424, %stride.check
  %conflict.rdx = or i1 %found.conflict, %i.afa
  %bound0425 = icmp ult ptr %i.acr, %scevgep421
  %bound1426 = icmp ult ptr %scevgep419, %scevgep416
  %found.conflict427 = and i1 %bound0425, %bound1426
  %conflict.rdx429 = or i1 %found.conflict427, %conflict.rdx
  br label %.lr.ph.us.us.i300

.lr.ph.us.us.i300:                                ; preds = %._crit_edge.us.us.i309, %.lr.ph51.us.i291
  %indvars.iv139.i301 = phi i64 [ %indvars.iv.next140.i310, %._crit_edge.us.us.i309 ], [ %i.ado, %.lr.ph51.us.i291 ] ; 2 uses
  %.041048.us.us.i302 = phi ptr [ %i.agy, %._crit_edge.us.us.i309 ], [ %i.acr, %.lr.ph51.us.i291 ] ; 5 uses
  %.041447.us.us.i303 = phi ptr [ %i.agz, %._crit_edge.us.us.i309 ], [ %gep.us.i293, %.lr.ph51.us.i291 ] ; 5 uses
  %.042246.us.us.i304 = phi ptr [ %i.aha, %._crit_edge.us.us.i309 ], [ %gep55.us.i296, %.lr.ph51.us.i291 ] ; 2 uses
  %.042645.us.us.i305 = phi ptr [ %i.ahb, %._crit_edge.us.us.i309 ], [ %gep57.us.i299, %.lr.ph51.us.i291 ] ; 5 uses
  %i.afb = load i8, ptr %.042246.us.us.i304, align 1, !tbaa !45 ; 2 uses
  %i.afc = zext i8 %i.afb to i32                  ; 4 uses
  %brmerge982 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx429
  br i1 %brmerge982, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.i300
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.afc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %.042645.us.us.i305, i64 %index
  %wide.load = load <4 x i8>, ptr %i.afd, align 1, !tbaa !45, !alias.scope !295
  %i.afe = zext <4 x i8> %wide.load to <4 x i32>
  %i.aff = sub nsw <4 x i32> %broadcast.splat, %i.afe
  %i.afg = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aff, i1 true) ; 2 uses
  %i.afh = trunc nuw <4 x i32> %i.afg to <4 x i8>
  %i.afi = getelementptr inbounds nuw i8, ptr %.041447.us.us.i303, i64 %index
  store <4 x i8> %i.afh, ptr %i.afi, align 1, !tbaa !45, !alias.scope !298, !noalias !300
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %.041048.us.us.i302, i64 %index ; 2 uses
  %wide.load430 = load <4 x i32>, ptr %i.afj, align 4, !tbaa !8, !alias.scope !302, !noalias !295
  %i.afk = add nsw <4 x i32> %i.afg, %wide.load430
  store <4 x i32> %i.afk, ptr %i.afj, align 4, !tbaa !8, !alias.scope !302, !noalias !295
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.afl = icmp eq i64 %index.next, %n.vec
  br i1 %i.afl, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.i309, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.i300, %middle.block
  %indvars.iv135.i306.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.i300 ] ; 6 uses
  br i1 %lcmp.mod921.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.afm = getelementptr inbounds nuw i8, ptr %.042645.us.us.i305, i64 %indvars.iv135.i306.ph
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !45
  %i.afo = zext i8 %i.afn to i32
  %i.afp = sub nsw i32 %i.afc, %i.afo
  %i.afq = call i32 @llvm.abs.i32(i32 %i.afp, i1 true) ; 2 uses
  %i.afr = trunc nuw i32 %i.afq to i8
  %i.afs = getelementptr inbounds nuw i8, ptr %.041447.us.us.i303, i64 %indvars.iv135.i306.ph
  store i8 %i.afr, ptr %i.afs, align 1, !tbaa !45
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %.041048.us.us.i302, i64 %indvars.iv135.i306.ph ; 2 uses
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !8
  %i.afv = add nsw i32 %i.afq, %i.afu
  store i32 %i.afv, ptr %i.aft, align 4, !tbaa !8
  %indvars.iv.next136.i307.prol = or disjoint i64 %indvars.iv135.i306.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv135.i306.unr = phi i64 [ %indvars.iv135.i306.ph, %scalar.ph.preheader ], [ %indvars.iv.next136.i307.prol, %scalar.ph.prol ]
  %i.afw = icmp eq i64 %indvars.iv135.i306.ph, %i.aeo
  br i1 %i.afw, label %._crit_edge.us.us.i309, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv135.i306 = phi i64 [ %indvars.iv.next136.i307.1, %scalar.ph ], [ %indvars.iv135.i306.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %.042645.us.us.i305, i64 %indvars.iv135.i306
  %i.afy = load i8, ptr %i.afx, align 1, !tbaa !45
  %i.afz = zext i8 %i.afy to i32
  %i.aga = sub nsw i32 %i.afc, %i.afz
  %i.agb = call i32 @llvm.abs.i32(i32 %i.aga, i1 true) ; 2 uses
  %i.agc = trunc nuw i32 %i.agb to i8
  %i.agd = getelementptr inbounds nuw i8, ptr %.041447.us.us.i303, i64 %indvars.iv135.i306
  store i8 %i.agc, ptr %i.agd, align 1, !tbaa !45
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %.041048.us.us.i302, i64 %indvars.iv135.i306 ; 2 uses
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !8
  %i.agg = add nsw i32 %i.agb, %i.agf
  store i32 %i.agg, ptr %i.age, align 4, !tbaa !8
  %indvars.iv.next136.i307 = add nuw nsw i64 %indvars.iv135.i306, 1 ; 3 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %.042645.us.us.i305, i64 %indvars.iv.next136.i307
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !45
  %i.agj = zext i8 %i.agi to i32
  %i.agk = sub nsw i32 %i.afc, %i.agj
  %i.agl = call i32 @llvm.abs.i32(i32 %i.agk, i1 true) ; 2 uses
  %i.agm = trunc nuw i32 %i.agl to i8
  %i.agn = getelementptr inbounds nuw i8, ptr %.041447.us.us.i303, i64 %indvars.iv.next136.i307
  store i8 %i.agm, ptr %i.agn, align 1, !tbaa !45
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %.041048.us.us.i302, i64 %indvars.iv.next136.i307 ; 2 uses
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !8
  %i.agq = add nsw i32 %i.agl, %i.agp
  store i32 %i.agq, ptr %i.ago, align 4, !tbaa !8
  %indvars.iv.next136.i307.1 = add nuw nsw i64 %indvars.iv135.i306, 2 ; 2 uses
  %exitcond138.not.i308.1 = icmp eq i64 %indvars.iv.next136.i307.1, %wide.trip.count.i290
  br i1 %exitcond138.not.i308.1, label %._crit_edge.us.us.i309, label %scalar.ph, !llvm.loop !304

._crit_edge.us.us.i309:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.agr = zext i8 %i.afb to i64
  %i.ags = getelementptr inbounds nuw i8, ptr %i.abm, i64 %i.agr
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !45
  %i.agu = zext i8 %i.agt to i32
  %i.agv = getelementptr inbounds [4 x i8], ptr %i.acf, i64 %indvars.iv139.i301 ; 2 uses
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !8
  %i.agx = add nsw i32 %i.agw, %i.agu
  store i32 %i.agx, ptr %i.agv, align 4, !tbaa !8
  %indvars.iv.next140.i310 = add nsw i64 %indvars.iv139.i301, 1 ; 2 uses
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %.041048.us.us.i302, i64 %i.adl
  %i.agz = getelementptr inbounds nuw i8, ptr %.041447.us.us.i303, i64 %i.adl
  %i.aha = getelementptr inbounds i8, ptr %.042246.us.us.i304, i64 %i.adm
  %i.ahb = getelementptr inbounds i8, ptr %.042645.us.us.i305, i64 %i.adm
  %lftr.wideiv142.i311 = trunc i64 %indvars.iv.next140.i310 to i32
  %exitcond143.not.i312 = icmp eq i32 %i.abc, %lftr.wideiv142.i311
  br i1 %exitcond143.not.i312, label %._crit_edge52.split.us.us.i313, label %.lr.ph.us.us.i300, !llvm.loop !305

._crit_edge52.split.us.us.i313:                   ; preds = %._crit_edge.us.us.i309
  %indvars.iv.next145.i314 = add nsw i64 %indvars.iv144.i292, 1 ; 2 uses
  %exitcond149.not.i315 = icmp eq i64 %indvars.iv.next145.i314, %wide.trip.count148.i289
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond149.not.i315, label %.preheader43.i102, label %.lr.ph51.us.i291, !llvm.loop !306

.preheader43.i102:                                ; preds = %._crit_edge52.split.i284, %._crit_edge52.split.us.us.i313, %.lr.ph.i267, %bb.aq
  %i.ahc = icmp sgt i32 %i.dx, 0                  ; 2 uses
  br i1 %i.ahc, label %.preheader42.lr.ph.i215, label %._crit_edge67.i103

.preheader42.lr.ph.i215:                          ; preds = %.preheader43.i102
  %i.ahd = icmp sgt i32 %i.dq, 0
  %i.ahe = add nuw i32 %i.dr, 1
  %i.ahf = add i32 %i.ahe, %i.dz                  ; 3 uses
  %i.ahg = icmp slt i32 %i.ahf, %i.dv             ; 2 uses
  br i1 %i.ahd, label %.preheader42.lr.ph.split.us.i231, label %.preheader42.lr.ph.split.i216

.preheader42.lr.ph.split.us.i231:                 ; preds = %.preheader42.lr.ph.i215
  br i1 %i.ahg, label %.preheader42.us.us.preheader.i246, label %.preheader42.us.preheader.i232

.preheader42.us.preheader.i232:                   ; preds = %.preheader42.lr.ph.split.us.i231
  %sext259.i233 = shl i64 %i.abb, 32
  %i.ahh = ashr exact i64 %sext259.i233, 32
  %wide.trip.count168.i234 = zext nneg i32 %i.dx to i64
  %wide.trip.count163.i235 = zext nneg i32 %i.dq to i64 ; 3 uses
  %min.iters.check444 = icmp ult i32 %i.dq, 8
  %n.vec446 = and i64 %wide.trip.count163.i235, 2147483640 ; 3 uses
  %broadcast.splatinsert447 = insertelement <4 x i32> poison, i32 %i.aar, i64 0
  %broadcast.splat448 = shufflevector <4 x i32> %broadcast.splatinsert447, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n453 = icmp eq i64 %n.vec446, %wide.trip.count163.i235
  br label %.preheader42.us.i236

.preheader42.us.us.preheader.i246:                ; preds = %.preheader42.lr.ph.split.us.i231
  %i.ahi = sext i32 %i.ahf to i64                 ; 3 uses
  %sext260.i247 = shl i64 %i.abb, 32
  %i.ahj = ashr exact i64 %sext260.i247, 32
  %wide.trip.count183.i248 = zext nneg i32 %i.dx to i64
  %wide.trip.count173.i249 = zext nneg i32 %i.dq to i64 ; 3 uses
  %min.iters.check468 = icmp ult i32 %i.dq, 8
  %n.vec470 = and i64 %wide.trip.count173.i249, 2147483640 ; 3 uses
  %broadcast.splatinsert471 = insertelement <4 x i32> poison, i32 %i.aar, i64 0
  %broadcast.splat472 = shufflevector <4 x i32> %broadcast.splatinsert471, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n477 = icmp eq i64 %n.vec470, %wide.trip.count173.i249
  %37 = xor i32 %i.do, -1
  %i.ahk = zext i32 %37 to i64
  %i.ahl = add nuw nsw i64 %i.ahk, 1              ; 2 uses
  %min.iters.check456 = icmp ugt i32 %i.do, -8
  %n.vec458 = and i64 %i.ahl, 8589934584          ; 3 uses
  %i.ahm = add nsw i64 %n.vec458, %i.ahi
  %broadcast.splatinsert459 = insertelement <4 x i32> poison, i32 %i.aar, i64 0
  %broadcast.splat460 = shufflevector <4 x i32> %broadcast.splatinsert459, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n465 = icmp eq i64 %i.ahl, %n.vec458
  br label %.preheader42.us.us.i250

.preheader42.us.us.i250:                          ; preds = %._crit_edge65.us.us.i264, %.preheader42.us.us.preheader.i246
  %indvars.iv180.i251 = phi i64 [ 0, %.preheader42.us.us.preheader.i246 ], [ %indvars.iv.next181.i265, %._crit_edge65.us.us.i264 ] ; 2 uses
  %i.ahn = mul nsw i64 %indvars.iv180.i251, %i.ahj
  %invariant.gep271.i252 = getelementptr [4 x i8], ptr %.val86, i64 %i.ahn ; 4 uses
  br i1 %min.iters.check468, label %scalar.ph467.preheader, label %vector.body473

vector.body473:                                   ; preds = %.preheader42.us.us.i250, %vector.body473
  %index474 = phi i64 [ %index.next475, %vector.body473 ], [ 0, %.preheader42.us.us.i250 ] ; 2 uses
  %i.aho = getelementptr [4 x i8], ptr %invariant.gep271.i252, i64 %index474 ; 2 uses
  %i.ahp = getelementptr i8, ptr %i.aho, i64 16
  store <4 x i32> %broadcast.splat472, ptr %i.aho, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat472, ptr %i.ahp, align 4, !tbaa !8
  %index.next475 = add nuw i64 %index474, 8       ; 2 uses
  %i.ahq = icmp eq i64 %index.next475, %n.vec470
  br i1 %i.ahq, label %middle.block476, label %vector.body473, !llvm.loop !307

middle.block476:                                  ; preds = %vector.body473
  br i1 %cmp.n477, label %._crit_edge.us.us68.i257.preheader, label %scalar.ph467.preheader

scalar.ph467.preheader:                           ; preds = %.preheader42.us.us.i250, %middle.block476
  %indvars.iv170.i253.ph = phi i64 [ 0, %.preheader42.us.us.i250 ], [ %n.vec470, %middle.block476 ]
  br label %scalar.ph467

scalar.ph467:                                     ; preds = %scalar.ph467.preheader, %scalar.ph467
  %indvars.iv170.i253 = phi i64 [ %indvars.iv.next171.i255, %scalar.ph467 ], [ %indvars.iv170.i253.ph, %scalar.ph467.preheader ] ; 2 uses
  %gep272.i254 = getelementptr [4 x i8], ptr %invariant.gep271.i252, i64 %indvars.iv170.i253
  store i32 %i.aar, ptr %gep272.i254, align 4, !tbaa !8
  %indvars.iv.next171.i255 = add nuw nsw i64 %indvars.iv170.i253, 1 ; 2 uses
  %exitcond174.not.i256 = icmp eq i64 %indvars.iv.next171.i255, %wide.trip.count173.i249
  br i1 %exitcond174.not.i256, label %._crit_edge.us.us68.i257.preheader, label %scalar.ph467, !llvm.loop !308

._crit_edge.us.us68.i257.preheader:               ; preds = %scalar.ph467, %middle.block476
  br i1 %min.iters.check456, label %._crit_edge.us.us68.i257.preheader916, label %vector.ph457

vector.ph457:                                     ; preds = %._crit_edge.us.us68.i257.preheader
  %invariant.gep958 = getelementptr [4 x i8], ptr %invariant.gep271.i252, i64 %i.ahi
  br label %vector.body461

vector.body461:                                   ; preds = %vector.body461, %vector.ph457
  %index462 = phi i64 [ 0, %vector.ph457 ], [ %index.next463, %vector.body461 ] ; 2 uses
  %gep959 = getelementptr [4 x i8], ptr %invariant.gep958, i64 %index462 ; 2 uses
  %i.ahr = getelementptr i8, ptr %gep959, i64 16
  store <4 x i32> %broadcast.splat460, ptr %gep959, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat460, ptr %i.ahr, align 4, !tbaa !8
  %index.next463 = add nuw i64 %index462, 8       ; 2 uses
  %i.ahs = icmp eq i64 %index.next463, %n.vec458
  br i1 %i.ahs, label %middle.block464, label %vector.body461, !llvm.loop !309

middle.block464:                                  ; preds = %vector.body461
  br i1 %cmp.n465, label %._crit_edge65.us.us.i264, label %._crit_edge.us.us68.i257.preheader916

._crit_edge.us.us68.i257.preheader916:            ; preds = %._crit_edge.us.us68.i257.preheader, %middle.block464
  %indvars.iv175.i259.ph = phi i64 [ %i.ahi, %._crit_edge.us.us68.i257.preheader ], [ %i.ahm, %middle.block464 ]
  br label %._crit_edge.us.us68.i257

._crit_edge.us.us68.i257:                         ; preds = %._crit_edge.us.us68.i257.preheader916, %._crit_edge.us.us68.i257
  %indvars.iv175.i259 = phi i64 [ %indvars.iv.next176.i261, %._crit_edge.us.us68.i257 ], [ %indvars.iv175.i259.ph, %._crit_edge.us.us68.i257.preheader916 ] ; 2 uses
  %gep274.i260 = getelementptr [4 x i8], ptr %invariant.gep271.i252, i64 %indvars.iv175.i259
  store i32 %i.aar, ptr %gep274.i260, align 4, !tbaa !8
  %indvars.iv.next176.i261 = add nsw i64 %indvars.iv175.i259, 1 ; 2 uses
  %lftr.wideiv178.i262 = trunc i64 %indvars.iv.next176.i261 to i32
  %exitcond179.not.i263 = icmp eq i32 %i.dv, %lftr.wideiv178.i262
  br i1 %exitcond179.not.i263, label %._crit_edge65.us.us.i264, label %._crit_edge.us.us68.i257, !llvm.loop !310

._crit_edge65.us.us.i264:                         ; preds = %._crit_edge.us.us68.i257, %middle.block464
  %indvars.iv.next181.i265 = add nuw nsw i64 %indvars.iv180.i251, 1 ; 2 uses
  %exitcond184.not.i266 = icmp eq i64 %indvars.iv.next181.i265, %wide.trip.count183.i248
  br i1 %exitcond184.not.i266, label %._crit_edge67.i103, label %.preheader42.us.us.i250, !llvm.loop !311

.preheader42.us.i236:                             ; preds = %._crit_edge.us.i243, %.preheader42.us.preheader.i232
  %indvars.iv165.i237 = phi i64 [ 0, %.preheader42.us.preheader.i232 ], [ %indvars.iv.next166.i244, %._crit_edge.us.i243 ] ; 2 uses
  %i.aht = mul nsw i64 %indvars.iv165.i237, %i.ahh
  %invariant.gep269.i238 = getelementptr [4 x i8], ptr %.val86, i64 %i.aht ; 2 uses
  br i1 %min.iters.check444, label %scalar.ph443.preheader, label %vector.body449

vector.body449:                                   ; preds = %.preheader42.us.i236, %vector.body449
  %index450 = phi i64 [ %index.next451, %vector.body449 ], [ 0, %.preheader42.us.i236 ] ; 2 uses
  %i.ahu = getelementptr [4 x i8], ptr %invariant.gep269.i238, i64 %index450 ; 2 uses
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 16
  store <4 x i32> %broadcast.splat448, ptr %i.ahu, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat448, ptr %i.ahv, align 4, !tbaa !8
  %index.next451 = add nuw i64 %index450, 8       ; 2 uses
  %i.ahw = icmp eq i64 %index.next451, %n.vec446
  br i1 %i.ahw, label %middle.block452, label %vector.body449, !llvm.loop !312

middle.block452:                                  ; preds = %vector.body449
  br i1 %cmp.n453, label %._crit_edge.us.i243, label %scalar.ph443.preheader

scalar.ph443.preheader:                           ; preds = %.preheader42.us.i236, %middle.block452
  %indvars.iv160.i239.ph = phi i64 [ 0, %.preheader42.us.i236 ], [ %n.vec446, %middle.block452 ]
  br label %scalar.ph443

scalar.ph443:                                     ; preds = %scalar.ph443.preheader, %scalar.ph443
  %indvars.iv160.i239 = phi i64 [ %indvars.iv.next161.i241, %scalar.ph443 ], [ %indvars.iv160.i239.ph, %scalar.ph443.preheader ] ; 2 uses
  %gep270.i240 = getelementptr [4 x i8], ptr %invariant.gep269.i238, i64 %indvars.iv160.i239
  store i32 %i.aar, ptr %gep270.i240, align 4, !tbaa !8
  %indvars.iv.next161.i241 = add nuw nsw i64 %indvars.iv160.i239, 1 ; 2 uses
  %exitcond164.not.i242 = icmp eq i64 %indvars.iv.next161.i241, %wide.trip.count163.i235
  br i1 %exitcond164.not.i242, label %._crit_edge.us.i243, label %scalar.ph443, !llvm.loop !313

._crit_edge.us.i243:                              ; preds = %scalar.ph443, %middle.block452
  %indvars.iv.next166.i244 = add nuw nsw i64 %indvars.iv165.i237, 1 ; 2 uses
  %exitcond169.not.i245 = icmp eq i64 %indvars.iv.next166.i244, %wide.trip.count168.i234
  br i1 %exitcond169.not.i245, label %._crit_edge67.i103, label %.preheader42.us.i236, !llvm.loop !311

.preheader42.lr.ph.split.i216:                    ; preds = %.preheader42.lr.ph.i215
  br i1 %i.ahg, label %.preheader42.preheader.i217, label %._crit_edge67.i103

.preheader42.preheader.i217:                      ; preds = %.preheader42.lr.ph.split.i216
  %i.ahx = sext i32 %i.ahf to i64                 ; 3 uses
  %sext258.i218 = shl i64 %i.abb, 32
  %i.ahy = ashr exact i64 %sext258.i218, 32
  %wide.trip.count158.i219 = zext nneg i32 %i.dx to i64
  %38 = xor i32 %i.do, -1
  %i.ahz = zext i32 %38 to i64
  %i.aia = add nuw nsw i64 %i.ahz, 1              ; 2 uses
  %min.iters.check432 = icmp ugt i32 %i.do, -8
  %n.vec434 = and i64 %i.aia, 8589934584          ; 3 uses
  %i.aib = add nsw i64 %n.vec434, %i.ahx
  %broadcast.splatinsert435 = insertelement <4 x i32> poison, i32 %i.aar, i64 0
  %broadcast.splat436 = shufflevector <4 x i32> %broadcast.splatinsert435, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n441 = icmp eq i64 %i.aia, %n.vec434
  br label %.preheader42.i220

.lr.ph51.i274:                                    ; preds = %._crit_edge52.split.i284, %.lr.ph51.preheader.i272
  %storemerge53.i275 = phi i32 [ %i.aje, %._crit_edge52.split.i284 ], [ %i.adc, %.lr.ph51.preheader.i272 ] ; 2 uses
  %.sroa.speculated15.i276 = call i32 @llvm.smax.i32(i32 %storemerge53.i275, i32 %i.ade)
  %.sroa.speculated11.i277 = call i32 @llvm.smin.i32(i32 %i.adg, i32 %.sroa.speculated15.i276)
  %i.aic = sext i32 %.sroa.speculated11.i277 to i64
  %gep55.i278 = getelementptr i8, ptr %invariant.gep54.i268, i64 %i.aic ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph51.i274
  %i.aid = load i8, ptr %gep55.i278, align 1, !tbaa !45
  %i.aie = zext i8 %i.aid to i64
  %i.aif = getelementptr inbounds nuw i8, ptr %i.abm, i64 %i.aie
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !45
  %i.aih = zext i8 %i.aig to i32
  %i.aii = load i32, ptr %i.adr, align 4, !tbaa !8
  %i.aij = add nsw i32 %i.aii, %i.aih
  store i32 %i.aij, ptr %i.adr, align 4, !tbaa !8
  %i.aik = getelementptr inbounds i8, ptr %gep55.i278, i64 %i.adm
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph51.i274
  %indvars.iv.i279.unr = phi i64 [ %i.ado, %.lr.ph51.i274 ], [ %indvars.iv.next.i281.prol, %.prol.loopexit.unr-lcssa ]
  %.042246.i280.unr = phi ptr [ %gep55.i278, %.lr.ph51.i274 ], [ %i.aik, %.prol.loopexit.unr-lcssa ]
  br i1 %i.ads, label %._crit_edge52.split.i284, label %.lr.ph51.i274.new

.lr.ph51.i274.new:                                ; preds = %.prol.loopexit, %.lr.ph51.i274.new
  %indvars.iv.i279 = phi i64 [ %indvars.iv.next.i281.1, %.lr.ph51.i274.new ], [ %indvars.iv.i279.unr, %.prol.loopexit ] ; 3 uses
  %.042246.i280 = phi ptr [ %i.ajd, %.lr.ph51.i274.new ], [ %.042246.i280.unr, %.prol.loopexit ] ; 2 uses
  %i.ail = load i8, ptr %.042246.i280, align 1, !tbaa !45
  %i.aim = zext i8 %i.ail to i64
  %i.ain = getelementptr inbounds nuw i8, ptr %i.abm, i64 %i.aim
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !45
  %i.aip = zext i8 %i.aio to i32
  %i.aiq = getelementptr inbounds [4 x i8], ptr %i.acf, i64 %indvars.iv.i279 ; 2 uses
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !8
  %i.ais = add nsw i32 %i.air, %i.aip
  store i32 %i.ais, ptr %i.aiq, align 4, !tbaa !8
  %i.ait = getelementptr inbounds i8, ptr %.042246.i280, i64 %i.adm ; 2 uses
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !45
  %i.aiv = zext i8 %i.aiu to i64
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.abm, i64 %i.aiv
  %i.aix = load i8, ptr %i.aiw, align 1, !tbaa !45
  %i.aiy = zext i8 %i.aix to i32
  %i.aiz = getelementptr [4 x i8], ptr %i.acf, i64 %indvars.iv.i279
  %i.aja = getelementptr i8, ptr %i.aiz, i64 4    ; 2 uses
  %i.ajb = load i32, ptr %i.aja, align 4, !tbaa !8
  %i.ajc = add nsw i32 %i.ajb, %i.aiy
  store i32 %i.ajc, ptr %i.aja, align 4, !tbaa !8
  %indvars.iv.next.i281.1 = add nsw i64 %indvars.iv.i279, 2 ; 2 uses
  %i.ajd = getelementptr inbounds i8, ptr %i.ait, i64 %i.adm
  %lftr.wideiv.i282.1 = trunc i64 %indvars.iv.next.i281.1 to i32
  %exitcond.not.i283.1 = icmp eq i32 %i.abc, %lftr.wideiv.i282.1
  br i1 %exitcond.not.i283.1, label %._crit_edge52.split.i284, label %.lr.ph51.i274.new, !llvm.loop !305

._crit_edge52.split.i284:                         ; preds = %.lr.ph51.i274.new, %.prol.loopexit
  %i.aje = add nsw i32 %storemerge53.i275, 1      ; 2 uses
  %exitcond134.not.i285 = icmp eq i32 %i.aje, %smax.i273
  br i1 %exitcond134.not.i285, label %.preheader43.i102, label %.lr.ph51.i274, !llvm.loop !306

.preheader42.i220:                                ; preds = %._crit_edge65.i228, %.preheader42.preheader.i217
  %indvars.iv155.i221 = phi i64 [ 0, %.preheader42.preheader.i217 ], [ %indvars.iv.next156.i229, %._crit_edge65.i228 ] ; 2 uses
  %i.ajf = mul nsw i64 %indvars.iv155.i221, %i.ahy
  %invariant.gep268.i222 = getelementptr [4 x i8], ptr %.val86, i64 %i.ajf ; 2 uses
  br i1 %min.iters.check432, label %scalar.ph431.preheader, label %vector.ph433

vector.ph433:                                     ; preds = %.preheader42.i220
  %invariant.gep = getelementptr [4 x i8], ptr %invariant.gep268.i222, i64 %i.ahx
  br label %vector.body437

vector.body437:                                   ; preds = %vector.body437, %vector.ph433
  %index438 = phi i64 [ 0, %vector.ph433 ], [ %index.next439, %vector.body437 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index438 ; 2 uses
  %i.ajg = getelementptr i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat436, ptr %gep, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat436, ptr %i.ajg, align 4, !tbaa !8
  %index.next439 = add nuw i64 %index438, 8       ; 2 uses
  %i.ajh = icmp eq i64 %index.next439, %n.vec434
  br i1 %i.ajh, label %middle.block440, label %vector.body437, !llvm.loop !314

middle.block440:                                  ; preds = %vector.body437
  br i1 %cmp.n441, label %._crit_edge65.i228, label %scalar.ph431.preheader

scalar.ph431.preheader:                           ; preds = %.preheader42.i220, %middle.block440
  %indvars.iv150.i223.ph = phi i64 [ %i.ahx, %.preheader42.i220 ], [ %i.aib, %middle.block440 ]
  br label %scalar.ph431

scalar.ph431:                                     ; preds = %scalar.ph431.preheader, %scalar.ph431
  %indvars.iv150.i223 = phi i64 [ %indvars.iv.next151.i225, %scalar.ph431 ], [ %indvars.iv150.i223.ph, %scalar.ph431.preheader ] ; 2 uses
  %gep.i224 = getelementptr [4 x i8], ptr %invariant.gep268.i222, i64 %indvars.iv150.i223
  store i32 %i.aar, ptr %gep.i224, align 4, !tbaa !8
  %indvars.iv.next151.i225 = add nsw i64 %indvars.iv150.i223, 1 ; 2 uses
  %lftr.wideiv153.i226 = trunc i64 %indvars.iv.next151.i225 to i32
  %exitcond154.not.i227 = icmp eq i32 %i.dv, %lftr.wideiv153.i226
  br i1 %exitcond154.not.i227, label %._crit_edge65.i228, label %scalar.ph431, !llvm.loop !315

._crit_edge65.i228:                               ; preds = %scalar.ph431, %middle.block440
  %indvars.iv.next156.i229 = add nuw nsw i64 %indvars.iv155.i221, 1 ; 2 uses
  %exitcond159.not.i230 = icmp eq i64 %indvars.iv.next156.i229, %wide.trip.count158.i219
  br i1 %exitcond159.not.i230, label %._crit_edge67.i103, label %.preheader42.i220, !llvm.loop !311

._crit_edge67.i103:                               ; preds = %._crit_edge65.i228, %._crit_edge.us.i243, %._crit_edge65.us.us.i264, %.preheader42.lr.ph.split.i216, %.preheader43.i102
  %.not453117.i104 = icmp slt i32 %i.dz, 0
  br i1 %.not453117.i104, label %_ZN2cvL26findStereoCorrespondenceBMIiEEvRKNS_3MatES3_RS1_S4_RKNS_14StereoBMParamsEiiRKNS_8BufferBMEm.exit, label %.lr.ph121.i105

.lr.ph121.i105:                                   ; preds = %._crit_edge67.i103
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %.val86, i64 %i.aav
  %i.ajj = add nsw i32 %i.df, 1                   ; 2 uses
  %i.ajk = sub nsw i32 0, %i.dr                   ; 2 uses
  %i.ajl = xor i32 %i.dr, -1
  %i.ajm = add i32 %i.dv, %i.ajl                  ; 2 uses
  %i.ajn = mul i32 %i.di, %i.aba
  %i.ajo = sext i32 %i.ajn to i64                 ; 3 uses
  %i.ajp = sub nsw i64 0, %i.ajo                  ; 2 uses
  %invariant.gep123.i106 = getelementptr i8, ptr %i.aaw, i64 %i.ajp ; 2 uses
  %invariant.gep127.i107 = getelementptr i8, ptr %i.aay, i64 %i.ajp
  %i.ajq = icmp sgt i32 %i.abc, %i.dj
  %i.ajr = icmp sgt i32 %i.dm, 0                  ; 4 uses
  %i.ajs = sext i32 %i.dm to i64                  ; 7 uses
  %sext.i108 = shl i64 %i.aaz, 32
  %i.ajt = ashr exact i64 %sext.i108, 32          ; 5 uses
  %.not45580.i109 = icmp sgt i32 %i.cw, %i.dg
  %i.aju = sext i32 %i.abc to i64                 ; 3 uses
  %i.ajv = getelementptr [4 x i8], ptr %i.acf, i64 %i.aju
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 -4
  %i.ajx = icmp slt i32 %i.adc, %i.dj
  %i.ajy = sext i32 %i.dj to i64                  ; 5 uses
  %i.ajz = getelementptr inbounds [4 x i8], ptr %i.acf, i64 %i.ajy
  %i.aka = add nsw i32 %i.dg, 2
  %i.akb = sub i32 %i.aka, %i.di                  ; 6 uses
  %i.akc = sub i32 1, %i.di                       ; 3 uses
  %i.akd = mul i32 %i.akc, %i.dm
  %i.ake = sext i32 %i.akd to i64                 ; 2 uses
  %i.akf = getelementptr [4 x i8], ptr %i.abz, i64 %i.ake ; 2 uses
  %i.akg = icmp sge i32 %i.akc, %i.dg
  %i.akh = icmp eq i32 %i.dm, 0
  %i.aki = add nsw i32 %i.abc, -1
  %i.akj = icmp sgt i32 %i.ed, 0
  %i.akk = getelementptr inbounds nuw i8, ptr %i.abp, i64 8
  %i.akl = getelementptr [4 x i8], ptr %i.abr, i64 %i.ajs ; 2 uses
  %i.akm = getelementptr i8, ptr %i.akl, i64 -8
  %smin195.i110 = sext i32 %i.dk to i64           ; 3 uses
  %i.akn = sext i32 %i.dx to i64
  %i.ako = sext i32 %i.adc to i64                 ; 6 uses
  %smax219.i112 = call i32 @llvm.abs.i32(i32 %i.dg, i1 false)
  %i.akp = sext i32 %i.dg to i64
  %sext262.i113 = shl i64 %i.abb, 32
  %i.akq = ashr exact i64 %sext262.i113, 32       ; 3 uses
  %i.akr = add i32 %i.dy, 1
  %i.aks = add i32 %i.akr, %i.ds
  %wide.trip.count240.i114 = zext i32 %i.aks to i64
  %wide.trip.count188.i115 = zext i32 %i.dm to i64 ; 21 uses
  %invariant.gep275.i116 = getelementptr [4 x i8], ptr %i.acf, i64 %i.akn ; 2 uses
  %brmerge.i118 = select i1 %i.akg, i1 true, i1 %i.akh
  %wide.trip.count220.i120 = zext i32 %smax219.i112 to i64 ; 2 uses
  %wide.trip.count235.i121 = zext nneg i32 %i.dx to i64
  %i.akt = shl nuw nsw i64 %wide.trip.count188.i115, 2
  %i.aku = getelementptr i8, ptr %i.abp, i64 %i.akt
  %scevgep493 = getelementptr i8, ptr %i.aku, i64 4
  %i.akv = add i32 %i.dg, %i.di
  %i.akw = add i32 %i.akv, -2
  %i.akx = zext i32 %i.akw to i64
  %i.aky = mul nsw i64 %i.ajs, %i.akx
  %i.akz = add i64 %i.aky, %i.aby
  %i.ala = add i64 %i.akz, %i.ake
  %i.alb = add i64 %i.ala, %wide.trip.count188.i115
  %i.alc = shl i64 %i.alb, 2
  %scevgep494 = getelementptr i8, ptr %i.abv, i64 %i.alc
  %i.ald = shl nsw i64 %i.aby, 2
  %i.ale = add i64 %i.ald, %i.abw
  %i.alf = shl nsw i64 %i.acp, 2
  %.neg = sub i64 %i.alf, %i.ale
  %i.alg = sub nsw i64 %i.aby, %i.acp             ; 2 uses
  %scevgep552 = getelementptr i8, ptr %i.acj, i64 %i.alg
  %i.alh = add i32 %i.dx, %i.di
  %i.ali = add i32 %i.alh, %i.dk                  ; 2 uses
  %i.alj = mul i32 %i.dm, %i.ali
  %i.alk = xor i64 %i.ajy, -1
  %i.all = add nsw i64 %i.alk, %i.aju             ; 2 uses
  %i.alm = mul i64 %i.all, %i.ajs                 ; 2 uses
  %i.aln = add i64 %i.alm, %i.aby
  %i.alo = add i64 %i.aln, %wide.trip.count188.i115
  %i.alp = sub i64 %i.alo, %i.acp                 ; 2 uses
  %scevgep554 = getelementptr i8, ptr %i.acj, i64 %i.alp
  %i.alq = add i64 %i.alm, %i.aby
  %i.alr = add i64 %i.alq, %wide.trip.count188.i115
  %i.als = sub i64 %i.alr, %i.acp
  %i.alt = shl i64 %i.als, 2
  %scevgep556 = getelementptr i8, ptr %i.abv, i64 %i.alt ; 3 uses
  %i.alu = sub nsw i64 %i.aax, %i.ajo
  %scevgep557 = getelementptr i8, ptr %.val, i64 %i.alu
  %i.alv = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %i.alw = zext nneg i32 %i.dz to i64
  %i.alx = mul i64 %i.all, %i.ajt
  %i.aly = add i64 %i.alx, %wide.trip.count188.i115
  %i.alz = add i64 %i.aly, %i.aax
  %i.ama = sub i64 %i.alz, %i.ajo
  %scevgep562 = getelementptr i8, ptr %.val, i64 %i.ama
  %scevgep564 = getelementptr i8, ptr %i.acj, i64 %i.alg
  %i.amb = mul i32 %i.dm, %i.ali
  %scevgep566 = getelementptr i8, ptr %i.acj, i64 %i.alp
  %i.amc = add nsw i64 %wide.trip.count188.i115, -1 ; 2 uses
  %min.iters.check598 = icmp ult i32 %i.dm, 20
  %stride.check577 = icmp slt i64 %i.ajt, 0
  %n.vec600 = and i64 %wide.trip.count188.i115, 2147483644 ; 3 uses
  %cmp.n610 = icmp eq i64 %n.vec600, %wide.trip.count188.i115
  %i.amd = sub i32 %i.dg, %i.dk                   ; 2 uses
  %i.ame = zext i32 %i.amd to i64
  %i.amf = add nuw nsw i64 %i.ame, 1              ; 2 uses
  %min.iters.check540 = icmp ult i32 %i.amd, 7
  %n.vec542 = and i64 %i.amf, 8589934584          ; 3 uses
  %i.amg = add nsw i64 %n.vec542, %smin195.i110
  %invariant.gep960 = getelementptr [4 x i8], ptr %invariant.gep275.i116, i64 %smin195.i110
  %cmp.n549 = icmp eq i64 %i.amf, %n.vec542
  %i.amh = sub nsw i32 0, %i.dg
  %i.ami = sext i32 %i.amh to i64
  %39 = add nsw i64 %i.ajy, 1
  %40 = sub nsw i64 %39, %i.ami                   ; 3 uses
  %min.iters.check528 = icmp ult i64 %40, 8
  %n.vec530 = and i64 %40, -8                     ; 3 uses
  %i.amj = add nsw i64 %n.vec530, %i.ako
  %invariant.gep962 = getelementptr [4 x i8], ptr %i.acf, i64 %i.ako
  %cmp.n537 = icmp eq i64 %40, %n.vec530
  %min.iters.check514 = icmp ult i32 %i.dm, 8
  %op.rdx900 = add i64 %.neg, 3
  %op.rdx901 = add i64 %op.rdx900, %i.abq
  %diff.check = icmp ult i64 %op.rdx901, 31
  %or.cond898 = select i1 %min.iters.check514, i1 true, i1 %diff.check
  %n.vec516 = and i64 %wide.trip.count188.i115, 2147483640 ; 3 uses
  %broadcast.splatinsert517 = insertelement <4 x i32> poison, i32 %i.akb, i64 0
  %broadcast.splat518 = shufflevector <4 x i32> %broadcast.splatinsert517, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n525 = icmp eq i64 %n.vec516, %wide.trip.count188.i115
  %xtraiter922 = and i64 %wide.trip.count188.i115, 3 ; 2 uses
  %lcmp.mod923.not = icmp eq i64 %xtraiter922, 0
  %min.iters.check499 = icmp ult i32 %i.dm, 8
  %bound0495 = icmp ult ptr %i.abr, %scevgep494
  %bound1496 = icmp ult ptr %i.akf, %scevgep493
  %found.conflict497 = and i1 %bound0495, %bound1496
  %n.vec501 = and i64 %wide.trip.count188.i115, 2147483640 ; 3 uses
  %cmp.n510 = icmp eq i64 %n.vec501, %wide.trip.count188.i115
  %xtraiter924 = and i64 %wide.trip.count188.i115, 3 ; 2 uses
  %lcmp.mod925.not = icmp eq i64 %xtraiter924, 0
  %i.amk = sub nsw i32 0, %i.dg
  %i.aml = sext i32 %i.amk to i64
  %41 = add nuw nsw i64 %wide.trip.count220.i120, 1
  %42 = sub nsw i64 %41, %i.aml                   ; 3 uses
  %min.iters.check480 = icmp ult i64 %42, 8
  %n.vec482 = and i64 %42, -8                     ; 3 uses
  %i.amm = add nsw i64 %n.vec482, %i.ako
  %invariant.gep964 = getelementptr [4 x i8], ptr %i.acf, i64 %i.ako
  %cmp.n490 = icmp eq i64 %42, %n.vec482
  %xtraiter927 = and i64 %wide.trip.count188.i115, 1
  %i.amn = icmp eq i64 %i.amc, 0
  %unroll_iter = and i64 %wide.trip.count188.i115, 2147483646
  %lcmp.mod928.not = icmp eq i64 %xtraiter927, 0
  %lcmp.mod931 = trunc i32 %i.dm to i1
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge112.i141, %.lr.ph121.i105
  %indvars.iv237.i124 = phi i64 [ 0, %.lr.ph121.i105 ], [ %indvars.iv.next238.i142, %._crit_edge112.i141 ] ; 4 uses
  %.0428119.i125 = phi ptr [ %i.aji, %.lr.ph121.i105 ], [ %i.awd, %._crit_edge112.i141 ] ; 4 uses
  %i.amo = trunc i64 %indvars.iv237.i124 to i32
  %i.amp = add i32 %i.dg, %i.amo
  %i.amq = call i32 @llvm.smax.i32(i32 %i.alv, i32 %i.amp)
  %smax559 = sext i32 %i.amq to i64
  %smin560 = call i64 @llvm.smin.i64(i64 %smax559, i64 %i.alw) ; 2 uses
  %scevgep561 = getelementptr i8, ptr %scevgep557, i64 %smin560 ; 2 uses
  %scevgep563 = getelementptr i8, ptr %scevgep562, i64 %smin560 ; 2 uses
  %i.amr = load ptr, ptr %i.abf, align 8, !tbaa !120 ; 2 uses
  %.not454.i126 = icmp eq ptr %i.amr, null
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %i.amr, i64 %i.aav
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.ams, i64 %indvars.iv237.i124
  %i.amu = select i1 %.not454.i126, ptr %i.a, ptr %i.amt
  br i1 %i.ajq, label %.lr.ph79.preheader.i193, label %.preheader41.i127

.lr.ph79.preheader.i193:                          ; preds = %bb.ar
  %i.amv = trunc i64 %indvars.iv237.i124 to i32   ; 3 uses
  %i.amw = add i32 %i.dg, %i.amv                  ; 3 uses
  %i.amx = call i32 @llvm.smax.i32(i32 %i.amw, i32 %i.ds)
  %i.amy = call i32 @llvm.smin.i32(i32 %i.amx, i32 %i.dz)
  %i.amz = sext i32 %i.amy to i64
  %gep128.i194 = getelementptr i8, ptr %invariant.gep127.i107, i64 %i.amz
  %i.ana = call i32 @llvm.smax.i32(i32 %i.amw, i32 %i.ajk)
  %i.anb = call i32 @llvm.smin.i32(i32 %i.ana, i32 %i.ajm)
  %i.anc = sext i32 %i.anb to i64
  %gep126.i195 = getelementptr i8, ptr %invariant.gep123.i106, i64 %i.anc
  %i.and = add i32 %i.amv, %i.adc
  %i.ane = call i32 @llvm.smax.i32(i32 %i.and, i32 %i.ajk)
  %..i196 = call i32 @llvm.smin.i32(i32 %i.ane, i32 %i.ajm)
  %i.anf = sext i32 %..i196 to i64
  %gep124.i197 = getelementptr i8, ptr %invariant.gep123.i106, i64 %i.anf
  %i.ang = add i32 %i.amw, %i.dh
  %i.anh = srem i32 %i.ang, %i.ajj                ; 2 uses
  %i.ani = mul nsw i32 %i.anh, %i.abe
  %i.anj = sext i32 %i.ani to i64
  %gep116.i198 = getelementptr i8, ptr %invariant.gep.i101, i64 %i.anj
  %i.ank = srem i32 %i.amv, %i.ajj                ; 2 uses
  %i.anl = mul nsw i32 %i.ank, %i.abe
  %i.anm = sext i32 %i.anl to i64
  %gep114.i199 = getelementptr i8, ptr %invariant.gep.i101, i64 %i.anm
  %i.ann = mul i32 %i.alj, %i.anh
  %i.ano = sext i32 %i.ann to i64                 ; 2 uses
  %scevgep553 = getelementptr i8, ptr %scevgep552, i64 %i.ano ; 3 uses
  %scevgep555 = getelementptr i8, ptr %scevgep554, i64 %i.ano ; 3 uses
  %i.anp = mul i32 %i.amb, %i.ank
  %i.anq = sext i32 %i.anp to i64                 ; 2 uses
  %scevgep565 = getelementptr i8, ptr %scevgep564, i64 %i.anq ; 2 uses
  %scevgep567 = getelementptr i8, ptr %scevgep566, i64 %i.anq ; 2 uses
  %bound0568 = icmp ult ptr %scevgep553, %scevgep556
  %bound1569 = icmp ult ptr %i.acr, %scevgep555
  %found.conflict570 = and i1 %bound0568, %bound1569
  %bound0573 = icmp ult ptr %scevgep553, %scevgep563
  %bound1574 = icmp ult ptr %scevgep561, %scevgep555
  %found.conflict575 = and i1 %bound0573, %bound1574
  %i.anr = or i1 %found.conflict575, %stride.check577
  %conflict.rdx578 = or i1 %found.conflict570, %i.anr
  %bound0579 = icmp ult ptr %scevgep553, %scevgep567
  %bound1580 = icmp ult ptr %scevgep565, %scevgep555
  %found.conflict581 = and i1 %bound0579, %bound1580
  %conflict.rdx584 = or i1 %conflict.rdx578, %found.conflict581
  %bound0585 = icmp ult ptr %i.acr, %scevgep563
  %bound1586 = icmp ult ptr %scevgep561, %scevgep556
  %found.conflict587 = and i1 %bound0585, %bound1586
  %conflict.rdx590 = or i1 %found.conflict587, %conflict.rdx584
  %bound0591 = icmp ult ptr %i.acr, %scevgep567
  %bound1592 = icmp ult ptr %scevgep565, %scevgep556
  %found.conflict593 = and i1 %bound0591, %bound1592
  %conflict.rdx596 = or i1 %conflict.rdx590, %found.conflict593
  br label %.lr.ph79.i200

.preheader41.i127:                                ; preds = %._crit_edge.i208, %bb.ar
  br i1 %.not45580.i109, label %.preheader40.i136, label %.lr.ph82.preheader.i128

.lr.ph82.preheader.i128:                          ; preds = %.preheader41.i127
  %.pre.i129 = load i32, ptr %i.ajw, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check540, label %.lr.ph82.i130.preheader, label %vector.ph541

vector.ph541:                                     ; preds = %.lr.ph82.preheader.i128
  %broadcast.splatinsert543 = insertelement <4 x i32> poison, i32 %.pre.i129, i64 0
  %broadcast.splat544 = shufflevector <4 x i32> %broadcast.splatinsert543, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body545

vector.body545:                                   ; preds = %vector.body545, %vector.ph541
  %index546 = phi i64 [ 0, %vector.ph541 ], [ %index.next547, %vector.body545 ] ; 2 uses
  %gep961 = getelementptr [4 x i8], ptr %invariant.gep960, i64 %index546 ; 2 uses
  %i.ans = getelementptr i8, ptr %gep961, i64 16
  store <4 x i32> %broadcast.splat544, ptr %gep961, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat544, ptr %i.ans, align 4, !tbaa !8
  %index.next547 = add nuw i64 %index546, 8       ; 2 uses
  %i.ant = icmp eq i64 %index.next547, %n.vec542
  br i1 %i.ant, label %middle.block548, label %vector.body545, !llvm.loop !316

middle.block548:                                  ; preds = %vector.body545
  br i1 %cmp.n549, label %.preheader40.i136, label %.lr.ph82.i130.preheader

.lr.ph82.i130.preheader:                          ; preds = %.lr.ph82.preheader.i128, %middle.block548
  %indvars.iv196.i131.ph = phi i64 [ %smin195.i110, %.lr.ph82.preheader.i128 ], [ %i.amg, %middle.block548 ]
  br label %.lr.ph82.i130

.lr.ph79.i200:                                    ; preds = %._crit_edge.i208, %.lr.ph79.preheader.i193
  %indvars.iv190.i201 = phi i64 [ %i.ajy, %.lr.ph79.preheader.i193 ], [ %indvars.iv.next191.i209, %._crit_edge.i208 ] ; 2 uses
  %.141176.i202 = phi ptr [ %i.acr, %.lr.ph79.preheader.i193 ], [ %i.apl, %._crit_edge.i208 ] ; 3 uses
  %.141575.i203 = phi ptr [ %gep116.i198, %.lr.ph79.preheader.i193 ], [ %i.apj, %._crit_edge.i208 ] ; 3 uses
  %.142374.i204 = phi ptr [ %gep126.i195, %.lr.ph79.preheader.i193 ], [ %i.apm, %._crit_edge.i208 ] ; 2 uses
  %.042473.i205 = phi ptr [ %gep124.i197, %.lr.ph79.preheader.i193 ], [ %i.apn, %._crit_edge.i208 ] ; 2 uses
  %.042572.i206 = phi ptr [ %gep114.i199, %.lr.ph79.preheader.i193 ], [ %i.apk, %._crit_edge.i208 ] ; 3 uses
  %.142771.i207 = phi ptr [ %gep128.i194, %.lr.ph79.preheader.i193 ], [ %i.apo, %._crit_edge.i208 ] ; 3 uses
  %i.anu = load i8, ptr %.142374.i204, align 1, !tbaa !45 ; 2 uses
  %i.anv = zext i8 %i.anu to i32                  ; 2 uses
  br i1 %i.ajr, label %.lr.ph70.i211.preheader, label %._crit_edge.i208

.lr.ph70.i211.preheader:                          ; preds = %.lr.ph79.i200
  %brmerge983 = select i1 %min.iters.check598, i1 true, i1 %conflict.rdx596
  br i1 %brmerge983, label %.lr.ph70.i211.preheader910, label %vector.ph599

vector.ph599:                                     ; preds = %.lr.ph70.i211.preheader
  %broadcast.splatinsert601 = insertelement <4 x i32> poison, i32 %i.anv, i64 0
  %broadcast.splat602 = shufflevector <4 x i32> %broadcast.splatinsert601, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body603

vector.body603:                                   ; preds = %vector.body603, %vector.ph599
  %index604 = phi i64 [ 0, %vector.ph599 ], [ %index.next608, %vector.body603 ] ; 5 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %.142771.i207, i64 %index604
  %wide.load605 = load <4 x i8>, ptr %i.anw, align 1, !tbaa !45, !alias.scope !317
  %i.anx = zext <4 x i8> %wide.load605 to <4 x i32>
  %i.any = sub nsw <4 x i32> %broadcast.splat602, %i.anx
  %i.anz = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.any, i1 true) ; 2 uses
  %i.aoa = trunc nuw <4 x i32> %i.anz to <4 x i8>
  %i.aob = getelementptr inbounds nuw i8, ptr %.141575.i203, i64 %index604
  store <4 x i8> %i.aoa, ptr %i.aob, align 1, !tbaa !45, !alias.scope !320, !noalias !322
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %.141176.i202, i64 %index604 ; 2 uses
  %wide.load606 = load <4 x i32>, ptr %i.aoc, align 4, !tbaa !8, !alias.scope !325, !noalias !326
  %i.aod = add nsw <4 x i32> %i.anz, %wide.load606
  %i.aoe = getelementptr inbounds nuw i8, ptr %.042572.i206, i64 %index604
  %wide.load607 = load <4 x i8>, ptr %i.aoe, align 1, !tbaa !45, !alias.scope !327
  %i.aof = zext <4 x i8> %wide.load607 to <4 x i32>
  %i.aog = sub <4 x i32> %i.aod, %i.aof
  store <4 x i32> %i.aog, ptr %i.aoc, align 4, !tbaa !8, !alias.scope !325, !noalias !326
  %index.next608 = add nuw i64 %index604, 4       ; 2 uses
  %i.aoh = icmp eq i64 %index.next608, %n.vec600
  br i1 %i.aoh, label %middle.block609, label %vector.body603, !llvm.loop !328

middle.block609:                                  ; preds = %vector.body603
  br i1 %cmp.n610, label %._crit_edge.i208, label %.lr.ph70.i211.preheader910

.lr.ph70.i211.preheader910:                       ; preds = %.lr.ph70.i211.preheader, %middle.block609
  %indvars.iv185.i212.ph = phi i64 [ %n.vec600, %middle.block609 ], [ 0, %.lr.ph70.i211.preheader ]
  br label %.lr.ph70.i211

.lr.ph70.i211:                                    ; preds = %.lr.ph70.i211.preheader910, %.lr.ph70.i211
  %indvars.iv185.i212 = phi i64 [ %indvars.iv.next186.i213, %.lr.ph70.i211 ], [ %indvars.iv185.i212.ph, %.lr.ph70.i211.preheader910 ] ; 5 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %.142771.i207, i64 %indvars.iv185.i212
  %i.aoj = load i8, ptr %i.aoi, align 1, !tbaa !45
  %i.aok = zext i8 %i.aoj to i32
  %i.aol = sub nsw i32 %i.anv, %i.aok
  %i.aom = call i32 @llvm.abs.i32(i32 %i.aol, i1 true) ; 2 uses
  %i.aon = trunc nuw i32 %i.aom to i8
  %i.aoo = getelementptr inbounds nuw i8, ptr %.141575.i203, i64 %indvars.iv185.i212
  store i8 %i.aon, ptr %i.aoo, align 1, !tbaa !45
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %.141176.i202, i64 %indvars.iv185.i212 ; 2 uses
  %i.aoq = load i32, ptr %i.aop, align 4, !tbaa !8
  %i.aor = add nsw i32 %i.aom, %i.aoq
  %i.aos = getelementptr inbounds nuw i8, ptr %.042572.i206, i64 %indvars.iv185.i212
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !45
  %i.aou = zext i8 %i.aot to i32
  %i.aov = sub i32 %i.aor, %i.aou
  store i32 %i.aov, ptr %i.aop, align 4, !tbaa !8
  %indvars.iv.next186.i213 = add nuw nsw i64 %indvars.iv185.i212, 1 ; 2 uses
  %exitcond189.not.i214 = icmp eq i64 %indvars.iv.next186.i213, %wide.trip.count188.i115
  br i1 %exitcond189.not.i214, label %._crit_edge.i208, label %.lr.ph70.i211, !llvm.loop !329

._crit_edge.i208:                                 ; preds = %.lr.ph70.i211, %middle.block609, %.lr.ph79.i200
  %i.aow = zext i8 %i.anu to i64
  %i.aox = getelementptr inbounds nuw i8, ptr %i.abm, i64 %i.aow
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !45
  %i.aoz = zext i8 %i.aoy to i32
  %i.apa = load i8, ptr %.042473.i205, align 1, !tbaa !45
  %i.apb = zext i8 %i.apa to i64
  %i.apc = getelementptr inbounds nuw i8, ptr %i.abm, i64 %i.apb
  %i.apd = load i8, ptr %i.apc, align 1, !tbaa !45
  %i.ape = zext i8 %i.apd to i32
  %i.apf = sub nsw i32 %i.aoz, %i.ape
  %i.apg = getelementptr inbounds [4 x i8], ptr %i.acf, i64 %indvars.iv190.i201 ; 2 uses
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !8
  %i.api = add nsw i32 %i.apf, %i.aph
  store i32 %i.api, ptr %i.apg, align 4, !tbaa !8
  %indvars.iv.next191.i209 = add nsw i64 %indvars.iv190.i201, 1 ; 2 uses
  %i.apj = getelementptr inbounds i8, ptr %.141575.i203, i64 %i.ajs
  %i.apk = getelementptr inbounds i8, ptr %.042572.i206, i64 %i.ajs
  %i.apl = getelementptr inbounds [4 x i8], ptr %.141176.i202, i64 %i.ajs
  %i.apm = getelementptr inbounds i8, ptr %.142374.i204, i64 %i.ajt
end_hunk_2

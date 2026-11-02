Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereobm?download=true
inline.NumInlined: 442
inline.NumDeleted: 208
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  store i32 %.sroa.speculated318, ptr %16, align 4, !tbaa !65, !noalias !324
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 %i.az, ptr %i.bk, align 4, !tbaa !66, !noalias !324
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19, !noalias !324
  store i64 9223372034707292160, ptr %17, align 8, !noalias !324
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %i.bj, ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %17)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19, !noalias !324
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19, !noalias !324
  %i.bl = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.g unwind label %bb.j       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.bm = sitofp i32 %i.ac to double
  %i.bn = insertelement <4 x double> poison, double %i.bm, i64 0
  %i.bo = shufflevector <4 x double> %i.bn, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.bo, ptr %20, align 8, !tbaa !63, !alias.scope !325
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
  %i.bu = load ptr, ptr %i.r, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19, !noalias !326
  store i32 %i.bh, ptr %14, align 4, !tbaa !65, !noalias !326
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %.sroa.speculated, ptr %i.bv, align 4, !tbaa !66, !noalias !326
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19, !noalias !326
  store i64 9223372034707292160, ptr %15, align 8, !noalias !326
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
  %i.fm = sext i32 %i.fl to i64                   ; 8 uses
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
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !28 ; 4 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fm
  %i.fz = add nsw i32 %i.dm, 2
  %i.ga = sext i32 %i.fz to i64
  %i.gb = shl nsw i64 %i.ga, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fd, i8 0, i64 %i.gb, i1 false)
  %i.gc = mul i32 %i.di, %i.dm
  %i.gd = sext i32 %i.gc to i64                   ; 12 uses
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
  %33 = add i32 %indvar670, %i.gq
  %34 = call i32 @llvm.smax.i32(i32 %i.ho, i32 %33)
  %35 = call i32 @llvm.smin.i32(i32 %34, i32 %i.dz)
  %smin673 = sext i32 %35 to i64
  %scevgep674 = getelementptr i8, ptr %scevgep668, i64 %smin673 ; 2 uses
  %i.ia = mul i32 %i.hy, %indvar670
  %i.ib = sext i32 %i.ia to i64
  %scevgep677 = getelementptr i8, ptr %scevgep676, i64 %i.ib ; 2 uses
  %i.ic = trunc i64 %indvars.iv146.i to i32       ; 3 uses
  %i.id = add i32 %i.dh, %i.ic
  %i.ie = mul i32 %i.id, %i.es
  %i.if = sext i32 %i.ie to i64
  %gep.us.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.if ; 3 uses
  %.sroa.speculated15.us.i = call i32 @llvm.smax.i32(i32 %i.ic, i32 %i.gs)
  %.sroa.speculated11.us.i = call i32 @llvm.smin.i32(i32 %i.gu, i32 %.sroa.speculated15.us.i)
  %i.ig = sext i32 %.sroa.speculated11.us.i to i64
  %gep55.us.i = getelementptr i8, ptr %invariant.gep54.i, i64 %i.ig
  %.sroa.speculated6.us.i = call i32 @llvm.smax.i32(i32 %i.ic, i32 %i.ds)
  %.sroa.speculated.us.i = call i32 @llvm.smin.i32(i32 %i.dz, i32 %.sroa.speculated6.us.i)
  %i.ih = sext i32 %.sroa.speculated.us.i to i64
  %gep57.us.i = getelementptr i8, ptr %invariant.gep56.i, i64 %i.ih ; 3 uses
  %bound0681 = icmp ult ptr %gep.us.i, %scevgep675
  %bound1682 = icmp ult ptr %i.gf, %scevgep677
  %found.conflict683 = and i1 %bound0681, %bound1682
  %bound0684 = icmp ult ptr %gep.us.i, %scevgep674
  %bound1685 = icmp ult ptr %gep57.us.i, %scevgep677
  %found.conflict686 = and i1 %bound0684, %bound1685
  %i.ii = or i1 %found.conflict686, %stride.check687
  %conflict.rdx688 = or i1 %found.conflict683, %i.ii
  %bound0689 = icmp ult ptr %i.gf, %scevgep674
  %bound1690 = icmp ult ptr %gep57.us.i, %scevgep675
  %found.conflict691 = and i1 %bound0689, %bound1690
  %conflict.rdx692 = or i1 %conflict.rdx688, %found.conflict691
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph51.us.i
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %._crit_edge.us.us.i ], [ %i.hc, %.lr.ph51.us.i ] ; 2 uses
  %.041948.us.us.i = phi ptr [ %i.kj, %._crit_edge.us.us.i ], [ %gep57.us.i, %.lr.ph51.us.i ] ; 5 uses
  %.042247.us.us.i = phi ptr [ %i.ki, %._crit_edge.us.us.i ], [ %gep55.us.i, %.lr.ph51.us.i ] ; 2 uses
  %.042446.us.us.i = phi ptr [ %i.kh, %._crit_edge.us.us.i ], [ %gep.us.i, %.lr.ph51.us.i ] ; 5 uses
  %.042645.us.us.i = phi ptr [ %i.kg, %._crit_edge.us.us.i ], [ %i.gf, %.lr.ph51.us.i ] ; 5 uses
  %i.ij = load i8, ptr %.042247.us.us.i, align 1, !tbaa !27 ; 2 uses
  %i.ik = zext i8 %i.ij to i32                    ; 4 uses
  %brmerge = select i1 %min.iters.check679, i1 true, i1 %conflict.rdx692
  br i1 %brmerge, label %scalar.ph678.preheader, label %vector.ph693

vector.ph693:                                     ; preds = %.lr.ph.us.us.i
  %broadcast.splatinsert695 = insertelement <4 x i32> poison, i32 %i.ik, i64 0
  %broadcast.splat696 = shufflevector <4 x i32> %broadcast.splatinsert695, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body697

vector.body697:                                   ; preds = %vector.body697, %vector.ph693
  %index698 = phi i64 [ 0, %vector.ph693 ], [ %index.next701, %vector.body697 ] ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.041948.us.us.i, i64 %index698
  %wide.load699 = load <4 x i8>, ptr %i.il, align 1, !tbaa !27, !alias.scope !333
  %i.im = zext <4 x i8> %wide.load699 to <4 x i32>
  %i.in = sub nsw <4 x i32> %broadcast.splat696, %i.im
  %i.io = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.in, i1 true) ; 2 uses
  %i.ip = trunc nuw <4 x i32> %i.io to <4 x i8>
  %i.iq = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %index698
  store <4 x i8> %i.ip, ptr %i.iq, align 1, !tbaa !27, !alias.scope !334, !noalias !335
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %index698 ; 2 uses
  %wide.load700 = load <4 x i32>, ptr %i.ir, align 4, !tbaa !8, !alias.scope !336, !noalias !333
  %i.is = add nsw <4 x i32> %i.io, %wide.load700
  store <4 x i32> %i.is, ptr %i.ir, align 4, !tbaa !8, !alias.scope !336, !noalias !333
  %index.next701 = add nuw i64 %index698, 4       ; 2 uses
  %i.it = icmp eq i64 %index.next701, %n.vec694
  br i1 %i.it, label %middle.block702, label %vector.body697, !llvm.loop !225

middle.block702:                                  ; preds = %vector.body697
  br i1 %cmp.n703, label %._crit_edge.us.us.i, label %scalar.ph678.preheader

scalar.ph678.preheader:                           ; preds = %.lr.ph.us.us.i, %middle.block702
  %indvars.iv136.i.ph = phi i64 [ %n.vec694, %middle.block702 ], [ 0, %.lr.ph.us.us.i ] ; 6 uses
  br i1 %lcmp.mod1015.not, label %scalar.ph678.prol.loopexit, label %scalar.ph678.prol

scalar.ph678.prol:                                ; preds = %scalar.ph678.preheader
  %i.iu = getelementptr inbounds nuw i8, ptr %.041948.us.us.i, i64 %indvars.iv136.i.ph
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !27
  %i.iw = zext i8 %i.iv to i32
  %i.ix = sub nsw i32 %i.ik, %i.iw
  %i.iy = call i32 @llvm.abs.i32(i32 %i.ix, i1 true) ; 2 uses
  %i.iz = trunc nuw i32 %i.iy to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %indvars.iv136.i.ph
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !27
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %indvars.iv136.i.ph ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !8
  %i.jd = add nsw i32 %i.iy, %i.jc
  store i32 %i.jd, ptr %i.jb, align 4, !tbaa !8
  %indvars.iv.next137.i.prol = or disjoint i64 %indvars.iv136.i.ph, 1
  br label %scalar.ph678.prol.loopexit

scalar.ph678.prol.loopexit:                       ; preds = %scalar.ph678.prol, %scalar.ph678.preheader
  %indvars.iv136.i.unr = phi i64 [ %indvars.iv136.i.ph, %scalar.ph678.preheader ], [ %indvars.iv.next137.i.prol, %scalar.ph678.prol ]
  %i.je = icmp eq i64 %indvars.iv136.i.ph, %i.hz
  br i1 %i.je, label %._crit_edge.us.us.i, label %scalar.ph678

scalar.ph678:                                     ; preds = %scalar.ph678.prol.loopexit, %scalar.ph678
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i.1, %scalar.ph678 ], [ %indvars.iv136.i.unr, %scalar.ph678.prol.loopexit ] ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.041948.us.us.i, i64 %indvars.iv136.i
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !27
  %i.jh = zext i8 %i.jg to i32
  %i.ji = sub nsw i32 %i.ik, %i.jh
  %i.jj = call i32 @llvm.abs.i32(i32 %i.ji, i1 true) ; 2 uses
  %i.jk = trunc nuw i32 %i.jj to i8
  %i.jl = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %indvars.iv136.i
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !27
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %indvars.iv136.i ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !8
  %i.jo = add nsw i32 %i.jj, %i.jn
  store i32 %i.jo, ptr %i.jm, align 4, !tbaa !8
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 1 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.041948.us.us.i, i64 %indvars.iv.next137.i
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !27
  %i.jr = zext i8 %i.jq to i32
  %i.js = sub nsw i32 %i.ik, %i.jr
  %i.jt = call i32 @llvm.abs.i32(i32 %i.js, i1 true) ; 2 uses
  %i.ju = trunc nuw i32 %i.jt to i8
  %i.jv = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %indvars.iv.next137.i
  store i8 %i.ju, ptr %i.jv, align 1, !tbaa !27
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %indvars.iv.next137.i ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !8
  %i.jy = add nsw i32 %i.jt, %i.jx
  store i32 %i.jy, ptr %i.jw, align 4, !tbaa !8
  %indvars.iv.next137.i.1 = add nuw nsw i64 %indvars.iv136.i, 2 ; 2 uses
  %exitcond140.not.i.1 = icmp eq i64 %indvars.iv.next137.i.1, %wide.trip.count139.i
  br i1 %exitcond140.not.i.1, label %._crit_edge.us.us.i, label %scalar.ph678, !llvm.loop !226

._crit_edge.us.us.i:                              ; preds = %scalar.ph678.prol.loopexit, %scalar.ph678, %middle.block702
  %i.jz = zext i8 %i.ij to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.jz
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !27
  %i.kc = zext i8 %i.kb to i32
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv141.i ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !8
  %i.kf = add nsw i32 %i.ke, %i.kc
  store i32 %i.kf, ptr %i.kd, align 4, !tbaa !8
  %indvars.iv.next142.i = add nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %i.gz
  %i.kh = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %i.gz
  %i.ki = getelementptr inbounds i8, ptr %.042247.us.us.i, i64 %i.ha
  %i.kj = getelementptr inbounds i8, ptr %.041948.us.us.i, i64 %i.ha
  %exitcond145.not.i = icmp eq i64 %indvars.iv.next142.i, %wide.trip.count144.i
  br i1 %exitcond145.not.i, label %._crit_edge52.split.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !227

._crit_edge52.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %indvars.iv.next147.i = add nsw i64 %indvars.iv146.i, 1 ; 2 uses
  %exitcond151.not.i = icmp eq i64 %indvars.iv.next147.i, %wide.trip.count150.i
  %indvar.next671 = add i32 %indvar670, 1
  br i1 %exitcond151.not.i, label %.preheader43.i, label %.lr.ph51.us.i, !llvm.loop !228

.preheader43.i:                                   ; preds = %._crit_edge52.split.i, %._crit_edge52.split.us.us.i, %.lr.ph.i, %bb.ac
  %i.kk = icmp sgt i32 %i.dx, 0                   ; 2 uses
  br i1 %i.kk, label %.preheader42.lr.ph.i, label %._crit_edge67.i

.preheader42.lr.ph.i:                             ; preds = %.preheader43.i
  %i.kl = icmp sgt i32 %i.dq, 0
  %i.km = add nuw i32 %i.dr, 1
  %i.kn = add i32 %i.km, %i.dz                    ; 3 uses
  %i.ko = icmp slt i32 %i.kn, %i.dv               ; 2 uses
  br i1 %i.kl, label %.preheader42.lr.ph.split.us.i, label %.preheader42.lr.ph.split.i

.preheader42.lr.ph.split.us.i:                    ; preds = %.preheader42.lr.ph.i
  br i1 %i.ko, label %.preheader42.us.us.preheader.i, label %.preheader42.us.preheader.i

.preheader42.us.preheader.i:                      ; preds = %.preheader42.lr.ph.split.us.i
  %sext260.i = shl i64 %i.ep, 32
  %i.kp = ashr exact i64 %sext260.i, 32
  %wide.trip.count169.i = zext nneg i32 %i.dx to i64
  %wide.trip.count164.i = zext nneg i32 %i.dq to i64 ; 6 uses
  %min.iters.check725 = icmp ult i32 %i.dq, 4
  %min.iters.check727 = icmp ult i32 %i.dq, 16
  %i.kq = and i64 %wide.trip.count164.i, 12
  %n.vec729 = and i64 %wide.trip.count164.i, 2147483632 ; 4 uses
  %broadcast.splatinsert730 = insertelement <8 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat731 = shufflevector <8 x i16> %broadcast.splatinsert730, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n736 = icmp eq i64 %n.vec729, %wide.trip.count164.i
  %min.epilog.iters.check740 = icmp eq i64 %i.kq, 0
  %n.vec743 = and i64 %wide.trip.count164.i, 2147483644 ; 3 uses
  %broadcast.splatinsert744 = insertelement <4 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat745 = shufflevector <4 x i16> %broadcast.splatinsert744, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n750 = icmp eq i64 %n.vec743, %wide.trip.count164.i
  br label %iter.check737

.preheader42.us.us.preheader.i:                   ; preds = %.preheader42.lr.ph.split.us.i
  %i.kr = sext i32 %i.kn to i64                   ; 5 uses
  %sext261.i = shl i64 %i.ep, 32
  %i.ks = ashr exact i64 %sext261.i, 32
  %wide.trip.count184.i = zext nneg i32 %i.dx to i64
  %wide.trip.count174.i = zext nneg i32 %i.dq to i64 ; 6 uses
  %i.kt = xor i32 %i.do, -1
  %i.ku = zext i32 %i.kt to i64
  %i.kv = add nuw nsw i64 %i.ku, 1                ; 5 uses
  %min.iters.check781 = icmp ult i32 %i.dq, 4
  %min.iters.check783 = icmp ult i32 %i.dq, 16
  %i.kw = and i64 %wide.trip.count174.i, 12
  %n.vec785 = and i64 %wide.trip.count174.i, 2147483632 ; 4 uses
  %broadcast.splatinsert786 = insertelement <8 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat787 = shufflevector <8 x i16> %broadcast.splatinsert786, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n792 = icmp eq i64 %n.vec785, %wide.trip.count174.i
  %min.epilog.iters.check796 = icmp eq i64 %i.kw, 0
  %n.vec799 = and i64 %wide.trip.count174.i, 2147483644 ; 3 uses
  %broadcast.splatinsert800 = insertelement <4 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat801 = shufflevector <4 x i16> %broadcast.splatinsert800, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n806 = icmp eq i64 %n.vec799, %wide.trip.count174.i
end_hunk_0
begin_hunk_1_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  %exitcond165.not.i = icmp eq i64 %indvars.iv.next162.i, %wide.trip.count164.i
  br i1 %exitcond165.not.i, label %._crit_edge.us.i, label %vec.epilog.scalar.ph739, !llvm.loop !238

._crit_edge.us.i:                                 ; preds = %vec.epilog.scalar.ph739, %vec.epilog.middle.block749, %middle.block735
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 2 uses
  %exitcond170.not.i = icmp eq i64 %indvars.iv.next167.i, %wide.trip.count169.i
  br i1 %exitcond170.not.i, label %._crit_edge67.i, label %iter.check737, !llvm.loop !235

.preheader42.lr.ph.split.i:                       ; preds = %.preheader42.lr.ph.i
  br i1 %i.ko, label %.preheader42.preheader.i, label %._crit_edge67.i

.preheader42.preheader.i:                         ; preds = %.preheader42.lr.ph.split.i
  %i.lp = sext i32 %i.kn to i64                   ; 5 uses
  %sext259.i = shl i64 %i.ep, 32
  %i.lq = ashr exact i64 %sext259.i, 32
  %wide.trip.count159.i = zext nneg i32 %i.dx to i64
  %i.lr = xor i32 %i.do, -1
  %i.ls = zext i32 %i.lr to i64
  %i.lt = add nuw nsw i64 %i.ls, 1                ; 5 uses
  %min.iters.check706 = icmp ugt i32 %i.do, -4
  %min.iters.check707 = icmp ugt i32 %i.do, -16
  %i.lu = and i64 %i.lt, 12
  %n.vec709 = and i64 %i.lt, 8589934576           ; 4 uses
  %i.lv = add nsw i64 %n.vec709, %i.lp
  %broadcast.splatinsert710 = insertelement <8 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat711 = shufflevector <8 x i16> %broadcast.splatinsert710, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n716 = icmp eq i64 %i.lt, %n.vec709
  %min.epilog.iters.check = icmp eq i64 %i.lu, 0
  %n.vec717 = and i64 %i.lt, 8589934588           ; 3 uses
  %i.lw = add nsw i64 %n.vec717, %i.lp
  %broadcast.splatinsert718 = insertelement <4 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat719 = shufflevector <4 x i16> %broadcast.splatinsert718, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n722 = icmp eq i64 %i.lt, %n.vec717
  br label %iter.check

.lr.ph51.i:                                       ; preds = %._crit_edge52.split.i, %.lr.ph51.preheader.i
  %storemerge53.i = phi i32 [ %i.mz, %._crit_edge52.split.i ], [ %i.gq, %.lr.ph51.preheader.i ] ; 2 uses
  %.sroa.speculated15.i = call i32 @llvm.smax.i32(i32 %storemerge53.i, i32 %i.gs)
  %.sroa.speculated11.i = call i32 @llvm.smin.i32(i32 %i.gu, i32 %.sroa.speculated15.i)
  %i.lx = sext i32 %.sroa.speculated11.i to i64
  %gep55.i = getelementptr i8, ptr %invariant.gep54.i, i64 %i.lx ; 3 uses
  br i1 %lcmp.mod1012.not, label %.prol.loopexit1010, label %.prol.loopexit1010.unr-lcssa

.prol.loopexit1010.unr-lcssa:                     ; preds = %.lr.ph51.i
  %i.ly = load i8, ptr %gep55.i, align 1, !tbaa !27
  %i.lz = zext i8 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.lz
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !27
  %i.mc = zext i8 %i.mb to i32
  %i.md = load i32, ptr %i.he, align 4, !tbaa !8
  %i.me = add nsw i32 %i.md, %i.mc
  store i32 %i.me, ptr %i.he, align 4, !tbaa !8
  %i.mf = getelementptr inbounds i8, ptr %gep55.i, i64 %i.ha
  br label %.prol.loopexit1010

.prol.loopexit1010:                               ; preds = %.prol.loopexit1010.unr-lcssa, %.lr.ph51.i
  %indvars.iv.i.unr = phi i64 [ %i.hc, %.lr.ph51.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit1010.unr-lcssa ]
  %.042247.i.unr = phi ptr [ %gep55.i, %.lr.ph51.i ], [ %i.mf, %.prol.loopexit1010.unr-lcssa ]
  br i1 %i.hg, label %._crit_edge52.split.i, label %.lr.ph51.i.new

.lr.ph51.i.new:                                   ; preds = %.prol.loopexit1010, %.lr.ph51.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph51.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit1010 ] ; 3 uses
  %.042247.i = phi ptr [ %i.my, %.lr.ph51.i.new ], [ %.042247.i.unr, %.prol.loopexit1010 ] ; 2 uses
  %i.mg = load i8, ptr %.042247.i, align 1, !tbaa !27
  %i.mh = zext i8 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !27
  %i.mk = zext i8 %i.mj to i32
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv.i ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !8
  %i.mn = add nsw i32 %i.mm, %i.mk
  store i32 %i.mn, ptr %i.ml, align 4, !tbaa !8
  %i.mo = getelementptr inbounds i8, ptr %.042247.i, i64 %i.ha ; 2 uses
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !27
  %i.mq = zext i8 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !27
  %i.mt = zext i8 %i.ms to i32
  %i.mu = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.i
  %i.mv = getelementptr i8, ptr %i.mu, i64 4      ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !8
  %i.mx = add nsw i32 %i.mw, %i.mt
  store i32 %i.mx, ptr %i.mv, align 4, !tbaa !8
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.my = getelementptr inbounds i8, ptr %i.mo, i64 %i.ha
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge52.split.i, label %.lr.ph51.i.new, !llvm.loop !227

._crit_edge52.split.i:                            ; preds = %.lr.ph51.i.new, %.prol.loopexit1010
  %i.mz = add nsw i32 %storemerge53.i, 1          ; 2 uses
  %exitcond135.not.i = icmp eq i32 %i.mz, %smax.i
  br i1 %exitcond135.not.i, label %.preheader43.i, label %.lr.ph51.i, !llvm.loop !228

iter.check:                                       ; preds = %._crit_edge65.i, %.preheader42.preheader.i
  %indvars.iv156.i = phi i64 [ 0, %.preheader42.preheader.i ], [ %indvars.iv.next157.i, %._crit_edge65.i ] ; 2 uses
  %i.na = mul nsw i64 %indvars.iv156.i, %i.lq
  %invariant.gep267.i = getelementptr [2 x i8], ptr %.val86, i64 %i.na ; 3 uses
  br i1 %min.iters.check706, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check707, label %vec.epilog.ph, label %vector.ph708

vector.ph708:                                     ; preds = %vector.main.loop.iter.check
  %invariant.gep1043 = getelementptr [2 x i8], ptr %invariant.gep267.i, i64 %i.lp
  br label %vector.body712

vector.body712:                                   ; preds = %vector.ph708, %vector.body712
  %index713 = phi i64 [ 0, %vector.ph708 ], [ %index.next714, %vector.body712 ] ; 2 uses
  %gep1044 = getelementptr [2 x i8], ptr %invariant.gep1043, i64 %index713 ; 2 uses
  %i.nb = getelementptr i8, ptr %gep1044, i64 16
  store <8 x i16> %broadcast.splat711, ptr %gep1044, align 2, !tbaa !338
  store <8 x i16> %broadcast.splat711, ptr %i.nb, align 2, !tbaa !338
  %index.next714 = add nuw i64 %index713, 16      ; 2 uses
  %i.nc = icmp eq i64 %index.next714, %n.vec709
  br i1 %i.nc, label %middle.block715, label %vector.body712, !llvm.loop !239

middle.block715:                                  ; preds = %vector.body712
  br i1 %cmp.n716, label %._crit_edge65.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block715
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !339

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec709, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %invariant.gep1045 = getelementptr [2 x i8], ptr %invariant.gep267.i, i64 %i.lp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index720 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next721, %vec.epilog.vector.body ] ; 2 uses
  %gep1046 = getelementptr [2 x i8], ptr %invariant.gep1045, i64 %index720
  store <4 x i16> %broadcast.splat719, ptr %gep1046, align 2, !tbaa !338
  %index.next721 = add nuw i64 %index720, 4       ; 2 uses
  %i.nd = icmp eq i64 %index.next721, %n.vec717
  br i1 %i.nd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !240

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n722, label %._crit_edge65.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv152.i.ph = phi i64 [ %i.lp, %iter.check ], [ %i.lv, %vec.epilog.iter.check ], [ %i.lw, %vec.epilog.middle.block ]
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
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %.val86, i64 %i.ej
  %i.nf = add nsw i32 %i.df, 1                    ; 2 uses
  %i.ng = sub nsw i32 0, %i.dr                    ; 2 uses
  %i.nh = xor i32 %i.dr, -1
  %i.ni = add i32 %i.dv, %i.nh                    ; 2 uses
  %i.nj = mul i32 %i.di, %i.eo
  %i.nk = sext i32 %i.nj to i64                   ; 2 uses
  %i.nl = sub nsw i64 0, %i.nk                    ; 2 uses
  %invariant.gep123.i = getelementptr i8, ptr %i.ek, i64 %i.nl ; 2 uses
  %invariant.gep127.i = getelementptr i8, ptr %i.em, i64 %i.nl
  %i.nm = icmp sgt i32 %i.eq, %i.dj
  %i.nn = icmp sgt i32 %i.dm, 0                   ; 4 uses
  %i.no = sext i32 %i.dm to i64                   ; 8 uses
  %sext.i = shl i64 %i.en, 32
  %i.np = ashr exact i64 %sext.i, 32              ; 5 uses
  %.not45580.i = icmp sgt i32 %i.cw, %i.dg
  %i.nq = sext i32 %i.eq to i64                   ; 3 uses
  %i.nr = getelementptr [4 x i8], ptr %i.ft, i64 %i.nq
  %i.ns = getelementptr i8, ptr %i.nr, i64 -4
  %i.nt = icmp slt i32 %i.gq, %i.dj
  %i.nu = sext i32 %i.dj to i64                   ; 5 uses
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.nu
  %i.nw = add nsw i32 %i.dg, 2
  %i.nx = sub i32 %i.nw, %i.di                    ; 6 uses
  %i.ny = sub i32 1, %i.di                        ; 3 uses
  %i.nz = mul i32 %i.ny, %i.dm
  %i.oa = sext i32 %i.nz to i64                   ; 2 uses
  %i.ob = getelementptr [4 x i8], ptr %i.fn, i64 %i.oa ; 2 uses
  %i.oc = icmp sge i32 %i.ny, %i.dg
  %i.od = icmp eq i32 %i.dm, 0
  %i.oe = add nsw i32 %i.eq, -1
  %i.of = icmp sgt i32 %i.ed, 0
  %i.og = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.oh = getelementptr [4 x i8], ptr %i.ff, i64 %i.no ; 2 uses
  %i.oi = getelementptr i8, ptr %i.oh, i64 -8
  %smin.i = sext i32 %i.dk to i64                 ; 3 uses
  %i.oj = sext i32 %i.dx to i64
  %i.ok = sext i32 %i.gq to i64                   ; 6 uses
  %smax219.i = call i32 @llvm.abs.i32(i32 %i.dg, i1 false)
  %i.ol = sext i32 %i.dg to i64
  %i.om = shl i64 %i.ep, 32
  %i.on = ashr exact i64 %i.om, 32                ; 3 uses
  %i.oo = add i32 %i.dy, 1
  %i.op = add i32 %i.oo, %i.ds
  %wide.trip.count240.i = zext i32 %i.op to i64
  %wide.trip.count189.i = zext i32 %i.dm to i64   ; 21 uses
  %invariant.gep274.i = getelementptr [4 x i8], ptr %i.ft, i64 %i.oj ; 2 uses
  %brmerge.i = select i1 %i.oc, i1 true, i1 %i.od
  %wide.trip.count220.i = zext i32 %smax219.i to i64 ; 2 uses
  %wide.trip.count235.i = zext nneg i32 %i.dx to i64
  %i.oq = add i32 %i.dg, %i.di
  %i.or = add i32 %i.oq, -2
  %i.os = zext i32 %i.or to i64
  %i.ot = mul nsw i64 %i.no, %i.os
  %i.ou = add i64 %i.ot, %i.fm
  %i.ov = add i64 %i.ou, %i.oa
  %i.ow = shl nuw nsw i64 %wide.trip.count189.i, 2
  %i.ox = add i64 %i.ov, %wide.trip.count189.i
  %i.oy = shl i64 %i.ox, 2
  %scevgep830 = getelementptr i8, ptr %i.fj, i64 %i.oy
  %i.oz = getelementptr i8, ptr %i.fd, i64 %i.ow
  %scevgep831 = getelementptr i8, ptr %i.oz, i64 4
  %i.pa = shl nsw i64 %i.fm, 2
  %i.pb = add i64 %i.pa, %i.fk
  %i.pc = shl nsw i64 %i.gd, 2
  %.neg973 = sub i64 %i.pc, %i.pb
  %i.pd = xor i64 %i.nu, -1
  %i.pe = add nsw i64 %i.pd, %i.nq                ; 3 uses
  %i.pf = mul i64 %i.pe, %i.no
  %i.pg = add i64 %i.pf, %i.fm
  %i.ph = add i64 %i.pg, %wide.trip.count189.i
  %i.pi = sub i64 %i.ph, %i.gd                    ; 2 uses
  %scevgep925 = getelementptr i8, ptr %i.fx, i64 %i.pi
  %i.pj = mul i64 %i.pe, %i.np
  %i.pk = add i64 %i.pj, %wide.trip.count189.i
  %i.pl = add i64 %i.pk, %i.el
  %i.pm = sub i64 %i.pl, %i.nk
  %scevgep927 = getelementptr i8, ptr %.val, i64 %i.pm
  %i.pn = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %i.po = zext nneg i32 %i.dz to i64
  %i.pp = mul i64 %i.pe, %i.no
  %i.pq = add i64 %i.pp, %i.fm
  %i.pr = add i64 %i.pq, %wide.trip.count189.i
  %i.ps = sub i64 %i.pr, %i.gd
  %i.pt = shl i64 %i.ps, 2
  %scevgep932 = getelementptr i8, ptr %i.fj, i64 %i.pt ; 3 uses
  %scevgep933 = getelementptr i8, ptr %i.fx, i64 %i.pi
  %i.pu = add nsw i64 %wide.trip.count189.i, -1   ; 2 uses
  %min.iters.check936 = icmp ult i32 %i.dm, 12
  %stride.check946 = icmp slt i64 %i.np, 0
  %n.vec961 = and i64 %wide.trip.count189.i, 2147483644 ; 3 uses
  %cmp.n971 = icmp eq i64 %n.vec961, %wide.trip.count189.i
  %i.pv = sub i32 %i.dg, %i.dk                    ; 2 uses
  %i.pw = zext i32 %i.pv to i64
  %i.px = add nuw nsw i64 %i.pw, 1                ; 2 uses
  %min.iters.check881 = icmp ult i32 %i.pv, 7
  %n.vec883 = and i64 %i.px, 8589934584           ; 3 uses
  %i.py = add nsw i64 %n.vec883, %smin.i
  %invariant.gep1051 = getelementptr [4 x i8], ptr %invariant.gep274.i, i64 %smin.i
  %cmp.n890 = icmp eq i64 %i.px, %n.vec883
  %i.pz = sub nsw i32 0, %i.dg
  %i.qa = sext i32 %i.pz to i64
  %i.qb = add nsw i64 %i.nu, 1
  %i.qc = sub nsw i64 %i.qb, %i.qa                ; 3 uses
  %min.iters.check869 = icmp ult i64 %i.qc, 8
  %n.vec871 = and i64 %i.qc, -8                   ; 3 uses
  %i.qd = add nsw i64 %n.vec871, %i.ok
  %invariant.gep1053 = getelementptr [4 x i8], ptr %i.ft, i64 %i.ok
  %cmp.n878 = icmp eq i64 %i.qc, %n.vec871
  %min.iters.check853 = icmp ult i32 %i.dm, 8
  %op.rdx = add i64 %.neg973, 3
  %op.rdx976 = add i64 %op.rdx, %i.fe
  %diff.check855 = icmp ult i64 %op.rdx976, 31
  %or.cond974 = select i1 %min.iters.check853, i1 true, i1 %diff.check855
  %n.vec857 = and i64 %wide.trip.count189.i, 2147483640 ; 3 uses
  %broadcast.splatinsert858 = insertelement <4 x i32> poison, i32 %i.nx, i64 0
  %broadcast.splat859 = shufflevector <4 x i32> %broadcast.splatinsert858, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n866 = icmp eq i64 %n.vec857, %wide.trip.count189.i
  %xtraiter1017 = and i64 %wide.trip.count189.i, 3 ; 2 uses
  %lcmp.mod1018.not = icmp eq i64 %xtraiter1017, 0
  %min.iters.check833 = icmp ult i32 %i.dm, 8
  %bound0835 = icmp ult ptr %i.ff, %scevgep830
  %bound1836 = icmp ult ptr %i.ob, %scevgep831
  %found.conflict837 = and i1 %bound0835, %bound1836
  %n.vec839 = and i64 %wide.trip.count189.i, 2147483640 ; 3 uses
  %cmp.n848 = icmp eq i64 %n.vec839, %wide.trip.count189.i
  %xtraiter1020 = and i64 %wide.trip.count189.i, 3 ; 2 uses
  %lcmp.mod1021.not = icmp eq i64 %xtraiter1020, 0
  %i.qe = sub nsw i32 0, %i.dg
  %i.qf = sext i32 %i.qe to i64
  %i.qg = add nuw nsw i64 %wide.trip.count220.i, 1
  %i.qh = sub nsw i64 %i.qg, %i.qf                ; 3 uses
  %min.iters.check809 = icmp ult i64 %i.qh, 8
  %n.vec811 = and i64 %i.qh, -8                   ; 3 uses
  %i.qi = add nsw i64 %n.vec811, %i.ok
  %invariant.gep1055 = getelementptr [4 x i8], ptr %i.ft, i64 %i.ok
  %cmp.n821 = icmp eq i64 %i.qh, %n.vec811
  %xtraiter1023 = and i64 %wide.trip.count189.i, 1
  %i.qj = icmp eq i64 %i.pu, 0
  %unroll_iter1028 = and i64 %wide.trip.count189.i, 2147483646
  %lcmp.mod1024.not = icmp eq i64 %xtraiter1023, 0
  %lcmp.mod1027 = trunc i32 %i.dm to i1
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge112.i, %.lr.ph121.i
  %indvars.iv237.i = phi i64 [ 0, %.lr.ph121.i ], [ %indvars.iv.next238.i, %._crit_edge112.i ] ; 4 uses
  %.0418119.i = phi ptr [ %i.ne, %.lr.ph121.i ], [ %i.zy, %._crit_edge112.i ] ; 4 uses
  %36 = trunc i64 %indvars.iv237.i to i32
  %37 = add i32 %i.dg, %36
  %38 = call i32 @llvm.smax.i32(i32 %i.pn, i32 %37)
  %smax929 = sext i32 %38 to i64
  %smin930 = call i64 @llvm.smin.i64(i64 %smax929, i64 %i.po)
  %scevgep931 = getelementptr i8, ptr %scevgep927, i64 %smin930 ; 2 uses
  %i.qk = load ptr, ptr %i.et, align 8, !tbaa !79 ; 2 uses
  %.not454.i = icmp eq ptr %i.qk, null
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.ej
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %indvars.iv237.i
  %i.qn = select i1 %.not454.i, ptr %i.b, ptr %i.qm
  br i1 %i.nm, label %.lr.ph79.preheader.i, label %.preheader41.i

.lr.ph79.preheader.i:                             ; preds = %bb.ad
  %i.qo = trunc i64 %indvars.iv237.i to i32       ; 3 uses
  %i.qp = add i32 %i.dg, %i.qo                    ; 3 uses
  %i.qq = call i32 @llvm.smax.i32(i32 %i.qp, i32 %i.ds)
  %i.qr = call i32 @llvm.smin.i32(i32 %i.qq, i32 %i.dz)
  %i.qs = sext i32 %i.qr to i64
  %gep128.i = getelementptr i8, ptr %invariant.gep127.i, i64 %i.qs ; 3 uses
  %i.qt = call i32 @llvm.smax.i32(i32 %i.qp, i32 %i.ng)
  %i.qu = call i32 @llvm.smin.i32(i32 %i.qt, i32 %i.ni)
  %i.qv = sext i32 %i.qu to i64
  %gep126.i = getelementptr i8, ptr %invariant.gep123.i, i64 %i.qv
  %i.qw = add i32 %i.qo, %i.gq
  %i.qx = call i32 @llvm.smax.i32(i32 %i.qw, i32 %i.ng)
  %..i99 = call i32 @llvm.smin.i32(i32 %i.qx, i32 %i.ni)
  %i.qy = sext i32 %..i99 to i64
  %gep124.i = getelementptr i8, ptr %invariant.gep123.i, i64 %i.qy
  %i.qz = add i32 %i.qp, %i.dh
  %i.ra = srem i32 %i.qz, %i.nf
  %i.rb = mul i32 %i.ra, %i.es
  %i.rc = sext i32 %i.rb to i64                   ; 2 uses
  %gep116.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.rc ; 4 uses
  %i.rd = srem i32 %i.qo, %i.nf
  %i.re = mul i32 %i.rd, %i.es
  %i.rf = sext i32 %i.re to i64                   ; 2 uses
  %gep114.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.rf ; 3 uses
  %scevgep926 = getelementptr i8, ptr %scevgep925, i64 %i.rf ; 2 uses
  %scevgep934 = getelementptr i8, ptr %scevgep933, i64 %i.rc ; 3 uses
  %bound0938 = icmp ult ptr %gep116.i, %scevgep932
  %bound1939 = icmp ult ptr %i.gf, %scevgep934
  %found.conflict940 = and i1 %bound0938, %bound1939
  %bound0943 = icmp ult ptr %gep116.i, %scevgep931
  %bound1944 = icmp ult ptr %gep128.i, %scevgep934
  %found.conflict945 = and i1 %bound0943, %bound1944
  %i.rg = or i1 %found.conflict945, %stride.check946
  %conflict.rdx947 = or i1 %found.conflict940, %i.rg
  %bound0948 = icmp ult ptr %gep116.i, %scevgep926
  %bound1949 = icmp ult ptr %gep114.i, %scevgep934
  %found.conflict950 = and i1 %bound0948, %bound1949
  %conflict.rdx951 = or i1 %conflict.rdx947, %found.conflict950
  %bound0952 = icmp ult ptr %i.gf, %scevgep931
  %bound1953 = icmp ult ptr %gep128.i, %scevgep932
  %found.conflict954 = and i1 %bound0952, %bound1953
  %conflict.rdx955 = or i1 %conflict.rdx951, %found.conflict954
  %bound0956 = icmp ult ptr %i.gf, %scevgep926
  %bound1957 = icmp ult ptr %gep114.i, %scevgep932
  %found.conflict958 = and i1 %bound0956, %bound1957
  %conflict.rdx959 = or i1 %conflict.rdx955, %found.conflict958
  br label %.lr.ph79.i

.preheader41.i:                                   ; preds = %._crit_edge.i, %bb.ad
  br i1 %.not45580.i, label %.preheader40.i, label %.lr.ph82.preheader.i

.lr.ph82.preheader.i:                             ; preds = %.preheader41.i
  %.pre.i = load i32, ptr %i.ns, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check881, label %.lr.ph82.i.preheader, label %vector.ph882

vector.ph882:                                     ; preds = %.lr.ph82.preheader.i
  %broadcast.splatinsert884 = insertelement <4 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat885 = shufflevector <4 x i32> %broadcast.splatinsert884, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body886

vector.body886:                                   ; preds = %vector.body886, %vector.ph882
  %index887 = phi i64 [ 0, %vector.ph882 ], [ %index.next888, %vector.body886 ] ; 2 uses
  %gep1052 = getelementptr [4 x i8], ptr %invariant.gep1051, i64 %index887 ; 2 uses
  %i.rh = getelementptr i8, ptr %gep1052, i64 16
  store <4 x i32> %broadcast.splat885, ptr %gep1052, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat885, ptr %i.rh, align 4, !tbaa !8
  %index.next888 = add nuw i64 %index887, 8       ; 2 uses
  %i.ri = icmp eq i64 %index.next888, %n.vec883
  br i1 %i.ri, label %middle.block889, label %vector.body886, !llvm.loop !242

middle.block889:                                  ; preds = %vector.body886
  br i1 %cmp.n890, label %.preheader40.i, label %.lr.ph82.i.preheader

.lr.ph82.i.preheader:                             ; preds = %.lr.ph82.preheader.i, %middle.block889
  %indvars.iv196.i.ph = phi i64 [ %smin.i, %.lr.ph82.preheader.i ], [ %i.py, %middle.block889 ]
  br label %.lr.ph82.i

.lr.ph79.i:                                       ; preds = %._crit_edge.i, %.lr.ph79.preheader.i
  %indvars.iv191.i = phi i64 [ %i.nu, %.lr.ph79.preheader.i ], [ %indvars.iv.next192.i, %._crit_edge.i ] ; 2 uses
  %.041776.i = phi ptr [ %gep114.i, %.lr.ph79.preheader.i ], [ %i.sz, %._crit_edge.i ] ; 3 uses
  %.142075.i = phi ptr [ %gep128.i, %.lr.ph79.preheader.i ], [ %i.td, %._crit_edge.i ] ; 3 uses
  %.042174.i = phi ptr [ %gep124.i, %.lr.ph79.preheader.i ], [ %i.tc, %._crit_edge.i ] ; 2 uses
  %.142373.i = phi ptr [ %gep126.i, %.lr.ph79.preheader.i ], [ %i.tb, %._crit_edge.i ] ; 2 uses
  %.142572.i = phi ptr [ %gep116.i, %.lr.ph79.preheader.i ], [ %i.sy, %._crit_edge.i ] ; 3 uses
  %.142771.i = phi ptr [ %i.gf, %.lr.ph79.preheader.i ], [ %i.ta, %._crit_edge.i ] ; 3 uses
  %i.rj = load i8, ptr %.142373.i, align 1, !tbaa !27 ; 2 uses
  %i.rk = zext i8 %i.rj to i32                    ; 2 uses
  br i1 %i.nn, label %.lr.ph70.i.preheader, label %._crit_edge.i

.lr.ph70.i.preheader:                             ; preds = %.lr.ph79.i
  %brmerge1057 = select i1 %min.iters.check936, i1 true, i1 %conflict.rdx959
  br i1 %brmerge1057, label %.lr.ph70.i.preheader979, label %vector.ph960

vector.ph960:                                     ; preds = %.lr.ph70.i.preheader
  %broadcast.splatinsert962 = insertelement <4 x i32> poison, i32 %i.rk, i64 0
  %broadcast.splat963 = shufflevector <4 x i32> %broadcast.splatinsert962, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body964

vector.body964:                                   ; preds = %vector.body964, %vector.ph960
  %index965 = phi i64 [ 0, %vector.ph960 ], [ %index.next969, %vector.body964 ] ; 5 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.142075.i, i64 %index965
  %wide.load966 = load <4 x i8>, ptr %i.rl, align 1, !tbaa !27, !alias.scope !340
  %i.rm = zext <4 x i8> %wide.load966 to <4 x i32>
  %i.rn = sub nsw <4 x i32> %broadcast.splat963, %i.rm
  %i.ro = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.rn, i1 true) ; 2 uses
  %i.rp = trunc nuw <4 x i32> %i.ro to <4 x i8>
  %i.rq = getelementptr inbounds nuw i8, ptr %.142572.i, i64 %index965
  store <4 x i8> %i.rp, ptr %i.rq, align 1, !tbaa !27, !alias.scope !341, !noalias !342
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.142771.i, i64 %index965 ; 2 uses
  %wide.load967 = load <4 x i32>, ptr %i.rr, align 4, !tbaa !8, !alias.scope !343, !noalias !344
  %i.rs = add nsw <4 x i32> %i.ro, %wide.load967
  %i.rt = getelementptr inbounds nuw i8, ptr %.041776.i, i64 %index965
  %wide.load968 = load <4 x i8>, ptr %i.rt, align 1, !tbaa !27, !alias.scope !345
  %i.ru = zext <4 x i8> %wide.load968 to <4 x i32>
  %i.rv = sub <4 x i32> %i.rs, %i.ru
  store <4 x i32> %i.rv, ptr %i.rr, align 4, !tbaa !8, !alias.scope !343, !noalias !344
  %index.next969 = add nuw i64 %index965, 4       ; 2 uses
  %i.rw = icmp eq i64 %index.next969, %n.vec961
  br i1 %i.rw, label %middle.block970, label %vector.body964, !llvm.loop !248

middle.block970:                                  ; preds = %vector.body964
  br i1 %cmp.n971, label %._crit_edge.i, label %.lr.ph70.i.preheader979

.lr.ph70.i.preheader979:                          ; preds = %.lr.ph70.i.preheader, %middle.block970
  %indvars.iv186.i.ph = phi i64 [ %n.vec961, %middle.block970 ], [ 0, %.lr.ph70.i.preheader ]
  br label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.preheader979, %.lr.ph70.i
  %indvars.iv186.i = phi i64 [ %indvars.iv.next187.i, %.lr.ph70.i ], [ %indvars.iv186.i.ph, %.lr.ph70.i.preheader979 ] ; 5 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.142075.i, i64 %indvars.iv186.i
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !27
  %i.rz = zext i8 %i.ry to i32
  %i.sa = sub nsw i32 %i.rk, %i.rz
  %i.sb = call i32 @llvm.abs.i32(i32 %i.sa, i1 true) ; 2 uses
  %i.sc = trunc nuw i32 %i.sb to i8
  %i.sd = getelementptr inbounds nuw i8, ptr %.142572.i, i64 %indvars.iv186.i
  store i8 %i.sc, ptr %i.sd, align 1, !tbaa !27
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.142771.i, i64 %indvars.iv186.i ; 2 uses
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !8
  %i.sg = add nsw i32 %i.sb, %i.sf
  %i.sh = getelementptr inbounds nuw i8, ptr %.041776.i, i64 %indvars.iv186.i
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !27
  %i.sj = zext i8 %i.si to i32
  %i.sk = sub i32 %i.sg, %i.sj
  store i32 %i.sk, ptr %i.se, align 4, !tbaa !8
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 2 uses
  %exitcond190.not.i = icmp eq i64 %indvars.iv.next187.i, %wide.trip.count189.i
  br i1 %exitcond190.not.i, label %._crit_edge.i, label %.lr.ph70.i, !llvm.loop !249

._crit_edge.i:                                    ; preds = %.lr.ph70.i, %middle.block970, %.lr.ph79.i
  %i.sl = zext i8 %i.rj to i64
  %i.sm = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.sl
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !27
  %i.so = zext i8 %i.sn to i32
  %i.sp = load i8, ptr %.042174.i, align 1, !tbaa !27
  %i.sq = zext i8 %i.sp to i64
  %i.sr = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.sq
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !27
  %i.st = zext i8 %i.ss to i32
  %i.su = sub nsw i32 %i.so, %i.st
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv191.i ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !8
  %i.sx = add nsw i32 %i.su, %i.sw
  store i32 %i.sx, ptr %i.sv, align 4, !tbaa !8
  %indvars.iv.next192.i = add nsw i64 %indvars.iv191.i, 1 ; 2 uses
  %i.sy = getelementptr inbounds i8, ptr %.142572.i, i64 %i.no
  %i.sz = getelementptr inbounds i8, ptr %.041776.i, i64 %i.no
  %i.ta = getelementptr inbounds [4 x i8], ptr %.142771.i, i64 %i.no
  %i.tb = getelementptr inbounds i8, ptr %.142373.i, i64 %i.np
  %i.tc = getelementptr inbounds i8, ptr %.042174.i, i64 %i.np
  %i.td = getelementptr inbounds i8, ptr %.142075.i, i64 %i.np
  %exitcond195.not.i = icmp eq i64 %indvars.iv.next192.i, %i.nq
  br i1 %exitcond195.not.i, label %.preheader41.i, label %.lr.ph79.i, !llvm.loop !250

.preheader40.i:                                   ; preds = %.lr.ph82.i, %middle.block889, %.preheader41.i
  br i1 %i.nt, label %.lr.ph84.preheader.i, label %.preheader39.i

.lr.ph84.preheader.i:                             ; preds = %.preheader40.i
  %.pre242.i = load i32, ptr %i.nv, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check869, label %.lr.ph84.i.preheader, label %vector.ph870

vector.ph870:                                     ; preds = %.lr.ph84.preheader.i
  %broadcast.splatinsert872 = insertelement <4 x i32> poison, i32 %.pre242.i, i64 0
  %broadcast.splat873 = shufflevector <4 x i32> %broadcast.splatinsert872, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body874

vector.body874:                                   ; preds = %vector.body874, %vector.ph870
  %index875 = phi i64 [ 0, %vector.ph870 ], [ %index.next876, %vector.body874 ] ; 2 uses
  %gep1054 = getelementptr [4 x i8], ptr %invariant.gep1053, i64 %index875 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %gep1054, i64 16
end_hunk_1
begin_hunk_2_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !8
  %i.yd = sub nsw i32 %i.xz, %i.yc
  %i.ye = add nsw i32 %i.yd, %.1416109.i          ; 2 uses
  %i.yf = icmp slt i32 %i.ye, %i.eb
  br i1 %i.yf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge102.i
  %i.yg = mul nsw i64 %indvars.iv232.i, %i.on
  %i.yh = getelementptr inbounds [2 x i8], ptr %.0418119.i, i64 %i.yg
  store i16 %i.ef, ptr %i.yh, align 2, !tbaa !338
  br label %bb.al

bb.af:                                            ; preds = %._crit_edge102.i
  br i1 %i.of, label %bb.ag, label %.critedge464.i

bb.ag:                                            ; preds = %bb.af
  %i.yi = mul nsw i32 %.0413.lcssa.i, %i.ed
  %i.yj = sdiv i32 %i.yi, 100
  %i.yk = add nsw i32 %i.yj, %.0413.lcssa.i
  br i1 %i.nn, label %.lr.ph108.i, label %.critedge464.i

.lr.ph108.i:                                      ; preds = %bb.ag
  %i.yl = add nsw i32 %.0411.lcssa.i, -1
  %i.ym = add nsw i32 %.0411.lcssa.i, 1
  %i.yn = sext i32 %i.ym to i64
  %i.yo = sext i32 %i.yl to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.lr.ph108.i
  %indvars.iv227.i = phi i64 [ 0, %.lr.ph108.i ], [ %indvars.iv.next228.i, %bb.aj ] ; 4 uses
  %i.yp = icmp slt i64 %indvars.iv227.i, %i.yo
  %i.yq = icmp sgt i64 %indvars.iv227.i, %i.yn
  %or.cond.i = select i1 %i.yp, i1 true, i1 %i.yq
  br i1 %or.cond.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv227.i
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !8
  %.not457.i = icmp sgt i32 %i.ys, %i.yk
  br i1 %.not457.i, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %exitcond231.not.i = icmp eq i64 %indvars.iv.next228.i, %wide.trip.count189.i
  br i1 %exitcond231.not.i, label %.critedge464.i, label %bb.ah, !llvm.loop !267

.critedge.i:                                      ; preds = %bb.ai
  %i.yt = mul nsw i64 %indvars.iv232.i, %i.on
  %i.yu = getelementptr inbounds [2 x i8], ptr %.0418119.i, i64 %i.yt
  store i16 %i.ef, ptr %i.yu, align 2, !tbaa !338
  br label %bb.al

.critedge464.i:                                   ; preds = %bb.aj, %bb.ag, %bb.af
  %i.yv = load i32, ptr %i.og, align 4, !tbaa !8
  store i32 %i.yv, ptr %i.fd, align 4, !tbaa !8
  %i.yw = load i32, ptr %i.oi, align 4, !tbaa !8
  store i32 %i.yw, ptr %i.oh, align 4, !tbaa !8
  %i.yx = sext i32 %.0411.lcssa.i to i64
  %i.yy = getelementptr [4 x i8], ptr %i.ff, i64 %i.yx ; 3 uses
  %i.yz = getelementptr i8, ptr %i.yy, i64 4
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !8  ; 2 uses
  %i.zb = getelementptr i8, ptr %i.yy, i64 -4
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !8  ; 2 uses
  %i.zd = add nsw i32 %i.zc, %i.za
  %i.ze = load i32, ptr %i.yy, align 4, !tbaa !8  ; 2 uses
  %i.zf = shl i32 %i.ze, 1
  %i.zg = sub i32 %i.zd, %i.zf
  %i.zh = sub nsw i32 %i.za, %i.zc                ; 2 uses
  %i.zi = call i32 @llvm.abs.i32(i32 %i.zh, i1 true)
  %i.zj = add nsw i32 %i.zg, %i.zi                ; 2 uses
  %i.zk = xor i32 %.0411.lcssa.i, -1
  %i.zl = add i32 %i.dp, %i.zk
  %.not.i.i = icmp eq i32 %i.zj, 0
  br i1 %.not.i.i, label %_ZN2cv11dispDescaleIsEET_iii.exit.i, label %bb.ak

bb.ak:                                            ; preds = %.critedge464.i
  %i.zm = shl nsw i32 %i.zh, 8
  %i.zn = sdiv i32 %i.zm, %i.zj
  br label %_ZN2cv11dispDescaleIsEET_iii.exit.i

_ZN2cv11dispDescaleIsEET_iii.exit.i:              ; preds = %bb.ak, %.critedge464.i
  %i.zo = phi i32 [ %i.zn, %bb.ak ], [ 0, %.critedge464.i ]
  %i.zp = shl nsw i32 %i.zl, 8
  %i.zq = or disjoint i32 %i.zp, 15
  %i.zr = add i32 %i.zq, %i.zo
  %i.zs = lshr i32 %i.zr, 4
  %i.zt = trunc i32 %i.zs to i16
  %i.zu = mul nsw i64 %indvars.iv232.i, %i.on
  %i.zv = getelementptr inbounds [2 x i8], ptr %.0418119.i, i64 %i.zu
  store i16 %i.zt, ptr %i.zv, align 2, !tbaa !338
  %i.zw = mul nsw i64 %indvars.iv232.i, %i.ez
  %i.zx = getelementptr inbounds [4 x i8], ptr %i.qn, i64 %i.zw
  store i32 %i.ze, ptr %i.zx, align 4, !tbaa !8
  br label %bb.al

bb.al:                                            ; preds = %_ZN2cv11dispDescaleIsEET_iii.exit.i, %.critedge.i, %bb.ae
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count235.i
  br i1 %exitcond236.not.i, label %._crit_edge112.i, label %.lr.ph111.i, !llvm.loop !268

._crit_edge112.i:                                 ; preds = %bb.al, %.preheader37.i
  %indvars.iv.next238.i = add nuw nsw i64 %indvars.iv237.i, 1 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %.0418119.i, i64 2
  %exitcond241.not.i = icmp eq i64 %indvars.iv.next238.i, %wide.trip.count240.i
  br i1 %exitcond241.not.i, label %_ZN2cvL26findStereoCorrespondenceBMIsEEvRKNS_3MatES3_RS1_S4_RKNS_14StereoBMParamsEiiRKNS_8BufferBMEm.exit, label %bb.ad, !llvm.loop !269

_ZN2cvL26findStereoCorrespondenceBMIsEEvRKNS_3MatES3_RS1_S4_RKNS_14StereoBMParamsEiiRKNS_8BufferBMEm.exit: ; preds = %._crit_edge112.i, %._crit_edge67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ay

bb.am:                                            ; preds = %bb.v
  %i.zz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.an:                                            ; preds = %bb.w
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.ao:                                            ; preds = %bb.x
  %i.aab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ap:                                            ; preds = %bb.z
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.aq:                                            ; preds = %bb.ab
  %i.aad = shl i32 %i.do, 8
  %i.aae = add i32 %i.aad, -256                   ; 10 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !79
  %i.aah = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.aai = zext nneg i32 %i.dr to i64             ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aag, i64 %i.aai ; 2 uses
  %i.aak = zext i32 %i.dt to i64                  ; 3 uses
  %i.aal = getelementptr i8, ptr %.val, i64 %i.aak ; 2 uses
  %i.aam = load i64, ptr %i.aah, align 8, !tbaa !84 ; 3 uses
  %i.aan = trunc i64 %i.aam to i32                ; 2 uses
  %i.aao = lshr i64 %.val87, 2                    ; 4 uses
  %i.aap = add i32 %i.dx, %i.dk                   ; 7 uses
  %i.aaq = add i32 %i.aap, %i.di                  ; 2 uses
  %i.aar = mul i32 %i.aaq, %i.dm                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.aas = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !79
  %.not.i100 = icmp eq ptr %i.aat, null
  %i.aau = getelementptr inbounds nuw i8, ptr %26, i64 128
  %i.aav = load i64, ptr %i.aau, align 8
  %i.aaw = shl i64 %i.aav, 30
  %i.aax = ashr i64 %i.aaw, 32
  %i.aay = select i1 %.not.i100, i64 0, i64 %i.aax
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.cy, i64 160 ; 6 uses
  %i.aba = load ptr, ptr %i.cy, align 8, !tbaa !88
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.aba, i64 %i.da
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !91 ; 6 uses
  %i.abd = ptrtoaddr ptr %i.abc to i64
  %i.abe = getelementptr i8, ptr %i.abc, i64 4    ; 19 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !88
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %i.da
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !91 ; 5 uses
  %i.abj = ptrtoaddr ptr %i.abi to i64
  %i.abk = mul i32 %i.dh, %i.dm
  %i.abl = sext i32 %i.abk to i64                 ; 8 uses
  %i.abm = getelementptr [4 x i8], ptr %i.abi, i64 %i.abl ; 10 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !88
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %i.da
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !91
  %i.abr = sext i32 %i.dh to i64
  %i.abs = getelementptr inbounds [4 x i8], ptr %i.abq, i64 %i.abr ; 15 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !94
  %i.abv = getelementptr inbounds nuw [8 x i8], ptr %i.abu, i64 %i.da
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !28 ; 4 uses
  %i.abx = getelementptr i8, ptr %i.abw, i64 %i.abl
  %i.aby = add nsw i32 %i.dm, 2
  %i.abz = sext i32 %i.aby to i64
  %i.aca = shl nsw i64 %i.abz, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.abc, i8 0, i64 %i.aca, i1 false)
  %i.acb = mul i32 %i.di, %i.dm
  %i.acc = sext i32 %i.acb to i64                 ; 12 uses
  %i.acd = sub nsw i64 0, %i.acc                  ; 2 uses
  %i.ace = getelementptr [4 x i8], ptr %i.abm, i64 %i.acd ; 8 uses
  %i.acf = add i32 %i.df, 2
  %i.acg = add i32 %i.acf, %i.dx                  ; 2 uses
  %i.ach = mul nsw i32 %i.acg, %i.dm
  %i.aci = sext i32 %i.ach to i64
  %i.acj = shl nsw i64 %i.aci, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ace, i8 0, i64 %i.acj, i1 false)
  %i.ack = sext i32 %i.di to i64
  %i.acl = sub nsw i64 0, %i.ack
  %i.acm = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.acl
  %i.acn = sext i32 %i.acg to i64
  %i.aco = shl nsw i64 %i.acn, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.acm, i8 0, i64 %i.aco, i1 false)
  %i.acp = xor i32 %i.dg, -1                      ; 7 uses
  %invariant.gep.i101 = getelementptr i8, ptr %i.abx, i64 %i.acd ; 3 uses
  %i.acq = icmp sgt i32 %i.df, -2                 ; 2 uses
  br i1 %i.acq, label %.lr.ph.i266, label %.preheader43.i102

.lr.ph.i266:                                      ; preds = %bb.aq
  %i.acr = sub nsw i32 0, %i.dr                   ; 2 uses
  %i.acs = xor i32 %i.dr, -1
  %i.act = add i32 %i.dv, %i.acs                  ; 2 uses
  %i.acu = mul i32 %i.di, %i.aan
  %i.acv = sext i32 %i.acu to i64                 ; 2 uses
  %i.acw = sub nsw i64 0, %i.acv                  ; 2 uses
  %invariant.gep54.i267 = getelementptr i8, ptr %i.aaj, i64 %i.acw ; 2 uses
  %invariant.gep56.i268 = getelementptr i8, ptr %i.aal, i64 %i.acw
  %i.acx = icmp sgt i32 %i.aap, %i.dj
  %i.acy = sext i32 %i.dm to i64                  ; 4 uses
  %sext461.i269 = shl i64 %i.aam, 32
  %i.acz = ashr exact i64 %sext461.i269, 32       ; 7 uses
  br i1 %i.acx, label %.lr.ph.split.i270, label %.preheader43.i102

.lr.ph.split.i270:                                ; preds = %.lr.ph.i266
  %i.ada = icmp sgt i32 %i.dm, 0
  %i.adb = sext i32 %i.dj to i64                  ; 7 uses
  br i1 %i.ada, label %.lr.ph51.us.preheader.i285, label %.lr.ph51.preheader.i271

.lr.ph51.preheader.i271:                          ; preds = %.lr.ph.split.i270
  %smax.i272 = call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %wide.trip.count.i273 = sext i32 %i.aap to i64  ; 3 uses
  %i.adc = sub nsw i64 %wide.trip.count.i273, %i.adb
  %xtraiter = and i64 %i.adc, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.add = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.adb ; 2 uses
  %indvars.iv.next.i281.prol = add nsw i64 %i.adb, 1
  %i.ade = add nsw i64 %wide.trip.count.i273, -1
  %i.adf = icmp eq i64 %i.ade, %i.adb
  br label %.lr.ph51.i274

.lr.ph51.us.preheader.i285:                       ; preds = %.lr.ph.split.i270
  %i.adg = sext i32 %i.acp to i64
  %smax149.i287 = call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %wide.trip.count150.i288 = zext nneg i32 %smax149.i287 to i64
  %wide.trip.count144.i289 = sext i32 %i.aap to i64 ; 2 uses
  %wide.trip.count139.i290 = zext nneg i32 %i.dm to i64 ; 8 uses
  %i.adh = xor i64 %i.adb, -1
  %i.adi = add nsw i64 %i.adh, %wide.trip.count144.i289 ; 3 uses
  %i.adj = mul i64 %i.adi, %i.acz
  %i.adk = add i64 %i.adj, %wide.trip.count139.i290
  %i.adl = add i64 %i.adk, %i.aak
  %i.adm = sub i64 %i.adl, %i.acv
  %scevgep = getelementptr i8, ptr %.val, i64 %i.adm
  %i.adn = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %i.ado = mul nsw i64 %i.adi, %i.acy
  %i.adp = add i64 %i.ado, %i.abl
  %i.adq = add i64 %i.adp, %wide.trip.count139.i290
  %i.adr = sub i64 %i.adq, %i.acc
  %i.ads = shl i64 %i.adr, 2
  %scevgep426 = getelementptr i8, ptr %i.abi, i64 %i.ads ; 2 uses
  %i.adt = mul nsw i64 %i.adi, %i.acy
  %i.adu = add i64 %i.adt, %i.abl
  %i.adv = add i64 %i.adu, %wide.trip.count139.i290
  %i.adw = sub i64 %i.adv, %i.acc
  %scevgep427 = getelementptr i8, ptr %i.abw, i64 %i.adw
  %i.adx = mul i32 %i.dm, %i.aaq
  %min.iters.check = icmp ult i32 %i.dm, 8
  %stride.check = icmp slt i64 %i.acz, 0
  %n.vec = and i64 %wide.trip.count139.i290, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count139.i290
  %xtraiter997 = and i64 %wide.trip.count139.i290, 1
  %lcmp.mod998.not = icmp eq i64 %xtraiter997, 0
  %i.ady = add nsw i64 %wide.trip.count139.i290, -1
  br label %.lr.ph51.us.i291

.lr.ph51.us.i291:                                 ; preds = %._crit_edge52.split.us.us.i312, %.lr.ph51.us.preheader.i285
  %indvar = phi i32 [ %indvar.next, %._crit_edge52.split.us.us.i312 ], [ 0, %.lr.ph51.us.preheader.i285 ] ; 3 uses
  %indvars.iv146.i292 = phi i64 [ %indvars.iv.next147.i313, %._crit_edge52.split.us.us.i312 ], [ %i.adg, %.lr.ph51.us.preheader.i285 ] ; 2 uses
  %39 = add i32 %indvar, %i.acp
  %40 = call i32 @llvm.smax.i32(i32 %i.adn, i32 %39)
  %41 = call i32 @llvm.smin.i32(i32 %40, i32 %i.dz)
  %smin424 = sext i32 %41 to i64
  %scevgep425 = getelementptr i8, ptr %scevgep, i64 %smin424 ; 2 uses
  %i.adz = mul i32 %i.adx, %indvar
  %i.aea = sext i32 %i.adz to i64
  %scevgep428 = getelementptr i8, ptr %scevgep427, i64 %i.aea ; 2 uses
  %i.aeb = trunc i64 %indvars.iv146.i292 to i32   ; 3 uses
  %i.aec = add i32 %i.dh, %i.aeb
  %i.aed = mul i32 %i.aec, %i.aar
  %i.aee = sext i32 %i.aed to i64
  %gep.us.i293 = getelementptr i8, ptr %invariant.gep.i101, i64 %i.aee ; 3 uses
  %.sroa.speculated15.us.i294 = call i32 @llvm.smax.i32(i32 %i.aeb, i32 %i.acr)
  %.sroa.speculated11.us.i295 = call i32 @llvm.smin.i32(i32 %i.act, i32 %.sroa.speculated15.us.i294)
  %i.aef = sext i32 %.sroa.speculated11.us.i295 to i64
  %gep55.us.i296 = getelementptr i8, ptr %invariant.gep54.i267, i64 %i.aef
  %.sroa.speculated6.us.i297 = call i32 @llvm.smax.i32(i32 %i.aeb, i32 %i.ds)
  %.sroa.speculated.us.i298 = call i32 @llvm.smin.i32(i32 %i.dz, i32 %.sroa.speculated6.us.i297)
  %i.aeg = sext i32 %.sroa.speculated.us.i298 to i64
  %gep57.us.i299 = getelementptr i8, ptr %invariant.gep56.i268, i64 %i.aeg ; 3 uses
  %bound0 = icmp ult ptr %gep.us.i293, %scevgep426
  %bound1 = icmp ult ptr %i.ace, %scevgep428
  %found.conflict = and i1 %bound0, %bound1
  %bound0429 = icmp ult ptr %gep.us.i293, %scevgep425
  %bound1430 = icmp ult ptr %gep57.us.i299, %scevgep428
  %found.conflict431 = and i1 %bound0429, %bound1430
  %i.aeh = or i1 %found.conflict431, %stride.check
  %conflict.rdx = or i1 %found.conflict, %i.aeh
  %bound0432 = icmp ult ptr %i.ace, %scevgep425
  %bound1433 = icmp ult ptr %gep57.us.i299, %scevgep426
  %found.conflict434 = and i1 %bound0432, %bound1433
  %conflict.rdx435 = or i1 %conflict.rdx, %found.conflict434
  br label %.lr.ph.us.us.i300

.lr.ph.us.us.i300:                                ; preds = %._crit_edge.us.us.i309, %.lr.ph51.us.i291
  %indvars.iv141.i301 = phi i64 [ %indvars.iv.next142.i310, %._crit_edge.us.us.i309 ], [ %i.adb, %.lr.ph51.us.i291 ] ; 2 uses
  %.041948.us.us.i302 = phi ptr [ %i.agi, %._crit_edge.us.us.i309 ], [ %gep57.us.i299, %.lr.ph51.us.i291 ] ; 5 uses
  %.042247.us.us.i303 = phi ptr [ %i.agh, %._crit_edge.us.us.i309 ], [ %gep55.us.i296, %.lr.ph51.us.i291 ] ; 2 uses
  %.042446.us.us.i304 = phi ptr [ %i.agg, %._crit_edge.us.us.i309 ], [ %gep.us.i293, %.lr.ph51.us.i291 ] ; 5 uses
  %.042645.us.us.i305 = phi ptr [ %i.agf, %._crit_edge.us.us.i309 ], [ %i.ace, %.lr.ph51.us.i291 ] ; 5 uses
  %i.aei = load i8, ptr %.042247.us.us.i303, align 1, !tbaa !27 ; 2 uses
  %i.aej = zext i8 %i.aei to i32                  ; 4 uses
  %brmerge1059 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx435
  br i1 %brmerge1059, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.i300
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aej, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.041948.us.us.i302, i64 %index
  %wide.load = load <4 x i8>, ptr %i.aek, align 1, !tbaa !27, !alias.scope !348
  %i.ael = zext <4 x i8> %wide.load to <4 x i32>
  %i.aem = sub nsw <4 x i32> %broadcast.splat, %i.ael
  %i.aen = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aem, i1 true) ; 2 uses
  %i.aeo = trunc nuw <4 x i32> %i.aen to <4 x i8>
  %i.aep = getelementptr inbounds nuw i8, ptr %.042446.us.us.i304, i64 %index
  store <4 x i8> %i.aeo, ptr %i.aep, align 1, !tbaa !27, !alias.scope !349, !noalias !350
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i305, i64 %index ; 2 uses
  %wide.load436 = load <4 x i32>, ptr %i.aeq, align 4, !tbaa !8, !alias.scope !351, !noalias !348
  %i.aer = add nsw <4 x i32> %i.aen, %wide.load436
  store <4 x i32> %i.aer, ptr %i.aeq, align 4, !tbaa !8, !alias.scope !351, !noalias !348
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aes = icmp eq i64 %index.next, %n.vec
  br i1 %i.aes, label %middle.block, label %vector.body, !llvm.loop !274

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.i309, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.i300, %middle.block
  %indvars.iv136.i306.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.i300 ] ; 6 uses
  br i1 %lcmp.mod998.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aet = getelementptr inbounds nuw i8, ptr %.041948.us.us.i302, i64 %indvars.iv136.i306.ph
  %i.aeu = load i8, ptr %i.aet, align 1, !tbaa !27
  %i.aev = zext i8 %i.aeu to i32
  %i.aew = sub nsw i32 %i.aej, %i.aev
  %i.aex = call i32 @llvm.abs.i32(i32 %i.aew, i1 true) ; 2 uses
  %i.aey = trunc nuw i32 %i.aex to i8
  %i.aez = getelementptr inbounds nuw i8, ptr %.042446.us.us.i304, i64 %indvars.iv136.i306.ph
  store i8 %i.aey, ptr %i.aez, align 1, !tbaa !27
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i305, i64 %indvars.iv136.i306.ph ; 2 uses
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !8
  %i.afc = add nsw i32 %i.aex, %i.afb
  store i32 %i.afc, ptr %i.afa, align 4, !tbaa !8
  %indvars.iv.next137.i307.prol = or disjoint i64 %indvars.iv136.i306.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv136.i306.unr = phi i64 [ %indvars.iv136.i306.ph, %scalar.ph.preheader ], [ %indvars.iv.next137.i307.prol, %scalar.ph.prol ]
  %i.afd = icmp eq i64 %indvars.iv136.i306.ph, %i.ady
  br i1 %i.afd, label %._crit_edge.us.us.i309, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv136.i306 = phi i64 [ %indvars.iv.next137.i307.1, %scalar.ph ], [ %indvars.iv136.i306.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.041948.us.us.i302, i64 %indvars.iv136.i306
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !27
  %i.afg = zext i8 %i.aff to i32
  %i.afh = sub nsw i32 %i.aej, %i.afg
  %i.afi = call i32 @llvm.abs.i32(i32 %i.afh, i1 true) ; 2 uses
  %i.afj = trunc nuw i32 %i.afi to i8
  %i.afk = getelementptr inbounds nuw i8, ptr %.042446.us.us.i304, i64 %indvars.iv136.i306
  store i8 %i.afj, ptr %i.afk, align 1, !tbaa !27
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i305, i64 %indvars.iv136.i306 ; 2 uses
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !8
  %i.afn = add nsw i32 %i.afi, %i.afm
  store i32 %i.afn, ptr %i.afl, align 4, !tbaa !8
  %indvars.iv.next137.i307 = add nuw nsw i64 %indvars.iv136.i306, 1 ; 3 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.041948.us.us.i302, i64 %indvars.iv.next137.i307
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !27
  %i.afq = zext i8 %i.afp to i32
  %i.afr = sub nsw i32 %i.aej, %i.afq
  %i.afs = call i32 @llvm.abs.i32(i32 %i.afr, i1 true) ; 2 uses
  %i.aft = trunc nuw i32 %i.afs to i8
  %i.afu = getelementptr inbounds nuw i8, ptr %.042446.us.us.i304, i64 %indvars.iv.next137.i307
  store i8 %i.aft, ptr %i.afu, align 1, !tbaa !27
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i305, i64 %indvars.iv.next137.i307 ; 2 uses
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !8
  %i.afx = add nsw i32 %i.afs, %i.afw
  store i32 %i.afx, ptr %i.afv, align 4, !tbaa !8
  %indvars.iv.next137.i307.1 = add nuw nsw i64 %indvars.iv136.i306, 2 ; 2 uses
  %exitcond140.not.i308.1 = icmp eq i64 %indvars.iv.next137.i307.1, %wide.trip.count139.i290
  br i1 %exitcond140.not.i308.1, label %._crit_edge.us.us.i309, label %scalar.ph, !llvm.loop !275

._crit_edge.us.us.i309:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.afy = zext i8 %i.aei to i64
  %i.afz = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.afy
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !27
  %i.agb = zext i8 %i.aga to i32
  %i.agc = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %indvars.iv141.i301 ; 2 uses
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !8
  %i.age = add nsw i32 %i.agd, %i.agb
  store i32 %i.age, ptr %i.agc, align 4, !tbaa !8
  %indvars.iv.next142.i310 = add nsw i64 %indvars.iv141.i301, 1 ; 2 uses
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i305, i64 %i.acy
  %i.agg = getelementptr inbounds nuw i8, ptr %.042446.us.us.i304, i64 %i.acy
  %i.agh = getelementptr inbounds i8, ptr %.042247.us.us.i303, i64 %i.acz
  %i.agi = getelementptr inbounds i8, ptr %.041948.us.us.i302, i64 %i.acz
  %exitcond145.not.i311 = icmp eq i64 %indvars.iv.next142.i310, %wide.trip.count144.i289
  br i1 %exitcond145.not.i311, label %._crit_edge52.split.us.us.i312, label %.lr.ph.us.us.i300, !llvm.loop !276

._crit_edge52.split.us.us.i312:                   ; preds = %._crit_edge.us.us.i309
  %indvars.iv.next147.i313 = add nsw i64 %indvars.iv146.i292, 1 ; 2 uses
  %exitcond151.not.i314 = icmp eq i64 %indvars.iv.next147.i313, %wide.trip.count150.i288
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond151.not.i314, label %.preheader43.i102, label %.lr.ph51.us.i291, !llvm.loop !277

.preheader43.i102:                                ; preds = %._crit_edge52.split.i283, %._crit_edge52.split.us.us.i312, %.lr.ph.i266, %bb.aq
  %i.agj = icmp sgt i32 %i.dx, 0                  ; 2 uses
  br i1 %i.agj, label %.preheader42.lr.ph.i214, label %._crit_edge67.i103

.preheader42.lr.ph.i214:                          ; preds = %.preheader43.i102
  %i.agk = icmp sgt i32 %i.dq, 0
  %i.agl = add nuw i32 %i.dr, 1
  %i.agm = add i32 %i.agl, %i.dz                  ; 3 uses
  %i.agn = icmp slt i32 %i.agm, %i.dv             ; 2 uses
  br i1 %i.agk, label %.preheader42.lr.ph.split.us.i230, label %.preheader42.lr.ph.split.i215

.preheader42.lr.ph.split.us.i230:                 ; preds = %.preheader42.lr.ph.i214
  br i1 %i.agn, label %.preheader42.us.us.preheader.i245, label %.preheader42.us.preheader.i231

.preheader42.us.preheader.i231:                   ; preds = %.preheader42.lr.ph.split.us.i230
  %sext260.i232 = shl i64 %i.aao, 32
  %i.ago = ashr exact i64 %sext260.i232, 32
  %wide.trip.count169.i233 = zext nneg i32 %i.dx to i64
  %wide.trip.count164.i234 = zext nneg i32 %i.dq to i64 ; 3 uses
  %min.iters.check450 = icmp ult i32 %i.dq, 8
  %n.vec452 = and i64 %wide.trip.count164.i234, 2147483640 ; 3 uses
  %broadcast.splatinsert453 = insertelement <4 x i32> poison, i32 %i.aae, i64 0
  %broadcast.splat454 = shufflevector <4 x i32> %broadcast.splatinsert453, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n459 = icmp eq i64 %n.vec452, %wide.trip.count164.i234
  br label %.preheader42.us.i235

.preheader42.us.us.preheader.i245:                ; preds = %.preheader42.lr.ph.split.us.i230
  %i.agp = sext i32 %i.agm to i64                 ; 3 uses
  %sext261.i246 = shl i64 %i.aao, 32
  %i.agq = ashr exact i64 %sext261.i246, 32
  %wide.trip.count184.i247 = zext nneg i32 %i.dx to i64
  %wide.trip.count174.i248 = zext nneg i32 %i.dq to i64 ; 3 uses
  %min.iters.check474 = icmp ult i32 %i.dq, 8
  %n.vec476 = and i64 %wide.trip.count174.i248, 2147483640 ; 3 uses
  %broadcast.splatinsert477 = insertelement <4 x i32> poison, i32 %i.aae, i64 0
  %broadcast.splat478 = shufflevector <4 x i32> %broadcast.splatinsert477, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n483 = icmp eq i64 %n.vec476, %wide.trip.count174.i248
  %i.agr = xor i32 %i.do, -1
  %i.ags = zext i32 %i.agr to i64
  %i.agt = add nuw nsw i64 %i.ags, 1              ; 2 uses
  %min.iters.check462 = icmp ugt i32 %i.do, -8
  %n.vec464 = and i64 %i.agt, 8589934584          ; 3 uses
  %i.agu = add nsw i64 %n.vec464, %i.agp
  %broadcast.splatinsert465 = insertelement <4 x i32> poison, i32 %i.aae, i64 0
  %broadcast.splat466 = shufflevector <4 x i32> %broadcast.splatinsert465, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n471 = icmp eq i64 %i.agt, %n.vec464
  br label %.preheader42.us.us.i249

.preheader42.us.us.i249:                          ; preds = %._crit_edge65.us.us.i263, %.preheader42.us.us.preheader.i245
  %indvars.iv181.i250 = phi i64 [ 0, %.preheader42.us.us.preheader.i245 ], [ %indvars.iv.next182.i264, %._crit_edge65.us.us.i263 ] ; 2 uses
  %i.agv = mul nsw i64 %indvars.iv181.i250, %i.agq
  %invariant.gep270.i251 = getelementptr [4 x i8], ptr %.val86, i64 %i.agv ; 4 uses
  br i1 %min.iters.check474, label %scalar.ph473.preheader, label %vector.body479
end_hunk_2
begin_hunk_3_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  br i1 %exitcond185.not.i265, label %._crit_edge67.i103, label %.preheader42.us.us.i249, !llvm.loop !282

.preheader42.us.i235:                             ; preds = %._crit_edge.us.i242, %.preheader42.us.preheader.i231
  %indvars.iv166.i236 = phi i64 [ 0, %.preheader42.us.preheader.i231 ], [ %indvars.iv.next167.i243, %._crit_edge.us.i242 ] ; 2 uses
  %i.ahb = mul nsw i64 %indvars.iv166.i236, %i.ago
  %invariant.gep268.i237 = getelementptr [4 x i8], ptr %.val86, i64 %i.ahb ; 2 uses
  br i1 %min.iters.check450, label %scalar.ph449.preheader, label %vector.body455

vector.body455:                                   ; preds = %.preheader42.us.i235, %vector.body455
  %index456 = phi i64 [ %index.next457, %vector.body455 ], [ 0, %.preheader42.us.i235 ] ; 2 uses
  %i.ahc = getelementptr [4 x i8], ptr %invariant.gep268.i237, i64 %index456 ; 2 uses
  %i.ahd = getelementptr i8, ptr %i.ahc, i64 16
  store <4 x i32> %broadcast.splat454, ptr %i.ahc, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat454, ptr %i.ahd, align 4, !tbaa !8
  %index.next457 = add nuw i64 %index456, 8       ; 2 uses
  %i.ahe = icmp eq i64 %index.next457, %n.vec452
  br i1 %i.ahe, label %middle.block458, label %vector.body455, !llvm.loop !283

middle.block458:                                  ; preds = %vector.body455
  br i1 %cmp.n459, label %._crit_edge.us.i242, label %scalar.ph449.preheader

scalar.ph449.preheader:                           ; preds = %.preheader42.us.i235, %middle.block458
  %indvars.iv161.i238.ph = phi i64 [ 0, %.preheader42.us.i235 ], [ %n.vec452, %middle.block458 ]
  br label %scalar.ph449

scalar.ph449:                                     ; preds = %scalar.ph449.preheader, %scalar.ph449
  %indvars.iv161.i238 = phi i64 [ %indvars.iv.next162.i240, %scalar.ph449 ], [ %indvars.iv161.i238.ph, %scalar.ph449.preheader ] ; 2 uses
  %gep269.i239 = getelementptr [4 x i8], ptr %invariant.gep268.i237, i64 %indvars.iv161.i238
  store i32 %i.aae, ptr %gep269.i239, align 4, !tbaa !8
  %indvars.iv.next162.i240 = add nuw nsw i64 %indvars.iv161.i238, 1 ; 2 uses
  %exitcond165.not.i241 = icmp eq i64 %indvars.iv.next162.i240, %wide.trip.count164.i234
  br i1 %exitcond165.not.i241, label %._crit_edge.us.i242, label %scalar.ph449, !llvm.loop !284

._crit_edge.us.i242:                              ; preds = %scalar.ph449, %middle.block458
  %indvars.iv.next167.i243 = add nuw nsw i64 %indvars.iv166.i236, 1 ; 2 uses
  %exitcond170.not.i244 = icmp eq i64 %indvars.iv.next167.i243, %wide.trip.count169.i233
  br i1 %exitcond170.not.i244, label %._crit_edge67.i103, label %.preheader42.us.i235, !llvm.loop !282

.preheader42.lr.ph.split.i215:                    ; preds = %.preheader42.lr.ph.i214
  br i1 %i.agn, label %.preheader42.preheader.i216, label %._crit_edge67.i103

.preheader42.preheader.i216:                      ; preds = %.preheader42.lr.ph.split.i215
  %i.ahf = sext i32 %i.agm to i64                 ; 3 uses
  %sext259.i217 = shl i64 %i.aao, 32
  %i.ahg = ashr exact i64 %sext259.i217, 32
  %wide.trip.count159.i218 = zext nneg i32 %i.dx to i64
  %i.ahh = xor i32 %i.do, -1
  %i.ahi = zext i32 %i.ahh to i64
  %i.ahj = add nuw nsw i64 %i.ahi, 1              ; 2 uses
  %min.iters.check438 = icmp ugt i32 %i.do, -8
  %n.vec440 = and i64 %i.ahj, 8589934584          ; 3 uses
  %i.ahk = add nsw i64 %n.vec440, %i.ahf
  %broadcast.splatinsert441 = insertelement <4 x i32> poison, i32 %i.aae, i64 0
  %broadcast.splat442 = shufflevector <4 x i32> %broadcast.splatinsert441, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n447 = icmp eq i64 %i.ahj, %n.vec440
  br label %.preheader42.i219

.lr.ph51.i274:                                    ; preds = %._crit_edge52.split.i283, %.lr.ph51.preheader.i271
  %storemerge53.i275 = phi i32 [ %i.ain, %._crit_edge52.split.i283 ], [ %i.acp, %.lr.ph51.preheader.i271 ] ; 2 uses
  %.sroa.speculated15.i276 = call i32 @llvm.smax.i32(i32 %storemerge53.i275, i32 %i.acr)
  %.sroa.speculated11.i277 = call i32 @llvm.smin.i32(i32 %i.act, i32 %.sroa.speculated15.i276)
  %i.ahl = sext i32 %.sroa.speculated11.i277 to i64
  %gep55.i278 = getelementptr i8, ptr %invariant.gep54.i267, i64 %i.ahl ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph51.i274
  %i.ahm = load i8, ptr %gep55.i278, align 1, !tbaa !27
  %i.ahn = zext i8 %i.ahm to i64
  %i.aho = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.ahn
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !27
  %i.ahq = zext i8 %i.ahp to i32
  %i.ahr = load i32, ptr %i.add, align 4, !tbaa !8
  %i.ahs = add nsw i32 %i.ahr, %i.ahq
  store i32 %i.ahs, ptr %i.add, align 4, !tbaa !8
  %i.aht = getelementptr inbounds i8, ptr %gep55.i278, i64 %i.acz
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph51.i274
  %indvars.iv.i279.unr = phi i64 [ %i.adb, %.lr.ph51.i274 ], [ %indvars.iv.next.i281.prol, %.prol.loopexit.unr-lcssa ]
  %.042247.i280.unr = phi ptr [ %gep55.i278, %.lr.ph51.i274 ], [ %i.aht, %.prol.loopexit.unr-lcssa ]
  br i1 %i.adf, label %._crit_edge52.split.i283, label %.lr.ph51.i274.new

.lr.ph51.i274.new:                                ; preds = %.prol.loopexit, %.lr.ph51.i274.new
  %indvars.iv.i279 = phi i64 [ %indvars.iv.next.i281.1, %.lr.ph51.i274.new ], [ %indvars.iv.i279.unr, %.prol.loopexit ] ; 3 uses
  %.042247.i280 = phi ptr [ %i.aim, %.lr.ph51.i274.new ], [ %.042247.i280.unr, %.prol.loopexit ] ; 2 uses
  %i.ahu = load i8, ptr %.042247.i280, align 1, !tbaa !27
  %i.ahv = zext i8 %i.ahu to i64
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.ahv
  %i.ahx = load i8, ptr %i.ahw, align 1, !tbaa !27
  %i.ahy = zext i8 %i.ahx to i32
  %i.ahz = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %indvars.iv.i279 ; 2 uses
  %i.aia = load i32, ptr %i.ahz, align 4, !tbaa !8
  %i.aib = add nsw i32 %i.aia, %i.ahy
  store i32 %i.aib, ptr %i.ahz, align 4, !tbaa !8
  %i.aic = getelementptr inbounds i8, ptr %.042247.i280, i64 %i.acz ; 2 uses
  %i.aid = load i8, ptr %i.aic, align 1, !tbaa !27
  %i.aie = zext i8 %i.aid to i64
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.aie
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !27
  %i.aih = zext i8 %i.aig to i32
  %i.aii = getelementptr [4 x i8], ptr %i.abs, i64 %indvars.iv.i279
  %i.aij = getelementptr i8, ptr %i.aii, i64 4    ; 2 uses
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !8
  %i.ail = add nsw i32 %i.aik, %i.aih
  store i32 %i.ail, ptr %i.aij, align 4, !tbaa !8
  %indvars.iv.next.i281.1 = add nsw i64 %indvars.iv.i279, 2 ; 2 uses
  %i.aim = getelementptr inbounds i8, ptr %i.aic, i64 %i.acz
  %exitcond.not.i282.1 = icmp eq i64 %indvars.iv.next.i281.1, %wide.trip.count.i273
  br i1 %exitcond.not.i282.1, label %._crit_edge52.split.i283, label %.lr.ph51.i274.new, !llvm.loop !276

._crit_edge52.split.i283:                         ; preds = %.lr.ph51.i274.new, %.prol.loopexit
  %i.ain = add nsw i32 %storemerge53.i275, 1      ; 2 uses
  %exitcond135.not.i284 = icmp eq i32 %i.ain, %smax.i272
  br i1 %exitcond135.not.i284, label %.preheader43.i102, label %.lr.ph51.i274, !llvm.loop !277

.preheader42.i219:                                ; preds = %._crit_edge65.i227, %.preheader42.preheader.i216
  %indvars.iv156.i220 = phi i64 [ 0, %.preheader42.preheader.i216 ], [ %indvars.iv.next157.i228, %._crit_edge65.i227 ] ; 2 uses
  %i.aio = mul nsw i64 %indvars.iv156.i220, %i.ahg
  %invariant.gep267.i221 = getelementptr [4 x i8], ptr %.val86, i64 %i.aio ; 2 uses
  br i1 %min.iters.check438, label %scalar.ph437.preheader, label %vector.ph439

vector.ph439:                                     ; preds = %.preheader42.i219
  %invariant.gep = getelementptr [4 x i8], ptr %invariant.gep267.i221, i64 %i.ahf
  br label %vector.body443

vector.body443:                                   ; preds = %vector.body443, %vector.ph439
  %index444 = phi i64 [ 0, %vector.ph439 ], [ %index.next445, %vector.body443 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index444 ; 2 uses
  %i.aip = getelementptr i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat442, ptr %gep, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat442, ptr %i.aip, align 4, !tbaa !8
  %index.next445 = add nuw i64 %index444, 8       ; 2 uses
  %i.aiq = icmp eq i64 %index.next445, %n.vec440
  br i1 %i.aiq, label %middle.block446, label %vector.body443, !llvm.loop !285

middle.block446:                                  ; preds = %vector.body443
  br i1 %cmp.n447, label %._crit_edge65.i227, label %scalar.ph437.preheader

scalar.ph437.preheader:                           ; preds = %.preheader42.i219, %middle.block446
  %indvars.iv152.i222.ph = phi i64 [ %i.ahf, %.preheader42.i219 ], [ %i.ahk, %middle.block446 ]
  br label %scalar.ph437

scalar.ph437:                                     ; preds = %scalar.ph437.preheader, %scalar.ph437
  %indvars.iv152.i222 = phi i64 [ %indvars.iv.next153.i224, %scalar.ph437 ], [ %indvars.iv152.i222.ph, %scalar.ph437.preheader ] ; 2 uses
  %gep.i223 = getelementptr [4 x i8], ptr %invariant.gep267.i221, i64 %indvars.iv152.i222
  store i32 %i.aae, ptr %gep.i223, align 4, !tbaa !8
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
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %.val86, i64 %i.aai
  %i.ais = add nsw i32 %i.df, 1                   ; 2 uses
  %i.ait = sub nsw i32 0, %i.dr                   ; 2 uses
  %i.aiu = xor i32 %i.dr, -1
  %i.aiv = add i32 %i.dv, %i.aiu                  ; 2 uses
  %i.aiw = mul i32 %i.di, %i.aan
  %i.aix = sext i32 %i.aiw to i64                 ; 2 uses
  %i.aiy = sub nsw i64 0, %i.aix                  ; 2 uses
  %invariant.gep123.i106 = getelementptr i8, ptr %i.aaj, i64 %i.aiy ; 2 uses
  %invariant.gep127.i107 = getelementptr i8, ptr %i.aal, i64 %i.aiy
  %i.aiz = icmp sgt i32 %i.aap, %i.dj
  %i.aja = icmp sgt i32 %i.dm, 0                  ; 4 uses
  %i.ajb = sext i32 %i.dm to i64                  ; 8 uses
  %sext.i108 = shl i64 %i.aam, 32
  %i.ajc = ashr exact i64 %sext.i108, 32          ; 5 uses
  %.not45580.i109 = icmp sgt i32 %i.cw, %i.dg
  %i.ajd = sext i32 %i.aap to i64                 ; 3 uses
  %i.aje = getelementptr [4 x i8], ptr %i.abs, i64 %i.ajd
  %i.ajf = getelementptr i8, ptr %i.aje, i64 -4
  %i.ajg = icmp slt i32 %i.acp, %i.dj
  %i.ajh = sext i32 %i.dj to i64                  ; 5 uses
  %i.aji = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.ajh
  %i.ajj = add nsw i32 %i.dg, 2
  %i.ajk = sub i32 %i.ajj, %i.di                  ; 6 uses
  %i.ajl = sub i32 1, %i.di                       ; 3 uses
  %i.ajm = mul i32 %i.ajl, %i.dm
  %i.ajn = sext i32 %i.ajm to i64                 ; 2 uses
  %i.ajo = getelementptr [4 x i8], ptr %i.abm, i64 %i.ajn ; 2 uses
  %i.ajp = icmp sge i32 %i.ajl, %i.dg
  %i.ajq = icmp eq i32 %i.dm, 0
  %i.ajr = add nsw i32 %i.aap, -1
  %i.ajs = icmp sgt i32 %i.ed, 0
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.abc, i64 8
  %i.aju = getelementptr [4 x i8], ptr %i.abe, i64 %i.ajb ; 2 uses
  %i.ajv = getelementptr i8, ptr %i.aju, i64 -8
  %smin.i110 = sext i32 %i.dk to i64              ; 3 uses
  %i.ajw = sext i32 %i.dx to i64
  %i.ajx = sext i32 %i.acp to i64                 ; 6 uses
  %smax219.i112 = call i32 @llvm.abs.i32(i32 %i.dg, i1 false)
  %i.ajy = sext i32 %i.dg to i64
  %i.ajz = shl i64 %i.aao, 32
  %i.aka = ashr exact i64 %i.ajz, 32              ; 3 uses
  %i.akb = add i32 %i.dy, 1
  %i.akc = add i32 %i.akb, %i.ds
  %wide.trip.count240.i113 = zext i32 %i.akc to i64
  %wide.trip.count189.i114 = zext i32 %i.dm to i64 ; 21 uses
  %invariant.gep274.i115 = getelementptr [4 x i8], ptr %i.abs, i64 %i.ajw ; 2 uses
  %brmerge.i117 = select i1 %i.ajp, i1 true, i1 %i.ajq
  %wide.trip.count220.i119 = zext i32 %smax219.i112 to i64 ; 2 uses
  %wide.trip.count235.i120 = zext nneg i32 %i.dx to i64
  %i.akd = add i32 %i.dg, %i.di
  %i.ake = add i32 %i.akd, -2
  %i.akf = zext i32 %i.ake to i64
  %i.akg = mul nsw i64 %i.ajb, %i.akf
  %i.akh = add i64 %i.akg, %i.abl
  %i.aki = add i64 %i.akh, %i.ajn
  %i.akj = shl nuw nsw i64 %wide.trip.count189.i114, 2
  %i.akk = add i64 %i.aki, %wide.trip.count189.i114
  %i.akl = shl i64 %i.akk, 2
  %scevgep504 = getelementptr i8, ptr %i.abi, i64 %i.akl
  %i.akm = getelementptr i8, ptr %i.abc, i64 %i.akj
  %scevgep505 = getelementptr i8, ptr %i.akm, i64 4
  %i.akn = shl nsw i64 %i.abl, 2
  %i.ako = add i64 %i.akn, %i.abj
  %i.akp = shl nsw i64 %i.acc, 2
  %.neg = sub i64 %i.akp, %i.ako
  %i.akq = xor i64 %i.ajh, -1
  %i.akr = add nsw i64 %i.akq, %i.ajd             ; 3 uses
  %i.aks = mul i64 %i.akr, %i.ajb
  %i.akt = add i64 %i.aks, %i.abl
  %i.aku = add i64 %i.akt, %wide.trip.count189.i114
  %i.akv = sub i64 %i.aku, %i.acc                 ; 2 uses
  %scevgep597 = getelementptr i8, ptr %i.abw, i64 %i.akv
  %i.akw = mul i64 %i.akr, %i.ajc
  %i.akx = add i64 %i.akw, %wide.trip.count189.i114
  %i.aky = add i64 %i.akx, %i.aak
  %i.akz = sub i64 %i.aky, %i.aix
  %scevgep599 = getelementptr i8, ptr %.val, i64 %i.akz
  %i.ala = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %i.alb = zext nneg i32 %i.dz to i64
  %i.alc = mul i64 %i.akr, %i.ajb
  %i.ald = add i64 %i.alc, %i.abl
  %i.ale = add i64 %i.ald, %wide.trip.count189.i114
  %i.alf = sub i64 %i.ale, %i.acc
  %i.alg = shl i64 %i.alf, 2
  %scevgep604 = getelementptr i8, ptr %i.abi, i64 %i.alg ; 3 uses
  %scevgep605 = getelementptr i8, ptr %i.abw, i64 %i.akv
  %i.alh = add nsw i64 %wide.trip.count189.i114, -1 ; 2 uses
  %min.iters.check608 = icmp ult i32 %i.dm, 12
  %stride.check618 = icmp slt i64 %i.ajc, 0
  %n.vec633 = and i64 %wide.trip.count189.i114, 2147483644 ; 3 uses
  %cmp.n643 = icmp eq i64 %n.vec633, %wide.trip.count189.i114
  %i.ali = sub i32 %i.dg, %i.dk                   ; 2 uses
  %i.alj = zext i32 %i.ali to i64
  %i.alk = add nuw nsw i64 %i.alj, 1              ; 2 uses
  %min.iters.check553 = icmp ult i32 %i.ali, 7
  %n.vec555 = and i64 %i.alk, 8589934584          ; 3 uses
  %i.all = add nsw i64 %n.vec555, %smin.i110
  %invariant.gep1037 = getelementptr [4 x i8], ptr %invariant.gep274.i115, i64 %smin.i110
  %cmp.n562 = icmp eq i64 %i.alk, %n.vec555
  %i.alm = sub nsw i32 0, %i.dg
  %i.aln = sext i32 %i.alm to i64
  %i.alo = add nsw i64 %i.ajh, 1
  %i.alp = sub nsw i64 %i.alo, %i.aln             ; 3 uses
  %min.iters.check541 = icmp ult i64 %i.alp, 8
  %n.vec543 = and i64 %i.alp, -8                  ; 3 uses
  %i.alq = add nsw i64 %n.vec543, %i.ajx
  %invariant.gep1039 = getelementptr [4 x i8], ptr %i.abs, i64 %i.ajx
  %cmp.n550 = icmp eq i64 %i.alp, %n.vec543
  %min.iters.check526 = icmp ult i32 %i.dm, 8
  %op.rdx977 = add i64 %.neg, 3
  %op.rdx978 = add i64 %op.rdx977, %i.abd
  %diff.check = icmp ult i64 %op.rdx978, 31
  %or.cond975 = select i1 %min.iters.check526, i1 true, i1 %diff.check
  %n.vec529 = and i64 %wide.trip.count189.i114, 2147483640 ; 3 uses
  %broadcast.splatinsert530 = insertelement <4 x i32> poison, i32 %i.ajk, i64 0
  %broadcast.splat531 = shufflevector <4 x i32> %broadcast.splatinsert530, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n538 = icmp eq i64 %n.vec529, %wide.trip.count189.i114
  %xtraiter999 = and i64 %wide.trip.count189.i114, 3 ; 2 uses
  %lcmp.mod1000.not = icmp eq i64 %xtraiter999, 0
  %min.iters.check507 = icmp ult i32 %i.dm, 8
  %bound0509 = icmp ult ptr %i.abe, %scevgep504
  %bound1510 = icmp ult ptr %i.ajo, %scevgep505
  %found.conflict511 = and i1 %bound0509, %bound1510
  %n.vec513 = and i64 %wide.trip.count189.i114, 2147483640 ; 3 uses
  %cmp.n522 = icmp eq i64 %n.vec513, %wide.trip.count189.i114
  %xtraiter1001 = and i64 %wide.trip.count189.i114, 3 ; 2 uses
  %lcmp.mod1002.not = icmp eq i64 %xtraiter1001, 0
  %i.alr = sub nsw i32 0, %i.dg
  %i.als = sext i32 %i.alr to i64
  %i.alt = add nuw nsw i64 %wide.trip.count220.i119, 1
  %i.alu = sub nsw i64 %i.alt, %i.als             ; 3 uses
  %min.iters.check486 = icmp ult i64 %i.alu, 8
  %n.vec488 = and i64 %i.alu, -8                  ; 3 uses
  %i.alv = add nsw i64 %n.vec488, %i.ajx
  %invariant.gep1041 = getelementptr [4 x i8], ptr %i.abs, i64 %i.ajx
  %cmp.n496 = icmp eq i64 %i.alu, %n.vec488
  %xtraiter1004 = and i64 %wide.trip.count189.i114, 1
  %i.alw = icmp eq i64 %i.alh, 0
  %unroll_iter = and i64 %wide.trip.count189.i114, 2147483646
  %lcmp.mod1005.not = icmp eq i64 %xtraiter1004, 0
  %lcmp.mod1008 = trunc i32 %i.dm to i1
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge112.i140, %.lr.ph121.i105
  %indvars.iv237.i123 = phi i64 [ 0, %.lr.ph121.i105 ], [ %indvars.iv.next238.i141, %._crit_edge112.i140 ] ; 4 uses
  %.0418119.i124 = phi ptr [ %i.air, %.lr.ph121.i105 ], [ %i.avf, %._crit_edge112.i140 ] ; 4 uses
  %42 = trunc i64 %indvars.iv237.i123 to i32
  %43 = add i32 %i.dg, %42
  %44 = call i32 @llvm.smax.i32(i32 %i.ala, i32 %43)
  %smax601 = sext i32 %44 to i64
  %smin602 = call i64 @llvm.smin.i64(i64 %smax601, i64 %i.alb)
  %scevgep603 = getelementptr i8, ptr %scevgep599, i64 %smin602 ; 2 uses
  %i.alx = load ptr, ptr %i.aas, align 8, !tbaa !79 ; 2 uses
  %.not454.i125 = icmp eq ptr %i.alx, null
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.alx, i64 %i.aai
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.aly, i64 %indvars.iv237.i123
  %i.ama = select i1 %.not454.i125, ptr %i.a, ptr %i.alz
  br i1 %i.aiz, label %.lr.ph79.preheader.i192, label %.preheader41.i126

.lr.ph79.preheader.i192:                          ; preds = %bb.ar
  %i.amb = trunc i64 %indvars.iv237.i123 to i32   ; 3 uses
  %i.amc = add i32 %i.dg, %i.amb                  ; 3 uses
  %i.amd = call i32 @llvm.smax.i32(i32 %i.amc, i32 %i.ds)
  %i.ame = call i32 @llvm.smin.i32(i32 %i.amd, i32 %i.dz)
  %i.amf = sext i32 %i.ame to i64
  %gep128.i193 = getelementptr i8, ptr %invariant.gep127.i107, i64 %i.amf ; 3 uses
  %i.amg = call i32 @llvm.smax.i32(i32 %i.amc, i32 %i.ait)
  %i.amh = call i32 @llvm.smin.i32(i32 %i.amg, i32 %i.aiv)
  %i.ami = sext i32 %i.amh to i64
  %gep126.i194 = getelementptr i8, ptr %invariant.gep123.i106, i64 %i.ami
  %i.amj = add i32 %i.amb, %i.acp
  %i.amk = call i32 @llvm.smax.i32(i32 %i.amj, i32 %i.ait)
  %..i195 = call i32 @llvm.smin.i32(i32 %i.amk, i32 %i.aiv)
  %i.aml = sext i32 %..i195 to i64
  %gep124.i196 = getelementptr i8, ptr %invariant.gep123.i106, i64 %i.aml
  %i.amm = add i32 %i.amc, %i.dh
  %i.amn = srem i32 %i.amm, %i.ais
  %i.amo = mul i32 %i.amn, %i.aar
  %i.amp = sext i32 %i.amo to i64                 ; 2 uses
  %gep116.i197 = getelementptr i8, ptr %invariant.gep.i101, i64 %i.amp ; 4 uses
  %i.amq = srem i32 %i.amb, %i.ais
  %i.amr = mul i32 %i.amq, %i.aar
  %i.ams = sext i32 %i.amr to i64                 ; 2 uses
  %gep114.i198 = getelementptr i8, ptr %invariant.gep.i101, i64 %i.ams ; 3 uses
  %scevgep598 = getelementptr i8, ptr %scevgep597, i64 %i.ams ; 2 uses
  %scevgep606 = getelementptr i8, ptr %scevgep605, i64 %i.amp ; 3 uses
  %bound0610 = icmp ult ptr %gep116.i197, %scevgep604
  %bound1611 = icmp ult ptr %i.ace, %scevgep606
  %found.conflict612 = and i1 %bound0610, %bound1611
  %bound0615 = icmp ult ptr %gep116.i197, %scevgep603
  %bound1616 = icmp ult ptr %gep128.i193, %scevgep606
  %found.conflict617 = and i1 %bound0615, %bound1616
  %i.amt = or i1 %found.conflict617, %stride.check618
  %conflict.rdx619 = or i1 %found.conflict612, %i.amt
  %bound0620 = icmp ult ptr %gep116.i197, %scevgep598
  %bound1621 = icmp ult ptr %gep114.i198, %scevgep606
  %found.conflict622 = and i1 %bound0620, %bound1621
  %conflict.rdx623 = or i1 %conflict.rdx619, %found.conflict622
  %bound0624 = icmp ult ptr %i.ace, %scevgep603
  %bound1625 = icmp ult ptr %gep128.i193, %scevgep604
  %found.conflict626 = and i1 %bound0624, %bound1625
  %conflict.rdx627 = or i1 %conflict.rdx623, %found.conflict626
  %bound0628 = icmp ult ptr %i.ace, %scevgep598
  %bound1629 = icmp ult ptr %gep114.i198, %scevgep604
  %found.conflict630 = and i1 %bound0628, %bound1629
  %conflict.rdx631 = or i1 %conflict.rdx627, %found.conflict630
  br label %.lr.ph79.i199

.preheader41.i126:                                ; preds = %._crit_edge.i207, %bb.ar
  br i1 %.not45580.i109, label %.preheader40.i135, label %.lr.ph82.preheader.i127

.lr.ph82.preheader.i127:                          ; preds = %.preheader41.i126
  %.pre.i128 = load i32, ptr %i.ajf, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check553, label %.lr.ph82.i129.preheader, label %vector.ph554

vector.ph554:                                     ; preds = %.lr.ph82.preheader.i127
  %broadcast.splatinsert556 = insertelement <4 x i32> poison, i32 %.pre.i128, i64 0
  %broadcast.splat557 = shufflevector <4 x i32> %broadcast.splatinsert556, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body558

vector.body558:                                   ; preds = %vector.body558, %vector.ph554
  %index559 = phi i64 [ 0, %vector.ph554 ], [ %index.next560, %vector.body558 ] ; 2 uses
  %gep1038 = getelementptr [4 x i8], ptr %invariant.gep1037, i64 %index559 ; 2 uses
  %i.amu = getelementptr i8, ptr %gep1038, i64 16
  store <4 x i32> %broadcast.splat557, ptr %gep1038, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat557, ptr %i.amu, align 4, !tbaa !8
  %index.next560 = add nuw i64 %index559, 8       ; 2 uses
  %i.amv = icmp eq i64 %index.next560, %n.vec555
  br i1 %i.amv, label %middle.block561, label %vector.body558, !llvm.loop !287

middle.block561:                                  ; preds = %vector.body558
  br i1 %cmp.n562, label %.preheader40.i135, label %.lr.ph82.i129.preheader

.lr.ph82.i129.preheader:                          ; preds = %.lr.ph82.preheader.i127, %middle.block561
  %indvars.iv196.i130.ph = phi i64 [ %smin.i110, %.lr.ph82.preheader.i127 ], [ %i.all, %middle.block561 ]
  br label %.lr.ph82.i129

.lr.ph79.i199:                                    ; preds = %._crit_edge.i207, %.lr.ph79.preheader.i192
  %indvars.iv191.i200 = phi i64 [ %i.ajh, %.lr.ph79.preheader.i192 ], [ %indvars.iv.next192.i208, %._crit_edge.i207 ] ; 2 uses
  %.041776.i201 = phi ptr [ %gep114.i198, %.lr.ph79.preheader.i192 ], [ %i.aom, %._crit_edge.i207 ] ; 3 uses
  %.142075.i202 = phi ptr [ %gep128.i193, %.lr.ph79.preheader.i192 ], [ %i.aoq, %._crit_edge.i207 ] ; 3 uses
  %.042174.i203 = phi ptr [ %gep124.i196, %.lr.ph79.preheader.i192 ], [ %i.aop, %._crit_edge.i207 ] ; 2 uses
  %.142373.i204 = phi ptr [ %gep126.i194, %.lr.ph79.preheader.i192 ], [ %i.aoo, %._crit_edge.i207 ] ; 2 uses
  %.142572.i205 = phi ptr [ %gep116.i197, %.lr.ph79.preheader.i192 ], [ %i.aol, %._crit_edge.i207 ] ; 3 uses
  %.142771.i206 = phi ptr [ %i.ace, %.lr.ph79.preheader.i192 ], [ %i.aon, %._crit_edge.i207 ] ; 3 uses
  %i.amw = load i8, ptr %.142373.i204, align 1, !tbaa !27 ; 2 uses
  %i.amx = zext i8 %i.amw to i32                  ; 2 uses
  br i1 %i.aja, label %.lr.ph70.i210.preheader, label %._crit_edge.i207

.lr.ph70.i210.preheader:                          ; preds = %.lr.ph79.i199
  %brmerge1060 = select i1 %min.iters.check608, i1 true, i1 %conflict.rdx631
  br i1 %brmerge1060, label %.lr.ph70.i210.preheader987, label %vector.ph632

vector.ph632:                                     ; preds = %.lr.ph70.i210.preheader
  %broadcast.splatinsert634 = insertelement <4 x i32> poison, i32 %i.amx, i64 0
  %broadcast.splat635 = shufflevector <4 x i32> %broadcast.splatinsert634, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body636

vector.body636:                                   ; preds = %vector.body636, %vector.ph632
  %index637 = phi i64 [ 0, %vector.ph632 ], [ %index.next641, %vector.body636 ] ; 5 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %.142075.i202, i64 %index637
  %wide.load638 = load <4 x i8>, ptr %i.amy, align 1, !tbaa !27, !alias.scope !352
  %i.amz = zext <4 x i8> %wide.load638 to <4 x i32>
  %i.ana = sub nsw <4 x i32> %broadcast.splat635, %i.amz
  %i.anb = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ana, i1 true) ; 2 uses
  %i.anc = trunc nuw <4 x i32> %i.anb to <4 x i8>
  %i.and = getelementptr inbounds nuw i8, ptr %.142572.i205, i64 %index637
  store <4 x i8> %i.anc, ptr %i.and, align 1, !tbaa !27, !alias.scope !353, !noalias !354
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %.142771.i206, i64 %index637 ; 2 uses
  %wide.load639 = load <4 x i32>, ptr %i.ane, align 4, !tbaa !8, !alias.scope !355, !noalias !356
  %i.anf = add nsw <4 x i32> %i.anb, %wide.load639
  %i.ang = getelementptr inbounds nuw i8, ptr %.041776.i201, i64 %index637
  %wide.load640 = load <4 x i8>, ptr %i.ang, align 1, !tbaa !27, !alias.scope !357
  %i.anh = zext <4 x i8> %wide.load640 to <4 x i32>
  %i.ani = sub <4 x i32> %i.anf, %i.anh
  store <4 x i32> %i.ani, ptr %i.ane, align 4, !tbaa !8, !alias.scope !355, !noalias !356
  %index.next641 = add nuw i64 %index637, 4       ; 2 uses
  %i.anj = icmp eq i64 %index.next641, %n.vec633
  br i1 %i.anj, label %middle.block642, label %vector.body636, !llvm.loop !293

middle.block642:                                  ; preds = %vector.body636
  br i1 %cmp.n643, label %._crit_edge.i207, label %.lr.ph70.i210.preheader987

.lr.ph70.i210.preheader987:                       ; preds = %.lr.ph70.i210.preheader, %middle.block642
  %indvars.iv186.i211.ph = phi i64 [ %n.vec633, %middle.block642 ], [ 0, %.lr.ph70.i210.preheader ]
  br label %.lr.ph70.i210

.lr.ph70.i210:                                    ; preds = %.lr.ph70.i210.preheader987, %.lr.ph70.i210
  %indvars.iv186.i211 = phi i64 [ %indvars.iv.next187.i212, %.lr.ph70.i210 ], [ %indvars.iv186.i211.ph, %.lr.ph70.i210.preheader987 ] ; 5 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %.142075.i202, i64 %indvars.iv186.i211
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !27
  %i.anm = zext i8 %i.anl to i32
  %i.ann = sub nsw i32 %i.amx, %i.anm
  %i.ano = call i32 @llvm.abs.i32(i32 %i.ann, i1 true) ; 2 uses
  %i.anp = trunc nuw i32 %i.ano to i8
  %i.anq = getelementptr inbounds nuw i8, ptr %.142572.i205, i64 %indvars.iv186.i211
  store i8 %i.anp, ptr %i.anq, align 1, !tbaa !27
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %.142771.i206, i64 %indvars.iv186.i211 ; 2 uses
  %i.ans = load i32, ptr %i.anr, align 4, !tbaa !8
  %i.ant = add nsw i32 %i.ano, %i.ans
  %i.anu = getelementptr inbounds nuw i8, ptr %.041776.i201, i64 %indvars.iv186.i211
  %i.anv = load i8, ptr %i.anu, align 1, !tbaa !27
  %i.anw = zext i8 %i.anv to i32
  %i.anx = sub i32 %i.ant, %i.anw
  store i32 %i.anx, ptr %i.anr, align 4, !tbaa !8
  %indvars.iv.next187.i212 = add nuw nsw i64 %indvars.iv186.i211, 1 ; 2 uses
  %exitcond190.not.i213 = icmp eq i64 %indvars.iv.next187.i212, %wide.trip.count189.i114
  br i1 %exitcond190.not.i213, label %._crit_edge.i207, label %.lr.ph70.i210, !llvm.loop !294

._crit_edge.i207:                                 ; preds = %.lr.ph70.i210, %middle.block642, %.lr.ph79.i199
  %i.any = zext i8 %i.amw to i64
  %i.anz = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.any
  %i.aoa = load i8, ptr %i.anz, align 1, !tbaa !27
  %i.aob = zext i8 %i.aoa to i32
  %i.aoc = load i8, ptr %.042174.i203, align 1, !tbaa !27
  %i.aod = zext i8 %i.aoc to i64
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.aod
  %i.aof = load i8, ptr %i.aoe, align 1, !tbaa !27
  %i.aog = zext i8 %i.aof to i32
  %i.aoh = sub nsw i32 %i.aob, %i.aog
  %i.aoi = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %indvars.iv191.i200 ; 2 uses
  %i.aoj = load i32, ptr %i.aoi, align 4, !tbaa !8
  %i.aok = add nsw i32 %i.aoh, %i.aoj
  store i32 %i.aok, ptr %i.aoi, align 4, !tbaa !8
  %indvars.iv.next192.i208 = add nsw i64 %indvars.iv191.i200, 1 ; 2 uses
  %i.aol = getelementptr inbounds i8, ptr %.142572.i205, i64 %i.ajb
  %i.aom = getelementptr inbounds i8, ptr %.041776.i201, i64 %i.ajb
  %i.aon = getelementptr inbounds [4 x i8], ptr %.142771.i206, i64 %i.ajb
  %i.aoo = getelementptr inbounds i8, ptr %.142373.i204, i64 %i.ajc
  %i.aop = getelementptr inbounds i8, ptr %.042174.i203, i64 %i.ajc
  %i.aoq = getelementptr inbounds i8, ptr %.142075.i202, i64 %i.ajc
  %exitcond195.not.i209 = icmp eq i64 %indvars.iv.next192.i208, %i.ajd
  br i1 %exitcond195.not.i209, label %.preheader41.i126, label %.lr.ph79.i199, !llvm.loop !295

.preheader40.i135:                                ; preds = %.lr.ph82.i129, %middle.block561, %.preheader41.i126
  br i1 %i.ajg, label %.lr.ph84.preheader.i186, label %.preheader39.i136

.lr.ph84.preheader.i186:                          ; preds = %.preheader40.i135
  %.pre242.i187 = load i32, ptr %i.aji, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check541, label %.lr.ph84.i188.preheader, label %vector.ph542

vector.ph542:                                     ; preds = %.lr.ph84.preheader.i186
  %broadcast.splatinsert544 = insertelement <4 x i32> poison, i32 %.pre242.i187, i64 0
  %broadcast.splat545 = shufflevector <4 x i32> %broadcast.splatinsert544, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph542
  %index547 = phi i64 [ 0, %vector.ph542 ], [ %index.next548, %vector.body546 ] ; 2 uses
  %gep1040 = getelementptr [4 x i8], ptr %invariant.gep1039, i64 %index547 ; 2 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %gep1040, i64 16
end_hunk_3
begin_hunk_4_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !362
  store i64 9223372034707292160, ptr %4, align 8, !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !362
  store i32 0, ptr %5, align 4, !tbaa !65, !noalias !362
  %i.avu = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.ao, ptr %i.avu, align 4, !tbaa !66, !noalias !362
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %29, ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !362
  %i.avv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %29)
          to label %bb.bf unwind label %bb.bi     ; 0 uses

bb.bf:                                            ; preds = %bb.be
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  %i.avw = sitofp i32 %i.ac to double
  %i.avx = insertelement <4 x double> poison, double %i.avw, i64 0
  %i.avy = shufflevector <4 x double> %i.avx, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.avy, ptr %30, align 8, !tbaa !63, !alias.scope !363
  %i.avz = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.bg unwind label %bb.bk     ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bd
  %i.awa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.be
  %i.awb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #19
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn74 = phi { ptr, i32 } [ %i.awb, %bb.bi ], [ %i.awa, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  br label %bb.bv

bb.bk:                                            ; preds = %bb.bf
  %i.awc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %bb.bv

bb.bl:                                            ; preds = %bb.bg, %bb.bc
  %i.awd = add nuw nsw i32 %.sroa.speculated53.i.i, %i.ao ; 2 uses
  %i.awe = icmp slt i32 %i.awd, %i.f
  br i1 %i.awe, label %bb.bm, label %bb.bu

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !364
  store i64 9223372034707292160, ptr %2, align 8, !noalias !364
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !364
  store i32 %i.awd, ptr %3, align 4, !tbaa !65, !noalias !364
  %i.awf = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.f, ptr %i.awf, align 4, !tbaa !66, !noalias !364
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !364
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !364
  %i.awg = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %31)
          to label %bb.bo unwind label %bb.br     ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.awh = sitofp i32 %i.ac to double
  %i.awi = insertelement <4 x double> poison, double %i.awh, i64 0
  %i.awj = shufflevector <4 x double> %i.awi, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.awj, ptr %32, align 8, !tbaa !63, !alias.scope !365
  %i.awk = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.bp unwind label %bb.bt     ; 0 uses

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bm
  %i.awl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %bb.bn
  %i.awm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #19
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pn76 = phi { ptr, i32 } [ %i.awm, %bb.br ], [ %i.awl, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bo
  %i.awn = landingpad { ptr, i32 }
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
  %.pn78 = phi { ptr, i32 } [ %i.awn, %bb.bt ], [ %.pn76, %bb.bs ], [ %i.awc, %bb.bk ], [ %.pn74, %bb.bj ], [ %i.avt, %bb.bb ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #19
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.ap
  %.pn78.pn = phi { ptr, i32 } [ %.pn78, %bb.bv ], [ %i.aac, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #19
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.ao
  %.pn78.pn.pn = phi { ptr, i32 } [ %.pn78.pn, %bb.bw ], [ %i.aab, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #19
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.an
  %.pn78.pn.pn.pn = phi { ptr, i32 } [ %.pn78.pn.pn, %bb.bx ], [ %i.aaa, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #19
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.am
  %.pn78.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn78.pn.pn.pn, %bb.by ], [ %i.zz, %bb.am ]
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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTSN2cv12StereoBMImplE", !9, i64 0}
!11 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!12 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!13 = !{!"vtable pointer", !3, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSN2cv5Rect_IiEE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!16 = !{!"_ZTSN2cv14StereoBMParamsE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !15, i64 40, !15, i64 56, !5, i64 72, !5, i64 76}
!17 = !{!16, !5, i64 0}
!18 = !{!16, !5, i64 4}
!19 = !{!16, !5, i64 8}
!20 = !{!16, !5, i64 12}
!21 = !{!16, !5, i64 16}
!22 = !{!16, !5, i64 20}
!23 = !{!16, !5, i64 24}
!24 = !{!16, !5, i64 28}
!25 = !{!16, !5, i64 72}
!26 = !{!"p1 omnipotent char", !9, i64 0}
!27 = !{!4, !4, i64 0}
!28 = !{!26, !26, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!30 = !{!"long", !4, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !30, i64 8, !4, i64 16}
!32 = !{!31, !26, i64 0}
!33 = !{!31, !30, i64 8}
!34 = !{!"_ZTSN2cv9AlgorithmE"}
!35 = !{!"_ZTSN2cv13StereoMatcherE", !34, i64 0}
!36 = !{!"_ZTSN2cv8StereoBME", !35, i64 0}
!37 = !{!"p1 _ZTSN2cv12MatAllocatorE", !9, i64 0}
!38 = !{!"p1 _ZTSN2cv8UMatDataE", !9, i64 0}
!39 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!40 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !39, i64 4, !5, i64 8, !4, i64 12}
!41 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!42 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !37, i64 56, !38, i64 64, !40, i64 72, !41, i64 128}
!43 = !{!"_ZTSN2cv12StereoBMImplE", !36, i64 0, !16, i64 8, !42, i64 88, !42, i64 296, !42, i64 504, !42, i64 712, !42, i64 920}
!44 = !{!43, !5, i64 24}
!45 = !{!43, !5, i64 28}
!46 = !{!43, !5, i64 20}
!47 = !{!43, !5, i64 44}
!48 = !{!43, !5, i64 40}
!49 = !{!43, !5, i64 80}
!50 = !{!43, !5, i64 8}
!51 = !{!43, !5, i64 12}
!52 = !{!43, !5, i64 16}
!53 = !{!43, !5, i64 32}
!54 = !{!43, !5, i64 36}
!55 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!56 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !9, i64 8, !55, i64 16}
!57 = !{!56, !9, i64 8}
!58 = !{!40, !5, i64 0}
!59 = !{!42, !5, i64 12}
!60 = !{!42, !5, i64 8}
!61 = !{!42, !5, i64 0}
!62 = !{!"double", !4, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!65 = !{!64, !5, i64 0}
!66 = !{!64, !5, i64 4}
!67 = !{!"p1 _ZTSN2cv8BufferBME", !9, i64 0}
!68 = !{!"p1 _ZTSN2cv14StereoBMParamsE", !9, i64 0}
!69 = !{!"p1 _ZTSN2cv3MatE", !9, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!72 = !{!"_ZTSN2cv24FindStereoCorrespInvokerE", !71, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !68, i64 40, !5, i64 48, !15, i64 52, !67, i64 72}
!73 = !{!72, !69, i64 8}
!74 = !{!72, !69, i64 16}
!75 = !{!72, !69, i64 24}
!76 = !{!72, !5, i64 48}
!77 = !{!72, !69, i64 32}
!78 = !{!56, !5, i64 0}
!79 = !{!42, !26, i64 24}
!80 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !9, i64 0}
!81 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !80, i64 0, !5, i64 8}
!82 = !{!81, !5, i64 8}
!83 = !{!29, !26, i64 0}
!84 = !{!30, !30, i64 0}
!85 = !{!"any p2 pointer", !9, i64 0}
!86 = !{!"p2 int", !85, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseIPiSaIS0_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!87, !86, i64 0}
!89 = !{!87, !86, i64 16}
!90 = !{!"p1 int", !9, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"p2 omnipotent char", !85, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIPhSaIS0_EE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!94 = !{!93, !92, i64 0}
!95 = !{!93, !92, i64 16}
!96 = !{!"p2 short", !85, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIPtSaIS0_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!97, !96, i64 0}
!99 = !{!97, !96, i64 16}
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!"llvm.loop.isvectorized", i32 1}
!102 = !{!"llvm.loop.unroll.runtime.disable"}
!103 = !{!"p1 _ZTSN2cv5utils10BufferArea5BlockE", !9, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIN2cv5utils10BufferArea5BlockESaIS3_EE17_Vector_impl_dataE", !103, i64 0, !103, i64 8, !103, i64 16}
!105 = !{!"_ZTSNSt12_Vector_baseIN2cv5utils10BufferArea5BlockESaIS3_EE12_Vector_implE", !104, i64 0}
!106 = !{!"_ZTSSt12_Vector_baseIN2cv5utils10BufferArea5BlockESaIS3_EE", !105, i64 0}
!107 = !{!"_ZTSSt6vectorIN2cv5utils10BufferArea5BlockESaIS3_EE", !106, i64 0}
!108 = !{!"bool", !4, i64 0}
!109 = !{!"_ZTSN2cv5utils10BufferAreaE", !107, i64 0, !9, i64 24, !30, i64 32, !108, i64 40}
!110 = !{!109, !108, i64 40}
!111 = !{i8 0, i8 2}
!112 = !{}
!113 = !{i64 4}
!114 = !{i64 8}
!115 = !{!"llvm.loop.unroll.disable"}
!116 = distinct !{!116, i1 true, !"_ZN2cvL7makePtrINS_12StereoBMImplEJiiEEENS_3PtrIT_EEDpRKT0_"}
!117 = distinct !{!117, !116, !"_ZN2cvL7makePtrINS_12StereoBMImplEJiiEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!118 = distinct !{!118, i1 true, !"_ZSt11make_sharedIN2cv12StereoBMImplEJRKiS3_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_"}
!119 = distinct !{!119, !118, !"_ZSt11make_sharedIN2cv12StereoBMImplEJRKiS3_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_: argument 0"}
!120 = !{!117}
!121 = !{!119}
!122 = !{!119, !117}
!123 = !{!"_ZTSSt12__shared_ptrIN2cv12StereoBMImplELN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0, !12, i64 8}
!124 = !{!123, !10, i64 0}
!125 = !{!9, !9, i64 0}
!126 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!127 = !{!126, !5, i64 8}
!128 = !{!126, !5, i64 12}
!129 = !{!16, !5, i64 76}
!130 = !{!12, !11, i64 0}
!131 = !{!10, !10, i64 0}
!132 = !{!"_ZTSSt9type_info", !26, i64 8}
!133 = !{!132, !26, i64 8}
!134 = distinct !{null}
!135 = !{!"p1 _ZTSN2cv11FileStorage4ImplE", !9, i64 0}
!136 = !{!"_ZTSSt12__shared_ptrIN2cv11FileStorage4ImplELN9__gnu_cxx12_Lock_policyE2EE", !135, i64 0, !12, i64 8}
!137 = !{!"_ZTSSt10shared_ptrIN2cv11FileStorage4ImplEE", !136, i64 0}
!138 = !{!"_ZTSN2cv3PtrINS_11FileStorage4ImplEEE", !137, i64 0}
!139 = !{!"_ZTSN2cv11FileStorageE", !5, i64 8, !31, i64 16, !138, i64 48}
!140 = !{!139, !5, i64 8}
!141 = distinct !{!141, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!142 = distinct !{!142, !141, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!143 = distinct !{!143, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!144 = distinct !{!144, !143, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!145 = distinct !{!145, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!146 = distinct !{!146, !145, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!147 = distinct !{!147, i1 true, !"_ZN2cv7Scalar_IdE3allEd"}
!148 = distinct !{!148, !147, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!149 = !{!43, !5, i64 84}
!150 = !{!142}
!151 = !{!144}
!152 = !{!146}
!153 = !{!148}
!154 = !{!67, !67, i64 0}
!155 = !{!68, !68, i64 0}
!156 = !{!16, !5, i64 32}
!157 = distinct !{!157, !100}
!158 = distinct !{!158, !100, !101, !102}
!159 = !{!87, !86, i64 8}
!160 = !{!93, !92, i64 8}
!161 = !{!"p1 short", !9, i64 0}
!162 = !{!161, !161, i64 0}
!163 = !{!97, !96, i64 8}
!164 = distinct !{!164, !100, !101, !102}
!165 = distinct !{!165, i1 false, !"LVerDomain"}
!166 = distinct !{!166, !165}
!167 = distinct !{!167, !165}
end_hunk_4

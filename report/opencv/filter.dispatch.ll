Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/filter.dispatch?download=true
inline.NumInlined: 4426
inline.NumDeleted: 1773
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 195
begin_hunk_0_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
bb.a:
  %2 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %3 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %4 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %5 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %6 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %7 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %8 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %9 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %10 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %11 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %12 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %13 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %14 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %15 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %16 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %17 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %18 = alloca %"class.cv::Size_", align 4        ; 7 uses
  %19 = alloca %"class.cv::Point_", align 4       ; 7 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %22 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %25 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %26 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %27 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %28 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %29 = alloca %"class.cv::AutoBuffer", align 8   ; 9 uses
  %30 = alloca %"class.cv::AutoBuffer", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !806, !nonnull !120, !align !121 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !79   ; 23 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !65   ; 21 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !61   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !60   ; 4 uses
  %i.k = xor i32 %i.d, -1
  %i.l = add i32 %i.f, %i.k                       ; 2 uses
  %i.m = xor i32 %i.h, -1
  %i.n = add i32 %i.j, %i.m                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !83   ; 34 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !57
  %i.s = lshr i32 %i.r, 5
  %i.t = and i32 %i.s, 127
  %i.u = add nuw nsw i32 %i.t, 1                  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !69
  %.not.i = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = tail call noundef nonnull align 8 dereferenceable(416) ptr @_ZNK2cv16TLSDataContainer7getDataEv(ptr noundef nonnull align 8 dereferenceable(12) %i.x) ; 9 uses
  %i.z = load i32, ptr %1, align 4, !tbaa !125    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !126
  %i.ac = icmp slt i32 %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph1179, label %._crit_edge1180

.lr.ph1179:                                       ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.am = add i32 %i.f, -1                        ; 2 uses
  %i.an = add i32 %i.j, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %25, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %25, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %20, i64 128 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %23, i64 128 ; 10 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bd = icmp eq i32 %i.p, 0                     ; 31 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %27, i64 20
  %i.ci = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.y, i64 208
  %i.co = getelementptr inbounds nuw i8, ptr %i.y, i64 216
  %i.cp = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.y, i64 220
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 232
  %i.cs = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cu = sub i32 %i.am, %i.d
  %wide.trip.count1199 = zext nneg i32 %i.u to i64
  %i.cv = xor i32 %i.d, -1
  %i.cw = add i32 %i.f, %i.cv
  %i.cx = xor i32 %i.d, -1
  %i.cy = add i32 %i.f, %i.cx
  %i.cz = xor i32 %i.d, -1
  %i.da = add i32 %i.f, %i.cz
  %i.db = xor i32 %i.d, -1
  %i.dc = add i32 %i.f, %i.db
  %i.dd = xor i32 %i.d, -1
  %i.de = add i32 %i.f, %i.dd
  %i.df = xor i32 %i.d, -1
  %i.dg = add i32 %i.f, %i.df
  %i.dh = xor i32 %i.d, -1
  %i.di = add i32 %i.f, %i.dh
  %i.dj = xor i32 %i.d, -1
  %i.dk = add i32 %i.f, %i.dj
  %i.dl = xor i32 %i.d, -1
  %i.dm = add i32 %i.f, %i.dl
  %i.dn = xor i32 %i.d, -1
  %i.do = add i32 %i.f, %i.dn
  %i.dp = xor i32 %i.d, -1
  %i.dq = add i32 %i.f, %i.dp
  %i.dr = xor i32 %i.d, -1
  %i.ds = add i32 %i.f, %i.dr
  %i.dt = xor i32 %i.d, -1
  %i.du = add i32 %i.f, %i.dt
  %i.dv = xor i32 %i.d, -1
  %i.dw = add i32 %i.f, %i.dv
  %i.dx = xor i32 %i.d, -1
  %i.dy = add i32 %i.f, %i.dx
  %i.dz = xor i32 %i.d, -1
  %i.ea = add i32 %i.f, %i.dz
  %i.eb = xor i32 %i.d, -1
  %i.ec = add i32 %i.f, %i.eb
  br label %bb.b

._crit_edge1180:                                  ; preds = %bb.ha, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph1179, %bb.ha
  %.02131177 = phi i32 [ %i.z, %.lr.ph1179 ], [ %i.cdx, %bb.ha ] ; 3 uses
  %i.ed = load i32, ptr %i.ad, align 4, !tbaa !123 ; 2 uses
  %i.ee = sdiv i32 %.02131177, %i.ed
  %i.ef = srem i32 %.02131177, %i.ed
  %i.eg = load i32, ptr %i.ae, align 8, !tbaa !118 ; 4 uses
  %i.eh = mul i32 %i.eg, %i.ef                    ; 24 uses
  %i.ei = mul i32 %i.eg, %i.ee                    ; 4 uses
  %i.ej = load ptr, ptr %i.af, align 8, !tbaa !119, !nonnull !120, !align !121 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !122
  %i.em = sub i32 %i.el, %i.eh
  %.sroa.speculated1066 = call i32 @llvm.smin.i32(i32 %i.em, i32 %i.eg) ; 27 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !130
  %i.ep = sub nsw i32 %i.eo, %i.ei
  %.sroa.speculated1062 = call i32 @llvm.smin.i32(i32 %i.ep, i32 %i.eg) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  store i32 0, ptr %18, align 4, !tbaa !16
  store i32 0, ptr %i.ag, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  store i32 0, ptr %19, align 4, !tbaa !13
  store i32 0, ptr %i.ah, align 4, !tbaa !14
  %i.eq = load ptr, ptr %i.ai, align 8, !tbaa !807, !nonnull !120, !align !121
  call void @_ZNK2cv3Mat9locateROIERNS_5Size_IiEERNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %i.eq, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %19)
  %i.er = load i32, ptr %19, align 4, !tbaa !13   ; 21 uses
  %i.es = add i32 %i.er, %i.eh                    ; 2 uses
  %.neg214 = sub i32 %i.d, %i.es                  ; 22 uses
  %i.et = load i32, ptr %i.ah, align 4, !tbaa !14
  %i.eu = add i32 %i.et, %i.ei                    ; 2 uses
  %.neg = sub i32 %i.h, %i.eu                     ; 28 uses
  %i.ev = icmp sgt i32 %.neg, 0                   ; 18 uses
  %.sroa.speculated1057 = call i32 @llvm.smax.i32(i32 %.neg, i32 0) ; 42 uses
  %i.ew = load i32, ptr %i.ag, align 4, !tbaa !17
  %i.ex = add i32 %.sroa.speculated1062, %i.n
  %i.ey = add i32 %i.ex, %i.eu
  %i.ez = sub i32 %i.ey, %i.ew                    ; 27 uses
  %i.fa = icmp sgt i32 %i.ez, 0                   ; 26 uses
  %.sroa.speculated1052 = call i32 @llvm.smax.i32(i32 %i.ez, i32 0)
  %i.fb = icmp sgt i32 %.neg214, 0                ; 24 uses
  %.sroa.speculated1047 = call i32 @llvm.smax.i32(i32 %.neg214, i32 0) ; 58 uses
  %i.fc = load i32, ptr %18, align 4, !tbaa !16   ; 21 uses
  %i.fd = add i32 %.sroa.speculated1066, %i.l
  %i.fe = add i32 %i.fd, %i.es
  %i.ff = sub i32 %i.fe, %i.fc                    ; 11 uses
  %i.fg = icmp sgt i32 %i.ff, 0                   ; 24 uses
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ff, i32 0) ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.fh = load ptr, ptr %i.ai, align 8, !tbaa !807, !nonnull !120, !align !121
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  store i32 %i.eh, ptr %22, align 4, !tbaa !108
  store i32 %i.ei, ptr %i.aj, align 4, !tbaa !109
  store i32 %.sroa.speculated1066, ptr %i.ak, align 4, !tbaa !110
  store i32 %.sroa.speculated1062, ptr %i.al, align 4, !tbaa !111
  call void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.fh, ptr noundef nonnull align 4 dereferenceable(16) %22)
  %i.fi = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat9adjustROIEiiii(ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef %i.h, i32 noundef %i.n, i32 noundef %i.d, i32 noundef %i.l)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %i.fi)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %23) #25
  %i.fj = icmp slt i32 %.neg, 1
  %i.fk = icmp slt i32 %i.ez, 1
  %or.cond = select i1 %i.fj, i1 %i.fk, i1 false
  %i.fl = icmp slt i32 %.neg214, 1
  %or.cond3 = select i1 %or.cond, i1 %i.fl, i1 false
  %i.fm = icmp slt i32 %i.ff, 1
  %or.cond5 = select i1 %or.cond3, i1 %i.fm, i1 false
  br i1 %or.cond5, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.fn = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.gd unwind label %bb.g      ; 0 uses

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.hb

bb.g:                                             ; preds = %bb.e
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.d
  %i.fq = add i32 %i.am, %.sroa.speculated1066    ; 3 uses
  %i.fr = add i32 %i.an, %.sroa.speculated1062    ; 3 uses
  %i.fs = load i32, ptr %i.ao, align 4, !tbaa !809
  %i.ft = icmp slt i32 %i.fs, %i.fq
  br i1 %i.ft, label %._crit_edge1214, label %bb.i

._crit_edge1214:                                  ; preds = %bb.h
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !806
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.fu = load i32, ptr %i.ap, align 8, !tbaa !810
  %i.fv = icmp slt i32 %i.fu, %i.fr
  %.pre1215 = load ptr, ptr %i.a, align 8, !tbaa !806 ; 3 uses
  br i1 %i.fv, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fw = load i32, ptr %i.y, align 8, !tbaa !107
  %i.fx = and i32 %i.fw, 4095
  %i.fy = getelementptr inbounds nuw i8, ptr %.pre1215, i64 8
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !57
  %.not = icmp eq i32 %i.fx, %i.fz
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge1214, %bb.j, %bb.i
  %i.ga = phi ptr [ %.pre, %._crit_edge1214 ], [ %.pre1215, %bb.j ], [ %.pre1215, %bb.i ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !57
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.y, i32 noundef %i.fr, i32 noundef %i.fq, i32 noundef %i.gc)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  store i32 0, ptr %25, align 4, !tbaa !108
  store i32 0, ptr %i.aq, align 4, !tbaa !109
  store i32 %i.fq, ptr %i.ar, align 4, !tbaa !110
  store i32 %i.fr, ptr %i.as, align 4, !tbaa !111
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %25)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.o

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %bb.m
  %i.ge = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.n:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !806, !nonnull !120, !align !121 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !57 ; 2 uses
  %i.gi = lshr i32 %i.gh, 5
  %i.gj = and i32 %i.gi, 127
  %i.gk = add nuw nsw i32 %i.gj, 1
  %i.gl = shl i32 %i.gh, 2
  %i.gm = and i32 %i.gl, 124
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = lshr i64 1275511473185297, %i.gn
  %i.gp = trunc i64 %i.go to i32
  %i.gq = and i32 %i.gp, 15
  %i.gr = mul nuw nsw i32 %i.gq, %i.gk
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gf, i64 160
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !59 ; 117 uses
  switch i32 %i.gr, label %bb.fp [
    i32 1, label %bb.r
    i32 2, label %bb.am
    i32 3, label %bb.bf
    i32 4, label %bb.by
    i32 6, label %bb.cr
    i32 8, label %bb.dk
    i32 12, label %bb.ed
    i32 16, label %bb.ew
  ]

bb.o:                                             ; preds = %bb.m
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.gv, %bb.p ], [ %i.gu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %.body

bb.r:                                             ; preds = %bb.n
  %i.gw = load ptr, ptr %i.at, align 8, !tbaa !105 ; 2 uses
  %i.gx = load i64, ptr %i.au, align 8, !tbaa !97 ; 2 uses
  %i.gy = load i32, ptr %i.av, align 4, !tbaa !122 ; 6 uses
  %i.gz = load i32, ptr %i.aw, align 8, !tbaa !130 ; 11 uses
  %i.ha = load ptr, ptr %i.ax, align 8, !tbaa !105 ; 13 uses
  %i.hb = load i64, ptr %i.ay, align 8, !tbaa !97 ; 23 uses
  %i.hc = add i32 %i.gy, %.sroa.speculated1047    ; 3 uses
  %i.hd = add i32 %i.hc, %.sroa.speculated        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.he = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1047 ; 2 uses
  %i.hf = zext nneg i32 %i.he to i64              ; 2 uses
  store ptr %i.cc, ptr %16, align 8, !tbaa !812
  %.not.i.i.i = icmp samesign ugt i32 %i.he, 264
  store i64 %i.hf, ptr %i.cd, align 8, !tbaa !813
  br i1 %.not.i.i.i, label %bb.s, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i

bb.s:                                             ; preds = %bb.r
  %i.hg = shl nuw nsw i64 %i.hf, 2
  %i.hh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hg) #29
          to label %.noexc unwind label %bb.al    ; 2 uses

.noexc:                                           ; preds = %bb.s
  store ptr %i.hh, ptr %16, align 8, !tbaa !812
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i:           ; preds = %.noexc, %bb.r
  %i.hi = phi ptr [ %i.cc, %bb.r ], [ %i.hh, %.noexc ] ; 8 uses
  br i1 %i.fb, label %.lr.ph.preheader.i, label %.preheader176.i

.lr.ph.preheader.i:                               ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i
  %wide.trip.count.i = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i

.preheader176.i:                                  ; preds = %bb.t, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i
  br i1 %i.fg, label %.lr.ph179.preheader.i, label %._crit_edge.i

.lr.ph179.preheader.i:                            ; preds = %.preheader176.i
  %i.hj = zext nneg i32 %.sroa.speculated1047 to i64
  %wide.trip.count211.i = zext nneg i32 %i.ff to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.hi, i64 %i.hj
  br label %.lr.ph179.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.t ] ; 3 uses
  %i.hk = trunc i64 %indvars.iv.i to i32
  %i.hl = sub i32 %i.hk, %.sroa.speculated1047
  %i.hm = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.hl, i32 noundef %i.gy, i32 noundef %i.p)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.lr.ph.i
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.i
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader176.i, label %.lr.ph.i, !llvm.loop !657

bb.u:                                             ; preds = %.lr.ph.i
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

._crit_edge.i:                                    ; preds = %bb.v, %.preheader176.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  store ptr %i.ce, ptr %17, align 8, !tbaa !815
  store i64 1032, ptr %i.cf, align 8, !tbaa !816
  br i1 %i.bd, label %bb.x, label %.loopexit175.thread.i

.lr.ph179.i:                                      ; preds = %bb.v, %.lr.ph179.preheader.i
  %indvars.iv208.i = phi i64 [ 0, %.lr.ph179.preheader.i ], [ %indvars.iv.next209.i, %bb.v ] ; 3 uses
  %i.hp = trunc i64 %indvars.iv208.i to i32
  %i.hq = add i32 %i.gy, %i.hp
  %i.hr = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.hq, i32 noundef %i.gy, i32 noundef %i.p)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.lr.ph179.i
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv208.i
  store i32 %i.hr, ptr %gep.i, align 4, !tbaa !18
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, 1 ; 2 uses
  %exitcond212.not.i = icmp eq i64 %indvars.iv.next209.i, %wide.trip.count211.i
  br i1 %exitcond212.not.i, label %._crit_edge.i, label %.lr.ph179.i, !llvm.loop !658

bb.w:                                             ; preds = %.lr.ph179.i
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.x:                                             ; preds = %._crit_edge.i
  %or.cond.i = or i1 %i.ev, %i.fa
  br i1 %or.cond.i, label %bb.y, label %.loopexit175.i

bb.y:                                             ; preds = %bb.x
  %i.ht = sext i32 %i.hd to i64                   ; 2 uses
  %.not.i.i = icmp ugt i32 %i.hd, 1032
  store i64 %i.ht, ptr %i.cf, align 8, !tbaa !816
  br i1 %.not.i.i, label %bb.z, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i

bb.z:                                             ; preds = %bb.y
  %i.hu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ht) #29
          to label %.noexc.i unwind label %bb.aa  ; 2 uses

.noexc.i:                                         ; preds = %bb.z
  store ptr %i.hu, ptr %17, align 8, !tbaa !815
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i:   ; preds = %.noexc.i, %bb.y
  %i.hv = phi ptr [ %i.hu, %.noexc.i ], [ %i.ce, %bb.y ] ; 3 uses
  %i.hw = icmp sgt i32 %i.hd, 0
  br i1 %i.hw, label %.lr.ph181.preheader.i, label %.loopexit175.i

.lr.ph181.preheader.i:                            ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i
  %wide.trip.count216.i = zext nneg i32 %i.hd to i64
  %.pre.i = load i8, ptr %i.gt, align 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hv, i8 %.pre.i, i64 %wide.trip.count216.i, i1 false)
  br label %.loopexit175.i

bb.aa:                                            ; preds = %bb.z
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit175.i:                                   ; preds = %.lr.ph181.preheader.i, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i, %bb.x
  %.0138.i = phi ptr [ %i.hv, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i ], [ null, %bb.x ], [ %i.hv, %.lr.ph181.preheader.i ] ; 3 uses
  %i.hy = icmp sgt i32 %i.gz, 0
  br i1 %i.hy, label %.lr.ph196.i, label %.preheader.i.thread

.loopexit175.thread.i:                            ; preds = %._crit_edge.i
  %i.hz = icmp sgt i32 %i.gz, 0
  br i1 %i.hz, label %.lr.ph196.thread.i, label %.preheader.thread.i

.lr.ph196.thread.i:                               ; preds = %.loopexit175.thread.i
  %i.ia = zext nneg i32 %.sroa.speculated1057 to i64
  %i.ib = mul i64 %i.hb, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.ib
  %i.id = zext nneg i32 %.sroa.speculated1047 to i64 ; 4 uses
  %i.ie = sext i32 %i.gy to i64
  %i.if = sext i32 %i.hc to i64
  %invariant.gep300.i = getelementptr [4 x i8], ptr %i.hi, i64 %i.id ; 5 uses
  %i.ig = add i32 %i.ec, %i.er
  %i.ih = add i32 %i.ig, %.sroa.speculated1066
  %i.ii = add i32 %i.ih, %i.eh
  %i.ij = sub i32 %i.ii, %i.fc
  %smax1807 = call i32 @llvm.smax.i32(i32 %i.ij, i32 0) ; 2 uses
  %i.ik = zext nneg i32 %smax1807 to i64          ; 2 uses
  %xtraiter1801 = and i64 %i.id, 3                ; 3 uses
  %31 = add nsw i32 %.sroa.speculated1047, -1
  %32 = icmp ult i32 %31, 3
  %unroll_iter1805 = and i64 %i.id, 2147483644
  %lcmp.mod1803.not = icmp eq i64 %xtraiter1801, 0
  %lcmp.mod1804 = icmp ne i64 %xtraiter1801, 0
  %xtraiter1808 = and i64 %i.ik, 3                ; 3 uses
  %i.il = add nsw i32 %smax1807, -1
  %i.im = icmp ult i32 %i.il, 3
  %unroll_iter1812 = and i64 %i.ik, 2147483644
  %lcmp.mod1810.not = icmp eq i64 %xtraiter1808, 0
  %lcmp.mod1811 = icmp ne i64 %xtraiter1808, 0
  br label %.preheader174.i

.lr.ph196.i:                                      ; preds = %.loopexit175.i
  %i.in = zext nneg i32 %.sroa.speculated1047 to i64 ; 2 uses
  %i.io = sext i32 %i.gy to i64
  %i.ip = zext nneg i32 %.sroa.speculated1057 to i64 ; 2 uses
  %i.iq = mul i64 %i.hb, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.iq
  %i.is = sext i32 %i.hc to i64
  %i.it = add i32 %i.cu, %i.er
  %i.iu = add i32 %i.it, %.sroa.speculated1066
  %i.iv = add i32 %i.iu, %i.eh
  %i.iw = sub i32 %i.iv, %i.fc
  %smax = call i32 @llvm.smax.i32(i32 %i.iw, i32 0)
  %i.ix = zext nneg i32 %smax to i64
  %wide.trip.count = zext nneg i32 %i.gz to i64
  br label %.preheader171.us.i

.preheader171.us.i:                               ; preds = %.loopexit.us.i, %.lr.ph196.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.us.i ], [ 0, %.lr.ph196.i ] ; 2 uses
  %.0136192.us.i = phi ptr [ %i.jb, %.loopexit.us.i ], [ %i.ir, %.lr.ph196.i ] ; 3 uses
  %.0145190.us.i = phi ptr [ %i.jc, %.loopexit.us.i ], [ %i.gw, %.lr.ph196.i ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.0136192.us.i, i64 %i.in
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iy, ptr align 1 %.0145190.us.i, i64 %i.io, i1 false)
  br i1 %i.fb, label %.lr.ph187.us.preheader.i, label %.preheader170.us.i

.lr.ph187.us.preheader.i:                         ; preds = %.preheader171.us.i
  %i.iz = add nuw i64 %indvar, %i.ip
  %i.ja = mul i64 %i.hb, %i.iz
  %scevgep = getelementptr nuw i8, ptr %i.ha, i64 %i.ja
  %.pre260.i = load i8, ptr %i.gt, align 1
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 %.pre260.i, i64 %i.in, i1 false)
  br label %.preheader170.us.i

.preheader170.us.i:                               ; preds = %.lr.ph187.us.preheader.i, %.preheader171.us.i
  br i1 %i.fg, label %.lr.ph189.us.preheader.i, label %.loopexit.us.i

.lr.ph189.us.preheader.i:                         ; preds = %.preheader170.us.i
  %.pre261.i = load i8, ptr %i.gt, align 1
  %invariant.gep302.i = getelementptr i8, ptr %.0136192.us.i, i64 %i.is
  call void @llvm.memset.p0.i64(ptr align 1 %invariant.gep302.i, i8 %.pre261.i, i64 %i.ix, i1 false)
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.lr.ph189.us.preheader.i, %.preheader170.us.i
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.0136192.us.i, i64 %i.hb
  %i.jc = getelementptr inbounds nuw i8, ptr %.0145190.us.i, i64 %i.gx
  %exitcond = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond, label %.preheader.i, label %.preheader171.us.i, !llvm.loop !659

.preheader.i:                                     ; preds = %.loopexit173.i, %.loopexit.us.i
  %.0138279.i = phi ptr [ %.0138.i, %.loopexit.us.i ], [ null, %.loopexit173.i ] ; 3 uses
  br i1 %i.ev, label %.lr.ph198.i, label %._crit_edge199.i

.preheader.i.thread:                              ; preds = %.loopexit175.i
  br i1 %i.ev, label %.lr.ph198.i.thread, label %._crit_edge199.i.thread

.lr.ph198.i.thread:                               ; preds = %.preheader.i.thread
  %i.jd = sext i32 %i.hd to i64
  br label %.lr.ph198.split.us.preheader.i

.preheader.thread.i:                              ; preds = %.loopexit175.thread.i
  br i1 %i.ev, label %.lr.ph198.thread.i, label %._crit_edge199.thread.i

.lr.ph198.thread.i:                               ; preds = %.preheader.thread.i
  %i.je = sext i32 %i.hd to i64
  br label %.lr.ph198.split.preheader.i

.lr.ph198.i:                                      ; preds = %.preheader.i
  %i.jf = sext i32 %i.hd to i64                   ; 2 uses
  br i1 %i.bd, label %.lr.ph198.split.us.preheader.i, label %.lr.ph198.split.preheader.i

.lr.ph198.split.preheader.i:                      ; preds = %.lr.ph198.i, %.lr.ph198.thread.i
  %i.jg = phi i64 [ %i.je, %.lr.ph198.thread.i ], [ %i.jf, %.lr.ph198.i ]
  %.0138279284287.i = phi ptr [ null, %.lr.ph198.thread.i ], [ %.0138279.i, %.lr.ph198.i ]
  %wide.trip.count243.i = zext nneg i32 %.neg to i64
  br label %.lr.ph198.split.i

.lr.ph198.split.us.preheader.i:                   ; preds = %.lr.ph198.i.thread, %.lr.ph198.i
  %i.jh = phi i64 [ %i.jd, %.lr.ph198.i.thread ], [ %i.jf, %.lr.ph198.i ] ; 6 uses
  %.0138279.i10701072 = phi ptr [ %.0138.i, %.lr.ph198.i.thread ], [ %.0138279.i, %.lr.ph198.i ] ; 6 uses
  %wide.trip.count248.i = zext nneg i32 %.neg to i64 ; 2 uses
  %xtraiter1814 = and i64 %wide.trip.count248.i, 3 ; 3 uses
  %i.ji = add i32 %.neg, -1
  %i.jj = icmp ult i32 %i.ji, 3
  br i1 %i.jj, label %.lr.ph198.split.us.i.epil.preheader, label %.lr.ph198.split.us.preheader.i.new

.lr.ph198.split.us.preheader.i.new:               ; preds = %.lr.ph198.split.us.preheader.i
  %unroll_iter1818 = and i64 %wide.trip.count248.i, 2147483644
  br label %.lr.ph198.split.us.i

.lr.ph198.split.us.i:                             ; preds = %.lr.ph198.split.us.i, %.lr.ph198.split.us.preheader.i.new
  %indvars.iv245.i = phi i64 [ 0, %.lr.ph198.split.us.preheader.i.new ], [ %indvars.iv.next246.i.3, %.lr.ph198.split.us.i ] ; 5 uses
  %niter1819 = phi i64 [ 0, %.lr.ph198.split.us.preheader.i.new ], [ %niter1819.next.3, %.lr.ph198.split.us.i ]
  %i.jk = mul i64 %indvars.iv245.i, %i.hb
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.jk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jl, ptr align 1 %.0138279.i10701072, i64 %i.jh, i1 false)
  %indvars.iv.next246.i = or disjoint i64 %indvars.iv245.i, 1
  %i.jm = mul i64 %indvars.iv.next246.i, %i.hb
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.jm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jn, ptr align 1 %.0138279.i10701072, i64 %i.jh, i1 false)
  %indvars.iv.next246.i.1 = or disjoint i64 %indvars.iv245.i, 2
  %i.jo = mul i64 %indvars.iv.next246.i.1, %i.hb
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.jo
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jp, ptr align 1 %.0138279.i10701072, i64 %i.jh, i1 false)
  %indvars.iv.next246.i.2 = or disjoint i64 %indvars.iv245.i, 3
  %i.jq = mul i64 %indvars.iv.next246.i.2, %i.hb
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.jq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jr, ptr align 1 %.0138279.i10701072, i64 %i.jh, i1 false)
  %indvars.iv.next246.i.3 = add nuw nsw i64 %indvars.iv245.i, 4 ; 2 uses
  %niter1819.next.3 = add i64 %niter1819, 4       ; 2 uses
  %niter1819.ncmp.3 = icmp eq i64 %niter1819.next.3, %unroll_iter1818
  br i1 %niter1819.ncmp.3, label %._crit_edge199.thread291.i.unr-lcssa, label %.lr.ph198.split.us.i, !llvm.loop !660

.preheader174.i:                                  ; preds = %.loopexit173.i, %.lr.ph196.thread.i
  %.0135194.i = phi i32 [ %i.lr, %.loopexit173.i ], [ 0, %.lr.ph196.thread.i ]
  %.0136192.i = phi ptr [ %i.ls, %.loopexit173.i ], [ %i.ic, %.lr.ph196.thread.i ] ; 8 uses
  %.0145190.i = phi ptr [ %i.lt, %.loopexit173.i ], [ %i.gw, %.lr.ph196.thread.i ] ; 12 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.0136192.i, i64 %i.id
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.js, ptr align 1 %.0145190.i, i64 %i.ie, i1 false)
  br i1 %i.fb, label %.lr.ph183.i.preheader, label %.preheader172.i

.lr.ph183.i.preheader:                            ; preds = %.preheader174.i
  br i1 %32, label %.lr.ph183.i.epil.preheader, label %.lr.ph183.i

.preheader172.i.loopexit.unr-lcssa:               ; preds = %.lr.ph183.i
  br i1 %lcmp.mod1803.not, label %.preheader172.i, label %.lr.ph183.i.epil.preheader

.lr.ph183.i.epil.preheader:                       ; preds = %.preheader172.i.loopexit.unr-lcssa, %.lr.ph183.i.preheader
  %indvars.iv218.i.epil.init = phi i64 [ 0, %.lr.ph183.i.preheader ], [ %indvars.iv.next219.i.3, %.preheader172.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1804)
  br label %.lr.ph183.i.epil

.lr.ph183.i.epil:                                 ; preds = %.lr.ph183.i.epil, %.lr.ph183.i.epil.preheader
  %indvars.iv218.i.epil = phi i64 [ %indvars.iv.next219.i.epil, %.lr.ph183.i.epil ], [ %indvars.iv218.i.epil.init, %.lr.ph183.i.epil.preheader ] ; 3 uses
  %epil.iter1802 = phi i64 [ %epil.iter1802.next, %.lr.ph183.i.epil ], [ 0, %.lr.ph183.i.epil.preheader ]
  %i.jt = getelementptr inbounds nuw i8, ptr %.0136192.i, i64 %indvars.iv218.i.epil
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv218.i.epil
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !18
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1
  store i8 %i.jy, ptr %i.jt, align 1
  %indvars.iv.next219.i.epil = add nuw nsw i64 %indvars.iv218.i.epil, 1
  %epil.iter1802.next = add i64 %epil.iter1802, 1 ; 2 uses
  %epil.iter1802.cmp.not = icmp eq i64 %epil.iter1802.next, %xtraiter1801
  br i1 %epil.iter1802.cmp.not, label %.preheader172.i, label %.lr.ph183.i.epil, !llvm.loop !661

.preheader172.i:                                  ; preds = %.preheader172.i.loopexit.unr-lcssa, %.lr.ph183.i.epil, %.preheader174.i
  br i1 %i.fg, label %.lr.ph185.preheader.i, label %.loopexit173.i

.lr.ph185.preheader.i:                            ; preds = %.preheader172.i
  %invariant.gep298.i = getelementptr i8, ptr %.0136192.i, i64 %i.if ; 5 uses
  br i1 %i.im, label %.lr.ph185.i.epil.preheader, label %.lr.ph185.i

.lr.ph183.i:                                      ; preds = %.lr.ph183.i.preheader, %.lr.ph183.i
  %indvars.iv218.i = phi i64 [ %indvars.iv.next219.i.3, %.lr.ph183.i ], [ 0, %.lr.ph183.i.preheader ] ; 6 uses
  %niter1806 = phi i64 [ %niter1806.next.3, %.lr.ph183.i ], [ 0, %.lr.ph183.i.preheader ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.0136192.i, i64 %indvars.iv218.i
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv218.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !18
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1
  store i8 %i.ke, ptr %i.jz, align 1
  %indvars.iv.next219.i = or disjoint i64 %indvars.iv218.i, 1 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.0136192.i, i64 %indvars.iv.next219.i
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.next219.i
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !18
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1
  store i8 %i.kk, ptr %i.kf, align 1
  %indvars.iv.next219.i.1 = or disjoint i64 %indvars.iv218.i, 2 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.0136192.i, i64 %indvars.iv.next219.i.1
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.next219.i.1
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !18
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1
  store i8 %i.kq, ptr %i.kl, align 1
  %indvars.iv.next219.i.2 = or disjoint i64 %indvars.iv218.i, 3 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.0136192.i, i64 %indvars.iv.next219.i.2
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.next219.i.2
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !18
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1
  store i8 %i.kw, ptr %i.kr, align 1
  %indvars.iv.next219.i.3 = add nuw nsw i64 %indvars.iv218.i, 4 ; 2 uses
  %niter1806.next.3 = add i64 %niter1806, 4       ; 2 uses
  %niter1806.ncmp.3 = icmp eq i64 %niter1806.next.3, %unroll_iter1805
  br i1 %niter1806.ncmp.3, label %.preheader172.i.loopexit.unr-lcssa, label %.lr.ph183.i, !llvm.loop !662

.lr.ph185.i:                                      ; preds = %.lr.ph185.preheader.i, %.lr.ph185.i
  %indvars.iv223.i = phi i64 [ %indvars.iv.next224.i.3, %.lr.ph185.i ], [ 0, %.lr.ph185.preheader.i ] ; 6 uses
  %niter1813 = phi i64 [ %niter1813.next.3, %.lr.ph185.i ], [ 0, %.lr.ph185.preheader.i ]
  %gep299.i = getelementptr i8, ptr %invariant.gep298.i, i64 %indvars.iv223.i
  %gep301.i = getelementptr [4 x i8], ptr %invariant.gep300.i, i64 %indvars.iv223.i
  %i.kx = load i32, ptr %gep301.i, align 4, !tbaa !18
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1
  store i8 %i.la, ptr %gep299.i, align 1
  %indvars.iv.next224.i = or disjoint i64 %indvars.iv223.i, 1 ; 2 uses
  %gep299.i.1 = getelementptr i8, ptr %invariant.gep298.i, i64 %indvars.iv.next224.i
  %gep301.i.1 = getelementptr [4 x i8], ptr %invariant.gep300.i, i64 %indvars.iv.next224.i
  %i.lb = load i32, ptr %gep301.i.1, align 4, !tbaa !18
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1
  store i8 %i.le, ptr %gep299.i.1, align 1
  %indvars.iv.next224.i.1 = or disjoint i64 %indvars.iv223.i, 2 ; 2 uses
  %gep299.i.2 = getelementptr i8, ptr %invariant.gep298.i, i64 %indvars.iv.next224.i.1
  %gep301.i.2 = getelementptr [4 x i8], ptr %invariant.gep300.i, i64 %indvars.iv.next224.i.1
  %i.lf = load i32, ptr %gep301.i.2, align 4, !tbaa !18
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1
  store i8 %i.li, ptr %gep299.i.2, align 1
  %indvars.iv.next224.i.2 = or disjoint i64 %indvars.iv223.i, 3 ; 2 uses
  %gep299.i.3 = getelementptr i8, ptr %invariant.gep298.i, i64 %indvars.iv.next224.i.2
  %gep301.i.3 = getelementptr [4 x i8], ptr %invariant.gep300.i, i64 %indvars.iv.next224.i.2
  %i.lj = load i32, ptr %gep301.i.3, align 4, !tbaa !18
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1
  store i8 %i.lm, ptr %gep299.i.3, align 1
  %indvars.iv.next224.i.3 = add nuw nsw i64 %indvars.iv223.i, 4 ; 2 uses
  %niter1813.next.3 = add i64 %niter1813, 4       ; 2 uses
  %niter1813.ncmp.3 = icmp eq i64 %niter1813.next.3, %unroll_iter1812
  br i1 %niter1813.ncmp.3, label %.loopexit173.i.loopexit.unr-lcssa, label %.lr.ph185.i, !llvm.loop !663

.loopexit173.i.loopexit.unr-lcssa:                ; preds = %.lr.ph185.i
  br i1 %lcmp.mod1810.not, label %.loopexit173.i, label %.lr.ph185.i.epil.preheader

.lr.ph185.i.epil.preheader:                       ; preds = %.loopexit173.i.loopexit.unr-lcssa, %.lr.ph185.preheader.i
  %indvars.iv223.i.epil.init = phi i64 [ 0, %.lr.ph185.preheader.i ], [ %indvars.iv.next224.i.3, %.loopexit173.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1811)
  br label %.lr.ph185.i.epil

.lr.ph185.i.epil:                                 ; preds = %.lr.ph185.i.epil, %.lr.ph185.i.epil.preheader
  %indvars.iv223.i.epil = phi i64 [ %indvars.iv223.i.epil.init, %.lr.ph185.i.epil.preheader ], [ %indvars.iv.next224.i.epil, %.lr.ph185.i.epil ] ; 3 uses
  %epil.iter1809 = phi i64 [ 0, %.lr.ph185.i.epil.preheader ], [ %epil.iter1809.next, %.lr.ph185.i.epil ]
  %gep299.i.epil = getelementptr i8, ptr %invariant.gep298.i, i64 %indvars.iv223.i.epil
  %gep301.i.epil = getelementptr [4 x i8], ptr %invariant.gep300.i, i64 %indvars.iv223.i.epil
  %i.ln = load i32, ptr %gep301.i.epil, align 4, !tbaa !18
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds i8, ptr %.0145190.i, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1
  store i8 %i.lq, ptr %gep299.i.epil, align 1
  %indvars.iv.next224.i.epil = add nuw nsw i64 %indvars.iv223.i.epil, 1
  %epil.iter1809.next = add i64 %epil.iter1809, 1 ; 2 uses
  %epil.iter1809.cmp.not = icmp eq i64 %epil.iter1809.next, %xtraiter1808
  br i1 %epil.iter1809.cmp.not, label %.loopexit173.i, label %.lr.ph185.i.epil, !llvm.loop !664

.loopexit173.i:                                   ; preds = %.loopexit173.i.loopexit.unr-lcssa, %.lr.ph185.i.epil, %.preheader172.i
  %i.lr = add nuw nsw i32 %.0135194.i, 1          ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.0136192.i, i64 %i.hb
  %i.lt = getelementptr inbounds nuw i8, ptr %.0145190.i, i64 %i.gx
  %exitcond228.not.i = icmp eq i32 %i.lr, %i.gz
  br i1 %exitcond228.not.i, label %.preheader.i, label %.preheader174.i, !llvm.loop !659

._crit_edge199.i:                                 ; preds = %bb.ab, %.preheader.i
  %.0138279285.i = phi ptr [ %.0138279.i, %.preheader.i ], [ %.0138279284287.i, %bb.ab ]
  br i1 %i.fa, label %.lr.ph202.i, label %._crit_edge203.i

._crit_edge199.i.thread:                          ; preds = %.preheader.i.thread
  br i1 %i.fa, label %.lr.ph202.i.thread, label %._crit_edge203.i

.lr.ph202.i.thread:                               ; preds = %._crit_edge199.i.thread
  %i.lu = sext i32 %i.gz to i64
  %i.lv = mul i64 %i.hb, %i.lu
  %i.lw = sext i32 %i.hd to i64
  br label %.lr.ph202.split.us.preheader.i

._crit_edge199.thread291.i.unr-lcssa:             ; preds = %.lr.ph198.split.us.i
  %lcmp.mod1816.not = icmp eq i64 %xtraiter1814, 0
  br i1 %lcmp.mod1816.not, label %._crit_edge199.thread291.i, label %.lr.ph198.split.us.i.epil.preheader

.lr.ph198.split.us.i.epil.preheader:              ; preds = %._crit_edge199.thread291.i.unr-lcssa, %.lr.ph198.split.us.preheader.i
  %indvars.iv245.i.epil.init = phi i64 [ 0, %.lr.ph198.split.us.preheader.i ], [ %indvars.iv.next246.i.3, %._crit_edge199.thread291.i.unr-lcssa ]
  %lcmp.mod1817 = icmp ne i64 %xtraiter1814, 0
  call void @llvm.assume(i1 %lcmp.mod1817)
  br label %.lr.ph198.split.us.i.epil

.lr.ph198.split.us.i.epil:                        ; preds = %.lr.ph198.split.us.i.epil, %.lr.ph198.split.us.i.epil.preheader
  %indvars.iv245.i.epil = phi i64 [ %indvars.iv245.i.epil.init, %.lr.ph198.split.us.i.epil.preheader ], [ %indvars.iv.next246.i.epil, %.lr.ph198.split.us.i.epil ] ; 2 uses
  %epil.iter1815 = phi i64 [ 0, %.lr.ph198.split.us.i.epil.preheader ], [ %epil.iter1815.next, %.lr.ph198.split.us.i.epil ]
  %i.lx = mul i64 %indvars.iv245.i.epil, %i.hb
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.lx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ly, ptr align 1 %.0138279.i10701072, i64 %i.jh, i1 false)
  %indvars.iv.next246.i.epil = add nuw nsw i64 %indvars.iv245.i.epil, 1
  %epil.iter1815.next = add i64 %epil.iter1815, 1 ; 2 uses
  %epil.iter1815.cmp.not = icmp eq i64 %epil.iter1815.next, %xtraiter1814
  br i1 %epil.iter1815.cmp.not, label %._crit_edge199.thread291.i, label %.lr.ph198.split.us.i.epil, !llvm.loop !665

._crit_edge199.thread291.i:                       ; preds = %.lr.ph198.split.us.i.epil, %._crit_edge199.thread291.i.unr-lcssa
  br i1 %i.fa, label %.lr.ph202.thread293.i, label %._crit_edge203.i

.lr.ph202.thread293.i:                            ; preds = %._crit_edge199.thread291.i
  %i.lz = add nsw i32 %i.gz, %.neg
  %i.ma = sext i32 %i.lz to i64
  %i.mb = mul i64 %i.hb, %i.ma
  br label %.lr.ph202.split.us.preheader.i

._crit_edge199.thread.i:                          ; preds = %.preheader.thread.i
  br i1 %i.fa, label %.lr.ph202.thread.i, label %._crit_edge203.i

.lr.ph202.thread.i:                               ; preds = %._crit_edge199.thread.i
  %i.mc = sext i32 %i.gz to i64
  %i.md = mul i64 %i.hb, %i.mc
  %i.me = sext i32 %i.hd to i64
  br label %.lr.ph202.split.preheader.i

.lr.ph202.i:                                      ; preds = %._crit_edge199.i
  %i.mf = add nsw i32 %i.gz, %.sroa.speculated1057
  %i.mg = sext i32 %i.mf to i64
  %i.mh = mul i64 %i.hb, %i.mg                    ; 2 uses
  %i.mi = sext i32 %i.hd to i64                   ; 2 uses
  br i1 %i.bd, label %.lr.ph202.split.us.preheader.i, label %.lr.ph202.split.preheader.i

.lr.ph202.split.preheader.i:                      ; preds = %.lr.ph202.i, %.lr.ph202.thread.i
  %i.mj = phi i64 [ %i.me, %.lr.ph202.thread.i ], [ %i.mi, %.lr.ph202.i ]
end_hunk_0
begin_hunk_1_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
bb.ar:                                            ; preds = %.lr.ph179.i334
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.as:                                            ; preds = %._crit_edge.i241
  %i.pc = shl nsw i32 %i.ok, 1                    ; 2 uses
  %i.pd = sext i32 %i.pc to i64                   ; 2 uses
  %.not.i.i321 = icmp ugt i32 %i.pc, 1032
  store i64 %i.pd, ptr %i.cb, align 8, !tbaa !816
  br i1 %.not.i.i321, label %bb.at, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322

bb.at:                                            ; preds = %bb.as
  %i.pe = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pd) #29
          to label %.noexc.i330 unwind label %bb.au ; 2 uses

.noexc.i330:                                      ; preds = %bb.at
  store ptr %i.pe, ptr %15, align 8, !tbaa !815
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322: ; preds = %.noexc.i330, %bb.as
  %i.pf = phi ptr [ %i.pe, %.noexc.i330 ], [ %i.ca, %bb.as ] ; 7 uses
  %i.pg = icmp sgt i32 %i.ok, 0
  br i1 %i.pg, label %iter.check1400, label %.loopexit175.i242

iter.check1400:                                   ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322
  %wide.trip.count216.i324 = zext nneg i32 %i.ok to i64 ; 6 uses
  %.pre.i325 = load i16, ptr %i.gt, align 1       ; 3 uses
  %min.iters.check1387 = icmp ult i32 %i.ok, 4
  br i1 %min.iters.check1387, label %.lr.ph181.i326.preheader, label %vector.main.loop.iter.check1388

vector.main.loop.iter.check1388:                  ; preds = %iter.check1400
  %min.iters.check1389 = icmp ult i32 %i.ok, 16
  br i1 %min.iters.check1389, label %vec.epilog.ph1404, label %vector.ph1390

vector.ph1390:                                    ; preds = %vector.main.loop.iter.check1388
  %i.ph = and i64 %wide.trip.count216.i324, 12
  %n.vec1391 = and i64 %wide.trip.count216.i324, 2147483632 ; 4 uses
  %broadcast.splatinsert1392 = insertelement <8 x i16> poison, i16 %.pre.i325, i64 0
  %broadcast.splat1393 = shufflevector <8 x i16> %broadcast.splatinsert1392, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body1394

vector.body1394:                                  ; preds = %vector.body1394, %vector.ph1390
  %index1395 = phi i64 [ 0, %vector.ph1390 ], [ %index.next1396, %vector.body1394 ] ; 2 uses
  %i.pi = shl nuw nsw i64 %index1395, 1
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pi ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  store <8 x i16> %broadcast.splat1393, ptr %i.pj, align 1
  store <8 x i16> %broadcast.splat1393, ptr %i.pk, align 1
  %index.next1396 = add nuw i64 %index1395, 16    ; 2 uses
  %i.pl = icmp eq i64 %index.next1396, %n.vec1391
  br i1 %i.pl, label %middle.block1397, label %vector.body1394, !llvm.loop !670

middle.block1397:                                 ; preds = %vector.body1394
  %cmp.n1398 = icmp eq i64 %n.vec1391, %wide.trip.count216.i324
  br i1 %cmp.n1398, label %.loopexit175.i242, label %vec.epilog.iter.check1402

vec.epilog.iter.check1402:                        ; preds = %middle.block1397
  %min.epilog.iters.check1403 = icmp eq i64 %i.ph, 0
  br i1 %min.epilog.iters.check1403, label %.lr.ph181.i326.preheader, label %vec.epilog.ph1404, !prof !241

vec.epilog.ph1404:                                ; preds = %vector.main.loop.iter.check1388, %vec.epilog.iter.check1402
  %vec.epilog.resume.val1399 = phi i64 [ %n.vec1391, %vec.epilog.iter.check1402 ], [ 0, %vector.main.loop.iter.check1388 ]
  %n.vec1405 = and i64 %wide.trip.count216.i324, 2147483644 ; 3 uses
  %broadcast.splatinsert1406 = insertelement <4 x i16> poison, i16 %.pre.i325, i64 0
  %broadcast.splat1407 = shufflevector <4 x i16> %broadcast.splatinsert1406, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1408

vec.epilog.vector.body1408:                       ; preds = %vec.epilog.vector.body1408, %vec.epilog.ph1404
  %index1409 = phi i64 [ %vec.epilog.resume.val1399, %vec.epilog.ph1404 ], [ %index.next1410, %vec.epilog.vector.body1408 ] ; 2 uses
  %i.pm = shl nuw nsw i64 %index1409, 1
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pm
  store <4 x i16> %broadcast.splat1407, ptr %i.pn, align 1
  %index.next1410 = add nuw i64 %index1409, 4     ; 2 uses
  %i.po = icmp eq i64 %index.next1410, %n.vec1405
  br i1 %i.po, label %vec.epilog.middle.block1411, label %vec.epilog.vector.body1408, !llvm.loop !671

vec.epilog.middle.block1411:                      ; preds = %vec.epilog.vector.body1408
  %cmp.n1412 = icmp eq i64 %n.vec1405, %wide.trip.count216.i324
  br i1 %cmp.n1412, label %.loopexit175.i242, label %.lr.ph181.i326.preheader

.lr.ph181.i326.preheader:                         ; preds = %iter.check1400, %vec.epilog.iter.check1402, %vec.epilog.middle.block1411
  %indvars.iv213.i327.ph = phi i64 [ 0, %iter.check1400 ], [ %n.vec1391, %vec.epilog.iter.check1402 ], [ %n.vec1405, %vec.epilog.middle.block1411 ]
  br label %.lr.ph181.i326

bb.au:                                            ; preds = %bb.at
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph181.i326:                                   ; preds = %.lr.ph181.i326.preheader, %.lr.ph181.i326
  %indvars.iv213.i327 = phi i64 [ %indvars.iv.next214.i328, %.lr.ph181.i326 ], [ %indvars.iv213.i327.ph, %.lr.ph181.i326.preheader ] ; 2 uses
  %i.pq = shl nuw nsw i64 %indvars.iv213.i327, 1
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pq
  store i16 %.pre.i325, ptr %i.pr, align 1
  %indvars.iv.next214.i328 = add nuw nsw i64 %indvars.iv213.i327, 1 ; 2 uses
  %exitcond217.not.i329 = icmp eq i64 %indvars.iv.next214.i328, %wide.trip.count216.i324
  br i1 %exitcond217.not.i329, label %.loopexit175.i242, label %.lr.ph181.i326, !llvm.loop !672

.loopexit175.i242:                                ; preds = %.lr.ph181.i326, %middle.block1397, %vec.epilog.middle.block1411, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322, %._crit_edge.i241
  %.0138.i243 = phi ptr [ null, %._crit_edge.i241 ], [ %i.pf, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322 ], [ %i.pf, %middle.block1397 ], [ %i.pf, %vec.epilog.middle.block1411 ], [ %i.pf, %.lr.ph181.i326 ] ; 10 uses
  %i.ps = icmp sgt i32 %i.og, 0
  br i1 %i.ps, label %.lr.ph196.i285, label %.preheader.i244

.lr.ph196.i285:                                   ; preds = %.loopexit175.i242
  %i.pt = zext nneg i32 %.sroa.speculated1057 to i64 ; 3 uses
  %i.pu = mul i64 %i.oi, %i.pt                    ; 2 uses
  %i.pv = getelementptr i8, ptr %i.oh, i64 %i.pu  ; 3 uses
  %i.pw = shl nuw nsw i32 %.sroa.speculated1047, 1
  %i.px = zext nneg i32 %i.pw to i64              ; 2 uses
  %i.py = shl nsw i32 %i.of, 1
  %i.pz = sext i32 %i.py to i64                   ; 2 uses
  %i.qa = sext i32 %i.oj to i64                   ; 11 uses
  %wide.trip.count232.i303 = zext nneg i32 %.sroa.speculated1047 to i64 ; 12 uses
  %wide.trip.count237.i304 = zext nneg i32 %.sroa.speculated to i64
  br i1 %i.bd, label %.preheader171.us.i305.preheader, label %.preheader174.preheader.i

.preheader171.us.i305.preheader:                  ; preds = %.lr.ph196.i285
  %i.qb = shl nsw i64 %i.qa, 1                    ; 2 uses
  %i.qc = getelementptr i8, ptr %i.oh, i64 %i.pu
  %scevgep1341 = getelementptr i8, ptr %i.qc, i64 %i.qb
  %i.qd = add nsw i32 %i.og, -1
  %i.qe = zext i32 %i.qd to i64
  %i.qf = add nuw nsw i64 %i.pt, %i.qe
  %i.qg = mul i64 %i.oi, %i.qf
  %i.qh = add i32 %i.cw, %i.er
  %i.qi = add i32 %i.qh, %.sroa.speculated1066
  %i.qj = add i32 %i.qi, %i.eh
  %i.qk = sub i32 %i.qj, %i.fc
  %smax1342 = call i32 @llvm.smax.i32(i32 %i.qk, i32 0)
  %i.ql = shl nuw i32 %smax1342, 1
  %i.qm = zext i32 %i.ql to i64
  %i.qn = getelementptr i8, ptr %i.oh, i64 %i.qg
  %i.qo = getelementptr i8, ptr %i.qn, i64 %i.qb
  %scevgep1343 = getelementptr i8, ptr %i.qo, i64 %i.qm
  %scevgep1344 = getelementptr i8, ptr %i.gt, i64 2
  %i.qp = add i32 %i.cy, %i.er
  %i.qq = add i32 %i.qp, %.sroa.speculated1066
  %i.qr = add i32 %i.qq, %i.eh
  %i.qs = sub i32 %i.qr, %i.fc                    ; 3 uses
  %smax1345 = call i32 @llvm.smax.i32(i32 %i.qs, i32 0)
  %i.qt = zext nneg i32 %smax1345 to i64          ; 5 uses
  %i.qu = add nsw i32 %i.og, -1
  %i.qv = zext i32 %i.qu to i64
  %i.qw = add nuw nsw i64 %i.pt, %i.qv
  %i.qx = mul i64 %i.oi, %i.qw
  %i.qy = shl nuw nsw i64 %wide.trip.count232.i303, 1
  %i.qz = getelementptr i8, ptr %i.oh, i64 %i.qx
  %scevgep1354 = getelementptr i8, ptr %i.qz, i64 %i.qy
  %scevgep1355 = getelementptr i8, ptr %i.gt, i64 2
  %i.ra = add i32 %i.ea, %i.er
  %i.rb = add i32 %i.ra, %.sroa.speculated1066
  %i.rc = add i32 %i.rb, %i.eh
  %i.rd = sub i32 %i.rc, %i.fc
  %smax1785 = call i32 @llvm.smax.i32(i32 %i.rd, i32 0)
  %i.re = zext nneg i32 %smax1785 to i64          ; 2 uses
  %min.iters.check1360 = icmp slt i32 %.neg214, 4
  %bound01356 = icmp ult ptr %i.pv, %scevgep1355
  %bound11357 = icmp ult ptr %i.gt, %scevgep1354
  %found.conflict1358 = and i1 %bound01356, %bound11357
  %stride.check1359 = icmp slt i64 %i.oi, 0
  %i.rf = or i1 %found.conflict1358, %stride.check1359
  %min.iters.check1362 = icmp slt i32 %.neg214, 16
  %i.rg = and i64 %wide.trip.count232.i303, 12
  %n.vec1364 = and i64 %wide.trip.count232.i303, 2147483632 ; 4 uses
  %cmp.n1371 = icmp eq i64 %n.vec1364, %wide.trip.count232.i303
  %min.epilog.iters.check1376 = icmp eq i64 %i.rg, 0
  %n.vec1378 = and i64 %wide.trip.count232.i303, 2147483644 ; 3 uses
  %cmp.n1385 = icmp eq i64 %n.vec1378, %wide.trip.count232.i303
  %xtraiter1782 = and i64 %wide.trip.count232.i303, 3 ; 2 uses
  %lcmp.mod1783.not = icmp eq i64 %xtraiter1782, 0
  %min.iters.check = icmp slt i32 %i.qs, 4
  %bound0 = icmp ult ptr %scevgep1341, %scevgep1344
  %bound1 = icmp ult ptr %i.gt, %scevgep1343
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.oi, 0
  %i.rh = or i1 %found.conflict, %stride.check
  %min.iters.check1346 = icmp slt i32 %i.qs, 16
  %i.ri = and i64 %i.qt, 12
  %n.vec = and i64 %i.qt, 2147483632              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.qt
  %min.epilog.iters.check = icmp eq i64 %i.ri, 0
  %n.vec1347 = and i64 %i.qt, 2147483644          ; 3 uses
  %cmp.n1352 = icmp eq i64 %n.vec1347, %i.qt
  %xtraiter1786 = and i64 %i.re, 3                ; 2 uses
  %lcmp.mod1787.not = icmp eq i64 %xtraiter1786, 0
  %invariant.op1848 = add i64 1, %i.qa
  %invariant.op1850 = add i64 2, %i.qa
  %invariant.op1852 = add i64 3, %i.qa
  br label %.preheader171.us.i305

.preheader174.preheader.i:                        ; preds = %.lr.ph196.i285
  %invariant.gep278.i = getelementptr [4 x i8], ptr %i.op, i64 %wide.trip.count232.i303 ; 3 uses
  %i.rj = add i32 %i.dy, %i.er
  %i.rk = add i32 %i.rj, %.sroa.speculated1066
  %i.rl = add i32 %i.rk, %i.eh
  %i.rm = sub i32 %i.rl, %i.fc                    ; 2 uses
  %smax1775 = call i32 @llvm.smax.i32(i32 %i.rm, i32 0) ; 2 uses
  %i.rn = zext nneg i32 %smax1775 to i64          ; 2 uses
  %xtraiter1769 = and i64 %wide.trip.count232.i303, 3 ; 3 uses
  %33 = add nsw i32 %.sroa.speculated1047, -1
  %34 = icmp ult i32 %33, 3
  %unroll_iter1773 = and i64 %wide.trip.count232.i303, 2147483644
  %lcmp.mod1771.not = icmp eq i64 %xtraiter1769, 0
  %lcmp.mod1772 = icmp ne i64 %xtraiter1769, 0
  %xtraiter1776 = and i64 %i.rn, 1
  %i.ro = icmp eq i32 %i.rm, 1
  %unroll_iter1780 = and i64 %i.rn, 2147483646
  %lcmp.mod1778.not = icmp eq i64 %xtraiter1776, 0
  %lcmp.mod1779 = trunc i32 %smax1775 to i1
  br label %.preheader174.i288

.preheader171.us.i305:                            ; preds = %.preheader171.us.i305.preheader, %.loopexit.us.i310
  %.0135194.us.i306 = phi i32 [ %i.tu, %.loopexit.us.i310 ], [ 0, %.preheader171.us.i305.preheader ]
  %.0136192.us.i307 = phi ptr [ %i.tv, %.loopexit.us.i310 ], [ %i.pv, %.preheader171.us.i305.preheader ] ; 16 uses
  %.0145190.us.i308 = phi ptr [ %i.tw, %.loopexit.us.i310 ], [ %i.od, %.preheader171.us.i305.preheader ] ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.px
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rp, ptr align 1 %.0145190.us.i308, i64 %i.pz, i1 false)
  br i1 %i.fb, label %iter.check1373, label %.preheader170.us.i309

iter.check1373:                                   ; preds = %.preheader171.us.i305
  %brmerge = select i1 %min.iters.check1360, i1 true, i1 %i.rf
  br i1 %brmerge, label %.lr.ph187.us.i316.preheader, label %vector.main.loop.iter.check1361

vector.main.loop.iter.check1361:                  ; preds = %iter.check1373
  br i1 %min.iters.check1362, label %vec.epilog.ph1377, label %vector.ph1363

vector.ph1363:                                    ; preds = %vector.main.loop.iter.check1361
  %i.rq = load i16, ptr %i.gt, align 1, !alias.scope !817
  %broadcast.splatinsert1367 = insertelement <8 x i16> poison, i16 %i.rq, i64 0
  %broadcast.splat1368 = shufflevector <8 x i16> %broadcast.splatinsert1367, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body1365

vector.body1365:                                  ; preds = %vector.body1365, %vector.ph1363
  %index1366 = phi i64 [ 0, %vector.ph1363 ], [ %index.next1369, %vector.body1365 ] ; 2 uses
  %i.rr = shl nuw nsw i64 %index1366, 1
  %i.rs = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.rr ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  store <8 x i16> %broadcast.splat1368, ptr %i.rs, align 1, !alias.scope !818, !noalias !817
  store <8 x i16> %broadcast.splat1368, ptr %i.rt, align 1, !alias.scope !818, !noalias !817
  %index.next1369 = add nuw i64 %index1366, 16    ; 2 uses
  %i.ru = icmp eq i64 %index.next1369, %n.vec1364
  br i1 %i.ru, label %middle.block1370, label %vector.body1365, !llvm.loop !676

middle.block1370:                                 ; preds = %vector.body1365
  br i1 %cmp.n1371, label %.preheader170.us.i309, label %vec.epilog.iter.check1375

vec.epilog.iter.check1375:                        ; preds = %middle.block1370
  br i1 %min.epilog.iters.check1376, label %.lr.ph187.us.i316.preheader, label %vec.epilog.ph1377, !prof !241

vec.epilog.ph1377:                                ; preds = %vector.main.loop.iter.check1361, %vec.epilog.iter.check1375
  %vec.epilog.resume.val1372 = phi i64 [ %n.vec1364, %vec.epilog.iter.check1375 ], [ 0, %vector.main.loop.iter.check1361 ]
  %i.rv = load i16, ptr %i.gt, align 1, !alias.scope !817
  %broadcast.splatinsert1381 = insertelement <4 x i16> poison, i16 %i.rv, i64 0
  %broadcast.splat1382 = shufflevector <4 x i16> %broadcast.splatinsert1381, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1379

vec.epilog.vector.body1379:                       ; preds = %vec.epilog.vector.body1379, %vec.epilog.ph1377
  %index1380 = phi i64 [ %vec.epilog.resume.val1372, %vec.epilog.ph1377 ], [ %index.next1383, %vec.epilog.vector.body1379 ] ; 2 uses
  %i.rw = shl nuw nsw i64 %index1380, 1
  %i.rx = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.rw
  store <4 x i16> %broadcast.splat1382, ptr %i.rx, align 1, !alias.scope !818, !noalias !817
  %index.next1383 = add nuw i64 %index1380, 4     ; 2 uses
  %i.ry = icmp eq i64 %index.next1383, %n.vec1378
  br i1 %i.ry, label %vec.epilog.middle.block1384, label %vec.epilog.vector.body1379, !llvm.loop !677

vec.epilog.middle.block1384:                      ; preds = %vec.epilog.vector.body1379
  br i1 %cmp.n1385, label %.preheader170.us.i309, label %.lr.ph187.us.i316.preheader

.lr.ph187.us.i316.preheader:                      ; preds = %iter.check1373, %vec.epilog.iter.check1375, %vec.epilog.middle.block1384
  %indvars.iv229.i317.ph = phi i64 [ 0, %iter.check1373 ], [ %n.vec1378, %vec.epilog.middle.block1384 ], [ %n.vec1364, %vec.epilog.iter.check1375 ] ; 3 uses
  br i1 %lcmp.mod1783.not, label %.lr.ph187.us.i316.prol.loopexit, label %.lr.ph187.us.i316.prol

.lr.ph187.us.i316.prol:                           ; preds = %.lr.ph187.us.i316.preheader, %.lr.ph187.us.i316.prol
  %indvars.iv229.i317.prol = phi i64 [ %indvars.iv.next230.i318.prol, %.lr.ph187.us.i316.prol ], [ %indvars.iv229.i317.ph, %.lr.ph187.us.i316.preheader ] ; 2 uses
  %prol.iter1784 = phi i64 [ %prol.iter1784.next, %.lr.ph187.us.i316.prol ], [ 0, %.lr.ph187.us.i316.preheader ]
  %i.rz = shl nuw nsw i64 %indvars.iv229.i317.prol, 1
  %i.sa = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.rz
  %i.sb = load i16, ptr %i.gt, align 1
  store i16 %i.sb, ptr %i.sa, align 1
  %indvars.iv.next230.i318.prol = add nuw nsw i64 %indvars.iv229.i317.prol, 1 ; 2 uses
  %prol.iter1784.next = add i64 %prol.iter1784, 1 ; 2 uses
  %prol.iter1784.cmp.not = icmp eq i64 %prol.iter1784.next, %xtraiter1782
  br i1 %prol.iter1784.cmp.not, label %.lr.ph187.us.i316.prol.loopexit, label %.lr.ph187.us.i316.prol, !llvm.loop !678

.lr.ph187.us.i316.prol.loopexit:                  ; preds = %.lr.ph187.us.i316.prol, %.lr.ph187.us.i316.preheader
  %indvars.iv229.i317.unr = phi i64 [ %indvars.iv229.i317.ph, %.lr.ph187.us.i316.preheader ], [ %indvars.iv.next230.i318.prol, %.lr.ph187.us.i316.prol ]
  %i.sc = sub nsw i64 %indvars.iv229.i317.ph, %wide.trip.count232.i303
  %i.sd = icmp ugt i64 %i.sc, -4
  br i1 %i.sd, label %.preheader170.us.i309, label %.lr.ph187.us.i316

.lr.ph187.us.i316:                                ; preds = %.lr.ph187.us.i316.prol.loopexit, %.lr.ph187.us.i316
  %indvars.iv229.i317 = phi i64 [ %indvars.iv.next230.i318.3, %.lr.ph187.us.i316 ], [ %indvars.iv229.i317.unr, %.lr.ph187.us.i316.prol.loopexit ] ; 5 uses
  %i.se = shl nuw nsw i64 %indvars.iv229.i317, 1
  %i.sf = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.se
  %i.sg = load i16, ptr %i.gt, align 1
  store i16 %i.sg, ptr %i.sf, align 1
  %indvars.iv.next230.i318 = shl i64 %indvars.iv229.i317, 1
  %i.sh = getelementptr i8, ptr %.0136192.us.i307, i64 %indvars.iv.next230.i318
  %i.si = getelementptr i8, ptr %i.sh, i64 2
  %i.sj = load i16, ptr %i.gt, align 1
  store i16 %i.sj, ptr %i.si, align 1
  %indvars.iv.next230.i318.1 = shl i64 %indvars.iv229.i317, 1
  %i.sk = getelementptr i8, ptr %.0136192.us.i307, i64 %indvars.iv.next230.i318.1
  %i.sl = getelementptr i8, ptr %i.sk, i64 4
  %i.sm = load i16, ptr %i.gt, align 1
  store i16 %i.sm, ptr %i.sl, align 1
  %indvars.iv.next230.i318.2 = shl i64 %indvars.iv229.i317, 1
  %i.sn = getelementptr i8, ptr %.0136192.us.i307, i64 %indvars.iv.next230.i318.2
  %i.so = getelementptr i8, ptr %i.sn, i64 6
  %i.sp = load i16, ptr %i.gt, align 1
  store i16 %i.sp, ptr %i.so, align 1
  %indvars.iv.next230.i318.3 = add nuw nsw i64 %indvars.iv229.i317, 4 ; 2 uses
  %exitcond233.not.i319.3 = icmp eq i64 %indvars.iv.next230.i318.3, %wide.trip.count232.i303
  br i1 %exitcond233.not.i319.3, label %.preheader170.us.i309, label %.lr.ph187.us.i316, !llvm.loop !679

.lr.ph189.us.i312:                                ; preds = %.lr.ph189.us.i312.prol.loopexit, %.lr.ph189.us.i312
  %indvars.iv234.i313 = phi i64 [ %indvars.iv.next235.i314.3, %.lr.ph189.us.i312 ], [ %indvars.iv234.i313.unr, %.lr.ph189.us.i312.prol.loopexit ] ; 5 uses
  %i.sq = add nsw i64 %indvars.iv234.i313, %i.qa
  %i.sr = shl nsw i64 %i.sq, 1
  %i.ss = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.sr
  %i.st = load i16, ptr %i.gt, align 1
  store i16 %i.st, ptr %i.ss, align 1
  %.reass1849 = add i64 %indvars.iv234.i313, %invariant.op1848
  %i.su = shl nsw i64 %.reass1849, 1
  %i.sv = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.su
  %i.sw = load i16, ptr %i.gt, align 1
  store i16 %i.sw, ptr %i.sv, align 1
  %.reass1851 = add i64 %indvars.iv234.i313, %invariant.op1850
  %i.sx = shl nsw i64 %.reass1851, 1
  %i.sy = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.sx
  %i.sz = load i16, ptr %i.gt, align 1
  store i16 %i.sz, ptr %i.sy, align 1
  %.reass1853 = add i64 %indvars.iv234.i313, %invariant.op1852
  %i.ta = shl nsw i64 %.reass1853, 1
  %i.tb = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.ta
  %i.tc = load i16, ptr %i.gt, align 1
  store i16 %i.tc, ptr %i.tb, align 1
  %indvars.iv.next235.i314.3 = add nuw nsw i64 %indvars.iv234.i313, 4 ; 2 uses
  %exitcond238.not.i315.3 = icmp eq i64 %indvars.iv.next235.i314.3, %wide.trip.count237.i304
  br i1 %exitcond238.not.i315.3, label %.loopexit.us.i310, label %.lr.ph189.us.i312, !llvm.loop !680

.preheader170.us.i309:                            ; preds = %.lr.ph187.us.i316.prol.loopexit, %.lr.ph187.us.i316, %middle.block1370, %vec.epilog.middle.block1384, %.preheader171.us.i305
  br i1 %i.fg, label %iter.check, label %.loopexit.us.i310

iter.check:                                       ; preds = %.preheader170.us.i309
  %brmerge1854 = select i1 %min.iters.check, i1 true, i1 %i.rh
  br i1 %brmerge1854, label %.lr.ph189.us.i312.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1346, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.td = load i16, ptr %i.gt, align 1, !alias.scope !819
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.td, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.te = add nsw i64 %index, %i.qa
  %i.tf = shl nsw i64 %i.te, 1
  %i.tg = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.tf ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.tg, align 1, !alias.scope !820, !noalias !819
  store <8 x i16> %broadcast.splat, ptr %i.th, align 1, !alias.scope !820, !noalias !819
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ti = icmp eq i64 %index.next, %n.vec
  br i1 %i.ti, label %middle.block, label %vector.body, !llvm.loop !684

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.us.i310, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph189.us.i312.preheader, label %vec.epilog.ph, !prof !241

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.tj = load i16, ptr %i.gt, align 1, !alias.scope !819
  %broadcast.splatinsert1349 = insertelement <4 x i16> poison, i16 %i.tj, i64 0
  %broadcast.splat1350 = shufflevector <4 x i16> %broadcast.splatinsert1349, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1348 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1351, %vec.epilog.vector.body ] ; 2 uses
  %i.tk = add nsw i64 %index1348, %i.qa
  %i.tl = shl nsw i64 %i.tk, 1
  %i.tm = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.tl
  store <4 x i16> %broadcast.splat1350, ptr %i.tm, align 1, !alias.scope !820, !noalias !819
  %index.next1351 = add nuw i64 %index1348, 4     ; 2 uses
  %i.tn = icmp eq i64 %index.next1351, %n.vec1347
  br i1 %i.tn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !685

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n1352, label %.loopexit.us.i310, label %.lr.ph189.us.i312.preheader

.lr.ph189.us.i312.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv234.i313.ph = phi i64 [ 0, %iter.check ], [ %n.vec1347, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod1787.not, label %.lr.ph189.us.i312.prol.loopexit, label %.lr.ph189.us.i312.prol

.lr.ph189.us.i312.prol:                           ; preds = %.lr.ph189.us.i312.preheader, %.lr.ph189.us.i312.prol
  %indvars.iv234.i313.prol = phi i64 [ %indvars.iv.next235.i314.prol, %.lr.ph189.us.i312.prol ], [ %indvars.iv234.i313.ph, %.lr.ph189.us.i312.preheader ] ; 2 uses
  %prol.iter1788 = phi i64 [ %prol.iter1788.next, %.lr.ph189.us.i312.prol ], [ 0, %.lr.ph189.us.i312.preheader ]
  %i.to = add nsw i64 %indvars.iv234.i313.prol, %i.qa
  %i.tp = shl nsw i64 %i.to, 1
  %i.tq = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.tp
  %i.tr = load i16, ptr %i.gt, align 1
  store i16 %i.tr, ptr %i.tq, align 1
  %indvars.iv.next235.i314.prol = add nuw nsw i64 %indvars.iv234.i313.prol, 1 ; 2 uses
  %prol.iter1788.next = add i64 %prol.iter1788, 1 ; 2 uses
  %prol.iter1788.cmp.not = icmp eq i64 %prol.iter1788.next, %xtraiter1786
  br i1 %prol.iter1788.cmp.not, label %.lr.ph189.us.i312.prol.loopexit, label %.lr.ph189.us.i312.prol, !llvm.loop !686

.lr.ph189.us.i312.prol.loopexit:                  ; preds = %.lr.ph189.us.i312.prol, %.lr.ph189.us.i312.preheader
  %indvars.iv234.i313.unr = phi i64 [ %indvars.iv234.i313.ph, %.lr.ph189.us.i312.preheader ], [ %indvars.iv.next235.i314.prol, %.lr.ph189.us.i312.prol ]
  %i.ts = sub nsw i64 %indvars.iv234.i313.ph, %i.re
  %i.tt = icmp ugt i64 %i.ts, -4
  br i1 %i.tt, label %.loopexit.us.i310, label %.lr.ph189.us.i312

.loopexit.us.i310:                                ; preds = %.lr.ph189.us.i312.prol.loopexit, %.lr.ph189.us.i312, %middle.block, %vec.epilog.middle.block, %.preheader170.us.i309
  %i.tu = add nuw nsw i32 %.0135194.us.i306, 1    ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.oi
  %i.tw = getelementptr inbounds nuw i8, ptr %.0145190.us.i308, i64 %i.oe
  %exitcond239.not.i311 = icmp eq i32 %i.tu, %i.og
  br i1 %exitcond239.not.i311, label %.preheader.i244, label %.preheader171.us.i305, !llvm.loop !687

.preheader.i244:                                  ; preds = %.loopexit173.i293, %.loopexit.us.i310, %.loopexit175.i242
  br i1 %i.ev, label %.lr.ph198.i273, label %._crit_edge199.i245

.lr.ph198.i273:                                   ; preds = %.preheader.i244
  %i.tx = shl nsw i32 %i.ok, 1
  %i.ty = sext i32 %i.tx to i64                   ; 7 uses
  %wide.trip.count248.i274 = zext nneg i32 %.neg to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph198.split.us.i279.preheader, label %.lr.ph198.split.i275

.lr.ph198.split.us.i279.preheader:                ; preds = %.lr.ph198.i273
  %xtraiter1789 = and i64 %wide.trip.count248.i274, 3 ; 3 uses
  %35 = add nsw i32 %.neg, -1
  %i.tz = icmp ult i32 %35, 3
  br i1 %i.tz, label %.lr.ph198.split.us.i279.epil.preheader, label %.lr.ph198.split.us.i279.preheader.new

.lr.ph198.split.us.i279.preheader.new:            ; preds = %.lr.ph198.split.us.i279.preheader
  %unroll_iter1793 = and i64 %wide.trip.count248.i274, 2147483644
  br label %.lr.ph198.split.us.i279

.lr.ph198.split.us.i279:                          ; preds = %.lr.ph198.split.us.i279, %.lr.ph198.split.us.i279.preheader.new
  %indvars.iv245.i280 = phi i64 [ 0, %.lr.ph198.split.us.i279.preheader.new ], [ %indvars.iv.next246.i281.3, %.lr.ph198.split.us.i279 ] ; 5 uses
  %niter1794 = phi i64 [ 0, %.lr.ph198.split.us.i279.preheader.new ], [ %niter1794.next.3, %.lr.ph198.split.us.i279 ]
  %i.ua = mul i64 %indvars.iv245.i280, %i.oi
  %i.ub = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ua
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ub, ptr align 1 %.0138.i243, i64 %i.ty, i1 false)
  %indvars.iv.next246.i281 = or disjoint i64 %indvars.iv245.i280, 1
  %i.uc = mul i64 %indvars.iv.next246.i281, %i.oi
  %i.ud = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.uc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ud, ptr align 1 %.0138.i243, i64 %i.ty, i1 false)
  %indvars.iv.next246.i281.1 = or disjoint i64 %indvars.iv245.i280, 2
  %i.ue = mul i64 %indvars.iv.next246.i281.1, %i.oi
  %i.uf = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ue
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uf, ptr align 1 %.0138.i243, i64 %i.ty, i1 false)
  %indvars.iv.next246.i281.2 = or disjoint i64 %indvars.iv245.i280, 3
  %i.ug = mul i64 %indvars.iv.next246.i281.2, %i.oi
  %i.uh = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ug
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uh, ptr align 1 %.0138.i243, i64 %i.ty, i1 false)
  %indvars.iv.next246.i281.3 = add nuw nsw i64 %indvars.iv245.i280, 4 ; 2 uses
  %niter1794.next.3 = add i64 %niter1794, 4       ; 2 uses
  %niter1794.ncmp.3 = icmp eq i64 %niter1794.next.3, %unroll_iter1793
  br i1 %niter1794.ncmp.3, label %._crit_edge199.thread.i283.unr-lcssa, label %.lr.ph198.split.us.i279, !llvm.loop !688

.preheader174.i288:                               ; preds = %.loopexit173.i293, %.preheader174.preheader.i
  %.0135194.i289 = phi i32 [ %i.wn, %.loopexit173.i293 ], [ 0, %.preheader174.preheader.i ]
  %.0136192.i290 = phi ptr [ %i.wo, %.loopexit173.i293 ], [ %i.pv, %.preheader174.preheader.i ] ; 10 uses
  %.0145190.i291 = phi ptr [ %i.wp, %.loopexit173.i293 ], [ %i.od, %.preheader174.preheader.i ] ; 10 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.px
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ui, ptr align 1 %.0145190.i291, i64 %i.pz, i1 false)
  br i1 %i.fb, label %.lr.ph183.i299.preheader, label %.preheader172.i292

.lr.ph183.i299.preheader:                         ; preds = %.preheader174.i288
  br i1 %34, label %.lr.ph183.i299.epil.preheader, label %.lr.ph183.i299

.preheader172.i292.loopexit.unr-lcssa:            ; preds = %.lr.ph183.i299
  br i1 %lcmp.mod1771.not, label %.preheader172.i292, label %.lr.ph183.i299.epil.preheader

.lr.ph183.i299.epil.preheader:                    ; preds = %.preheader172.i292.loopexit.unr-lcssa, %.lr.ph183.i299.preheader
  %indvars.iv218.i300.epil.init = phi i64 [ 0, %.lr.ph183.i299.preheader ], [ %indvars.iv.next219.i301.3, %.preheader172.i292.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1772)
  br label %.lr.ph183.i299.epil

.lr.ph183.i299.epil:                              ; preds = %.lr.ph183.i299.epil, %.lr.ph183.i299.epil.preheader
  %indvars.iv218.i300.epil = phi i64 [ %indvars.iv.next219.i301.epil, %.lr.ph183.i299.epil ], [ %indvars.iv218.i300.epil.init, %.lr.ph183.i299.epil.preheader ] ; 3 uses
  %epil.iter1770 = phi i64 [ %epil.iter1770.next, %.lr.ph183.i299.epil ], [ 0, %.lr.ph183.i299.epil.preheader ]
  %i.uj = shl nuw nsw i64 %indvars.iv218.i300.epil, 1
  %i.uk = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.uj
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv218.i300.epil
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !18
  %i.un = sext i32 %i.um to i64
  %i.uo = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.un
  %i.up = load i16, ptr %i.uo, align 1
  store i16 %i.up, ptr %i.uk, align 1
  %indvars.iv.next219.i301.epil = add nuw nsw i64 %indvars.iv218.i300.epil, 1
  %epil.iter1770.next = add i64 %epil.iter1770, 1 ; 2 uses
  %epil.iter1770.cmp.not = icmp eq i64 %epil.iter1770.next, %xtraiter1769
  br i1 %epil.iter1770.cmp.not, label %.preheader172.i292, label %.lr.ph183.i299.epil, !llvm.loop !689

.preheader172.i292:                               ; preds = %.preheader172.i292.loopexit.unr-lcssa, %.lr.ph183.i299.epil, %.preheader174.i288
  br i1 %i.fg, label %.lr.ph185.i295.preheader, label %.loopexit173.i293

.lr.ph185.i295.preheader:                         ; preds = %.preheader172.i292
  br i1 %i.ro, label %.lr.ph185.i295.epil.preheader, label %.lr.ph185.i295

.lr.ph183.i299:                                   ; preds = %.lr.ph183.i299.preheader, %.lr.ph183.i299
  %indvars.iv218.i300 = phi i64 [ %indvars.iv.next219.i301.3, %.lr.ph183.i299 ], [ 0, %.lr.ph183.i299.preheader ] ; 6 uses
  %niter1774 = phi i64 [ %niter1774.next.3, %.lr.ph183.i299 ], [ 0, %.lr.ph183.i299.preheader ]
  %i.uq = shl nuw nsw i64 %indvars.iv218.i300, 1
  %i.ur = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.uq
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv218.i300
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !18
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.uu
  %i.uw = load i16, ptr %i.uv, align 1
  store i16 %i.uw, ptr %i.ur, align 1
  %indvars.iv.next219.i301 = or disjoint i64 %indvars.iv218.i300, 1 ; 2 uses
  %i.ux = shl nuw nsw i64 %indvars.iv.next219.i301, 1
  %i.uy = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.ux
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.next219.i301
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !18
  %i.vb = sext i32 %i.va to i64
  %i.vc = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.vb
  %i.vd = load i16, ptr %i.vc, align 1
  store i16 %i.vd, ptr %i.uy, align 1
  %indvars.iv.next219.i301.1 = or disjoint i64 %indvars.iv218.i300, 2 ; 2 uses
  %i.ve = shl nuw nsw i64 %indvars.iv.next219.i301.1, 1
  %i.vf = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.ve
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.next219.i301.1
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !18
  %i.vi = sext i32 %i.vh to i64
  %i.vj = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.vi
  %i.vk = load i16, ptr %i.vj, align 1
  store i16 %i.vk, ptr %i.vf, align 1
  %indvars.iv.next219.i301.2 = or disjoint i64 %indvars.iv218.i300, 3 ; 2 uses
  %i.vl = shl nuw nsw i64 %indvars.iv.next219.i301.2, 1
  %i.vm = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.vl
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.next219.i301.2
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !18
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.vp
  %i.vr = load i16, ptr %i.vq, align 1
  store i16 %i.vr, ptr %i.vm, align 1
  %indvars.iv.next219.i301.3 = add nuw nsw i64 %indvars.iv218.i300, 4 ; 2 uses
  %niter1774.next.3 = add i64 %niter1774, 4       ; 2 uses
  %niter1774.ncmp.3 = icmp eq i64 %niter1774.next.3, %unroll_iter1773
  br i1 %niter1774.ncmp.3, label %.preheader172.i292.loopexit.unr-lcssa, label %.lr.ph183.i299, !llvm.loop !690

.lr.ph185.i295:                                   ; preds = %.lr.ph185.i295.preheader, %.lr.ph185.i295
  %indvars.iv223.i296 = phi i64 [ %indvars.iv.next224.i297.1, %.lr.ph185.i295 ], [ 0, %.lr.ph185.i295.preheader ] ; 4 uses
  %niter1781 = phi i64 [ %niter1781.next.1, %.lr.ph185.i295 ], [ 0, %.lr.ph185.i295.preheader ]
  %i.vs = add nsw i64 %indvars.iv223.i296, %i.qa
  %i.vt = shl nsw i64 %i.vs, 1
  %i.vu = getelementptr inbounds i8, ptr %.0136192.i290, i64 %i.vt
  %gep279.i = getelementptr [4 x i8], ptr %invariant.gep278.i, i64 %indvars.iv223.i296
  %i.vv = load i32, ptr %gep279.i, align 4, !tbaa !18
  %i.vw = sext i32 %i.vv to i64
  %i.vx = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.vw
  %i.vy = load i16, ptr %i.vx, align 1
  store i16 %i.vy, ptr %i.vu, align 1
  %indvars.iv.next224.i297 = or disjoint i64 %indvars.iv223.i296, 1 ; 2 uses
  %i.vz = add nsw i64 %indvars.iv.next224.i297, %i.qa
  %i.wa = shl nsw i64 %i.vz, 1
  %i.wb = getelementptr inbounds i8, ptr %.0136192.i290, i64 %i.wa
  %gep279.i.1 = getelementptr [4 x i8], ptr %invariant.gep278.i, i64 %indvars.iv.next224.i297
  %i.wc = load i32, ptr %gep279.i.1, align 4, !tbaa !18
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.wd
  %i.wf = load i16, ptr %i.we, align 1
  store i16 %i.wf, ptr %i.wb, align 1
  %indvars.iv.next224.i297.1 = add nuw nsw i64 %indvars.iv223.i296, 2 ; 2 uses
  %niter1781.next.1 = add i64 %niter1781, 2       ; 2 uses
  %niter1781.ncmp.1 = icmp eq i64 %niter1781.next.1, %unroll_iter1780
  br i1 %niter1781.ncmp.1, label %.loopexit173.i293.loopexit.unr-lcssa, label %.lr.ph185.i295, !llvm.loop !691

.loopexit173.i293.loopexit.unr-lcssa:             ; preds = %.lr.ph185.i295
  br i1 %lcmp.mod1778.not, label %.loopexit173.i293, label %.lr.ph185.i295.epil.preheader

.lr.ph185.i295.epil.preheader:                    ; preds = %.loopexit173.i293.loopexit.unr-lcssa, %.lr.ph185.i295.preheader
  %indvars.iv223.i296.epil.init = phi i64 [ 0, %.lr.ph185.i295.preheader ], [ %indvars.iv.next224.i297.1, %.loopexit173.i293.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1779)
  %i.wg = add nsw i64 %indvars.iv223.i296.epil.init, %i.qa
  %i.wh = shl nsw i64 %i.wg, 1
  %i.wi = getelementptr inbounds i8, ptr %.0136192.i290, i64 %i.wh
  %gep279.i.epil = getelementptr [4 x i8], ptr %invariant.gep278.i, i64 %indvars.iv223.i296.epil.init
  %i.wj = load i32, ptr %gep279.i.epil, align 4, !tbaa !18
  %i.wk = sext i32 %i.wj to i64
  %i.wl = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.wk
  %i.wm = load i16, ptr %i.wl, align 1
  store i16 %i.wm, ptr %i.wi, align 1
  br label %.loopexit173.i293

.loopexit173.i293:                                ; preds = %.lr.ph185.i295.epil.preheader, %.loopexit173.i293.loopexit.unr-lcssa, %.preheader172.i292
  %i.wn = add nuw nsw i32 %.0135194.i289, 1       ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.oi
  %i.wp = getelementptr inbounds nuw i8, ptr %.0145190.i291, i64 %i.oe
  %exitcond228.not.i294 = icmp eq i32 %i.wn, %i.og
  br i1 %exitcond228.not.i294, label %.preheader.i244, label %.preheader174.i288, !llvm.loop !687

._crit_edge199.i245:                              ; preds = %bb.av, %.preheader.i244
  %i.wq = add nsw i32 %i.og, %.sroa.speculated1057
  %i.wr = sext i32 %i.wq to i64
  %i.ws = mul i64 %i.oi, %i.wr                    ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ws
  br i1 %i.fa, label %.lr.ph202.i252, label %._crit_edge203.i246

._crit_edge199.thread.i283.unr-lcssa:             ; preds = %.lr.ph198.split.us.i279
  %lcmp.mod1791.not = icmp eq i64 %xtraiter1789, 0
  br i1 %lcmp.mod1791.not, label %._crit_edge199.thread.i283, label %.lr.ph198.split.us.i279.epil.preheader

.lr.ph198.split.us.i279.epil.preheader:           ; preds = %._crit_edge199.thread.i283.unr-lcssa, %.lr.ph198.split.us.i279.preheader
  %indvars.iv245.i280.epil.init = phi i64 [ 0, %.lr.ph198.split.us.i279.preheader ], [ %indvars.iv.next246.i281.3, %._crit_edge199.thread.i283.unr-lcssa ]
  %lcmp.mod1792 = icmp ne i64 %xtraiter1789, 0
  call void @llvm.assume(i1 %lcmp.mod1792)
  br label %.lr.ph198.split.us.i279.epil

.lr.ph198.split.us.i279.epil:                     ; preds = %.lr.ph198.split.us.i279.epil, %.lr.ph198.split.us.i279.epil.preheader
  %indvars.iv245.i280.epil = phi i64 [ %indvars.iv.next246.i281.epil, %.lr.ph198.split.us.i279.epil ], [ %indvars.iv245.i280.epil.init, %.lr.ph198.split.us.i279.epil.preheader ] ; 2 uses
  %epil.iter1790 = phi i64 [ %epil.iter1790.next, %.lr.ph198.split.us.i279.epil ], [ 0, %.lr.ph198.split.us.i279.epil.preheader ]
  %i.wu = mul i64 %indvars.iv245.i280.epil, %i.oi
  %i.wv = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.wu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wv, ptr align 1 %.0138.i243, i64 %i.ty, i1 false)
  %indvars.iv.next246.i281.epil = add nuw nsw i64 %indvars.iv245.i280.epil, 1
  %epil.iter1790.next = add i64 %epil.iter1790, 1 ; 2 uses
  %epil.iter1790.cmp.not = icmp eq i64 %epil.iter1790.next, %xtraiter1789
  br i1 %epil.iter1790.cmp.not, label %._crit_edge199.thread.i283, label %.lr.ph198.split.us.i279.epil, !llvm.loop !692

._crit_edge199.thread.i283:                       ; preds = %.lr.ph198.split.us.i279.epil, %._crit_edge199.thread.i283.unr-lcssa
  br i1 %i.fa, label %.lr.ph202.thread.i284, label %._crit_edge203.i246

.lr.ph202.thread.i284:                            ; preds = %._crit_edge199.thread.i283
  %i.ww = add nsw i32 %i.og, %.neg
  %i.wx = sext i32 %i.ww to i64
  %i.wy = mul i64 %i.oi, %i.wx
  br label %.lr.ph202.split.us.preheader.i267

.lr.ph202.i252:                                   ; preds = %._crit_edge199.i245
  %i.wz = shl nsw i32 %i.ok, 1
  %i.xa = sext i32 %i.wz to i64                   ; 2 uses
  br i1 %i.bd, label %.lr.ph202.split.us.preheader.i267, label %.lr.ph202.split.preheader.i253

.lr.ph202.split.preheader.i253:                   ; preds = %.lr.ph202.i252
  %wide.trip.count253.i254 = zext nneg i32 %i.ez to i64
  br label %.lr.ph202.split.i255

.lr.ph202.split.us.preheader.i267:                ; preds = %.lr.ph202.i252, %.lr.ph202.thread.i284
  %i.xb = phi i64 [ %i.ty, %.lr.ph202.thread.i284 ], [ %i.xa, %.lr.ph202.i252 ] ; 5 uses
  %i.xc = phi i64 [ %i.wy, %.lr.ph202.thread.i284 ], [ %i.ws, %.lr.ph202.i252 ]
  %wide.trip.count258.i268 = zext nneg i32 %i.ez to i64 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.xc ; 5 uses
  %xtraiter1795 = and i64 %wide.trip.count258.i268, 3 ; 3 uses
  %i.xe = add i32 %i.ez, -1
  %i.xf = icmp ult i32 %i.xe, 3
  br i1 %i.xf, label %.lr.ph202.split.us.i269.epil.preheader, label %.lr.ph202.split.us.preheader.i267.new

.lr.ph202.split.us.preheader.i267.new:            ; preds = %.lr.ph202.split.us.preheader.i267
  %unroll_iter1799 = and i64 %wide.trip.count258.i268, 2147483644
  br label %.lr.ph202.split.us.i269

.lr.ph202.split.us.i269:                          ; preds = %.lr.ph202.split.us.i269, %.lr.ph202.split.us.preheader.i267.new
  %indvars.iv255.i270 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i267.new ], [ %indvars.iv.next256.i271.3, %.lr.ph202.split.us.i269 ] ; 5 uses
  %niter1800 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i267.new ], [ %niter1800.next.3, %.lr.ph202.split.us.i269 ]
  %i.xg = mul i64 %indvars.iv255.i270, %i.oi
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.xg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xh, ptr align 1 %.0138.i243, i64 %i.xb, i1 false)
  %indvars.iv.next256.i271 = or disjoint i64 %indvars.iv255.i270, 1
  %i.xi = mul i64 %indvars.iv.next256.i271, %i.oi
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.xi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xj, ptr align 1 %.0138.i243, i64 %i.xb, i1 false)
  %indvars.iv.next256.i271.1 = or disjoint i64 %indvars.iv255.i270, 2
  %i.xk = mul i64 %indvars.iv.next256.i271.1, %i.oi
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.xk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xl, ptr align 1 %.0138.i243, i64 %i.xb, i1 false)
  %indvars.iv.next256.i271.2 = or disjoint i64 %indvars.iv255.i270, 3
end_hunk_1
begin_hunk_2_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a

_ZN2cv12cpu_baselineL14fillTileBorderILi2EEEvPKhmiiPhmiiiiiS3_.exit: ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i249, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.gd

bb.bf:                                            ; preds = %bb.n
  %i.ys = load ptr, ptr %i.at, align 8, !tbaa !105 ; 2 uses
  %i.yt = load i64, ptr %i.au, align 8, !tbaa !97 ; 2 uses
  %i.yu = load i32, ptr %i.av, align 4, !tbaa !122 ; 5 uses
  %i.yv = load i32, ptr %i.aw, align 8, !tbaa !130 ; 8 uses
  %i.yw = load ptr, ptr %i.ax, align 8, !tbaa !105 ; 11 uses
  %i.yx = load i64, ptr %i.ay, align 8, !tbaa !97 ; 19 uses
  %i.yy = add i32 %i.yu, %.sroa.speculated1047    ; 2 uses
  %i.yz = add i32 %i.yy, %.sroa.speculated        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.za = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1047 ; 2 uses
  %i.zb = zext nneg i32 %i.za to i64              ; 2 uses
  store ptr %i.bu, ptr %12, align 8, !tbaa !812
  %.not.i.i.i348 = icmp samesign ugt i32 %i.za, 264
  store i64 %i.zb, ptr %i.bv, align 8, !tbaa !813
  br i1 %.not.i.i.i348, label %bb.bg, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i349

bb.bg:                                            ; preds = %bb.bf
  %i.zc = shl nuw nsw i64 %i.zb, 2
  %i.zd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zc) #29
          to label %.noexc458 unwind label %bb.al ; 2 uses

.noexc458:                                        ; preds = %bb.bg
  store ptr %i.zd, ptr %12, align 8, !tbaa !812
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i349

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i349:        ; preds = %.noexc458, %bb.bf
  %i.ze = phi ptr [ %i.bu, %bb.bf ], [ %i.zd, %.noexc458 ] ; 6 uses
  br i1 %i.fb, label %.lr.ph.preheader.i452, label %.preheader176.i350

.lr.ph.preheader.i452:                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i349
  %wide.trip.count.i453 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i454

.preheader176.i350:                               ; preds = %bb.bh, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i349
  br i1 %i.fg, label %.lr.ph179.preheader.i444, label %._crit_edge.i351

.lr.ph179.preheader.i444:                         ; preds = %.preheader176.i350
  %i.zf = zext nneg i32 %.sroa.speculated1047 to i64
  %wide.trip.count211.i445 = zext nneg i32 %i.ff to i64
  %invariant.gep.i446 = getelementptr [4 x i8], ptr %i.ze, i64 %i.zf
  br label %.lr.ph179.i447

.lr.ph.i454:                                      ; preds = %bb.bh, %.lr.ph.preheader.i452
  %indvars.iv.i455 = phi i64 [ 0, %.lr.ph.preheader.i452 ], [ %indvars.iv.next.i456, %bb.bh ] ; 3 uses
  %i.zg = trunc i64 %indvars.iv.i455 to i32
  %i.zh = sub i32 %i.zg, %.sroa.speculated1047
  %i.zi = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.zh, i32 noundef %i.yu, i32 noundef %i.p)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %.lr.ph.i454
  %i.zj = mul nsw i32 %i.zi, 3
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %indvars.iv.i455
  store i32 %i.zj, ptr %i.zk, align 4, !tbaa !18
  %indvars.iv.next.i456 = add nuw nsw i64 %indvars.iv.i455, 1 ; 2 uses
  %exitcond.not.i457 = icmp eq i64 %indvars.iv.next.i456, %wide.trip.count.i453
  br i1 %exitcond.not.i457, label %.preheader176.i350, label %.lr.ph.i454, !llvm.loop !695

bb.bi:                                            ; preds = %.lr.ph.i454
  %i.zl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

._crit_edge.i351:                                 ; preds = %bb.bj, %.preheader176.i350
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store ptr %i.bw, ptr %13, align 8, !tbaa !815
  store i64 1032, ptr %i.bx, align 8, !tbaa !816
  %or.cond.i434 = or i1 %i.ev, %i.fa
  %or.cond1077 = select i1 %i.bd, i1 %or.cond.i434, i1 false
  br i1 %or.cond1077, label %bb.bl, label %.loopexit175.i352

.lr.ph179.i447:                                   ; preds = %bb.bj, %.lr.ph179.preheader.i444
  %indvars.iv208.i448 = phi i64 [ 0, %.lr.ph179.preheader.i444 ], [ %indvars.iv.next209.i450, %bb.bj ] ; 3 uses
  %i.zm = trunc i64 %indvars.iv208.i448 to i32
  %i.zn = add i32 %i.yu, %i.zm
  %i.zo = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.zn, i32 noundef %i.yu, i32 noundef %i.p)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %.lr.ph179.i447
  %i.zp = mul nsw i32 %i.zo, 3
  %gep.i449 = getelementptr [4 x i8], ptr %invariant.gep.i446, i64 %indvars.iv208.i448
  store i32 %i.zp, ptr %gep.i449, align 4, !tbaa !18
  %indvars.iv.next209.i450 = add nuw nsw i64 %indvars.iv208.i448, 1 ; 2 uses
  %exitcond212.not.i451 = icmp eq i64 %indvars.iv.next209.i450, %wide.trip.count211.i445
  br i1 %exitcond212.not.i451, label %._crit_edge.i351, label %.lr.ph179.i447, !llvm.loop !696

bb.bk:                                            ; preds = %.lr.ph179.i447
  %i.zq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bl:                                            ; preds = %._crit_edge.i351
  %i.zr = mul nsw i32 %i.yz, 3                    ; 2 uses
  %i.zs = sext i32 %i.zr to i64                   ; 2 uses
  %.not.i.i435 = icmp ugt i32 %i.zr, 1032
  store i64 %i.zs, ptr %i.bx, align 8, !tbaa !816
  br i1 %.not.i.i435, label %bb.bm, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i436

bb.bm:                                            ; preds = %bb.bl
  %i.zt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zs) #29
          to label %.noexc.i443 unwind label %bb.bn ; 2 uses

.noexc.i443:                                      ; preds = %bb.bm
  store ptr %i.zt, ptr %13, align 8, !tbaa !815
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i436

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i436: ; preds = %.noexc.i443, %bb.bl
  %i.zu = phi ptr [ %i.zt, %.noexc.i443 ], [ %i.bw, %bb.bl ] ; 8 uses
  %i.zv = icmp sgt i32 %i.yz, 0
  br i1 %i.zv, label %.lr.ph181.preheader.i437, label %.loopexit175.i352

.lr.ph181.preheader.i437:                         ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i436
  %wide.trip.count216.i438 = zext nneg i32 %i.yz to i64 ; 2 uses
  %xtraiter1725 = and i64 %wide.trip.count216.i438, 3 ; 3 uses
  %i.zw = icmp ult i32 %i.yz, 4
  br i1 %i.zw, label %.lr.ph181.i439.epil.preheader, label %.lr.ph181.preheader.i437.new

.lr.ph181.preheader.i437.new:                     ; preds = %.lr.ph181.preheader.i437
  %unroll_iter1729 = and i64 %wide.trip.count216.i438, 2147483644
  br label %.lr.ph181.i439

bb.bn:                                            ; preds = %bb.bm
  %i.zx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.lr.ph181.i439:                                   ; preds = %.lr.ph181.i439, %.lr.ph181.preheader.i437.new
  %indvars.iv213.i440 = phi i64 [ 0, %.lr.ph181.preheader.i437.new ], [ %indvars.iv.next214.i441.3, %.lr.ph181.i439 ] ; 5 uses
  %niter1730 = phi i64 [ 0, %.lr.ph181.preheader.i437.new ], [ %niter1730.next.3, %.lr.ph181.i439 ]
  %i.zy = mul nuw nsw i64 %indvars.iv213.i440, 3
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.zy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.zz, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  %i.aaa = mul nuw i64 %indvars.iv213.i440, 3
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.aaa
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aac, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  %i.aad = mul nuw i64 %indvars.iv213.i440, 3
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.aad
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aaf, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  %i.aag = mul nuw i64 %indvars.iv213.i440, 3
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.aag
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aai, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  %indvars.iv.next214.i441.3 = add nuw nsw i64 %indvars.iv213.i440, 4 ; 2 uses
  %niter1730.next.3 = add i64 %niter1730, 4       ; 2 uses
  %niter1730.ncmp.3 = icmp eq i64 %niter1730.next.3, %unroll_iter1729
  br i1 %niter1730.ncmp.3, label %.loopexit175.i352.loopexit.unr-lcssa, label %.lr.ph181.i439, !llvm.loop !697

.loopexit175.i352.loopexit.unr-lcssa:             ; preds = %.lr.ph181.i439
  %lcmp.mod1727.not = icmp eq i64 %xtraiter1725, 0
  br i1 %lcmp.mod1727.not, label %.loopexit175.i352, label %.lr.ph181.i439.epil.preheader

.lr.ph181.i439.epil.preheader:                    ; preds = %.loopexit175.i352.loopexit.unr-lcssa, %.lr.ph181.preheader.i437
  %indvars.iv213.i440.epil.init = phi i64 [ 0, %.lr.ph181.preheader.i437 ], [ %indvars.iv.next214.i441.3, %.loopexit175.i352.loopexit.unr-lcssa ]
  %lcmp.mod1728 = icmp ne i64 %xtraiter1725, 0
  call void @llvm.assume(i1 %lcmp.mod1728)
  br label %.lr.ph181.i439.epil

.lr.ph181.i439.epil:                              ; preds = %.lr.ph181.i439.epil, %.lr.ph181.i439.epil.preheader
  %indvars.iv213.i440.epil = phi i64 [ %indvars.iv213.i440.epil.init, %.lr.ph181.i439.epil.preheader ], [ %indvars.iv.next214.i441.epil, %.lr.ph181.i439.epil ] ; 2 uses
  %epil.iter1726 = phi i64 [ 0, %.lr.ph181.i439.epil.preheader ], [ %epil.iter1726.next, %.lr.ph181.i439.epil ]
  %i.aaj = mul nuw nsw i64 %indvars.iv213.i440.epil, 3
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.aaj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aak, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  %indvars.iv.next214.i441.epil = add nuw nsw i64 %indvars.iv213.i440.epil, 1
  %epil.iter1726.next = add i64 %epil.iter1726, 1 ; 2 uses
  %epil.iter1726.cmp.not = icmp eq i64 %epil.iter1726.next, %xtraiter1725
  br i1 %epil.iter1726.cmp.not, label %.loopexit175.i352, label %.lr.ph181.i439.epil, !llvm.loop !698

.loopexit175.i352:                                ; preds = %.loopexit175.i352.loopexit.unr-lcssa, %.lr.ph181.i439.epil, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i436, %._crit_edge.i351
  %.0138.i353 = phi ptr [ null, %._crit_edge.i351 ], [ %i.zu, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i436 ], [ %i.zu, %.lr.ph181.i439.epil ], [ %i.zu, %.loopexit175.i352.loopexit.unr-lcssa ] ; 10 uses
  %i.aal = icmp sgt i32 %i.yv, 0
  br i1 %i.aal, label %.lr.ph196.i395, label %.preheader.i354

.lr.ph196.i395:                                   ; preds = %.loopexit175.i352
  %i.aam = zext nneg i32 %.sroa.speculated1057 to i64
  %i.aan = mul i64 %i.yx, %i.aam
  %i.aao = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.aan ; 2 uses
  %i.aap = mul nuw nsw i32 %.sroa.speculated1047, 3
  %i.aaq = zext nneg i32 %i.aap to i64            ; 2 uses
  %i.aar = mul nsw i32 %i.yu, 3
  %i.aas = sext i32 %i.aar to i64                 ; 2 uses
  %i.aat = sext i32 %i.yy to i64                  ; 6 uses
  %wide.trip.count232.i417 = zext nneg i32 %.sroa.speculated1047 to i64 ; 5 uses
  br i1 %i.bd, label %.preheader171.us.i419.preheader, label %.preheader174.preheader.i396

.preheader171.us.i419.preheader:                  ; preds = %.lr.ph196.i395
  %i.aau = add i32 %i.dw, %i.er
  %i.aav = add i32 %i.aau, %.sroa.speculated1066
  %i.aaw = add i32 %i.aav, %i.eh
  %i.aax = sub i32 %i.aaw, %i.fc                  ; 2 uses
  %smax1750 = call i32 @llvm.smax.i32(i32 %i.aax, i32 0) ; 2 uses
  %i.aay = zext nneg i32 %smax1750 to i64         ; 2 uses
  %xtraiter1744 = and i64 %wide.trip.count232.i417, 3 ; 3 uses
  %36 = add nsw i32 %.sroa.speculated1047, -1
  %37 = icmp ult i32 %36, 3
  %unroll_iter1748 = and i64 %wide.trip.count232.i417, 2147483644
  %lcmp.mod1746.not = icmp eq i64 %xtraiter1744, 0
  %lcmp.mod1747 = icmp ne i64 %xtraiter1744, 0
  %xtraiter1751 = and i64 %i.aay, 1
  %i.aaz = icmp eq i32 %i.aax, 1
  %unroll_iter1755 = and i64 %i.aay, 2147483646
  %lcmp.mod1753.not = icmp eq i64 %xtraiter1751, 0
  %lcmp.mod1754 = trunc i32 %smax1750 to i1
  br label %.preheader171.us.i419

.preheader174.preheader.i396:                     ; preds = %.lr.ph196.i395
  %invariant.gep278.i399 = getelementptr [4 x i8], ptr %i.ze, i64 %wide.trip.count232.i417 ; 3 uses
  %i.aba = add i32 %i.du, %i.er
  %i.abb = add i32 %i.aba, %.sroa.speculated1066
  %i.abc = add i32 %i.abb, %i.eh
  %i.abd = sub i32 %i.abc, %i.fc                  ; 2 uses
  %smax1737 = call i32 @llvm.smax.i32(i32 %i.abd, i32 0) ; 2 uses
  %i.abe = zext nneg i32 %smax1737 to i64         ; 2 uses
  %xtraiter1731 = and i64 %wide.trip.count232.i417, 1
  %i.abf = icmp eq i32 %.neg214, 1
  %unroll_iter1735 = and i64 %wide.trip.count232.i417, 2147483646
  %lcmp.mod1733.not = icmp eq i64 %xtraiter1731, 0
  %lcmp.mod1734 = trunc i32 %.sroa.speculated1047 to i1
  %xtraiter1738 = and i64 %i.abe, 1
  %i.abg = icmp eq i32 %i.abd, 1
  %unroll_iter1742 = and i64 %i.abe, 2147483646
  %lcmp.mod1740.not = icmp eq i64 %xtraiter1738, 0
  %lcmp.mod1741 = trunc i32 %smax1737 to i1
  br label %.preheader174.i400

.preheader171.us.i419:                            ; preds = %.preheader171.us.i419.preheader, %.loopexit.us.i424
  %.0135194.us.i420 = phi i32 [ %i.ace, %.loopexit.us.i424 ], [ 0, %.preheader171.us.i419.preheader ]
  %.0136192.us.i421 = phi ptr [ %i.acf, %.loopexit.us.i424 ], [ %i.aao, %.preheader171.us.i419.preheader ] ; 10 uses
  %.0145190.us.i422 = phi ptr [ %i.acg, %.loopexit.us.i424 ], [ %i.ys, %.preheader171.us.i419.preheader ] ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.0136192.us.i421, i64 %i.aaq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abh, ptr align 1 %.0145190.us.i422, i64 %i.aas, i1 false)
  br i1 %i.fb, label %.lr.ph187.us.i430.preheader, label %.preheader170.us.i423

.lr.ph187.us.i430.preheader:                      ; preds = %.preheader171.us.i419
  br i1 %37, label %.lr.ph187.us.i430.epil.preheader, label %.lr.ph187.us.i430

.lr.ph187.us.i430:                                ; preds = %.lr.ph187.us.i430.preheader, %.lr.ph187.us.i430
  %indvars.iv229.i431 = phi i64 [ %indvars.iv.next230.i432.3, %.lr.ph187.us.i430 ], [ 0, %.lr.ph187.us.i430.preheader ] ; 5 uses
  %niter1749 = phi i64 [ %niter1749.next.3, %.lr.ph187.us.i430 ], [ 0, %.lr.ph187.us.i430.preheader ]
  %i.abi = mul nuw nsw i64 %indvars.iv229.i431, 3
  %i.abj = getelementptr inbounds nuw i8, ptr %.0136192.us.i421, i64 %i.abi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.abj, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  %i.abk = mul nuw i64 %indvars.iv229.i431, 3
  %i.abl = getelementptr inbounds nuw i8, ptr %.0136192.us.i421, i64 %i.abk
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.abm, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  %i.abn = mul nuw i64 %indvars.iv229.i431, 3
  %i.abo = getelementptr inbounds nuw i8, ptr %.0136192.us.i421, i64 %i.abn
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.abp, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  %i.abq = mul nuw i64 %indvars.iv229.i431, 3
  %i.abr = getelementptr inbounds nuw i8, ptr %.0136192.us.i421, i64 %i.abq
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.abs, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  %indvars.iv.next230.i432.3 = add nuw nsw i64 %indvars.iv229.i431, 4 ; 2 uses
  %niter1749.next.3 = add i64 %niter1749, 4       ; 2 uses
  %niter1749.ncmp.3 = icmp eq i64 %niter1749.next.3, %unroll_iter1748
  br i1 %niter1749.ncmp.3, label %.preheader170.us.i423.loopexit.unr-lcssa, label %.lr.ph187.us.i430, !llvm.loop !699

.lr.ph189.us.i426:                                ; preds = %.lr.ph189.us.i426.preheader, %.lr.ph189.us.i426
  %indvars.iv234.i427 = phi i64 [ %indvars.iv.next235.i428.1, %.lr.ph189.us.i426 ], [ 0, %.lr.ph189.us.i426.preheader ] ; 3 uses
  %niter1756 = phi i64 [ %niter1756.next.1, %.lr.ph189.us.i426 ], [ 0, %.lr.ph189.us.i426.preheader ]
  %i.abt = add nsw i64 %indvars.iv234.i427, %i.aat
  %i.abu = mul nsw i64 %i.abt, 3
  %i.abv = getelementptr inbounds i8, ptr %.0136192.us.i421, i64 %i.abu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.abv, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  %indvars.iv.next235.i428 = or disjoint i64 %indvars.iv234.i427, 1
  %i.abw = add nsw i64 %indvars.iv.next235.i428, %i.aat
  %i.abx = mul nsw i64 %i.abw, 3
  %i.aby = getelementptr inbounds i8, ptr %.0136192.us.i421, i64 %i.abx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aby, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  %indvars.iv.next235.i428.1 = add nuw nsw i64 %indvars.iv234.i427, 2 ; 2 uses
  %niter1756.next.1 = add i64 %niter1756, 2       ; 2 uses
  %niter1756.ncmp.1 = icmp eq i64 %niter1756.next.1, %unroll_iter1755
  br i1 %niter1756.ncmp.1, label %.loopexit.us.i424.loopexit.unr-lcssa, label %.lr.ph189.us.i426, !llvm.loop !700

.preheader170.us.i423.loopexit.unr-lcssa:         ; preds = %.lr.ph187.us.i430
  br i1 %lcmp.mod1746.not, label %.preheader170.us.i423, label %.lr.ph187.us.i430.epil.preheader

.lr.ph187.us.i430.epil.preheader:                 ; preds = %.preheader170.us.i423.loopexit.unr-lcssa, %.lr.ph187.us.i430.preheader
  %indvars.iv229.i431.epil.init = phi i64 [ 0, %.lr.ph187.us.i430.preheader ], [ %indvars.iv.next230.i432.3, %.preheader170.us.i423.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1747)
  br label %.lr.ph187.us.i430.epil

.lr.ph187.us.i430.epil:                           ; preds = %.lr.ph187.us.i430.epil, %.lr.ph187.us.i430.epil.preheader
  %indvars.iv229.i431.epil = phi i64 [ %indvars.iv.next230.i432.epil, %.lr.ph187.us.i430.epil ], [ %indvars.iv229.i431.epil.init, %.lr.ph187.us.i430.epil.preheader ] ; 2 uses
  %epil.iter1745 = phi i64 [ %epil.iter1745.next, %.lr.ph187.us.i430.epil ], [ 0, %.lr.ph187.us.i430.epil.preheader ]
  %i.abz = mul nuw nsw i64 %indvars.iv229.i431.epil, 3
  %i.aca = getelementptr inbounds nuw i8, ptr %.0136192.us.i421, i64 %i.abz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aca, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  %indvars.iv.next230.i432.epil = add nuw nsw i64 %indvars.iv229.i431.epil, 1
  %epil.iter1745.next = add i64 %epil.iter1745, 1 ; 2 uses
  %epil.iter1745.cmp.not = icmp eq i64 %epil.iter1745.next, %xtraiter1744
  br i1 %epil.iter1745.cmp.not, label %.preheader170.us.i423, label %.lr.ph187.us.i430.epil, !llvm.loop !701

.preheader170.us.i423:                            ; preds = %.preheader170.us.i423.loopexit.unr-lcssa, %.lr.ph187.us.i430.epil, %.preheader171.us.i419
  br i1 %i.fg, label %.lr.ph189.us.i426.preheader, label %.loopexit.us.i424

.lr.ph189.us.i426.preheader:                      ; preds = %.preheader170.us.i423
  br i1 %i.aaz, label %.lr.ph189.us.i426.epil.preheader, label %.lr.ph189.us.i426

.loopexit.us.i424.loopexit.unr-lcssa:             ; preds = %.lr.ph189.us.i426
  br i1 %lcmp.mod1753.not, label %.loopexit.us.i424, label %.lr.ph189.us.i426.epil.preheader

.lr.ph189.us.i426.epil.preheader:                 ; preds = %.loopexit.us.i424.loopexit.unr-lcssa, %.lr.ph189.us.i426.preheader
  %indvars.iv234.i427.epil.init = phi i64 [ 0, %.lr.ph189.us.i426.preheader ], [ %indvars.iv.next235.i428.1, %.loopexit.us.i424.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1754)
  %i.acb = add nsw i64 %indvars.iv234.i427.epil.init, %i.aat
  %i.acc = mul nsw i64 %i.acb, 3
  %i.acd = getelementptr inbounds i8, ptr %.0136192.us.i421, i64 %i.acc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.acd, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  br label %.loopexit.us.i424

.loopexit.us.i424:                                ; preds = %.lr.ph189.us.i426.epil.preheader, %.loopexit.us.i424.loopexit.unr-lcssa, %.preheader170.us.i423
  %i.ace = add nuw nsw i32 %.0135194.us.i420, 1   ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %.0136192.us.i421, i64 %i.yx
  %i.acg = getelementptr inbounds nuw i8, ptr %.0145190.us.i422, i64 %i.yt
  %exitcond239.not.i425 = icmp eq i32 %i.ace, %i.yv
  br i1 %exitcond239.not.i425, label %.preheader.i354, label %.preheader171.us.i419, !llvm.loop !702

.preheader.i354:                                  ; preds = %.loopexit173.i405, %.loopexit.us.i424, %.loopexit175.i352
  br i1 %i.ev, label %.lr.ph198.i383, label %._crit_edge199.i355

.lr.ph198.i383:                                   ; preds = %.preheader.i354
  %i.ach = mul nsw i32 %i.yz, 3
  %i.aci = sext i32 %i.ach to i64                 ; 7 uses
  %wide.trip.count248.i384 = zext nneg i32 %.neg to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph198.split.us.i389.preheader, label %.lr.ph198.split.i385

.lr.ph198.split.us.i389.preheader:                ; preds = %.lr.ph198.i383
  %xtraiter1757 = and i64 %wide.trip.count248.i384, 3 ; 3 uses
  %38 = add nsw i32 %.neg, -1
  %i.acj = icmp ult i32 %38, 3
  br i1 %i.acj, label %.lr.ph198.split.us.i389.epil.preheader, label %.lr.ph198.split.us.i389.preheader.new

.lr.ph198.split.us.i389.preheader.new:            ; preds = %.lr.ph198.split.us.i389.preheader
  %unroll_iter1761 = and i64 %wide.trip.count248.i384, 2147483644
  br label %.lr.ph198.split.us.i389

.lr.ph198.split.us.i389:                          ; preds = %.lr.ph198.split.us.i389, %.lr.ph198.split.us.i389.preheader.new
  %indvars.iv245.i390 = phi i64 [ 0, %.lr.ph198.split.us.i389.preheader.new ], [ %indvars.iv.next246.i391.3, %.lr.ph198.split.us.i389 ] ; 5 uses
  %niter1762 = phi i64 [ 0, %.lr.ph198.split.us.i389.preheader.new ], [ %niter1762.next.3, %.lr.ph198.split.us.i389 ]
  %i.ack = mul i64 %indvars.iv245.i390, %i.yx
  %i.acl = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.ack
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acl, ptr align 1 %.0138.i353, i64 %i.aci, i1 false)
  %indvars.iv.next246.i391 = or disjoint i64 %indvars.iv245.i390, 1
  %i.acm = mul i64 %indvars.iv.next246.i391, %i.yx
  %i.acn = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.acm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acn, ptr align 1 %.0138.i353, i64 %i.aci, i1 false)
  %indvars.iv.next246.i391.1 = or disjoint i64 %indvars.iv245.i390, 2
  %i.aco = mul i64 %indvars.iv.next246.i391.1, %i.yx
  %i.acp = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.aco
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acp, ptr align 1 %.0138.i353, i64 %i.aci, i1 false)
  %indvars.iv.next246.i391.2 = or disjoint i64 %indvars.iv245.i390, 3
  %i.acq = mul i64 %indvars.iv.next246.i391.2, %i.yx
  %i.acr = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.acq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acr, ptr align 1 %.0138.i353, i64 %i.aci, i1 false)
  %indvars.iv.next246.i391.3 = add nuw nsw i64 %indvars.iv245.i390, 4 ; 2 uses
  %niter1762.next.3 = add i64 %niter1762, 4       ; 2 uses
  %niter1762.ncmp.3 = icmp eq i64 %niter1762.next.3, %unroll_iter1761
  br i1 %niter1762.ncmp.3, label %._crit_edge199.thread.i393.unr-lcssa, label %.lr.ph198.split.us.i389, !llvm.loop !703

.preheader174.i400:                               ; preds = %.loopexit173.i405, %.preheader174.preheader.i396
  %.0135194.i401 = phi i32 [ %i.aed, %.loopexit173.i405 ], [ 0, %.preheader174.preheader.i396 ]
  %.0136192.i402 = phi ptr [ %i.aee, %.loopexit173.i405 ], [ %i.aao, %.preheader174.preheader.i396 ] ; 8 uses
  %.0145190.i403 = phi ptr [ %i.aef, %.loopexit173.i405 ], [ %i.ys, %.preheader174.preheader.i396 ] ; 8 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.0136192.i402, i64 %i.aaq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acs, ptr align 1 %.0145190.i403, i64 %i.aas, i1 false)
  br i1 %i.fb, label %.lr.ph183.i412.preheader, label %.preheader172.i404

.lr.ph183.i412.preheader:                         ; preds = %.preheader174.i400
  br i1 %i.abf, label %.lr.ph183.i412.epil.preheader, label %.lr.ph183.i412

.preheader172.i404.loopexit.unr-lcssa:            ; preds = %.lr.ph183.i412
  br i1 %lcmp.mod1733.not, label %.preheader172.i404, label %.lr.ph183.i412.epil.preheader

.lr.ph183.i412.epil.preheader:                    ; preds = %.preheader172.i404.loopexit.unr-lcssa, %.lr.ph183.i412.preheader
  %indvars.iv218.i413.epil.init = phi i64 [ 0, %.lr.ph183.i412.preheader ], [ %indvars.iv.next219.i414.1, %.preheader172.i404.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1734)
  %i.act = mul nuw nsw i64 %indvars.iv218.i413.epil.init, 3
  %i.acu = getelementptr inbounds nuw i8, ptr %.0136192.i402, i64 %i.act
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %indvars.iv218.i413.epil.init
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !18
  %i.acx = sext i32 %i.acw to i64
  %i.acy = getelementptr inbounds i8, ptr %.0145190.i403, i64 %i.acx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.acu, ptr noundef nonnull align 1 dereferenceable(3) %i.acy, i64 3, i1 false)
  br label %.preheader172.i404

.preheader172.i404:                               ; preds = %.lr.ph183.i412.epil.preheader, %.preheader172.i404.loopexit.unr-lcssa, %.preheader174.i400
  br i1 %i.fg, label %.lr.ph185.i407.preheader, label %.loopexit173.i405

.lr.ph185.i407.preheader:                         ; preds = %.preheader172.i404
  br i1 %i.abg, label %.lr.ph185.i407.epil.preheader, label %.lr.ph185.i407

.lr.ph183.i412:                                   ; preds = %.lr.ph183.i412.preheader, %.lr.ph183.i412
  %indvars.iv218.i413 = phi i64 [ %indvars.iv.next219.i414.1, %.lr.ph183.i412 ], [ 0, %.lr.ph183.i412.preheader ] ; 4 uses
  %niter1736 = phi i64 [ %niter1736.next.1, %.lr.ph183.i412 ], [ 0, %.lr.ph183.i412.preheader ]
  %i.acz = mul nuw nsw i64 %indvars.iv218.i413, 3
  %i.ada = getelementptr inbounds nuw i8, ptr %.0136192.i402, i64 %i.acz
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %indvars.iv218.i413
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !18
  %i.add = sext i32 %i.adc to i64
  %i.ade = getelementptr inbounds i8, ptr %.0145190.i403, i64 %i.add
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ada, ptr noundef nonnull align 1 dereferenceable(3) %i.ade, i64 3, i1 false)
  %indvars.iv.next219.i414 = or disjoint i64 %indvars.iv218.i413, 1 ; 2 uses
  %i.adf = mul nuw nsw i64 %indvars.iv.next219.i414, 3
  %i.adg = getelementptr inbounds nuw i8, ptr %.0136192.i402, i64 %i.adf
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %indvars.iv.next219.i414
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !18
  %i.adj = sext i32 %i.adi to i64
  %i.adk = getelementptr inbounds i8, ptr %.0145190.i403, i64 %i.adj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.adg, ptr noundef nonnull align 1 dereferenceable(3) %i.adk, i64 3, i1 false)
  %indvars.iv.next219.i414.1 = add nuw nsw i64 %indvars.iv218.i413, 2 ; 2 uses
  %niter1736.next.1 = add i64 %niter1736, 2       ; 2 uses
  %niter1736.ncmp.1 = icmp eq i64 %niter1736.next.1, %unroll_iter1735
  br i1 %niter1736.ncmp.1, label %.preheader172.i404.loopexit.unr-lcssa, label %.lr.ph183.i412, !llvm.loop !704

.lr.ph185.i407:                                   ; preds = %.lr.ph185.i407.preheader, %.lr.ph185.i407
  %indvars.iv223.i408 = phi i64 [ %indvars.iv.next224.i410.1, %.lr.ph185.i407 ], [ 0, %.lr.ph185.i407.preheader ] ; 4 uses
  %niter1743 = phi i64 [ %niter1743.next.1, %.lr.ph185.i407 ], [ 0, %.lr.ph185.i407.preheader ]
  %i.adl = add nsw i64 %indvars.iv223.i408, %i.aat
  %i.adm = mul nsw i64 %i.adl, 3
  %i.adn = getelementptr inbounds i8, ptr %.0136192.i402, i64 %i.adm
  %gep279.i409 = getelementptr [4 x i8], ptr %invariant.gep278.i399, i64 %indvars.iv223.i408
  %i.ado = load i32, ptr %gep279.i409, align 4, !tbaa !18
  %i.adp = sext i32 %i.ado to i64
  %i.adq = getelementptr inbounds i8, ptr %.0145190.i403, i64 %i.adp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.adn, ptr noundef nonnull align 1 dereferenceable(3) %i.adq, i64 3, i1 false)
  %indvars.iv.next224.i410 = or disjoint i64 %indvars.iv223.i408, 1 ; 2 uses
  %i.adr = add nsw i64 %indvars.iv.next224.i410, %i.aat
  %i.ads = mul nsw i64 %i.adr, 3
  %i.adt = getelementptr inbounds i8, ptr %.0136192.i402, i64 %i.ads
  %gep279.i409.1 = getelementptr [4 x i8], ptr %invariant.gep278.i399, i64 %indvars.iv.next224.i410
  %i.adu = load i32, ptr %gep279.i409.1, align 4, !tbaa !18
  %i.adv = sext i32 %i.adu to i64
  %i.adw = getelementptr inbounds i8, ptr %.0145190.i403, i64 %i.adv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.adt, ptr noundef nonnull align 1 dereferenceable(3) %i.adw, i64 3, i1 false)
  %indvars.iv.next224.i410.1 = add nuw nsw i64 %indvars.iv223.i408, 2 ; 2 uses
  %niter1743.next.1 = add i64 %niter1743, 2       ; 2 uses
  %niter1743.ncmp.1 = icmp eq i64 %niter1743.next.1, %unroll_iter1742
  br i1 %niter1743.ncmp.1, label %.loopexit173.i405.loopexit.unr-lcssa, label %.lr.ph185.i407, !llvm.loop !705

.loopexit173.i405.loopexit.unr-lcssa:             ; preds = %.lr.ph185.i407
  br i1 %lcmp.mod1740.not, label %.loopexit173.i405, label %.lr.ph185.i407.epil.preheader

.lr.ph185.i407.epil.preheader:                    ; preds = %.loopexit173.i405.loopexit.unr-lcssa, %.lr.ph185.i407.preheader
  %indvars.iv223.i408.epil.init = phi i64 [ 0, %.lr.ph185.i407.preheader ], [ %indvars.iv.next224.i410.1, %.loopexit173.i405.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1741)
  %i.adx = add nsw i64 %indvars.iv223.i408.epil.init, %i.aat
  %i.ady = mul nsw i64 %i.adx, 3
  %i.adz = getelementptr inbounds i8, ptr %.0136192.i402, i64 %i.ady
  %gep279.i409.epil = getelementptr [4 x i8], ptr %invariant.gep278.i399, i64 %indvars.iv223.i408.epil.init
  %i.aea = load i32, ptr %gep279.i409.epil, align 4, !tbaa !18
  %i.aeb = sext i32 %i.aea to i64
  %i.aec = getelementptr inbounds i8, ptr %.0145190.i403, i64 %i.aeb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.adz, ptr noundef nonnull align 1 dereferenceable(3) %i.aec, i64 3, i1 false)
  br label %.loopexit173.i405

.loopexit173.i405:                                ; preds = %.lr.ph185.i407.epil.preheader, %.loopexit173.i405.loopexit.unr-lcssa, %.preheader172.i404
  %i.aed = add nuw nsw i32 %.0135194.i401, 1      ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %.0136192.i402, i64 %i.yx
  %i.aef = getelementptr inbounds nuw i8, ptr %.0145190.i403, i64 %i.yt
  %exitcond228.not.i406 = icmp eq i32 %i.aed, %i.yv
  br i1 %exitcond228.not.i406, label %.preheader.i354, label %.preheader174.i400, !llvm.loop !702

._crit_edge199.i355:                              ; preds = %bb.bo, %.preheader.i354
  %i.aeg = add nsw i32 %i.yv, %.sroa.speculated1057
  %i.aeh = sext i32 %i.aeg to i64
  %i.aei = mul i64 %i.yx, %i.aeh                  ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.aei
  br i1 %i.fa, label %.lr.ph202.i362, label %._crit_edge203.i356

._crit_edge199.thread.i393.unr-lcssa:             ; preds = %.lr.ph198.split.us.i389
  %lcmp.mod1759.not = icmp eq i64 %xtraiter1757, 0
  br i1 %lcmp.mod1759.not, label %._crit_edge199.thread.i393, label %.lr.ph198.split.us.i389.epil.preheader

.lr.ph198.split.us.i389.epil.preheader:           ; preds = %._crit_edge199.thread.i393.unr-lcssa, %.lr.ph198.split.us.i389.preheader
  %indvars.iv245.i390.epil.init = phi i64 [ 0, %.lr.ph198.split.us.i389.preheader ], [ %indvars.iv.next246.i391.3, %._crit_edge199.thread.i393.unr-lcssa ]
  %lcmp.mod1760 = icmp ne i64 %xtraiter1757, 0
  call void @llvm.assume(i1 %lcmp.mod1760)
  br label %.lr.ph198.split.us.i389.epil

.lr.ph198.split.us.i389.epil:                     ; preds = %.lr.ph198.split.us.i389.epil, %.lr.ph198.split.us.i389.epil.preheader
  %indvars.iv245.i390.epil = phi i64 [ %indvars.iv.next246.i391.epil, %.lr.ph198.split.us.i389.epil ], [ %indvars.iv245.i390.epil.init, %.lr.ph198.split.us.i389.epil.preheader ] ; 2 uses
  %epil.iter1758 = phi i64 [ %epil.iter1758.next, %.lr.ph198.split.us.i389.epil ], [ 0, %.lr.ph198.split.us.i389.epil.preheader ]
  %i.aek = mul i64 %indvars.iv245.i390.epil, %i.yx
  %i.ael = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.aek
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ael, ptr align 1 %.0138.i353, i64 %i.aci, i1 false)
  %indvars.iv.next246.i391.epil = add nuw nsw i64 %indvars.iv245.i390.epil, 1
  %epil.iter1758.next = add i64 %epil.iter1758, 1 ; 2 uses
  %epil.iter1758.cmp.not = icmp eq i64 %epil.iter1758.next, %xtraiter1757
  br i1 %epil.iter1758.cmp.not, label %._crit_edge199.thread.i393, label %.lr.ph198.split.us.i389.epil, !llvm.loop !706

._crit_edge199.thread.i393:                       ; preds = %.lr.ph198.split.us.i389.epil, %._crit_edge199.thread.i393.unr-lcssa
  br i1 %i.fa, label %.lr.ph202.thread.i394, label %._crit_edge203.i356

.lr.ph202.thread.i394:                            ; preds = %._crit_edge199.thread.i393
  %i.aem = add nsw i32 %i.yv, %.neg
  %i.aen = sext i32 %i.aem to i64
  %i.aeo = mul i64 %i.yx, %i.aen
  br label %.lr.ph202.split.us.preheader.i377

.lr.ph202.i362:                                   ; preds = %._crit_edge199.i355
  %i.aep = mul nsw i32 %i.yz, 3
  %i.aeq = sext i32 %i.aep to i64                 ; 2 uses
  br i1 %i.bd, label %.lr.ph202.split.us.preheader.i377, label %.lr.ph202.split.preheader.i363

.lr.ph202.split.preheader.i363:                   ; preds = %.lr.ph202.i362
  %wide.trip.count253.i364 = zext nneg i32 %i.ez to i64
  br label %.lr.ph202.split.i365

.lr.ph202.split.us.preheader.i377:                ; preds = %.lr.ph202.i362, %.lr.ph202.thread.i394
  %i.aer = phi i64 [ %i.aci, %.lr.ph202.thread.i394 ], [ %i.aeq, %.lr.ph202.i362 ] ; 5 uses
  %i.aes = phi i64 [ %i.aeo, %.lr.ph202.thread.i394 ], [ %i.aei, %.lr.ph202.i362 ]
  %wide.trip.count258.i378 = zext nneg i32 %i.ez to i64 ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.aes ; 5 uses
  %xtraiter1763 = and i64 %wide.trip.count258.i378, 3 ; 3 uses
  %i.aeu = add i32 %i.ez, -1
  %i.aev = icmp ult i32 %i.aeu, 3
  br i1 %i.aev, label %.lr.ph202.split.us.i379.epil.preheader, label %.lr.ph202.split.us.preheader.i377.new

.lr.ph202.split.us.preheader.i377.new:            ; preds = %.lr.ph202.split.us.preheader.i377
  %unroll_iter1767 = and i64 %wide.trip.count258.i378, 2147483644
  br label %.lr.ph202.split.us.i379

.lr.ph202.split.us.i379:                          ; preds = %.lr.ph202.split.us.i379, %.lr.ph202.split.us.preheader.i377.new
  %indvars.iv255.i380 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i377.new ], [ %indvars.iv.next256.i381.3, %.lr.ph202.split.us.i379 ] ; 5 uses
  %niter1768 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i377.new ], [ %niter1768.next.3, %.lr.ph202.split.us.i379 ]
  %i.aew = mul i64 %indvars.iv255.i380, %i.yx
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.aew
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aex, ptr align 1 %.0138.i353, i64 %i.aer, i1 false)
  %indvars.iv.next256.i381 = or disjoint i64 %indvars.iv255.i380, 1
  %i.aey = mul i64 %indvars.iv.next256.i381, %i.yx
end_hunk_2
begin_hunk_3_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
.lr.ph.i568:                                      ; preds = %bb.ca, %.lr.ph.preheader.i566
  %indvars.iv.i569 = phi i64 [ 0, %.lr.ph.preheader.i566 ], [ %indvars.iv.next.i570, %bb.ca ] ; 3 uses
  %i.agw = trunc i64 %indvars.iv.i569 to i32
  %i.agx = sub i32 %i.agw, %.sroa.speculated1047
  %i.agy = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.agx, i32 noundef %i.agk, i32 noundef %i.p)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %.lr.ph.i568
  %i.agz = shl nsw i32 %i.agy, 2
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %indvars.iv.i569
  store i32 %i.agz, ptr %i.aha, align 4, !tbaa !18
  %indvars.iv.next.i570 = add nuw nsw i64 %indvars.iv.i569, 1 ; 2 uses
  %exitcond.not.i571 = icmp eq i64 %indvars.iv.next.i570, %wide.trip.count.i567
  br i1 %exitcond.not.i571, label %.preheader176.i463, label %.lr.ph.i568, !llvm.loop !709

bb.cb:                                            ; preds = %.lr.ph.i568
  %i.ahb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

._crit_edge.i464:                                 ; preds = %bb.cc, %.preheader176.i463
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store ptr %i.bs, ptr %11, align 8, !tbaa !815
  store i64 1032, ptr %i.bt, align 8, !tbaa !816
  %or.cond.i547 = or i1 %i.ev, %i.fa
  %or.cond1078 = select i1 %i.bd, i1 %or.cond.i547, i1 false
  br i1 %or.cond1078, label %bb.ce, label %.loopexit175.i465

.lr.ph179.i561:                                   ; preds = %bb.cc, %.lr.ph179.preheader.i558
  %indvars.iv208.i562 = phi i64 [ 0, %.lr.ph179.preheader.i558 ], [ %indvars.iv.next209.i564, %bb.cc ] ; 3 uses
  %i.ahc = trunc i64 %indvars.iv208.i562 to i32
  %i.ahd = add i32 %i.agk, %i.ahc
  %i.ahe = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.ahd, i32 noundef %i.agk, i32 noundef %i.p)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %.lr.ph179.i561
  %i.ahf = shl nsw i32 %i.ahe, 2
  %gep.i563 = getelementptr [4 x i8], ptr %invariant.gep.i560, i64 %indvars.iv208.i562
  store i32 %i.ahf, ptr %gep.i563, align 4, !tbaa !18
  %indvars.iv.next209.i564 = add nuw nsw i64 %indvars.iv208.i562, 1 ; 2 uses
  %exitcond212.not.i565 = icmp eq i64 %indvars.iv.next209.i564, %wide.trip.count211.i559
  br i1 %exitcond212.not.i565, label %._crit_edge.i464, label %.lr.ph179.i561, !llvm.loop !710

bb.cd:                                            ; preds = %.lr.ph179.i561
  %i.ahg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ce:                                            ; preds = %._crit_edge.i464
  %i.ahh = shl nsw i32 %i.agp, 2                  ; 2 uses
  %i.ahi = sext i32 %i.ahh to i64                 ; 2 uses
  %.not.i.i548 = icmp ugt i32 %i.ahh, 1032
  store i64 %i.ahi, ptr %i.bt, align 8, !tbaa !816
  br i1 %.not.i.i548, label %bb.cf, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549

bb.cf:                                            ; preds = %bb.ce
  %i.ahj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ahi) #29
          to label %.noexc.i557 unwind label %bb.cg ; 2 uses

.noexc.i557:                                      ; preds = %bb.cf
  store ptr %i.ahj, ptr %11, align 8, !tbaa !815
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549: ; preds = %.noexc.i557, %bb.ce
  %i.ahk = phi ptr [ %i.ahj, %.noexc.i557 ], [ %i.bs, %bb.ce ] ; 5 uses
  %i.ahl = icmp sgt i32 %i.agp, 0
  br i1 %i.ahl, label %.lr.ph181.preheader.i550, label %.loopexit175.i465

.lr.ph181.preheader.i550:                         ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549
  %wide.trip.count216.i551 = zext nneg i32 %i.agp to i64 ; 3 uses
  %.pre.i552 = load i32, ptr %i.gt, align 1       ; 2 uses
  %min.iters.check1454 = icmp ult i32 %i.agp, 8
  br i1 %min.iters.check1454, label %.lr.ph181.i553.preheader, label %vector.ph1455

vector.ph1455:                                    ; preds = %.lr.ph181.preheader.i550
  %n.vec1456 = and i64 %wide.trip.count216.i551, 2147483640 ; 3 uses
  %broadcast.splatinsert1457 = insertelement <4 x i32> poison, i32 %.pre.i552, i64 0
  %broadcast.splat1458 = shufflevector <4 x i32> %broadcast.splatinsert1457, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1459

vector.body1459:                                  ; preds = %vector.body1459, %vector.ph1455
  %index1460 = phi i64 [ 0, %vector.ph1455 ], [ %index.next1461, %vector.body1459 ] ; 2 uses
  %i.ahm = shl nuw nsw i64 %index1460, 2
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.ahm ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 16
  store <4 x i32> %broadcast.splat1458, ptr %i.ahn, align 1
  store <4 x i32> %broadcast.splat1458, ptr %i.aho, align 1
  %index.next1461 = add nuw i64 %index1460, 8     ; 2 uses
  %i.ahp = icmp eq i64 %index.next1461, %n.vec1456
  br i1 %i.ahp, label %middle.block1462, label %vector.body1459, !llvm.loop !711

middle.block1462:                                 ; preds = %vector.body1459
  %cmp.n1463 = icmp eq i64 %n.vec1456, %wide.trip.count216.i551
  br i1 %cmp.n1463, label %.loopexit175.i465, label %.lr.ph181.i553.preheader

.lr.ph181.i553.preheader:                         ; preds = %.lr.ph181.preheader.i550, %middle.block1462
  %indvars.iv213.i554.ph = phi i64 [ 0, %.lr.ph181.preheader.i550 ], [ %n.vec1456, %middle.block1462 ]
  br label %.lr.ph181.i553

bb.cg:                                            ; preds = %bb.cf
  %i.ahq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.lr.ph181.i553:                                   ; preds = %.lr.ph181.i553.preheader, %.lr.ph181.i553
  %indvars.iv213.i554 = phi i64 [ %indvars.iv.next214.i555, %.lr.ph181.i553 ], [ %indvars.iv213.i554.ph, %.lr.ph181.i553.preheader ] ; 2 uses
  %i.ahr = shl nuw nsw i64 %indvars.iv213.i554, 2
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.ahr
  store i32 %.pre.i552, ptr %i.ahs, align 1
  %indvars.iv.next214.i555 = add nuw nsw i64 %indvars.iv213.i554, 1 ; 2 uses
  %exitcond217.not.i556 = icmp eq i64 %indvars.iv.next214.i555, %wide.trip.count216.i551
  br i1 %exitcond217.not.i556, label %.loopexit175.i465, label %.lr.ph181.i553, !llvm.loop !712

.loopexit175.i465:                                ; preds = %.lr.ph181.i553, %middle.block1462, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549, %._crit_edge.i464
  %.0138.i466 = phi ptr [ null, %._crit_edge.i464 ], [ %i.ahk, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549 ], [ %i.ahk, %middle.block1462 ], [ %i.ahk, %.lr.ph181.i553 ] ; 10 uses
  %i.aht = icmp sgt i32 %i.agl, 0
  br i1 %i.aht, label %.lr.ph196.i508, label %.preheader.i467

.lr.ph196.i508:                                   ; preds = %.loopexit175.i465
  %i.ahu = zext nneg i32 %.sroa.speculated1057 to i64 ; 3 uses
  %i.ahv = mul i64 %i.agn, %i.ahu                 ; 2 uses
  %i.ahw = getelementptr i8, ptr %i.agm, i64 %i.ahv ; 3 uses
  %i.ahx = shl nuw nsw i32 %.sroa.speculated1047, 2
  %i.ahy = zext nneg i32 %i.ahx to i64            ; 2 uses
  %i.ahz = shl nsw i32 %i.agk, 2
  %i.aia = sext i32 %i.ahz to i64                 ; 2 uses
  %i.aib = sext i32 %i.ago to i64                 ; 10 uses
  %wide.trip.count232.i530 = zext nneg i32 %.sroa.speculated1047 to i64 ; 9 uses
  %wide.trip.count237.i531 = zext nneg i32 %.sroa.speculated to i64
  br i1 %i.bd, label %.preheader171.us.i532.preheader, label %.preheader174.preheader.i509

.preheader171.us.i532.preheader:                  ; preds = %.lr.ph196.i508
  %i.aic = shl nsw i64 %i.aib, 2                  ; 2 uses
  %i.aid = getelementptr i8, ptr %i.agm, i64 %i.ahv
  %scevgep1415 = getelementptr i8, ptr %i.aid, i64 %i.aic
  %i.aie = add nsw i32 %i.agl, -1
  %i.aif = zext i32 %i.aie to i64
  %i.aig = add nuw nsw i64 %i.ahu, %i.aif
  %i.aih = mul i64 %i.agn, %i.aig
  %i.aii = add i32 %i.da, %i.er
  %i.aij = add i32 %i.aii, %.sroa.speculated1066
  %i.aik = add i32 %i.aij, %i.eh
  %i.ail = sub i32 %i.aik, %i.fc
  %smax1416 = call i32 @llvm.smax.i32(i32 %i.ail, i32 0)
  %i.aim = zext nneg i32 %smax1416 to i64
  %i.ain = shl nuw nsw i64 %i.aim, 2
  %i.aio = getelementptr i8, ptr %i.agm, i64 %i.aih
  %i.aip = getelementptr i8, ptr %i.aio, i64 %i.aic
  %scevgep1417 = getelementptr i8, ptr %i.aip, i64 %i.ain
  %scevgep1418 = getelementptr i8, ptr %i.gt, i64 4
  %i.aiq = add nsw i32 %i.agl, -1
  %i.air = zext i32 %i.aiq to i64
  %i.ais = add nuw nsw i64 %i.ahu, %i.air
  %i.ait = mul i64 %i.agn, %i.ais
  %i.aiu = shl nuw nsw i64 %wide.trip.count232.i530, 2
  %i.aiv = getelementptr i8, ptr %i.agm, i64 %i.ait
  %scevgep1435 = getelementptr i8, ptr %i.aiv, i64 %i.aiu
  %scevgep1436 = getelementptr i8, ptr %i.gt, i64 4
  %min.iters.check1442 = icmp slt i32 %.neg214, 8
  %bound01437 = icmp ult ptr %i.ahw, %scevgep1436
  %bound11438 = icmp ult ptr %i.gt, %scevgep1435
  %found.conflict1439 = and i1 %bound01437, %bound11438
  %stride.check1440 = icmp slt i64 %i.agn, 0
  %i.aiw = or i1 %found.conflict1439, %stride.check1440
  %n.vec1444 = and i64 %wide.trip.count232.i530, 2147483640 ; 3 uses
  %cmp.n1451 = icmp eq i64 %n.vec1444, %wide.trip.count232.i530
  %xtraiter1707 = and i64 %wide.trip.count232.i530, 3 ; 2 uses
  %lcmp.mod1708.not = icmp eq i64 %xtraiter1707, 0
  %i.aix = add i32 %i.er, %i.f
  %i.aiy = add i32 %i.aix, %.sroa.speculated1066
  %i.aiz = add i32 %i.aiy, %i.eh
  %i.aja = xor i32 %i.fc, -1
  %i.ajb = add i32 %i.aiz, %i.aja
  %i.ajc = sub i32 %i.ajb, %i.d                   ; 2 uses
  %i.ajd = call i32 @llvm.smax.i32(i32 %i.ajc, i32 0)
  %i.aje = zext nneg i32 %i.ajd to i64            ; 4 uses
  %min.iters.check1423 = icmp slt i32 %i.ajc, 8
  %bound01419 = icmp ult ptr %scevgep1415, %scevgep1418
  %bound11420 = icmp ult ptr %i.gt, %scevgep1417
  %found.conflict1421 = and i1 %bound01419, %bound11420
  %stride.check1422 = icmp slt i64 %i.agn, 0
  %i.ajf = or i1 %found.conflict1421, %stride.check1422
  %n.vec1425 = and i64 %i.aje, 2147483640         ; 3 uses
  %cmp.n1432 = icmp eq i64 %n.vec1425, %i.aje
  %xtraiter1710 = and i64 %i.aje, 3               ; 2 uses
  %lcmp.mod1711.not = icmp eq i64 %xtraiter1710, 0
  %invariant.op1842 = add i64 1, %i.aib
  %invariant.op1844 = add i64 2, %i.aib
  %invariant.op1846 = add i64 3, %i.aib
  br label %.preheader171.us.i532

.preheader174.preheader.i509:                     ; preds = %.lr.ph196.i508
  %invariant.gep278.i512 = getelementptr [4 x i8], ptr %i.agu, i64 %wide.trip.count232.i530 ; 3 uses
  %i.ajg = add i32 %i.ds, %i.er
  %i.ajh = add i32 %i.ajg, %.sroa.speculated1066
  %i.aji = add i32 %i.ajh, %i.eh
  %i.ajj = sub i32 %i.aji, %i.fc                  ; 2 uses
  %smax1700 = call i32 @llvm.smax.i32(i32 %i.ajj, i32 0) ; 2 uses
  %i.ajk = zext nneg i32 %smax1700 to i64         ; 2 uses
  %xtraiter1694 = and i64 %wide.trip.count232.i530, 3 ; 3 uses
  %39 = add nsw i32 %.sroa.speculated1047, -1
  %40 = icmp ult i32 %39, 3
  %unroll_iter1698 = and i64 %wide.trip.count232.i530, 2147483644
  %lcmp.mod1696.not = icmp eq i64 %xtraiter1694, 0
  %lcmp.mod1697 = icmp ne i64 %xtraiter1694, 0
  %xtraiter1701 = and i64 %i.ajk, 1
  %i.ajl = icmp eq i32 %i.ajj, 1
  %unroll_iter1705 = and i64 %i.ajk, 2147483646
  %lcmp.mod1703.not = icmp eq i64 %xtraiter1701, 0
  %lcmp.mod1704 = trunc i32 %smax1700 to i1
  br label %.preheader174.i513

.preheader171.us.i532:                            ; preds = %.preheader171.us.i532.preheader, %.loopexit.us.i537
  %.0135194.us.i533 = phi i32 [ %i.ali, %.loopexit.us.i537 ], [ 0, %.preheader171.us.i532.preheader ]
  %.0136192.us.i534 = phi ptr [ %i.alj, %.loopexit.us.i537 ], [ %i.ahw, %.preheader171.us.i532.preheader ] ; 14 uses
  %.0145190.us.i535 = phi ptr [ %i.alk, %.loopexit.us.i537 ], [ %i.agi, %.preheader171.us.i532.preheader ] ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.0136192.us.i534, i64 %i.ahy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ajm, ptr align 1 %.0145190.us.i535, i64 %i.aia, i1 false)
  br i1 %i.fb, label %.lr.ph187.us.i543.preheader, label %.preheader170.us.i536

.lr.ph187.us.i543.preheader:                      ; preds = %.preheader171.us.i532
  %brmerge1855 = select i1 %min.iters.check1442, i1 true, i1 %i.aiw
  br i1 %brmerge1855, label %.lr.ph187.us.i543.preheader1518, label %vector.ph1443

vector.ph1443:                                    ; preds = %.lr.ph187.us.i543.preheader
  %i.ajn = load i32, ptr %i.gt, align 1, !alias.scope !821
  %broadcast.splatinsert1447 = insertelement <4 x i32> poison, i32 %i.ajn, i64 0
  %broadcast.splat1448 = shufflevector <4 x i32> %broadcast.splatinsert1447, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1445

vector.body1445:                                  ; preds = %vector.body1445, %vector.ph1443
  %index1446 = phi i64 [ 0, %vector.ph1443 ], [ %index.next1449, %vector.body1445 ] ; 2 uses
  %i.ajo = shl nuw nsw i64 %index1446, 2
  %i.ajp = getelementptr inbounds nuw i8, ptr %.0136192.us.i534, i64 %i.ajo ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 16
  store <4 x i32> %broadcast.splat1448, ptr %i.ajp, align 1, !alias.scope !822, !noalias !821
  store <4 x i32> %broadcast.splat1448, ptr %i.ajq, align 1, !alias.scope !822, !noalias !821
  %index.next1449 = add nuw i64 %index1446, 8     ; 2 uses
  %i.ajr = icmp eq i64 %index.next1449, %n.vec1444
  br i1 %i.ajr, label %middle.block1450, label %vector.body1445, !llvm.loop !716

middle.block1450:                                 ; preds = %vector.body1445
  br i1 %cmp.n1451, label %.preheader170.us.i536, label %.lr.ph187.us.i543.preheader1518

.lr.ph187.us.i543.preheader1518:                  ; preds = %.lr.ph187.us.i543.preheader, %middle.block1450
  %indvars.iv229.i544.ph = phi i64 [ %n.vec1444, %middle.block1450 ], [ 0, %.lr.ph187.us.i543.preheader ] ; 3 uses
  br i1 %lcmp.mod1708.not, label %.lr.ph187.us.i543.prol.loopexit, label %.lr.ph187.us.i543.prol

.lr.ph187.us.i543.prol:                           ; preds = %.lr.ph187.us.i543.preheader1518, %.lr.ph187.us.i543.prol
  %indvars.iv229.i544.prol = phi i64 [ %indvars.iv.next230.i545.prol, %.lr.ph187.us.i543.prol ], [ %indvars.iv229.i544.ph, %.lr.ph187.us.i543.preheader1518 ] ; 2 uses
  %prol.iter1709 = phi i64 [ %prol.iter1709.next, %.lr.ph187.us.i543.prol ], [ 0, %.lr.ph187.us.i543.preheader1518 ]
  %i.ajs = shl nuw nsw i64 %indvars.iv229.i544.prol, 2
  %i.ajt = getelementptr inbounds nuw i8, ptr %.0136192.us.i534, i64 %i.ajs
  %i.aju = load i32, ptr %i.gt, align 1
  store i32 %i.aju, ptr %i.ajt, align 1
  %indvars.iv.next230.i545.prol = add nuw nsw i64 %indvars.iv229.i544.prol, 1 ; 2 uses
  %prol.iter1709.next = add i64 %prol.iter1709, 1 ; 2 uses
  %prol.iter1709.cmp.not = icmp eq i64 %prol.iter1709.next, %xtraiter1707
  br i1 %prol.iter1709.cmp.not, label %.lr.ph187.us.i543.prol.loopexit, label %.lr.ph187.us.i543.prol, !llvm.loop !717

.lr.ph187.us.i543.prol.loopexit:                  ; preds = %.lr.ph187.us.i543.prol, %.lr.ph187.us.i543.preheader1518
  %indvars.iv229.i544.unr = phi i64 [ %indvars.iv229.i544.ph, %.lr.ph187.us.i543.preheader1518 ], [ %indvars.iv.next230.i545.prol, %.lr.ph187.us.i543.prol ]
  %i.ajv = sub nsw i64 %indvars.iv229.i544.ph, %wide.trip.count232.i530
  %i.ajw = icmp ugt i64 %i.ajv, -4
  br i1 %i.ajw, label %.preheader170.us.i536, label %.lr.ph187.us.i543

.lr.ph187.us.i543:                                ; preds = %.lr.ph187.us.i543.prol.loopexit, %.lr.ph187.us.i543
  %indvars.iv229.i544 = phi i64 [ %indvars.iv.next230.i545.3, %.lr.ph187.us.i543 ], [ %indvars.iv229.i544.unr, %.lr.ph187.us.i543.prol.loopexit ] ; 5 uses
  %i.ajx = shl nuw nsw i64 %indvars.iv229.i544, 2
  %i.ajy = getelementptr inbounds nuw i8, ptr %.0136192.us.i534, i64 %i.ajx
  %i.ajz = load i32, ptr %i.gt, align 1
  store i32 %i.ajz, ptr %i.ajy, align 1
  %indvars.iv.next230.i545 = shl i64 %indvars.iv229.i544, 2
  %i.aka = getelementptr i8, ptr %.0136192.us.i534, i64 %indvars.iv.next230.i545
  %i.akb = getelementptr i8, ptr %i.aka, i64 4
  %i.akc = load i32, ptr %i.gt, align 1
  store i32 %i.akc, ptr %i.akb, align 1
  %indvars.iv.next230.i545.1 = shl i64 %indvars.iv229.i544, 2
  %i.akd = getelementptr i8, ptr %.0136192.us.i534, i64 %indvars.iv.next230.i545.1
  %i.ake = getelementptr i8, ptr %i.akd, i64 8
  %i.akf = load i32, ptr %i.gt, align 1
  store i32 %i.akf, ptr %i.ake, align 1
  %indvars.iv.next230.i545.2 = shl i64 %indvars.iv229.i544, 2
  %i.akg = getelementptr i8, ptr %.0136192.us.i534, i64 %indvars.iv.next230.i545.2
  %i.akh = getelementptr i8, ptr %i.akg, i64 12
  %i.aki = load i32, ptr %i.gt, align 1
  store i32 %i.aki, ptr %i.akh, align 1
  %indvars.iv.next230.i545.3 = add nuw nsw i64 %indvars.iv229.i544, 4 ; 2 uses
  %exitcond233.not.i546.3 = icmp eq i64 %indvars.iv.next230.i545.3, %wide.trip.count232.i530
  br i1 %exitcond233.not.i546.3, label %.preheader170.us.i536, label %.lr.ph187.us.i543, !llvm.loop !718

.lr.ph189.us.i539:                                ; preds = %.lr.ph189.us.i539.prol.loopexit, %.lr.ph189.us.i539
  %indvars.iv234.i540 = phi i64 [ %indvars.iv.next235.i541.3, %.lr.ph189.us.i539 ], [ %indvars.iv234.i540.unr, %.lr.ph189.us.i539.prol.loopexit ] ; 5 uses
  %i.akj = add nsw i64 %indvars.iv234.i540, %i.aib
  %i.akk = shl nsw i64 %i.akj, 2
  %i.akl = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.akk
  %i.akm = load i32, ptr %i.gt, align 1
  store i32 %i.akm, ptr %i.akl, align 1
  %.reass1843 = add i64 %indvars.iv234.i540, %invariant.op1842
  %i.akn = shl nsw i64 %.reass1843, 2
  %i.ako = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.akn
  %i.akp = load i32, ptr %i.gt, align 1
  store i32 %i.akp, ptr %i.ako, align 1
  %.reass1845 = add i64 %indvars.iv234.i540, %invariant.op1844
  %i.akq = shl nsw i64 %.reass1845, 2
  %i.akr = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.akq
  %i.aks = load i32, ptr %i.gt, align 1
  store i32 %i.aks, ptr %i.akr, align 1
  %.reass1847 = add i64 %indvars.iv234.i540, %invariant.op1846
  %i.akt = shl nsw i64 %.reass1847, 2
  %i.aku = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.akt
  %i.akv = load i32, ptr %i.gt, align 1
  store i32 %i.akv, ptr %i.aku, align 1
  %indvars.iv.next235.i541.3 = add nuw nsw i64 %indvars.iv234.i540, 4 ; 2 uses
  %exitcond238.not.i542.3 = icmp eq i64 %indvars.iv.next235.i541.3, %wide.trip.count237.i531
  br i1 %exitcond238.not.i542.3, label %.loopexit.us.i537, label %.lr.ph189.us.i539, !llvm.loop !719

.preheader170.us.i536:                            ; preds = %.lr.ph187.us.i543.prol.loopexit, %.lr.ph187.us.i543, %middle.block1450, %.preheader171.us.i532
  br i1 %i.fg, label %.lr.ph189.us.i539.preheader, label %.loopexit.us.i537

.lr.ph189.us.i539.preheader:                      ; preds = %.preheader170.us.i536
  %brmerge1856 = select i1 %min.iters.check1423, i1 true, i1 %i.ajf
  br i1 %brmerge1856, label %.lr.ph189.us.i539.preheader1517, label %vector.ph1424

vector.ph1424:                                    ; preds = %.lr.ph189.us.i539.preheader
  %i.akw = load i32, ptr %i.gt, align 1, !alias.scope !823
  %broadcast.splatinsert1428 = insertelement <4 x i32> poison, i32 %i.akw, i64 0
  %broadcast.splat1429 = shufflevector <4 x i32> %broadcast.splatinsert1428, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1426

vector.body1426:                                  ; preds = %vector.body1426, %vector.ph1424
  %index1427 = phi i64 [ 0, %vector.ph1424 ], [ %index.next1430, %vector.body1426 ] ; 2 uses
  %i.akx = add nsw i64 %index1427, %i.aib
  %i.aky = shl nsw i64 %i.akx, 2
  %i.akz = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.aky ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 16
  store <4 x i32> %broadcast.splat1429, ptr %i.akz, align 1, !alias.scope !824, !noalias !823
  store <4 x i32> %broadcast.splat1429, ptr %i.ala, align 1, !alias.scope !824, !noalias !823
  %index.next1430 = add nuw i64 %index1427, 8     ; 2 uses
  %i.alb = icmp eq i64 %index.next1430, %n.vec1425
  br i1 %i.alb, label %middle.block1431, label %vector.body1426, !llvm.loop !723

middle.block1431:                                 ; preds = %vector.body1426
  br i1 %cmp.n1432, label %.loopexit.us.i537, label %.lr.ph189.us.i539.preheader1517

.lr.ph189.us.i539.preheader1517:                  ; preds = %.lr.ph189.us.i539.preheader, %middle.block1431
  %indvars.iv234.i540.ph = phi i64 [ %n.vec1425, %middle.block1431 ], [ 0, %.lr.ph189.us.i539.preheader ] ; 3 uses
  br i1 %lcmp.mod1711.not, label %.lr.ph189.us.i539.prol.loopexit, label %.lr.ph189.us.i539.prol

.lr.ph189.us.i539.prol:                           ; preds = %.lr.ph189.us.i539.preheader1517, %.lr.ph189.us.i539.prol
  %indvars.iv234.i540.prol = phi i64 [ %indvars.iv.next235.i541.prol, %.lr.ph189.us.i539.prol ], [ %indvars.iv234.i540.ph, %.lr.ph189.us.i539.preheader1517 ] ; 2 uses
  %prol.iter1712 = phi i64 [ %prol.iter1712.next, %.lr.ph189.us.i539.prol ], [ 0, %.lr.ph189.us.i539.preheader1517 ]
  %i.alc = add nsw i64 %indvars.iv234.i540.prol, %i.aib
  %i.ald = shl nsw i64 %i.alc, 2
  %i.ale = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.ald
  %i.alf = load i32, ptr %i.gt, align 1
  store i32 %i.alf, ptr %i.ale, align 1
  %indvars.iv.next235.i541.prol = add nuw nsw i64 %indvars.iv234.i540.prol, 1 ; 2 uses
  %prol.iter1712.next = add i64 %prol.iter1712, 1 ; 2 uses
  %prol.iter1712.cmp.not = icmp eq i64 %prol.iter1712.next, %xtraiter1710
  br i1 %prol.iter1712.cmp.not, label %.lr.ph189.us.i539.prol.loopexit, label %.lr.ph189.us.i539.prol, !llvm.loop !724

.lr.ph189.us.i539.prol.loopexit:                  ; preds = %.lr.ph189.us.i539.prol, %.lr.ph189.us.i539.preheader1517
  %indvars.iv234.i540.unr = phi i64 [ %indvars.iv234.i540.ph, %.lr.ph189.us.i539.preheader1517 ], [ %indvars.iv.next235.i541.prol, %.lr.ph189.us.i539.prol ]
  %i.alg = sub nsw i64 %indvars.iv234.i540.ph, %i.aje
  %i.alh = icmp ugt i64 %i.alg, -4
  br i1 %i.alh, label %.loopexit.us.i537, label %.lr.ph189.us.i539

.loopexit.us.i537:                                ; preds = %.lr.ph189.us.i539.prol.loopexit, %.lr.ph189.us.i539, %middle.block1431, %.preheader170.us.i536
  %i.ali = add nuw nsw i32 %.0135194.us.i533, 1   ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %.0136192.us.i534, i64 %i.agn
  %i.alk = getelementptr inbounds nuw i8, ptr %.0145190.us.i535, i64 %i.agj
  %exitcond239.not.i538 = icmp eq i32 %i.ali, %i.agl
  br i1 %exitcond239.not.i538, label %.preheader.i467, label %.preheader171.us.i532, !llvm.loop !725

.preheader.i467:                                  ; preds = %.loopexit173.i518, %.loopexit.us.i537, %.loopexit175.i465
  br i1 %i.ev, label %.lr.ph198.i496, label %._crit_edge199.i468

.lr.ph198.i496:                                   ; preds = %.preheader.i467
  %i.all = shl nsw i32 %i.agp, 2
  %i.alm = sext i32 %i.all to i64                 ; 7 uses
  %wide.trip.count248.i497 = zext nneg i32 %.neg to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph198.split.us.i502.preheader, label %.lr.ph198.split.i498

.lr.ph198.split.us.i502.preheader:                ; preds = %.lr.ph198.i496
  %xtraiter1713 = and i64 %wide.trip.count248.i497, 3 ; 3 uses
  %41 = add nsw i32 %.neg, -1
  %i.aln = icmp ult i32 %41, 3
  br i1 %i.aln, label %.lr.ph198.split.us.i502.epil.preheader, label %.lr.ph198.split.us.i502.preheader.new

.lr.ph198.split.us.i502.preheader.new:            ; preds = %.lr.ph198.split.us.i502.preheader
  %unroll_iter1717 = and i64 %wide.trip.count248.i497, 2147483644
  br label %.lr.ph198.split.us.i502

.lr.ph198.split.us.i502:                          ; preds = %.lr.ph198.split.us.i502, %.lr.ph198.split.us.i502.preheader.new
  %indvars.iv245.i503 = phi i64 [ 0, %.lr.ph198.split.us.i502.preheader.new ], [ %indvars.iv.next246.i504.3, %.lr.ph198.split.us.i502 ] ; 5 uses
  %niter1718 = phi i64 [ 0, %.lr.ph198.split.us.i502.preheader.new ], [ %niter1718.next.3, %.lr.ph198.split.us.i502 ]
  %i.alo = mul i64 %indvars.iv245.i503, %i.agn
  %i.alp = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.alo
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alp, ptr align 1 %.0138.i466, i64 %i.alm, i1 false)
  %indvars.iv.next246.i504 = or disjoint i64 %indvars.iv245.i503, 1
  %i.alq = mul i64 %indvars.iv.next246.i504, %i.agn
  %i.alr = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.alq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alr, ptr align 1 %.0138.i466, i64 %i.alm, i1 false)
  %indvars.iv.next246.i504.1 = or disjoint i64 %indvars.iv245.i503, 2
  %i.als = mul i64 %indvars.iv.next246.i504.1, %i.agn
  %i.alt = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.als
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alt, ptr align 1 %.0138.i466, i64 %i.alm, i1 false)
  %indvars.iv.next246.i504.2 = or disjoint i64 %indvars.iv245.i503, 3
  %i.alu = mul i64 %indvars.iv.next246.i504.2, %i.agn
  %i.alv = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.alu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alv, ptr align 1 %.0138.i466, i64 %i.alm, i1 false)
  %indvars.iv.next246.i504.3 = add nuw nsw i64 %indvars.iv245.i503, 4 ; 2 uses
  %niter1718.next.3 = add i64 %niter1718, 4       ; 2 uses
  %niter1718.ncmp.3 = icmp eq i64 %niter1718.next.3, %unroll_iter1717
  br i1 %niter1718.ncmp.3, label %._crit_edge199.thread.i506.unr-lcssa, label %.lr.ph198.split.us.i502, !llvm.loop !726

.preheader174.i513:                               ; preds = %.loopexit173.i518, %.preheader174.preheader.i509
  %.0135194.i514 = phi i32 [ %i.aob, %.loopexit173.i518 ], [ 0, %.preheader174.preheader.i509 ]
  %.0136192.i515 = phi ptr [ %i.aoc, %.loopexit173.i518 ], [ %i.ahw, %.preheader174.preheader.i509 ] ; 10 uses
  %.0145190.i516 = phi ptr [ %i.aod, %.loopexit173.i518 ], [ %i.agi, %.preheader174.preheader.i509 ] ; 10 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.ahy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alw, ptr align 1 %.0145190.i516, i64 %i.aia, i1 false)
  br i1 %i.fb, label %.lr.ph183.i525.preheader, label %.preheader172.i517

.lr.ph183.i525.preheader:                         ; preds = %.preheader174.i513
  br i1 %40, label %.lr.ph183.i525.epil.preheader, label %.lr.ph183.i525

.preheader172.i517.loopexit.unr-lcssa:            ; preds = %.lr.ph183.i525
  br i1 %lcmp.mod1696.not, label %.preheader172.i517, label %.lr.ph183.i525.epil.preheader

.lr.ph183.i525.epil.preheader:                    ; preds = %.preheader172.i517.loopexit.unr-lcssa, %.lr.ph183.i525.preheader
  %indvars.iv218.i526.epil.init = phi i64 [ 0, %.lr.ph183.i525.preheader ], [ %indvars.iv.next219.i527.3, %.preheader172.i517.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1697)
  br label %.lr.ph183.i525.epil

.lr.ph183.i525.epil:                              ; preds = %.lr.ph183.i525.epil, %.lr.ph183.i525.epil.preheader
  %indvars.iv218.i526.epil = phi i64 [ %indvars.iv.next219.i527.epil, %.lr.ph183.i525.epil ], [ %indvars.iv218.i526.epil.init, %.lr.ph183.i525.epil.preheader ] ; 3 uses
  %epil.iter1695 = phi i64 [ %epil.iter1695.next, %.lr.ph183.i525.epil ], [ 0, %.lr.ph183.i525.epil.preheader ]
  %i.alx = shl nuw nsw i64 %indvars.iv218.i526.epil, 2
  %i.aly = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.alx
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %indvars.iv218.i526.epil
  %i.ama = load i32, ptr %i.alz, align 4, !tbaa !18
  %i.amb = sext i32 %i.ama to i64
  %i.amc = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.amb
  %i.amd = load i32, ptr %i.amc, align 1
  store i32 %i.amd, ptr %i.aly, align 1
  %indvars.iv.next219.i527.epil = add nuw nsw i64 %indvars.iv218.i526.epil, 1
  %epil.iter1695.next = add i64 %epil.iter1695, 1 ; 2 uses
  %epil.iter1695.cmp.not = icmp eq i64 %epil.iter1695.next, %xtraiter1694
  br i1 %epil.iter1695.cmp.not, label %.preheader172.i517, label %.lr.ph183.i525.epil, !llvm.loop !727

.preheader172.i517:                               ; preds = %.preheader172.i517.loopexit.unr-lcssa, %.lr.ph183.i525.epil, %.preheader174.i513
  br i1 %i.fg, label %.lr.ph185.i520.preheader, label %.loopexit173.i518

.lr.ph185.i520.preheader:                         ; preds = %.preheader172.i517
  br i1 %i.ajl, label %.lr.ph185.i520.epil.preheader, label %.lr.ph185.i520

.lr.ph183.i525:                                   ; preds = %.lr.ph183.i525.preheader, %.lr.ph183.i525
  %indvars.iv218.i526 = phi i64 [ %indvars.iv.next219.i527.3, %.lr.ph183.i525 ], [ 0, %.lr.ph183.i525.preheader ] ; 6 uses
  %niter1699 = phi i64 [ %niter1699.next.3, %.lr.ph183.i525 ], [ 0, %.lr.ph183.i525.preheader ]
  %i.ame = shl nuw nsw i64 %indvars.iv218.i526, 2
  %i.amf = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.ame
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %indvars.iv218.i526
  %i.amh = load i32, ptr %i.amg, align 4, !tbaa !18
  %i.ami = sext i32 %i.amh to i64
  %i.amj = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.ami
  %i.amk = load i32, ptr %i.amj, align 1
  store i32 %i.amk, ptr %i.amf, align 1
  %indvars.iv.next219.i527 = or disjoint i64 %indvars.iv218.i526, 1 ; 2 uses
  %i.aml = shl nuw nsw i64 %indvars.iv.next219.i527, 2
  %i.amm = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.aml
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %indvars.iv.next219.i527
  %i.amo = load i32, ptr %i.amn, align 4, !tbaa !18
  %i.amp = sext i32 %i.amo to i64
  %i.amq = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.amp
  %i.amr = load i32, ptr %i.amq, align 1
  store i32 %i.amr, ptr %i.amm, align 1
  %indvars.iv.next219.i527.1 = or disjoint i64 %indvars.iv218.i526, 2 ; 2 uses
  %i.ams = shl nuw nsw i64 %indvars.iv.next219.i527.1, 2
  %i.amt = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.ams
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %indvars.iv.next219.i527.1
  %i.amv = load i32, ptr %i.amu, align 4, !tbaa !18
  %i.amw = sext i32 %i.amv to i64
  %i.amx = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.amw
  %i.amy = load i32, ptr %i.amx, align 1
  store i32 %i.amy, ptr %i.amt, align 1
  %indvars.iv.next219.i527.2 = or disjoint i64 %indvars.iv218.i526, 3 ; 2 uses
  %i.amz = shl nuw nsw i64 %indvars.iv.next219.i527.2, 2
  %i.ana = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.amz
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %indvars.iv.next219.i527.2
  %i.anc = load i32, ptr %i.anb, align 4, !tbaa !18
  %i.and = sext i32 %i.anc to i64
  %i.ane = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.and
  %i.anf = load i32, ptr %i.ane, align 1
  store i32 %i.anf, ptr %i.ana, align 1
  %indvars.iv.next219.i527.3 = add nuw nsw i64 %indvars.iv218.i526, 4 ; 2 uses
  %niter1699.next.3 = add i64 %niter1699, 4       ; 2 uses
  %niter1699.ncmp.3 = icmp eq i64 %niter1699.next.3, %unroll_iter1698
  br i1 %niter1699.ncmp.3, label %.preheader172.i517.loopexit.unr-lcssa, label %.lr.ph183.i525, !llvm.loop !728

.lr.ph185.i520:                                   ; preds = %.lr.ph185.i520.preheader, %.lr.ph185.i520
  %indvars.iv223.i521 = phi i64 [ %indvars.iv.next224.i523.1, %.lr.ph185.i520 ], [ 0, %.lr.ph185.i520.preheader ] ; 4 uses
  %niter1706 = phi i64 [ %niter1706.next.1, %.lr.ph185.i520 ], [ 0, %.lr.ph185.i520.preheader ]
  %i.ang = add nsw i64 %indvars.iv223.i521, %i.aib
  %i.anh = shl nsw i64 %i.ang, 2
  %i.ani = getelementptr inbounds i8, ptr %.0136192.i515, i64 %i.anh
  %gep279.i522 = getelementptr [4 x i8], ptr %invariant.gep278.i512, i64 %indvars.iv223.i521
  %i.anj = load i32, ptr %gep279.i522, align 4, !tbaa !18
  %i.ank = sext i32 %i.anj to i64
  %i.anl = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.ank
  %i.anm = load i32, ptr %i.anl, align 1
  store i32 %i.anm, ptr %i.ani, align 1
  %indvars.iv.next224.i523 = or disjoint i64 %indvars.iv223.i521, 1 ; 2 uses
  %i.ann = add nsw i64 %indvars.iv.next224.i523, %i.aib
  %i.ano = shl nsw i64 %i.ann, 2
  %i.anp = getelementptr inbounds i8, ptr %.0136192.i515, i64 %i.ano
  %gep279.i522.1 = getelementptr [4 x i8], ptr %invariant.gep278.i512, i64 %indvars.iv.next224.i523
  %i.anq = load i32, ptr %gep279.i522.1, align 4, !tbaa !18
  %i.anr = sext i32 %i.anq to i64
  %i.ans = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.anr
  %i.ant = load i32, ptr %i.ans, align 1
  store i32 %i.ant, ptr %i.anp, align 1
  %indvars.iv.next224.i523.1 = add nuw nsw i64 %indvars.iv223.i521, 2 ; 2 uses
  %niter1706.next.1 = add i64 %niter1706, 2       ; 2 uses
  %niter1706.ncmp.1 = icmp eq i64 %niter1706.next.1, %unroll_iter1705
  br i1 %niter1706.ncmp.1, label %.loopexit173.i518.loopexit.unr-lcssa, label %.lr.ph185.i520, !llvm.loop !729

.loopexit173.i518.loopexit.unr-lcssa:             ; preds = %.lr.ph185.i520
  br i1 %lcmp.mod1703.not, label %.loopexit173.i518, label %.lr.ph185.i520.epil.preheader

.lr.ph185.i520.epil.preheader:                    ; preds = %.loopexit173.i518.loopexit.unr-lcssa, %.lr.ph185.i520.preheader
  %indvars.iv223.i521.epil.init = phi i64 [ 0, %.lr.ph185.i520.preheader ], [ %indvars.iv.next224.i523.1, %.loopexit173.i518.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1704)
  %i.anu = add nsw i64 %indvars.iv223.i521.epil.init, %i.aib
  %i.anv = shl nsw i64 %i.anu, 2
  %i.anw = getelementptr inbounds i8, ptr %.0136192.i515, i64 %i.anv
  %gep279.i522.epil = getelementptr [4 x i8], ptr %invariant.gep278.i512, i64 %indvars.iv223.i521.epil.init
  %i.anx = load i32, ptr %gep279.i522.epil, align 4, !tbaa !18
  %i.any = sext i32 %i.anx to i64
  %i.anz = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.any
  %i.aoa = load i32, ptr %i.anz, align 1
  store i32 %i.aoa, ptr %i.anw, align 1
  br label %.loopexit173.i518

.loopexit173.i518:                                ; preds = %.lr.ph185.i520.epil.preheader, %.loopexit173.i518.loopexit.unr-lcssa, %.preheader172.i517
  %i.aob = add nuw nsw i32 %.0135194.i514, 1      ; 2 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.agn
  %i.aod = getelementptr inbounds nuw i8, ptr %.0145190.i516, i64 %i.agj
  %exitcond228.not.i519 = icmp eq i32 %i.aob, %i.agl
  br i1 %exitcond228.not.i519, label %.preheader.i467, label %.preheader174.i513, !llvm.loop !725

._crit_edge199.i468:                              ; preds = %bb.ch, %.preheader.i467
  %i.aoe = add nsw i32 %i.agl, %.sroa.speculated1057
  %i.aof = sext i32 %i.aoe to i64
  %i.aog = mul i64 %i.agn, %i.aof                 ; 2 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.aog
  br i1 %i.fa, label %.lr.ph202.i475, label %._crit_edge203.i469

._crit_edge199.thread.i506.unr-lcssa:             ; preds = %.lr.ph198.split.us.i502
  %lcmp.mod1715.not = icmp eq i64 %xtraiter1713, 0
  br i1 %lcmp.mod1715.not, label %._crit_edge199.thread.i506, label %.lr.ph198.split.us.i502.epil.preheader

.lr.ph198.split.us.i502.epil.preheader:           ; preds = %._crit_edge199.thread.i506.unr-lcssa, %.lr.ph198.split.us.i502.preheader
  %indvars.iv245.i503.epil.init = phi i64 [ 0, %.lr.ph198.split.us.i502.preheader ], [ %indvars.iv.next246.i504.3, %._crit_edge199.thread.i506.unr-lcssa ]
  %lcmp.mod1716 = icmp ne i64 %xtraiter1713, 0
  call void @llvm.assume(i1 %lcmp.mod1716)
  br label %.lr.ph198.split.us.i502.epil

.lr.ph198.split.us.i502.epil:                     ; preds = %.lr.ph198.split.us.i502.epil, %.lr.ph198.split.us.i502.epil.preheader
  %indvars.iv245.i503.epil = phi i64 [ %indvars.iv.next246.i504.epil, %.lr.ph198.split.us.i502.epil ], [ %indvars.iv245.i503.epil.init, %.lr.ph198.split.us.i502.epil.preheader ] ; 2 uses
  %epil.iter1714 = phi i64 [ %epil.iter1714.next, %.lr.ph198.split.us.i502.epil ], [ 0, %.lr.ph198.split.us.i502.epil.preheader ]
  %i.aoi = mul i64 %indvars.iv245.i503.epil, %i.agn
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.aoi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aoj, ptr align 1 %.0138.i466, i64 %i.alm, i1 false)
  %indvars.iv.next246.i504.epil = add nuw nsw i64 %indvars.iv245.i503.epil, 1
  %epil.iter1714.next = add i64 %epil.iter1714, 1 ; 2 uses
  %epil.iter1714.cmp.not = icmp eq i64 %epil.iter1714.next, %xtraiter1713
  br i1 %epil.iter1714.cmp.not, label %._crit_edge199.thread.i506, label %.lr.ph198.split.us.i502.epil, !llvm.loop !730

._crit_edge199.thread.i506:                       ; preds = %.lr.ph198.split.us.i502.epil, %._crit_edge199.thread.i506.unr-lcssa
  br i1 %i.fa, label %.lr.ph202.thread.i507, label %._crit_edge203.i469

.lr.ph202.thread.i507:                            ; preds = %._crit_edge199.thread.i506
  %i.aok = add nsw i32 %i.agl, %.neg
  %i.aol = sext i32 %i.aok to i64
  %i.aom = mul i64 %i.agn, %i.aol
  br label %.lr.ph202.split.us.preheader.i490

.lr.ph202.i475:                                   ; preds = %._crit_edge199.i468
  %i.aon = shl nsw i32 %i.agp, 2
  %i.aoo = sext i32 %i.aon to i64                 ; 2 uses
  br i1 %i.bd, label %.lr.ph202.split.us.preheader.i490, label %.lr.ph202.split.preheader.i476

.lr.ph202.split.preheader.i476:                   ; preds = %.lr.ph202.i475
  %wide.trip.count253.i477 = zext nneg i32 %i.ez to i64
  br label %.lr.ph202.split.i478

.lr.ph202.split.us.preheader.i490:                ; preds = %.lr.ph202.i475, %.lr.ph202.thread.i507
  %i.aop = phi i64 [ %i.alm, %.lr.ph202.thread.i507 ], [ %i.aoo, %.lr.ph202.i475 ] ; 5 uses
  %i.aoq = phi i64 [ %i.aom, %.lr.ph202.thread.i507 ], [ %i.aog, %.lr.ph202.i475 ]
  %wide.trip.count258.i491 = zext nneg i32 %i.ez to i64 ; 2 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.aoq ; 5 uses
  %xtraiter1719 = and i64 %wide.trip.count258.i491, 3 ; 3 uses
  %i.aos = add i32 %i.ez, -1
  %i.aot = icmp ult i32 %i.aos, 3
  br i1 %i.aot, label %.lr.ph202.split.us.i492.epil.preheader, label %.lr.ph202.split.us.preheader.i490.new

.lr.ph202.split.us.preheader.i490.new:            ; preds = %.lr.ph202.split.us.preheader.i490
  %unroll_iter1723 = and i64 %wide.trip.count258.i491, 2147483644
  br label %.lr.ph202.split.us.i492

.lr.ph202.split.us.i492:                          ; preds = %.lr.ph202.split.us.i492, %.lr.ph202.split.us.preheader.i490.new
  %indvars.iv255.i493 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i490.new ], [ %indvars.iv.next256.i494.3, %.lr.ph202.split.us.i492 ] ; 5 uses
  %niter1724 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i490.new ], [ %niter1724.next.3, %.lr.ph202.split.us.i492 ]
  %i.aou = mul i64 %indvars.iv255.i493, %i.agn
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aor, i64 %i.aou
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aov, ptr align 1 %.0138.i466, i64 %i.aop, i1 false)
  %indvars.iv.next256.i494 = or disjoint i64 %indvars.iv255.i493, 1
  %i.aow = mul i64 %indvars.iv.next256.i494, %i.agn
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aor, i64 %i.aow
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aox, ptr align 1 %.0138.i466, i64 %i.aop, i1 false)
  %indvars.iv.next256.i494.1 = or disjoint i64 %indvars.iv255.i493, 2
  %i.aoy = mul i64 %indvars.iv.next256.i494.1, %i.agn
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aor, i64 %i.aoy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aoz, ptr align 1 %.0138.i466, i64 %i.aop, i1 false)
  %indvars.iv.next256.i494.2 = or disjoint i64 %indvars.iv255.i493, 3
end_hunk_3
begin_hunk_4_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a

_ZN2cv12cpu_baselineL14fillTileBorderILi4EEEvPKhmiiPhmiiiiiS3_.exit: ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i472, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.gd

bb.cr:                                            ; preds = %bb.n
  %i.aqg = load ptr, ptr %i.at, align 8, !tbaa !105 ; 2 uses
  %i.aqh = load i64, ptr %i.au, align 8, !tbaa !97 ; 2 uses
  %i.aqi = load i32, ptr %i.av, align 4, !tbaa !122 ; 5 uses
  %i.aqj = load i32, ptr %i.aw, align 8, !tbaa !130 ; 8 uses
  %i.aqk = load ptr, ptr %i.ax, align 8, !tbaa !105 ; 11 uses
  %i.aql = load i64, ptr %i.ay, align 8, !tbaa !97 ; 19 uses
  %i.aqm = add i32 %i.aqi, %.sroa.speculated1047  ; 2 uses
  %i.aqn = add i32 %i.aqm, %.sroa.speculated      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.aqo = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1047 ; 2 uses
  %i.aqp = zext nneg i32 %i.aqo to i64            ; 2 uses
  store ptr %i.bm, ptr %8, align 8, !tbaa !812
  %.not.i.i.i575 = icmp samesign ugt i32 %i.aqo, 264
  store i64 %i.aqp, ptr %i.bn, align 8, !tbaa !813
  br i1 %.not.i.i.i575, label %bb.cs, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i576

bb.cs:                                            ; preds = %bb.cr
  %i.aqq = shl nuw nsw i64 %i.aqp, 2
  %i.aqr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aqq) #29
          to label %.noexc685 unwind label %bb.al ; 2 uses

.noexc685:                                        ; preds = %bb.cs
  store ptr %i.aqr, ptr %8, align 8, !tbaa !812
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i576

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i576:        ; preds = %.noexc685, %bb.cr
  %i.aqs = phi ptr [ %i.bm, %bb.cr ], [ %i.aqr, %.noexc685 ] ; 6 uses
  br i1 %i.fb, label %.lr.ph.preheader.i679, label %.preheader176.i577

.lr.ph.preheader.i679:                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i576
  %wide.trip.count.i680 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i681

.preheader176.i577:                               ; preds = %bb.ct, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i576
  br i1 %i.fg, label %.lr.ph179.preheader.i671, label %._crit_edge.i578

.lr.ph179.preheader.i671:                         ; preds = %.preheader176.i577
  %i.aqt = zext nneg i32 %.sroa.speculated1047 to i64
  %wide.trip.count211.i672 = zext nneg i32 %i.ff to i64
  %invariant.gep.i673 = getelementptr [4 x i8], ptr %i.aqs, i64 %i.aqt
  br label %.lr.ph179.i674

.lr.ph.i681:                                      ; preds = %bb.ct, %.lr.ph.preheader.i679
  %indvars.iv.i682 = phi i64 [ 0, %.lr.ph.preheader.i679 ], [ %indvars.iv.next.i683, %bb.ct ] ; 3 uses
  %i.aqu = trunc i64 %indvars.iv.i682 to i32
  %i.aqv = sub i32 %i.aqu, %.sroa.speculated1047
  %i.aqw = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.aqv, i32 noundef %i.aqi, i32 noundef %i.p)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %.lr.ph.i681
  %i.aqx = mul nsw i32 %i.aqw, 6
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %i.aqs, i64 %indvars.iv.i682
  store i32 %i.aqx, ptr %i.aqy, align 4, !tbaa !18
  %indvars.iv.next.i683 = add nuw nsw i64 %indvars.iv.i682, 1 ; 2 uses
  %exitcond.not.i684 = icmp eq i64 %indvars.iv.next.i683, %wide.trip.count.i680
  br i1 %exitcond.not.i684, label %.preheader176.i577, label %.lr.ph.i681, !llvm.loop !733

bb.cu:                                            ; preds = %.lr.ph.i681
  %i.aqz = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

._crit_edge.i578:                                 ; preds = %bb.cv, %.preheader176.i577
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %i.bo, ptr %9, align 8, !tbaa !815
  store i64 1032, ptr %i.bp, align 8, !tbaa !816
  %or.cond.i661 = or i1 %i.ev, %i.fa
  %or.cond1079 = select i1 %i.bd, i1 %or.cond.i661, i1 false
  br i1 %or.cond1079, label %bb.cx, label %.loopexit175.i579

.lr.ph179.i674:                                   ; preds = %bb.cv, %.lr.ph179.preheader.i671
  %indvars.iv208.i675 = phi i64 [ 0, %.lr.ph179.preheader.i671 ], [ %indvars.iv.next209.i677, %bb.cv ] ; 3 uses
  %i.ara = trunc i64 %indvars.iv208.i675 to i32
  %i.arb = add i32 %i.aqi, %i.ara
  %i.arc = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.arb, i32 noundef %i.aqi, i32 noundef %i.p)
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %.lr.ph179.i674
  %i.ard = mul nsw i32 %i.arc, 6
  %gep.i676 = getelementptr [4 x i8], ptr %invariant.gep.i673, i64 %indvars.iv208.i675
  store i32 %i.ard, ptr %gep.i676, align 4, !tbaa !18
  %indvars.iv.next209.i677 = add nuw nsw i64 %indvars.iv208.i675, 1 ; 2 uses
  %exitcond212.not.i678 = icmp eq i64 %indvars.iv.next209.i677, %wide.trip.count211.i672
  br i1 %exitcond212.not.i678, label %._crit_edge.i578, label %.lr.ph179.i674, !llvm.loop !734

bb.cw:                                            ; preds = %.lr.ph179.i674
  %i.are = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.cx:                                            ; preds = %._crit_edge.i578
  %i.arf = mul nsw i32 %i.aqn, 6                  ; 2 uses
  %i.arg = sext i32 %i.arf to i64                 ; 2 uses
  %.not.i.i662 = icmp ugt i32 %i.arf, 1032
  store i64 %i.arg, ptr %i.bp, align 8, !tbaa !816
  br i1 %.not.i.i662, label %bb.cy, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i663

bb.cy:                                            ; preds = %bb.cx
  %i.arh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.arg) #29
          to label %.noexc.i670 unwind label %bb.cz ; 2 uses

.noexc.i670:                                      ; preds = %bb.cy
  store ptr %i.arh, ptr %9, align 8, !tbaa !815
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i663

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i663: ; preds = %.noexc.i670, %bb.cx
  %i.ari = phi ptr [ %i.arh, %.noexc.i670 ], [ %i.bo, %bb.cx ] ; 8 uses
  %i.arj = icmp sgt i32 %i.aqn, 0
  br i1 %i.arj, label %.lr.ph181.preheader.i664, label %.loopexit175.i579

.lr.ph181.preheader.i664:                         ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i663
  %wide.trip.count216.i665 = zext nneg i32 %i.aqn to i64 ; 2 uses
  %xtraiter1650 = and i64 %wide.trip.count216.i665, 3 ; 3 uses
  %i.ark = icmp ult i32 %i.aqn, 4
  br i1 %i.ark, label %.lr.ph181.i666.epil.preheader, label %.lr.ph181.preheader.i664.new

.lr.ph181.preheader.i664.new:                     ; preds = %.lr.ph181.preheader.i664
  %unroll_iter1654 = and i64 %wide.trip.count216.i665, 2147483644
  br label %.lr.ph181.i666

bb.cz:                                            ; preds = %bb.cy
  %i.arl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

.lr.ph181.i666:                                   ; preds = %.lr.ph181.i666, %.lr.ph181.preheader.i664.new
  %indvars.iv213.i667 = phi i64 [ 0, %.lr.ph181.preheader.i664.new ], [ %indvars.iv.next214.i668.3, %.lr.ph181.i666 ] ; 5 uses
  %niter1655 = phi i64 [ 0, %.lr.ph181.preheader.i664.new ], [ %niter1655.next.3, %.lr.ph181.i666 ]
  %i.arm = mul nuw nsw i64 %indvars.iv213.i667, 6
  %i.arn = getelementptr inbounds nuw i8, ptr %i.ari, i64 %i.arm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.arn, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  %i.aro = mul nuw i64 %indvars.iv213.i667, 6
  %i.arp = getelementptr inbounds nuw i8, ptr %i.ari, i64 %i.aro
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.arq, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  %i.arr = mul nuw i64 %indvars.iv213.i667, 6
  %i.ars = getelementptr inbounds nuw i8, ptr %i.ari, i64 %i.arr
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.art, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  %i.aru = mul nuw i64 %indvars.iv213.i667, 6
  %i.arv = getelementptr inbounds nuw i8, ptr %i.ari, i64 %i.aru
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.arw, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  %indvars.iv.next214.i668.3 = add nuw nsw i64 %indvars.iv213.i667, 4 ; 2 uses
  %niter1655.next.3 = add i64 %niter1655, 4       ; 2 uses
  %niter1655.ncmp.3 = icmp eq i64 %niter1655.next.3, %unroll_iter1654
  br i1 %niter1655.ncmp.3, label %.loopexit175.i579.loopexit.unr-lcssa, label %.lr.ph181.i666, !llvm.loop !735

.loopexit175.i579.loopexit.unr-lcssa:             ; preds = %.lr.ph181.i666
  %lcmp.mod1652.not = icmp eq i64 %xtraiter1650, 0
  br i1 %lcmp.mod1652.not, label %.loopexit175.i579, label %.lr.ph181.i666.epil.preheader

.lr.ph181.i666.epil.preheader:                    ; preds = %.loopexit175.i579.loopexit.unr-lcssa, %.lr.ph181.preheader.i664
  %indvars.iv213.i667.epil.init = phi i64 [ 0, %.lr.ph181.preheader.i664 ], [ %indvars.iv.next214.i668.3, %.loopexit175.i579.loopexit.unr-lcssa ]
  %lcmp.mod1653 = icmp ne i64 %xtraiter1650, 0
  call void @llvm.assume(i1 %lcmp.mod1653)
  br label %.lr.ph181.i666.epil

.lr.ph181.i666.epil:                              ; preds = %.lr.ph181.i666.epil, %.lr.ph181.i666.epil.preheader
  %indvars.iv213.i667.epil = phi i64 [ %indvars.iv213.i667.epil.init, %.lr.ph181.i666.epil.preheader ], [ %indvars.iv.next214.i668.epil, %.lr.ph181.i666.epil ] ; 2 uses
  %epil.iter1651 = phi i64 [ 0, %.lr.ph181.i666.epil.preheader ], [ %epil.iter1651.next, %.lr.ph181.i666.epil ]
  %i.arx = mul nuw nsw i64 %indvars.iv213.i667.epil, 6
  %i.ary = getelementptr inbounds nuw i8, ptr %i.ari, i64 %i.arx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ary, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  %indvars.iv.next214.i668.epil = add nuw nsw i64 %indvars.iv213.i667.epil, 1
  %epil.iter1651.next = add i64 %epil.iter1651, 1 ; 2 uses
  %epil.iter1651.cmp.not = icmp eq i64 %epil.iter1651.next, %xtraiter1650
  br i1 %epil.iter1651.cmp.not, label %.loopexit175.i579, label %.lr.ph181.i666.epil, !llvm.loop !736

.loopexit175.i579:                                ; preds = %.loopexit175.i579.loopexit.unr-lcssa, %.lr.ph181.i666.epil, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i663, %._crit_edge.i578
  %.0138.i580 = phi ptr [ null, %._crit_edge.i578 ], [ %i.ari, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i663 ], [ %i.ari, %.lr.ph181.i666.epil ], [ %i.ari, %.loopexit175.i579.loopexit.unr-lcssa ] ; 10 uses
  %i.arz = icmp sgt i32 %i.aqj, 0
  br i1 %i.arz, label %.lr.ph196.i622, label %.preheader.i581

.lr.ph196.i622:                                   ; preds = %.loopexit175.i579
  %i.asa = zext nneg i32 %.sroa.speculated1057 to i64
  %i.asb = mul i64 %i.aql, %i.asa
  %i.asc = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %i.asb ; 2 uses
  %i.asd = mul nuw nsw i32 %.sroa.speculated1047, 6
  %i.ase = zext nneg i32 %i.asd to i64            ; 2 uses
  %i.asf = mul nsw i32 %i.aqi, 6
  %i.asg = sext i32 %i.asf to i64                 ; 2 uses
  %i.ash = sext i32 %i.aqm to i64                 ; 6 uses
  %wide.trip.count232.i644 = zext nneg i32 %.sroa.speculated1047 to i64 ; 5 uses
  br i1 %i.bd, label %.preheader171.us.i646.preheader, label %.preheader174.preheader.i623

.preheader171.us.i646.preheader:                  ; preds = %.lr.ph196.i622
  %i.asi = add i32 %i.dq, %i.er
  %i.asj = add i32 %i.asi, %.sroa.speculated1066
  %i.ask = add i32 %i.asj, %i.eh
  %i.asl = sub i32 %i.ask, %i.fc                  ; 2 uses
  %smax1675 = call i32 @llvm.smax.i32(i32 %i.asl, i32 0) ; 2 uses
  %i.asm = zext nneg i32 %smax1675 to i64         ; 2 uses
  %xtraiter1669 = and i64 %wide.trip.count232.i644, 3 ; 3 uses
  %42 = add nsw i32 %.sroa.speculated1047, -1
  %43 = icmp ult i32 %42, 3
  %unroll_iter1673 = and i64 %wide.trip.count232.i644, 2147483644
  %lcmp.mod1671.not = icmp eq i64 %xtraiter1669, 0
  %lcmp.mod1672 = icmp ne i64 %xtraiter1669, 0
  %xtraiter1676 = and i64 %i.asm, 1
  %i.asn = icmp eq i32 %i.asl, 1
  %unroll_iter1680 = and i64 %i.asm, 2147483646
  %lcmp.mod1678.not = icmp eq i64 %xtraiter1676, 0
  %lcmp.mod1679 = trunc i32 %smax1675 to i1
  br label %.preheader171.us.i646

.preheader174.preheader.i623:                     ; preds = %.lr.ph196.i622
  %invariant.gep278.i626 = getelementptr [4 x i8], ptr %i.aqs, i64 %wide.trip.count232.i644 ; 3 uses
  %i.aso = add i32 %i.do, %i.er
  %i.asp = add i32 %i.aso, %.sroa.speculated1066
  %i.asq = add i32 %i.asp, %i.eh
  %i.asr = sub i32 %i.asq, %i.fc                  ; 2 uses
  %smax1662 = call i32 @llvm.smax.i32(i32 %i.asr, i32 0) ; 2 uses
  %i.ass = zext nneg i32 %smax1662 to i64         ; 2 uses
  %xtraiter1656 = and i64 %wide.trip.count232.i644, 1
  %i.ast = icmp eq i32 %.neg214, 1
  %unroll_iter1660 = and i64 %wide.trip.count232.i644, 2147483646
  %lcmp.mod1658.not = icmp eq i64 %xtraiter1656, 0
  %lcmp.mod1659 = trunc i32 %.sroa.speculated1047 to i1
  %xtraiter1663 = and i64 %i.ass, 1
  %i.asu = icmp eq i32 %i.asr, 1
  %unroll_iter1667 = and i64 %i.ass, 2147483646
  %lcmp.mod1665.not = icmp eq i64 %xtraiter1663, 0
  %lcmp.mod1666 = trunc i32 %smax1662 to i1
  br label %.preheader174.i627

.preheader171.us.i646:                            ; preds = %.preheader171.us.i646.preheader, %.loopexit.us.i651
  %.0135194.us.i647 = phi i32 [ %i.ats, %.loopexit.us.i651 ], [ 0, %.preheader171.us.i646.preheader ]
  %.0136192.us.i648 = phi ptr [ %i.att, %.loopexit.us.i651 ], [ %i.asc, %.preheader171.us.i646.preheader ] ; 10 uses
  %.0145190.us.i649 = phi ptr [ %i.atu, %.loopexit.us.i651 ], [ %i.aqg, %.preheader171.us.i646.preheader ] ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %.0136192.us.i648, i64 %i.ase
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.asv, ptr align 1 %.0145190.us.i649, i64 %i.asg, i1 false)
  br i1 %i.fb, label %.lr.ph187.us.i657.preheader, label %.preheader170.us.i650

.lr.ph187.us.i657.preheader:                      ; preds = %.preheader171.us.i646
  br i1 %43, label %.lr.ph187.us.i657.epil.preheader, label %.lr.ph187.us.i657

.lr.ph187.us.i657:                                ; preds = %.lr.ph187.us.i657.preheader, %.lr.ph187.us.i657
  %indvars.iv229.i658 = phi i64 [ %indvars.iv.next230.i659.3, %.lr.ph187.us.i657 ], [ 0, %.lr.ph187.us.i657.preheader ] ; 5 uses
  %niter1674 = phi i64 [ %niter1674.next.3, %.lr.ph187.us.i657 ], [ 0, %.lr.ph187.us.i657.preheader ]
  %i.asw = mul nuw nsw i64 %indvars.iv229.i658, 6
  %i.asx = getelementptr inbounds nuw i8, ptr %.0136192.us.i648, i64 %i.asw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.asx, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  %i.asy = mul nuw i64 %indvars.iv229.i658, 6
  %i.asz = getelementptr inbounds nuw i8, ptr %.0136192.us.i648, i64 %i.asy
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ata, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  %i.atb = mul nuw i64 %indvars.iv229.i658, 6
  %i.atc = getelementptr inbounds nuw i8, ptr %.0136192.us.i648, i64 %i.atb
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.atd, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  %i.ate = mul nuw i64 %indvars.iv229.i658, 6
  %i.atf = getelementptr inbounds nuw i8, ptr %.0136192.us.i648, i64 %i.ate
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.atg, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  %indvars.iv.next230.i659.3 = add nuw nsw i64 %indvars.iv229.i658, 4 ; 2 uses
  %niter1674.next.3 = add i64 %niter1674, 4       ; 2 uses
  %niter1674.ncmp.3 = icmp eq i64 %niter1674.next.3, %unroll_iter1673
  br i1 %niter1674.ncmp.3, label %.preheader170.us.i650.loopexit.unr-lcssa, label %.lr.ph187.us.i657, !llvm.loop !737

.lr.ph189.us.i653:                                ; preds = %.lr.ph189.us.i653.preheader, %.lr.ph189.us.i653
  %indvars.iv234.i654 = phi i64 [ %indvars.iv.next235.i655.1, %.lr.ph189.us.i653 ], [ 0, %.lr.ph189.us.i653.preheader ] ; 3 uses
  %niter1681 = phi i64 [ %niter1681.next.1, %.lr.ph189.us.i653 ], [ 0, %.lr.ph189.us.i653.preheader ]
  %i.ath = add nsw i64 %indvars.iv234.i654, %i.ash
  %i.ati = mul nsw i64 %i.ath, 6
  %i.atj = getelementptr inbounds i8, ptr %.0136192.us.i648, i64 %i.ati
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.atj, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  %indvars.iv.next235.i655 = or disjoint i64 %indvars.iv234.i654, 1
  %i.atk = add nsw i64 %indvars.iv.next235.i655, %i.ash
  %i.atl = mul nsw i64 %i.atk, 6
  %i.atm = getelementptr inbounds i8, ptr %.0136192.us.i648, i64 %i.atl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.atm, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  %indvars.iv.next235.i655.1 = add nuw nsw i64 %indvars.iv234.i654, 2 ; 2 uses
  %niter1681.next.1 = add i64 %niter1681, 2       ; 2 uses
  %niter1681.ncmp.1 = icmp eq i64 %niter1681.next.1, %unroll_iter1680
  br i1 %niter1681.ncmp.1, label %.loopexit.us.i651.loopexit.unr-lcssa, label %.lr.ph189.us.i653, !llvm.loop !738

.preheader170.us.i650.loopexit.unr-lcssa:         ; preds = %.lr.ph187.us.i657
  br i1 %lcmp.mod1671.not, label %.preheader170.us.i650, label %.lr.ph187.us.i657.epil.preheader

.lr.ph187.us.i657.epil.preheader:                 ; preds = %.preheader170.us.i650.loopexit.unr-lcssa, %.lr.ph187.us.i657.preheader
  %indvars.iv229.i658.epil.init = phi i64 [ 0, %.lr.ph187.us.i657.preheader ], [ %indvars.iv.next230.i659.3, %.preheader170.us.i650.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1672)
  br label %.lr.ph187.us.i657.epil

.lr.ph187.us.i657.epil:                           ; preds = %.lr.ph187.us.i657.epil, %.lr.ph187.us.i657.epil.preheader
  %indvars.iv229.i658.epil = phi i64 [ %indvars.iv.next230.i659.epil, %.lr.ph187.us.i657.epil ], [ %indvars.iv229.i658.epil.init, %.lr.ph187.us.i657.epil.preheader ] ; 2 uses
  %epil.iter1670 = phi i64 [ %epil.iter1670.next, %.lr.ph187.us.i657.epil ], [ 0, %.lr.ph187.us.i657.epil.preheader ]
  %i.atn = mul nuw nsw i64 %indvars.iv229.i658.epil, 6
  %i.ato = getelementptr inbounds nuw i8, ptr %.0136192.us.i648, i64 %i.atn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ato, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  %indvars.iv.next230.i659.epil = add nuw nsw i64 %indvars.iv229.i658.epil, 1
  %epil.iter1670.next = add i64 %epil.iter1670, 1 ; 2 uses
  %epil.iter1670.cmp.not = icmp eq i64 %epil.iter1670.next, %xtraiter1669
  br i1 %epil.iter1670.cmp.not, label %.preheader170.us.i650, label %.lr.ph187.us.i657.epil, !llvm.loop !739

.preheader170.us.i650:                            ; preds = %.preheader170.us.i650.loopexit.unr-lcssa, %.lr.ph187.us.i657.epil, %.preheader171.us.i646
  br i1 %i.fg, label %.lr.ph189.us.i653.preheader, label %.loopexit.us.i651

.lr.ph189.us.i653.preheader:                      ; preds = %.preheader170.us.i650
  br i1 %i.asn, label %.lr.ph189.us.i653.epil.preheader, label %.lr.ph189.us.i653

.loopexit.us.i651.loopexit.unr-lcssa:             ; preds = %.lr.ph189.us.i653
  br i1 %lcmp.mod1678.not, label %.loopexit.us.i651, label %.lr.ph189.us.i653.epil.preheader

.lr.ph189.us.i653.epil.preheader:                 ; preds = %.loopexit.us.i651.loopexit.unr-lcssa, %.lr.ph189.us.i653.preheader
  %indvars.iv234.i654.epil.init = phi i64 [ 0, %.lr.ph189.us.i653.preheader ], [ %indvars.iv.next235.i655.1, %.loopexit.us.i651.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1679)
  %i.atp = add nsw i64 %indvars.iv234.i654.epil.init, %i.ash
  %i.atq = mul nsw i64 %i.atp, 6
  %i.atr = getelementptr inbounds i8, ptr %.0136192.us.i648, i64 %i.atq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.atr, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  br label %.loopexit.us.i651

.loopexit.us.i651:                                ; preds = %.lr.ph189.us.i653.epil.preheader, %.loopexit.us.i651.loopexit.unr-lcssa, %.preheader170.us.i650
  %i.ats = add nuw nsw i32 %.0135194.us.i647, 1   ; 2 uses
  %i.att = getelementptr inbounds nuw i8, ptr %.0136192.us.i648, i64 %i.aql
  %i.atu = getelementptr inbounds nuw i8, ptr %.0145190.us.i649, i64 %i.aqh
  %exitcond239.not.i652 = icmp eq i32 %i.ats, %i.aqj
  br i1 %exitcond239.not.i652, label %.preheader.i581, label %.preheader171.us.i646, !llvm.loop !740

.preheader.i581:                                  ; preds = %.loopexit173.i632, %.loopexit.us.i651, %.loopexit175.i579
  br i1 %i.ev, label %.lr.ph198.i610, label %._crit_edge199.i582

.lr.ph198.i610:                                   ; preds = %.preheader.i581
  %i.atv = mul nsw i32 %i.aqn, 6
  %i.atw = sext i32 %i.atv to i64                 ; 7 uses
  %wide.trip.count248.i611 = zext nneg i32 %.neg to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph198.split.us.i616.preheader, label %.lr.ph198.split.i612

.lr.ph198.split.us.i616.preheader:                ; preds = %.lr.ph198.i610
  %xtraiter1682 = and i64 %wide.trip.count248.i611, 3 ; 3 uses
  %44 = add nsw i32 %.neg, -1
  %i.atx = icmp ult i32 %44, 3
  br i1 %i.atx, label %.lr.ph198.split.us.i616.epil.preheader, label %.lr.ph198.split.us.i616.preheader.new

.lr.ph198.split.us.i616.preheader.new:            ; preds = %.lr.ph198.split.us.i616.preheader
  %unroll_iter1686 = and i64 %wide.trip.count248.i611, 2147483644
  br label %.lr.ph198.split.us.i616

.lr.ph198.split.us.i616:                          ; preds = %.lr.ph198.split.us.i616, %.lr.ph198.split.us.i616.preheader.new
  %indvars.iv245.i617 = phi i64 [ 0, %.lr.ph198.split.us.i616.preheader.new ], [ %indvars.iv.next246.i618.3, %.lr.ph198.split.us.i616 ] ; 5 uses
  %niter1687 = phi i64 [ 0, %.lr.ph198.split.us.i616.preheader.new ], [ %niter1687.next.3, %.lr.ph198.split.us.i616 ]
  %i.aty = mul i64 %indvars.iv245.i617, %i.aql
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %i.aty
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.atz, ptr align 1 %.0138.i580, i64 %i.atw, i1 false)
  %indvars.iv.next246.i618 = or disjoint i64 %indvars.iv245.i617, 1
  %i.aua = mul i64 %indvars.iv.next246.i618, %i.aql
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %i.aua
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aub, ptr align 1 %.0138.i580, i64 %i.atw, i1 false)
  %indvars.iv.next246.i618.1 = or disjoint i64 %indvars.iv245.i617, 2
  %i.auc = mul i64 %indvars.iv.next246.i618.1, %i.aql
  %i.aud = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %i.auc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aud, ptr align 1 %.0138.i580, i64 %i.atw, i1 false)
  %indvars.iv.next246.i618.2 = or disjoint i64 %indvars.iv245.i617, 3
  %i.aue = mul i64 %indvars.iv.next246.i618.2, %i.aql
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %i.aue
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.auf, ptr align 1 %.0138.i580, i64 %i.atw, i1 false)
  %indvars.iv.next246.i618.3 = add nuw nsw i64 %indvars.iv245.i617, 4 ; 2 uses
  %niter1687.next.3 = add i64 %niter1687, 4       ; 2 uses
  %niter1687.ncmp.3 = icmp eq i64 %niter1687.next.3, %unroll_iter1686
  br i1 %niter1687.ncmp.3, label %._crit_edge199.thread.i620.unr-lcssa, label %.lr.ph198.split.us.i616, !llvm.loop !741

.preheader174.i627:                               ; preds = %.loopexit173.i632, %.preheader174.preheader.i623
  %.0135194.i628 = phi i32 [ %i.avr, %.loopexit173.i632 ], [ 0, %.preheader174.preheader.i623 ]
  %.0136192.i629 = phi ptr [ %i.avs, %.loopexit173.i632 ], [ %i.asc, %.preheader174.preheader.i623 ] ; 8 uses
  %.0145190.i630 = phi ptr [ %i.avt, %.loopexit173.i632 ], [ %i.aqg, %.preheader174.preheader.i623 ] ; 8 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %.0136192.i629, i64 %i.ase
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aug, ptr align 1 %.0145190.i630, i64 %i.asg, i1 false)
  br i1 %i.fb, label %.lr.ph183.i639.preheader, label %.preheader172.i631

.lr.ph183.i639.preheader:                         ; preds = %.preheader174.i627
  br i1 %i.ast, label %.lr.ph183.i639.epil.preheader, label %.lr.ph183.i639

.preheader172.i631.loopexit.unr-lcssa:            ; preds = %.lr.ph183.i639
  br i1 %lcmp.mod1658.not, label %.preheader172.i631, label %.lr.ph183.i639.epil.preheader

.lr.ph183.i639.epil.preheader:                    ; preds = %.preheader172.i631.loopexit.unr-lcssa, %.lr.ph183.i639.preheader
  %indvars.iv218.i640.epil.init = phi i64 [ 0, %.lr.ph183.i639.preheader ], [ %indvars.iv.next219.i641.1, %.preheader172.i631.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1659)
  %i.auh = mul nuw nsw i64 %indvars.iv218.i640.epil.init, 6
  %i.aui = getelementptr inbounds nuw i8, ptr %.0136192.i629, i64 %i.auh
  %i.auj = getelementptr inbounds nuw [4 x i8], ptr %i.aqs, i64 %indvars.iv218.i640.epil.init
  %i.auk = load i32, ptr %i.auj, align 4, !tbaa !18
  %i.aul = sext i32 %i.auk to i64
  %i.aum = getelementptr inbounds i8, ptr %.0145190.i630, i64 %i.aul
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aui, ptr noundef nonnull align 1 dereferenceable(6) %i.aum, i64 6, i1 false)
  br label %.preheader172.i631

.preheader172.i631:                               ; preds = %.lr.ph183.i639.epil.preheader, %.preheader172.i631.loopexit.unr-lcssa, %.preheader174.i627
  br i1 %i.fg, label %.lr.ph185.i634.preheader, label %.loopexit173.i632

.lr.ph185.i634.preheader:                         ; preds = %.preheader172.i631
  br i1 %i.asu, label %.lr.ph185.i634.epil.preheader, label %.lr.ph185.i634

.lr.ph183.i639:                                   ; preds = %.lr.ph183.i639.preheader, %.lr.ph183.i639
  %indvars.iv218.i640 = phi i64 [ %indvars.iv.next219.i641.1, %.lr.ph183.i639 ], [ 0, %.lr.ph183.i639.preheader ] ; 4 uses
  %niter1661 = phi i64 [ %niter1661.next.1, %.lr.ph183.i639 ], [ 0, %.lr.ph183.i639.preheader ]
  %i.aun = mul nuw nsw i64 %indvars.iv218.i640, 6
  %i.auo = getelementptr inbounds nuw i8, ptr %.0136192.i629, i64 %i.aun
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %i.aqs, i64 %indvars.iv218.i640
  %i.auq = load i32, ptr %i.aup, align 4, !tbaa !18
  %i.aur = sext i32 %i.auq to i64
  %i.aus = getelementptr inbounds i8, ptr %.0145190.i630, i64 %i.aur
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.auo, ptr noundef nonnull align 1 dereferenceable(6) %i.aus, i64 6, i1 false)
  %indvars.iv.next219.i641 = or disjoint i64 %indvars.iv218.i640, 1 ; 2 uses
  %i.aut = mul nuw nsw i64 %indvars.iv.next219.i641, 6
  %i.auu = getelementptr inbounds nuw i8, ptr %.0136192.i629, i64 %i.aut
  %i.auv = getelementptr inbounds nuw [4 x i8], ptr %i.aqs, i64 %indvars.iv.next219.i641
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !18
  %i.aux = sext i32 %i.auw to i64
  %i.auy = getelementptr inbounds i8, ptr %.0145190.i630, i64 %i.aux
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.auu, ptr noundef nonnull align 1 dereferenceable(6) %i.auy, i64 6, i1 false)
  %indvars.iv.next219.i641.1 = add nuw nsw i64 %indvars.iv218.i640, 2 ; 2 uses
  %niter1661.next.1 = add i64 %niter1661, 2       ; 2 uses
  %niter1661.ncmp.1 = icmp eq i64 %niter1661.next.1, %unroll_iter1660
  br i1 %niter1661.ncmp.1, label %.preheader172.i631.loopexit.unr-lcssa, label %.lr.ph183.i639, !llvm.loop !742

.lr.ph185.i634:                                   ; preds = %.lr.ph185.i634.preheader, %.lr.ph185.i634
  %indvars.iv223.i635 = phi i64 [ %indvars.iv.next224.i637.1, %.lr.ph185.i634 ], [ 0, %.lr.ph185.i634.preheader ] ; 4 uses
  %niter1668 = phi i64 [ %niter1668.next.1, %.lr.ph185.i634 ], [ 0, %.lr.ph185.i634.preheader ]
  %i.auz = add nsw i64 %indvars.iv223.i635, %i.ash
  %i.ava = mul nsw i64 %i.auz, 6
  %i.avb = getelementptr inbounds i8, ptr %.0136192.i629, i64 %i.ava
  %gep279.i636 = getelementptr [4 x i8], ptr %invariant.gep278.i626, i64 %indvars.iv223.i635
  %i.avc = load i32, ptr %gep279.i636, align 4, !tbaa !18
  %i.avd = sext i32 %i.avc to i64
  %i.ave = getelementptr inbounds i8, ptr %.0145190.i630, i64 %i.avd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.avb, ptr noundef nonnull align 1 dereferenceable(6) %i.ave, i64 6, i1 false)
  %indvars.iv.next224.i637 = or disjoint i64 %indvars.iv223.i635, 1 ; 2 uses
  %i.avf = add nsw i64 %indvars.iv.next224.i637, %i.ash
  %i.avg = mul nsw i64 %i.avf, 6
  %i.avh = getelementptr inbounds i8, ptr %.0136192.i629, i64 %i.avg
  %gep279.i636.1 = getelementptr [4 x i8], ptr %invariant.gep278.i626, i64 %indvars.iv.next224.i637
  %i.avi = load i32, ptr %gep279.i636.1, align 4, !tbaa !18
  %i.avj = sext i32 %i.avi to i64
  %i.avk = getelementptr inbounds i8, ptr %.0145190.i630, i64 %i.avj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.avh, ptr noundef nonnull align 1 dereferenceable(6) %i.avk, i64 6, i1 false)
  %indvars.iv.next224.i637.1 = add nuw nsw i64 %indvars.iv223.i635, 2 ; 2 uses
  %niter1668.next.1 = add i64 %niter1668, 2       ; 2 uses
  %niter1668.ncmp.1 = icmp eq i64 %niter1668.next.1, %unroll_iter1667
  br i1 %niter1668.ncmp.1, label %.loopexit173.i632.loopexit.unr-lcssa, label %.lr.ph185.i634, !llvm.loop !743

.loopexit173.i632.loopexit.unr-lcssa:             ; preds = %.lr.ph185.i634
  br i1 %lcmp.mod1665.not, label %.loopexit173.i632, label %.lr.ph185.i634.epil.preheader

.lr.ph185.i634.epil.preheader:                    ; preds = %.loopexit173.i632.loopexit.unr-lcssa, %.lr.ph185.i634.preheader
  %indvars.iv223.i635.epil.init = phi i64 [ 0, %.lr.ph185.i634.preheader ], [ %indvars.iv.next224.i637.1, %.loopexit173.i632.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1666)
  %i.avl = add nsw i64 %indvars.iv223.i635.epil.init, %i.ash
  %i.avm = mul nsw i64 %i.avl, 6
  %i.avn = getelementptr inbounds i8, ptr %.0136192.i629, i64 %i.avm
  %gep279.i636.epil = getelementptr [4 x i8], ptr %invariant.gep278.i626, i64 %indvars.iv223.i635.epil.init
  %i.avo = load i32, ptr %gep279.i636.epil, align 4, !tbaa !18
  %i.avp = sext i32 %i.avo to i64
  %i.avq = getelementptr inbounds i8, ptr %.0145190.i630, i64 %i.avp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.avn, ptr noundef nonnull align 1 dereferenceable(6) %i.avq, i64 6, i1 false)
  br label %.loopexit173.i632

.loopexit173.i632:                                ; preds = %.lr.ph185.i634.epil.preheader, %.loopexit173.i632.loopexit.unr-lcssa, %.preheader172.i631
  %i.avr = add nuw nsw i32 %.0135194.i628, 1      ; 2 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %.0136192.i629, i64 %i.aql
  %i.avt = getelementptr inbounds nuw i8, ptr %.0145190.i630, i64 %i.aqh
  %exitcond228.not.i633 = icmp eq i32 %i.avr, %i.aqj
  br i1 %exitcond228.not.i633, label %.preheader.i581, label %.preheader174.i627, !llvm.loop !740

._crit_edge199.i582:                              ; preds = %bb.da, %.preheader.i581
  %i.avu = add nsw i32 %i.aqj, %.sroa.speculated1057
  %i.avv = sext i32 %i.avu to i64
  %i.avw = mul i64 %i.aql, %i.avv                 ; 2 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %i.avw
  br i1 %i.fa, label %.lr.ph202.i589, label %._crit_edge203.i583

._crit_edge199.thread.i620.unr-lcssa:             ; preds = %.lr.ph198.split.us.i616
  %lcmp.mod1684.not = icmp eq i64 %xtraiter1682, 0
  br i1 %lcmp.mod1684.not, label %._crit_edge199.thread.i620, label %.lr.ph198.split.us.i616.epil.preheader

.lr.ph198.split.us.i616.epil.preheader:           ; preds = %._crit_edge199.thread.i620.unr-lcssa, %.lr.ph198.split.us.i616.preheader
  %indvars.iv245.i617.epil.init = phi i64 [ 0, %.lr.ph198.split.us.i616.preheader ], [ %indvars.iv.next246.i618.3, %._crit_edge199.thread.i620.unr-lcssa ]
  %lcmp.mod1685 = icmp ne i64 %xtraiter1682, 0
  call void @llvm.assume(i1 %lcmp.mod1685)
  br label %.lr.ph198.split.us.i616.epil

.lr.ph198.split.us.i616.epil:                     ; preds = %.lr.ph198.split.us.i616.epil, %.lr.ph198.split.us.i616.epil.preheader
  %indvars.iv245.i617.epil = phi i64 [ %indvars.iv.next246.i618.epil, %.lr.ph198.split.us.i616.epil ], [ %indvars.iv245.i617.epil.init, %.lr.ph198.split.us.i616.epil.preheader ] ; 2 uses
  %epil.iter1683 = phi i64 [ %epil.iter1683.next, %.lr.ph198.split.us.i616.epil ], [ 0, %.lr.ph198.split.us.i616.epil.preheader ]
  %i.avy = mul i64 %indvars.iv245.i617.epil, %i.aql
  %i.avz = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %i.avy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.avz, ptr align 1 %.0138.i580, i64 %i.atw, i1 false)
  %indvars.iv.next246.i618.epil = add nuw nsw i64 %indvars.iv245.i617.epil, 1
  %epil.iter1683.next = add i64 %epil.iter1683, 1 ; 2 uses
  %epil.iter1683.cmp.not = icmp eq i64 %epil.iter1683.next, %xtraiter1682
  br i1 %epil.iter1683.cmp.not, label %._crit_edge199.thread.i620, label %.lr.ph198.split.us.i616.epil, !llvm.loop !744

._crit_edge199.thread.i620:                       ; preds = %.lr.ph198.split.us.i616.epil, %._crit_edge199.thread.i620.unr-lcssa
  br i1 %i.fa, label %.lr.ph202.thread.i621, label %._crit_edge203.i583

.lr.ph202.thread.i621:                            ; preds = %._crit_edge199.thread.i620
  %i.awa = add nsw i32 %i.aqj, %.neg
  %i.awb = sext i32 %i.awa to i64
  %i.awc = mul i64 %i.aql, %i.awb
  br label %.lr.ph202.split.us.preheader.i604

.lr.ph202.i589:                                   ; preds = %._crit_edge199.i582
  %i.awd = mul nsw i32 %i.aqn, 6
  %i.awe = sext i32 %i.awd to i64                 ; 2 uses
  br i1 %i.bd, label %.lr.ph202.split.us.preheader.i604, label %.lr.ph202.split.preheader.i590

.lr.ph202.split.preheader.i590:                   ; preds = %.lr.ph202.i589
  %wide.trip.count253.i591 = zext nneg i32 %i.ez to i64
  br label %.lr.ph202.split.i592

.lr.ph202.split.us.preheader.i604:                ; preds = %.lr.ph202.i589, %.lr.ph202.thread.i621
  %i.awf = phi i64 [ %i.atw, %.lr.ph202.thread.i621 ], [ %i.awe, %.lr.ph202.i589 ] ; 5 uses
  %i.awg = phi i64 [ %i.awc, %.lr.ph202.thread.i621 ], [ %i.avw, %.lr.ph202.i589 ]
  %wide.trip.count258.i605 = zext nneg i32 %i.ez to i64 ; 2 uses
  %i.awh = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %i.awg ; 5 uses
  %xtraiter1688 = and i64 %wide.trip.count258.i605, 3 ; 3 uses
  %i.awi = add i32 %i.ez, -1
  %i.awj = icmp ult i32 %i.awi, 3
  br i1 %i.awj, label %.lr.ph202.split.us.i606.epil.preheader, label %.lr.ph202.split.us.preheader.i604.new

.lr.ph202.split.us.preheader.i604.new:            ; preds = %.lr.ph202.split.us.preheader.i604
  %unroll_iter1692 = and i64 %wide.trip.count258.i605, 2147483644
  br label %.lr.ph202.split.us.i606

.lr.ph202.split.us.i606:                          ; preds = %.lr.ph202.split.us.i606, %.lr.ph202.split.us.preheader.i604.new
  %indvars.iv255.i607 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i604.new ], [ %indvars.iv.next256.i608.3, %.lr.ph202.split.us.i606 ] ; 5 uses
  %niter1693 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i604.new ], [ %niter1693.next.3, %.lr.ph202.split.us.i606 ]
  %i.awk = mul i64 %indvars.iv255.i607, %i.aql
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awh, i64 %i.awk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.awl, ptr align 1 %.0138.i580, i64 %i.awf, i1 false)
  %indvars.iv.next256.i608 = or disjoint i64 %indvars.iv255.i607, 1
  %i.awm = mul i64 %indvars.iv.next256.i608, %i.aql
end_hunk_4
begin_hunk_5_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
  %lcmp.mod1636.not = icmp eq i64 %xtraiter1635, 0
  %invariant.op = add i64 1, %i.azp
  %invariant.op1838 = add i64 2, %i.azp
  %invariant.op1840 = add i64 3, %i.azp
  br label %.preheader171.us.i759

.preheader174.preheader.i736:                     ; preds = %.lr.ph196.i735
  %invariant.gep278.i739 = getelementptr [4 x i8], ptr %i.ayi, i64 %wide.trip.count232.i757 ; 3 uses
  %i.bau = add i32 %i.dm, %i.er
  %i.bav = add i32 %i.bau, %.sroa.speculated1066
  %i.baw = add i32 %i.bav, %i.eh
  %i.bax = sub i32 %i.baw, %i.fc                  ; 2 uses
  %smax1626 = call i32 @llvm.smax.i32(i32 %i.bax, i32 0) ; 2 uses
  %i.bay = zext nneg i32 %smax1626 to i64         ; 2 uses
  %xtraiter1620 = and i64 %wide.trip.count232.i757, 3 ; 3 uses
  %i.baz = icmp slt i32 %.neg214, 4
  %unroll_iter1624 = and i64 %wide.trip.count232.i757, 2147483644
  %lcmp.mod1622.not = icmp eq i64 %xtraiter1620, 0
  %lcmp.mod1623 = icmp ne i64 %xtraiter1620, 0
  %xtraiter1627 = and i64 %i.bay, 1
  %i.bba = icmp eq i32 %i.bax, 1
  %unroll_iter1631 = and i64 %i.bay, 2147483646
  %lcmp.mod1629.not = icmp eq i64 %xtraiter1627, 0
  %lcmp.mod1630 = trunc i32 %smax1626 to i1
  br label %.preheader174.i740

.preheader171.us.i759:                            ; preds = %.preheader171.us.i759.preheader, %.loopexit.us.i764
  %.0135194.us.i760 = phi i32 [ %i.bcx, %.loopexit.us.i764 ], [ 0, %.preheader171.us.i759.preheader ]
  %.0136192.us.i761 = phi ptr [ %i.bcy, %.loopexit.us.i764 ], [ %i.azk, %.preheader171.us.i759.preheader ] ; 14 uses
  %.0145190.us.i762 = phi ptr [ %i.bcz, %.loopexit.us.i764 ], [ %i.axw, %.preheader171.us.i759.preheader ] ; 2 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %.0136192.us.i761, i64 %i.azm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bbb, ptr align 1 %.0145190.us.i762, i64 %i.azo, i1 false)
  br i1 %i.fb, label %.lr.ph187.us.i770.preheader, label %.preheader170.us.i763

.lr.ph187.us.i770.preheader:                      ; preds = %.preheader171.us.i759
  %brmerge1857 = select i1 %min.iters.check1494, i1 true, i1 %i.bak
  br i1 %brmerge1857, label %.lr.ph187.us.i770.preheader1520, label %vector.ph1495

vector.ph1495:                                    ; preds = %.lr.ph187.us.i770.preheader
  %i.bbc = load i64, ptr %i.gt, align 1, !alias.scope !825
  %broadcast.splatinsert1499 = insertelement <2 x i64> poison, i64 %i.bbc, i64 0
  %broadcast.splat1500 = shufflevector <2 x i64> %broadcast.splatinsert1499, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1497

vector.body1497:                                  ; preds = %vector.body1497, %vector.ph1495
  %index1498 = phi i64 [ 0, %vector.ph1495 ], [ %index.next1501, %vector.body1497 ] ; 2 uses
  %i.bbd = shl nuw nsw i64 %index1498, 3
  %i.bbe = getelementptr inbounds nuw i8, ptr %.0136192.us.i761, i64 %i.bbd ; 2 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbe, i64 16
  store <2 x i64> %broadcast.splat1500, ptr %i.bbe, align 1, !alias.scope !826, !noalias !825
  store <2 x i64> %broadcast.splat1500, ptr %i.bbf, align 1, !alias.scope !826, !noalias !825
  %index.next1501 = add nuw i64 %index1498, 4     ; 2 uses
  %i.bbg = icmp eq i64 %index.next1501, %n.vec1496
  br i1 %i.bbg, label %middle.block1502, label %vector.body1497, !llvm.loop !754

middle.block1502:                                 ; preds = %vector.body1497
  br i1 %cmp.n1503, label %.preheader170.us.i763, label %.lr.ph187.us.i770.preheader1520

.lr.ph187.us.i770.preheader1520:                  ; preds = %.lr.ph187.us.i770.preheader, %middle.block1502
  %indvars.iv229.i771.ph = phi i64 [ %n.vec1496, %middle.block1502 ], [ 0, %.lr.ph187.us.i770.preheader ] ; 3 uses
  br i1 %lcmp.mod1634.not, label %.lr.ph187.us.i770.prol.loopexit, label %.lr.ph187.us.i770.prol

.lr.ph187.us.i770.prol:                           ; preds = %.lr.ph187.us.i770.preheader1520, %.lr.ph187.us.i770.prol
  %indvars.iv229.i771.prol = phi i64 [ %indvars.iv.next230.i772.prol, %.lr.ph187.us.i770.prol ], [ %indvars.iv229.i771.ph, %.lr.ph187.us.i770.preheader1520 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph187.us.i770.prol ], [ 0, %.lr.ph187.us.i770.preheader1520 ]
  %i.bbh = shl nuw nsw i64 %indvars.iv229.i771.prol, 3
  %i.bbi = getelementptr inbounds nuw i8, ptr %.0136192.us.i761, i64 %i.bbh
  %i.bbj = load i64, ptr %i.gt, align 1
  store i64 %i.bbj, ptr %i.bbi, align 1
  %indvars.iv.next230.i772.prol = add nuw nsw i64 %indvars.iv229.i771.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1633
  br i1 %prol.iter.cmp.not, label %.lr.ph187.us.i770.prol.loopexit, label %.lr.ph187.us.i770.prol, !llvm.loop !755

.lr.ph187.us.i770.prol.loopexit:                  ; preds = %.lr.ph187.us.i770.prol, %.lr.ph187.us.i770.preheader1520
  %indvars.iv229.i771.unr = phi i64 [ %indvars.iv229.i771.ph, %.lr.ph187.us.i770.preheader1520 ], [ %indvars.iv.next230.i772.prol, %.lr.ph187.us.i770.prol ]
  %i.bbk = sub nsw i64 %indvars.iv229.i771.ph, %wide.trip.count232.i757
  %i.bbl = icmp ugt i64 %i.bbk, -4
  br i1 %i.bbl, label %.preheader170.us.i763, label %.lr.ph187.us.i770

.lr.ph187.us.i770:                                ; preds = %.lr.ph187.us.i770.prol.loopexit, %.lr.ph187.us.i770
  %indvars.iv229.i771 = phi i64 [ %indvars.iv.next230.i772.3, %.lr.ph187.us.i770 ], [ %indvars.iv229.i771.unr, %.lr.ph187.us.i770.prol.loopexit ] ; 5 uses
  %i.bbm = shl nuw nsw i64 %indvars.iv229.i771, 3
  %i.bbn = getelementptr inbounds nuw i8, ptr %.0136192.us.i761, i64 %i.bbm
  %i.bbo = load i64, ptr %i.gt, align 1
  store i64 %i.bbo, ptr %i.bbn, align 1
  %indvars.iv.next230.i772 = shl i64 %indvars.iv229.i771, 3
  %i.bbp = getelementptr i8, ptr %.0136192.us.i761, i64 %indvars.iv.next230.i772
  %i.bbq = getelementptr i8, ptr %i.bbp, i64 8
  %i.bbr = load i64, ptr %i.gt, align 1
  store i64 %i.bbr, ptr %i.bbq, align 1
  %indvars.iv.next230.i772.1 = shl i64 %indvars.iv229.i771, 3
  %i.bbs = getelementptr i8, ptr %.0136192.us.i761, i64 %indvars.iv.next230.i772.1
  %i.bbt = getelementptr i8, ptr %i.bbs, i64 16
  %i.bbu = load i64, ptr %i.gt, align 1
  store i64 %i.bbu, ptr %i.bbt, align 1
  %indvars.iv.next230.i772.2 = shl i64 %indvars.iv229.i771, 3
  %i.bbv = getelementptr i8, ptr %.0136192.us.i761, i64 %indvars.iv.next230.i772.2
  %i.bbw = getelementptr i8, ptr %i.bbv, i64 24
  %i.bbx = load i64, ptr %i.gt, align 1
  store i64 %i.bbx, ptr %i.bbw, align 1
  %indvars.iv.next230.i772.3 = add nuw nsw i64 %indvars.iv229.i771, 4 ; 2 uses
  %exitcond233.not.i773.3 = icmp eq i64 %indvars.iv.next230.i772.3, %wide.trip.count232.i757
  br i1 %exitcond233.not.i773.3, label %.preheader170.us.i763, label %.lr.ph187.us.i770, !llvm.loop !756

.lr.ph189.us.i766:                                ; preds = %.lr.ph189.us.i766.prol.loopexit, %.lr.ph189.us.i766
  %indvars.iv234.i767 = phi i64 [ %indvars.iv.next235.i768.3, %.lr.ph189.us.i766 ], [ %indvars.iv234.i767.unr, %.lr.ph189.us.i766.prol.loopexit ] ; 5 uses
  %i.bby = add nsw i64 %indvars.iv234.i767, %i.azp
  %i.bbz = shl nsw i64 %i.bby, 3
  %i.bca = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.bbz
  %i.bcb = load i64, ptr %i.gt, align 1
  store i64 %i.bcb, ptr %i.bca, align 1
  %.reass = add i64 %indvars.iv234.i767, %invariant.op
  %i.bcc = shl nsw i64 %.reass, 3
  %i.bcd = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.bcc
  %i.bce = load i64, ptr %i.gt, align 1
  store i64 %i.bce, ptr %i.bcd, align 1
  %.reass1839 = add i64 %indvars.iv234.i767, %invariant.op1838
  %i.bcf = shl nsw i64 %.reass1839, 3
  %i.bcg = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.bcf
  %i.bch = load i64, ptr %i.gt, align 1
  store i64 %i.bch, ptr %i.bcg, align 1
  %.reass1841 = add i64 %indvars.iv234.i767, %invariant.op1840
  %i.bci = shl nsw i64 %.reass1841, 3
  %i.bcj = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.bci
  %i.bck = load i64, ptr %i.gt, align 1
  store i64 %i.bck, ptr %i.bcj, align 1
  %indvars.iv.next235.i768.3 = add nuw nsw i64 %indvars.iv234.i767, 4 ; 2 uses
  %exitcond238.not.i769.3 = icmp eq i64 %indvars.iv.next235.i768.3, %wide.trip.count237.i758
  br i1 %exitcond238.not.i769.3, label %.loopexit.us.i764, label %.lr.ph189.us.i766, !llvm.loop !757

.preheader170.us.i763:                            ; preds = %.lr.ph187.us.i770.prol.loopexit, %.lr.ph187.us.i770, %middle.block1502, %.preheader171.us.i759
  br i1 %i.fg, label %.lr.ph189.us.i766.preheader, label %.loopexit.us.i764

.lr.ph189.us.i766.preheader:                      ; preds = %.preheader170.us.i763
  %brmerge1858 = select i1 %min.iters.check1475, i1 true, i1 %i.bat
  br i1 %brmerge1858, label %.lr.ph189.us.i766.preheader1519, label %vector.ph1476

vector.ph1476:                                    ; preds = %.lr.ph189.us.i766.preheader
  %i.bcl = load i64, ptr %i.gt, align 1, !alias.scope !827
  %broadcast.splatinsert1480 = insertelement <2 x i64> poison, i64 %i.bcl, i64 0
  %broadcast.splat1481 = shufflevector <2 x i64> %broadcast.splatinsert1480, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1478

vector.body1478:                                  ; preds = %vector.body1478, %vector.ph1476
  %index1479 = phi i64 [ 0, %vector.ph1476 ], [ %index.next1482, %vector.body1478 ] ; 2 uses
  %i.bcm = add nsw i64 %index1479, %i.azp
  %i.bcn = shl nsw i64 %i.bcm, 3
  %i.bco = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.bcn ; 2 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bco, i64 16
  store <2 x i64> %broadcast.splat1481, ptr %i.bco, align 1, !alias.scope !828, !noalias !827
  store <2 x i64> %broadcast.splat1481, ptr %i.bcp, align 1, !alias.scope !828, !noalias !827
  %index.next1482 = add nuw i64 %index1479, 4     ; 2 uses
  %i.bcq = icmp eq i64 %index.next1482, %n.vec1477
  br i1 %i.bcq, label %middle.block1483, label %vector.body1478, !llvm.loop !761

middle.block1483:                                 ; preds = %vector.body1478
  br i1 %cmp.n1484, label %.loopexit.us.i764, label %.lr.ph189.us.i766.preheader1519

.lr.ph189.us.i766.preheader1519:                  ; preds = %.lr.ph189.us.i766.preheader, %middle.block1483
  %indvars.iv234.i767.ph = phi i64 [ %n.vec1477, %middle.block1483 ], [ 0, %.lr.ph189.us.i766.preheader ] ; 3 uses
  br i1 %lcmp.mod1636.not, label %.lr.ph189.us.i766.prol.loopexit, label %.lr.ph189.us.i766.prol

.lr.ph189.us.i766.prol:                           ; preds = %.lr.ph189.us.i766.preheader1519, %.lr.ph189.us.i766.prol
  %indvars.iv234.i767.prol = phi i64 [ %indvars.iv.next235.i768.prol, %.lr.ph189.us.i766.prol ], [ %indvars.iv234.i767.ph, %.lr.ph189.us.i766.preheader1519 ] ; 2 uses
  %prol.iter1637 = phi i64 [ %prol.iter1637.next, %.lr.ph189.us.i766.prol ], [ 0, %.lr.ph189.us.i766.preheader1519 ]
  %i.bcr = add nsw i64 %indvars.iv234.i767.prol, %i.azp
  %i.bcs = shl nsw i64 %i.bcr, 3
  %i.bct = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.bcs
  %i.bcu = load i64, ptr %i.gt, align 1
  store i64 %i.bcu, ptr %i.bct, align 1
  %indvars.iv.next235.i768.prol = add nuw nsw i64 %indvars.iv234.i767.prol, 1 ; 2 uses
  %prol.iter1637.next = add i64 %prol.iter1637, 1 ; 2 uses
  %prol.iter1637.cmp.not = icmp eq i64 %prol.iter1637.next, %xtraiter1635
  br i1 %prol.iter1637.cmp.not, label %.lr.ph189.us.i766.prol.loopexit, label %.lr.ph189.us.i766.prol, !llvm.loop !762

.lr.ph189.us.i766.prol.loopexit:                  ; preds = %.lr.ph189.us.i766.prol, %.lr.ph189.us.i766.preheader1519
  %indvars.iv234.i767.unr = phi i64 [ %indvars.iv234.i767.ph, %.lr.ph189.us.i766.preheader1519 ], [ %indvars.iv.next235.i768.prol, %.lr.ph189.us.i766.prol ]
  %i.bcv = sub nsw i64 %indvars.iv234.i767.ph, %i.bas
  %i.bcw = icmp ugt i64 %i.bcv, -4
  br i1 %i.bcw, label %.loopexit.us.i764, label %.lr.ph189.us.i766

.loopexit.us.i764:                                ; preds = %.lr.ph189.us.i766.prol.loopexit, %.lr.ph189.us.i766, %middle.block1483, %.preheader170.us.i763
  %i.bcx = add nuw nsw i32 %.0135194.us.i760, 1   ; 2 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %.0136192.us.i761, i64 %i.ayb
  %i.bcz = getelementptr inbounds nuw i8, ptr %.0145190.us.i762, i64 %i.axx
  %exitcond239.not.i765 = icmp eq i32 %i.bcx, %i.axz
  br i1 %exitcond239.not.i765, label %.preheader.i694, label %.preheader171.us.i759, !llvm.loop !763

.preheader.i694:                                  ; preds = %.loopexit173.i745, %.loopexit.us.i764, %.loopexit175.i692
  br i1 %i.ev, label %.lr.ph198.i723, label %._crit_edge199.i695

.lr.ph198.i723:                                   ; preds = %.preheader.i694
  %i.bda = shl nsw i32 %i.ayd, 3
  %i.bdb = sext i32 %i.bda to i64                 ; 7 uses
  %wide.trip.count248.i724 = zext nneg i32 %.neg to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph198.split.us.i729.preheader, label %.lr.ph198.split.i725

.lr.ph198.split.us.i729.preheader:                ; preds = %.lr.ph198.i723
  %xtraiter1638 = and i64 %wide.trip.count248.i724, 3 ; 3 uses
  %45 = add nsw i32 %.neg, -1
  %i.bdc = icmp ult i32 %45, 3
  br i1 %i.bdc, label %.lr.ph198.split.us.i729.epil.preheader, label %.lr.ph198.split.us.i729.preheader.new

.lr.ph198.split.us.i729.preheader.new:            ; preds = %.lr.ph198.split.us.i729.preheader
  %unroll_iter1642 = and i64 %wide.trip.count248.i724, 2147483644
  br label %.lr.ph198.split.us.i729

.lr.ph198.split.us.i729:                          ; preds = %.lr.ph198.split.us.i729, %.lr.ph198.split.us.i729.preheader.new
  %indvars.iv245.i730 = phi i64 [ 0, %.lr.ph198.split.us.i729.preheader.new ], [ %indvars.iv.next246.i731.3, %.lr.ph198.split.us.i729 ] ; 5 uses
  %niter1643 = phi i64 [ 0, %.lr.ph198.split.us.i729.preheader.new ], [ %niter1643.next.3, %.lr.ph198.split.us.i729 ]
  %i.bdd = mul i64 %indvars.iv245.i730, %i.ayb
  %i.bde = getelementptr inbounds nuw i8, ptr %i.aya, i64 %i.bdd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bde, ptr align 1 %.0138.i693, i64 %i.bdb, i1 false)
  %indvars.iv.next246.i731 = or disjoint i64 %indvars.iv245.i730, 1
  %i.bdf = mul i64 %indvars.iv.next246.i731, %i.ayb
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.aya, i64 %i.bdf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bdg, ptr align 1 %.0138.i693, i64 %i.bdb, i1 false)
  %indvars.iv.next246.i731.1 = or disjoint i64 %indvars.iv245.i730, 2
  %i.bdh = mul i64 %indvars.iv.next246.i731.1, %i.ayb
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.aya, i64 %i.bdh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bdi, ptr align 1 %.0138.i693, i64 %i.bdb, i1 false)
  %indvars.iv.next246.i731.2 = or disjoint i64 %indvars.iv245.i730, 3
  %i.bdj = mul i64 %indvars.iv.next246.i731.2, %i.ayb
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.aya, i64 %i.bdj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bdk, ptr align 1 %.0138.i693, i64 %i.bdb, i1 false)
  %indvars.iv.next246.i731.3 = add nuw nsw i64 %indvars.iv245.i730, 4 ; 2 uses
  %niter1643.next.3 = add i64 %niter1643, 4       ; 2 uses
  %niter1643.ncmp.3 = icmp eq i64 %niter1643.next.3, %unroll_iter1642
  br i1 %niter1643.ncmp.3, label %._crit_edge199.thread.i733.unr-lcssa, label %.lr.ph198.split.us.i729, !llvm.loop !764

.preheader174.i740:                               ; preds = %.loopexit173.i745, %.preheader174.preheader.i736
  %.0135194.i741 = phi i32 [ %i.bfq, %.loopexit173.i745 ], [ 0, %.preheader174.preheader.i736 ]
  %.0136192.i742 = phi ptr [ %i.bfr, %.loopexit173.i745 ], [ %i.azk, %.preheader174.preheader.i736 ] ; 10 uses
  %.0145190.i743 = phi ptr [ %i.bfs, %.loopexit173.i745 ], [ %i.axw, %.preheader174.preheader.i736 ] ; 10 uses
  %i.bdl = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.azm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bdl, ptr align 1 %.0145190.i743, i64 %i.azo, i1 false)
  br i1 %i.fb, label %.lr.ph183.i752.preheader, label %.preheader172.i744

.lr.ph183.i752.preheader:                         ; preds = %.preheader174.i740
  br i1 %i.baz, label %.lr.ph183.i752.epil.preheader, label %.lr.ph183.i752

.preheader172.i744.loopexit.unr-lcssa:            ; preds = %.lr.ph183.i752
  br i1 %lcmp.mod1622.not, label %.preheader172.i744, label %.lr.ph183.i752.epil.preheader

.lr.ph183.i752.epil.preheader:                    ; preds = %.preheader172.i744.loopexit.unr-lcssa, %.lr.ph183.i752.preheader
  %indvars.iv218.i753.epil.init = phi i64 [ 0, %.lr.ph183.i752.preheader ], [ %indvars.iv.next219.i754.3, %.preheader172.i744.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1623)
  br label %.lr.ph183.i752.epil

.lr.ph183.i752.epil:                              ; preds = %.lr.ph183.i752.epil, %.lr.ph183.i752.epil.preheader
  %indvars.iv218.i753.epil = phi i64 [ %indvars.iv.next219.i754.epil, %.lr.ph183.i752.epil ], [ %indvars.iv218.i753.epil.init, %.lr.ph183.i752.epil.preheader ] ; 3 uses
  %epil.iter1621 = phi i64 [ %epil.iter1621.next, %.lr.ph183.i752.epil ], [ 0, %.lr.ph183.i752.epil.preheader ]
  %i.bdm = shl nuw nsw i64 %indvars.iv218.i753.epil, 3
  %i.bdn = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.bdm
  %i.bdo = getelementptr inbounds nuw [4 x i8], ptr %i.ayi, i64 %indvars.iv218.i753.epil
  %i.bdp = load i32, ptr %i.bdo, align 4, !tbaa !18
  %i.bdq = sext i32 %i.bdp to i64
  %i.bdr = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.bdq
  %i.bds = load i64, ptr %i.bdr, align 1
  store i64 %i.bds, ptr %i.bdn, align 1
  %indvars.iv.next219.i754.epil = add nuw nsw i64 %indvars.iv218.i753.epil, 1
  %epil.iter1621.next = add i64 %epil.iter1621, 1 ; 2 uses
  %epil.iter1621.cmp.not = icmp eq i64 %epil.iter1621.next, %xtraiter1620
  br i1 %epil.iter1621.cmp.not, label %.preheader172.i744, label %.lr.ph183.i752.epil, !llvm.loop !765

.preheader172.i744:                               ; preds = %.preheader172.i744.loopexit.unr-lcssa, %.lr.ph183.i752.epil, %.preheader174.i740
  br i1 %i.fg, label %.lr.ph185.i747.preheader, label %.loopexit173.i745

.lr.ph185.i747.preheader:                         ; preds = %.preheader172.i744
  br i1 %i.bba, label %.lr.ph185.i747.epil.preheader, label %.lr.ph185.i747

.lr.ph183.i752:                                   ; preds = %.lr.ph183.i752.preheader, %.lr.ph183.i752
  %indvars.iv218.i753 = phi i64 [ %indvars.iv.next219.i754.3, %.lr.ph183.i752 ], [ 0, %.lr.ph183.i752.preheader ] ; 6 uses
  %niter1625 = phi i64 [ %niter1625.next.3, %.lr.ph183.i752 ], [ 0, %.lr.ph183.i752.preheader ]
  %i.bdt = shl nuw nsw i64 %indvars.iv218.i753, 3
  %i.bdu = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.bdt
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %i.ayi, i64 %indvars.iv218.i753
  %i.bdw = load i32, ptr %i.bdv, align 4, !tbaa !18
  %i.bdx = sext i32 %i.bdw to i64
  %i.bdy = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.bdx
  %i.bdz = load i64, ptr %i.bdy, align 1
  store i64 %i.bdz, ptr %i.bdu, align 1
  %indvars.iv.next219.i754 = or disjoint i64 %indvars.iv218.i753, 1 ; 2 uses
  %i.bea = shl nuw nsw i64 %indvars.iv.next219.i754, 3
  %i.beb = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.bea
  %i.bec = getelementptr inbounds nuw [4 x i8], ptr %i.ayi, i64 %indvars.iv.next219.i754
  %i.bed = load i32, ptr %i.bec, align 4, !tbaa !18
  %i.bee = sext i32 %i.bed to i64
  %i.bef = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.bee
  %i.beg = load i64, ptr %i.bef, align 1
  store i64 %i.beg, ptr %i.beb, align 1
  %indvars.iv.next219.i754.1 = or disjoint i64 %indvars.iv218.i753, 2 ; 2 uses
  %i.beh = shl nuw nsw i64 %indvars.iv.next219.i754.1, 3
  %i.bei = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.beh
  %i.bej = getelementptr inbounds nuw [4 x i8], ptr %i.ayi, i64 %indvars.iv.next219.i754.1
  %i.bek = load i32, ptr %i.bej, align 4, !tbaa !18
  %i.bel = sext i32 %i.bek to i64
  %i.bem = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.bel
  %i.ben = load i64, ptr %i.bem, align 1
  store i64 %i.ben, ptr %i.bei, align 1
  %indvars.iv.next219.i754.2 = or disjoint i64 %indvars.iv218.i753, 3 ; 2 uses
  %i.beo = shl nuw nsw i64 %indvars.iv.next219.i754.2, 3
  %i.bep = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.beo
  %i.beq = getelementptr inbounds nuw [4 x i8], ptr %i.ayi, i64 %indvars.iv.next219.i754.2
  %i.ber = load i32, ptr %i.beq, align 4, !tbaa !18
  %i.bes = sext i32 %i.ber to i64
  %i.bet = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.bes
  %i.beu = load i64, ptr %i.bet, align 1
  store i64 %i.beu, ptr %i.bep, align 1
  %indvars.iv.next219.i754.3 = add nuw nsw i64 %indvars.iv218.i753, 4 ; 2 uses
  %niter1625.next.3 = add i64 %niter1625, 4       ; 2 uses
  %niter1625.ncmp.3 = icmp eq i64 %niter1625.next.3, %unroll_iter1624
  br i1 %niter1625.ncmp.3, label %.preheader172.i744.loopexit.unr-lcssa, label %.lr.ph183.i752, !llvm.loop !766

.lr.ph185.i747:                                   ; preds = %.lr.ph185.i747.preheader, %.lr.ph185.i747
  %indvars.iv223.i748 = phi i64 [ %indvars.iv.next224.i750.1, %.lr.ph185.i747 ], [ 0, %.lr.ph185.i747.preheader ] ; 4 uses
  %niter1632 = phi i64 [ %niter1632.next.1, %.lr.ph185.i747 ], [ 0, %.lr.ph185.i747.preheader ]
  %i.bev = add nsw i64 %indvars.iv223.i748, %i.azp
  %i.bew = shl nsw i64 %i.bev, 3
  %i.bex = getelementptr inbounds i8, ptr %.0136192.i742, i64 %i.bew
  %gep279.i749 = getelementptr [4 x i8], ptr %invariant.gep278.i739, i64 %indvars.iv223.i748
  %i.bey = load i32, ptr %gep279.i749, align 4, !tbaa !18
  %i.bez = sext i32 %i.bey to i64
  %i.bfa = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.bez
  %i.bfb = load i64, ptr %i.bfa, align 1
  store i64 %i.bfb, ptr %i.bex, align 1
  %indvars.iv.next224.i750 = or disjoint i64 %indvars.iv223.i748, 1 ; 2 uses
  %i.bfc = add nsw i64 %indvars.iv.next224.i750, %i.azp
  %i.bfd = shl nsw i64 %i.bfc, 3
  %i.bfe = getelementptr inbounds i8, ptr %.0136192.i742, i64 %i.bfd
  %gep279.i749.1 = getelementptr [4 x i8], ptr %invariant.gep278.i739, i64 %indvars.iv.next224.i750
  %i.bff = load i32, ptr %gep279.i749.1, align 4, !tbaa !18
  %i.bfg = sext i32 %i.bff to i64
  %i.bfh = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.bfg
  %i.bfi = load i64, ptr %i.bfh, align 1
  store i64 %i.bfi, ptr %i.bfe, align 1
  %indvars.iv.next224.i750.1 = add nuw nsw i64 %indvars.iv223.i748, 2 ; 2 uses
  %niter1632.next.1 = add i64 %niter1632, 2       ; 2 uses
  %niter1632.ncmp.1 = icmp eq i64 %niter1632.next.1, %unroll_iter1631
  br i1 %niter1632.ncmp.1, label %.loopexit173.i745.loopexit.unr-lcssa, label %.lr.ph185.i747, !llvm.loop !767

.loopexit173.i745.loopexit.unr-lcssa:             ; preds = %.lr.ph185.i747
  br i1 %lcmp.mod1629.not, label %.loopexit173.i745, label %.lr.ph185.i747.epil.preheader

.lr.ph185.i747.epil.preheader:                    ; preds = %.loopexit173.i745.loopexit.unr-lcssa, %.lr.ph185.i747.preheader
  %indvars.iv223.i748.epil.init = phi i64 [ 0, %.lr.ph185.i747.preheader ], [ %indvars.iv.next224.i750.1, %.loopexit173.i745.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1630)
  %i.bfj = add nsw i64 %indvars.iv223.i748.epil.init, %i.azp
  %i.bfk = shl nsw i64 %i.bfj, 3
  %i.bfl = getelementptr inbounds i8, ptr %.0136192.i742, i64 %i.bfk
  %gep279.i749.epil = getelementptr [4 x i8], ptr %invariant.gep278.i739, i64 %indvars.iv223.i748.epil.init
  %i.bfm = load i32, ptr %gep279.i749.epil, align 4, !tbaa !18
  %i.bfn = sext i32 %i.bfm to i64
  %i.bfo = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.bfn
  %i.bfp = load i64, ptr %i.bfo, align 1
  store i64 %i.bfp, ptr %i.bfl, align 1
  br label %.loopexit173.i745

.loopexit173.i745:                                ; preds = %.lr.ph185.i747.epil.preheader, %.loopexit173.i745.loopexit.unr-lcssa, %.preheader172.i744
  %i.bfq = add nuw nsw i32 %.0135194.i741, 1      ; 2 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.ayb
  %i.bfs = getelementptr inbounds nuw i8, ptr %.0145190.i743, i64 %i.axx
  %exitcond228.not.i746 = icmp eq i32 %i.bfq, %i.axz
  br i1 %exitcond228.not.i746, label %.preheader.i694, label %.preheader174.i740, !llvm.loop !763

._crit_edge199.i695:                              ; preds = %bb.dt, %.preheader.i694
  %i.bft = add nsw i32 %i.axz, %.sroa.speculated1057
  %i.bfu = sext i32 %i.bft to i64
  %i.bfv = mul i64 %i.ayb, %i.bfu                 ; 2 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.aya, i64 %i.bfv
  br i1 %i.fa, label %.lr.ph202.i702, label %._crit_edge203.i696

._crit_edge199.thread.i733.unr-lcssa:             ; preds = %.lr.ph198.split.us.i729
  %lcmp.mod1640.not = icmp eq i64 %xtraiter1638, 0
  br i1 %lcmp.mod1640.not, label %._crit_edge199.thread.i733, label %.lr.ph198.split.us.i729.epil.preheader

.lr.ph198.split.us.i729.epil.preheader:           ; preds = %._crit_edge199.thread.i733.unr-lcssa, %.lr.ph198.split.us.i729.preheader
  %indvars.iv245.i730.epil.init = phi i64 [ 0, %.lr.ph198.split.us.i729.preheader ], [ %indvars.iv.next246.i731.3, %._crit_edge199.thread.i733.unr-lcssa ]
  %lcmp.mod1641 = icmp ne i64 %xtraiter1638, 0
  call void @llvm.assume(i1 %lcmp.mod1641)
  br label %.lr.ph198.split.us.i729.epil

.lr.ph198.split.us.i729.epil:                     ; preds = %.lr.ph198.split.us.i729.epil, %.lr.ph198.split.us.i729.epil.preheader
  %indvars.iv245.i730.epil = phi i64 [ %indvars.iv.next246.i731.epil, %.lr.ph198.split.us.i729.epil ], [ %indvars.iv245.i730.epil.init, %.lr.ph198.split.us.i729.epil.preheader ] ; 2 uses
  %epil.iter1639 = phi i64 [ %epil.iter1639.next, %.lr.ph198.split.us.i729.epil ], [ 0, %.lr.ph198.split.us.i729.epil.preheader ]
  %i.bfx = mul i64 %indvars.iv245.i730.epil, %i.ayb
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.aya, i64 %i.bfx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bfy, ptr align 1 %.0138.i693, i64 %i.bdb, i1 false)
  %indvars.iv.next246.i731.epil = add nuw nsw i64 %indvars.iv245.i730.epil, 1
  %epil.iter1639.next = add i64 %epil.iter1639, 1 ; 2 uses
  %epil.iter1639.cmp.not = icmp eq i64 %epil.iter1639.next, %xtraiter1638
  br i1 %epil.iter1639.cmp.not, label %._crit_edge199.thread.i733, label %.lr.ph198.split.us.i729.epil, !llvm.loop !768

._crit_edge199.thread.i733:                       ; preds = %.lr.ph198.split.us.i729.epil, %._crit_edge199.thread.i733.unr-lcssa
  br i1 %i.fa, label %.lr.ph202.thread.i734, label %._crit_edge203.i696

.lr.ph202.thread.i734:                            ; preds = %._crit_edge199.thread.i733
  %i.bfz = add nsw i32 %i.axz, %.neg
  %i.bga = sext i32 %i.bfz to i64
  %i.bgb = mul i64 %i.ayb, %i.bga
  br label %.lr.ph202.split.us.preheader.i717
end_hunk_5
begin_hunk_6_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
  %i.bjd = mul nuw i64 %indvars.iv213.i894, 12
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bix, i64 %i.bjd
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bjf, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.gt, i64 12, i1 false)
  %i.bjg = mul nuw i64 %indvars.iv213.i894, 12
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bix, i64 %i.bjg
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjh, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bji, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.gt, i64 12, i1 false)
  %i.bjj = mul nuw i64 %indvars.iv213.i894, 12
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bix, i64 %i.bjj
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bjl, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.gt, i64 12, i1 false)
  %indvars.iv.next214.i895.3 = add nuw nsw i64 %indvars.iv213.i894, 4 ; 2 uses
  %niter1581.next.3 = add i64 %niter1581, 4       ; 2 uses
  %niter1581.ncmp.3 = icmp eq i64 %niter1581.next.3, %unroll_iter1580
  br i1 %niter1581.ncmp.3, label %.loopexit175.i806.loopexit.unr-lcssa, label %.lr.ph181.i893, !llvm.loop !773

.loopexit175.i806.loopexit.unr-lcssa:             ; preds = %.lr.ph181.i893
  %lcmp.mod1578.not = icmp eq i64 %xtraiter1576, 0
  br i1 %lcmp.mod1578.not, label %.loopexit175.i806, label %.lr.ph181.i893.epil.preheader

.lr.ph181.i893.epil.preheader:                    ; preds = %.loopexit175.i806.loopexit.unr-lcssa, %.lr.ph181.preheader.i891
  %indvars.iv213.i894.epil.init = phi i64 [ 0, %.lr.ph181.preheader.i891 ], [ %indvars.iv.next214.i895.3, %.loopexit175.i806.loopexit.unr-lcssa ]
  %lcmp.mod1579 = icmp ne i64 %xtraiter1576, 0
  call void @llvm.assume(i1 %lcmp.mod1579)
  br label %.lr.ph181.i893.epil

.lr.ph181.i893.epil:                              ; preds = %.lr.ph181.i893.epil, %.lr.ph181.i893.epil.preheader
  %indvars.iv213.i894.epil = phi i64 [ %indvars.iv213.i894.epil.init, %.lr.ph181.i893.epil.preheader ], [ %indvars.iv.next214.i895.epil, %.lr.ph181.i893.epil ] ; 2 uses
  %epil.iter1577 = phi i64 [ 0, %.lr.ph181.i893.epil.preheader ], [ %epil.iter1577.next, %.lr.ph181.i893.epil ]
  %i.bjm = mul nuw nsw i64 %indvars.iv213.i894.epil, 12
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bix, i64 %i.bjm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bjn, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.gt, i64 12, i1 false)
  %indvars.iv.next214.i895.epil = add nuw nsw i64 %indvars.iv213.i894.epil, 1
  %epil.iter1577.next = add i64 %epil.iter1577, 1 ; 2 uses
  %epil.iter1577.cmp.not = icmp eq i64 %epil.iter1577.next, %xtraiter1576
  br i1 %epil.iter1577.cmp.not, label %.loopexit175.i806, label %.lr.ph181.i893.epil, !llvm.loop !774

.loopexit175.i806:                                ; preds = %.loopexit175.i806.loopexit.unr-lcssa, %.lr.ph181.i893.epil, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i890, %._crit_edge.i805
  %.0138.i807 = phi ptr [ null, %._crit_edge.i805 ], [ %i.bix, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i890 ], [ %i.bix, %.lr.ph181.i893.epil ], [ %i.bix, %.loopexit175.i806.loopexit.unr-lcssa ] ; 10 uses
  %i.bjo = icmp sgt i32 %i.bhy, 0
  br i1 %i.bjo, label %.lr.ph196.i849, label %.preheader.i808

.lr.ph196.i849:                                   ; preds = %.loopexit175.i806
  %i.bjp = zext nneg i32 %.sroa.speculated1057 to i64
  %i.bjq = mul i64 %i.bia, %i.bjp
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bhz, i64 %i.bjq ; 2 uses
  %i.bjs = mul nuw nsw i32 %.sroa.speculated1047, 12
  %i.bjt = zext nneg i32 %i.bjs to i64            ; 2 uses
  %i.bju = mul nsw i32 %i.bhx, 12
  %i.bjv = sext i32 %i.bju to i64                 ; 2 uses
  %i.bjw = sext i32 %i.bib to i64                 ; 6 uses
  %wide.trip.count232.i871 = zext nneg i32 %.sroa.speculated1047 to i64 ; 5 uses
  br i1 %i.bd, label %.preheader171.us.i873.preheader, label %.preheader174.preheader.i850

.preheader171.us.i873.preheader:                  ; preds = %.lr.ph196.i849
  %i.bjx = add i32 %i.dk, %i.er
  %i.bjy = add i32 %i.bjx, %.sroa.speculated1066
  %i.bjz = add i32 %i.bjy, %i.eh
  %i.bka = sub i32 %i.bjz, %i.fc                  ; 2 uses
  %smax1601 = call i32 @llvm.smax.i32(i32 %i.bka, i32 0) ; 2 uses
  %i.bkb = zext nneg i32 %smax1601 to i64         ; 2 uses
  %xtraiter1595 = and i64 %wide.trip.count232.i871, 3 ; 3 uses
  %i.bkc = icmp slt i32 %.neg214, 4
  %unroll_iter1599 = and i64 %wide.trip.count232.i871, 2147483644
  %lcmp.mod1597.not = icmp eq i64 %xtraiter1595, 0
  %lcmp.mod1598 = icmp ne i64 %xtraiter1595, 0
  %xtraiter1602 = and i64 %i.bkb, 1
  %i.bkd = icmp eq i32 %i.bka, 1
  %unroll_iter1606 = and i64 %i.bkb, 2147483646
  %lcmp.mod1604.not = icmp eq i64 %xtraiter1602, 0
  %lcmp.mod1605 = trunc i32 %smax1601 to i1
  br label %.preheader171.us.i873

.preheader174.preheader.i850:                     ; preds = %.lr.ph196.i849
  %invariant.gep278.i853 = getelementptr [4 x i8], ptr %i.bih, i64 %wide.trip.count232.i871 ; 3 uses
  %i.bke = add i32 %i.di, %i.er
  %i.bkf = add i32 %i.bke, %.sroa.speculated1066
  %i.bkg = add i32 %i.bkf, %i.eh
  %i.bkh = sub i32 %i.bkg, %i.fc                  ; 2 uses
  %smax1588 = call i32 @llvm.smax.i32(i32 %i.bkh, i32 0) ; 2 uses
  %i.bki = zext nneg i32 %smax1588 to i64         ; 2 uses
  %xtraiter1582 = and i64 %wide.trip.count232.i871, 1
  %i.bkj = icmp eq i32 %.neg214, 1
  %unroll_iter1586 = and i64 %wide.trip.count232.i871, 2147483646
  %lcmp.mod1584.not = icmp eq i64 %xtraiter1582, 0
  %lcmp.mod1585 = trunc i32 %.sroa.speculated1047 to i1
  %xtraiter1589 = and i64 %i.bki, 1
  %i.bkk = icmp eq i32 %i.bkh, 1
  %unroll_iter1593 = and i64 %i.bki, 2147483646
  %lcmp.mod1591.not = icmp eq i64 %xtraiter1589, 0
  %lcmp.mod1592 = trunc i32 %smax1588 to i1
  br label %.preheader174.i854

.preheader171.us.i873:                            ; preds = %.preheader171.us.i873.preheader, %.loopexit.us.i878
  %.0135194.us.i874 = phi i32 [ %i.bli, %.loopexit.us.i878 ], [ 0, %.preheader171.us.i873.preheader ]
  %.0136192.us.i875 = phi ptr [ %i.blj, %.loopexit.us.i878 ], [ %i.bjr, %.preheader171.us.i873.preheader ] ; 10 uses
  %.0145190.us.i876 = phi ptr [ %i.blk, %.loopexit.us.i878 ], [ %i.bhv, %.preheader171.us.i873.preheader ] ; 2 uses
  %i.bkl = getelementptr inbounds nuw i8, ptr %.0136192.us.i875, i64 %i.bjt
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bkl, ptr align 1 %.0145190.us.i876, i64 %i.bjv, i1 false)
  br i1 %i.fb, label %.lr.ph187.us.i884.preheader, label %.preheader170.us.i877

.lr.ph187.us.i884.preheader:                      ; preds = %.preheader171.us.i873
  br i1 %i.bkc, label %.lr.ph187.us.i884.epil.preheader, label %.lr.ph187.us.i884

.lr.ph187.us.i884:                                ; preds = %.lr.ph187.us.i884.preheader, %.lr.ph187.us.i884
  %indvars.iv229.i885 = phi i64 [ %indvars.iv.next230.i886.3, %.lr.ph187.us.i884 ], [ 0, %.lr.ph187.us.i884.preheader ] ; 5 uses
  %niter1600 = phi i64 [ %niter1600.next.3, %.lr.ph187.us.i884 ], [ 0, %.lr.ph187.us.i884.preheader ]
  %i.bkm = mul nuw nsw i64 %indvars.iv229.i885, 12
  %i.bkn = getelementptr inbounds nuw i8, ptr %.0136192.us.i875, i64 %i.bkm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bkn, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.gt, i64 12, i1 false)
  %i.bko = mul nuw i64 %indvars.iv229.i885, 12
  %i.bkp = getelementptr inbounds nuw i8, ptr %.0136192.us.i875, i64 %i.bko
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkp, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bkq, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.gt, i64 12, i1 false)
  %i.bkr = mul nuw i64 %indvars.iv229.i885, 12
  %i.bks = getelementptr inbounds nuw i8, ptr %.0136192.us.i875, i64 %i.bkr
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bks, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bkt, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.gt, i64 12, i1 false)
  %i.bku = mul nuw i64 %indvars.iv229.i885, 12
  %i.bkv = getelementptr inbounds nuw i8, ptr %.0136192.us.i875, i64 %i.bku
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bkv, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bkw, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.gt, i64 12, i1 false)
  %indvars.iv.next230.i886.3 = add nuw nsw i64 %indvars.iv229.i885, 4 ; 2 uses
  %niter1600.next.3 = add i64 %niter1600, 4       ; 2 uses
  %niter1600.ncmp.3 = icmp eq i64 %niter1600.next.3, %unroll_iter1599
  br i1 %niter1600.ncmp.3, label %.preheader170.us.i877.loopexit.unr-lcssa, label %.lr.ph187.us.i884, !llvm.loop !775

.lr.ph189.us.i880:                                ; preds = %.lr.ph189.us.i880.preheader, %.lr.ph189.us.i880
  %indvars.iv234.i881 = phi i64 [ %indvars.iv.next235.i882.1, %.lr.ph189.us.i880 ], [ 0, %.lr.ph189.us.i880.preheader ] ; 3 uses
  %niter1607 = phi i64 [ %niter1607.next.1, %.lr.ph189.us.i880 ], [ 0, %.lr.ph189.us.i880.preheader ]
  %i.bkx = add nsw i64 %indvars.iv234.i881, %i.bjw
  %i.bky = mul nsw i64 %i.bkx, 12
  %i.bkz = getelementptr inbounds i8, ptr %.0136192.us.i875, i64 %i.bky
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bkz, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.gt, i64 12, i1 false)
  %indvars.iv.next235.i882 = or disjoint i64 %indvars.iv234.i881, 1
  %i.bla = add nsw i64 %indvars.iv.next235.i882, %i.bjw
  %i.blb = mul nsw i64 %i.bla, 12
  %i.blc = getelementptr inbounds i8, ptr %.0136192.us.i875, i64 %i.blb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.blc, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.gt, i64 12, i1 false)
  %indvars.iv.next235.i882.1 = add nuw nsw i64 %indvars.iv234.i881, 2 ; 2 uses
  %niter1607.next.1 = add i64 %niter1607, 2       ; 2 uses
  %niter1607.ncmp.1 = icmp eq i64 %niter1607.next.1, %unroll_iter1606
  br i1 %niter1607.ncmp.1, label %.loopexit.us.i878.loopexit.unr-lcssa, label %.lr.ph189.us.i880, !llvm.loop !776

.preheader170.us.i877.loopexit.unr-lcssa:         ; preds = %.lr.ph187.us.i884
  br i1 %lcmp.mod1597.not, label %.preheader170.us.i877, label %.lr.ph187.us.i884.epil.preheader

.lr.ph187.us.i884.epil.preheader:                 ; preds = %.preheader170.us.i877.loopexit.unr-lcssa, %.lr.ph187.us.i884.preheader
  %indvars.iv229.i885.epil.init = phi i64 [ 0, %.lr.ph187.us.i884.preheader ], [ %indvars.iv.next230.i886.3, %.preheader170.us.i877.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1598)
  br label %.lr.ph187.us.i884.epil

.lr.ph187.us.i884.epil:                           ; preds = %.lr.ph187.us.i884.epil, %.lr.ph187.us.i884.epil.preheader
  %indvars.iv229.i885.epil = phi i64 [ %indvars.iv.next230.i886.epil, %.lr.ph187.us.i884.epil ], [ %indvars.iv229.i885.epil.init, %.lr.ph187.us.i884.epil.preheader ] ; 2 uses
  %epil.iter1596 = phi i64 [ %epil.iter1596.next, %.lr.ph187.us.i884.epil ], [ 0, %.lr.ph187.us.i884.epil.preheader ]
  %i.bld = mul nuw nsw i64 %indvars.iv229.i885.epil, 12
  %i.ble = getelementptr inbounds nuw i8, ptr %.0136192.us.i875, i64 %i.bld
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ble, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.gt, i64 12, i1 false)
  %indvars.iv.next230.i886.epil = add nuw nsw i64 %indvars.iv229.i885.epil, 1
  %epil.iter1596.next = add i64 %epil.iter1596, 1 ; 2 uses
  %epil.iter1596.cmp.not = icmp eq i64 %epil.iter1596.next, %xtraiter1595
  br i1 %epil.iter1596.cmp.not, label %.preheader170.us.i877, label %.lr.ph187.us.i884.epil, !llvm.loop !777

.preheader170.us.i877:                            ; preds = %.preheader170.us.i877.loopexit.unr-lcssa, %.lr.ph187.us.i884.epil, %.preheader171.us.i873
  br i1 %i.fg, label %.lr.ph189.us.i880.preheader, label %.loopexit.us.i878

.lr.ph189.us.i880.preheader:                      ; preds = %.preheader170.us.i877
  br i1 %i.bkd, label %.lr.ph189.us.i880.epil.preheader, label %.lr.ph189.us.i880

.loopexit.us.i878.loopexit.unr-lcssa:             ; preds = %.lr.ph189.us.i880
  br i1 %lcmp.mod1604.not, label %.loopexit.us.i878, label %.lr.ph189.us.i880.epil.preheader

.lr.ph189.us.i880.epil.preheader:                 ; preds = %.loopexit.us.i878.loopexit.unr-lcssa, %.lr.ph189.us.i880.preheader
  %indvars.iv234.i881.epil.init = phi i64 [ 0, %.lr.ph189.us.i880.preheader ], [ %indvars.iv.next235.i882.1, %.loopexit.us.i878.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1605)
  %i.blf = add nsw i64 %indvars.iv234.i881.epil.init, %i.bjw
  %i.blg = mul nsw i64 %i.blf, 12
  %i.blh = getelementptr inbounds i8, ptr %.0136192.us.i875, i64 %i.blg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.blh, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.gt, i64 12, i1 false)
  br label %.loopexit.us.i878

.loopexit.us.i878:                                ; preds = %.lr.ph189.us.i880.epil.preheader, %.loopexit.us.i878.loopexit.unr-lcssa, %.preheader170.us.i877
  %i.bli = add nuw nsw i32 %.0135194.us.i874, 1   ; 2 uses
  %i.blj = getelementptr inbounds nuw i8, ptr %.0136192.us.i875, i64 %i.bia
  %i.blk = getelementptr inbounds nuw i8, ptr %.0145190.us.i876, i64 %i.bhw
  %exitcond239.not.i879 = icmp eq i32 %i.bli, %i.bhy
  br i1 %exitcond239.not.i879, label %.preheader.i808, label %.preheader171.us.i873, !llvm.loop !778

.preheader.i808:                                  ; preds = %.loopexit173.i859, %.loopexit.us.i878, %.loopexit175.i806
  br i1 %i.ev, label %.lr.ph198.i837, label %._crit_edge199.i809

.lr.ph198.i837:                                   ; preds = %.preheader.i808
  %i.bll = mul nsw i32 %i.bic, 12
  %i.blm = sext i32 %i.bll to i64                 ; 7 uses
  %wide.trip.count248.i838 = zext nneg i32 %.neg to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph198.split.us.i843.preheader, label %.lr.ph198.split.i839

.lr.ph198.split.us.i843.preheader:                ; preds = %.lr.ph198.i837
  %xtraiter1608 = and i64 %wide.trip.count248.i838, 3 ; 3 uses
  %46 = add nsw i32 %.neg, -1
  %i.bln = icmp ult i32 %46, 3
  br i1 %i.bln, label %.lr.ph198.split.us.i843.epil.preheader, label %.lr.ph198.split.us.i843.preheader.new

.lr.ph198.split.us.i843.preheader.new:            ; preds = %.lr.ph198.split.us.i843.preheader
  %unroll_iter1612 = and i64 %wide.trip.count248.i838, 2147483644
  br label %.lr.ph198.split.us.i843

.lr.ph198.split.us.i843:                          ; preds = %.lr.ph198.split.us.i843, %.lr.ph198.split.us.i843.preheader.new
  %indvars.iv245.i844 = phi i64 [ 0, %.lr.ph198.split.us.i843.preheader.new ], [ %indvars.iv.next246.i845.3, %.lr.ph198.split.us.i843 ] ; 5 uses
  %niter1613 = phi i64 [ 0, %.lr.ph198.split.us.i843.preheader.new ], [ %niter1613.next.3, %.lr.ph198.split.us.i843 ]
  %i.blo = mul i64 %indvars.iv245.i844, %i.bia
  %i.blp = getelementptr inbounds nuw i8, ptr %i.bhz, i64 %i.blo
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.blp, ptr align 1 %.0138.i807, i64 %i.blm, i1 false)
  %indvars.iv.next246.i845 = or disjoint i64 %indvars.iv245.i844, 1
  %i.blq = mul i64 %indvars.iv.next246.i845, %i.bia
  %i.blr = getelementptr inbounds nuw i8, ptr %i.bhz, i64 %i.blq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.blr, ptr align 1 %.0138.i807, i64 %i.blm, i1 false)
  %indvars.iv.next246.i845.1 = or disjoint i64 %indvars.iv245.i844, 2
  %i.bls = mul i64 %indvars.iv.next246.i845.1, %i.bia
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bhz, i64 %i.bls
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.blt, ptr align 1 %.0138.i807, i64 %i.blm, i1 false)
  %indvars.iv.next246.i845.2 = or disjoint i64 %indvars.iv245.i844, 3
  %i.blu = mul i64 %indvars.iv.next246.i845.2, %i.bia
  %i.blv = getelementptr inbounds nuw i8, ptr %i.bhz, i64 %i.blu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.blv, ptr align 1 %.0138.i807, i64 %i.blm, i1 false)
  %indvars.iv.next246.i845.3 = add nuw nsw i64 %indvars.iv245.i844, 4 ; 2 uses
  %niter1613.next.3 = add i64 %niter1613, 4       ; 2 uses
  %niter1613.ncmp.3 = icmp eq i64 %niter1613.next.3, %unroll_iter1612
  br i1 %niter1613.ncmp.3, label %._crit_edge199.thread.i847.unr-lcssa, label %.lr.ph198.split.us.i843, !llvm.loop !779

.preheader174.i854:                               ; preds = %.loopexit173.i859, %.preheader174.preheader.i850
  %.0135194.i855 = phi i32 [ %i.bnh, %.loopexit173.i859 ], [ 0, %.preheader174.preheader.i850 ]
  %.0136192.i856 = phi ptr [ %i.bni, %.loopexit173.i859 ], [ %i.bjr, %.preheader174.preheader.i850 ] ; 8 uses
  %.0145190.i857 = phi ptr [ %i.bnj, %.loopexit173.i859 ], [ %i.bhv, %.preheader174.preheader.i850 ] ; 8 uses
  %i.blw = getelementptr inbounds nuw i8, ptr %.0136192.i856, i64 %i.bjt
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.blw, ptr align 1 %.0145190.i857, i64 %i.bjv, i1 false)
  br i1 %i.fb, label %.lr.ph183.i866.preheader, label %.preheader172.i858

.lr.ph183.i866.preheader:                         ; preds = %.preheader174.i854
  br i1 %i.bkj, label %.lr.ph183.i866.epil.preheader, label %.lr.ph183.i866

.preheader172.i858.loopexit.unr-lcssa:            ; preds = %.lr.ph183.i866
  br i1 %lcmp.mod1584.not, label %.preheader172.i858, label %.lr.ph183.i866.epil.preheader

.lr.ph183.i866.epil.preheader:                    ; preds = %.preheader172.i858.loopexit.unr-lcssa, %.lr.ph183.i866.preheader
  %indvars.iv218.i867.epil.init = phi i64 [ 0, %.lr.ph183.i866.preheader ], [ %indvars.iv.next219.i868.1, %.preheader172.i858.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1585)
  %i.blx = mul nuw nsw i64 %indvars.iv218.i867.epil.init, 12
  %i.bly = getelementptr inbounds nuw i8, ptr %.0136192.i856, i64 %i.blx
  %i.blz = getelementptr inbounds nuw [4 x i8], ptr %i.bih, i64 %indvars.iv218.i867.epil.init
  %i.bma = load i32, ptr %i.blz, align 4, !tbaa !18
  %i.bmb = sext i32 %i.bma to i64
  %i.bmc = getelementptr inbounds i8, ptr %.0145190.i857, i64 %i.bmb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bly, ptr noundef nonnull align 1 dereferenceable(12) %i.bmc, i64 12, i1 false)
  br label %.preheader172.i858

.preheader172.i858:                               ; preds = %.lr.ph183.i866.epil.preheader, %.preheader172.i858.loopexit.unr-lcssa, %.preheader174.i854
  br i1 %i.fg, label %.lr.ph185.i861.preheader, label %.loopexit173.i859

.lr.ph185.i861.preheader:                         ; preds = %.preheader172.i858
  br i1 %i.bkk, label %.lr.ph185.i861.epil.preheader, label %.lr.ph185.i861

.lr.ph183.i866:                                   ; preds = %.lr.ph183.i866.preheader, %.lr.ph183.i866
  %indvars.iv218.i867 = phi i64 [ %indvars.iv.next219.i868.1, %.lr.ph183.i866 ], [ 0, %.lr.ph183.i866.preheader ] ; 4 uses
  %niter1587 = phi i64 [ %niter1587.next.1, %.lr.ph183.i866 ], [ 0, %.lr.ph183.i866.preheader ]
  %i.bmd = mul nuw nsw i64 %indvars.iv218.i867, 12
  %i.bme = getelementptr inbounds nuw i8, ptr %.0136192.i856, i64 %i.bmd
  %i.bmf = getelementptr inbounds nuw [4 x i8], ptr %i.bih, i64 %indvars.iv218.i867
  %i.bmg = load i32, ptr %i.bmf, align 4, !tbaa !18
  %i.bmh = sext i32 %i.bmg to i64
  %i.bmi = getelementptr inbounds i8, ptr %.0145190.i857, i64 %i.bmh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bme, ptr noundef nonnull align 1 dereferenceable(12) %i.bmi, i64 12, i1 false)
  %indvars.iv.next219.i868 = or disjoint i64 %indvars.iv218.i867, 1 ; 2 uses
  %i.bmj = mul nuw nsw i64 %indvars.iv.next219.i868, 12
  %i.bmk = getelementptr inbounds nuw i8, ptr %.0136192.i856, i64 %i.bmj
  %i.bml = getelementptr inbounds nuw [4 x i8], ptr %i.bih, i64 %indvars.iv.next219.i868
  %i.bmm = load i32, ptr %i.bml, align 4, !tbaa !18
  %i.bmn = sext i32 %i.bmm to i64
  %i.bmo = getelementptr inbounds i8, ptr %.0145190.i857, i64 %i.bmn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bmk, ptr noundef nonnull align 1 dereferenceable(12) %i.bmo, i64 12, i1 false)
  %indvars.iv.next219.i868.1 = add nuw nsw i64 %indvars.iv218.i867, 2 ; 2 uses
  %niter1587.next.1 = add i64 %niter1587, 2       ; 2 uses
  %niter1587.ncmp.1 = icmp eq i64 %niter1587.next.1, %unroll_iter1586
  br i1 %niter1587.ncmp.1, label %.preheader172.i858.loopexit.unr-lcssa, label %.lr.ph183.i866, !llvm.loop !780

.lr.ph185.i861:                                   ; preds = %.lr.ph185.i861.preheader, %.lr.ph185.i861
  %indvars.iv223.i862 = phi i64 [ %indvars.iv.next224.i864.1, %.lr.ph185.i861 ], [ 0, %.lr.ph185.i861.preheader ] ; 4 uses
  %niter1594 = phi i64 [ %niter1594.next.1, %.lr.ph185.i861 ], [ 0, %.lr.ph185.i861.preheader ]
  %i.bmp = add nsw i64 %indvars.iv223.i862, %i.bjw
  %i.bmq = mul nsw i64 %i.bmp, 12
  %i.bmr = getelementptr inbounds i8, ptr %.0136192.i856, i64 %i.bmq
  %gep279.i863 = getelementptr [4 x i8], ptr %invariant.gep278.i853, i64 %indvars.iv223.i862
  %i.bms = load i32, ptr %gep279.i863, align 4, !tbaa !18
  %i.bmt = sext i32 %i.bms to i64
  %i.bmu = getelementptr inbounds i8, ptr %.0145190.i857, i64 %i.bmt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bmr, ptr noundef nonnull align 1 dereferenceable(12) %i.bmu, i64 12, i1 false)
  %indvars.iv.next224.i864 = or disjoint i64 %indvars.iv223.i862, 1 ; 2 uses
  %i.bmv = add nsw i64 %indvars.iv.next224.i864, %i.bjw
  %i.bmw = mul nsw i64 %i.bmv, 12
  %i.bmx = getelementptr inbounds i8, ptr %.0136192.i856, i64 %i.bmw
  %gep279.i863.1 = getelementptr [4 x i8], ptr %invariant.gep278.i853, i64 %indvars.iv.next224.i864
  %i.bmy = load i32, ptr %gep279.i863.1, align 4, !tbaa !18
  %i.bmz = sext i32 %i.bmy to i64
  %i.bna = getelementptr inbounds i8, ptr %.0145190.i857, i64 %i.bmz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bmx, ptr noundef nonnull align 1 dereferenceable(12) %i.bna, i64 12, i1 false)
  %indvars.iv.next224.i864.1 = add nuw nsw i64 %indvars.iv223.i862, 2 ; 2 uses
  %niter1594.next.1 = add i64 %niter1594, 2       ; 2 uses
  %niter1594.ncmp.1 = icmp eq i64 %niter1594.next.1, %unroll_iter1593
  br i1 %niter1594.ncmp.1, label %.loopexit173.i859.loopexit.unr-lcssa, label %.lr.ph185.i861, !llvm.loop !781

.loopexit173.i859.loopexit.unr-lcssa:             ; preds = %.lr.ph185.i861
  br i1 %lcmp.mod1591.not, label %.loopexit173.i859, label %.lr.ph185.i861.epil.preheader

.lr.ph185.i861.epil.preheader:                    ; preds = %.loopexit173.i859.loopexit.unr-lcssa, %.lr.ph185.i861.preheader
  %indvars.iv223.i862.epil.init = phi i64 [ 0, %.lr.ph185.i861.preheader ], [ %indvars.iv.next224.i864.1, %.loopexit173.i859.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1592)
  %i.bnb = add nsw i64 %indvars.iv223.i862.epil.init, %i.bjw
  %i.bnc = mul nsw i64 %i.bnb, 12
  %i.bnd = getelementptr inbounds i8, ptr %.0136192.i856, i64 %i.bnc
  %gep279.i863.epil = getelementptr [4 x i8], ptr %invariant.gep278.i853, i64 %indvars.iv223.i862.epil.init
  %i.bne = load i32, ptr %gep279.i863.epil, align 4, !tbaa !18
  %i.bnf = sext i32 %i.bne to i64
  %i.bng = getelementptr inbounds i8, ptr %.0145190.i857, i64 %i.bnf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bnd, ptr noundef nonnull align 1 dereferenceable(12) %i.bng, i64 12, i1 false)
  br label %.loopexit173.i859

.loopexit173.i859:                                ; preds = %.lr.ph185.i861.epil.preheader, %.loopexit173.i859.loopexit.unr-lcssa, %.preheader172.i858
  %i.bnh = add nuw nsw i32 %.0135194.i855, 1      ; 2 uses
  %i.bni = getelementptr inbounds nuw i8, ptr %.0136192.i856, i64 %i.bia
  %i.bnj = getelementptr inbounds nuw i8, ptr %.0145190.i857, i64 %i.bhw
  %exitcond228.not.i860 = icmp eq i32 %i.bnh, %i.bhy
  br i1 %exitcond228.not.i860, label %.preheader.i808, label %.preheader174.i854, !llvm.loop !778

._crit_edge199.i809:                              ; preds = %bb.em, %.preheader.i808
  %i.bnk = add nsw i32 %i.bhy, %.sroa.speculated1057
  %i.bnl = sext i32 %i.bnk to i64
  %i.bnm = mul i64 %i.bia, %i.bnl                 ; 2 uses
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bhz, i64 %i.bnm
  br i1 %i.fa, label %.lr.ph202.i816, label %._crit_edge203.i810

._crit_edge199.thread.i847.unr-lcssa:             ; preds = %.lr.ph198.split.us.i843
  %lcmp.mod1610.not = icmp eq i64 %xtraiter1608, 0
  br i1 %lcmp.mod1610.not, label %._crit_edge199.thread.i847, label %.lr.ph198.split.us.i843.epil.preheader

.lr.ph198.split.us.i843.epil.preheader:           ; preds = %._crit_edge199.thread.i847.unr-lcssa, %.lr.ph198.split.us.i843.preheader
  %indvars.iv245.i844.epil.init = phi i64 [ 0, %.lr.ph198.split.us.i843.preheader ], [ %indvars.iv.next246.i845.3, %._crit_edge199.thread.i847.unr-lcssa ]
  %lcmp.mod1611 = icmp ne i64 %xtraiter1608, 0
  call void @llvm.assume(i1 %lcmp.mod1611)
  br label %.lr.ph198.split.us.i843.epil

.lr.ph198.split.us.i843.epil:                     ; preds = %.lr.ph198.split.us.i843.epil, %.lr.ph198.split.us.i843.epil.preheader
  %indvars.iv245.i844.epil = phi i64 [ %indvars.iv.next246.i845.epil, %.lr.ph198.split.us.i843.epil ], [ %indvars.iv245.i844.epil.init, %.lr.ph198.split.us.i843.epil.preheader ] ; 2 uses
  %epil.iter1609 = phi i64 [ %epil.iter1609.next, %.lr.ph198.split.us.i843.epil ], [ 0, %.lr.ph198.split.us.i843.epil.preheader ]
  %i.bno = mul i64 %indvars.iv245.i844.epil, %i.bia
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bhz, i64 %i.bno
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bnp, ptr align 1 %.0138.i807, i64 %i.blm, i1 false)
  %indvars.iv.next246.i845.epil = add nuw nsw i64 %indvars.iv245.i844.epil, 1
  %epil.iter1609.next = add i64 %epil.iter1609, 1 ; 2 uses
  %epil.iter1609.cmp.not = icmp eq i64 %epil.iter1609.next, %xtraiter1608
  br i1 %epil.iter1609.cmp.not, label %._crit_edge199.thread.i847, label %.lr.ph198.split.us.i843.epil, !llvm.loop !782

._crit_edge199.thread.i847:                       ; preds = %.lr.ph198.split.us.i843.epil, %._crit_edge199.thread.i847.unr-lcssa
  br i1 %i.fa, label %.lr.ph202.thread.i848, label %._crit_edge203.i810

.lr.ph202.thread.i848:                            ; preds = %._crit_edge199.thread.i847
  %i.bnq = add nsw i32 %i.bhy, %.neg
  %i.bnr = sext i32 %i.bnq to i64
  %i.bns = mul i64 %i.bia, %i.bnr
  br label %.lr.ph202.split.us.preheader.i831

.lr.ph202.i816:                                   ; preds = %._crit_edge199.i809
  %i.bnt = mul nsw i32 %i.bic, 12
  %i.bnu = sext i32 %i.bnt to i64                 ; 2 uses
  br i1 %i.bd, label %.lr.ph202.split.us.preheader.i831, label %.lr.ph202.split.preheader.i817

.lr.ph202.split.preheader.i817:                   ; preds = %.lr.ph202.i816
  %wide.trip.count253.i818 = zext nneg i32 %i.ez to i64
  br label %.lr.ph202.split.i819

.lr.ph202.split.us.preheader.i831:                ; preds = %.lr.ph202.i816, %.lr.ph202.thread.i848
  %i.bnv = phi i64 [ %i.blm, %.lr.ph202.thread.i848 ], [ %i.bnu, %.lr.ph202.i816 ] ; 5 uses
  %i.bnw = phi i64 [ %i.bns, %.lr.ph202.thread.i848 ], [ %i.bnm, %.lr.ph202.i816 ]
  %wide.trip.count258.i832 = zext nneg i32 %i.ez to i64 ; 2 uses
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bhz, i64 %i.bnw ; 5 uses
  %xtraiter1614 = and i64 %wide.trip.count258.i832, 3 ; 3 uses
  %i.bny = add i32 %i.ez, -1
  %i.bnz = icmp ult i32 %i.bny, 3
  br i1 %i.bnz, label %.lr.ph202.split.us.i833.epil.preheader, label %.lr.ph202.split.us.preheader.i831.new

.lr.ph202.split.us.preheader.i831.new:            ; preds = %.lr.ph202.split.us.preheader.i831
  %unroll_iter1618 = and i64 %wide.trip.count258.i832, 2147483644
  br label %.lr.ph202.split.us.i833

.lr.ph202.split.us.i833:                          ; preds = %.lr.ph202.split.us.i833, %.lr.ph202.split.us.preheader.i831.new
  %indvars.iv255.i834 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i831.new ], [ %indvars.iv.next256.i835.3, %.lr.ph202.split.us.i833 ] ; 5 uses
  %niter1619 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i831.new ], [ %niter1619.next.3, %.lr.ph202.split.us.i833 ]
  %i.boa = mul i64 %indvars.iv255.i834, %i.bia
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bnx, i64 %i.boa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bob, ptr align 1 %.0138.i807, i64 %i.bnv, i1 false)
  %indvars.iv.next256.i835 = or disjoint i64 %indvars.iv255.i834, 1
  %i.boc = mul i64 %indvars.iv.next256.i835, %i.bia
end_hunk_6

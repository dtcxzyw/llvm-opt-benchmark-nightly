Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/depth_to_3d?download=true
inline.NumInlined: 534
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv15depthTo3dNoMaskIdEEvRKNS_3MatERKNS_4Mat_IT_EERS1_:bb.a
  %.sink.idx.i = select i1 %i.g, i64 0, i64 %i.h
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink.idx.i ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !38
  %i.k = insertelement <2 x double> poison, double %i.f, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.j, i64 1
  %i.m = fdiv <2 x double> splat (double 1.000000e+00), %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !38 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sink.i, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !38 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #13
  %i.r = load i32, ptr %5, align 8, !tbaa !20
  %i.s = and i32 %i.r, -4096
  %i.t = or disjoint i32 %i.s, 6
  store i32 %i.t, ptr %5, align 8, !tbaa !20
  %i.u = load i32, ptr %0, align 8, !tbaa !20
  %i.v = and i32 %i.u, 31
  %i.w = icmp eq i32 %i.v, 6
  br i1 %i.w, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.x = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IdEaSERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.e unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.z, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.aa, align 4, !tbaa !40
  store i32 16842752, ptr %3, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.ab, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.ad, align 8
  store i32 33619968, ptr %4, align 8, !tbaa !28
  store ptr %5, ptr %i.ac, align 8, !tbaa !12
  invoke void @_ZN2cv12rescaleDepthERKNS_11_InputArrayEiRKNS_12_OutputArrayEd(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef 1.000000e+03)
          to label %_ZN2cv21rescaleDepthTemplatedIdEEvRKNS_3MatERS1_.exit unwind label %bb.c

_ZN2cv21rescaleDepthTemplatedIdEEvRKNS_3MatERS1_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.e

bb.e:                                             ; preds = %_ZN2cv21rescaleDepthTemplatedIdEEvRKNS_3MatERS1_.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !48
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 1, i32 noundef %i.af, i32 noundef 6)
          to label %_ZN2cv4Mat_IdEC2Eii.exit unwind label %bb.f

_ZN2cv4Mat_IdEC2Eii.exit:                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !47
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef %i.ah, i32 noundef 1, i32 noundef 6)
          to label %_ZN2cv4Mat_IdEC2Eii.exit66 unwind label %bb.g

_ZN2cv4Mat_IdEC2Eii.exit66:                       ; preds = %_ZN2cv4Mat_IdEC2Eii.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50 ; 6 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !48 ; 6 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader, label %.preheader67

.lr.ph.preheader:                                 ; preds = %_ZN2cv4Mat_IdEC2Eii.exit66
  %i.ao = zext nneg i32 %i.am to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.am, 4
  br i1 %min.iters.check, label %.lr.ph.preheader141, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ao, 2147483644              ; 4 uses
  %i.ap = trunc nuw nsw i64 %n.vec to i32
  %i.aq = shl nuw nsw i64 %n.vec, 3
  %i.ar = getelementptr i8, ptr %i.aj, i64 %i.aq
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.o, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat89 = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <2 x i32> %vec.ind, splat (i32 2)
  %i.as = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.as ; 2 uses
  %i.at = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.au = uitofp nneg <2 x i32> %step.add to <2 x double>
  %i.av = fsub <2 x double> %i.at, %broadcast.splat
  %i.aw = fsub <2 x double> %i.au, %broadcast.splat
  %i.ax = fmul <2 x double> %broadcast.splat89, %i.av
  %i.ay = fmul <2 x double> %broadcast.splat89, %i.aw
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %i.ax, ptr %next.gep, align 8, !tbaa !38
  store <2 x double> %i.ay, ptr %i.az, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i32> %vec.ind, splat (i32 4)
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ao
  br i1 %cmp.n, label %.preheader67, label %.lr.ph.preheader141

.lr.ph.preheader141:                              ; preds = %.lr.ph.preheader, %middle.block
  %.05270.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ap, %middle.block ]
  %.05469.ph = phi ptr [ %i.aj, %.lr.ph.preheader ], [ %i.ar, %middle.block ]
  %i.bb = extractelement <2 x double> %i.m, i64 0
  br label %.lr.ph

.preheader67:                                     ; preds = %.lr.ph, %middle.block, %_ZN2cv4Mat_IdEC2Eii.exit66
  %i.bc = load i32, ptr %i.ag, align 8, !tbaa !47 ; 5 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph73.preheader, label %._crit_edge83.split

.lr.ph73.preheader:                               ; preds = %.preheader67
  %i.be = zext nneg i32 %i.bc to i64              ; 2 uses
  %min.iters.check92 = icmp ult i32 %i.bc, 4
  br i1 %min.iters.check92, label %.lr.ph73.preheader140, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph73.preheader
  %n.vec94 = and i64 %i.be, 2147483644            ; 4 uses
  %i.bf = trunc nuw nsw i64 %n.vec94 to i32
  %i.bg = shl nuw nsw i64 %n.vec94, 3
  %i.bh = getelementptr i8, ptr %i.al, i64 %i.bg
  %broadcast.splatinsert95 = insertelement <2 x double> poison, double %i.q, i64 0
  %broadcast.splat96 = shufflevector <2 x double> %broadcast.splatinsert95, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat98 = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph93
  %index100 = phi i64 [ 0, %vector.ph93 ], [ %index.next104, %vector.body99 ] ; 2 uses
  %vec.ind101 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph93 ], [ %vec.ind.next105, %vector.body99 ] ; 3 uses
  %step.add102 = add nuw nsw <2 x i32> %vec.ind101, splat (i32 2)
  %i.bi = shl i64 %index100, 3
  %next.gep103 = getelementptr i8, ptr %i.al, i64 %i.bi ; 2 uses
  %i.bj = uitofp nneg <2 x i32> %vec.ind101 to <2 x double>
  %i.bk = uitofp nneg <2 x i32> %step.add102 to <2 x double>
  %i.bl = fsub <2 x double> %i.bj, %broadcast.splat96
  %i.bm = fsub <2 x double> %i.bk, %broadcast.splat96
  %i.bn = fmul <2 x double> %broadcast.splat98, %i.bl
  %i.bo = fmul <2 x double> %broadcast.splat98, %i.bm
  %i.bp = getelementptr i8, ptr %next.gep103, i64 16
  store <2 x double> %i.bn, ptr %next.gep103, align 8, !tbaa !38
  store <2 x double> %i.bo, ptr %i.bp, align 8, !tbaa !38
  %index.next104 = add nuw i64 %index100, 4       ; 2 uses
  %vec.ind.next105 = add nuw nsw <2 x i32> %vec.ind101, splat (i32 4)
  %i.bq = icmp eq i64 %index.next104, %n.vec94
  br i1 %i.bq, label %middle.block106, label %vector.body99, !llvm.loop !127

middle.block106:                                  ; preds = %vector.body99
  %cmp.n107 = icmp eq i64 %n.vec94, %i.be
  br i1 %cmp.n107, label %.lr.ph82, label %.lr.ph73.preheader140

.lr.ph73.preheader140:                            ; preds = %.lr.ph73.preheader, %middle.block106
  %.05172.ph = phi i32 [ 0, %.lr.ph73.preheader ], [ %i.bf, %middle.block106 ]
  %.05371.ph = phi ptr [ %i.al, %.lr.ph73.preheader ], [ %i.bh, %middle.block106 ]
  %i.br = extractelement <2 x double> %i.m, i64 1
  br label %.lr.ph73

bb.f:                                             ; preds = %bb.e
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #13
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader141, %.lr.ph
  %.05270 = phi i32 [ %i.bx, %.lr.ph ], [ %.05270.ph, %.lr.ph.preheader141 ] ; 2 uses
  %.05469 = phi ptr [ %i.by, %.lr.ph ], [ %.05469.ph, %.lr.ph.preheader141 ] ; 2 uses
  %i.bu = uitofp nneg i32 %.05270 to double
  %i.bv = fsub double %i.bu, %i.o
  %i.bw = fmul double %i.bb, %i.bv
  store double %i.bw, ptr %.05469, align 8, !tbaa !38
  %i.bx = add nuw nsw i32 %.05270, 1              ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.05469, i64 8
  %exitcond.not = icmp eq i32 %i.bx, %i.am
  br i1 %exitcond.not, label %.preheader67, label %.lr.ph, !llvm.loop !128

.lr.ph82:                                         ; preds = %.lr.ph73, %middle.block106
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !50 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !41 ; 3 uses
  %i.cd = sext i32 %i.am to i64                   ; 2 uses
  %.idx = shl nsw i64 %i.cd, 3                    ; 3 uses
  %i.ce = getelementptr i8, ptr %i.aj, i64 %.idx  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !50 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !41 ; 3 uses
  %.not75 = icmp eq i32 %i.am, 0
  br i1 %.not75, label %._crit_edge83.split, label %.lr.ph79.preheader

.lr.ph79.preheader:                               ; preds = %.lr.ph82
  %wide.trip.count = zext nneg i32 %i.bc to i64   ; 3 uses
  %i.cj = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ck = mul i64 %i.cc, %i.cj
  %i.cl = shl nsw i64 %i.cd, 5
  %i.cm = getelementptr i8, ptr %i.ca, i64 %i.ck
  %scevgep = getelementptr i8, ptr %i.cm, i64 %i.cl ; 3 uses
  %i.cn = mul i64 %i.ci, %i.cj
  %i.co = getelementptr i8, ptr %i.cg, i64 %i.cn
  %scevgep110 = getelementptr i8, ptr %i.co, i64 %.idx
  %i.cp = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep111 = getelementptr i8, ptr %i.al, i64 %i.cp
  %i.cq = add nsw i64 %.idx, -8                   ; 2 uses
  %i.cr = lshr exact i64 %i.cq, 3
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check123 = icmp ult i64 %i.cq, 40
  %bound0 = icmp ult ptr %i.ca, %scevgep110
  %bound1 = icmp ult ptr %i.cg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ct = or i64 %i.ci, %i.cc
  %i.cu = icmp slt i64 %i.ct, 0
  %i.cv = or i1 %found.conflict, %i.cu
  %bound0113 = icmp ult ptr %i.ca, %i.ce
  %bound1114 = icmp ult ptr %i.aj, %scevgep
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx = or i1 %i.cv, %found.conflict115
  %bound0117 = icmp ult ptr %i.ca, %scevgep111
  %bound1118 = icmp ult ptr %i.al, %scevgep
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx121 = or i1 %conflict.rdx, %found.conflict119
  %n.vec125 = and i64 %i.cs, 4611686018427387902  ; 4 uses
  %i.cw = shl i64 %n.vec125, 3                    ; 2 uses
  %i.cx = shl i64 %n.vec125, 5
  %i.cy = getelementptr i8, ptr %i.aj, i64 %i.cw
  %cmp.n136 = icmp eq i64 %i.cs, %n.vec125
  br label %.lr.ph79

.lr.ph73:                                         ; preds = %.lr.ph73.preheader140, %.lr.ph73
  %.05172 = phi i32 [ %i.dc, %.lr.ph73 ], [ %.05172.ph, %.lr.ph73.preheader140 ] ; 2 uses
  %.05371 = phi ptr [ %i.dd, %.lr.ph73 ], [ %.05371.ph, %.lr.ph73.preheader140 ] ; 2 uses
  %i.cz = uitofp nneg i32 %.05172 to double
  %i.da = fsub double %i.cz, %i.q
  %i.db = fmul double %i.br, %i.da
  store double %i.db, ptr %.05371, align 8, !tbaa !38
  %i.dc = add nuw nsw i32 %.05172, 1              ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.05371, i64 8
  %exitcond84.not = icmp eq i32 %i.dc, %i.bc
  br i1 %exitcond84.not, label %.lr.ph82, label %.lr.ph73, !llvm.loop !129

._crit_edge83.split:                              ; preds = %._crit_edge, %.preheader67, %.lr.ph82
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph79.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.180 = phi ptr [ %i.al, %.lr.ph79.preheader ], [ %i.ed, %._crit_edge ] ; 3 uses
  %i.de = mul i64 %i.cc, %indvars.iv
  %i.df = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.de ; 3 uses
  %i.dg = mul i64 %i.ci, %indvars.iv
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dg ; 3 uses
  %brmerge = select i1 %min.iters.check123, i1 true, i1 %conflict.rdx121
  br i1 %brmerge, label %scalar.ph122.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph79
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.cw
  %i.dj = getelementptr i8, ptr %i.df, i64 %i.cx
  %i.dk = load double, ptr %.180, align 8, !tbaa !38, !alias.scope !138
  %broadcast.splatinsert132 = insertelement <2 x double> poison, double %i.dk, i64 0
  %broadcast.splat133 = shufflevector <2 x double> %broadcast.splatinsert132, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next134, %vector.body126 ] ; 3 uses
  %i.dl = shl i64 %index127, 3                    ; 2 uses
  %next.gep128.a = getelementptr i8, ptr %i.dh, i64 %i.dl
  %i.dm = shl i64 %index127, 5
  %next.gep129 = getelementptr i8, ptr %i.df, i64 %i.dm
  %next.gep130 = getelementptr i8, ptr %i.aj, i64 %i.dl
  %wide.load = load <2 x double>, ptr %next.gep128.a, align 8, !tbaa !38, !alias.scope !139 ; 3 uses
  %wide.load131 = load <2 x double>, ptr %next.gep130, align 8, !tbaa !38, !alias.scope !140
  %i.dn = fmul <2 x double> %wide.load, %wide.load131
  %i.do = fmul <2 x double> %wide.load, %broadcast.splat133
  %i.dp = shufflevector <2 x double> %i.dn, <2 x double> %i.do, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dq = shufflevector <2 x double> %wide.load, <2 x double> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.dp, <4 x double> %i.dq, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %next.gep129, align 8, !tbaa !38, !alias.scope !141, !noalias !142
  %index.next134 = add nuw i64 %index127, 2       ; 2 uses
  %i.dr = icmp eq i64 %index.next134, %n.vec125
  br i1 %i.dr, label %middle.block135, label %vector.body126, !llvm.loop !135

middle.block135:                                  ; preds = %vector.body126
  br i1 %cmp.n136, label %._crit_edge, label %scalar.ph122.preheader

scalar.ph122.preheader:                           ; preds = %.lr.ph79, %middle.block135
  %.078.ph = phi ptr [ %i.di, %middle.block135 ], [ %i.dh, %.lr.ph79 ]
  %.04977.ph = phi ptr [ %i.dj, %middle.block135 ], [ %i.df, %.lr.ph79 ]
  %.15576.ph = phi ptr [ %i.cy, %middle.block135 ], [ %i.aj, %.lr.ph79 ]
  br label %scalar.ph122

scalar.ph122:                                     ; preds = %scalar.ph122.preheader, %scalar.ph122
  %.078 = phi ptr [ %i.ec, %scalar.ph122 ], [ %.078.ph, %scalar.ph122.preheader ] ; 2 uses
  %.04977 = phi ptr [ %i.eb, %scalar.ph122 ], [ %.04977.ph, %scalar.ph122.preheader ] ; 4 uses
  %.15576 = phi ptr [ %i.ea, %scalar.ph122 ], [ %.15576.ph, %scalar.ph122.preheader ] ; 2 uses
  %i.ds = load double, ptr %.078, align 8, !tbaa !38 ; 3 uses
  %i.dt = load double, ptr %.15576, align 8, !tbaa !38
  %i.du = fmul double %i.ds, %i.dt
  store double %i.du, ptr %.04977, align 8, !tbaa !38
  %i.dv = load double, ptr %.180, align 8, !tbaa !38
  %i.dw = fmul double %i.ds, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %.04977, i64 8
  store double %i.dw, ptr %i.dx, align 8, !tbaa !38
  %i.dy = getelementptr inbounds nuw i8, ptr %.04977, i64 16
  %i.dz = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ds, i64 0
  store <2 x double> %i.dz, ptr %i.dy, align 8, !tbaa !38
  %i.ea = getelementptr inbounds nuw i8, ptr %.15576, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.04977, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %.078, i64 8
  %.not = icmp eq ptr %i.ea, %i.ce
  br i1 %.not, label %._crit_edge, label %scalar.ph122, !llvm.loop !136

._crit_edge:                                      ; preds = %scalar.ph122, %middle.block135
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.180, i64 8
  %exitcond86.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond86.not, label %._crit_edge83.split, label %.lr.ph79, !llvm.loop !137

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.g ], [ %i.bs, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.y, %bb.c ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv15depthTo3dNoMaskIfEEvRKNS_3MatERKNS_4Mat_IT_EERS1_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %4 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %5 = alloca %"class.cv::Mat_", align 8          ; 12 uses
  %6 = alloca %"class.cv::Mat_", align 8          ; 7 uses
  %7 = alloca %"class.cv::Mat_", align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load float, ptr %i.d, align 4, !tbaa !57
  %i.g = icmp slt i32 %i.b, 2
  %i.h = load i64, ptr %i.e, align 8
  %.sink.idx.i = select i1 %i.g, i64 0, i64 %i.h
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink.idx.i ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sink.i, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !57
  %i.k = insertelement <2 x float> poison, float %i.f, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.j, i64 1
  %i.m = fdiv <2 x float> splat (float 1.000000e+00), %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !57 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #13
  %i.r = load i32, ptr %5, align 8, !tbaa !20
  %i.s = and i32 %i.r, -4096
  %i.t = or disjoint i32 %i.s, 5
  store i32 %i.t, ptr %5, align 8, !tbaa !20
  %i.u = load i32, ptr %0, align 8, !tbaa !20
  %i.v = and i32 %i.u, 31
  %i.w = icmp eq i32 %i.v, 5
  br i1 %i.w, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.x = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.e unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.z, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.aa, align 4, !tbaa !40
  store i32 16842752, ptr %3, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.ab, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.ad, align 8
  store i32 33619968, ptr %4, align 8, !tbaa !28
  store ptr %5, ptr %i.ac, align 8, !tbaa !12
  invoke void @_ZN2cv12rescaleDepthERKNS_11_InputArrayEiRKNS_12_OutputArrayEd(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef 1.000000e+03)
          to label %_ZN2cv21rescaleDepthTemplatedIfEEvRKNS_3MatERS1_.exit unwind label %bb.c

_ZN2cv21rescaleDepthTemplatedIfEEvRKNS_3MatERS1_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.e

bb.e:                                             ; preds = %_ZN2cv21rescaleDepthTemplatedIfEEvRKNS_3MatERS1_.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !48
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 1, i32 noundef %i.af, i32 noundef 5)
          to label %_ZN2cv4Mat_IfEC2Eii.exit unwind label %bb.f

_ZN2cv4Mat_IfEC2Eii.exit:                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !47
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef %i.ah, i32 noundef 1, i32 noundef 5)
          to label %_ZN2cv4Mat_IfEC2Eii.exit66 unwind label %bb.g

_ZN2cv4Mat_IfEC2Eii.exit66:                       ; preds = %_ZN2cv4Mat_IfEC2Eii.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50 ; 6 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !48 ; 6 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader, label %.preheader67

.lr.ph.preheader:                                 ; preds = %_ZN2cv4Mat_IfEC2Eii.exit66
  %i.ao = zext nneg i32 %i.am to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.am, 8
  br i1 %min.iters.check, label %.lr.ph.preheader141, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ao, 2147483640              ; 4 uses
  %i.ap = trunc nuw nsw i64 %n.vec to i32
  %i.aq = shl nuw nsw i64 %n.vec, 2
  %i.ar = getelementptr i8, ptr %i.aj, i64 %i.aq
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat89 = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.as = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.as ; 2 uses
  %i.at = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.au = uitofp nneg <4 x i32> %step.add to <4 x float>
  %i.av = fsub <4 x float> %i.at, %broadcast.splat
  %i.aw = fsub <4 x float> %i.au, %broadcast.splat
  %i.ax = fmul <4 x float> %broadcast.splat89, %i.av
  %i.ay = fmul <4 x float> %broadcast.splat89, %i.aw
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %i.ax, ptr %next.gep, align 4, !tbaa !57
  store <4 x float> %i.ay, ptr %i.az, align 4, !tbaa !57
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ao
  br i1 %cmp.n, label %.preheader67, label %.lr.ph.preheader141

.lr.ph.preheader141:                              ; preds = %.lr.ph.preheader, %middle.block
  %.05270.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ap, %middle.block ]
  %.05469.ph = phi ptr [ %i.aj, %.lr.ph.preheader ], [ %i.ar, %middle.block ]
  %i.bb = extractelement <2 x float> %i.m, i64 0
  br label %.lr.ph

.preheader67:                                     ; preds = %.lr.ph, %middle.block, %_ZN2cv4Mat_IfEC2Eii.exit66
  %i.bc = load i32, ptr %i.ag, align 8, !tbaa !47 ; 5 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph73.preheader, label %._crit_edge83.split

.lr.ph73.preheader:                               ; preds = %.preheader67
  %i.be = zext nneg i32 %i.bc to i64              ; 2 uses
  %min.iters.check92 = icmp ult i32 %i.bc, 8
  br i1 %min.iters.check92, label %.lr.ph73.preheader140, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph73.preheader
  %n.vec94 = and i64 %i.be, 2147483640            ; 4 uses
  %i.bf = trunc nuw nsw i64 %n.vec94 to i32
  %i.bg = shl nuw nsw i64 %n.vec94, 2
  %i.bh = getelementptr i8, ptr %i.al, i64 %i.bg
  %broadcast.splatinsert95 = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat96 = shufflevector <4 x float> %broadcast.splatinsert95, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat98 = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph93
  %index100 = phi i64 [ 0, %vector.ph93 ], [ %index.next104, %vector.body99 ] ; 2 uses
  %vec.ind101 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph93 ], [ %vec.ind.next105, %vector.body99 ] ; 3 uses
  %step.add102 = add nuw nsw <4 x i32> %vec.ind101, splat (i32 4)
  %i.bi = shl i64 %index100, 2
  %next.gep103 = getelementptr i8, ptr %i.al, i64 %i.bi ; 2 uses
  %i.bj = uitofp nneg <4 x i32> %vec.ind101 to <4 x float>
  %i.bk = uitofp nneg <4 x i32> %step.add102 to <4 x float>
  %i.bl = fsub <4 x float> %i.bj, %broadcast.splat96
  %i.bm = fsub <4 x float> %i.bk, %broadcast.splat96
  %i.bn = fmul <4 x float> %broadcast.splat98, %i.bl
  %i.bo = fmul <4 x float> %broadcast.splat98, %i.bm
  %i.bp = getelementptr i8, ptr %next.gep103, i64 16
  store <4 x float> %i.bn, ptr %next.gep103, align 4, !tbaa !57
  store <4 x float> %i.bo, ptr %i.bp, align 4, !tbaa !57
  %index.next104 = add nuw i64 %index100, 8       ; 2 uses
  %vec.ind.next105 = add nuw nsw <4 x i32> %vec.ind101, splat (i32 8)
  %i.bq = icmp eq i64 %index.next104, %n.vec94
  br i1 %i.bq, label %middle.block106, label %vector.body99, !llvm.loop !144

middle.block106:                                  ; preds = %vector.body99
  %cmp.n107 = icmp eq i64 %n.vec94, %i.be
  br i1 %cmp.n107, label %.lr.ph82, label %.lr.ph73.preheader140

.lr.ph73.preheader140:                            ; preds = %.lr.ph73.preheader, %middle.block106
  %.05172.ph = phi i32 [ 0, %.lr.ph73.preheader ], [ %i.bf, %middle.block106 ]
  %.05371.ph = phi ptr [ %i.al, %.lr.ph73.preheader ], [ %i.bh, %middle.block106 ]
  %i.br = extractelement <2 x float> %i.m, i64 1
  br label %.lr.ph73

bb.f:                                             ; preds = %bb.e
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZN2cv4Mat_IfEC2Eii.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #13
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader141, %.lr.ph
  %.05270 = phi i32 [ %i.bx, %.lr.ph ], [ %.05270.ph, %.lr.ph.preheader141 ] ; 2 uses
  %.05469 = phi ptr [ %i.by, %.lr.ph ], [ %.05469.ph, %.lr.ph.preheader141 ] ; 2 uses
  %i.bu = uitofp nneg i32 %.05270 to float
  %i.bv = fsub float %i.bu, %i.o
  %i.bw = fmul float %i.bb, %i.bv
  store float %i.bw, ptr %.05469, align 4, !tbaa !57
  %i.bx = add nuw nsw i32 %.05270, 1              ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.05469, i64 4
  %exitcond.not = icmp eq i32 %i.bx, %i.am
  br i1 %exitcond.not, label %.preheader67, label %.lr.ph, !llvm.loop !145

.lr.ph82:                                         ; preds = %.lr.ph73, %middle.block106
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !50 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !41 ; 3 uses
  %i.cd = sext i32 %i.am to i64                   ; 2 uses
  %.idx = shl nsw i64 %i.cd, 2                    ; 3 uses
  %i.ce = getelementptr i8, ptr %i.aj, i64 %.idx  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !50 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !41 ; 3 uses
  %.not75 = icmp eq i32 %i.am, 0
  br i1 %.not75, label %._crit_edge83.split, label %.lr.ph79.preheader

.lr.ph79.preheader:                               ; preds = %.lr.ph82
  %wide.trip.count = zext nneg i32 %i.bc to i64   ; 3 uses
  %i.cj = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ck = mul i64 %i.cc, %i.cj
  %i.cl = shl nsw i64 %i.cd, 4
  %i.cm = getelementptr i8, ptr %i.ca, i64 %i.ck
  %scevgep = getelementptr i8, ptr %i.cm, i64 %i.cl ; 3 uses
  %i.cn = mul i64 %i.ci, %i.cj
  %i.co = getelementptr i8, ptr %i.cg, i64 %i.cn
  %scevgep110 = getelementptr i8, ptr %i.co, i64 %.idx
  %i.cp = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep111 = getelementptr i8, ptr %i.al, i64 %i.cp
  %i.cq = add nsw i64 %.idx, -4                   ; 2 uses
  %i.cr = lshr exact i64 %i.cq, 2
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check123 = icmp ult i64 %i.cq, 28
  %bound0 = icmp ult ptr %i.ca, %scevgep110
  %bound1 = icmp ult ptr %i.cg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ct = or i64 %i.ci, %i.cc
  %i.cu = icmp slt i64 %i.ct, 0
  %i.cv = or i1 %found.conflict, %i.cu
  %bound0113 = icmp ult ptr %i.ca, %i.ce
  %bound1114 = icmp ult ptr %i.aj, %scevgep
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx = or i1 %i.cv, %found.conflict115
  %bound0117 = icmp ult ptr %i.ca, %scevgep111
  %bound1118 = icmp ult ptr %i.al, %scevgep
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx121 = or i1 %conflict.rdx, %found.conflict119
  %n.vec125 = and i64 %i.cs, 9223372036854775804  ; 4 uses
  %i.cw = shl i64 %n.vec125, 2                    ; 2 uses
  %i.cx = shl i64 %n.vec125, 4
  %i.cy = getelementptr i8, ptr %i.aj, i64 %i.cw
  %cmp.n136 = icmp eq i64 %i.cs, %n.vec125
  br label %.lr.ph79

.lr.ph73:                                         ; preds = %.lr.ph73.preheader140, %.lr.ph73
  %.05172 = phi i32 [ %i.dc, %.lr.ph73 ], [ %.05172.ph, %.lr.ph73.preheader140 ] ; 2 uses
  %.05371 = phi ptr [ %i.dd, %.lr.ph73 ], [ %.05371.ph, %.lr.ph73.preheader140 ] ; 2 uses
  %i.cz = uitofp nneg i32 %.05172 to float
  %i.da = fsub float %i.cz, %i.q
  %i.db = fmul float %i.br, %i.da
  store float %i.db, ptr %.05371, align 4, !tbaa !57
  %i.dc = add nuw nsw i32 %.05172, 1              ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.05371, i64 4
  %exitcond84.not = icmp eq i32 %i.dc, %i.bc
  br i1 %exitcond84.not, label %.lr.ph82, label %.lr.ph73, !llvm.loop !146

._crit_edge83.split:                              ; preds = %._crit_edge, %.preheader67, %.lr.ph82
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph79.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.180 = phi ptr [ %i.al, %.lr.ph79.preheader ], [ %i.ed, %._crit_edge ] ; 3 uses
  %i.de = mul i64 %i.cc, %indvars.iv
  %i.df = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.de ; 3 uses
  %i.dg = mul i64 %i.ci, %indvars.iv
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dg ; 3 uses
  %brmerge = select i1 %min.iters.check123, i1 true, i1 %conflict.rdx121
  br i1 %brmerge, label %scalar.ph122.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph79
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.cw
  %i.dj = getelementptr i8, ptr %i.df, i64 %i.cx
  %i.dk = load float, ptr %.180, align 4, !tbaa !57, !alias.scope !155
  %broadcast.splatinsert132 = insertelement <4 x float> poison, float %i.dk, i64 0
  %broadcast.splat133 = shufflevector <4 x float> %broadcast.splatinsert132, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next134, %vector.body126 ] ; 3 uses
  %i.dl = shl i64 %index127, 2                    ; 2 uses
  %next.gep128.a = getelementptr i8, ptr %i.dh, i64 %i.dl
  %i.dm = shl i64 %index127, 4
  %next.gep129 = getelementptr i8, ptr %i.df, i64 %i.dm
  %next.gep130 = getelementptr i8, ptr %i.aj, i64 %i.dl
  %wide.load = load <4 x float>, ptr %next.gep128.a, align 4, !tbaa !57, !alias.scope !156 ; 3 uses
  %wide.load131 = load <4 x float>, ptr %next.gep130, align 4, !tbaa !57, !alias.scope !157
  %i.dn = fmul <4 x float> %wide.load, %wide.load131
  %i.do = fmul <4 x float> %wide.load, %broadcast.splat133
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dq = shufflevector <4 x float> %wide.load, <4 x float> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.dp, <8 x float> %i.dq, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep129, align 4, !tbaa !57, !alias.scope !158, !noalias !159
  %index.next134 = add nuw i64 %index127, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next134, %n.vec125
  br i1 %i.dr, label %middle.block135, label %vector.body126, !llvm.loop !152

middle.block135:                                  ; preds = %vector.body126
  br i1 %cmp.n136, label %._crit_edge, label %scalar.ph122.preheader

scalar.ph122.preheader:                           ; preds = %.lr.ph79, %middle.block135
  %.078.ph = phi ptr [ %i.di, %middle.block135 ], [ %i.dh, %.lr.ph79 ]
  %.04977.ph = phi ptr [ %i.dj, %middle.block135 ], [ %i.df, %.lr.ph79 ]
  %.15576.ph = phi ptr [ %i.cy, %middle.block135 ], [ %i.aj, %.lr.ph79 ]
  br label %scalar.ph122

scalar.ph122:                                     ; preds = %scalar.ph122.preheader, %scalar.ph122
  %.078 = phi ptr [ %i.ec, %scalar.ph122 ], [ %.078.ph, %scalar.ph122.preheader ] ; 2 uses
  %.04977 = phi ptr [ %i.eb, %scalar.ph122 ], [ %.04977.ph, %scalar.ph122.preheader ] ; 4 uses
  %.15576 = phi ptr [ %i.ea, %scalar.ph122 ], [ %.15576.ph, %scalar.ph122.preheader ] ; 2 uses
  %i.ds = load float, ptr %.078, align 4, !tbaa !57 ; 3 uses
  %i.dt = load float, ptr %.15576, align 4, !tbaa !57
  %i.du = fmul float %i.ds, %i.dt
  store float %i.du, ptr %.04977, align 4, !tbaa !57
  %i.dv = load float, ptr %.180, align 4, !tbaa !57
  %i.dw = fmul float %i.ds, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %.04977, i64 4
  store float %i.dw, ptr %i.dx, align 4, !tbaa !57
  %i.dy = getelementptr inbounds nuw i8, ptr %.04977, i64 8
  %i.dz = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ds, i64 0
  store <2 x float> %i.dz, ptr %i.dy, align 4, !tbaa !57
  %i.ea = getelementptr inbounds nuw i8, ptr %.15576, i64 4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.04977, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %.078, i64 4
  %.not = icmp eq ptr %i.ea, %i.ce
  br i1 %.not, label %._crit_edge, label %scalar.ph122, !llvm.loop !153

._crit_edge:                                      ; preds = %scalar.ph122, %middle.block135
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.180, i64 4
  %exitcond86.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond86.not, label %._crit_edge83.split, label %.lr.ph79, !llvm.loop !154

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.g ], [ %i.bs, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.y, %bb.c ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  resume { ptr, i32 } %.pn.pn
}

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !20
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 5
  store i32 %i.d, ptr %0, align 8, !tbaa !20
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !20     ; 3 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !58
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  %i.o = and i32 %i.e, 4064
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.q, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4Mat_IfEaSERKNS_3MatE, ptr noundef nonnull @.str.8, i32 noundef 1630) #14
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          cleanup
end_hunk_0

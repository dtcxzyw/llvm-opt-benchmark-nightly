Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hog?download=true
inline.NumInlined: 1398
inline.NumDeleted: 545
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv8HOGCache4initEPKNS_13HOGDescriptorERKNS_3MatERKNS_5Size_IiEESA_bSA_:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.0181.0.copyload = load i32, ptr %i.z, align 8, !tbaa !51 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !51 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !41 ; 10 uses
  %i.ac = mul nsw i32 %.sroa.14.0.copyload, %.sroa.0188.0.copyload ; 7 uses
  %i.ad = trunc i64 %i.w to i32
  %i.ae = sub nsw i32 %i.ad, %.sroa.0188.0.copyload
  %i.af = sdiv i32 %i.ae, %.sroa.0184.0.copyload
  %i.ag = add nsw i32 %i.af, 1
  %i.ah = lshr i64 %i.w, 32
  %i.ai = trunc nuw i64 %i.ah to i32              ; 2 uses
  %i.aj = sub nsw i32 %i.ai, %.sroa.14.0.copyload
  %i.ak = sdiv i32 %i.aj, %.sroa.6186.0.copyload
  %i.al = add nsw i32 %i.ak, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %.sroa.4285.0.insert.ext = zext i32 %i.al to i64
  %.sroa.4285.0.insert.shift = shl nuw i64 %.sroa.4285.0.insert.ext, 32
  %.sroa.0284.0.insert.ext = zext i32 %i.ag to i64
  %.sroa.0284.0.insert.insert = or disjoint i64 %.sroa.4285.0.insert.shift, %.sroa.0284.0.insert.ext
  store i64 %.sroa.0284.0.insert.insert, ptr %i.am, align 8, !tbaa !51
  %i.an = sdiv i32 %.sroa.0188.0.copyload, %.sroa.0181.0.copyload ; 2 uses
  %i.ao = sdiv i32 %.sroa.14.0.copyload, %.sroa.6.0.copyload ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.sroa.4283.0.insert.ext = zext i32 %i.ao to i64
  %.sroa.4283.0.insert.shift = shl nuw i64 %.sroa.4283.0.insert.ext, 32
  %.sroa.0282.0.insert.ext = zext i32 %i.an to i64
  %.sroa.0282.0.insert.insert = or disjoint i64 %.sroa.4283.0.insert.shift, %.sroa.0282.0.insert.ext
  store i64 %.sroa.0282.0.insert.insert, ptr %i.ap, align 8, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 7 uses
  %i.ar = mul i32 %i.an, %i.ab
  %i.as = mul i32 %i.ar, %i.ao                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i32 %i.as, ptr %i.at, align 8, !tbaa !126
  %i.au = load i8, ptr %i.e, align 8, !tbaa !118, !range !77, !noundef !78
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !246
  %i.ay = sub nsw i32 %i.ax, %.sroa.0188.0.copyload
  %i.az = load <2 x i32>, ptr %i.c, align 8, !tbaa !51
  %i.ba = insertelement <2 x i32> poison, i32 %i.ay, i64 0
  %i.bb = insertelement <2 x i32> %i.ba, i32 %i.ai, i64 1
  %i.bc = sdiv <2 x i32> %i.bb, %i.az             ; 2 uses
  %i.bd = extractelement <2 x i32> %i.bc, i64 0
  %i.be = add nsw i32 %i.bd, 1                    ; 2 uses
  %i.bf = extractelement <2 x i32> %i.bc, i64 1
  %i.bg = add nsw i32 %i.bf, 1                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bi = mul nsw i32 %i.be, %i.as
  call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.bh, i32 noundef %i.bg, i32 noundef %i.bi, i32 noundef 5)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.sroa.5.0.insert.ext = zext i32 %i.bg to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0281.0.insert.ext = zext i32 %i.be to i64
  %.sroa.0281.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0281.0.insert.ext
  call void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %i.bj, i64 %.sroa.0281.0.insert.insert, i32 noundef 0)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !88 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !127 ; 2 uses
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !120 ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 2                 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, %i.bm
  br i1 %i.bv, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bw = sub nuw nsw i64 %i.bm, %i.bu
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef %i.bw)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.bx = icmp ugt i64 %i.bu, %i.bm
  br i1 %i.bx, label %bb.e, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bm ; 2 uses
  %.not.i.i = icmp eq ptr %i.bp, %i.by
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.by, ptr %i.bo, align 8, !tbaa !127
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bz = load ptr, ptr %i.bn, align 8, !tbaa !120
  %i.ca = shl nuw nsw i64 %i.bm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bz, i8 -1, i64 %i.ca, i1 false), !tbaa !51
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef %.sroa.14.0.copyload, i32 noundef %.sroa.0188.0.copyload, i32 noundef 5)
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !119 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !45 ; 2 uses
  %i.ce = fcmp ogt double %i.cd, 0.000000e+00
  br i1 %i.ce, label %_ZNK2cv13HOGDescriptor11getWinSigmaEv.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !37
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !38
  %i.cj = add nsw i32 %i.ci, %i.cg
  %i.ck = sitofp i32 %i.cj to double
  %i.cl = fmul nnan double %i.ck, 1.250000e-01
  br label %_ZNK2cv13HOGDescriptor11getWinSigmaEv.exit

_ZNK2cv13HOGDescriptor11getWinSigmaEv.exit:       ; preds = %.loopexit, %bb.f
  %i.cm = phi double [ %i.cl, %bb.f ], [ %i.cd, %.loopexit ]
  %i.cn = fptrunc double %i.cm to float           ; 2 uses
  %i.co = fmul float %i.cn, %i.cn
  %i.cp = fmul float %i.co, 2.000000e+00
  %i.cq = fdiv float 1.000000e+00, %i.cp          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.cr = sext i32 %.sroa.14.0.copyload to i64    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.cs, ptr %11, align 8, !tbaa !95
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.not.i.i264 = icmp ugt i32 %.sroa.14.0.copyload, 264
  store i64 %i.cr, ptr %i.ct, align 8, !tbaa !96
  br i1 %.not.i.i264, label %bb.g, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit

bb.g:                                             ; preds = %_ZNK2cv13HOGDescriptor11getWinSigmaEv.exit
  %i.cu = icmp slt i32 %.sroa.14.0.copyload, 0
  %i.cv = shl nuw nsw i64 %i.cr, 2
  %i.cw = select i1 %i.cu, i64 -1, i64 %i.cv
  %i.cx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cw) #26
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.g
  store ptr %i.cx, ptr %11, align 8, !tbaa !95
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit

_ZN2cv10AutoBufferIfLm264EEC2Em.exit:             ; preds = %.noexc, %_ZNK2cv13HOGDescriptor11getWinSigmaEv.exit
  %i.cy = phi ptr [ %i.cx, %.noexc ], [ %i.cs, %_ZNK2cv13HOGDescriptor11getWinSigmaEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.cz = sext i32 %.sroa.0188.0.copyload to i64  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.da, ptr %12, align 8, !tbaa !95
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i265 = icmp ugt i32 %.sroa.0188.0.copyload, 264
  store i64 %i.cz, ptr %i.db, align 8, !tbaa !96
  br i1 %.not.i.i265, label %bb.h, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267

bb.h:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit
  %i.dc = icmp slt i32 %.sroa.0188.0.copyload, 0
  %i.dd = shl nuw nsw i64 %i.cz, 2
  %i.de = select i1 %i.dc, i64 -1, i64 %i.dd
  %i.df = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.de) #26
          to label %.noexc266 unwind label %bb.j  ; 2 uses

.noexc266:                                        ; preds = %bb.h
  store ptr %i.df, ptr %12, align 8, !tbaa !95
  %.pre = load ptr, ptr %11, align 8, !tbaa !95
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267

_ZN2cv10AutoBufferIfLm264EEC2Em.exit267:          ; preds = %.noexc266, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit
  %i.dg = phi ptr [ %i.df, %.noexc266 ], [ %i.da, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit ] ; 6 uses
  %i.dh = phi ptr [ %.pre, %.noexc266 ], [ %i.cy, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit ] ; 5 uses
  %i.di = uitofp nneg i32 %.sroa.14.0.copyload to float
  %i.dj = fmul nnan float %i.di, 5.000000e-01     ; 2 uses
  %i.dk = uitofp nneg i32 %.sroa.0188.0.copyload to float
  %i.dl = fmul nnan float %i.dk, 5.000000e-01     ; 2 uses
  %i.dm = icmp sgt i32 %.sroa.14.0.copyload, 0    ; 3 uses
  br i1 %i.dm, label %.lr.ph296.preheader, label %.preheader293.thread

.lr.ph296.preheader:                              ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267
  %wide.trip.count = zext nneg i32 %.sroa.14.0.copyload to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.sroa.14.0.copyload, 8
  br i1 %min.iters.check, label %.lr.ph296.preheader440, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph296.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dj, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.dn = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.do = uitofp nneg <4 x i32> %step.add to <4 x float>
  %i.dp = fsub <4 x float> %i.dn, %broadcast.splat ; 2 uses
  %i.dq = fsub <4 x float> %i.do, %broadcast.splat ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %index ; 2 uses
  %i.ds = fmul nnan <4 x float> %i.dp, %i.dp
  %i.dt = fmul nnan <4 x float> %i.dq, %i.dq
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <4 x float> %i.ds, ptr %i.dr, align 4, !tbaa !53
  store <4 x float> %i.dt, ptr %i.du, align 4, !tbaa !53
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader293, label %.lr.ph296.preheader440

.lr.ph296.preheader440:                           ; preds = %.lr.ph296.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph296.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph296

.preheader293:                                    ; preds = %.lr.ph296, %middle.block
  %i.dw = icmp sgt i32 %.sroa.0188.0.copyload, 0
  br i1 %i.dw, label %.lr.ph298.preheader, label %._crit_edge302.split

.preheader293.thread:                             ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267
  %i.dx = icmp sgt i32 %.sroa.0188.0.copyload, 0
  br i1 %i.dx, label %.lr.ph298.preheader, label %._crit_edge302.split

.lr.ph298.preheader:                              ; preds = %.preheader293.thread, %.preheader293
  %wide.trip.count327 = zext nneg i32 %.sroa.0188.0.copyload to i64 ; 3 uses
  %min.iters.check421 = icmp ult i32 %.sroa.0188.0.copyload, 8
  br i1 %min.iters.check421, label %.lr.ph298.preheader439, label %vector.ph422

vector.ph422:                                     ; preds = %.lr.ph298.preheader
  %n.vec423 = and i64 %wide.trip.count327, 2147483640 ; 3 uses
  %broadcast.splatinsert424 = insertelement <4 x float> poison, float %i.dl, i64 0
  %broadcast.splat425 = shufflevector <4 x float> %broadcast.splatinsert424, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body426

vector.body426:                                   ; preds = %vector.body426, %vector.ph422
  %index427 = phi i64 [ 0, %vector.ph422 ], [ %index.next430, %vector.body426 ] ; 2 uses
  %vec.ind428 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph422 ], [ %vec.ind.next431, %vector.body426 ] ; 3 uses
  %step.add429 = add <4 x i32> %vec.ind428, splat (i32 4)
  %i.dy = uitofp nneg <4 x i32> %vec.ind428 to <4 x float>
  %i.dz = uitofp nneg <4 x i32> %step.add429 to <4 x float>
  %i.ea = fsub <4 x float> %i.dy, %broadcast.splat425 ; 2 uses
  %i.eb = fsub <4 x float> %i.dz, %broadcast.splat425 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index427 ; 2 uses
  %i.ed = fmul nnan <4 x float> %i.ea, %i.ea
  %i.ee = fmul nnan <4 x float> %i.eb, %i.eb
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <4 x float> %i.ed, ptr %i.ec, align 4, !tbaa !53
  store <4 x float> %i.ee, ptr %i.ef, align 4, !tbaa !53
  %index.next430 = add nuw i64 %index427, 8       ; 2 uses
  %vec.ind.next431 = add <4 x i32> %vec.ind428, splat (i32 8)
  %i.eg = icmp eq i64 %index.next430, %n.vec423
  br i1 %i.eg, label %middle.block432, label %vector.body426, !llvm.loop !235

middle.block432:                                  ; preds = %vector.body426
  %cmp.n433 = icmp eq i64 %n.vec423, %wide.trip.count327
  br i1 %cmp.n433, label %.preheader292, label %.lr.ph298.preheader439

.lr.ph298.preheader439:                           ; preds = %.lr.ph298.preheader, %middle.block432
  %indvars.iv324.ph = phi i64 [ 0, %.lr.ph298.preheader ], [ %n.vec423, %middle.block432 ]
  br label %.lr.ph298

.lr.ph296:                                        ; preds = %.lr.ph296.preheader440, %.lr.ph296
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph296 ], [ %indvars.iv.ph, %.lr.ph296.preheader440 ] ; 3 uses
  %i.eh = trunc nuw nsw i64 %indvars.iv to i32
  %i.ei = uitofp nneg i32 %i.eh to float
  %i.ej = fsub float %i.ei, %i.dj                 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv
  %i.el = fmul nnan float %i.ej, %i.ej
  store float %i.el, ptr %i.ek, align 4, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader293, label %.lr.ph296, !llvm.loop !236

bb.i:                                             ; preds = %bb.g
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.eo = load ptr, ptr %11, align 8, !tbaa !95   ; 3 uses
  %.not.i.i268 = icmp eq ptr %i.eo, %i.cs
  %i.ep = icmp eq ptr %i.eo, null
  %or.cond.i = or i1 %.not.i.i268, %i.ep
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.eo) #25
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit

.preheader292:                                    ; preds = %.lr.ph298, %middle.block432
  br i1 %i.dm, label %.preheader291.lr.ph.split, label %._crit_edge302.split

.preheader291.lr.ph.split:                        ; preds = %.preheader292
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.eu = load i32, ptr %i.et, align 4
  %.fr319 = freeze i32 %i.eu
  %i.ev = icmp slt i32 %.fr319, 2
  %wide.trip.count347 = zext nneg i32 %.sroa.14.0.copyload to i64 ; 2 uses
  %wide.trip.count342 = zext nneg i32 %.sroa.0188.0.copyload to i64 ; 2 uses
  br i1 %i.ev, label %.preheader291.us, label %.preheader291

.preheader291.us:                                 ; preds = %.preheader291.lr.ph.split, %._crit_edge.split.us.us
  %indvars.iv344 = phi i64 [ %indvars.iv.next345, %._crit_edge.split.us.us ], [ 0, %.preheader291.lr.ph.split ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv344
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader291.us
  %indvars.iv339 = phi i64 [ %indvars.iv.next340, %bb.l ], [ 0, %.preheader291.us ] ; 3 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !53
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv339
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !53
  %i.fa = fadd float %i.ex, %i.ez
  %i.fb = fneg float %i.fa
  %i.fc = fmul float %i.cq, %i.fb
  %i.fd = call noundef float @expf(float noundef %i.fc) #23
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv339
  store float %i.fd, ptr %i.fe, align 4, !tbaa !53
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %exitcond343.not = icmp eq i64 %indvars.iv.next340, %wide.trip.count342
  br i1 %exitcond343.not, label %._crit_edge.split.us.us, label %bb.l, !llvm.loop !237

._crit_edge.split.us.us:                          ; preds = %bb.l
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1 ; 2 uses
  %exitcond348.not = icmp eq i64 %indvars.iv.next345, %wide.trip.count347
  br i1 %exitcond348.not, label %._crit_edge302.split, label %.preheader291.us, !llvm.loop !238

.lr.ph298:                                        ; preds = %.lr.ph298.preheader439, %.lr.ph298
  %indvars.iv324 = phi i64 [ %indvars.iv.next325, %.lr.ph298 ], [ %indvars.iv324.ph, %.lr.ph298.preheader439 ] ; 3 uses
  %i.ff = trunc nuw nsw i64 %indvars.iv324 to i32
  %i.fg = uitofp nneg i32 %i.ff to float
  %i.fh = fsub float %i.fg, %i.dl                 ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv324
  %i.fj = fmul nnan float %i.fh, %i.fh
  store float %i.fj, ptr %i.fi, align 4, !tbaa !53
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %.preheader292, label %.lr.ph298, !llvm.loop !239

.preheader291:                                    ; preds = %.preheader291.lr.ph.split, %._crit_edge.split
  %indvars.iv334 = phi i64 [ %indvars.iv.next335, %._crit_edge.split ], [ 0, %.preheader291.lr.ph.split ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv334
  br label %bb.m

bb.m:                                             ; preds = %.preheader291, %bb.m
  %indvars.iv329 = phi i64 [ 0, %.preheader291 ], [ %indvars.iv.next330, %bb.m ] ; 3 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !53
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv329
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !53
  %i.fo = fadd float %i.fl, %i.fn
  %i.fp = fneg float %i.fo
  %i.fq = fmul float %i.cq, %i.fp
  %i.fr = call noundef float @expf(float noundef %i.fq) #23
  %i.fs = load i64, ptr %i.es, align 8
  %i.ft = mul i64 %i.fs, %indvars.iv334
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ft
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv329
  store float %i.fr, ptr %i.fu, align 4, !tbaa !53
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1 ; 2 uses
  %exitcond333.not = icmp eq i64 %indvars.iv.next330, %wide.trip.count342
  br i1 %exitcond333.not, label %._crit_edge.split, label %bb.m, !llvm.loop !237

._crit_edge.split:                                ; preds = %bb.m
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %exitcond338.not = icmp eq i64 %indvars.iv.next335, %wide.trip.count347
  br i1 %exitcond338.not, label %._crit_edge302.split, label %.preheader291, !llvm.loop !238

._crit_edge302.split:                             ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader293, %.preheader293.thread, %.preheader292
  %i.fv = phi i1 [ false, %.preheader293 ], [ false, %.preheader293.thread ], [ true, %.preheader292 ], [ true, %._crit_edge.split.us.us ], [ true, %._crit_edge.split ]
  %.not.i.i269 = icmp eq ptr %i.dg, %i.da
  br i1 %.not.i.i269, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit271, label %bb.n

bb.n:                                             ; preds = %._crit_edge302.split
  call void @_ZdaPv(ptr noundef nonnull %i.dg) #25
  %.pre371 = load ptr, ptr %11, align 8, !tbaa !95
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit271

_ZN2cv10AutoBufferIfLm264EED2Ev.exit271:          ; preds = %._crit_edge302.split, %bb.n
  %i.fw = phi ptr [ %i.dh, %._crit_edge302.split ], [ %.pre371, %bb.n ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.not.i.i272 = icmp eq ptr %i.fw, %i.cs
  %i.fx = icmp eq ptr %i.fw, null
  %or.cond.i273 = or i1 %.not.i.i272, %i.fx
  br i1 %or.cond.i273, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274, label %bb.o

bb.o:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit271
  call void @_ZdaPv(ptr noundef nonnull %i.fw) #25
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274

_ZN2cv10AutoBufferIfLm264EED2Ev.exit274:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit271, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.fz = load i32, ptr %i.am, align 8, !tbaa !247
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !248
  %i.gc = mul nsw i32 %i.gb, %i.fz
  %i.gd = sext i32 %i.gc to i64                   ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !128 ; 2 uses
  %i.gg = load ptr, ptr %i.fy, align 8, !tbaa !122 ; 2 uses
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = sdiv exact i64 %i.gj, 12                ; 3 uses
  %i.gl = icmp ult i64 %i.gk, %i.gd
  br i1 %i.gl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274
  %i.gm = sub nuw nsw i64 %i.gd, %i.gk
  invoke void @_ZNSt6vectorIN2cv8HOGCache9BlockDataESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, i64 noundef %i.gm)
          to label %_ZNSt6vectorIN2cv8HOGCache9BlockDataESaIS2_EE6resizeEm.exit unwind label %bb.y

bb.q:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274
  %i.gn = icmp ugt i64 %i.gk, %i.gd
  br i1 %i.gn, label %bb.r, label %_ZNSt6vectorIN2cv8HOGCache9BlockDataESaIS2_EE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.go = getelementptr inbounds nuw [12 x i8], ptr %i.gg, i64 %i.gd ; 2 uses
  %.not.i.i275 = icmp eq ptr %i.gf, %i.go
  br i1 %.not.i.i275, label %_ZNSt6vectorIN2cv8HOGCache9BlockDataESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv8HOGCache9BlockDataES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8HOGCache9BlockDataES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.r
  store ptr %i.go, ptr %i.ge, align 8, !tbaa !128
  br label %_ZNSt6vectorIN2cv8HOGCache9BlockDataESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv8HOGCache9BlockDataESaIS2_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN2cv8HOGCache9BlockDataES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.r, %bb.q, %bb.p
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.gq = mul nsw i32 %i.ac, 3
  %i.gr = sext i32 %i.gq to i64                   ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !129 ; 2 uses
  %i.gu = load ptr, ptr %i.gp, align 8, !tbaa !124 ; 2 uses
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = sdiv exact i64 %i.gx, 56                ; 3 uses
  %i.gz = icmp ult i64 %i.gy, %i.gr
  br i1 %i.gz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv8HOGCache9BlockDataESaIS2_EE6resizeEm.exit
  %i.ha = sub nuw nsw i64 %i.gr, %i.gy
  invoke void @_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, i64 noundef %i.ha)
          to label %_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE6resizeEm.exit unwind label %bb.y

bb.t:                                             ; preds = %_ZNSt6vectorIN2cv8HOGCache9BlockDataESaIS2_EE6resizeEm.exit
  %i.hb = icmp ugt i64 %i.gy, %i.gr
  br i1 %i.hb, label %bb.u, label %_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE6resizeEm.exit

bb.u:                                             ; preds = %bb.t
  %i.hc = getelementptr inbounds nuw [56 x i8], ptr %i.gu, i64 %i.gr ; 2 uses
  %.not.i.i277 = icmp eq ptr %i.gt, %i.hc
  br i1 %.not.i.i277, label %_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv8HOGCache7PixDataES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8HOGCache7PixDataES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.u
  store ptr %i.hc, ptr %i.gs, align 8, !tbaa !129
  br label %_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN2cv8HOGCache7PixDataES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.u, %bb.t, %bb.s
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 7 uses
  store i32 0, ptr %i.hd, align 4, !tbaa !130
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 10 uses
  store i32 0, ptr %i.he, align 8, !tbaa !131
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 7 uses
  store i32 0, ptr %i.hf, align 4, !tbaa !132
  br i1 %i.fv, label %.preheader290.lr.ph, label %._crit_edge308.split

.preheader290.lr.ph:                              ; preds = %_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE6resizeEm.exit
  %i.hg = sitofp i32 %.sroa.0181.0.copyload to float
  %i.hh = sitofp i32 %.sroa.6.0.copyload to float
  %i.hi = shl nsw i32 %i.ac, 1
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.hm = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %10, i64 128
  br i1 %i.dm, label %.preheader290.preheader, label %._crit_edge308.split

.preheader290.preheader:                          ; preds = %.preheader290.lr.ph
  %wide.trip.count357 = zext nneg i32 %.sroa.0188.0.copyload to i64
  %wide.trip.count352 = zext nneg i32 %.sroa.14.0.copyload to i64
  br label %.preheader290

.preheader290:                                    ; preds = %.preheader290.preheader, %._crit_edge
  %indvars.iv354 = phi i64 [ 0, %.preheader290.preheader ], [ %indvars.iv.next355, %._crit_edge ] ; 3 uses
  %i.hp = trunc nsw i64 %indvars.iv354 to i32     ; 2 uses
  %i.hq = uitofp nneg i32 %i.hp to float
  %i.hr = fadd float %i.hq, 5.000000e-01
  %i.hs = fdiv float %i.hr, %i.hg
  %i.ht = fadd float %i.hs, -5.000000e-01         ; 2 uses
  %i.hu = call float @llvm.floor.f32(float %i.ht)
  %i.hv = fptosi float %i.hu to i32               ; 7 uses
  %i.hw = add nsw i32 %i.hv, 1                    ; 5 uses
  %i.hx = sitofp i32 %i.hv to float
  %i.hy = fsub float %i.ht, %i.hx                 ; 4 uses
  %i.hz = fsub float 1.000000e+00, %i.hy          ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.hn, i64 %indvars.iv354
  %i.ia = insertelement <2 x i32> poison, i32 %i.hp, i64 0
  %i.ib = shufflevector <2 x i32> %i.ia, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ic = insertelement <4 x float> poison, float %i.hz, i64 0
  %i.id = insertelement <4 x float> %i.ic, float %i.hy, i64 1
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.if = insertelement <2 x float> poison, float %i.hz, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %i.hy, i64 1
  br label %bb.v

bb.v:                                             ; preds = %.preheader290, %bb.ad
  %indvars.iv349 = phi i64 [ 0, %.preheader290 ], [ %indvars.iv.next350, %bb.ad ] ; 3 uses
  %i.ih = trunc nuw nsw i64 %indvars.iv349 to i32 ; 3 uses
  %i.ii = uitofp nneg i32 %i.ih to float
  %i.ij = fadd float %i.ii, 5.000000e-01
  %i.ik = fdiv float %i.ij, %i.hh
  %i.il = fadd float %i.ik, -5.000000e-01         ; 2 uses
  %i.im = call float @llvm.floor.f32(float %i.il)
  %i.in = fptosi float %i.im to i32               ; 9 uses
  %i.io = add nsw i32 %i.in, 1                    ; 7 uses
  %i.ip = sitofp i32 %i.in to float
  %i.iq = fsub float %i.il, %i.ip                 ; 8 uses
  %i.ir = load i32, ptr %i.ap, align 8, !tbaa !249 ; 2 uses
  %i.is = icmp ugt i32 %i.ir, %i.hv               ; 3 uses
  %i.it = icmp ult i32 %i.hw, %i.ir
  %or.cond = select i1 %i.is, i1 %i.it, i1 false
  br i1 %or.cond, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.iu = load i32, ptr %i.aq, align 4, !tbaa !250 ; 4 uses
  %i.iv = icmp ugt i32 %i.iu, %i.in               ; 3 uses
  %i.iw = icmp ult i32 %i.io, %i.iu
  %or.cond262 = select i1 %i.iv, i1 %i.iw, i1 false
  br i1 %or.cond262, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ix = load i32, ptr %i.hd, align 4, !tbaa !130 ; 2 uses
  %i.iy = add nsw i32 %i.ix, 1
end_hunk_0

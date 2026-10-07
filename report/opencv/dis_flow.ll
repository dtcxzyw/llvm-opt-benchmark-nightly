Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dis_flow?download=true
inline.NumInlined: 856
inline.NumDeleted: 288
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv18DISOpticalFlowImpl25precomputeStructureTensorERNS_3MatES2_S2_S2_S2_S2_S2_:bb.a
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !112
  %i.ct = sext i16 %i.cs to i32                   ; 3 uses
  %i.cu = sub nsw i64 %indvars.iv353, %i.at       ; 3 uses
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !112
  %i.cx = sext i16 %i.cw to i32                   ; 3 uses
  %add = add nsw i32 %i.cx, %i.ct
  %sub = sub nsw i32 %i.ct, %i.cx                 ; 2 uses
  %i.cy = mul nsw i32 %add, %sub
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %indvars.iv353
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !112
  %i.db = sext i16 %i.da to i32                   ; 3 uses
  %i.dc = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.cu
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !112
  %i.de = sext i16 %i.dd to i32                   ; 3 uses
  %add257 = add nsw i32 %i.de, %i.db
  %sub258 = sub nsw i32 %i.db, %i.de              ; 2 uses
  %i.df = mul nsw i32 %add257, %sub258
  %i.dg = mul nsw i32 %i.db, %i.ct
  %i.dh = mul nsw i32 %i.de, %i.cx
  %i.di = sub nsw i32 %i.dg, %i.dh
  %i.dj = insertelement <4 x i32> poison, i32 %sub, i64 0
  %i.dk = insertelement <4 x i32> %i.dj, i32 %i.di, i64 1
  %i.dl = insertelement <4 x i32> %i.dk, i32 %i.df, i64 2
  %i.dm = insertelement <4 x i32> %i.dl, i32 %i.cy, i64 3
  %i.dn = sitofp <4 x i32> %i.dm to <4 x float>
  %i.do = fadd <4 x float> %i.cq, %i.dn           ; 5 uses
  %i.dp = sitofp i32 %sub258 to float
  %i.dq = fadd float %.1235319, %i.dp             ; 2 uses
  %i.dr = trunc i64 %i.cu to i32
  %i.ds = add i32 %i.dr, 1
  %i.dt = srem i32 %i.ds, %i.bu
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dv = sext i32 %.0231320 to i64
  %i.dw = add nsw i64 %i.bk, %i.dv                ; 5 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.dw
  %i.dy = extractelement <4 x float> %i.do, i64 3
  store float %i.dy, ptr %i.dx, align 4, !tbaa !55
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.dw
  %i.ea = extractelement <4 x float> %i.do, i64 2
  store float %i.ea, ptr %i.dz, align 4, !tbaa !55
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.dw
  %i.ec = extractelement <4 x float> %i.do, i64 1
  store float %i.ec, ptr %i.eb, align 4, !tbaa !55
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.dw
  %i.ee = extractelement <4 x float> %i.do, i64 0
  store float %i.ee, ptr %i.ed, align 4, !tbaa !55
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dw
  store float %i.dq, ptr %i.ef, align 4, !tbaa !55
  %i.eg = add nsw i32 %.0231320, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1232 = phi i32 [ %i.eg, %bb.e ], [ %.0231320, %bb.d ]
  %indvars.iv.next354 = add nsw i64 %indvars.iv353, 1 ; 2 uses
  %exitcond357.not = icmp eq i64 %indvars.iv.next354, %wide.trip.count356
  br i1 %exitcond357.not, label %._crit_edge324, label %bb.d, !llvm.loop !156

_ZN2cv10AutoBufferIfLm264EEC2Em.exit:             ; preds = %bb.b
  store ptr %i.be, ptr %9, align 8, !tbaa !196
  %.pre396 = load i32, ptr %i.aw, align 4, !tbaa !107 ; 4 uses
  %.pre407 = sext i32 %.pre396 to i64             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.eh, ptr %10, align 8, !tbaa !196
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.not.i.i259 = icmp ugt i32 %.pre396, 264
  store i64 %.pre407, ptr %i.ei, align 8, !tbaa !197
  br i1 %.not.i.i259, label %bb.g, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit261.thread

bb.g:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit
  %i.ej = icmp slt i32 %.pre396, 0
  %i.ek = shl nuw nsw i64 %.pre407, 2
  %i.el = select i1 %i.ej, i64 -1, i64 %i.ek
  %i.em = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.el) #25
          to label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit261 unwind label %bb.l

_ZN2cv10AutoBufferIfLm264EEC2Em.exit261.thread:   ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.thread
  %.ph = phi ptr [ %i.az, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.thread ], [ %i.eh, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit ]
  %.pre-phi410.ph = phi i64 [ %.pre-phi, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.thread ], [ %.pre407, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit ] ; 2 uses
  %.ph442 = phi i32 [ %i.av, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.thread ], [ %.pre396, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.en, ptr %11, align 8, !tbaa !196
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.pre-phi410.ph, ptr %i.eo, align 8, !tbaa !197
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit264.thread

_ZN2cv10AutoBufferIfLm264EEC2Em.exit261:          ; preds = %bb.g
  store ptr %i.em, ptr %10, align 8, !tbaa !196
  %.pre397 = load i32, ptr %i.aw, align 4, !tbaa !107 ; 4 uses
  %.pre409 = sext i32 %.pre397 to i64             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.ep = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.ep, ptr %11, align 8, !tbaa !196
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.not.i.i262 = icmp ugt i32 %.pre397, 264
  store i64 %.pre409, ptr %i.eq, align 8, !tbaa !197
  br i1 %.not.i.i262, label %bb.h, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit264.thread

bb.h:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit261
  %i.er = icmp slt i32 %.pre397, 0
  %i.es = shl nuw nsw i64 %.pre409, 2
  %i.et = select i1 %i.er, i64 -1, i64 %i.es
  %i.eu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.et) #25
          to label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit264 unwind label %bb.m

_ZN2cv10AutoBufferIfLm264EEC2Em.exit264.thread:   ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit261, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit261.thread
  %.ph445 = phi ptr [ %i.en, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit261.thread ], [ %i.ep, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit261 ]
  %.ph446 = phi ptr [ %.ph, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit261.thread ], [ %i.eh, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit261 ]
  %.pre-phi412.ph = phi i64 [ %.pre-phi410.ph, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit261.thread ], [ %.pre409, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit261 ] ; 2 uses
  %.ph447 = phi i32 [ %.ph442, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit261.thread ], [ %.pre397, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit261 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.ev = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.ev, ptr %12, align 8, !tbaa !196
  %i.ew = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %.pre-phi412.ph, ptr %i.ew, align 8, !tbaa !197
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267.thread

_ZN2cv10AutoBufferIfLm264EEC2Em.exit264:          ; preds = %bb.h
  store ptr %i.eu, ptr %11, align 8, !tbaa !196
  %.pre398 = load i32, ptr %i.aw, align 4, !tbaa !107 ; 4 uses
  %.pre411 = sext i32 %.pre398 to i64             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.ex = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.ex, ptr %12, align 8, !tbaa !196
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i.i265 = icmp ugt i32 %.pre398, 264
  store i64 %.pre411, ptr %i.ey, align 8, !tbaa !197
  br i1 %.not.i.i265, label %bb.i, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267.thread

bb.i:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit264
  %i.ez = icmp slt i32 %.pre398, 0
  %i.fa = shl nuw nsw i64 %.pre411, 2
  %i.fb = select i1 %i.ez, i64 -1, i64 %i.fa
  %i.fc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fb) #25
          to label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267 unwind label %bb.n

_ZN2cv10AutoBufferIfLm264EEC2Em.exit267.thread:   ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit264, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit264.thread
  %.ph450 = phi ptr [ %i.ev, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit264.thread ], [ %i.ex, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit264 ]
  %.ph451 = phi ptr [ %.ph446, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit264.thread ], [ %i.eh, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit264 ]
  %.ph452 = phi ptr [ %.ph445, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit264.thread ], [ %i.ep, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit264 ]
  %.pre-phi414.ph = phi i64 [ %.pre-phi412.ph, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit264.thread ], [ %.pre411, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit264 ]
  %.ph453 = phi i32 [ %.ph447, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit264.thread ], [ %.pre398, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit264 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.fd, ptr %13, align 8, !tbaa !196
  %i.fe = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %.pre-phi414.ph, ptr %i.fe, align 8, !tbaa !197
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit270

_ZN2cv10AutoBufferIfLm264EEC2Em.exit267:          ; preds = %bb.i
  store ptr %i.fc, ptr %12, align 8, !tbaa !196
  %.pre399 = load i32, ptr %i.aw, align 4, !tbaa !107 ; 4 uses
  %.pre413 = sext i32 %.pre399 to i64             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.ff, ptr %13, align 8, !tbaa !196
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.not.i.i268 = icmp ugt i32 %.pre399, 264
  store i64 %.pre413, ptr %i.fg, align 8, !tbaa !197
  br i1 %.not.i.i268, label %bb.j, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit270

bb.j:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267
  %i.fh = icmp slt i32 %.pre399, 0
  %i.fi = shl nuw nsw i64 %.pre413, 2
  %i.fj = select i1 %i.fh, i64 -1, i64 %i.fi
  %i.fk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fj) #25
          to label %.noexc269 unwind label %bb.o  ; 2 uses

.noexc269:                                        ; preds = %bb.j
  store ptr %i.fk, ptr %13, align 8, !tbaa !196
  %.pre400 = load i32, ptr %i.aw, align 4, !tbaa !107
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit270

_ZN2cv10AutoBufferIfLm264EEC2Em.exit270:          ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267.thread, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267, %.noexc269
  %i.fl = phi ptr [ %i.ff, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267 ], [ %i.ff, %.noexc269 ], [ %i.fd, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267.thread ]
  %i.fm = phi ptr [ %i.ep, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267 ], [ %i.ep, %.noexc269 ], [ %.ph452, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267.thread ]
  %i.fn = phi ptr [ %i.eh, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267 ], [ %i.eh, %.noexc269 ], [ %.ph451, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267.thread ]
  %i.fo = phi ptr [ %i.ex, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267 ], [ %i.ex, %.noexc269 ], [ %.ph450, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267.thread ]
  %i.fp = phi ptr [ %i.ff, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267 ], [ %i.fk, %.noexc269 ], [ %i.fd, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267.thread ] ; 2 uses
  %i.fq = phi i32 [ %.pre399, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267 ], [ %.pre400, %.noexc269 ], [ %.ph453, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit267.thread ] ; 12 uses
  %i.fr = icmp sgt i32 %i.fq, 0                   ; 2 uses
  br i1 %i.fr, label %.preheader300, label %.preheader300.thread

.preheader300:                                    ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit270
  %i.fs = load ptr, ptr %9, align 8, !tbaa !196
  %i.ft = load ptr, ptr %10, align 8, !tbaa !196
  %i.fu = load ptr, ptr %11, align 8, !tbaa !196
  %i.fv = load ptr, ptr %12, align 8, !tbaa !196
  %i.fw = zext nneg i32 %i.fq to i64
  %i.fx = shl nuw nsw i64 %i.fw, 2                ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.fs, i8 0, i64 %i.fx, i1 false), !tbaa !55
  call void @llvm.memset.p0.i64(ptr align 4 %i.ft, i8 0, i64 %i.fx, i1 false), !tbaa !55
  call void @llvm.memset.p0.i64(ptr align 4 %i.fu, i8 0, i64 %i.fx, i1 false), !tbaa !55
  call void @llvm.memset.p0.i64(ptr align 4 %i.fv, i8 0, i64 %i.fx, i1 false), !tbaa !55
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fp, i8 0, i64 %i.fx, i1 false), !tbaa !55
  %.pre402.pre.pre403.pre = load ptr, ptr %13, align 8 ; 13 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !109 ; 4 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.preheader299.preheader, label %.preheader298

.preheader300.thread:                             ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit270
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !109
  br label %.preheader297

.preheader299.preheader:                          ; preds = %.preheader300
  %i.gd = load ptr, ptr %9, align 8               ; 12 uses
  %i.ge = load ptr, ptr %10, align 8              ; 12 uses
  %i.gf = load ptr, ptr %11, align 8              ; 12 uses
  %i.gg = load ptr, ptr %12, align 8              ; 12 uses
  %i.gh = zext nneg i32 %i.fq to i64              ; 6 uses
  %wide.trip.count374 = zext nneg i32 %i.fz to i64 ; 2 uses
  %i.gi = shl nuw nsw i64 %i.gh, 2                ; 5 uses
  %scevgep = getelementptr i8, ptr %i.gd, i64 %i.gi ; 9 uses
  %scevgep474 = getelementptr i8, ptr %i.ge, i64 %i.gi ; 9 uses
  %scevgep475 = getelementptr i8, ptr %i.gf, i64 %i.gi ; 9 uses
  %scevgep476 = getelementptr i8, ptr %i.gg, i64 %i.gi ; 9 uses
  %scevgep477 = getelementptr i8, ptr %.pre402.pre.pre403.pre, i64 %i.gi ; 9 uses
  %i.gj = mul nuw nsw i64 %i.gh, %wide.trip.count374
  %i.gk = shl nuw i64 %i.gj, 2                    ; 5 uses
  %scevgep478 = getelementptr i8, ptr %i.q, i64 %i.gk ; 5 uses
  %scevgep479 = getelementptr i8, ptr %i.s, i64 %i.gk ; 5 uses
  %scevgep480 = getelementptr i8, ptr %i.u, i64 %i.gk ; 5 uses
  %scevgep481 = getelementptr i8, ptr %i.w, i64 %i.gk ; 5 uses
  %scevgep482 = getelementptr i8, ptr %i.y, i64 %i.gk ; 5 uses
  %min.iters.check = icmp ult i32 %i.fq, 28
  %bound0 = icmp ult ptr %i.gd, %scevgep474
  %bound1 = icmp ult ptr %i.ge, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0483 = icmp ult ptr %i.gd, %scevgep475
  %bound1484 = icmp ult ptr %i.gf, %scevgep
  %found.conflict485 = and i1 %bound0483, %bound1484
  %conflict.rdx = or i1 %found.conflict, %found.conflict485
  %bound0486 = icmp ult ptr %i.gd, %scevgep476
  %bound1487 = icmp ult ptr %i.gg, %scevgep
  %found.conflict488 = and i1 %bound0486, %bound1487
  %conflict.rdx489 = or i1 %conflict.rdx, %found.conflict488
  %bound0490 = icmp ult ptr %i.gd, %scevgep477
  %bound1491 = icmp ult ptr %.pre402.pre.pre403.pre, %scevgep
  %found.conflict492 = and i1 %bound0490, %bound1491
  %conflict.rdx493 = or i1 %conflict.rdx489, %found.conflict492
  %bound0494 = icmp ult ptr %i.gd, %scevgep478
  %bound1495 = icmp ult ptr %i.q, %scevgep
  %found.conflict496 = and i1 %bound0494, %bound1495
  %conflict.rdx497 = or i1 %conflict.rdx493, %found.conflict496
  %bound0498 = icmp ult ptr %i.gd, %scevgep479
  %bound1499 = icmp ult ptr %i.s, %scevgep
  %found.conflict500 = and i1 %bound0498, %bound1499
  %conflict.rdx501 = or i1 %conflict.rdx497, %found.conflict500
  %bound0502 = icmp ult ptr %i.gd, %scevgep480
  %bound1503 = icmp ult ptr %i.u, %scevgep
  %found.conflict504 = and i1 %bound0502, %bound1503
  %conflict.rdx505 = or i1 %conflict.rdx501, %found.conflict504
  %bound0506 = icmp ult ptr %i.gd, %scevgep481
  %bound1507 = icmp ult ptr %i.w, %scevgep
  %found.conflict508 = and i1 %bound0506, %bound1507
  %conflict.rdx509 = or i1 %conflict.rdx505, %found.conflict508
  %bound0510 = icmp ult ptr %i.gd, %scevgep482
  %bound1511 = icmp ult ptr %i.y, %scevgep
  %found.conflict512 = and i1 %bound0510, %bound1511
  %conflict.rdx513 = or i1 %conflict.rdx509, %found.conflict512
  %bound0514 = icmp ult ptr %i.ge, %scevgep475
  %bound1515 = icmp ult ptr %i.gf, %scevgep474
  %found.conflict516 = and i1 %bound0514, %bound1515
  %conflict.rdx517 = or i1 %conflict.rdx513, %found.conflict516
  %bound0518 = icmp ult ptr %i.ge, %scevgep476
  %bound1519 = icmp ult ptr %i.gg, %scevgep474
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx521 = or i1 %conflict.rdx517, %found.conflict520
  %bound0522 = icmp ult ptr %i.ge, %scevgep477
  %bound1523 = icmp ult ptr %.pre402.pre.pre403.pre, %scevgep474
  %found.conflict524 = and i1 %bound0522, %bound1523
  %conflict.rdx525 = or i1 %conflict.rdx521, %found.conflict524
  %bound0526 = icmp ult ptr %i.ge, %scevgep478
  %bound1527 = icmp ult ptr %i.q, %scevgep474
  %found.conflict528 = and i1 %bound0526, %bound1527
  %conflict.rdx529 = or i1 %conflict.rdx525, %found.conflict528
  %bound0530 = icmp ult ptr %i.ge, %scevgep479
  %bound1531 = icmp ult ptr %i.s, %scevgep474
  %found.conflict532 = and i1 %bound0530, %bound1531
  %conflict.rdx533 = or i1 %conflict.rdx529, %found.conflict532
  %bound0534 = icmp ult ptr %i.ge, %scevgep480
  %bound1535 = icmp ult ptr %i.u, %scevgep474
  %found.conflict536 = and i1 %bound0534, %bound1535
  %conflict.rdx537 = or i1 %conflict.rdx533, %found.conflict536
  %bound0538 = icmp ult ptr %i.ge, %scevgep481
  %bound1539 = icmp ult ptr %i.w, %scevgep474
  %found.conflict540 = and i1 %bound0538, %bound1539
  %conflict.rdx541 = or i1 %conflict.rdx537, %found.conflict540
  %bound0542 = icmp ult ptr %i.ge, %scevgep482
  %bound1543 = icmp ult ptr %i.y, %scevgep474
  %found.conflict544 = and i1 %bound0542, %bound1543
  %conflict.rdx545 = or i1 %conflict.rdx541, %found.conflict544
  %bound0546 = icmp ult ptr %i.gf, %scevgep476
  %bound1547 = icmp ult ptr %i.gg, %scevgep475
  %found.conflict548 = and i1 %bound0546, %bound1547
  %conflict.rdx549 = or i1 %conflict.rdx545, %found.conflict548
  %min.iters.check.a = icmp ult ptr %i.gf, %scevgep477
  %bound1551 = icmp ult ptr %.pre402.pre.pre403.pre, %scevgep475
  %found.conflict552 = and i1 %min.iters.check.a, %bound1551
  %conflict.rdx553 = or i1 %conflict.rdx549, %found.conflict552
  %bound0510.a = icmp ult ptr %i.gf, %scevgep478
  %bound1511.a = icmp ult ptr %i.q, %scevgep475
  %found.conflict512.a = and i1 %bound0510.a, %bound1511.a
  %conflict.rdx557 = or i1 %conflict.rdx553, %found.conflict512.a
  %bound0558 = icmp ult ptr %i.gf, %scevgep479
  %bound1559 = icmp ult ptr %i.s, %scevgep475
  %found.conflict560 = and i1 %bound0558, %bound1559
  %conflict.rdx561 = or i1 %conflict.rdx557, %found.conflict560
  %bound0562 = icmp ult ptr %i.gf, %scevgep480
  %bound1563 = icmp ult ptr %i.u, %scevgep475
  %found.conflict564 = and i1 %bound0562, %bound1563
  %conflict.rdx565 = or i1 %conflict.rdx561, %found.conflict564
  %bound0562.a = icmp ult ptr %i.gf, %scevgep481
  %bound1563.a = icmp ult ptr %i.w, %scevgep475
  %found.conflict564.a = and i1 %bound0562.a, %bound1563.a
  %conflict.rdx569 = or i1 %conflict.rdx565, %found.conflict564.a
  %bound0566 = icmp ult ptr %i.gf, %scevgep482
  %bound1567 = icmp ult ptr %i.y, %scevgep475
  %found.conflict568 = and i1 %bound0566, %bound1567
  %conflict.rdx573 = or i1 %conflict.rdx569, %found.conflict568
  %bound0570 = icmp ult ptr %i.gg, %scevgep477
  %bound1571 = icmp ult ptr %.pre402.pre.pre403.pre, %scevgep476
  %found.conflict572 = and i1 %bound0570, %bound1571
  %conflict.rdx577 = or i1 %conflict.rdx573, %found.conflict572
  %bound0578 = icmp ult ptr %i.gg, %scevgep478
  %bound1579 = icmp ult ptr %i.q, %scevgep476
  %found.conflict580 = and i1 %bound0578, %bound1579
  %conflict.rdx581 = or i1 %conflict.rdx577, %found.conflict580
  %bound0590.a = icmp ult ptr %i.gg, %scevgep479
  %bound1591.a = icmp ult ptr %i.s, %scevgep476
  %found.conflict592.a = and i1 %bound0590.a, %bound1591.a
  %conflict.rdx585 = or i1 %conflict.rdx581, %found.conflict592.a
  %bound0594.a = icmp ult ptr %i.gg, %scevgep480
  %bound1595.a = icmp ult ptr %i.u, %scevgep476
  %found.conflict596.a = and i1 %bound0594.a, %bound1595.a
  %conflict.rdx589 = or i1 %conflict.rdx585, %found.conflict596.a
  %bound0590 = icmp ult ptr %i.gg, %scevgep481
  %bound1591 = icmp ult ptr %i.w, %scevgep476
  %found.conflict592 = and i1 %bound0590, %bound1591
  %conflict.rdx593 = or i1 %conflict.rdx589, %found.conflict592
  %bound0614.a = icmp ult ptr %i.gg, %scevgep482
  %bound1615.a = icmp ult ptr %i.y, %scevgep476
  %found.conflict616.a = and i1 %bound0614.a, %bound1615.a
  %conflict.rdx597 = or i1 %conflict.rdx593, %found.conflict616.a
  %bound0598 = icmp ult ptr %.pre402.pre.pre403.pre, %scevgep478
  %bound1599 = icmp ult ptr %i.q, %scevgep477
  %found.conflict600 = and i1 %bound0598, %bound1599
  %conflict.rdx601 = or i1 %conflict.rdx597, %found.conflict600
  %bound0602 = icmp ult ptr %.pre402.pre.pre403.pre, %scevgep479
  %bound1603 = icmp ult ptr %i.s, %scevgep477
  %found.conflict604 = and i1 %bound0602, %bound1603
  %conflict.rdx605 = or i1 %conflict.rdx601, %found.conflict604
  %bound0606 = icmp ult ptr %.pre402.pre.pre403.pre, %scevgep480
  %bound1607 = icmp ult ptr %i.u, %scevgep477
  %found.conflict608 = and i1 %bound0606, %bound1607
  %op.rdx1188 = or i1 %conflict.rdx605, %found.conflict608
  %bound0610 = icmp ult ptr %.pre402.pre.pre403.pre, %scevgep481
  %bound1611 = icmp ult ptr %i.w, %scevgep477
  %found.conflict612 = and i1 %bound0610, %bound1611
  %op.rdx1190 = or i1 %op.rdx1188, %found.conflict612
  %bound0614 = icmp ult ptr %.pre402.pre.pre403.pre, %scevgep482
  %bound1615 = icmp ult ptr %i.y, %scevgep477
  %found.conflict616 = and i1 %bound0614, %bound1615
  %op.rdx1194 = or i1 %op.rdx1190, %found.conflict616
  %n.vec = and i64 %i.gh, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.gh
  br label %.preheader299

bb.k:                                             ; preds = %bb.b
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit295

bb.l:                                             ; preds = %bb.g
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit292

bb.m:                                             ; preds = %bb.h
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit289

bb.n:                                             ; preds = %bb.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit

bb.o:                                             ; preds = %bb.j
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.gq = load ptr, ptr %12, align 8, !tbaa !196  ; 3 uses
  %.not.i.i271 = icmp eq ptr %i.gq, %i.ex
  %i.gr = icmp eq ptr %i.gq, null
  %or.cond.i = or i1 %.not.i.i271, %i.gr
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.gq) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit

.preheader299:                                    ; preds = %.preheader299.preheader, %._crit_edge334
  %indvars.iv371 = phi i64 [ 0, %.preheader299.preheader ], [ %indvars.iv.next372, %._crit_edge334 ] ; 2 uses
  %i.gs = mul nuw nsw i64 %indvars.iv371, %i.gh   ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx1194
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader299, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader299 ] ; 7 uses
  %i.gt = add nuw nsw i64 %index, %i.gs           ; 5 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.gt
  %wide.load = load <4 x float>, ptr %i.gu, align 4, !tbaa !55, !alias.scope !198
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %index ; 2 uses
  %wide.load618 = load <4 x float>, ptr %i.gv, align 4, !tbaa !55, !alias.scope !199, !noalias !200
  %i.gw = fadd <4 x float> %wide.load, %wide.load618
  store <4 x float> %i.gw, ptr %i.gv, align 4, !tbaa !55, !alias.scope !199, !noalias !200
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.gt
  %wide.load619 = load <4 x float>, ptr %i.gx, align 4, !tbaa !55, !alias.scope !201
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index ; 2 uses
  %wide.load620 = load <4 x float>, ptr %i.gy, align 4, !tbaa !55, !alias.scope !202, !noalias !203
  %i.gz = fadd <4 x float> %wide.load619, %wide.load620
  store <4 x float> %i.gz, ptr %i.gy, align 4, !tbaa !55, !alias.scope !202, !noalias !203
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.gt
  %wide.load621 = load <4 x float>, ptr %i.ha, align 4, !tbaa !55, !alias.scope !204
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %index ; 2 uses
  %wide.load622 = load <4 x float>, ptr %i.hb, align 4, !tbaa !55, !alias.scope !205, !noalias !206
  %i.hc = fadd <4 x float> %wide.load621, %wide.load622
  store <4 x float> %i.hc, ptr %i.hb, align 4, !tbaa !55, !alias.scope !205, !noalias !206
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.gt
  %wide.load623 = load <4 x float>, ptr %i.hd, align 4, !tbaa !55, !alias.scope !207
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %index ; 2 uses
  %wide.load624 = load <4 x float>, ptr %i.he, align 4, !tbaa !55, !alias.scope !208, !noalias !209
  %i.hf = fadd <4 x float> %wide.load623, %wide.load624
  store <4 x float> %i.hf, ptr %i.he, align 4, !tbaa !55, !alias.scope !208, !noalias !209
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.gt
  %wide.load625 = load <4 x float>, ptr %i.hg, align 4, !tbaa !55, !alias.scope !210
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre.pre403.pre, i64 %index ; 2 uses
  %wide.load626 = load <4 x float>, ptr %i.hh, align 4, !tbaa !55, !alias.scope !211, !noalias !212
  %i.hi = fadd <4 x float> %wide.load625, %wide.load626
  store <4 x float> %i.hi, ptr %i.hh, align 4, !tbaa !55, !alias.scope !211, !noalias !212
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge334, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader299, %middle.block
  %indvars.iv366.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader299 ]
  br label %scalar.ph

.preheader298.loopexit:                           ; preds = %._crit_edge334
  %.pre402.pre.pre = load ptr, ptr %13, align 8
  br label %.preheader298

.preheader298:                                    ; preds = %.preheader298.loopexit, %.preheader300
  %.pre402.pre = phi ptr [ %.pre402.pre.pre, %.preheader298.loopexit ], [ %.pre402.pre.pre403.pre, %.preheader300 ] ; 5 uses
  %i.hk = load ptr, ptr %9, align 8, !tbaa !196   ; 3 uses
  %i.hl = load ptr, ptr %10, align 8, !tbaa !196  ; 3 uses
  %i.hm = load ptr, ptr %11, align 8, !tbaa !196  ; 3 uses
  %i.hn = load ptr, ptr %12, align 8, !tbaa !196  ; 3 uses
  %wide.trip.count379 = zext nneg i32 %i.fq to i64 ; 3 uses
  %min.iters.check698 = icmp ult i32 %i.fq, 116
  br i1 %min.iters.check698, label %scalar.ph697.preheader, label %vector.memcheck627

vector.memcheck627:                               ; preds = %.preheader298
  %.pre402.pre642 = ptrtoaddr ptr %.pre402.pre to i64 ; 5 uses
  %i.ho = ptrtoaddr ptr %i.hn to i64              ; 5 uses
  %i.hp = ptrtoaddr ptr %i.hm to i64              ; 5 uses
  %i.hq = ptrtoaddr ptr %i.hl to i64              ; 5 uses
  %i.hr = ptrtoaddr ptr %i.hk to i64              ; 5 uses
  %i.hs = sub i64 %i.c, %i.f
  %diff.check = icmp ugt i64 %i.hs, -16
  %i.ht = sub i64 %i.c, %i.i
  %diff.check628 = icmp ugt i64 %i.ht, -16
  %conflict.rdx629 = or i1 %diff.check, %diff.check628
  %i.hu = sub i64 %i.c, %i.l
  %diff.check630 = icmp ugt i64 %i.hu, -16
  %conflict.rdx631 = or i1 %conflict.rdx629, %diff.check630
  %i.hv = sub i64 %i.c, %i.o
  %diff.check632 = icmp ugt i64 %i.hv, -16
  %conflict.rdx633 = or i1 %conflict.rdx631, %diff.check632
  %i.hw = sub i64 %i.hr, %i.c
  %diff.check634 = icmp ugt i64 %i.hw, -16
  %conflict.rdx635 = or i1 %conflict.rdx633, %diff.check634
  %i.hx = sub i64 %i.c, %i.hq
  %diff.check636 = icmp ugt i64 %i.hx, -16
  %conflict.rdx637 = or i1 %conflict.rdx635, %diff.check636
  %i.hy = sub i64 %i.c, %i.hp
  %diff.check638 = icmp ugt i64 %i.hy, -16
  %conflict.rdx639 = or i1 %conflict.rdx637, %diff.check638
  %i.hz = sub i64 %i.c, %i.ho
  %diff.check640 = icmp ugt i64 %i.hz, -16
  %conflict.rdx641 = or i1 %conflict.rdx639, %diff.check640
  %i.ia = sub i64 %i.c, %.pre402.pre642
  %diff.check643 = icmp ugt i64 %i.ia, -16
  %conflict.rdx644 = or i1 %conflict.rdx641, %diff.check643
  %i.ib = sub i64 %i.f, %i.i
  %diff.check645 = icmp ugt i64 %i.ib, -16
  %conflict.rdx646 = or i1 %conflict.rdx644, %diff.check645
  %i.ic = sub i64 %i.f, %i.l
  %diff.check647 = icmp ugt i64 %i.ic, -16
  %conflict.rdx648 = or i1 %conflict.rdx646, %diff.check647
  %i.id = sub i64 %i.f, %i.o
  %diff.check649 = icmp ugt i64 %i.id, -16
  %conflict.rdx650 = or i1 %conflict.rdx648, %diff.check649
  %i.ie = sub i64 %i.hr, %i.f
  %diff.check651 = icmp ugt i64 %i.ie, -16
  %conflict.rdx652 = or i1 %conflict.rdx650, %diff.check651
  %i.if = sub i64 %i.hq, %i.f
  %diff.check653 = icmp ugt i64 %i.if, -16
  %conflict.rdx654 = or i1 %conflict.rdx652, %diff.check653
  %i.ig = sub i64 %i.f, %i.hp
  %diff.check655 = icmp ugt i64 %i.ig, -16
  %conflict.rdx656 = or i1 %conflict.rdx654, %diff.check655
  %i.ih = sub i64 %i.f, %i.ho
  %diff.check657 = icmp ugt i64 %i.ih, -16
  %conflict.rdx658 = or i1 %conflict.rdx656, %diff.check657
  %i.ii = sub i64 %i.f, %.pre402.pre642
  %diff.check659 = icmp ugt i64 %i.ii, -16
  %conflict.rdx660 = or i1 %conflict.rdx658, %diff.check659
  %i.ij = sub i64 %i.i, %i.l
  %diff.check661 = icmp ugt i64 %i.ij, -16
  %conflict.rdx662 = or i1 %conflict.rdx660, %diff.check661
  %i.ik = sub i64 %i.i, %i.o
  %diff.check663 = icmp ugt i64 %i.ik, -16
  %conflict.rdx664 = or i1 %conflict.rdx662, %diff.check663
  %i.il = sub i64 %i.hr, %i.i
  %diff.check665 = icmp ugt i64 %i.il, -16
  %conflict.rdx666 = or i1 %conflict.rdx664, %diff.check665
  %i.im = sub i64 %i.hq, %i.i
  %diff.check667 = icmp ugt i64 %i.im, -16
  %conflict.rdx668 = or i1 %conflict.rdx666, %diff.check667
  %i.in = sub i64 %i.hp, %i.i
  %diff.check669 = icmp ugt i64 %i.in, -16
  %conflict.rdx670 = or i1 %conflict.rdx668, %diff.check669
  %i.io = sub i64 %i.i, %i.ho
  %diff.check671 = icmp ugt i64 %i.io, -16
  %conflict.rdx672 = or i1 %conflict.rdx670, %diff.check671
  %i.ip = sub i64 %i.i, %.pre402.pre642
  %diff.check673 = icmp ugt i64 %i.ip, -16
  %conflict.rdx674 = or i1 %conflict.rdx672, %diff.check673
  %i.iq = sub i64 %i.l, %i.o
  %diff.check675 = icmp ugt i64 %i.iq, -16
  %conflict.rdx676 = or i1 %conflict.rdx674, %diff.check675
  %i.ir = sub i64 %i.hr, %i.l
  %diff.check677 = icmp ugt i64 %i.ir, -16
  %conflict.rdx678 = or i1 %conflict.rdx676, %diff.check677
  %i.is = sub i64 %i.hq, %i.l
  %diff.check679 = icmp ugt i64 %i.is, -16
  %conflict.rdx680 = or i1 %conflict.rdx678, %diff.check679
  %i.it = sub i64 %i.hp, %i.l
  %diff.check681 = icmp ugt i64 %i.it, -16
  %conflict.rdx682 = or i1 %conflict.rdx680, %diff.check681
  %i.iu = sub i64 %i.ho, %i.l
  %diff.check683 = icmp ugt i64 %i.iu, -16
  %conflict.rdx684 = or i1 %conflict.rdx682, %diff.check683
  %i.iv = sub i64 %i.l, %.pre402.pre642
  %diff.check685 = icmp ugt i64 %i.iv, -16
  %conflict.rdx686 = or i1 %conflict.rdx684, %diff.check685
  %i.iw = sub i64 %i.hr, %i.o
  %diff.check687 = icmp ugt i64 %i.iw, -16
  %conflict.rdx688 = or i1 %conflict.rdx686, %diff.check687
  %i.ix = sub i64 %i.hq, %i.o
  %diff.check689 = icmp ugt i64 %i.ix, -16
  %conflict.rdx690 = or i1 %conflict.rdx688, %diff.check689
  %i.iy = sub i64 %i.hp, %i.o
  %diff.check691 = icmp ugt i64 %i.iy, -16
  %conflict.rdx692 = or i1 %conflict.rdx690, %diff.check691
  %i.iz = sub i64 %i.ho, %i.o
  %diff.check693 = icmp ugt i64 %i.iz, -16
  %conflict.rdx694 = or i1 %conflict.rdx692, %diff.check693
  %i.ja = sub i64 %.pre402.pre642, %i.o
  %diff.check695 = icmp ugt i64 %i.ja, -16
  %conflict.rdx696 = or i1 %conflict.rdx694, %diff.check695
  br i1 %conflict.rdx696, label %scalar.ph697.preheader, label %vector.ph699

vector.ph699:                                     ; preds = %vector.memcheck627
  %n.vec700 = and i64 %wide.trip.count379, 2147483644 ; 3 uses
  br label %vector.body701

vector.body701:                                   ; preds = %vector.body701, %vector.ph699
  %index702 = phi i64 [ 0, %vector.ph699 ], [ %index.next708, %vector.body701 ] ; 11 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %index702
  %wide.load703 = load <4 x float>, ptr %i.jb, align 4, !tbaa !55
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index702
  store <4 x float> %wide.load703, ptr %i.jc, align 4, !tbaa !55
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %index702
  %wide.load704 = load <4 x float>, ptr %i.jd, align 4, !tbaa !55
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index702
  store <4 x float> %wide.load704, ptr %i.je, align 4, !tbaa !55
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %index702
  %wide.load705 = load <4 x float>, ptr %i.jf, align 4, !tbaa !55
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index702
  store <4 x float> %wide.load705, ptr %i.jg, align 4, !tbaa !55
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %index702
  %wide.load706 = load <4 x float>, ptr %i.jh, align 4, !tbaa !55
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index702
  store <4 x float> %wide.load706, ptr %i.ji, align 4, !tbaa !55
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre, i64 %index702
  %wide.load707 = load <4 x float>, ptr %i.jj, align 4, !tbaa !55
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index702
  store <4 x float> %wide.load707, ptr %i.jk, align 4, !tbaa !55
  %index.next708 = add nuw i64 %index702, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next708, %n.vec700
  br i1 %i.jl, label %middle.block709, label %vector.body701, !llvm.loop !169

middle.block709:                                  ; preds = %vector.body701
  %cmp.n710 = icmp eq i64 %n.vec700, %wide.trip.count379
  br i1 %cmp.n710, label %.preheader297, label %scalar.ph697.preheader

scalar.ph697.preheader:                           ; preds = %vector.memcheck627, %.preheader298, %middle.block709
  %indvars.iv376.ph = phi i64 [ 0, %vector.memcheck627 ], [ 0, %.preheader298 ], [ %n.vec700, %middle.block709 ]
  br label %scalar.ph697

._crit_edge334:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next372, %wide.trip.count374
  br i1 %exitcond375.not, label %.preheader298.loopexit, label %.preheader299, !llvm.loop !170

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv366 = phi i64 [ %indvars.iv.next367, %scalar.ph ], [ %indvars.iv366.ph, %scalar.ph.preheader ] ; 7 uses
  %i.jm = add nuw nsw i64 %indvars.iv366, %i.gs   ; 5 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.jm
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !55
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv366 ; 2 uses
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !55
  %i.jr = fadd float %i.jo, %i.jq
  store float %i.jr, ptr %i.jp, align 4, !tbaa !55
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.jm
  %i.jt = load float, ptr %i.js, align 4, !tbaa !55
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv366 ; 2 uses
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !55
  %i.jw = fadd float %i.jt, %i.jv
  store float %i.jw, ptr %i.ju, align 4, !tbaa !55
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.jm
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !55
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv366 ; 2 uses
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !55
  %i.kb = fadd float %i.jy, %i.ka
  store float %i.kb, ptr %i.jz, align 4, !tbaa !55
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.jm
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !55
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv366 ; 2 uses
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !55
  %i.kg = fadd float %i.kd, %i.kf
  store float %i.kg, ptr %i.ke, align 4, !tbaa !55
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.jm
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !55
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre.pre403.pre, i64 %indvars.iv366 ; 2 uses
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !55
  %i.kl = fadd float %i.ki, %i.kk
  store float %i.kl, ptr %i.kj, align 4, !tbaa !55
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %i.gh
  br i1 %exitcond370.not, label %._crit_edge334, label %scalar.ph, !llvm.loop !171

.preheader297:                                    ; preds = %scalar.ph697, %middle.block709, %.preheader300.thread
  %.pre402.pre461 = phi ptr [ %i.fp, %.preheader300.thread ], [ %.pre402.pre, %middle.block709 ], [ %.pre402.pre, %scalar.ph697 ] ; 23 uses
  %i.km = phi i32 [ %i.gc, %.preheader300.thread ], [ %i.fz, %middle.block709 ], [ %i.fz, %scalar.ph697 ] ; 4 uses
  %i.kn = load i32, ptr %i.z, align 8, !tbaa !106 ; 2 uses
  %i.ko = icmp slt i32 %i.km, %i.kn
  br i1 %i.ko, label %.preheader296.lr.ph, label %._crit_edge347

.preheader296.lr.ph:                              ; preds = %.preheader297
  %.pre402.pre461728 = ptrtoaddr ptr %.pre402.pre461 to i64 ; 5 uses
  %i.kp = load ptr, ptr %9, align 8               ; 20 uses
  %i.kq = load ptr, ptr %10, align 8              ; 20 uses
  %i.kr = load ptr, ptr %11, align 8              ; 20 uses
  %i.ks = ptrtoaddr ptr %i.kp to i64              ; 5 uses
  %i.kt = ptrtoaddr ptr %i.kq to i64              ; 5 uses
  %i.ku = ptrtoaddr ptr %i.kr to i64              ; 5 uses
  %i.kv = load ptr, ptr %12, align 8              ; 20 uses
  %i.kw = ptrtoaddr ptr %i.kv to i64              ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !52 ; 2 uses
  %i.kz = sext i32 %i.km to i64                   ; 4 uses
  %i.la = sext i32 %i.fq to i64                   ; 5 uses
  %wide.trip.count394 = sext i32 %i.kn to i64     ; 3 uses
  %wide.trip.count384 = zext i32 %i.fq to i64     ; 7 uses
  %wide.trip.count389 = zext nneg i32 %i.fq to i64
  %i.lb = sub i64 %i.c, %i.ks
  %i.lc = sub i64 %i.f, %i.ks
  %i.ld = sub i64 %i.f, %i.kt
  %i.le = sub i64 %i.i, %i.ks
  %i.lf = sub i64 %i.i, %i.kt
  %i.lg = sub i64 %i.i, %i.ku
  %i.lh = sub i64 %i.l, %i.ks
  %i.li = sub i64 %i.l, %i.kt
  %i.lj = sub i64 %i.l, %i.ku
  %i.lk = sub i64 %i.l, %i.kw
  %i.ll = sub i64 %i.o, %i.ks
  %i.lm = sub i64 %i.o, %i.kt
  %i.ln = sub i64 %i.o, %i.ku
  %i.lo = sub i64 %i.o, %i.kw
  %i.lp = sub i64 %i.o, %.pre402.pre461728
  %i.lq = shl nuw nsw i64 %wide.trip.count384, 2  ; 6 uses
  %scevgep799 = getelementptr i8, ptr %i.kp, i64 %i.lq ; 14 uses
  %scevgep800 = getelementptr i8, ptr %i.kq, i64 %i.lq ; 14 uses
  %scevgep801 = getelementptr i8, ptr %i.kr, i64 %i.lq ; 14 uses
  %scevgep802 = getelementptr i8, ptr %i.kv, i64 %i.lq ; 14 uses
  %scevgep803 = getelementptr i8, ptr %.pre402.pre461, i64 %i.lq ; 14 uses
  %i.lr = xor i64 %i.kz, -1
  %i.ls = add nsw i64 %i.lr, %wide.trip.count394
  %i.lt = mul i64 %i.ls, %i.la
  %i.lu = add i64 %i.lt, %wide.trip.count384
  %i.lv = shl i64 %i.lu, 2                        ; 5 uses
  %scevgep804 = getelementptr i8, ptr %i.q, i64 %i.lv ; 5 uses
  %i.lw = mul nsw i64 %i.la, %i.kz
  %i.lx = shl i64 %i.lw, 2                        ; 5 uses
  %scevgep805 = getelementptr i8, ptr %i.q, i64 %i.lx ; 5 uses
  %i.ly = shl nsw i64 %wide.trip.count394, 2
  %i.lz = add nsw i64 %i.ly, -4
  %i.ma = mul i64 %i.lz, %i.la
  %i.mb = add i64 %i.ma, %i.lq                    ; 5 uses
  %scevgep806 = getelementptr i8, ptr %i.q, i64 %i.mb ; 5 uses
  %scevgep807 = getelementptr i8, ptr %i.s, i64 %i.lv ; 5 uses
  %scevgep808 = getelementptr i8, ptr %i.s, i64 %i.lx ; 5 uses
  %scevgep809 = getelementptr i8, ptr %i.s, i64 %i.mb ; 5 uses
  %scevgep806.a = getelementptr i8, ptr %i.u, i64 %i.lv ; 5 uses
  %scevgep807.a = getelementptr i8, ptr %i.u, i64 %i.lx ; 5 uses
  %scevgep808.a = getelementptr i8, ptr %i.u, i64 %i.mb ; 5 uses
  %scevgep809.a = getelementptr i8, ptr %i.w, i64 %i.lv ; 5 uses
  %scevgep810 = getelementptr i8, ptr %i.w, i64 %i.lx ; 5 uses
  %scevgep811 = getelementptr i8, ptr %i.w, i64 %i.mb ; 5 uses
  %scevgep812 = getelementptr i8, ptr %i.y, i64 %i.lv ; 5 uses
  %scevgep813 = getelementptr i8, ptr %i.y, i64 %i.lx ; 5 uses
  %scevgep814 = getelementptr i8, ptr %i.y, i64 %i.mb ; 5 uses
  %invariant.op = sub i32 1, %i.km
  %min.iters.check1108 = icmp ult i32 %i.fq, 40
  %bound0819 = icmp ult ptr %i.kp, %scevgep800
  %bound1820 = icmp ult ptr %i.kq, %scevgep799
  %found.conflict821 = and i1 %bound0819, %bound1820
  %bound0822 = icmp ult ptr %i.kp, %scevgep801
  %bound1823 = icmp ult ptr %i.kr, %scevgep799
  %found.conflict824 = and i1 %bound0822, %bound1823
  %conflict.rdx825 = or i1 %found.conflict821, %found.conflict824
  %bound0826 = icmp ult ptr %i.kp, %scevgep802
  %bound1827 = icmp ult ptr %i.kv, %scevgep799
  %found.conflict828 = and i1 %bound0826, %bound1827
  %conflict.rdx829 = or i1 %conflict.rdx825, %found.conflict828
  %bound0830 = icmp ult ptr %i.kp, %scevgep803
  %bound1831 = icmp ult ptr %.pre402.pre461, %scevgep799
  %found.conflict832 = and i1 %bound0830, %bound1831
  %conflict.rdx833 = or i1 %conflict.rdx829, %found.conflict832
  %bound0834 = icmp ult ptr %i.kp, %scevgep804
  %bound1835 = icmp ult ptr %i.q, %scevgep799
  %found.conflict836 = and i1 %bound0834, %bound1835
  %conflict.rdx837 = or i1 %conflict.rdx833, %found.conflict836
  %bound0838 = icmp ult ptr %i.kp, %scevgep806
  %bound1839 = icmp ult ptr %scevgep805, %scevgep799
  %found.conflict840 = and i1 %bound0838, %bound1839
  %conflict.rdx842 = or i1 %conflict.rdx837, %found.conflict840
  %bound0843 = icmp ult ptr %i.kp, %scevgep807
  %bound1844 = icmp ult ptr %i.s, %scevgep799
  %found.conflict845 = and i1 %bound0843, %bound1844
  %conflict.rdx847 = or i1 %conflict.rdx842, %found.conflict845
  %bound0848 = icmp ult ptr %i.kp, %scevgep809
  %bound1849 = icmp ult ptr %scevgep808, %scevgep799
  %found.conflict850 = and i1 %bound0848, %bound1849
  %conflict.rdx852 = or i1 %conflict.rdx847, %found.conflict850
  %bound0853 = icmp ult ptr %i.kp, %scevgep806.a
  %bound1854 = icmp ult ptr %i.u, %scevgep799
  %found.conflict855 = and i1 %bound0853, %bound1854
  %conflict.rdx857 = or i1 %conflict.rdx852, %found.conflict855
  %bound0858 = icmp ult ptr %i.kp, %scevgep808.a
  %bound1859 = icmp ult ptr %scevgep807.a, %scevgep799
  %found.conflict860 = and i1 %bound0858, %bound1859
  %conflict.rdx862 = or i1 %conflict.rdx857, %found.conflict860
  %bound0863 = icmp ult ptr %i.kp, %scevgep809.a
  %bound1864 = icmp ult ptr %i.w, %scevgep799
  %found.conflict865 = and i1 %bound0863, %bound1864
  %conflict.rdx867 = or i1 %conflict.rdx862, %found.conflict865
  %bound0868 = icmp ult ptr %i.kp, %scevgep811
  %bound1869 = icmp ult ptr %scevgep810, %scevgep799
  %found.conflict870 = and i1 %bound0868, %bound1869
  %conflict.rdx872 = or i1 %conflict.rdx867, %found.conflict870
  %bound0873 = icmp ult ptr %i.kp, %scevgep812
  %bound1874 = icmp ult ptr %i.y, %scevgep799
  %found.conflict875 = and i1 %bound0873, %bound1874
  %conflict.rdx877 = or i1 %conflict.rdx872, %found.conflict875
  %bound0878 = icmp ult ptr %i.kp, %scevgep814
  %bound1879 = icmp ult ptr %scevgep813, %scevgep799
  %found.conflict880 = and i1 %bound0878, %bound1879
  %conflict.rdx882 = or i1 %conflict.rdx877, %found.conflict880
  %bound0883 = icmp ult ptr %i.kq, %scevgep801
  %bound1884 = icmp ult ptr %i.kr, %scevgep800
  %found.conflict885 = and i1 %bound0883, %bound1884
  %conflict.rdx886 = or i1 %conflict.rdx882, %found.conflict885
  %bound0887 = icmp ult ptr %i.kq, %scevgep802
  %bound1888 = icmp ult ptr %i.kv, %scevgep800
  %found.conflict889 = and i1 %bound0887, %bound1888
  %conflict.rdx890 = or i1 %conflict.rdx886, %found.conflict889
  %bound0891 = icmp ult ptr %i.kq, %scevgep803
  %bound1892 = icmp ult ptr %.pre402.pre461, %scevgep800
  %found.conflict893 = and i1 %bound0891, %bound1892
  %conflict.rdx894 = or i1 %conflict.rdx890, %found.conflict893
  %bound0895 = icmp ult ptr %i.kq, %scevgep804
  %bound1896 = icmp ult ptr %i.q, %scevgep800
  %found.conflict897 = and i1 %bound0895, %bound1896
  %conflict.rdx899 = or i1 %conflict.rdx894, %found.conflict897
  %bound0900 = icmp ult ptr %i.kq, %scevgep806
  %bound1901 = icmp ult ptr %scevgep805, %scevgep800
  %found.conflict902 = and i1 %bound0900, %bound1901
  %conflict.rdx904 = or i1 %conflict.rdx899, %found.conflict902
  %bound0905 = icmp ult ptr %i.kq, %scevgep807
  %bound1906 = icmp ult ptr %i.s, %scevgep800
  %found.conflict907 = and i1 %bound0905, %bound1906
  %conflict.rdx909 = or i1 %conflict.rdx904, %found.conflict907
  %bound0910 = icmp ult ptr %i.kq, %scevgep809
  %bound1911 = icmp ult ptr %scevgep808, %scevgep800
  %found.conflict912 = and i1 %bound0910, %bound1911
  %conflict.rdx914 = or i1 %conflict.rdx909, %found.conflict912
  %bound0915 = icmp ult ptr %i.kq, %scevgep806.a
  %bound1916 = icmp ult ptr %i.u, %scevgep800
  %found.conflict917 = and i1 %bound0915, %bound1916
  %conflict.rdx919 = or i1 %conflict.rdx914, %found.conflict917
  %bound0920 = icmp ult ptr %i.kq, %scevgep808.a
  %bound1921 = icmp ult ptr %scevgep807.a, %scevgep800
  %found.conflict922 = and i1 %bound0920, %bound1921
  %conflict.rdx924 = or i1 %conflict.rdx919, %found.conflict922
  %bound0925 = icmp ult ptr %i.kq, %scevgep809.a
  %bound1926 = icmp ult ptr %i.w, %scevgep800
  %found.conflict927 = and i1 %bound0925, %bound1926
  %conflict.rdx929 = or i1 %conflict.rdx924, %found.conflict927
  %bound0930 = icmp ult ptr %i.kq, %scevgep811
  %bound1931 = icmp ult ptr %scevgep810, %scevgep800
  %found.conflict932 = and i1 %bound0930, %bound1931
  %conflict.rdx934 = or i1 %conflict.rdx929, %found.conflict932
  %bound0935 = icmp ult ptr %i.kq, %scevgep812
  %bound1936 = icmp ult ptr %i.y, %scevgep800
  %found.conflict937 = and i1 %bound0935, %bound1936
  %conflict.rdx939 = or i1 %conflict.rdx934, %found.conflict937
  %bound0940 = icmp ult ptr %i.kq, %scevgep814
  %bound1941 = icmp ult ptr %scevgep813, %scevgep800
  %found.conflict942 = and i1 %bound0940, %bound1941
  %conflict.rdx944 = or i1 %conflict.rdx939, %found.conflict942
  %bound0945 = icmp ult ptr %i.kr, %scevgep802
  %bound1946 = icmp ult ptr %i.kv, %scevgep801
  %found.conflict947 = and i1 %bound0945, %bound1946
  %conflict.rdx948 = or i1 %conflict.rdx944, %found.conflict947
  %bound0949 = icmp ult ptr %i.kr, %scevgep803
  %bound1950 = icmp ult ptr %.pre402.pre461, %scevgep801
  %found.conflict951 = and i1 %bound0949, %bound1950
  %conflict.rdx952 = or i1 %conflict.rdx948, %found.conflict951
  %bound0953 = icmp ult ptr %i.kr, %scevgep804
  %bound1954 = icmp ult ptr %i.q, %scevgep801
  %found.conflict955 = and i1 %bound0953, %bound1954
  %conflict.rdx957 = or i1 %conflict.rdx952, %found.conflict955
  %bound0958 = icmp ult ptr %i.kr, %scevgep806
  %bound1959 = icmp ult ptr %scevgep805, %scevgep801
  %found.conflict960 = and i1 %bound0958, %bound1959
  %conflict.rdx962 = or i1 %conflict.rdx957, %found.conflict960
  %bound0963 = icmp ult ptr %i.kr, %scevgep807
  %bound1964 = icmp ult ptr %i.s, %scevgep801
  %found.conflict965 = and i1 %bound0963, %bound1964
  %conflict.rdx967 = or i1 %conflict.rdx962, %found.conflict965
  %bound0968 = icmp ult ptr %i.kr, %scevgep809
  %bound1969 = icmp ult ptr %scevgep808, %scevgep801
  %found.conflict970 = and i1 %bound0968, %bound1969
  %conflict.rdx972 = or i1 %conflict.rdx967, %found.conflict970
  %bound0973 = icmp ult ptr %i.kr, %scevgep806.a
  %bound1974 = icmp ult ptr %i.u, %scevgep801
  %found.conflict975 = and i1 %bound0973, %bound1974
  %conflict.rdx977 = or i1 %conflict.rdx972, %found.conflict975
  %bound0978 = icmp ult ptr %i.kr, %scevgep808.a
  %min.iters.check1108.a = icmp ult ptr %scevgep807.a, %scevgep801
  %found.conflict980 = and i1 %bound0978, %min.iters.check1108.a
  %conflict.rdx982 = or i1 %conflict.rdx977, %found.conflict980
  %bound0983 = icmp ult ptr %i.kr, %scevgep809.a
  %bound1984 = icmp ult ptr %i.w, %scevgep801
  %found.conflict985 = and i1 %bound0983, %bound1984
  %conflict.rdx987 = or i1 %conflict.rdx982, %found.conflict985
  %bound0873.a = icmp ult ptr %i.kr, %scevgep811
  %bound1874.a = icmp ult ptr %scevgep810, %scevgep801
  %found.conflict875.a = and i1 %bound0873.a, %bound1874.a
  %conflict.rdx992 = or i1 %conflict.rdx987, %found.conflict875.a
  %bound0878.a = icmp ult ptr %i.kr, %scevgep812
  %bound1879.a = icmp ult ptr %i.y, %scevgep801
  %found.conflict880.a = and i1 %bound0878.a, %bound1879.a
  %conflict.rdx997 = or i1 %conflict.rdx992, %found.conflict880.a
  %bound0998 = icmp ult ptr %i.kr, %scevgep814
  %bound1999 = icmp ult ptr %scevgep813, %scevgep801
  %found.conflict1000 = and i1 %bound0998, %bound1999
  %conflict.rdx1002 = or i1 %conflict.rdx997, %found.conflict1000
  %bound01003 = icmp ult ptr %i.kv, %scevgep803
  %bound11004 = icmp ult ptr %.pre402.pre461, %scevgep802
  %found.conflict1005 = and i1 %bound01003, %bound11004
  %conflict.rdx1006 = or i1 %conflict.rdx1002, %found.conflict1005
  %bound0940.a = icmp ult ptr %i.kv, %scevgep804
  %bound1941.a = icmp ult ptr %i.q, %scevgep802
  %found.conflict942.a = and i1 %bound0940.a, %bound1941.a
  %conflict.rdx1011 = or i1 %conflict.rdx1006, %found.conflict942.a
  %bound01012 = icmp ult ptr %i.kv, %scevgep806
  %bound11013 = icmp ult ptr %scevgep805, %scevgep802
  %found.conflict1014 = and i1 %bound01012, %bound11013
  %conflict.rdx1016 = or i1 %conflict.rdx1011, %found.conflict1014
  %bound01017 = icmp ult ptr %i.kv, %scevgep807
  %bound11018 = icmp ult ptr %i.s, %scevgep802
  %found.conflict1019 = and i1 %bound01017, %bound11018
  %conflict.rdx1021 = or i1 %conflict.rdx1016, %found.conflict1019
  %bound01042.a = icmp ult ptr %i.kv, %scevgep809
  %bound11043.a = icmp ult ptr %scevgep808, %scevgep802
  %found.conflict1044.a = and i1 %bound01042.a, %bound11043.a
  %conflict.rdx1026 = or i1 %conflict.rdx1021, %found.conflict1044.a
  %bound01047.a = icmp ult ptr %i.kv, %scevgep806.a
  %bound11048.a = icmp ult ptr %i.u, %scevgep802
  %found.conflict1049.a = and i1 %bound01047.a, %bound11048.a
  %conflict.rdx1031 = or i1 %conflict.rdx1026, %found.conflict1049.a
  %bound01052.a = icmp ult ptr %i.kv, %scevgep808.a
  %bound11053.a = icmp ult ptr %scevgep807.a, %scevgep802
  %found.conflict1054.a = and i1 %bound01052.a, %bound11053.a
  %conflict.rdx1036 = or i1 %conflict.rdx1031, %found.conflict1054.a
  %bound01037 = icmp ult ptr %i.kv, %scevgep809.a
  %bound11038 = icmp ult ptr %i.w, %scevgep802
  %found.conflict1039 = and i1 %bound01037, %bound11038
  %conflict.rdx1041 = or i1 %conflict.rdx1036, %found.conflict1039
  %bound01097.a = icmp ult ptr %i.kv, %scevgep811
  %bound11098.a = icmp ult ptr %scevgep810, %scevgep802
  %found.conflict1099.a = and i1 %bound01097.a, %bound11098.a
  %conflict.rdx1046 = or i1 %conflict.rdx1041, %found.conflict1099.a
  %bound01102.a = icmp ult ptr %i.kv, %scevgep812
  %bound11103.a = icmp ult ptr %i.y, %scevgep802
  %found.conflict1104.a = and i1 %bound01102.a, %bound11103.a
  %conflict.rdx1051 = or i1 %conflict.rdx1046, %found.conflict1104.a
  %bound01052 = icmp ult ptr %i.kv, %scevgep814
  %bound11053 = icmp ult ptr %scevgep813, %scevgep802
  %found.conflict1054 = and i1 %bound01052, %bound11053
  %conflict.rdx1056 = or i1 %conflict.rdx1051, %found.conflict1054
  %bound01057 = icmp ult ptr %.pre402.pre461, %scevgep804
  %bound11058 = icmp ult ptr %i.q, %scevgep803
  %found.conflict1059 = and i1 %bound01057, %bound11058
  %conflict.rdx1061 = or i1 %conflict.rdx1056, %found.conflict1059
  %bound01062 = icmp ult ptr %.pre402.pre461, %scevgep806
  %bound11063 = icmp ult ptr %scevgep805, %scevgep803
  %found.conflict1064 = and i1 %bound01062, %bound11063
  %op.rdx1175 = or i1 %conflict.rdx1061, %found.conflict1064
  %bound01067 = icmp ult ptr %.pre402.pre461, %scevgep807
  %bound11068 = icmp ult ptr %i.s, %scevgep803
  %found.conflict1069 = and i1 %bound01067, %bound11068
  %op.rdx1176 = or i1 %op.rdx1175, %found.conflict1069
  %bound01072 = icmp ult ptr %.pre402.pre461, %scevgep809
  %bound11073 = icmp ult ptr %scevgep808, %scevgep803
  %found.conflict1074 = and i1 %bound01072, %bound11073
  %op.rdx1177 = or i1 %op.rdx1176, %found.conflict1074
  %bound01077 = icmp ult ptr %.pre402.pre461, %scevgep806.a
  %bound11078 = icmp ult ptr %i.u, %scevgep803
  %found.conflict1079 = and i1 %bound01077, %bound11078
  %op.rdx1178 = or i1 %op.rdx1177, %found.conflict1079
  %bound01082 = icmp ult ptr %.pre402.pre461, %scevgep808.a
  %bound11083 = icmp ult ptr %scevgep807.a, %scevgep803
  %found.conflict1084 = and i1 %bound01082, %bound11083
  %op.rdx1179 = or i1 %op.rdx1178, %found.conflict1084
  %bound01087 = icmp ult ptr %.pre402.pre461, %scevgep809.a
  %bound11088 = icmp ult ptr %i.w, %scevgep803
  %found.conflict1089 = and i1 %bound01087, %bound11088
  %op.rdx1180 = or i1 %op.rdx1179, %found.conflict1089
  %bound01092 = icmp ult ptr %.pre402.pre461, %scevgep811
  %bound11093 = icmp ult ptr %scevgep810, %scevgep803
  %found.conflict1094 = and i1 %bound01092, %bound11093
  %op.rdx1181 = or i1 %op.rdx1180, %found.conflict1094
  %bound01097 = icmp ult ptr %.pre402.pre461, %scevgep812
  %bound11098 = icmp ult ptr %i.y, %scevgep803
  %found.conflict1099 = and i1 %bound01097, %bound11098
  %op.rdx1182 = or i1 %op.rdx1181, %found.conflict1099
  %bound01102 = icmp ult ptr %.pre402.pre461, %scevgep814
  %bound11103 = icmp ult ptr %scevgep813, %scevgep803
  %found.conflict1104 = and i1 %bound01102, %bound11103
  %op.rdx1183 = or i1 %op.rdx1182, %found.conflict1104
  %n.vec1110 = and i64 %wide.trip.count384, 2147483644 ; 3 uses
  %cmp.n1130 = icmp eq i64 %n.vec1110, %wide.trip.count384
  %invariant.op1197 = sub i32 1, %i.km
  %min.iters.check784 = icmp ult i32 %i.fq, 52
  %i.mc = sub i64 %i.c, %i.f
  %diff.check713 = icmp ugt i64 %i.mc, -16
  %i.md = sub i64 %i.c, %i.i
  %diff.check714 = icmp ugt i64 %i.md, -16
  %i.me = sub i64 %i.c, %i.l
  %diff.check716 = icmp ugt i64 %i.me, -16
  %i.mf = sub i64 %i.c, %i.o
  %diff.check718 = icmp ugt i64 %i.mf, -16
  %i.mg = sub i64 %i.f, %i.i
  %diff.check731 = icmp ugt i64 %i.mg, -16
  %i.mh = sub i64 %i.f, %i.l
  %diff.check733 = icmp ugt i64 %i.mh, -16
  %i.mi = sub i64 %i.f, %i.o
  %diff.check735 = icmp ugt i64 %i.mi, -16
  %invariant.op1198.a = add i64 %i.lb, -1
  %invariant.op1199 = sub i64 %i.c, %i.kt
  %invariant.op1201 = sub i64 %i.c, %i.ku
  %invariant.op1203.a = sub i64 %i.c, %i.kw
  %invariant.op1205 = sub i64 %i.c, %.pre402.pre461728
  %invariant.op1207 = add i64 %i.lc, -1
  %invariant.op1209 = add i64 %i.ld, -1
  %invariant.op1211 = sub i64 %i.f, %i.ku
  %invariant.op1213 = sub i64 %i.f, %i.kw
  %invariant.op1215 = sub i64 %i.f, %.pre402.pre461728
  %i.mj = sub i64 %i.i, %i.l
  %diff.check747 = icmp ugt i64 %i.mj, -16
  %i.mk = sub i64 %i.i, %i.o
  %diff.check749 = icmp ugt i64 %i.mk, -16
  %invariant.op1217 = add i64 %i.le, -1
  %invariant.op1219 = add i64 %i.lf, -1
  %invariant.op1221 = add i64 %i.lg, -1
  %invariant.op1223 = sub i64 %i.i, %i.kw
  %invariant.op1225 = sub i64 %i.i, %.pre402.pre461728
  %i.ml = sub i64 %i.l, %i.o
  %diff.check761 = icmp ugt i64 %i.ml, -16
  %invariant.op1227 = add i64 %i.lh, -1
  %invariant.op1229 = add i64 %i.li, -1
  %invariant.op1231 = add i64 %i.lj, -1
  %invariant.op1233 = add i64 %i.lk, -1
  %invariant.op1235 = sub i64 %i.l, %.pre402.pre461728
  %i.mm = insertelement <8 x i1> poison, i1 %diff.check747, i64 2
  %i.mn = insertelement <8 x i1> %i.mm, i1 %diff.check749, i64 3
  %i.mo = insertelement <8 x i1> %i.mn, i1 %diff.check761, i64 6
  %invariant.op1237 = add i64 %i.ll, -1
  %invariant.op1239 = add i64 %i.lm, -1
  %invariant.op1241 = add i64 %i.ln, -1
  %invariant.op1243 = add i64 %i.lo, -1
  %invariant.op1245 = add i64 %i.lp, -1
  %op.rdx1132 = or i1 %diff.check714, %diff.check716
  %op.rdx1136 = or i1 %diff.check733, %diff.check735
  %invariant.op1247 = or i1 %diff.check713, %op.rdx1132
  %invariant.op1248 = or i1 %diff.check731, %op.rdx1136
  %n.vec786 = and i64 %wide.trip.count384, 2147483644 ; 3 uses
  %cmp.n796 = icmp eq i64 %n.vec786, %wide.trip.count384
  br label %.preheader296

scalar.ph697:                                     ; preds = %scalar.ph697.preheader, %scalar.ph697
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %scalar.ph697 ], [ %indvars.iv376.ph, %scalar.ph697.preheader ] ; 11 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv376
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !55
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv376
  store float %i.mq, ptr %i.mr, align 4, !tbaa !55
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv376
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !55
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv376
  store float %i.mt, ptr %i.mu, align 4, !tbaa !55
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv376
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !55
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv376
  store float %i.mw, ptr %i.mx, align 4, !tbaa !55
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv376
  %i.mz = load float, ptr %i.my, align 4, !tbaa !55
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv376
  store float %i.mz, ptr %i.na, align 4, !tbaa !55
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre, i64 %indvars.iv376
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !55
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv376
  store float %i.nc, ptr %i.nd, align 4, !tbaa !55
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count379
  br i1 %exitcond380.not, label %.preheader297, label %scalar.ph697, !llvm.loop !172

.preheader296:                                    ; preds = %.preheader296.lr.ph, %bb.x
  %indvars.iv391 = phi i64 [ %i.kz, %.preheader296.lr.ph ], [ %indvars.iv.next392, %bb.x ] ; 5 uses
  %.0225345 = phi i32 [ 1, %.preheader296.lr.ph ], [ %.1, %bb.x ] ; 4 uses
  br i1 %i.fr, label %.lr.ph340, label %._crit_edge341.thread

.lr.ph340:                                        ; preds = %.preheader296
  %i.ne = mul nsw i64 %indvars.iv391, %i.la       ; 2 uses
  %i.nf = sub nsw i64 %indvars.iv391, %i.kz
  %i.ng = mul nuw nsw i64 %i.nf, %i.la            ; 2 uses
  %brmerge1249 = select i1 %min.iters.check1108, i1 true, i1 %op.rdx1183
  br i1 %brmerge1249, label %scalar.ph1107.preheader, label %vector.body1111

vector.body1111:                                  ; preds = %.lr.ph340, %vector.body1111
  %index1112 = phi i64 [ %index.next1128, %vector.body1111 ], [ 0, %.lr.ph340 ] ; 8 uses
  %i.nh = add nsw i64 %index1112, %i.ne           ; 5 uses
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.nh
  %wide.load1113 = load <4 x float>, ptr %i.ni, align 4, !tbaa !55, !alias.scope !213
  %i.nj = add nsw i64 %index1112, %i.ng           ; 5 uses
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.nj
  %wide.load1114 = load <4 x float>, ptr %i.nk, align 4, !tbaa !55, !alias.scope !214
  %i.nl = fsub <4 x float> %wide.load1113, %wide.load1114
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %index1112 ; 2 uses
  %wide.load1115 = load <4 x float>, ptr %i.nm, align 4, !tbaa !55, !alias.scope !215, !noalias !216
  %i.nn = fadd <4 x float> %i.nl, %wide.load1115
  store <4 x float> %i.nn, ptr %i.nm, align 4, !tbaa !55, !alias.scope !215, !noalias !216
  %i.no = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.nh
  %wide.load1116 = load <4 x float>, ptr %i.no, align 4, !tbaa !55, !alias.scope !217
  %i.np = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.nj
  %wide.load1117 = load <4 x float>, ptr %i.np, align 4, !tbaa !55, !alias.scope !218
  %i.nq = fsub <4 x float> %wide.load1116, %wide.load1117
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %index1112 ; 2 uses
  %wide.load1118 = load <4 x float>, ptr %i.nr, align 4, !tbaa !55, !alias.scope !219, !noalias !220
  %i.ns = fadd <4 x float> %i.nq, %wide.load1118
  store <4 x float> %i.ns, ptr %i.nr, align 4, !tbaa !55, !alias.scope !219, !noalias !220
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.nh
  %wide.load1119 = load <4 x float>, ptr %i.nt, align 4, !tbaa !55, !alias.scope !221
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.nj
  %wide.load1120 = load <4 x float>, ptr %i.nu, align 4, !tbaa !55, !alias.scope !222
  %i.nv = fsub <4 x float> %wide.load1119, %wide.load1120
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %index1112 ; 2 uses
  %wide.load1121 = load <4 x float>, ptr %i.nw, align 4, !tbaa !55, !alias.scope !223, !noalias !224
  %i.nx = fadd <4 x float> %i.nv, %wide.load1121
  store <4 x float> %i.nx, ptr %i.nw, align 4, !tbaa !55, !alias.scope !223, !noalias !224
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.nh
  %wide.load1122 = load <4 x float>, ptr %i.ny, align 4, !tbaa !55, !alias.scope !225
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.nj
  %wide.load1123 = load <4 x float>, ptr %i.nz, align 4, !tbaa !55, !alias.scope !226
  %i.oa = fsub <4 x float> %wide.load1122, %wide.load1123
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %index1112 ; 2 uses
  %wide.load1124 = load <4 x float>, ptr %i.ob, align 4, !tbaa !55, !alias.scope !227, !noalias !228
  %i.oc = fadd <4 x float> %i.oa, %wide.load1124
  store <4 x float> %i.oc, ptr %i.ob, align 4, !tbaa !55, !alias.scope !227, !noalias !228
  %i.od = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.nh
  %wide.load1125 = load <4 x float>, ptr %i.od, align 4, !tbaa !55, !alias.scope !229
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.nj
  %wide.load1126 = load <4 x float>, ptr %i.oe, align 4, !tbaa !55, !alias.scope !230
  %i.of = fsub <4 x float> %wide.load1125, %wide.load1126
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre461, i64 %index1112 ; 2 uses
  %wide.load1127 = load <4 x float>, ptr %i.og, align 4, !tbaa !55, !alias.scope !231, !noalias !232
  %i.oh = fadd <4 x float> %i.of, %wide.load1127
  store <4 x float> %i.oh, ptr %i.og, align 4, !tbaa !55, !alias.scope !231, !noalias !232
  %index.next1128 = add nuw i64 %index1112, 4     ; 2 uses
  %i.oi = icmp eq i64 %index.next1128, %n.vec1110
  br i1 %i.oi, label %middle.block1129, label %vector.body1111, !llvm.loop !189

middle.block1129:                                 ; preds = %vector.body1111
  br i1 %cmp.n1130, label %._crit_edge341, label %scalar.ph1107.preheader

scalar.ph1107.preheader:                          ; preds = %.lr.ph340, %middle.block1129
  %indvars.iv381.ph = phi i64 [ %n.vec1110, %middle.block1129 ], [ 0, %.lr.ph340 ]
  br label %scalar.ph1107

._crit_edge347:                                   ; preds = %bb.x, %.preheader297
  %.not.i.i272 = icmp eq ptr %.pre402.pre461, %i.fl
  %i.oj = icmp eq ptr %.pre402.pre461, null
  %or.cond.i273 = or i1 %.not.i.i272, %i.oj
  br i1 %or.cond.i273, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274, label %bb.q

bb.q:                                             ; preds = %._crit_edge347
  call void @_ZdaPv(ptr noundef nonnull %.pre402.pre461) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274

_ZN2cv10AutoBufferIfLm264EED2Ev.exit274:          ; preds = %._crit_edge347, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.ok = load ptr, ptr %12, align 8, !tbaa !196  ; 3 uses
  %.not.i.i275 = icmp eq ptr %i.ok, %i.fo
  %i.ol = icmp eq ptr %i.ok, null
  %or.cond.i276 = or i1 %.not.i.i275, %i.ol
  br i1 %or.cond.i276, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit277, label %bb.r

bb.r:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274
  call void @_ZdaPv(ptr noundef nonnull %i.ok) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit277

_ZN2cv10AutoBufferIfLm264EED2Ev.exit277:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.om = load ptr, ptr %11, align 8, !tbaa !196  ; 3 uses
  %.not.i.i278 = icmp eq ptr %i.om, %i.fm
  %i.on = icmp eq ptr %i.om, null
  %or.cond.i279 = or i1 %.not.i.i278, %i.on
  br i1 %or.cond.i279, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit280, label %bb.s

bb.s:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit277
  call void @_ZdaPv(ptr noundef nonnull %i.om) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit280

_ZN2cv10AutoBufferIfLm264EED2Ev.exit280:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit277, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.oo = load ptr, ptr %10, align 8, !tbaa !196  ; 3 uses
  %.not.i.i281 = icmp eq ptr %i.oo, %i.fn
  %i.op = icmp eq ptr %i.oo, null
  %or.cond.i282 = or i1 %.not.i.i281, %i.op
  br i1 %or.cond.i282, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit283, label %bb.t

bb.t:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit280
  call void @_ZdaPv(ptr noundef nonnull %i.oo) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit283

_ZN2cv10AutoBufferIfLm264EED2Ev.exit283:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit280, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.oq = load ptr, ptr %9, align 8, !tbaa !196   ; 3 uses
  %.not.i.i284 = icmp eq ptr %i.oq, %i.ax
  %i.or = icmp eq ptr %i.oq, null
  %or.cond.i285 = or i1 %.not.i.i284, %i.or
  br i1 %or.cond.i285, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit286, label %bb.u

bb.u:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit283
  call void @_ZdaPv(ptr noundef nonnull %i.oq) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit286

_ZN2cv10AutoBufferIfLm264EED2Ev.exit286:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit283, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.os = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !62
  %.not.i = icmp eq i32 %i.ot, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit286
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %8)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ou = landingpad { ptr, i32 }
          catch ptr null
  %i.ov = extractvalue { ptr, i32 } %i.ou, 0
  call void @__clang_call_terminate(ptr %i.ov) #22
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit286, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret void

._crit_edge341:                                   ; preds = %scalar.ph1107, %middle.block1129
  %i.ow = trunc nsw i64 %indvars.iv391 to i32
  %.reass468.reass = add i32 %i.ow, %invariant.op1197
  %i.ox = srem i32 %.reass468.reass, %i.ky
  %i.oy = icmp eq i32 %i.ox, 0
  br i1 %i.oy, label %.lr.ph343, label %bb.x

._crit_edge341.thread:                            ; preds = %.preheader296
  %i.oz = trunc nsw i64 %indvars.iv391 to i32
  %.reass.reass = add i32 %i.oz, %invariant.op
  %i.pa = srem i32 %.reass.reass, %i.ky
  %i.pb = icmp eq i32 %i.pa, 0
  br i1 %i.pb, label %._crit_edge344, label %bb.x

.lr.ph343:                                        ; preds = %._crit_edge341
  %i.pc = mul nsw i32 %.0225345, %i.fq
  %i.pd = sext i32 %i.pc to i64                   ; 3 uses
  br i1 %min.iters.check784, label %scalar.ph783.preheader, label %vector.memcheck712

vector.memcheck712:                               ; preds = %.lr.ph343
  %i.pe = shl nsw i64 %i.pd, 2                    ; 25 uses
  %.reass = add i64 %i.pe, %invariant.op1198.a
  %diff.check720 = icmp ult i64 %.reass, 15
  %.reass1200 = add i64 %i.pe, %invariant.op1199
  %diff.check722 = icmp ugt i64 %.reass1200, -16
  %.reass1202 = add i64 %i.pe, %invariant.op1201
  %diff.check724 = icmp ugt i64 %.reass1202, -16
  %.reass1204 = add i64 %i.pe, %invariant.op1203.a
  %diff.check726 = icmp ugt i64 %.reass1204, -16
  %.reass1206 = add i64 %i.pe, %invariant.op1205
  %diff.check729 = icmp ugt i64 %.reass1206, -16
  %.reass1208 = add i64 %i.pe, %invariant.op1207
  %diff.check737 = icmp ult i64 %.reass1208, 15
  %.reass1210 = add i64 %i.pe, %invariant.op1209
  %diff.check739 = icmp ult i64 %.reass1210, 15
  %.reass1212 = add i64 %i.pe, %invariant.op1211
  %diff.check741 = icmp ugt i64 %.reass1212, -16
  %.reass1214 = add i64 %i.pe, %invariant.op1213
  %diff.check743 = icmp ugt i64 %.reass1214, -16
  %.reass1216 = add i64 %i.pe, %invariant.op1215
  %diff.check745 = icmp ugt i64 %.reass1216, -16
  %.reass1218 = add i64 %i.pe, %invariant.op1217
  %diff.check751 = icmp ult i64 %.reass1218, 15
  %.reass1220 = add i64 %i.pe, %invariant.op1219
  %diff.check753 = icmp ult i64 %.reass1220, 15
  %.reass1222 = add i64 %i.pe, %invariant.op1221
  %diff.check755 = icmp ult i64 %.reass1222, 15
  %.reass1224 = add i64 %i.pe, %invariant.op1223
  %diff.check757 = icmp ugt i64 %.reass1224, -16
  %.reass1226 = add i64 %i.pe, %invariant.op1225
  %diff.check759 = icmp ugt i64 %.reass1226, -16
  %.reass1228 = add i64 %i.pe, %invariant.op1227
  %diff.check763 = icmp ult i64 %.reass1228, 15
  %.reass1230 = add i64 %i.pe, %invariant.op1229
  %diff.check765 = icmp ult i64 %.reass1230, 15
  %.reass1232 = add i64 %i.pe, %invariant.op1231
  %diff.check767 = icmp ult i64 %.reass1232, 15
  %.reass1234 = add i64 %i.pe, %invariant.op1233
end_hunk_0

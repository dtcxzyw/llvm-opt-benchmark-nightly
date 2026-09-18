Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64FrameLowering?download=true
inline.NumInlined: 5319
inline.NumDeleted: 2283
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK4llvm20AArch64FrameLowering20determineCalleeSavesERNS_15MachineFunctionERNS_9BitVectorEPNS_12RegScavengerE:bb.a
  %i.px = icmp eq i32 %i.ps, 47
  %i.py = and i1 %i.px, %i.pw
  br i1 %i.py, label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit, label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit.thread385

_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit.thread385: ; preds = %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.i
  %i.pz = add i32 %.3218, 8
  br label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit: ; preds = %bb.at, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.i
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pq, i64 513
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !430, !range !57, !noundef !58
  %i.qc = shl nuw nsw i8 %i.qb, 3
  %i.qd = zext nneg i8 %i.qc to i32
  %spec.select407 = add i32 %.3218, %i.qd
  br label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit.thread: ; preds = %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit, %bb.as, %bb.ar, %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit.thread385
  %i.qe = phi i32 [ %.3218, %bb.as ], [ %spec.select407, %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit ], [ %i.pz, %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit.thread385 ], [ %.3218, %bb.ar ] ; 3 uses
  %i.qf = load ptr, ptr %i.i, align 8, !tbaa !178 ; 2 uses
  %i.qg = call noundef zeroext i1 @_ZNK4llvm19AArch64FunctionInfo20needsDwarfUnwindInfoERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(2016) %i.qf, ptr noundef nonnull align 8 dereferenceable(1065) %1) #25
  br i1 %i.qg, label %bb.av, label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278.thread

bb.av:                                            ; preds = %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit.thread
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 234
  %i.qi = load i8, ptr %i.qh, align 2, !tbaa !419, !range !57, !noundef !58
  %i.qj = trunc nuw i8 %i.qi to i1
  br i1 %i.qj, label %bb.aw, label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278.thread

bb.aw:                                            ; preds = %bb.av
  %i.qk = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !58, !align !387 ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 940
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !383 ; 3 uses
  %i.qn = and i32 %i.qm, -9
  %spec.select.i.i.i.i275 = icmp eq i32 %i.qn, 1
  br i1 %spec.select.i.i.i.i275, label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  switch i32 %i.qm, label %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.i277 [
    i32 26, label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278
    i32 5, label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278
    i32 27, label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278
    i32 29, label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278
    i32 30, label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278
    i32 28, label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278
  ]

_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.i277: ; preds = %bb.ax
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 936
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !429
  %i.qq = icmp eq i32 %i.qp, 1
  %i.qr = icmp eq i32 %i.qm, 47
  %i.qs = and i1 %i.qr, %i.qq
  br i1 %i.qs, label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278, label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278.thread389

_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278: ; preds = %bb.aw, %bb.ax, %bb.ax, %bb.ax, %bb.ax, %bb.ax, %bb.ax, %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.i277
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qk, i64 513
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !430, !range !57, !noundef !58
  %i.qv = trunc nuw i8 %i.qu to i1
  br i1 %i.qv, label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278.thread389, label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278.thread

_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278.thread389: ; preds = %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.i277, %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278
  %i.qw = getelementptr inbounds nuw i8, ptr %i.g, i64 513
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !430, !range !57, !noundef !58
  %i.qy = trunc nuw i8 %i.qx to i1
  br i1 %i.qy, label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278.thread, label %bb.ay

bb.ay:                                            ; preds = %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278.thread389
  %i.qz = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !511
  %i.rb = or i64 %i.ra, 64
  store i64 %i.rb, ptr %i.qz, align 8, !tbaa !511
  br label %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278.thread

_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278.thread: ; preds = %bb.av, %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit.thread, %bb.ay, %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278.thread389, %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278
  %i.rc = call noundef i64 @_ZNK4llvm16MachineFrameInfo17estimateStackSizeERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(728) %i.l, ptr noundef nonnull align 8 dereferenceable(1065) %1) #25 ; 2 uses
  %i.rd = load ptr, ptr %1, align 8, !tbaa !386, !nonnull !58, !align !387
  %i.re = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.rd, i32 noundef 21) #25
  br i1 %i.re, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit: ; preds = %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278.thread
  %i.rf = load ptr, ptr %0, align 8, !tbaa !49
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 384
  %i.rh = load ptr, ptr %i.rg, align 8
  %i.ri = call noundef zeroext i1 %i.rh(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #25, !inline_history !2
  br i1 %i.ri, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit._crit_edge, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit._crit_edge: ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit
  %.val233.pre.pre = load ptr, ptr %i.i, align 8, !tbaa !178
  br label %bb.az

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread: ; preds = %_ZNK4llvm20AArch64FrameLowering14requiresSaveVGERKNS_15MachineFunctionE.exit278.thread, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit
  %i.rj = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !58, !align !387
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 940
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !383
  %i.rm = icmp eq i32 %i.rl, 15
  %.val233.pre475 = load ptr, ptr %i.i, align 8, !tbaa !178 ; 4 uses
  br i1 %i.rm, label %_ZNK4llvm20AArch64FrameLowering25windowsRequiresStackProbeERKNS_15MachineFunctionEm.exit, label %_ZNK4llvm20AArch64FrameLowering25windowsRequiresStackProbeERKNS_15MachineFunctionEm.exit.thread

_ZNK4llvm20AArch64FrameLowering25windowsRequiresStackProbeERKNS_15MachineFunctionEm.exit: ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread
  %i.rn = zext i32 %i.qe to i64
  %i.ro = add nuw nsw i64 %i.rn, 16
  %i.rp = add i64 %i.ro, %i.rc
  %i.rq = getelementptr inbounds nuw i8, ptr %.val233.pre475, i64 240
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !510
  %i.rs = add i64 %i.rr, -1
  %spec.select.i279 = icmp ult i64 %i.rs, %i.rp
  br i1 %spec.select.i279, label %bb.az, label %_ZNK4llvm20AArch64FrameLowering25windowsRequiresStackProbeERKNS_15MachineFunctionEm.exit.thread

bb.az:                                            ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit._crit_edge, %_ZNK4llvm20AArch64FrameLowering25windowsRequiresStackProbeERKNS_15MachineFunctionEm.exit
  %.val233.pre = phi ptr [ %.val233.pre.pre, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit._crit_edge ], [ %.val233.pre475, %_ZNK4llvm20AArch64FrameLowering25windowsRequiresStackProbeERKNS_15MachineFunctionEm.exit ]
  %i.rt = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !511
  %i.rv = or i64 %i.ru, 68
  store i64 %i.rv, ptr %i.rt, align 8, !tbaa !511
  br label %_ZNK4llvm20AArch64FrameLowering25windowsRequiresStackProbeERKNS_15MachineFunctionEm.exit.thread

_ZNK4llvm20AArch64FrameLowering25windowsRequiresStackProbeERKNS_15MachineFunctionEm.exit.thread: ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread, %_ZNK4llvm20AArch64FrameLowering25windowsRequiresStackProbeERKNS_15MachineFunctionEm.exit, %bb.az
  %.val233 = phi ptr [ %.val233.pre475, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread ], [ %.val233.pre475, %_ZNK4llvm20AArch64FrameLowering25windowsRequiresStackProbeERKNS_15MachineFunctionEm.exit ], [ %.val233.pre, %bb.az ]
  %.val234 = load ptr, ptr %i.k, align 8, !tbaa !390
  %i.rw = call fastcc { i64, i64 } @_ZL22determineSVEStackSizesRN4llvm15MachineFunctionE19AssignObjectOffsets(ptr %.val233, ptr %.val234, i32 noundef 0) ; 2 uses
  %i.rx = extractvalue { i64, i64 } %i.rw, 0
  %i.ry = extractvalue { i64, i64 } %i.rw, 1
  %i.rz = add i32 %.0211.lcssa, %.0213.lcssa
  %i.sa = zext i32 %i.rz to i64
  %i.sb = add i64 %i.ry, %i.sa
  %i.sc = add i64 %i.sb, %i.rx                    ; 2 uses
  %i.sd = icmp ne i64 %i.sc, 0                    ; 2 uses
  %.neg = sext i1 %i.sd to i64
  %i.se = add i64 %i.sc, %.neg
  %i.sf = select i1 %i.sd, i64 16, i64 0
  %i.sg = add i64 %i.se, %i.sf
  %i.sh = load ptr, ptr %2, align 8, !tbaa !61    ; 4 uses
  %i.si = load i32, ptr %i.js, align 8, !tbaa !435 ; 2 uses
  %i.sj = zext i32 %i.si to i64
  %.idx.i280 = shl nuw nsw i64 %i.sj, 3           ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 %.idx.i280
  %.not10.i281 = icmp eq i32 %i.si, 0
  br i1 %.not10.i281, label %_ZNK4llvm9BitVector5countEv.exit287, label %.lr.ph.i282.preheader

.lr.ph.i282.preheader:                            ; preds = %_ZNK4llvm20AArch64FrameLowering25windowsRequiresStackProbeERKNS_15MachineFunctionEm.exit.thread
  %i.sl = add nsw i64 %.idx.i280, -8              ; 2 uses
  %i.sm = lshr exact i64 %i.sl, 3
  %i.sn = add nuw nsw i64 %i.sm, 1                ; 2 uses
  %min.iters.check552 = icmp ult i64 %i.sl, 24
  br i1 %min.iters.check552, label %.lr.ph.i282.preheader590, label %vector.ph553

vector.ph553:                                     ; preds = %.lr.ph.i282.preheader
  %n.vec554 = and i64 %i.sn, 4611686018427387900  ; 3 uses
  %i.so = shl i64 %n.vec554, 3
  %i.sp = getelementptr i8, ptr %i.sh, i64 %i.so
  br label %vector.body555

vector.body555:                                   ; preds = %vector.body555, %vector.ph553
  %index556 = phi i64 [ 0, %vector.ph553 ], [ %index.next562, %vector.body555 ] ; 2 uses
  %vec.phi557.a = phi <2 x i32> [ zeroinitializer, %vector.ph553 ], [ %i.sw, %vector.body555 ]
  %vec.phi558 = phi <2 x i32> [ zeroinitializer, %vector.ph553 ], [ %i.sx, %vector.body555 ]
  %i.sq = shl i64 %index556, 3
  %next.gep559 = getelementptr i8, ptr %i.sh, i64 %i.sq ; 2 uses
  %i.sr = getelementptr i8, ptr %next.gep559, i64 16
  %wide.load560.a = load <2 x i64>, ptr %next.gep559, align 8, !tbaa !511
  %wide.load561 = load <2 x i64>, ptr %i.sr, align 8, !tbaa !511
  %i.ss = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load560.a)
  %i.st = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load561)
  %i.su = trunc nuw nsw <2 x i64> %i.ss to <2 x i32>
  %i.sv = trunc nuw nsw <2 x i64> %i.st to <2 x i32>
  %i.sw = add <2 x i32> %vec.phi557.a, %i.su      ; 2 uses
  %i.sx = add <2 x i32> %vec.phi558, %i.sv        ; 2 uses
  %index.next562 = add nuw i64 %index556, 4       ; 2 uses
  %i.sy = icmp eq i64 %index.next562, %n.vec554
  br i1 %i.sy, label %middle.block563, label %vector.body555, !llvm.loop !1276

middle.block563:                                  ; preds = %vector.body555
  %bin.rdx564 = add <2 x i32> %i.sx, %i.sw
  %i.sz = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx564) ; 2 uses
  %cmp.n565 = icmp eq i64 %i.sn, %n.vec554
  br i1 %cmp.n565, label %_ZNK4llvm9BitVector5countEv.exit287.loopexit, label %.lr.ph.i282.preheader590

.lr.ph.i282.preheader590:                         ; preds = %.lr.ph.i282.preheader, %middle.block563
  %.012.i283.ph = phi i32 [ 0, %.lr.ph.i282.preheader ], [ %i.sz, %middle.block563 ]
  %.0911.i284.ph = phi ptr [ %i.sh, %.lr.ph.i282.preheader ], [ %i.sp, %middle.block563 ]
  br label %.lr.ph.i282

.lr.ph.i282:                                      ; preds = %.lr.ph.i282.preheader590, %.lr.ph.i282
  %.012.i283 = phi i32 [ %i.td, %.lr.ph.i282 ], [ %.012.i283.ph, %.lr.ph.i282.preheader590 ]
  %.0911.i284 = phi ptr [ %i.te, %.lr.ph.i282 ], [ %.0911.i284.ph, %.lr.ph.i282.preheader590 ] ; 2 uses
  %i.ta = load i64, ptr %.0911.i284, align 8, !tbaa !511
  %i.tb = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ta)
  %i.tc = trunc nuw nsw i64 %i.tb to i32
  %i.td = add i32 %.012.i283, %i.tc               ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.0911.i284, i64 8 ; 2 uses
  %.not.i285 = icmp eq ptr %i.te, %i.sk
  br i1 %.not.i285, label %_ZNK4llvm9BitVector5countEv.exit287.loopexit, label %.lr.ph.i282, !llvm.loop !1277

_ZNK4llvm9BitVector5countEv.exit287.loopexit:     ; preds = %.lr.ph.i282, %middle.block563
  %.lcssa540 = phi i32 [ %i.sz, %middle.block563 ], [ %i.td, %.lr.ph.i282 ]
  %i.tf = icmp eq i32 %.lcssa540, 0
  br label %_ZNK4llvm9BitVector5countEv.exit287

_ZNK4llvm9BitVector5countEv.exit287:              ; preds = %_ZNK4llvm9BitVector5countEv.exit287.loopexit, %_ZNK4llvm20AArch64FrameLowering25windowsRequiresStackProbeERKNS_15MachineFunctionEm.exit.thread
  %.0.lcssa.i286 = phi i1 [ true, %_ZNK4llvm20AArch64FrameLowering25windowsRequiresStackProbeERKNS_15MachineFunctionEm.exit.thread ], [ %i.tf, %_ZNK4llvm9BitVector5countEv.exit287.loopexit ]
  %.not223 = icmp ult i64 %i.sg, 16               ; 2 uses
  %spec.select230 = select i1 %.0.lcssa.i286, i1 %.not223, i1 false
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %.sroa.042.072.i = load ptr, ptr %i.tg, align 8, !tbaa !560 ; 2 uses
  %.not6073.i = icmp eq ptr %.sroa.042.072.i, %i.th
  br i1 %.not6073.i, label %_ZL24estimateRSStackSizeLimitRN4llvm15MachineFunctionE.exit, label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %_ZNK4llvm9BitVector5countEv.exit287, %._crit_edge.i
  %.sroa.042.074.i = phi ptr [ %.sroa.042.0.i, %._crit_edge.i ], [ %.sroa.042.072.i, %_ZNK4llvm9BitVector5countEv.exit287 ] ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.042.074.i, i64 56
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.042.074.i, i64 48 ; 2 uses
  %.sroa.039.068.i = load ptr, ptr %i.ti, align 8, !tbaa !464 ; 2 uses
  %.not6169.i = icmp eq ptr %.sroa.039.068.i, %i.tj
  br i1 %.not6169.i, label %._crit_edge.i, label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %.lr.ph76.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.039.070.i = phi ptr [ %.sroa.039.0.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %.sroa.039.068.i, %.lr.ph76.i ] ; 11 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.039.070.i, i64 52
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !462 ; 2 uses
  %.off.i.i = add i32 %i.tl, -14
  %switch.i.i = icmp ult i32 %.off.i.i, 5
  br i1 %switch.i.i, label %.loopexit.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph71.i
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.039.070.i, i64 16
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !613
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !615
  %.fr62.i = freeze i64 %i.tp
  %i.tq = and i64 %.fr62.i, 8
  %.not63.i = icmp eq i64 %i.tq, 0
  br i1 %.not63.i, label %switch.early.test.i, label %.loopexit.i

switch.early.test.i:                              ; preds = %bb.ba
  switch i32 %i.tl, label %bb.bb [
    i32 1795, label %.loopexit.i
    i32 1780, label %.loopexit.i
  ]

bb.bb:                                            ; preds = %switch.early.test.i
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.039.070.i, i64 32
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !195 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.039.070.i, i64 40
  %i.tu = load i24, ptr %i.tt, align 8            ; 2 uses
  %i.tv = zext i24 %i.tu to i64
  %.idx.i289 = shl nuw nsw i64 %i.tv, 5
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ts, i64 %.idx.i289
  %.not66.i = icmp eq i24 %i.tu, 0
  br i1 %.not66.i, label %.loopexit.i, label %.lr.ph.i290

.lr.ph.i290:                                      ; preds = %bb.bb, %bb.bd
  %.067.i = phi ptr [ %i.uc, %bb.bd ], [ %i.ts, %bb.bb ] ; 2 uses
  %i.tx = load i32, ptr %.067.i, align 8
  %i.ty = and i32 %i.tx, 255
  %i.tz = icmp eq i32 %i.ty, 5
  br i1 %i.tz, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph.i290
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.ua = call noundef i32 @_ZN4llvm25isAArch64FrameOffsetLegalERKNS_12MachineInstrERNS_11StackOffsetEPbPjPl(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.039.070.i, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef null, ptr noundef null, ptr noundef null) #25
  %i.ub = icmp eq i32 %i.ua, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %i.ub, label %_ZL24estimateRSStackSizeLimitRN4llvm15MachineFunctionE.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph.i290
  %i.uc = getelementptr inbounds nuw i8, ptr %.067.i, i64 32 ; 2 uses
  %.not.i291 = icmp eq ptr %i.uc, %i.tw
  br i1 %.not.i291, label %.loopexit.i, label %.lr.ph.i290

.loopexit.i:                                      ; preds = %bb.bd, %bb.bb, %switch.early.test.i, %switch.early.test.i, %bb.ba, %.lr.ph71.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.070.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.039.070.i, align 8
  %i.ud = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i288 = icmp eq i64 %i.ud, 0
  br i1 %.not.i.i.i.i288, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %.loopexit.i
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.039.070.i, i64 44
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !463
  %i.ug = and i32 %i.uf, 8
  %.not34.i.i.i.i = icmp eq i32 %i.ug, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.ui, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %.sroa.039.070.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !464 ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 44
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !463
  %i.ul = and i32 %i.uk, 8
  %.not3.i.i.i.i = icmp eq i32 %i.ul, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %.loopexit.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.039.070.i, %.loopexit.i ], [ %.sroa.039.070.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.ui, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %.sroa.039.0.i = load ptr, ptr %i.um, align 8, !tbaa !464 ; 2 uses
  %.not61.i = icmp eq ptr %.sroa.039.0.i, %i.tj
  br i1 %.not61.i, label %._crit_edge.i, label %.lr.ph71.i

._crit_edge.i:                                    ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %.lr.ph76.i
  %i.un = getelementptr inbounds nuw i8, ptr %.sroa.042.074.i, i64 8
  %.sroa.042.0.i = load ptr, ptr %i.un, align 8, !tbaa !560 ; 2 uses
  %.not60.i = icmp eq ptr %.sroa.042.0.i, %i.th
  br i1 %.not60.i, label %_ZL24estimateRSStackSizeLimitRN4llvm15MachineFunctionE.exit, label %.lr.ph76.i

_ZL24estimateRSStackSizeLimitRN4llvm15MachineFunctionE.exit: ; preds = %._crit_edge.i, %bb.bc, %_ZNK4llvm9BitVector5countEv.exit287
  %i.uo = phi i64 [ 255, %_ZNK4llvm9BitVector5countEv.exit287 ], [ 0, %bb.bc ], [ 255, %._crit_edge.i ]
  %i.up = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.uq = load i32, ptr %i.up, align 8, !tbaa !410 ; 9 uses
  %.not224459 = icmp eq i32 %i.uq, 0
  br i1 %.not224459, label %._crit_edge463, label %.lr.ph462

.lr.ph462:                                        ; preds = %_ZL24estimateRSStackSizeLimitRN4llvm15MachineFunctionE.exit
  %i.ur = sub i32 0, %i.uq
  %i.us = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !412 ; 3 uses
  %i.uu = zext i32 %i.ur to i64                   ; 2 uses
  %xtraiter = and i32 %i.uq, 1
  %i.uv = icmp eq i32 %i.uq, 1
  br i1 %i.uv, label %.epil.preheader, label %.lr.ph462.new

.lr.ph462.new:                                    ; preds = %.lr.ph462
  %unroll_iter = and i32 %i.uq, -2
  %invariant.op = add i32 1, %i.uq
  br label %bb.be

._crit_edge463.loopexit.unr-lcssa:                ; preds = %bb.be
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge463, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge463.loopexit.unr-lcssa, %.lr.ph462
  %indvars.iv.epil.init = phi i64 [ %i.uu, %.lr.ph462 ], [ %indvars.iv.next.1, %._crit_edge463.loopexit.unr-lcssa ]
  %.0198460.epil.init = phi i64 [ 0, %.lr.ph462 ], [ %spec.select231.1, %._crit_edge463.loopexit.unr-lcssa ]
  %lcmp.mod608 = trunc i32 %i.uq to i1
  call void @llvm.assume(i1 %lcmp.mod608)
  %i.uw = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ux = add i32 %i.uq, %i.uw
  %i.uy = zext i32 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [40 x i8], ptr %i.ut, i64 %i.uy
  %i.va = load i64, ptr %i.uz, align 8, !tbaa !616
  %spec.select231.epil = call i64 @llvm.smax.i64(i64 %i.va, i64 %.0198460.epil.init)
  br label %._crit_edge463

._crit_edge463:                                   ; preds = %.epil.preheader, %._crit_edge463.loopexit.unr-lcssa, %_ZL24estimateRSStackSizeLimitRN4llvm15MachineFunctionE.exit
  %.0198.lcssa = phi i64 [ 0, %_ZL24estimateRSStackSizeLimitRN4llvm15MachineFunctionE.exit ], [ %spec.select231.1, %._crit_edge463.loopexit.unr-lcssa ], [ %spec.select231.epil, %.epil.preheader ]
  %i.vb = zext i32 %i.qe to i64
  %i.vc = add i64 %i.rc, %i.vb
  %i.vd = add i64 %i.vc, %.0198.lcssa
  %i.ve = icmp ule i64 %i.vd, %i.uo               ; 2 uses
  %.not424 = select i1 %.not223, i1 %i.ve, i1 false
  %or.cond = select i1 %spec.select230, i1 %i.ve, i1 false
  br i1 %or.cond, label %bb.bf, label %bb.bg

bb.be:                                            ; preds = %bb.be, %.lr.ph462.new
  %indvars.iv = phi i64 [ %i.uu, %.lr.ph462.new ], [ %indvars.iv.next.1, %bb.be ] ; 3 uses
  %.0198460 = phi i64 [ 0, %.lr.ph462.new ], [ %spec.select231.1, %bb.be ]
  %niter = phi i32 [ 0, %.lr.ph462.new ], [ %niter.next.1, %bb.be ]
  %i.vf = trunc nuw i64 %indvars.iv to i32
  %i.vg = add i32 %i.uq, %i.vf
  %i.vh = zext i32 %i.vg to i64
  %i.vi = getelementptr inbounds nuw [40 x i8], ptr %i.ut, i64 %i.vh
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !616
  %spec.select231 = call i64 @llvm.smax.i64(i64 %i.vj, i64 %.0198460)
  %i.vk = trunc i64 %indvars.iv to i32
  %.reass = add i32 %i.vk, %invariant.op
  %i.vl = zext i32 %.reass to i64
  %i.vm = getelementptr inbounds nuw [40 x i8], ptr %i.ut, i64 %i.vl
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !616
  %spec.select231.1 = call i64 @llvm.smax.i64(i64 %i.vn, i64 %spec.select231) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge463.loopexit.unr-lcssa, label %bb.be, !llvm.loop !1278

bb.bf:                                            ; preds = %._crit_edge463
  %i.vo = call noundef zeroext i1 @_ZNK4llvm19AArch64RegisterInfo20cannotEliminateFrameERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(328) %i.h, ptr noundef nonnull align 8 dereferenceable(1065) %1) #25
  br i1 %i.vo, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %._crit_edge463
  %i.vp = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i8 1, ptr %i.vp, align 4, !tbaa !623
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %.not424, label %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.vq = icmp eq i32 %.0200.lcssa505, 0          ; 2 uses
  %i.vr = icmp ne i32 %.0.lcssa507, 0
  %or.cond5 = select i1 %i.vq, i1 %i.vr, i1 false
  br i1 %or.cond5, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.vs = and i32 %.0.lcssa507, 63
  %i.vt = zext nneg i32 %i.vs to i64
  %i.vu = shl nuw i64 1, %i.vt                    ; 2 uses
  %i.vv = lshr i32 %.0.lcssa507, 6
  %i.vw = zext nneg i32 %i.vv to i64              ; 2 uses
  %i.vx = load ptr, ptr %2, align 8, !tbaa !61
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.vx, i64 %i.vw ; 2 uses
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !511
  %i.wa = or i64 %i.vz, %i.vu
  store i64 %i.wa, ptr %i.vy, align 8, !tbaa !511
  %i.wb = call fastcc noundef zeroext i1 @_ZL25produceCompactUnwindFrameRKN4llvm20AArch64FrameLoweringERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(1065) %1)
  br i1 %i.wb, label %_ZNK4llvm20AArch64FrameLowering20producePairRegistersERNS_15MachineFunctionE.exit292.thread, label %_ZNK4llvm20AArch64FrameLowering20producePairRegistersERNS_15MachineFunctionE.exit292

_ZNK4llvm20AArch64FrameLowering20producePairRegistersERNS_15MachineFunctionE.exit292: ; preds = %bb.bj
  %i.wc = call noundef zeroext i1 @_ZNK4llvm20AArch64FrameLowering23homogeneousPrologEpilogERNS_15MachineFunctionEPNS_17MachineBasicBlockE(ptr nonnull readnone align 8 poison, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef null)
  br i1 %i.wc, label %_ZNK4llvm20AArch64FrameLowering20producePairRegistersERNS_15MachineFunctionE.exit292.thread, label %.thread392

_ZNK4llvm20AArch64FrameLowering20producePairRegistersERNS_15MachineFunctionE.exit292.thread: ; preds = %bb.bj, %_ZNK4llvm20AArch64FrameLowering20producePairRegistersERNS_15MachineFunctionE.exit292
  %i.wd = icmp eq i32 %.0193.lcssa506, 0
  br i1 %i.wd, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZNK4llvm20AArch64FrameLowering20producePairRegistersERNS_15MachineFunctionE.exit292.thread
  %i.we = call fastcc noundef zeroext i1 @_ZL25produceCompactUnwindFrameRKN4llvm20AArch64FrameLoweringERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(1065) %1)
  br i1 %i.we, label %.thread396, label %.thread392

.thread396:                                       ; preds = %bb.bk
  %i.wf = xor i64 %i.vu, -1
  %i.wg = load ptr, ptr %2, align 8, !tbaa !61
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.vw ; 2 uses
  %i.wi = load i64, ptr %i.wh, align 8, !tbaa !511
  %i.wj = and i64 %i.wi, %i.wf
  store i64 %i.wj, ptr %i.wh, align 8, !tbaa !511
  br label %bb.bn

bb.bl:                                            ; preds = %_ZNK4llvm20AArch64FrameLowering20producePairRegistersERNS_15MachineFunctionE.exit292.thread
  %i.wk = and i32 %.0193.lcssa506, 63
  %i.wl = zext nneg i32 %i.wk to i64
  %i.wm = shl nuw i64 1, %i.wl
  %i.wn = lshr i32 %.0193.lcssa506, 6
  %i.wo = zext nneg i32 %i.wn to i64
  %i.wp = load ptr, ptr %2, align 8, !tbaa !61
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.wo ; 2 uses
  %i.wr = load i64, ptr %i.wq, align 8, !tbaa !511
  %i.ws = or i64 %i.wr, %i.wm
  store i64 %i.ws, ptr %i.wq, align 8, !tbaa !511
  br label %.thread392

bb.bm:                                            ; preds = %bb.bi
  br i1 %i.vq, label %bb.bn, label %.thread392

.thread392:                                       ; preds = %_ZNK4llvm20AArch64FrameLowering20producePairRegistersERNS_15MachineFunctionE.exit292, %bb.bl, %bb.bk, %bb.bm
  %.4395 = phi i32 [ %.0200.lcssa505, %bb.bm ], [ %.0.lcssa507, %bb.bk ], [ %.0.lcssa507, %bb.bl ], [ %.0.lcssa507, %_ZNK4llvm20AArch64FrameLowering20producePairRegistersERNS_15MachineFunctionE.exit292 ]
  %i.wt = load ptr, ptr %i.m, align 8, !tbaa !420
  %i.wu = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.wt, i32 %.4395, i1 noundef zeroext false) #25
  br i1 %i.wu, label %bb.bn, label %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit

bb.bn:                                            ; preds = %.thread396, %.thread392, %bb.bm
  %i.wv = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !58, !align !387 ; 2 uses
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !49
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 200
  %i.wy = load ptr, ptr %i.wx, align 8
  %i.wz = call noundef ptr %i.wy(ptr noundef nonnull align 8 dereferenceable(344) %i.wv) #25 ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 296
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !632
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 40
  %i.xd = load i32, ptr %i.xc, align 8, !tbaa !633
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wz, i64 312
  %i.xf = load i32, ptr %i.xe, align 8, !tbaa !634
  %i.xg = mul i32 %i.xf, %i.xd
  %i.xh = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3604), align 4, !tbaa !635
  %i.xi = zext i16 %i.xh to i32
  %i.xj = add i32 %i.xg, %i.xi
  %i.xk = zext i32 %i.xj to i64
  %i.xl = getelementptr inbounds nuw [16 x i8], ptr %i.xb, i64 %i.xk ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !637
  %i.xo = lshr i32 %i.xn, 3
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !638
  %i.xr = lshr i32 %i.xq, 3
  %i.xs = zext nneg i32 %i.xr to i64
  %i.xt = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.xs, i1 false)
  %i.xu = trunc nuw nsw i64 %i.xt to i8
  %i.xv = sub nsw i8 63, %i.xu
  %i.xw = zext nneg i32 %i.xo to i64
  %i.xx = call noundef i32 @_ZN4llvm16MachineFrameInfo22CreateSpillStackObjectEmNS_5AlignENS_13TargetStackID5ValueE(ptr noundef nonnull align 8 dereferenceable(728) %i.l, i64 noundef %i.xw, i8 %i.xv, i32 noundef 0) #25
  %i.xy = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.xx to i64 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !435 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !436
  %.not.i.i293 = icmp ult i32 %i.ya, %i.yc
  br i1 %.not.i.i293, label %bb.bp, label %bb.bo, !prof !443

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_12RegScavenger13ScavengedInfoELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.xy, i64 %.sroa.0.0.insert.ext.i, ptr null)
  br label %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit

bb.bp:                                            ; preds = %bb.bn
  %i.yd = zext i32 %i.ya to i64
  %i.ye = load ptr, ptr %i.xy, align 8, !tbaa !61
  %i.yf = getelementptr inbounds nuw [16 x i8], ptr %i.ye, i64 %i.yd ; 2 uses
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.yf, align 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  store ptr null, ptr %.sroa.3.0..sroa_idx.i.i, align 1
  %i.yg = load i32, ptr %i.xz, align 8, !tbaa !435
  %i.yh = add i32 %i.yg, 1
  store i32 %i.yh, ptr %i.xz, align 8, !tbaa !435
  br label %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit

_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit: ; preds = %bb.bp, %bb.bo, %.thread392, %bb.bh
  %i.yi = load ptr, ptr %2, align 8, !tbaa !61    ; 4 uses
  %i.yj = load i32, ptr %i.js, align 8, !tbaa !435 ; 2 uses
  %i.yk = zext i32 %i.yj to i64
  %.idx.i294 = shl nuw nsw i64 %i.yk, 3           ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yi, i64 %.idx.i294
  %.not10.i295 = icmp eq i32 %i.yj, 0
  br i1 %.not10.i295, label %_ZNK4llvm9BitVector5countEv.exit302, label %.lr.ph.i296.preheader

.lr.ph.i296.preheader:                            ; preds = %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit
  %i.ym = add nsw i64 %.idx.i294, -8              ; 2 uses
  %i.yn = lshr exact i64 %i.ym, 3
  %i.yo = add nuw nsw i64 %i.yn, 1                ; 2 uses
  %min.iters.check569 = icmp ult i64 %i.ym, 24
  br i1 %min.iters.check569, label %.lr.ph.i296.preheader585, label %vector.ph570

vector.ph570:                                     ; preds = %.lr.ph.i296.preheader
  %n.vec571 = and i64 %i.yo, 4611686018427387900  ; 3 uses
  %i.yp = shl i64 %n.vec571, 3
  %i.yq = getelementptr i8, ptr %i.yi, i64 %i.yp
  br label %vector.body572

vector.body572:                                   ; preds = %vector.body572, %vector.ph570
  %index573 = phi i64 [ 0, %vector.ph570 ], [ %index.next579, %vector.body572 ] ; 2 uses
  %vec.phi574.a = phi <2 x i32> [ zeroinitializer, %vector.ph570 ], [ %i.yx, %vector.body572 ]
  %vec.phi575 = phi <2 x i32> [ zeroinitializer, %vector.ph570 ], [ %i.yy, %vector.body572 ]
  %i.yr = shl i64 %index573, 3
  %next.gep576 = getelementptr i8, ptr %i.yi, i64 %i.yr ; 2 uses
  %i.ys = getelementptr i8, ptr %next.gep576, i64 16
  %wide.load577.a = load <2 x i64>, ptr %next.gep576, align 8, !tbaa !511
  %wide.load578 = load <2 x i64>, ptr %i.ys, align 8, !tbaa !511
  %i.yt = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load577.a)
  %i.yu = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load578)
  %i.yv = trunc nuw nsw <2 x i64> %i.yt to <2 x i32>
  %i.yw = trunc nuw nsw <2 x i64> %i.yu to <2 x i32>
  %i.yx = add <2 x i32> %vec.phi574.a, %i.yv      ; 2 uses
  %i.yy = add <2 x i32> %vec.phi575, %i.yw        ; 2 uses
  %index.next579 = add nuw i64 %index573, 4       ; 2 uses
  %i.yz = icmp eq i64 %index.next579, %n.vec571
  br i1 %i.yz, label %middle.block580, label %vector.body572, !llvm.loop !1279

middle.block580:                                  ; preds = %vector.body572
  %bin.rdx581 = add <2 x i32> %i.yy, %i.yx
  %i.za = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx581) ; 2 uses
  %cmp.n582 = icmp eq i64 %i.yo, %n.vec571
  br i1 %cmp.n582, label %_ZNK4llvm9BitVector5countEv.exit302, label %.lr.ph.i296.preheader585

end_hunk_0

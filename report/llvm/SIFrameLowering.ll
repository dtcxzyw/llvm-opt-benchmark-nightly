Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIFrameLowering?download=true
inline.NumInlined: 3660
inline.NumDeleted: 1675
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4llvm15SIFrameLowering41processFunctionBeforeFrameIndicesReplacedERNS_15MachineFunctionEPNS_12RegScavengerE:bb.a
  store i64 %i.av, ptr %i.at, align 8, !tbaa !393
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 2
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !506
  %i.ay = zext i16 %i.ax to i32                   ; 2 uses
  %i.az = and i32 %i.ay, 63
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = lshr i32 %i.ay, 6
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !393
  %i.bg = or i64 %i.bb, %i.bf
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !393
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 4 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.bh, %i.v
  br i1 %.not.i.1, label %_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit, label %.lr.ph.i.new, !llvm.loop !5

_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 164 ; 2 uses
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.bi, align 4, !tbaa !392
  %i.bj = tail call i32 @_ZNK4llvm14SIRegisterInfo18findUnusedRegisterERKNS_19MachineRegisterInfoEPKNS_15MCRegisterClassERKNS_15MachineFunctionEb(ptr noundef nonnull align 8 dereferenceable(408) %i.c, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 4032), ptr noundef nonnull align 8 dereferenceable(1065) %1, i1 noundef zeroext false) #22 ; 3 uses
  %.not29 = icmp eq i32 %.sroa.0.0.copyload.i31, 0
  %.not30 = icmp eq i32 %i.bj, 0
  %or.cond = select i1 %.not29, i1 true, i1 %.not30
  br i1 %or.cond, label %_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit37, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !392
  %i.bk = tail call { ptr, i64 } @_ZNK4llvm14MCRegisterInfo18getCachedAliasesOfENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(240) %i.c, i32 %i.bj) #22 ; 2 uses
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0      ; 4 uses
  %i.bm = extractvalue { ptr, i64 } %i.bk, 1      ; 2 uses
  %.idx.i32 = shl i64 %i.bm, 1                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.i32
  %.not6.i33 = icmp eq i64 %i.bm, 0
  br i1 %.not6.i33, label %_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit37, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !34 ; 3 uses
  %i.bq = add i64 %.idx.i32, -2                   ; 2 uses
  %i.br = and i64 %i.bq, 2
  %lcmp.mod50.not.not = icmp eq i64 %i.br, 0
  br i1 %lcmp.mod50.not.not, label %.prol.loopexit48.unr-lcssa, label %.prol.loopexit48

.prol.loopexit48.unr-lcssa:                       ; preds = %.lr.ph.i34
  %i.bs = load i16, ptr %i.bl, align 2, !tbaa !506
  %i.bt = zext i16 %i.bs to i32                   ; 2 uses
  %i.bu = and i32 %i.bt, 63
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = lshr i32 %i.bt, 6
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.by ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !393
  %i.cb = or i64 %i.bw, %i.ca
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !393
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  br label %.prol.loopexit48

.prol.loopexit48:                                 ; preds = %.prol.loopexit48.unr-lcssa, %.lr.ph.i34
  %.sroa.03.07.i35.unr = phi ptr [ %i.bl, %.lr.ph.i34 ], [ %i.cc, %.prol.loopexit48.unr-lcssa ]
  %i.cd = icmp eq i64 %i.bq, 0
  br i1 %i.cd, label %_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit37, label %.lr.ph.i34.new

.lr.ph.i34.new:                                   ; preds = %.prol.loopexit48, %.lr.ph.i34.new
  %.sroa.03.07.i35 = phi ptr [ %i.cz, %.lr.ph.i34.new ], [ %.sroa.03.07.i35.unr, %.prol.loopexit48 ] ; 3 uses
  %i.ce = load i16, ptr %.sroa.03.07.i35, align 2, !tbaa !506
  %i.cf = zext i16 %i.ce to i32                   ; 2 uses
  %i.cg = and i32 %i.cf, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl nuw i64 1, %i.ch
  %i.cj = lshr i32 %i.cf, 6
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ck ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !393
  %i.cn = or i64 %i.ci, %i.cm
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !393
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i35, i64 2
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !506
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = and i32 %i.cq, 63
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = lshr i32 %i.cq, 6
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cv ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !393
  %i.cy = or i64 %i.ct, %i.cx
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !393
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i35, i64 4 ; 2 uses
  %.not.i36.1 = icmp eq ptr %i.cz, %i.bn
  br i1 %.not.i36.1, label %_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit37, label %.lr.ph.i34.new, !llvm.loop !5

_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit37: ; preds = %.prol.loopexit48, %.lr.ph.i34.new, %bb.f, %_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit
  ret void
}

declare i32 @_ZNK4llvm14SIRegisterInfo18findUnusedRegisterERKNS_19MachineRegisterInfoEPKNS_15MCRegisterClassERKNS_15MachineFunctionEb(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(520), ptr noundef, ptr noundef nonnull align 8 dereferenceable(1065), i1 noundef zeroext) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm14SIRegisterInfo13getHWRegIndexENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(408), i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm15SIFrameLowering30determinePrologEpilogSGPRSavesERNS_15MachineFunctionERNS_9BitVectorEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 {
_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i:
  %4 = alloca %"class.llvm::LiveRegUnits", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !590  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !430  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !420  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !202, !nonnull !32, !align !203 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1024 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !423
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 6, ptr %i.m, align 4, !tbaa !424
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !426
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 1068
  %i.p = load i32, ptr %i.o, align 4, !tbaa !427  ; 4 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !428
  %i.q = add i32 %i.p, 63                         ; 2 uses
  %i.r = lshr i32 %i.q, 6                         ; 3 uses
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = icmp eq i32 %i.r, 0
  br i1 %i.t, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i
  %.not.i.i.i.i.i.i = icmp ugt i32 %i.q, 447
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %.sink.split.i.i.i, !prof !429

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.j, ptr noundef nonnull %i.k, i64 noundef %i.s, i64 noundef 8) #22
  %.pre.i.i.i.i = load i32, ptr %i.l, align 8, !tbaa !423 ; 2 uses
  %.pre.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.pre4.pre.i.pre.i = load i32, ptr %i.n, align 8, !tbaa !428
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !34
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.a, %bb.b
  %i.u = phi ptr [ %i.k, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %.pre4.pre.i.i = phi i32 [ %i.p, %bb.a ], [ %.pre4.pre.i.pre.i, %bb.b ]
  %.pre-phi.i.i.i = phi i64 [ 0, %bb.a ], [ %.pre.i.i.i, %bb.b ]
  %i.v = phi i32 [ 0, %bb.a ], [ %.pre.i.i.i.i, %bb.b ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.pre-phi.i.i.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !393
  %i.x = add i32 %i.v, %i.r                       ; 2 uses
  store i32 %i.x, ptr %i.l, align 8, !tbaa !423
  %i.y = zext i32 %i.x to i64
  br label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i

_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i:  ; preds = %.sink.split.i.i.i, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i
  %i.z = phi ptr [ %i.k, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i ], [ %i.u, %.sink.split.i.i.i ]
  %i.aa = phi i64 [ 0, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i ], [ %i.y, %.sink.split.i.i.i ]
  %i.ab = phi i32 [ %i.p, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i ], [ %.pre4.pre.i.i, %.sink.split.i.i.i ]
  %i.ac = and i32 %i.ab, 63                       ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm12LiveRegUnits4initERKNS_18TargetRegisterInfoE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nsw i64 -1, %i.ad
  %i.af = xor i64 %i.ae, -1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !393
  %i.aj = and i64 %i.ai, %i.af
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !393
  br label %_ZN4llvm12LiveRegUnits4initERKNS_18TargetRegisterInfoE.exit

_ZN4llvm12LiveRegUnits4initERKNS_18TargetRegisterInfoE.exit: ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i, %bb.c
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !430
  %i.al = call noundef ptr @_ZNK4llvm19MachineRegisterInfo18getCalleeSavedRegsEv(ptr noundef nonnull align 8 dereferenceable(520) %i.ak) #22 ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !506 ; 2 uses
  %.not98 = icmp eq i16 %i.am, 0
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm12LiveRegUnits4initERKNS_18TargetRegisterInfoE.exit
  %i.an = load ptr, ptr %4, align 8, !tbaa !426   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !507, !noalias !1424 ; 2 uses
  %.not11.i = icmp eq ptr %i.ap, null
  %i.aq = load ptr, ptr %i.j, align 8
  br i1 %.not11.i, label %._crit_edge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !508, !noalias !1424
  br label %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i

._crit_edge:                                      ; preds = %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.loopexit, %.lr.ph, %_ZN4llvm12LiveRegUnits4initERKNS_18TargetRegisterInfoE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 1353
  %i.au = load i8, ptr %i.at, align 1, !tbaa !801, !range !31, !noundef !32
  %i.av = trunc nuw i8 %i.au to i1                ; 2 uses
  %i.aw = select i1 %i.av, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1728), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 3840) ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 1360 ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.ax, align 8, !tbaa !392 ; 5 uses
  br i1 %3, label %bb.f, label %bb.d

_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i:     ; preds = %.lr.ph.split, %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.loopexit
  %i.ay = phi i16 [ %i.am, %.lr.ph.split ], [ %i.bw, %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.loopexit ]
  %.099 = phi i32 [ 0, %.lr.ph.split ], [ %i.bt, %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.loopexit ]
  %i.az = zext i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !510, !noalias !1424 ; 2 uses
  %i.bd = lshr i32 %i.bc, 12
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.be
  %i.bg = and i32 %i.bc, 4095
  br label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i

_ZN4llvm17MCRegUnitIteratorppEv.exit.i:           ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i, %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i
  %.sroa.55.013.i = phi ptr [ %i.bf, %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i ], [ %i.bp, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i ] ; 2 uses
  %.sroa.9.012.i = phi i32 [ %i.bg, %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i ], [ %i.bs, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i ] ; 3 uses
  %i.bh = and i32 %.sroa.9.012.i, 63
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = lshr i32 %.sroa.9.012.i, 6
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !393
  %i.bo = or i64 %i.bj, %i.bn
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !393
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.55.013.i, i64 2
  %i.bq = load i16, ptr %.sroa.55.013.i, align 2, !tbaa !506 ; 2 uses
  %i.br = sext i16 %i.bq to i32
  %i.bs = add i32 %.sroa.9.012.i, %i.br
  %.not.i.i.i62 = icmp eq i16 %i.bq, 0
  br i1 %.not.i.i.i62, label %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.loopexit, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i

_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.loopexit: ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i
  %i.bt = add i32 %.099, 1                        ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !506 ; 2 uses
  %.not = icmp eq i16 %i.bw, 0
  br i1 %.not, label %._crit_edge, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i, !llvm.loop !1419

bb.d:                                             ; preds = %._crit_edge
  %.not57 = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not57, label %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit73, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.d, i32 %.sroa.0.0.copyload.i, i1 noundef zeroext true) #22
  br i1 %i.bx, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.by = call { ptr, i64 } @_ZNK4llvm14MCRegisterInfo18getCachedAliasesOfENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(240) %i.i, i32 %.sroa.0.0.copyload.i) #22 ; 2 uses
  %i.bz = extractvalue { ptr, i64 } %i.by, 0      ; 4 uses
  %i.ca = extractvalue { ptr, i64 } %i.by, 1      ; 2 uses
  %.idx.i = shl i64 %i.ca, 1                      ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx.i
  %.not6.i = icmp eq i64 %i.ca, 0
  br i1 %.not6.i, label %_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !34 ; 3 uses
  %i.ce = add i64 %.idx.i, -2                     ; 2 uses
  %i.cf = and i64 %i.ce, 2
  %lcmp.mod.not.not = icmp eq i64 %i.cf, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.cg = load i16, ptr %i.bz, align 2, !tbaa !506
  %i.ch = zext i16 %i.cg to i32                   ; 2 uses
  %i.ci = and i32 %i.ch, 63
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = lshr i32 %i.ch, 6
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cm ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !393
  %i.cp = or i64 %i.ck, %i.co
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !393
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.sroa.03.07.i.unr = phi ptr [ %i.bz, %.lr.ph.i ], [ %i.cq, %.prol.loopexit.unr-lcssa ]
  %i.cr = icmp eq i64 %i.ce, 0
  br i1 %i.cr, label %_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.sroa.03.07.i = phi ptr [ %i.dn, %.lr.ph.i.new ], [ %.sroa.03.07.i.unr, %.prol.loopexit ] ; 3 uses
  %i.cs = load i16, ptr %.sroa.03.07.i, align 2, !tbaa !506
  %i.ct = zext i16 %i.cs to i32                   ; 2 uses
  %i.cu = and i32 %i.ct, 63
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = lshr i32 %i.ct, 6
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cy ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !393
  %i.db = or i64 %i.cw, %i.da
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !393
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 2
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !506
  %i.de = zext i16 %i.dd to i32                   ; 2 uses
  %i.df = and i32 %i.de, 63
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = lshr i32 %i.de, 6
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dj ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !393
  %i.dm = or i64 %i.dh, %i.dl
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !393
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 4 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.dn, %i.cb
  br i1 %.not.i.1, label %_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit, label %.lr.ph.i.new, !llvm.loop !5

_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.f
  %i.do = load i32, ptr %i.aw, align 8, !tbaa !758
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.dp ; 2 uses
  %.val = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1744), align 8
  %.val93 = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 3856), align 8
  %5 = select i1 %i.av, i16 %.val, i16 %.val93    ; 2 uses
  %i.dr = zext i16 %5 to i64
  %.idx.i63 = shl nuw nsw i64 %i.dr, 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx.i63
  %.not20.i = icmp eq i16 %5, 0
  br i1 %.not20.i, label %_ZL18findUnusedRegisterRN4llvm19MachineRegisterInfoERKNS_12LiveRegUnitsERKNS_15MCRegisterClassE.exit.thread, label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i, %.lr.ph.i64
  %.021.i = phi ptr [ %i.dq, %.lr.ph.i64 ], [ %i.fg, %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i ] ; 2 uses
  %i.du = load i16, ptr %.021.i, align 2, !tbaa !506 ; 4 uses
  %i.dv = zext i16 %i.du to i32                   ; 5 uses
  %i.dw = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.d, i32 %i.dv, i1 noundef zeroext false) #22
  br i1 %i.dw, label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dx = load ptr, ptr %4, align 8, !tbaa !426   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !507, !noalias !1425 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.dz, null
  br i1 %.not17.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !508, !noalias !1425
  %i.ec = zext i16 %i.du to i64
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !510, !noalias !1425 ; 2 uses
  %i.eg = lshr i32 %i.ef, 12
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %i.eh
  %i.ej = and i32 %i.ef, 4095
  %i.ek = load ptr, ptr %i.j, align 8, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i, %.lr.ph.i.i
  %.sroa.510.019.i.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %i.et, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i ] ; 2 uses
  %.sroa.9.018.i.i = phi i32 [ %i.ej, %.lr.ph.i.i ], [ %i.ew, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i ] ; 3 uses
  %i.el = and i32 %.sroa.9.018.i.i, 63
  %i.em = zext nneg i32 %i.el to i64
  %i.en = shl nuw i64 1, %i.em
  %i.eo = lshr i32 %.sroa.9.018.i.i, 6
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !393
  %i.es = and i64 %i.en, %i.er
  %.not16.i.i = icmp eq i64 %i.es, 0
  br i1 %.not16.i.i, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i, label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i

_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i:         ; preds = %bb.i
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.510.019.i.i, i64 2
  %i.eu = load i16, ptr %.sroa.510.019.i.i, align 2, !tbaa !506 ; 2 uses
  %i.ev = sext i16 %i.eu to i32
  %i.ew = add i32 %.sroa.9.018.i.i, %i.ev
  %.not.i.i.i.i66 = icmp eq i16 %i.eu, 0
  br i1 %.not.i.i.i.i66, label %.loopexit.i, label %bb.i

.loopexit.i:                                      ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i, %bb.h
  %i.ex = and i32 %i.dv, 63
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = shl nuw i64 1, %i.ey
  %i.fa = lshr i32 %i.dv, 6
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = load ptr, ptr %i.dt, align 8, !tbaa !34
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fb
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !393
  %i.ff = and i64 %i.fe, %i.ez
  %.not19.i = icmp eq i64 %i.ff, 0
  br i1 %.not19.i, label %_ZL18findUnusedRegisterRN4llvm19MachineRegisterInfoERKNS_12LiveRegUnitsERKNS_15MCRegisterClassE.exit, label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i

_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i: ; preds = %bb.i, %.loopexit.i, %bb.g
  %i.fg = getelementptr inbounds nuw i8, ptr %.021.i, i64 2 ; 2 uses
  %.not.i65 = icmp eq ptr %i.fg, %i.ds
  br i1 %.not.i65, label %_ZL18findUnusedRegisterRN4llvm19MachineRegisterInfoERKNS_12LiveRegUnitsERKNS_15MCRegisterClassE.exit.thread, label %bb.g

_ZL18findUnusedRegisterRN4llvm19MachineRegisterInfoERKNS_12LiveRegUnitsERKNS_15MCRegisterClassE.exit: ; preds = %.loopexit.i
  %.not59 = icmp eq i16 %i.du, 0
  br i1 %.not59, label %_ZL18findUnusedRegisterRN4llvm19MachineRegisterInfoERKNS_12LiveRegUnitsERKNS_15MCRegisterClassE.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZL18findUnusedRegisterRN4llvm19MachineRegisterInfoERKNS_12LiveRegUnitsERKNS_15MCRegisterClassE.exit
  store i32 %i.dv, ptr %i.ax, align 8, !tbaa !392
  call void @_ZN4llvm19MachineRegisterInfo14replaceRegWithENS_8RegisterES1_(ptr noundef nonnull align 8 dereferenceable(520) %i.d, i32 %.sroa.0.0.copyload.i, i32 %i.dv) #22
  %i.fh = load ptr, ptr %4, align 8, !tbaa !426   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !507, !noalias !1426 ; 2 uses
  %.not11.i67 = icmp eq ptr %i.fj, null
  br i1 %.not11.i67, label %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit73, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i68

_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i68:   ; preds = %bb.j
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !508, !noalias !1426
  %i.fm = zext i16 %i.du to i64
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.fl, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !510, !noalias !1426 ; 2 uses
  %i.fq = lshr i32 %i.fp, 12
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %i.fr
  %i.ft = and i32 %i.fp, 4095
  %i.fu = load ptr, ptr %i.j, align 8, !tbaa !34
  br label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i69

_ZN4llvm17MCRegUnitIteratorppEv.exit.i69:         ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i69, %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i68
  %.sroa.55.013.i70 = phi ptr [ %i.fs, %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i68 ], [ %i.gd, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i69 ] ; 2 uses
  %.sroa.9.012.i71 = phi i32 [ %i.ft, %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i68 ], [ %i.gg, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i69 ] ; 3 uses
  %i.fv = and i32 %.sroa.9.012.i71, 63
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = lshr i32 %.sroa.9.012.i71, 6
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fz ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !393
  %i.gc = or i64 %i.fx, %i.gb
  store i64 %i.gc, ptr %i.ga, align 8, !tbaa !393
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.55.013.i70, i64 2
  %i.ge = load i16, ptr %.sroa.55.013.i70, align 2, !tbaa !506 ; 2 uses
  %i.gf = sext i16 %i.ge to i32
  %i.gg = add i32 %.sroa.9.012.i71, %i.gf
  %.not.i.i.i72 = icmp eq i16 %i.ge, 0
  br i1 %.not.i.i.i72, label %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit73, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i69

_ZL18findUnusedRegisterRN4llvm19MachineRegisterInfoERKNS_12LiveRegUnitsERKNS_15MCRegisterClassE.exit.thread: ; preds = %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i, %_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit, %_ZL18findUnusedRegisterRN4llvm19MachineRegisterInfoERKNS_12LiveRegUnitsERKNS_15MCRegisterClassE.exit
  call fastcc void @_ZL30getVGPRSpillLaneOrTempRegisterRN4llvm15MachineFunctionERNS_12LiveRegUnitsENS_8RegisterERKNS_15MCRegisterClassEb(ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(80) %4, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(62) %i.aw, i1 noundef zeroext false)
  br label %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit73

bb.k:                                             ; preds = %bb.e
  store i32 0, ptr %i.ax, align 8, !tbaa !392
  br label %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit73

_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit73: ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i69, %bb.d, %_ZL18findUnusedRegisterRN4llvm19MachineRegisterInfoERKNS_12LiveRegUnitsERKNS_15MCRegisterClassE.exit.thread, %bb.j, %bb.k
  %i.gh = call noundef zeroext i1 @_ZNK4llvm14SIRegisterInfo26isCFISavedRegsSpillEnabledEv(ptr noundef nonnull align 8 dereferenceable(408) %i.i) #22
  br i1 %i.gh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit73
  %i.gi = call i32 @_ZNK4llvm14SIRegisterInfo7getExecEv(ptr noundef nonnull align 8 dereferenceable(408) %i.i) #22
  call fastcc void @_ZL30getVGPRSpillLaneOrTempRegisterRN4llvm15MachineFunctionERNS_12LiveRegUnitsENS_8RegisterERKNS_15MCRegisterClassEb(ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(80) %4, i32 %i.gi, ptr noundef nonnull align 8 dereferenceable(62) %i.aw, i1 noundef zeroext true)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit73
  %i.gj = load ptr, ptr %1, align 8, !tbaa !574, !nonnull !32, !align !203 ; 2 uses
  %i.gk = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.gj, i32 noundef 40) #22
  br i1 %i.gk, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 2
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !578
  %i.gn = and i16 %i.gm, 16352
  %switch.i = icmp eq i16 %i.gn, 1664
  br i1 %switch.i, label %bb.ab, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  %i.gp = load i8, ptr %i.go, align 2, !tbaa !626, !range !31, !noundef !32
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.gr = load ptr, ptr %2, align 8, !tbaa !34    ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !423 ; 3 uses
  %i.gu = zext i32 %i.gt to i64                   ; 2 uses
  %.idx2.i.i = shl nuw nsw i64 %i.gu, 3           ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.idx2.i.i
  %i.gw = lshr i64 %i.gu, 2                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.gw, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.p
  %i.gx = and i64 %.idx2.i.i, 34359738336
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %i.gr, i64 %i.gx
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.t, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.047.i.i.i.i.i.i.i = phi i64 [ %i.hg, %bb.t ], [ %i.gw, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.02946.i.i.i.i.i.i.i = phi ptr [ %i.hf, %bb.t ], [ %i.gr, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 9 uses
  %i.gy = load i64, ptr %.02946.i.i.i.i.i.i.i, align 8, !tbaa !393
  %.not32.i.i.i.i.i.i.i = icmp eq i64 %i.gy, 0
  br i1 %.not32.i.i.i.i.i.i.i, label %bb.q, label %_ZNK4llvm9BitVector3anyEv.exit

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !393
  %.not33.i.i.i.i.i.i.i = icmp eq i64 %i.ha, 0
  br i1 %.not33.i.i.i.i.i.i.i, label %bb.r, label %_ZNK4llvm9BitVector3anyEv.exit.loopexit.split.loop.exit

bb.r:                                             ; preds = %bb.q
  %i.hb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 16
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !393
  %.not34.i.i.i.i.i.i.i = icmp eq i64 %i.hc, 0
  br i1 %.not34.i.i.i.i.i.i.i, label %bb.s, label %_ZNK4llvm9BitVector3anyEv.exit.loopexit.split.loop.exit130

bb.s:                                             ; preds = %bb.r
  %i.hd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 24
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !393
  %.not35.i.i.i.i.i.i.i = icmp eq i64 %i.he, 0
  br i1 %.not35.i.i.i.i.i.i.i, label %bb.t, label %_ZNK4llvm9BitVector3anyEv.exit.loopexit.split.loop.exit132

bb.t:                                             ; preds = %bb.s
  %i.hf = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 32
  %i.hg = add nsw i64 %.047.i.i.i.i.i.i.i, -1
  %i.hh = icmp sgt i64 %.047.i.i.i.i.i.i.i, 1
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/voxelalgorithms?download=true
inline.NumInlined: 679
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7voxalgo24finish_bulk_light_updateEP3MapN4core8vector3dIsEES4_PNS_10LightQueueES6_PSt3mapIS4_P8MapBlockSt4lessIS4_ESaISt4pairIKS4_S9_EEE:.preheader120
bb.s:                                             ; preds = %bb.r
  %i.es = getelementptr inbounds nuw i8, ptr %i.dl, i64 68 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !82
  %i.eu = or i32 %i.et, 16
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !82
  br label %bb.u

bb.t:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit.1
  store i16 4, ptr %i.eo, align 2, !tbaa !81
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dl, i64 68
  store i32 16, ptr %i.ev, align 4, !tbaa !82
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !83
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dl, i64 76
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !84
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !85 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dl, i64 48 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !86
  %.not.i.i.i.i.i.1 = icmp eq ptr %i.fc, %i.fa
  br i1 %.not.i.i.i.i.i.1, label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i.1

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i.1: ; preds = %bb.u
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !86
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1: ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i.1, %bb.u
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.089.0137.1, i64 24 ; 2 uses
  %i.fe = load ptr, ptr %i.dh, align 8, !tbaa !27
  %i.ff = icmp ult ptr %i.fd, %i.fe
  br i1 %i.ff, label %bb.p, label %._crit_edge139.1, !llvm.loop !250

._crit_edge139.1:                                 ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1, %bb.o
  %indvars.iv.next154.1 = add nuw nsw i64 %indvars.iv153.1, 1 ; 2 uses
  %exitcond156.1 = icmp eq i64 %indvars.iv.next154.1, 16
  br i1 %exitcond156.1, label %bb.v, label %bb.o, !llvm.loop !251

bb.v:                                             ; preds = %._crit_edge139.1
  tail call void @_ZN7voxalgo12spread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueERSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(385) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %5)
  ret void

bb.w:                                             ; preds = %.preheader, %._crit_edge139
  %indvars.iv153 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next154, %._crit_edge139 ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv153 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !27 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !27
  %i.fk = icmp ult ptr %i.fh, %i.fj
  br i1 %i.fk, label %.lr.ph, label %._crit_edge139

.lr.ph:                                           ; preds = %bb.w
  %i.fl = trunc nuw nsw i64 %indvars.iv153 to i32
  br label %bb.x

._crit_edge139:                                   ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, %bb.w
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond156 = icmp eq i64 %indvars.iv.next154, 15
  br i1 %exitcond156, label %bb.n, label %bb.w, !llvm.loop !251

bb.x:                                             ; preds = %.lr.ph, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit
  %.sroa.089.0137 = phi ptr [ %i.fh, %.lr.ph ], [ %i.he, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit ] ; 3 uses
  %i.fm = load ptr, ptr %.sroa.089.0137, align 8, !tbaa !89 ; 10 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.089.0137, i64 8
  %.sroa.04.0.copyload = load i48, ptr %i.fn, align 8 ; 6 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !76
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 36
  %i.fr = load i8, ptr %i.fq, align 4, !tbaa !77, !range !78, !noundef !79
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.04.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = zext nneg i48 %.sroa.3.0.extract.shift.i to i64
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.04.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = zext nneg i48 %.sroa.2.0.extract.shift.i to i64
  %.sroa.0.0.extract.trunc.i = zext i48 %.sroa.04.0.copyload to i64
  %sext.i = shl nuw i64 %.sroa.3.0.extract.trunc.i, 48
  %i.ft = ashr exact i64 %sext.i, 40
  %sext2.i = shl i64 %.sroa.2.0.extract.trunc.i, 48
  %i.fu = ashr exact i64 %sext2.i, 44
  %sext3.i = shl i64 %.sroa.0.0.extract.trunc.i, 48
  %i.fv = ashr exact i64 %sext3.i, 48
  %i.fw = add nsw i64 %i.fu, %i.fv
  %i.fx = add nsw i64 %i.fw, %i.ft
  %i.fy = and i64 %i.fx, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit: ; preds = %bb.x, %bb.y
  %i.fz = phi i64 [ %i.fy, %bb.y ], [ 0, %bb.x ]
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fz
  %.sroa.0.0.copyload.i.i80 = load i32, ptr %i.ga, align 4 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i80, 16 ; 2 uses
  %.sroa.0.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i80, 65535
  %i.gb = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.gb
  %.sroa.0.0.copyload.i.i81 = load i8, ptr %i.gc, align 1, !tbaa !31
  %i.gd = and i8 %.sroa.0.0.copyload.i.i81, 16
  %.not.i = icmp eq i8 %i.gd, 0
  %i.ge = and i32 %.sroa.5.0.extract.shift, 240
  %i.gf = or i32 %i.ge, %i.fl
  %.sroa.5.0 = select i1 %.not.i, i32 %.sroa.5.0.extract.shift, i32 %i.gf
  %.sroa.5.0.insert.ext = shl i32 %.sroa.5.0, 16
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 16711680
  %i.gg = and i32 %.sroa.0.0.copyload.i.i80, -16711681
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %i.gg
  %.sroa.02.0.extract.trunc.i = zext i48 %.sroa.04.0.copyload to i64
  %.sroa.2.0.extract.shift.i82 = lshr i48 %.sroa.04.0.copyload, 16
  %.sroa.2.0.extract.trunc.i83 = zext nneg i48 %.sroa.2.0.extract.shift.i82 to i64
  %.sroa.3.0.extract.shift.i84 = lshr i48 %.sroa.04.0.copyload, 32
  %.sroa.3.0.extract.trunc.i85 = zext nneg i48 %.sroa.3.0.extract.shift.i84 to i64
  tail call void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %i.fm)
  %i.gh = load ptr, ptr %i.fo, align 8, !tbaa !76
  %sext.i86 = shl nuw i64 %.sroa.3.0.extract.trunc.i85, 48
  %i.gi = ashr exact i64 %sext.i86, 40
  %sext3.i87 = shl i64 %.sroa.2.0.extract.trunc.i83, 48
  %i.gj = ashr exact i64 %sext3.i87, 44
  %sext4.i = shl i64 %.sroa.02.0.extract.trunc.i, 48
  %i.gk = ashr exact i64 %sext4.i, 48
  %i.gl = add nsw i64 %i.gj, %i.gk
  %i.gm = add nsw i64 %i.gl, %i.gi
  %i.gn = and i64 %i.gm, 4294967295
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gn
  store i32 %.sroa.0.0.insert.insert, ptr %i.go, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fm, i64 66 ; 2 uses
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !81 ; 2 uses
  %i.gr = icmp ult i16 %i.gq, 4
  br i1 %i.gr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  store i16 4, ptr %i.gp, align 2, !tbaa !81
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fm, i64 68
  store i32 16, ptr %i.gs, align 4, !tbaa !82
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fm, i64 72
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !83
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fm, i64 76
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !84
  br label %bb.ac

bb.aa:                                            ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  %i.gw = icmp eq i16 %i.gq, 4
  br i1 %i.gw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fm, i64 68 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !82
  %i.gz = or i32 %i.gy, 16
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !82
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !85 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fm, i64 48 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !86
  %.not.i.i.i.i.i = icmp eq ptr %i.hd, %i.hb
  br i1 %.not.i.i.i.i.i, label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %bb.ac
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !86
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit: ; preds = %bb.ac, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.089.0137, i64 24 ; 2 uses
  %i.hf = load ptr, ptr %i.fi, align 8, !tbaa !27
  %i.hg = icmp ult ptr %i.he, %i.hf
  br i1 %i.hg, label %bb.x, label %._crit_edge139, !llvm.loop !250
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7voxalgo20blit_back_with_lightEP3MapP8MMVManipPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS7_ESaISt4pairIKS7_S9_EEE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.MapNode, align 4            ; 4 uses
  %4 = alloca [2 x %"struct.voxalgo::LightQueue"], align 16 ; 15 uses
  %5 = alloca [2 x %"struct.voxalgo::LightQueue"], align 16 ; 14 uses
  %i.a = alloca [16 x [16 x i8]], align 16        ; 7 uses
  %6 = alloca %"struct.voxalgo::SunlightPropagationData", align 8 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !282
  %.not.i = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4
  %.not1.i = icmp eq i32 %i.h, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit

_ZNK9VoxelArea14hasEmptyExtentEv.exit:            ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !283
  %.not2.i = icmp eq i32 %i.j, 0
  br i1 %.not2.i, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK9VoxelArea14hasEmptyExtentEv.exit
  %.sroa.077.0.copyload = load i48, ptr %i.d, align 8 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i48 %.sroa.077.0.copyload to i16 ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i48 %.sroa.077.0.copyload, 16
  %.sroa.2.0.extract.trunc.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i to i16 ; 2 uses
  %7 = sext i16 %.sroa.0.0.extract.trunc.i.i to i32 ; 2 uses
  %8 = add nsw i32 %7, -15
  %9 = icmp slt i16 %.sroa.0.0.extract.trunc.i.i, 0
  %10 = select i1 %9, i32 %8, i32 %7
  %11 = sdiv i32 %10, 16                          ; 3 uses
  %12 = sext i16 %.sroa.2.0.extract.trunc.i.i to i32 ; 2 uses
  %13 = add nsw i32 %12, -15
  %14 = icmp slt i16 %.sroa.2.0.extract.trunc.i.i, 0
  %15 = select i1 %14, i32 %13, i32 %12
  %16 = sdiv i32 %15, 16                          ; 3 uses
  %i.k = ashr i48 %.sroa.077.0.copyload, 32
  %i.l = trunc nsw i48 %i.k to i32                ; 2 uses
  %i.m = add nsw i32 %i.l, -15
  %i.n = icmp slt i48 %.sroa.077.0.copyload, 0
  %i.o = select i1 %i.n, i32 %i.m, i32 %i.l
  %i.p = sdiv i32 %i.o, 16                        ; 4 uses
  %.mask.i.i = and i32 %i.p, 65535
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %.mask.i.i to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.q = shl nsw i32 %16, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.q to i48
  %.mask5.i.i = and i32 %11, 65535
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %.mask5.i.i to i48
  %i.r = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %i.r, %.sroa.2.0.insert.shift.i.i
  %.sroa.078.0.extract.trunc = trunc nsw i32 %11 to i16 ; 2 uses
  %.sroa.780.0.extract.trunc = trunc nsw i32 %16 to i16 ; 2 uses
  %.sroa.982.0.extract.trunc = trunc nsw i32 %i.p to i16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %.sroa.070.0.copyload = load i48, ptr %i.s, align 2 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i155 = trunc i48 %.sroa.070.0.copyload to i16 ; 2 uses
  %.sroa.2.0.extract.shift.i.i156 = lshr i48 %.sroa.070.0.copyload, 16
  %.sroa.2.0.extract.trunc.i.i157 = trunc i48 %.sroa.2.0.extract.shift.i.i156 to i16 ; 2 uses
  %i.t = sext i16 %.sroa.0.0.extract.trunc.i.i155 to i32 ; 2 uses
  %i.u = add nsw i32 %i.t, -15
  %i.v = icmp slt i16 %.sroa.0.0.extract.trunc.i.i155, 0
  %i.w = select i1 %i.v, i32 %i.u, i32 %i.t
  %i.x = sdiv i32 %i.w, 16                        ; 3 uses
  %i.y = sext i16 %.sroa.2.0.extract.trunc.i.i157 to i32 ; 2 uses
  %i.z = add nsw i32 %i.y, -15
  %i.aa = icmp slt i16 %.sroa.2.0.extract.trunc.i.i157, 0
  %i.ab = select i1 %i.aa, i32 %i.z, i32 %i.y
  %i.ac = sdiv i32 %i.ab, 16                      ; 3 uses
  %i.ad = ashr i48 %.sroa.070.0.copyload, 32
  %i.ae = trunc nsw i48 %i.ad to i32              ; 2 uses
  %i.af = add nsw i32 %i.ae, -15
  %i.ag = icmp slt i48 %.sroa.070.0.copyload, 0
  %i.ah = select i1 %i.ag, i32 %i.af, i32 %i.ae
  %i.ai = sdiv i32 %i.ah, 16                      ; 4 uses
  %.mask.i.i158 = and i32 %i.ai, 65535
  %.sroa.3.0.insert.ext.i.i159 = zext nneg i32 %.mask.i.i158 to i48
  %.sroa.3.0.insert.shift.i.i160 = shl nuw i48 %.sroa.3.0.insert.ext.i.i159, 32
  %i.aj = shl nsw i32 %i.ac, 16
  %.sroa.2.0.insert.shift.i.i161 = zext i32 %i.aj to i48 ; 2 uses
  %.mask5.i.i163 = and i32 %i.x, 65535
  %.sroa.0.0.insert.ext.i.i164 = zext nneg i32 %.mask5.i.i163 to i48
  %i.ak = or disjoint i48 %.sroa.3.0.insert.shift.i.i160, %.sroa.0.0.insert.ext.i.i164
  %.sroa.0.0.insert.insert.i.i165 = or disjoint i48 %i.ak, %.sroa.2.0.insert.shift.i.i161
  %.sroa.071.0.extract.trunc = trunc nsw i32 %i.x to i16 ; 2 uses
  %.sroa.7.0.extract.trunc = trunc nsw i32 %i.ac to i16 ; 2 uses
  %.sroa.9.0.extract.trunc = trunc nsw i32 %i.ai to i16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(385) %4, i8 0, i64 384, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 384
  store i8 15, ptr %i.al, align 16, !tbaa !24
  br label %.split.i

.split.i:                                         ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i, %bb.b
  %.0.idx11.i = phi i64 [ %.0.add.i, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i ], [ 0, %bb.b ] ; 2 uses
  %.0.ptr12.i = getelementptr inbounds nuw i8, ptr %4, i64 %.0.idx11.i ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.ptr12.i, i64 16 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !87
  %i.ao = load ptr, ptr %.0.ptr12.i, align 8, !tbaa !91
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 24
  %i.at = icmp ult i64 %i.as, 256
  br i1 %i.at, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %.split.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0.ptr12.i, i64 8 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !33
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.aq
  %i.ay = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znwm(i64 noundef 6144) #21
          to label %.noexc10.i unwind label %.body.thread ; 4 uses

.noexc10.i:                                       ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i
  %i.az = load ptr, ptr %.0.ptr12.i, align 8, !tbaa !91 ; 5 uses
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !33 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc10.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.ay, %.noexc10.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %i.az, %.noexc10.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !93, !alias.scope !284
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.ba
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc10.i
  %.not.i8.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !87
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.az to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bg) #22
  br label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  store ptr %i.ay, ptr %.0.ptr12.i, align 8, !tbaa !91
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store ptr %i.bh, ptr %i.au, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 6144
  store ptr %i.bi, ptr %i.am, align 8, !tbaa !87
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, %.split.i
  %.0.add.i = add nuw nsw i64 %.0.idx11.i, 24     ; 2 uses
  %.not.i166 = icmp eq i64 %.0.add.i, 384
  br i1 %.not.i166, label %_ZN7voxalgo10LightQueueC2Em.exit, label %.split.i

.body.thread:                                     ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZN7voxalgo10LightQueueC2Em.exit:                 ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 392 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(385) %i.bj, i8 0, i64 384, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 776
  store i8 15, ptr %i.bk, align 8, !tbaa !24
  br label %.split.i167

.split.i167:                                      ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i170, %_ZN7voxalgo10LightQueueC2Em.exit
  %.0.idx11.i168 = phi i64 [ %.0.add.i171, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i170 ], [ 0, %_ZN7voxalgo10LightQueueC2Em.exit ] ; 2 uses
  %.0.ptr12.i169 = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.0.idx11.i168 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.ptr12.i169, i64 16 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !87
  %i.bn = load ptr, ptr %.0.ptr12.i169, align 8, !tbaa !91
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 24
  %i.bs = icmp ult i64 %i.br, 256
  br i1 %i.bs, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i173, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i170

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i173: ; preds = %.split.i167
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.ptr12.i169, i64 8 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !33
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.bp
  %i.bx = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znwm(i64 noundef 6144) #21
          to label %.noexc10.i176 unwind label %.loopexit.i174 ; 4 uses

.noexc10.i176:                                    ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i173
  %i.by = load ptr, ptr %.0.ptr12.i169, align 8, !tbaa !91 ; 5 uses
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !33 ; 2 uses
  %.not10.i.i.i.i.i177 = icmp eq ptr %i.by, %i.bz
  br i1 %.not10.i.i.i.i.i177, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i182, label %.lr.ph.i.i.i.i.i178

.lr.ph.i.i.i.i.i178:                              ; preds = %.noexc10.i176, %.lr.ph.i.i.i.i.i178
  %.012.i.i.i.i.i179 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i178 ], [ %i.bx, %.noexc10.i176 ] ; 2 uses
  %.0911.i.i.i.i.i180 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i178 ], [ %i.by, %.noexc10.i176 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i179, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i180, i64 24, i1 false), !tbaa.struct !93, !alias.scope !285
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i180, i64 24 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i179, i64 24
  %.not.i.i.i.i.i181 = icmp eq ptr %i.ca, %i.bz
  br i1 %.not.i.i.i.i.i181, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i182, label %.lr.ph.i.i.i.i.i178, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i182: ; preds = %.lr.ph.i.i.i.i.i178, %.noexc10.i176
  %.not.i8.i.i183 = icmp eq ptr %i.by, null
  br i1 %.not.i8.i.i183, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i184, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i182
  %i.cc = load ptr, ptr %i.bl, align 8, !tbaa !87
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.by to i64
  %i.cf = sub i64 %i.cd, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cf) #22
  br label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i184

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i184: ; preds = %bb.d, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i182
  store ptr %i.bx, ptr %.0.ptr12.i169, align 8, !tbaa !91
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store ptr %i.cg, ptr %i.bt, align 8, !tbaa !33
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 6144
  store ptr %i.ch, ptr %i.bl, align 8, !tbaa !87
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i170

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i170: ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i184, %.split.i167
  %.0.add.i171 = add nuw nsw i64 %.0.idx11.i168, 24 ; 2 uses
  %.not.i172 = icmp eq i64 %.0.add.i171, 384
  br i1 %.not.i172, label %_ZN7voxalgo10LightQueueC2Em.exit187, label %.split.i167

.loopexit.i174:                                   ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i173
  %lpad.loopexit.i175 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.bj) #5
  br label %.loopexit

_ZN7voxalgo10LightQueueC2Em.exit187:              ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i170
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(385) %5, i8 0, i64 384, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 384
  store i8 15, ptr %i.ci, align 16, !tbaa !24
  br label %.split.i188

.split.i188:                                      ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i191, %_ZN7voxalgo10LightQueueC2Em.exit187
  %.0.idx11.i189 = phi i64 [ %.0.add.i192, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i191 ], [ 0, %_ZN7voxalgo10LightQueueC2Em.exit187 ] ; 2 uses
  %.0.ptr12.i190 = getelementptr inbounds nuw i8, ptr %5, i64 %.0.idx11.i189 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.ptr12.i190, i64 16 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !87
  %i.cl = load ptr, ptr %.0.ptr12.i190, align 8, !tbaa !91
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 24
  %i.cq = icmp ult i64 %i.cp, 256
  br i1 %i.cq, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i194, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i191

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i194: ; preds = %.split.i188
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.ptr12.i190, i64 8 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !33
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.cn
  %i.cv = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znwm(i64 noundef 6144) #21
          to label %.noexc10.i197 unwind label %.body206.thread ; 4 uses

.noexc10.i197:                                    ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i194
  %i.cw = load ptr, ptr %.0.ptr12.i190, align 8, !tbaa !91 ; 5 uses
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !33 ; 2 uses
  %.not10.i.i.i.i.i198 = icmp eq ptr %i.cw, %i.cx
  br i1 %.not10.i.i.i.i.i198, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i203, label %.lr.ph.i.i.i.i.i199

.lr.ph.i.i.i.i.i199:                              ; preds = %.noexc10.i197, %.lr.ph.i.i.i.i.i199
  %.012.i.i.i.i.i200 = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i199 ], [ %i.cv, %.noexc10.i197 ] ; 2 uses
  %.0911.i.i.i.i.i201 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i199 ], [ %i.cw, %.noexc10.i197 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i200, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i201, i64 24, i1 false), !tbaa.struct !93, !alias.scope !286
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i201, i64 24 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i200, i64 24
  %.not.i.i.i.i.i202 = icmp eq ptr %i.cy, %i.cx
  br i1 %.not.i.i.i.i.i202, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i203, label %.lr.ph.i.i.i.i.i199, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i203: ; preds = %.lr.ph.i.i.i.i.i199, %.noexc10.i197
  %.not.i8.i.i204 = icmp eq ptr %i.cw, null
  br i1 %.not.i8.i.i204, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i205, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i203
  %i.da = load ptr, ptr %i.cj, align 8, !tbaa !87
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cw to i64
  %i.dd = sub i64 %i.db, %i.dc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.dd) #22
  br label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i205

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i205: ; preds = %bb.e, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i203
  store ptr %i.cv, ptr %.0.ptr12.i190, align 8, !tbaa !91
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cu
  store ptr %i.de, ptr %i.cr, align 8, !tbaa !33
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 6144
  store ptr %i.df, ptr %i.cj, align 8, !tbaa !87
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i191

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i191: ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i205, %.split.i188
  %.0.add.i192 = add nuw nsw i64 %.0.idx11.i189, 24 ; 2 uses
  %.not.i193 = icmp eq i64 %.0.add.i192, 384
  br i1 %.not.i193, label %_ZN7voxalgo10LightQueueC2Em.exit208, label %.split.i188

.body206.thread:                                  ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i194
  %lpad.loopexit.i196 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit336

_ZN7voxalgo10LightQueueC2Em.exit208:              ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i191
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 392 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(385) %i.dg, i8 0, i64 384, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 776
  store i8 15, ptr %i.dh, align 8, !tbaa !24
  br label %.split.i209

.split.i209:                                      ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i212, %_ZN7voxalgo10LightQueueC2Em.exit208
  %.0.idx11.i210 = phi i64 [ %.0.add.i213, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i212 ], [ 0, %_ZN7voxalgo10LightQueueC2Em.exit208 ] ; 2 uses
  %.0.ptr12.i211 = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.0.idx11.i210 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0.ptr12.i211, i64 16 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !87
  %i.dk = load ptr, ptr %.0.ptr12.i211, align 8, !tbaa !91
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = sdiv exact i64 %i.dn, 24
  %i.dp = icmp ult i64 %i.do, 256
  br i1 %i.dp, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i215, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i212

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i215: ; preds = %.split.i209
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.ptr12.i211, i64 8 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !33
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.dm
  %i.du = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znwm(i64 noundef 6144) #21
          to label %.noexc10.i218 unwind label %.loopexit.i216 ; 4 uses

.noexc10.i218:                                    ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i215
  %i.dv = load ptr, ptr %.0.ptr12.i211, align 8, !tbaa !91 ; 5 uses
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !33 ; 2 uses
  %.not10.i.i.i.i.i219 = icmp eq ptr %i.dv, %i.dw
  br i1 %.not10.i.i.i.i.i219, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i224, label %.lr.ph.i.i.i.i.i220

.lr.ph.i.i.i.i.i220:                              ; preds = %.noexc10.i218, %.lr.ph.i.i.i.i.i220
  %.012.i.i.i.i.i221 = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i220 ], [ %i.du, %.noexc10.i218 ] ; 2 uses
  %.0911.i.i.i.i.i222 = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i220 ], [ %i.dv, %.noexc10.i218 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i221, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i222, i64 24, i1 false), !tbaa.struct !93, !alias.scope !287
  %i.dx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i222, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i221, i64 24
  %.not.i.i.i.i.i223 = icmp eq ptr %i.dx, %i.dw
  br i1 %.not.i.i.i.i.i223, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i224, label %.lr.ph.i.i.i.i.i220, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i224: ; preds = %.lr.ph.i.i.i.i.i220, %.noexc10.i218
  %.not.i8.i.i225 = icmp eq ptr %i.dv, null
  br i1 %.not.i8.i.i225, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i226, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i224
  %i.dz = load ptr, ptr %i.di, align 8, !tbaa !87
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dv to i64
  %i.ec = sub i64 %i.ea, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ec) #22
  br label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i226

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i226: ; preds = %bb.f, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i224
  store ptr %i.du, ptr %.0.ptr12.i211, align 8, !tbaa !91
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dt
  store ptr %i.ed, ptr %i.dq, align 8, !tbaa !33
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 6144
  store ptr %i.ee, ptr %i.di, align 8, !tbaa !87
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i212

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i212: ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i226, %.split.i209
  %.0.add.i213 = add nuw nsw i64 %.0.idx11.i210, 24 ; 2 uses
  %.not.i214 = icmp eq i64 %.0.add.i213, 384
  br i1 %.not.i214, label %_ZN7voxalgo10LightQueueC2Em.exit229, label %.split.i209

.loopexit.i216:                                   ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i215
  %lpad.loopexit.i217 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.dg) #5
  br label %.loopexit336

_ZN7voxalgo10LightQueueC2Em.exit229:              ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(30) %6, i8 0, i64 30, i1 false)
  %.not376 = icmp sgt i32 %11, %i.x
  br i1 %.not376, label %._crit_edge406.split, label %.preheader348.lr.ph

.preheader348.lr.ph:                              ; preds = %_ZN7voxalgo10LightQueueC2Em.exit229
  %.not147372 = icmp sgt i32 %i.p, %i.ai
  %i.ef = add nsw i16 %.sroa.7.0.extract.trunc, 1
  %.sroa.2.0.insert.ext.i.i = zext i16 %i.ef to i48
  %.sroa.2.0.insert.shift.i.i230 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i, 16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 18 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.em = add nsw i16 %.sroa.780.0.extract.trunc, -1
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 3 uses
  %.sroa.5324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  br i1 %.not147372, label %.preheader339.lr.ph, label %.preheader348

.preheader348:                                    ; preds = %.preheader348.lr.ph, %._crit_edge375
  %.0120377 = phi i16 [ %i.fc, %._crit_edge375 ], [ %.sroa.078.0.extract.trunc, %.preheader348.lr.ph ] ; 5 uses
  %.sroa.0326.0.insert.ext = zext i16 %.0120377 to i48
  %i.et = shl i16 %.0120377, 4
  %.sroa.0325.0.insert.ext = zext i16 %i.et to i32
  br label %bb.g

.preheader339.lr.ph:                              ; preds = %._crit_edge375, %.preheader348.lr.ph
  %i.eu = phi ptr [ null, %.preheader348.lr.ph ], [ %i.ph, %._crit_edge375 ] ; 2 uses
  %.not128401 = icmp sgt i32 %16, %i.ac
  %.not130396 = icmp sgt i32 %i.p, %i.ai
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %brmerge = select i1 %.not128401, i1 true, i1 %.not130396
  br i1 %brmerge, label %._crit_edge406.split, label %.preheader339

._crit_edge375:                                   ; preds = %._crit_edge
  %i.fc = add nsw i16 %.0120377, 1
  %exitcond434 = icmp eq i16 %.0120377, %.sroa.071.0.extract.trunc
  br i1 %exitcond434, label %.preheader339.lr.ph, label %.preheader348, !llvm.loop !265

bb.g:                                             ; preds = %.preheader348, %._crit_edge
  %.0121373 = phi i16 [ %.sroa.982.0.extract.trunc, %.preheader348 ], [ %i.pi, %._crit_edge ] ; 5 uses
  %.sroa.3.0.insert.ext = zext i16 %.0121373 to i48
  %.sroa.3.0.insert.shift = shl nuw i48 %.sroa.3.0.insert.ext, 32
  %i.fd = or disjoint i48 %.sroa.3.0.insert.shift, %.sroa.0326.0.insert.ext ; 2 uses
  %.sroa.0326.0.insert.insert = or disjoint i48 %i.fd, %.sroa.2.0.insert.shift.i.i161
  %.sroa.0.0.insert.insert.i.i231 = or disjoint i48 %i.fd, %.sroa.2.0.insert.shift.i.i230
  %i.fe = load ptr, ptr %0, align 8, !tbaa !139
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = invoke noundef ptr %i.fg(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.i231, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.q, !inline_history !147 ; 4 uses

.noexc:                                           ; preds = %bb.g
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 82
  %i.fk = load i8, ptr %i.fj, align 2, !tbaa !140, !range !78, !noundef !79
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %.preheader41.i, label %bb.i

.preheader41.i:                                   ; preds = %bb.h
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !76 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 36
  %i.fp = load i8, ptr %i.fo, align 4, !tbaa !77, !range !78, !noundef !79
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %.preheader41.i.split.us, label %.preheader40.i

.preheader41.i.split.us:                          ; preds = %.preheader41.i
  %.sroa.0.0.copyload.i.i.us.us = load i32, ptr %i.fn, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.us.us = lshr i32 %.sroa.0.0.copyload.i.i.us.us, 16
  %.sroa.4.0.extract.trunc.i.us.us = trunc i32 %.sroa.4.0.extract.shift.i.us.us to i8
  %i.fr = and i32 %.sroa.0.0.copyload.i.i.us.us, 65535
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.fs
  %.sroa.0.0.copyload.i.i.i.us.us = load i8, ptr %i.ft, align 1, !tbaa !31 ; 2 uses
  %i.fu = and i8 %.sroa.0.0.copyload.i.i.i.us.us, 16
  %.not.i.i.i.us.us = icmp eq i8 %i.fu, 0
  %i.fv = and i8 %.sroa.4.0.extract.trunc.i.us.us, 15
  %i.fw = and i8 %.sroa.0.0.copyload.i.i.i.us.us, 15 ; 2 uses
  %i.fx = tail call i8 @llvm.umax.i8(i8 %i.fw, i8 %i.fv)
  %i.fy = select i1 %.not.i.i.i.us.us, i8 %i.fw, i8 %i.fx
  %i.fz = icmp eq i8 %i.fy, 15
  %i.ga = zext i1 %i.fz to i8
  br label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split

bb.i:                                             ; preds = %bb.h, %.noexc
  %i.gb = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0326.0.insert.insert)
          to label %.noexc233 unwind label %bb.q  ; 2 uses

.noexc233:                                        ; preds = %bb.i
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split, label %bb.j

bb.j:                                             ; preds = %.noexc233
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 83
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !101, !range !78, !noundef !79
  %i.gf = xor i8 %i.ge, 1
  br label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split

.preheader40.i:                                   ; preds = %.preheader41.i, %.preheader40.i
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %.preheader40.i ], [ 0, %.preheader41.i ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv49.i
  %.idx = shl nuw nsw i64 %indvars.iv49.i, 10
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx
  %i.gi = load <16 x i32>, ptr %i.gh, align 4     ; 17 uses
  %i.gj = extractelement <16 x i32> %i.gi, i64 0
  %i.gk = and i32 %i.gj, 65535
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.gl
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.gm, align 1, !tbaa !31
  %i.gn = extractelement <16 x i32> %i.gi, i64 1
  %i.go = and i32 %i.gn, 65535
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.gp
  %.sroa.0.0.copyload.i.i.i.1 = load i8, ptr %i.gq, align 1, !tbaa !31
  %i.gr = extractelement <16 x i32> %i.gi, i64 2
  %i.gs = and i32 %i.gr, 65535
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.gt
  %.sroa.0.0.copyload.i.i.i.2 = load i8, ptr %i.gu, align 1, !tbaa !31
  %i.gv = extractelement <16 x i32> %i.gi, i64 3
  %i.gw = and i32 %i.gv, 65535
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.gx
  %.sroa.0.0.copyload.i.i.i.3 = load i8, ptr %i.gy, align 1, !tbaa !31
  %i.gz = extractelement <16 x i32> %i.gi, i64 4
  %i.ha = and i32 %i.gz, 65535
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.hb
  %.sroa.0.0.copyload.i.i.i.4 = load i8, ptr %i.hc, align 1, !tbaa !31
  %i.hd = extractelement <16 x i32> %i.gi, i64 5
  %i.he = and i32 %i.hd, 65535
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.hf
  %.sroa.0.0.copyload.i.i.i.5 = load i8, ptr %i.hg, align 1, !tbaa !31
  %i.hh = extractelement <16 x i32> %i.gi, i64 6
  %i.hi = and i32 %i.hh, 65535
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.hj
  %.sroa.0.0.copyload.i.i.i.6 = load i8, ptr %i.hk, align 1, !tbaa !31
  %i.hl = extractelement <16 x i32> %i.gi, i64 7
  %i.hm = and i32 %i.hl, 65535
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.hn
  %.sroa.0.0.copyload.i.i.i.7 = load i8, ptr %i.ho, align 1, !tbaa !31
  %i.hp = extractelement <16 x i32> %i.gi, i64 8
  %i.hq = and i32 %i.hp, 65535
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.hr
  %.sroa.0.0.copyload.i.i.i.8 = load i8, ptr %i.hs, align 1, !tbaa !31
  %i.ht = extractelement <16 x i32> %i.gi, i64 9
  %i.hu = and i32 %i.ht, 65535
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.hv
  %.sroa.0.0.copyload.i.i.i.9 = load i8, ptr %i.hw, align 1, !tbaa !31
  %i.hx = extractelement <16 x i32> %i.gi, i64 10
  %i.hy = and i32 %i.hx, 65535
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.hz
  %.sroa.0.0.copyload.i.i.i.10 = load i8, ptr %i.ia, align 1, !tbaa !31
  %i.ib = extractelement <16 x i32> %i.gi, i64 11
  %i.ic = and i32 %i.ib, 65535
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.id
  %.sroa.0.0.copyload.i.i.i.11 = load i8, ptr %i.ie, align 1, !tbaa !31
  %i.if = extractelement <16 x i32> %i.gi, i64 12
  %i.ig = and i32 %i.if, 65535
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ih
  %.sroa.0.0.copyload.i.i.i.12 = load i8, ptr %i.ii, align 1, !tbaa !31
  %i.ij = extractelement <16 x i32> %i.gi, i64 13
  %i.ik = and i32 %i.ij, 65535
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.il
  %.sroa.0.0.copyload.i.i.i.13 = load i8, ptr %i.im, align 1, !tbaa !31
  %i.in = extractelement <16 x i32> %i.gi, i64 14
  %i.io = and i32 %i.in, 65535
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ip
  %.sroa.0.0.copyload.i.i.i.14 = load i8, ptr %i.iq, align 1, !tbaa !31
  %i.ir = lshr <16 x i32> %i.gi, splat (i32 16)
  %i.is = trunc <16 x i32> %i.ir to <16 x i8>
  %i.it = extractelement <16 x i32> %i.gi, i64 15
  %i.iu = and i32 %i.it, 65535
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.iv
  %.sroa.0.0.copyload.i.i.i.15 = load i8, ptr %i.iw, align 1, !tbaa !31
  %i.ix = insertelement <16 x i8> poison, i8 %.sroa.0.0.copyload.i.i.i, i64 0
  %i.iy = insertelement <16 x i8> %i.ix, i8 %.sroa.0.0.copyload.i.i.i.1, i64 1
  %i.iz = insertelement <16 x i8> %i.iy, i8 %.sroa.0.0.copyload.i.i.i.2, i64 2
  %i.ja = insertelement <16 x i8> %i.iz, i8 %.sroa.0.0.copyload.i.i.i.3, i64 3
  %i.jb = insertelement <16 x i8> %i.ja, i8 %.sroa.0.0.copyload.i.i.i.4, i64 4
  %i.jc = insertelement <16 x i8> %i.jb, i8 %.sroa.0.0.copyload.i.i.i.5, i64 5
  %i.jd = insertelement <16 x i8> %i.jc, i8 %.sroa.0.0.copyload.i.i.i.6, i64 6
  %i.je = insertelement <16 x i8> %i.jd, i8 %.sroa.0.0.copyload.i.i.i.7, i64 7
  %i.jf = insertelement <16 x i8> %i.je, i8 %.sroa.0.0.copyload.i.i.i.8, i64 8
  %i.jg = insertelement <16 x i8> %i.jf, i8 %.sroa.0.0.copyload.i.i.i.9, i64 9
  %i.jh = insertelement <16 x i8> %i.jg, i8 %.sroa.0.0.copyload.i.i.i.10, i64 10
  %i.ji = insertelement <16 x i8> %i.jh, i8 %.sroa.0.0.copyload.i.i.i.11, i64 11
  %i.jj = insertelement <16 x i8> %i.ji, i8 %.sroa.0.0.copyload.i.i.i.12, i64 12
  %i.jk = insertelement <16 x i8> %i.jj, i8 %.sroa.0.0.copyload.i.i.i.13, i64 13
  %i.jl = insertelement <16 x i8> %i.jk, i8 %.sroa.0.0.copyload.i.i.i.14, i64 14
  %i.jm = insertelement <16 x i8> %i.jl, i8 %.sroa.0.0.copyload.i.i.i.15, i64 15 ; 2 uses
  %i.jn = and <16 x i8> %i.jm, splat (i8 16)
  %i.jo = icmp eq <16 x i8> %i.jn, zeroinitializer
  %i.jp = and <16 x i8> %i.is, splat (i8 15)
  %i.jq = and <16 x i8> %i.jm, splat (i8 15)      ; 2 uses
  %i.jr = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.jq, <16 x i8> %i.jp)
  %i.js = select <16 x i1> %i.jo, <16 x i8> %i.jq, <16 x i8> %i.jr
  %i.jt = icmp eq <16 x i8> %i.js, splat (i8 15)
  %i.ju = zext <16 x i1> %i.jt to <16 x i8>
  store <16 x i8> %i.ju, ptr %i.gg, align 16, !tbaa !123
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next50.i, 16
  br i1 %exitcond52.not.i, label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit, label %.preheader40.i, !llvm.loop !6

_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split: ; preds = %.noexc233, %bb.j, %.preheader41.i.split.us
  %.sink = phi i8 [ %i.ga, %.preheader41.i.split.us ], [ %i.gf, %bb.j ], [ 0, %.noexc233 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 %.sink, i64 256, i1 false), !tbaa !123
  br label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit
end_hunk_0

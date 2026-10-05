Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/voxelalgorithms?download=true
inline.NumInlined: 679
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7voxalgo24finish_bulk_light_updateEP3MapN4core8vector3dIsEES4_PNS_10LightQueueES6_PSt3mapIS4_P8MapBlockSt4lessIS4_ESaISt4pairIKS4_S9_EEE:.preheader120

bb.s:                                             ; preds = %bb.r
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dj, i64 68 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !83
  %i.es = or i32 %i.er, 16
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !83
  br label %bb.u

bb.t:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit.1
  store i16 4, ptr %i.em, align 2, !tbaa !82
  %i.et = getelementptr inbounds nuw i8, ptr %i.dj, i64 68
  store i32 16, ptr %i.et, align 4, !tbaa !83
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dj, i64 72
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !84
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dj, i64 76
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !85
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !86 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dj, i64 48 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !87
  %.not.i.i.i.i.i.1 = icmp eq ptr %i.fa, %i.ey
  br i1 %.not.i.i.i.i.i.1, label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i.1

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i.1: ; preds = %bb.u
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !87
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1: ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i.1, %bb.u
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.089.0137.1, i64 24 ; 2 uses
  %i.fc = load ptr, ptr %i.df, align 8, !tbaa !27
  %i.fd = icmp ult ptr %i.fb, %i.fc
  br i1 %i.fd, label %bb.p, label %._crit_edge139.1, !llvm.loop !250

._crit_edge139.1:                                 ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1, %bb.o
  %indvars.iv.next155.1 = add nuw nsw i64 %indvars.iv154.1, 1 ; 2 uses
  %exitcond157.1 = icmp eq i64 %indvars.iv.next155.1, 16
  br i1 %exitcond157.1, label %bb.v, label %bb.o, !llvm.loop !251

bb.v:                                             ; preds = %._crit_edge139.1
  tail call void @_ZN7voxalgo12spread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueERSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(385) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %5)
  ret void

bb.w:                                             ; preds = %.preheader, %._crit_edge139
  %indvars.iv154 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next155, %._crit_edge139 ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv154 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !27 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !27
  %i.fi = icmp ult ptr %i.ff, %i.fh
  br i1 %i.fi, label %.lr.ph, label %._crit_edge139

.lr.ph:                                           ; preds = %bb.w
  %i.fj = trunc nuw nsw i64 %indvars.iv154 to i32
  br label %bb.x

._crit_edge139:                                   ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, %bb.w
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond157 = icmp eq i64 %indvars.iv.next155, 15
  br i1 %exitcond157, label %bb.n, label %bb.w, !llvm.loop !251

bb.x:                                             ; preds = %.lr.ph, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit
  %.sroa.089.0137 = phi ptr [ %i.ff, %.lr.ph ], [ %i.hc, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit ] ; 3 uses
  %i.fk = load ptr, ptr %.sroa.089.0137, align 8, !tbaa !90 ; 10 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.089.0137, i64 8
  %.sroa.04.0.copyload = load i48, ptr %i.fl, align 8, !tbaa !31 ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !77
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 36
  %i.fp = load i8, ptr %i.fo, align 4, !tbaa !78, !range !79, !noundef !80
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.04.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = zext nneg i48 %.sroa.3.0.extract.shift.i to i64
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.04.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = zext nneg i48 %.sroa.2.0.extract.shift.i to i64
  %.sroa.0.0.extract.trunc.i = zext i48 %.sroa.04.0.copyload to i64
  %sext.i = shl nuw i64 %.sroa.3.0.extract.trunc.i, 48
  %i.fr = ashr exact i64 %sext.i, 40
  %sext2.i = shl i64 %.sroa.2.0.extract.trunc.i, 48
  %i.fs = ashr exact i64 %sext2.i, 44
  %sext3.i = shl i64 %.sroa.0.0.extract.trunc.i, 48
  %i.ft = ashr exact i64 %sext3.i, 48
  %i.fu = add nsw i64 %i.fs, %i.ft
  %i.fv = add nsw i64 %i.fu, %i.fr
  %i.fw = and i64 %i.fv, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit: ; preds = %bb.x, %bb.y
  %i.fx = phi i64 [ %i.fw, %bb.y ], [ 0, %bb.x ]
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fx
  %.sroa.0.0.copyload.i.i80 = load i32, ptr %i.fy, align 4 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i80, 16 ; 2 uses
  %.sroa.0.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i80, 65535
  %i.fz = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fz
  %.sroa.0.0.copyload.i.i81 = load i8, ptr %i.ga, align 1, !tbaa !32
  %i.gb = and i8 %.sroa.0.0.copyload.i.i81, 16
  %.not.i = icmp eq i8 %i.gb, 0
  %i.gc = and i32 %.sroa.5.0.extract.shift, 240
  %i.gd = or i32 %i.gc, %i.fj
  %.sroa.5.0 = select i1 %.not.i, i32 %.sroa.5.0.extract.shift, i32 %i.gd
  %.sroa.5.0.insert.ext = shl i32 %.sroa.5.0, 16
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 16711680
  %i.ge = and i32 %.sroa.0.0.copyload.i.i80, -16711681
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %i.ge
  %.sroa.02.0.extract.trunc.i = zext i48 %.sroa.04.0.copyload to i64
  %.sroa.2.0.extract.shift.i82 = lshr i48 %.sroa.04.0.copyload, 16
  %.sroa.2.0.extract.trunc.i83 = zext nneg i48 %.sroa.2.0.extract.shift.i82 to i64
  %.sroa.3.0.extract.shift.i84 = lshr i48 %.sroa.04.0.copyload, 32
  %.sroa.3.0.extract.trunc.i85 = zext nneg i48 %.sroa.3.0.extract.shift.i84 to i64
  tail call void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %i.fk)
  %i.gf = load ptr, ptr %i.fm, align 8, !tbaa !77
  %sext.i86 = shl nuw i64 %.sroa.3.0.extract.trunc.i85, 48
  %i.gg = ashr exact i64 %sext.i86, 40
  %sext3.i87 = shl i64 %.sroa.2.0.extract.trunc.i83, 48
  %i.gh = ashr exact i64 %sext3.i87, 44
  %sext4.i = shl i64 %.sroa.02.0.extract.trunc.i, 48
  %i.gi = ashr exact i64 %sext4.i, 48
  %i.gj = add nsw i64 %i.gh, %i.gi
  %i.gk = add nsw i64 %i.gj, %i.gg
  %i.gl = and i64 %i.gk, 4294967295
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gl
  store i32 %.sroa.0.0.insert.insert, ptr %i.gm, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fk, i64 66 ; 2 uses
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !82 ; 2 uses
  %i.gp = icmp ult i16 %i.go, 4
  br i1 %i.gp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  store i16 4, ptr %i.gn, align 2, !tbaa !82
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fk, i64 68
  store i32 16, ptr %i.gq, align 4, !tbaa !83
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fk, i64 72
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !84
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fk, i64 76
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !85
  br label %bb.ac

bb.aa:                                            ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  %i.gu = icmp eq i16 %i.go, 4
  br i1 %i.gu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fk, i64 68 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !83
  %i.gx = or i32 %i.gw, 16
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !83
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !86 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fk, i64 48 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !87
  %.not.i.i.i.i.i = icmp eq ptr %i.hb, %i.gz
  br i1 %.not.i.i.i.i.i, label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %bb.ac
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !87
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit: ; preds = %bb.ac, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.089.0137, i64 24 ; 2 uses
  %i.hd = load ptr, ptr %i.fg, align 8, !tbaa !27
  %i.he = icmp ult ptr %i.hc, %i.hd
  br i1 %i.he, label %bb.x, label %._crit_edge139, !llvm.loop !250
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
  %.sroa.077.0.copyload = load i48, ptr %i.d, align 8, !tbaa !31 ; 5 uses
  %.sroa.2.0.extract.shift.i.i = lshr i48 %.sroa.077.0.copyload, 16
  %7 = trunc i48 %.sroa.077.0.copyload to i16
  %8 = insertelement <2 x i16> poison, i16 %7, i64 0
  %9 = trunc i48 %.sroa.2.0.extract.shift.i.i to i16
  %10 = insertelement <2 x i16> %8, i16 %9, i64 1
  %i.k = bitcast i48 %.sroa.077.0.copyload to <3 x i16>
  %i.l = shufflevector <3 x i16> %i.k, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.m = sext <2 x i16> %i.l to <2 x i32>         ; 2 uses
  %i.n = add nsw <2 x i32> %i.m, splat (i32 -15)
  %i.o = icmp slt <2 x i16> %10, zeroinitializer
  %i.p = select <2 x i1> %i.o, <2 x i32> %i.n, <2 x i32> %i.m
  %i.q = sdiv <2 x i32> %i.p, splat (i32 16)      ; 2 uses
  %i.r = ashr i48 %.sroa.077.0.copyload, 32
  %i.s = trunc nsw i48 %i.r to i32                ; 2 uses
  %i.t = add nsw i32 %i.s, -15
  %i.u = icmp slt i48 %.sroa.077.0.copyload, 0
  %i.v = select i1 %i.u, i32 %i.t, i32 %i.s
  %i.w = sdiv i32 %i.v, 16                        ; 4 uses
  %.mask.i.i = and i32 %i.w, 65535
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %.mask.i.i to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.x = extractelement <2 x i32> %i.q, i64 1     ; 3 uses
  %i.y = shl nsw i32 %i.x, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.y to i48
  %i.z = extractelement <2 x i32> %i.q, i64 0     ; 3 uses
  %.mask5.i.i = and i32 %i.z, 65535
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %.mask5.i.i to i48
  %i.aa = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %i.aa, %.sroa.2.0.insert.shift.i.i
  %.sroa.078.0.extract.trunc = trunc nsw i32 %i.z to i16 ; 2 uses
  %.sroa.780.0.extract.trunc = trunc nsw i32 %i.x to i16 ; 2 uses
  %.sroa.982.0.extract.trunc = trunc nsw i32 %i.w to i16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %.sroa.070.0.copyload = load i48, ptr %i.ab, align 2, !tbaa !31 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i155 = trunc i48 %.sroa.070.0.copyload to i16 ; 2 uses
  %.sroa.2.0.extract.shift.i.i156 = lshr i48 %.sroa.070.0.copyload, 16
  %.sroa.2.0.extract.trunc.i.i157 = trunc i48 %.sroa.2.0.extract.shift.i.i156 to i16 ; 2 uses
  %i.ac = sext i16 %.sroa.0.0.extract.trunc.i.i155 to i32 ; 2 uses
  %i.ad = add nsw i32 %i.ac, -15
  %i.ae = icmp slt i16 %.sroa.0.0.extract.trunc.i.i155, 0
  %i.af = select i1 %i.ae, i32 %i.ad, i32 %i.ac
  %i.ag = sdiv i32 %i.af, 16                      ; 3 uses
  %i.ah = sext i16 %.sroa.2.0.extract.trunc.i.i157 to i32 ; 2 uses
  %i.ai = add nsw i32 %i.ah, -15
  %i.aj = icmp slt i16 %.sroa.2.0.extract.trunc.i.i157, 0
  %i.ak = select i1 %i.aj, i32 %i.ai, i32 %i.ah
  %i.al = sdiv i32 %i.ak, 16                      ; 3 uses
  %i.am = ashr i48 %.sroa.070.0.copyload, 32
  %i.an = trunc nsw i48 %i.am to i32              ; 2 uses
  %i.ao = add nsw i32 %i.an, -15
  %i.ap = icmp slt i48 %.sroa.070.0.copyload, 0
  %i.aq = select i1 %i.ap, i32 %i.ao, i32 %i.an
  %i.ar = sdiv i32 %i.aq, 16                      ; 4 uses
  %.mask.i.i158 = and i32 %i.ar, 65535
  %.sroa.3.0.insert.ext.i.i159 = zext nneg i32 %.mask.i.i158 to i48
  %.sroa.3.0.insert.shift.i.i160 = shl nuw i48 %.sroa.3.0.insert.ext.i.i159, 32
  %i.as = shl nsw i32 %i.al, 16
  %.sroa.2.0.insert.shift.i.i161 = zext i32 %i.as to i48 ; 2 uses
  %.mask5.i.i163 = and i32 %i.ag, 65535
  %.sroa.0.0.insert.ext.i.i164 = zext nneg i32 %.mask5.i.i163 to i48
  %i.at = or disjoint i48 %.sroa.3.0.insert.shift.i.i160, %.sroa.0.0.insert.ext.i.i164
  %.sroa.0.0.insert.insert.i.i165 = or disjoint i48 %i.at, %.sroa.2.0.insert.shift.i.i161
  %.sroa.071.0.extract.trunc = trunc nsw i32 %i.ag to i16 ; 2 uses
  %.sroa.7.0.extract.trunc = trunc nsw i32 %i.al to i16 ; 2 uses
  %.sroa.9.0.extract.trunc = trunc nsw i32 %i.ar to i16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(385) %4, i8 0, i64 384, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 384
  store i8 15, ptr %i.au, align 16, !tbaa !24
  br label %.split.i

.split.i:                                         ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i, %bb.b
  %.0.idx11.i = phi i64 [ %.0.add.i, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i ], [ 0, %bb.b ] ; 2 uses
  %.0.ptr12.i = getelementptr inbounds nuw i8, ptr %4, i64 %.0.idx11.i ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.ptr12.i, i64 16 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !88
  %i.ax = load ptr, ptr %.0.ptr12.i, align 8, !tbaa !92
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 24
  %i.bc = icmp ult i64 %i.bb, 256
  br i1 %i.bc, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %.split.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.ptr12.i, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !34
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.az
  %i.bh = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znwm(i64 noundef 6144) #21
          to label %.noexc10.i unwind label %.body.thread ; 4 uses

.noexc10.i:                                       ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i
  %i.bi = load ptr, ptr %.0.ptr12.i, align 8, !tbaa !92 ; 5 uses
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !34 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc10.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i ], [ %i.bh, %.noexc10.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %i.bi, %.noexc10.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !93, !alias.scope !284
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.bk, %i.bj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc10.i
  %.not.i8.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  %i.bm = load ptr, ptr %i.av, align 8, !tbaa !88
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bi to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bp) #22
  br label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  store ptr %i.bh, ptr %.0.ptr12.i, align 8, !tbaa !92
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store ptr %i.bq, ptr %i.bd, align 8, !tbaa !34
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 6144
  store ptr %i.br, ptr %i.av, align 8, !tbaa !88
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
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 392 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(385) %i.bs, i8 0, i64 384, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 776
  store i8 15, ptr %i.bt, align 8, !tbaa !24
  br label %.split.i167

.split.i167:                                      ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i170, %_ZN7voxalgo10LightQueueC2Em.exit
  %.0.idx11.i168 = phi i64 [ %.0.add.i171, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i170 ], [ 0, %_ZN7voxalgo10LightQueueC2Em.exit ] ; 2 uses
  %.0.ptr12.i169 = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.0.idx11.i168 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.ptr12.i169, i64 16 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !88
  %i.bw = load ptr, ptr %.0.ptr12.i169, align 8, !tbaa !92
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 24
  %i.cb = icmp ult i64 %i.ca, 256
  br i1 %i.cb, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i173, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i170

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i173: ; preds = %.split.i167
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.ptr12.i169, i64 8 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !34
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.by
  %i.cg = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znwm(i64 noundef 6144) #21
          to label %.noexc10.i176 unwind label %.loopexit.i174 ; 4 uses

.noexc10.i176:                                    ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i173
  %i.ch = load ptr, ptr %.0.ptr12.i169, align 8, !tbaa !92 ; 5 uses
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !34 ; 2 uses
  %.not10.i.i.i.i.i177 = icmp eq ptr %i.ch, %i.ci
  br i1 %.not10.i.i.i.i.i177, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i182, label %.lr.ph.i.i.i.i.i178

.lr.ph.i.i.i.i.i178:                              ; preds = %.noexc10.i176, %.lr.ph.i.i.i.i.i178
  %.012.i.i.i.i.i179 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i178 ], [ %i.cg, %.noexc10.i176 ] ; 2 uses
  %.0911.i.i.i.i.i180 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i178 ], [ %i.ch, %.noexc10.i176 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i179, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i180, i64 24, i1 false), !tbaa.struct !93, !alias.scope !285
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i180, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i179, i64 24
  %.not.i.i.i.i.i181 = icmp eq ptr %i.cj, %i.ci
  br i1 %.not.i.i.i.i.i181, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i182, label %.lr.ph.i.i.i.i.i178, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i182: ; preds = %.lr.ph.i.i.i.i.i178, %.noexc10.i176
  %.not.i8.i.i183 = icmp eq ptr %i.ch, null
  br i1 %.not.i8.i.i183, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i184, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i182
  %i.cl = load ptr, ptr %i.bu, align 8, !tbaa !88
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.ch to i64
  %i.co = sub i64 %i.cm, %i.cn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.co) #22
  br label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i184

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i184: ; preds = %bb.d, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i182
  store ptr %i.cg, ptr %.0.ptr12.i169, align 8, !tbaa !92
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store ptr %i.cp, ptr %i.cc, align 8, !tbaa !34
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 6144
  store ptr %i.cq, ptr %i.bu, align 8, !tbaa !88
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i170

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i170: ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i184, %.split.i167
  %.0.add.i171 = add nuw nsw i64 %.0.idx11.i168, 24 ; 2 uses
  %.not.i172 = icmp eq i64 %.0.add.i171, 384
  br i1 %.not.i172, label %_ZN7voxalgo10LightQueueC2Em.exit187, label %.split.i167

.loopexit.i174:                                   ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i173
  %lpad.loopexit.i175 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.bs) #5
  br label %.loopexit
end_hunk_0

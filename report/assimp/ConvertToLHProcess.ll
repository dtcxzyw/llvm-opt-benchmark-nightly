inline.NumInlined: 38
inline.NumDeleted: 20
begin_hunk_0
target triple = "x86_64-pc-linux-gnu"

%class.aiMatrix4x4t = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%class.aiColor4t = type { float, float, float, float }
%class.aiVector3t = type { float, float, float }

$_ZN6Assimp21MakeLeftHandedProcessD0Ev = comdat any
end_hunk_0
begin_hunk_1_@_ZN6Assimp23FlipWindingOrderProcess7ExecuteEP7aiScene:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %class.aiColor4t, align 4           ; 32 uses
  %2 = alloca %class.aiVector3t, align 4          ; 4 uses
  %3 = alloca %class.aiVector3t, align 4          ; 4 uses
  %4 = alloca %class.aiVector3t, align 4          ; 32 uses
  %5 = alloca %class.aiVector3t, align 4          ; 4 uses
  %6 = alloca %class.aiVector3t, align 4          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not130 = icmp eq i32 %i.b, 0
end_hunk_1
begin_hunk_2_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.ao = add i32 %.fr133, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.ak, i64 %i.ap ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.al, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(12) %i.aq, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aq, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit99, label %.lr.ph106, !llvm.loop !27
end_hunk_2
begin_hunk_3_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.ax = add i32 %.fr133, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %i.ay ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.au, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.au, ptr noundef nonnull align 4 dereferenceable(12) %i.az, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.az, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.us.preheader, label %.lr.ph108, !llvm.loop !28
end_hunk_3
begin_hunk_4_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.bg = add i32 %.fr133, %i.bf
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bh ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.bd, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.bi, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bi, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %..loopexit93_crit_edge.us, label %bb.e, !llvm.loop !29
end_hunk_4
begin_hunk_5_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.bp = add i32 %.fr133, %i.bo
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.bq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.bm, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bm, ptr noundef nonnull align 4 dereferenceable(12) %i.br, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.br, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next151.1 = add nuw nsw i64 %indvars.iv150.1, 1 ; 2 uses
  %exitcond154.1.not = icmp eq i64 %indvars.iv.next151.1, %wide.trip.count153.1
  br i1 %exitcond154.1.not, label %..loopexit93_crit_edge.us.1, label %bb.f, !llvm.loop !29
end_hunk_5
begin_hunk_6_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.by = add i32 %.fr133, %i.bx
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.bu, i64 %i.bz ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.bv, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bv, ptr noundef nonnull align 4 dereferenceable(12) %i.ca, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ca, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next151.2 = add nuw nsw i64 %indvars.iv150.2, 1 ; 2 uses
  %exitcond154.2.not = icmp eq i64 %indvars.iv.next151.2, %wide.trip.count153.2
  br i1 %exitcond154.2.not, label %..loopexit93_crit_edge.us.2, label %bb.g, !llvm.loop !29
end_hunk_6
begin_hunk_7_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.ch = add i32 %.fr133, %i.cg
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %i.ci ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.ce, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %i.cj, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cj, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next151.3 = add nuw nsw i64 %indvars.iv150.3, 1 ; 2 uses
  %exitcond154.3.not = icmp eq i64 %indvars.iv.next151.3, %wide.trip.count153.3
  br i1 %exitcond154.3.not, label %..loopexit93_crit_edge.us.3, label %bb.h, !llvm.loop !29
end_hunk_7
begin_hunk_8_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.cq = add i32 %.fr133, %i.cp
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.cm, i64 %i.cr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.cn, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cn, ptr noundef nonnull align 4 dereferenceable(12) %i.cs, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cs, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next151.4 = add nuw nsw i64 %indvars.iv150.4, 1 ; 2 uses
  %exitcond154.4.not = icmp eq i64 %indvars.iv.next151.4, %wide.trip.count153.4
  br i1 %exitcond154.4.not, label %..loopexit93_crit_edge.us.4, label %bb.i, !llvm.loop !29
end_hunk_8
begin_hunk_9_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.cz = add i32 %.fr133, %i.cy
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [12 x i8], ptr %i.cv, i64 %i.da ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.cw, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cw, ptr noundef nonnull align 4 dereferenceable(12) %i.db, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.db, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next151.5 = add nuw nsw i64 %indvars.iv150.5, 1 ; 2 uses
  %exitcond154.5.not = icmp eq i64 %indvars.iv.next151.5, %wide.trip.count153.5
  br i1 %exitcond154.5.not, label %..loopexit93_crit_edge.us.5, label %bb.j, !llvm.loop !29
end_hunk_9
begin_hunk_10_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.di = add i32 %.fr133, %i.dh
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %i.dj ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.df, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.df, ptr noundef nonnull align 4 dereferenceable(12) %i.dk, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dk, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next151.6 = add nuw nsw i64 %indvars.iv150.6, 1 ; 2 uses
  %exitcond154.6.not = icmp eq i64 %indvars.iv.next151.6, %wide.trip.count153.6
  br i1 %exitcond154.6.not, label %..loopexit93_crit_edge.us.6, label %bb.k, !llvm.loop !29
end_hunk_10
begin_hunk_11_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.dr = add i32 %.fr133, %i.dq
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %i.ds ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.do, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.do, ptr noundef nonnull align 4 dereferenceable(12) %i.dt, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dt, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next151.7 = add nuw nsw i64 %indvars.iv150.7, 1 ; 2 uses
  %exitcond154.7.not = icmp eq i64 %indvars.iv.next151.7, %wide.trip.count153.7
  br i1 %exitcond154.7.not, label %.split114.us, label %bb.l, !llvm.loop !29
end_hunk_11
begin_hunk_12_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.eb = add i32 %.fr133, %i.ea
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %i.dx, i64 %i.ec ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.dy, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dy, ptr noundef nonnull align 4 dereferenceable(12) %i.ed, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ed, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ee = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %indvars.iv159 ; 2 uses
  %i.eg = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %i.ec ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.ef, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ef, ptr noundef nonnull align 4 dereferenceable(12) %i.eg, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.eg, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count162
  br i1 %exitcond163.not, label %.loopexit95, label %bb.m, !llvm.loop !30
end_hunk_12
begin_hunk_13_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.en = add i32 %.fr133, %i.em
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.eo ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.ek, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ek, ptr noundef nonnull align 4 dereferenceable(16) %i.ep, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ep, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %..loopexit_crit_edge.us, label %bb.n, !llvm.loop !31
end_hunk_13
begin_hunk_14_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.ew = add i32 %.fr133, %i.ev
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.ex ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.et, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.et, ptr noundef nonnull align 4 dereferenceable(16) %i.ey, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ey, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %indvars.iv.next165.1 = add nuw nsw i64 %indvars.iv164.1, 1 ; 2 uses
  %exitcond168.1.not = icmp eq i64 %indvars.iv.next165.1, %wide.trip.count167.1
  br i1 %exitcond168.1.not, label %..loopexit_crit_edge.us.1, label %bb.o, !llvm.loop !31
end_hunk_14
begin_hunk_15_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.ff = add i32 %.fr133, %i.fe
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.fg ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.fc, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fc, ptr noundef nonnull align 4 dereferenceable(16) %i.fh, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fh, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %indvars.iv.next165.2 = add nuw nsw i64 %indvars.iv164.2, 1 ; 2 uses
  %exitcond168.2.not = icmp eq i64 %indvars.iv.next165.2, %wide.trip.count167.2
  br i1 %exitcond168.2.not, label %..loopexit_crit_edge.us.2, label %bb.p, !llvm.loop !31
end_hunk_15
begin_hunk_16_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.fo = add i32 %.fr133, %i.fn
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.fp ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.fl, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fl, ptr noundef nonnull align 4 dereferenceable(16) %i.fq, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fq, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %indvars.iv.next165.3 = add nuw nsw i64 %indvars.iv164.3, 1 ; 2 uses
  %exitcond168.3.not = icmp eq i64 %indvars.iv.next165.3, %wide.trip.count167.3
  br i1 %exitcond168.3.not, label %..loopexit_crit_edge.us.3, label %bb.q, !llvm.loop !31
end_hunk_16
begin_hunk_17_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.fx = add i32 %.fr133, %i.fw
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.fy ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.fu, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fu, ptr noundef nonnull align 4 dereferenceable(16) %i.fz, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fz, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %indvars.iv.next165.4 = add nuw nsw i64 %indvars.iv164.4, 1 ; 2 uses
  %exitcond168.4.not = icmp eq i64 %indvars.iv.next165.4, %wide.trip.count167.4
  br i1 %exitcond168.4.not, label %..loopexit_crit_edge.us.4, label %bb.r, !llvm.loop !31
end_hunk_17
begin_hunk_18_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.gg = add i32 %.fr133, %i.gf
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %i.gh ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.gd, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gd, ptr noundef nonnull align 4 dereferenceable(16) %i.gi, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gi, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %indvars.iv.next165.5 = add nuw nsw i64 %indvars.iv164.5, 1 ; 2 uses
  %exitcond168.5.not = icmp eq i64 %indvars.iv.next165.5, %wide.trip.count167.5
  br i1 %exitcond168.5.not, label %..loopexit_crit_edge.us.5, label %bb.s, !llvm.loop !31
end_hunk_18
begin_hunk_19_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.gp = add i32 %.fr133, %i.go
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %i.gq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.gm, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gm, ptr noundef nonnull align 4 dereferenceable(16) %i.gr, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gr, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %indvars.iv.next165.6 = add nuw nsw i64 %indvars.iv164.6, 1 ; 2 uses
  %exitcond168.6.not = icmp eq i64 %indvars.iv.next165.6, %wide.trip.count167.6
  br i1 %exitcond168.6.not, label %..loopexit_crit_edge.us.6, label %bb.t, !llvm.loop !31
end_hunk_19
begin_hunk_20_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
  %i.gy = add i32 %.fr133, %i.gx
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %i.gz ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.gv, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gv, ptr noundef nonnull align 4 dereferenceable(16) %i.ha, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ha, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %indvars.iv.next165.7 = add nuw nsw i64 %indvars.iv164.7, 1 ; 2 uses
  %exitcond168.7.not = icmp eq i64 %indvars.iv.next165.7, %wide.trip.count167.7
  br i1 %exitcond168.7.not, label %.split123.us, label %bb.u, !llvm.loop !31
end_hunk_20

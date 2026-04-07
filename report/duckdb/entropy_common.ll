begin_hunk_0_@_ZN11duckdb_zstd19FSE_readNCount_bmi2EPsPjS1_PKvmi:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %3, i64 %4, i1 false)
  %i.g = call noundef i64 @_ZN11duckdb_zstd19FSE_readNCount_bmi2EPsPjS1_PKvmi(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.a, i64 noundef 8, i32 noundef 0) ; 3 uses
  %i.h = icmp ult i64 %i.g, -119
  %i.i = icmp ugt i64 %i.g, %4
  %i.j = and i1 %i.h, %i.i
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd19FSE_readNCount_bmi2EPsPjS1_PKvmi:bb.a
  %.1145.i.i25 = phi i32 [ %.2146.i.i, %bb.k ], [ %.0144.i.i, %bb.h ] ; 2 uses
  %i.ab = add i32 %.1141.i.i26, 36                ; 2 uses
  %.not187.i.i = icmp ugt ptr %.1135.i.i27, %i.t
  br i1 %.not187.i.i, label %bb.j, label %bb.i, !prof !7

bb.i:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.1135.i.i27, i64 3
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd19FSE_readNCount_bmi2EPsPjS1_PKvmi:bb.a
  %i.ai = or i32 %i.ah, -2147483648
  %i.aj = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %i.ai, i1 true) ; 2 uses
  %i.ak = icmp samesign ugt i32 %i.aj, 23
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.k, %bb.h
  %.1154.i.i.lcssa = phi i32 [ %.0153.i.i, %bb.h ], [ %i.ag, %bb.k ]
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstd19FSE_readNCount_bmi2EPsPjS1_PKvmi:bb.a
  %.not176.i.i = icmp ugt ptr %.1135.i.i.lcssa, %i.t
  %i.at = lshr i32 %i.as, 3
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  br i1 %.not176.i.i, label %bb.m, label %._crit_edge34, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %.1135.i.i.lcssa, i64 %i.au
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstd19FSE_readNCount_bmi2EPsPjS1_PKvmi:bb.a
  %i.bp = add nuw i32 %.2142.i.i, 1               ; 4 uses
  %i.bq = zext i32 %.2142.i.i to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bq
  store i16 %i.bo, ptr %i.br, align 2, !tbaa !10
  %i.bs = icmp ne i32 %i.bl, 0
  %i.bt = icmp slt i32 %.1162.i.i, %.0158.i.i
  br i1 %i.bt, label %bb.s, label %bb.u
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstd19FSE_readNCount_bmi2EPsPjS1_PKvmi:bb.a
  %.not181.i.i = icmp ugt ptr %.5.i.i, %i.t
  %i.bz = lshr i32 %.6150.i.i, 3
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  br i1 %.not181.i.i, label %bb.w, label %._crit_edge35, !prof !7

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 %i.ca
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstdL24FSE_readNCount_body_bmi2EPsPjS1_PKvm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %3, i64 %4, i1 false)
  %i.f = call noundef i64 @_ZN11duckdb_zstd19FSE_readNCount_bmi2EPsPjS1_PKvmi(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.a, i64 noundef 8, i32 noundef 0) ; 3 uses
  %i.g = icmp ult i64 %i.f, -119
  %i.h = icmp ugt i64 %i.f, %4
  %i.i = and i1 %i.g, %i.h
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstdL24FSE_readNCount_body_bmi2EPsPjS1_PKvm:bb.a
  %.1145.i18 = phi i32 [ %.2146.i, %bb.i ], [ %.0144.i, %bb.f ] ; 2 uses
  %i.aa = add i32 %.1141.i19, 36                  ; 2 uses
  %.not187.i = icmp ugt ptr %.1135.i20, %i.s
  br i1 %.not187.i, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.1135.i20, i64 3
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstdL24FSE_readNCount_body_bmi2EPsPjS1_PKvm:bb.a
  %i.ah = or i32 %i.ag, -2147483648
  %i.ai = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %i.ah, i1 true) ; 2 uses
  %i.aj = icmp samesign ugt i32 %i.ai, 23
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.i, %bb.f
  %.1154.i.lcssa = phi i32 [ %.0153.i, %bb.f ], [ %i.af, %bb.i ]
end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstdL24FSE_readNCount_body_bmi2EPsPjS1_PKvm:bb.a
  %.not176.i = icmp ugt ptr %.1135.i.lcssa, %i.s
  %i.as = lshr i32 %i.ar, 3
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  br i1 %.not176.i, label %bb.k, label %._crit_edge27, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.1135.i.lcssa, i64 %i.at
end_hunk_9
begin_hunk_10_@_ZN11duckdb_zstdL24FSE_readNCount_body_bmi2EPsPjS1_PKvm:bb.a
  %i.bo = add nuw i32 %.2142.i, 1                 ; 4 uses
  %i.bp = zext i32 %.2142.i to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bp
  store i16 %i.bn, ptr %i.bq, align 2, !tbaa !10
  %i.br = icmp ne i32 %i.bk, 0
  %i.bs = icmp slt i32 %.1162.i, %.0158.i
  br i1 %i.bs, label %bb.q, label %bb.s
end_hunk_10
begin_hunk_11_@_ZN11duckdb_zstdL24FSE_readNCount_body_bmi2EPsPjS1_PKvm:bb.a
  %.not181.i = icmp ugt ptr %.5.i, %i.s
  %i.by = lshr i32 %.6150.i, 3
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  br i1 %.not181.i, label %bb.u, label %._crit_edge28, !prof !7

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %.5.i, i64 %i.bz
end_hunk_11
begin_hunk_12_@_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi:bb.a
  br i1 %.not.i.i, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr %5, align 1, !tbaa !12      ; 2 uses
  %i.d = zext i8 %i.c to i64                      ; 7 uses
  %i.e = icmp slt i8 %i.c, 0
  br i1 %i.e, label %bb.e, label %bb.g
end_hunk_12
begin_hunk_13_@_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi:bb.a
  %i.t = and i64 %index, 9223372036854775792
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %wide.load = load <8 x i8>, ptr %i.u, align 1, !tbaa !12, !alias.scope !13
  %wide.load31 = load <8 x i8>, ptr %i.v, align 1, !tbaa !12, !alias.scope !13
  %i.w = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.x = lshr <8 x i8> %wide.load31, splat (i8 4)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load32 = load <8 x i8>, ptr %i.u, align 1, !tbaa !12, !alias.scope !13
  %wide.load33 = load <8 x i8>, ptr %i.v, align 1, !tbaa !12, !alias.scope !13
  %i.ab = and <8 x i8> %wide.load32, splat (i8 15)
  %i.ac = and <8 x i8> %wide.load33, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.w, <8 x i8> %i.ab, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.y, align 1, !tbaa !12, !alias.scope !16, !noalias !13
  %interleaved.vec34 = shufflevector <8 x i8> %i.x, <8 x i8> %i.ac, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34, ptr %i.aa, align 1, !tbaa !12, !alias.scope !16, !noalias !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
end_hunk_13
begin_hunk_14_@_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_14
begin_hunk_15_@_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi:bb.a
  %offset.idx = shl i64 %index37, 1
  %i.af = and i64 %index37, 9223372036854775804
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.af
  %wide.load38 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !12, !alias.scope !13 ; 2 uses
  %i.ah = lshr <4 x i8> %wide.load38, splat (i8 4)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %offset.idx
  %i.aj = and <4 x i8> %wide.load38, splat (i8 15)
  %interleaved.vec40 = shufflevector <4 x i8> %i.ah, <4 x i8> %i.aj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec40, ptr %i.ai, align 1, !tbaa !12, !alias.scope !16, !noalias !13
  %index.next41 = add nuw i64 %index37, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next41, %n.vec36
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.l, %n.vec36
end_hunk_15
begin_hunk_16_@_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi:bb.a
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.al = lshr exact i64 %indvars.iv.i, 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !12
  %i.ao = lshr i8 %i.an, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i ; 2 uses
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !12
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !12
  %i.ar = and i8 %i.aq, 15
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.at = icmp samesign ult i64 %indvars.iv.next.i, %i.f
  br i1 %i.at, label %.lr.ph.i, label %.loopexit.thread.i, !llvm.loop !23

.loopexit.thread.i:                               ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
end_hunk_16
begin_hunk_17_@_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi:bb.a
  %.072.i12.i = phi i32 [ %i.bk, %bb.i ], [ 0, %.lr.ph13.preheader.i ]
  %.075.i11.i = phi i32 [ %i.bl, %bb.i ], [ 0, %.lr.ph13.preheader.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !12  ; 2 uses
  %i.bb = icmp ugt i8 %i.ba, 12
  br i1 %i.bb, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit, label %bb.i

end_hunk_17
begin_hunk_18_@_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi:bb.a
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !3
  %i.bg = load i8, ptr %i.az, align 1, !tbaa !12
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = ashr i32 %i.bi, 1
end_hunk_18
begin_hunk_19_@_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi:bb.a
  %i.bl = add i32 %.075.i11.i, 1                  ; 2 uses
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %.not90.i.i = icmp ugt i64 %.074.i25.i, %i.bm
  br i1 %.not90.i.i, label %.lr.ph13.i, label %.critedge.i.i, !llvm.loop !24

.critedge.i.i:                                    ; preds = %bb.i
  %.old.i.i = icmp eq i32 %i.bk, 0
end_hunk_19
begin_hunk_20_@_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi:bb.a
  %i.bw = sub nuw nsw i32 32, %i.bt               ; 2 uses
  %i.bx = trunc nuw nsw i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %.074.i25.i
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !12
  %i.bz = zext nneg i32 %i.bw to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
end_hunk_20
begin_hunk_21_@_ZN11duckdb_zstdL23HUF_readStats_body_bmi2EPhmPjS1_S1_PKvmPvm:bb.a
  br i1 %.not.i, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %5, align 1, !tbaa !12      ; 2 uses
  %i.b = zext i8 %i.a to i64                      ; 5 uses
  %i.c = icmp slt i8 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.e
end_hunk_21
begin_hunk_22_@_ZN11duckdb_zstdL23HUF_readStats_body_bmi2EPhmPjS1_S1_PKvmPvm:bb.a
  %i.t = and i64 %index, 9223372036854775792
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %wide.load = load <8 x i8>, ptr %i.u, align 1, !tbaa !12, !alias.scope !25
  %wide.load36 = load <8 x i8>, ptr %i.v, align 1, !tbaa !12, !alias.scope !25
  %i.w = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.x = lshr <8 x i8> %wide.load36, splat (i8 4)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load37 = load <8 x i8>, ptr %i.u, align 1, !tbaa !12, !alias.scope !25
  %wide.load38 = load <8 x i8>, ptr %i.v, align 1, !tbaa !12, !alias.scope !25
  %i.ab = and <8 x i8> %wide.load37, splat (i8 15)
  %i.ac = and <8 x i8> %wide.load38, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.w, <8 x i8> %i.ab, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.y, align 1, !tbaa !12, !alias.scope !28, !noalias !25
  %interleaved.vec39 = shufflevector <8 x i8> %i.x, <8 x i8> %i.ac, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec39, ptr %i.aa, align 1, !tbaa !12, !alias.scope !28, !noalias !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.k
end_hunk_22
begin_hunk_23_@_ZN11duckdb_zstdL23HUF_readStats_body_bmi2EPhmPjS1_S1_PKvmPvm:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_23
begin_hunk_24_@_ZN11duckdb_zstdL23HUF_readStats_body_bmi2EPhmPjS1_S1_PKvmPvm:bb.a
  %offset.idx = shl i64 %index42, 1
  %i.af = and i64 %index42, 9223372036854775804
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.af
  %wide.load43 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !12, !alias.scope !25 ; 2 uses
  %i.ah = lshr <4 x i8> %wide.load43, splat (i8 4)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %offset.idx
  %i.aj = and <4 x i8> %wide.load43, splat (i8 15)
  %interleaved.vec45 = shufflevector <4 x i8> %i.ah, <4 x i8> %i.aj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec45, ptr %i.ai, align 1, !tbaa !12, !alias.scope !28, !noalias !25
  %index.next46 = add nuw i64 %index42, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next46, %n.vec41
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %n.vec41, %i.k
end_hunk_24
begin_hunk_25_@_ZN11duckdb_zstdL23HUF_readStats_body_bmi2EPhmPjS1_S1_PKvmPvm:bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %i.al = lshr exact i64 %indvars.iv, 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !12
  %i.ao = lshr i8 %i.an, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !12
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !12
  %i.ar = and i8 %i.aq, 15
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !12
  %indvars.iv.next = add nuw i64 %indvars.iv, 2   ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %i.au = icmp ugt i32 %i.h, %indvars
  br i1 %i.au, label %.lr.ph, label %.loopexit.thread, !llvm.loop !32

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
end_hunk_25
begin_hunk_26_@_ZN11duckdb_zstdL23HUF_readStats_body_bmi2EPhmPjS1_S1_PKvmPvm:bb.a
  %.072.i12 = phi i32 [ %i.bl, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %.075.i11 = phi i32 [ %i.bm, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !12  ; 2 uses
  %i.bc = icmp ugt i8 %i.bb, 12
  br i1 %i.bc, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit, label %bb.g

end_hunk_26
begin_hunk_27_@_ZN11duckdb_zstdL23HUF_readStats_body_bmi2EPhmPjS1_S1_PKvmPvm:bb.a
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !3
  %i.bh = load i8, ptr %i.ba, align 1, !tbaa !12
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = shl nuw i32 1, %i.bi
  %i.bk = ashr i32 %i.bj, 1
end_hunk_27
begin_hunk_28_@_ZN11duckdb_zstdL23HUF_readStats_body_bmi2EPhmPjS1_S1_PKvmPvm:bb.a
  %i.bm = add i32 %.075.i11, 1                    ; 2 uses
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %.not90.i = icmp ugt i64 %.074.i25, %i.bn
  br i1 %.not90.i, label %.lr.ph13, label %.critedge.i, !llvm.loop !24

.critedge.i:                                      ; preds = %bb.g
  %.old.i = icmp eq i32 %i.bl, 0
end_hunk_28
begin_hunk_29_@_ZN11duckdb_zstdL23HUF_readStats_body_bmi2EPhmPjS1_S1_PKvmPvm:bb.a
  %i.bx = sub nuw nsw i32 32, %i.bu               ; 2 uses
  %i.by = trunc nuw nsw i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %.074.i25
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !12
  %i.ca = zext nneg i32 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
end_hunk_29
begin_hunk_30_@llvm.umax.i32
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !5, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15}
!15 = distinct !{!15, !"LVerDomain"}
!16 = !{!17}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !9, !19, !20}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!"branch_weights", i32 4, i32 12}
!22 = distinct !{!22, !9, !19, !20}
!23 = distinct !{!23, !9, !19}
!24 = distinct !{!24, !9}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !9, !19, !20}
!31 = distinct !{!31, !9, !19, !20}
!32 = distinct !{!32, !9, !19}
end_hunk_30

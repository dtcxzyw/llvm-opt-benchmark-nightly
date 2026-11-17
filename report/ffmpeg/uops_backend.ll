Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/uops_backend?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 236
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 243
begin_hunk_0_@process
define internal void @process(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
bb.a:
  %6 = alloca %union.block_t, align 4             ; 3 uses
  %7 = alloca %union.block_t, align 4             ; 3 uses
  %8 = alloca %union.block_t, align 4             ; 3 uses
  %9 = alloca %union.block_t, align 4             ; 3 uses
  %10 = alloca %struct.SwsOpIter, align 16        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 72
  store ptr %0, ptr %i.a, align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.d = load <2 x ptr>, ptr %0, align 8, !tbaa !146
  %i.e = ptrtoint <2 x ptr> %i.d to <2 x i64>
  store <2 x i64> %i.e, ptr %10, align 16, !tbaa !109
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !146
  %i.g = ptrtoint <2 x ptr> %i.f to <2 x i64>
  store <2 x i64> %i.g, ptr %i.c, align 16, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  %i.l = load <2 x ptr>, ptr %i.h, align 8, !tbaa !146
  %i.m = ptrtoint <2 x ptr> %i.l to <2 x i64>
  store <2 x i64> %i.m, ptr %i.i, align 16, !tbaa !109
  %i.n = load <2 x ptr>, ptr %i.j, align 8, !tbaa !146
  %i.o = ptrtoint <2 x ptr> %i.n to <2 x i64>
  store <2 x i64> %i.o, ptr %i.k, align 16, !tbaa !109
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 68 ; 3 uses
  store i32 %3, ptr %i.p, align 4, !tbaa !110
  %i.q = icmp slt i32 %3, %5
  br i1 %i.q, label %.preheader.lr.ph, label %._crit_edge49

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.r = icmp slt i32 %2, %4
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  br i1 %i.r, label %.preheader.us.preheader, label %._crit_edge49

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.backedge, %.preheader.us.preheader
  %.04347.us = phi i32 [ %2, %.preheader.us.preheader ], [ %.04347.us.be, %.preheader.us.backedge ] ; 2 uses
  %i.ad = shl nsw i32 %.04347.us, 5
  store i32 %i.ad, ptr %i.s, align 16, !tbaa !111
  %i.ae = load ptr, ptr %1, align 16, !tbaa !113
  call void %i.ae(ptr noundef nonnull %10, ptr noundef nonnull %i.t, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %i.af = add i32 %.04347.us, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, %4
  br i1 %exitcond.not, label %._crit_edge.us, label %.preheader.us.backedge

.preheader.us.backedge:                           ; preds = %.preheader.us, %bb.c
  %.04347.us.be = phi i32 [ %i.af, %.preheader.us ], [ %2, %bb.c ]
  br label %.preheader.us

bb.b:                                             ; preds = %._crit_edge.us
  %i.ag = sext i32 %.pre96 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !104
  %i.aj = sext i32 %i.ai to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.us
  %i.ak = phi i64 [ %i.aj, %bb.b ], [ 0, %._crit_edge.us ] ; 4 uses
  %i.al = load i64, ptr %i.w, align 8, !tbaa !109
  %i.am = mul nsw i64 %i.al, %i.ak
  %i.an = load <2 x i64>, ptr %i.v, align 8, !tbaa !109
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !109
  %i.ap = mul nsw i64 %i.ao, %i.ak
  %i.aq = insertelement <2 x i64> poison, i64 %i.am, i64 0
  %i.ar = insertelement <2 x i64> %i.aq, i64 %i.ap, i64 1
  %i.as = add nsw <2 x i64> %i.ar, %i.an
  %i.at = load <2 x i64>, ptr %10, align 16, !tbaa !109
  %i.au = add <2 x i64> %i.as, %i.at
  store <2 x i64> %i.au, ptr %10, align 16, !tbaa !109
  %i.av = load <2 x i64>, ptr %i.x, align 8, !tbaa !109
  %i.aw = load <2 x i64>, ptr %i.c, align 16, !tbaa !109
  %i.ax = add <2 x i64> %i.aw, %i.av
  store <2 x i64> %i.ax, ptr %i.c, align 16, !tbaa !109
  %i.ay = load i64, ptr %i.aa, align 8, !tbaa !109
  %i.az = mul nsw i64 %i.ay, %i.ak
  %i.ba = load <2 x i64>, ptr %i.z, align 8, !tbaa !109
  %i.bb = load i64, ptr %i.ac, align 8, !tbaa !109
  %i.bc = mul nsw i64 %i.bb, %i.ak
  %i.bd = insertelement <2 x i64> poison, i64 %i.az, i64 0
  %i.be = insertelement <2 x i64> %i.bd, i64 %i.bc, i64 1
  %i.bf = add nsw <2 x i64> %i.be, %i.ba
  %i.bg = load <2 x i64>, ptr %i.i, align 16, !tbaa !109
  %i.bh = add <2 x i64> %i.bf, %i.bg
  store <2 x i64> %i.bh, ptr %i.i, align 16, !tbaa !109
  %i.bi = load <2 x i64>, ptr %i.ab, align 8, !tbaa !109
  %i.bj = load <2 x i64>, ptr %i.k, align 16, !tbaa !109
  %i.bk = add <2 x i64> %i.bj, %i.bi
  store <2 x i64> %i.bk, ptr %i.k, align 16, !tbaa !109
  %i.bl = add nsw i32 %.pre96, 1                  ; 2 uses
  store i32 %i.bl, ptr %i.p, align 4, !tbaa !110
  %i.bm = icmp slt i32 %i.bl, %5
  br i1 %i.bm, label %.preheader.us.backedge, label %._crit_edge49

._crit_edge.us:                                   ; preds = %.preheader.us
  %i.bn = load ptr, ptr %i.u, align 8, !tbaa !147 ; 2 uses
  %.not.us = icmp eq ptr %i.bn, null
  %.pre96 = load i32, ptr %i.p, align 4, !tbaa !110 ; 2 uses
  br i1 %.not.us, label %bb.c, label %bb.b

._crit_edge49:                                    ; preds = %bb.c, %.preheader.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @ff_sws_op_chain_free_cb(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @ff_sws_uop_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_sws_uop_list_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @u8_read_planar_x_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 32)) %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
read_planar_U8.exit:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.c = load <16 x i8>, ptr %i.b, align 1, !tbaa !103, !alias.scope !159
  store <16 x i8> %i.c, ptr %2, align 1, !tbaa !103, !alias.scope !158
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load <16 x i8>, ptr %i.d, align 1, !tbaa !103, !alias.scope !159
  store <16 x i8> %i.f, ptr %i.e, align 1, !tbaa !103, !alias.scope !158
  %i.g = add i64 %i.a, 32
  store i64 %i.g, ptr %0, align 8, !tbaa !109, !alias.scope !156
  %i.h = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !157
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.h(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12, !noalias !160, !inline_history !0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_read_planar_xy_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 32)) %2, ptr noalias noundef initializes((0, 32)) %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
read_planar_U8.exit:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.f = load <16 x i8>, ptr %i.b, align 1, !tbaa !103, !alias.scope !174
  store <16 x i8> %i.f, ptr %2, align 1, !tbaa !103, !alias.scope !172
  %i.g = load <16 x i8>, ptr %i.e, align 1, !tbaa !103, !alias.scope !175
  store <16 x i8> %i.g, ptr %3, align 1, !tbaa !103, !alias.scope !173
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load <16 x i8>, ptr %i.h, align 1, !tbaa !103, !alias.scope !174
  store <16 x i8> %i.l, ptr %i.i, align 1, !tbaa !103, !alias.scope !172
  %i.m = load <16 x i8>, ptr %i.j, align 1, !tbaa !103, !alias.scope !175
  store <16 x i8> %i.m, ptr %i.k, align 1, !tbaa !103, !alias.scope !173
  %i.n = add i64 %i.a, 32
  store i64 %i.n, ptr %0, align 8, !tbaa !109, !alias.scope !170
  %i.o = add i64 %i.d, 32
  store i64 %i.o, ptr %i.c, align 8, !tbaa !109, !alias.scope !170
  %i.p = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !171
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.p(ptr noundef nonnull %0, ptr noundef nonnull %i.q, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5) #12, !noalias !176, !inline_history !0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_read_planar_xyz_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 32)) %2, ptr noalias noundef initializes((0, 32)) %3, ptr noalias noundef initializes((0, 32)) %4, ptr noalias noundef %5) #0 {
vector.ph:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !109  ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <16 x i8>, ptr %i.b, align 1, !tbaa !103, !alias.scope !192, !llvm.access.group !1
  %wide.load12 = load <16 x i8>, ptr %i.i, align 1, !tbaa !103, !alias.scope !192, !llvm.access.group !1
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <16 x i8> %wide.load, ptr %2, align 1, !tbaa !103, !alias.scope !189, !llvm.access.group !1
  store <16 x i8> %wide.load12, ptr %i.j, align 1, !tbaa !103, !alias.scope !189, !llvm.access.group !1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load13 = load <16 x i8>, ptr %i.e, align 1, !tbaa !103, !alias.scope !193, !llvm.access.group !1
  %wide.load14 = load <16 x i8>, ptr %i.k, align 1, !tbaa !103, !alias.scope !193, !llvm.access.group !1
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <16 x i8> %wide.load13, ptr %3, align 1, !tbaa !103, !alias.scope !190, !llvm.access.group !1
  store <16 x i8> %wide.load14, ptr %i.l, align 1, !tbaa !103, !alias.scope !190, !llvm.access.group !1
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load15 = load <16 x i8>, ptr %i.h, align 1, !tbaa !103, !alias.scope !194, !llvm.access.group !1
  %wide.load16 = load <16 x i8>, ptr %i.m, align 1, !tbaa !103, !alias.scope !194, !llvm.access.group !1
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <16 x i8> %wide.load15, ptr %4, align 1, !tbaa !103, !alias.scope !191, !llvm.access.group !1
  store <16 x i8> %wide.load16, ptr %i.n, align 1, !tbaa !103, !alias.scope !191, !llvm.access.group !1
  %i.o = add i64 %i.a, 32
  store i64 %i.o, ptr %0, align 8, !tbaa !109, !alias.scope !187
  %i.p = add i64 %i.d, 32
  store i64 %i.p, ptr %i.c, align 8, !tbaa !109, !alias.scope !187
  %i.q = add i64 %i.g, 32
  store i64 %i.q, ptr %i.f, align 8, !tbaa !109, !alias.scope !187
  %i.r = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !188
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.r(ptr noundef nonnull %0, ptr noundef nonnull %i.s, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !noalias !195, !inline_history !0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_read_planar_xyzw_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 32)) %2, ptr noalias noundef initializes((0, 32)) %3, ptr noalias noundef initializes((0, 32)) %4, ptr noalias noundef initializes((0, 32)) %5) #0 {
vector.ph:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !109  ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !109  ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <16 x i8>, ptr %i.b, align 1, !tbaa !103, !alias.scope !213, !llvm.access.group !1
  %wide.load12 = load <16 x i8>, ptr %i.l, align 1, !tbaa !103, !alias.scope !213, !llvm.access.group !1
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <16 x i8> %wide.load, ptr %2, align 1, !tbaa !103, !alias.scope !209, !llvm.access.group !1
  store <16 x i8> %wide.load12, ptr %i.m, align 1, !tbaa !103, !alias.scope !209, !llvm.access.group !1
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load13 = load <16 x i8>, ptr %i.e, align 1, !tbaa !103, !alias.scope !214, !llvm.access.group !1
  %wide.load14 = load <16 x i8>, ptr %i.n, align 1, !tbaa !103, !alias.scope !214, !llvm.access.group !1
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <16 x i8> %wide.load13, ptr %3, align 1, !tbaa !103, !alias.scope !210, !llvm.access.group !1
  store <16 x i8> %wide.load14, ptr %i.o, align 1, !tbaa !103, !alias.scope !210, !llvm.access.group !1
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load15 = load <16 x i8>, ptr %i.h, align 1, !tbaa !103, !alias.scope !215, !llvm.access.group !1
  %wide.load16 = load <16 x i8>, ptr %i.p, align 1, !tbaa !103, !alias.scope !215, !llvm.access.group !1
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <16 x i8> %wide.load15, ptr %4, align 1, !tbaa !103, !alias.scope !211, !llvm.access.group !1
  store <16 x i8> %wide.load16, ptr %i.q, align 1, !tbaa !103, !alias.scope !211, !llvm.access.group !1
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load17 = load <16 x i8>, ptr %i.k, align 1, !tbaa !103, !alias.scope !216, !llvm.access.group !1
  %wide.load18 = load <16 x i8>, ptr %i.r, align 1, !tbaa !103, !alias.scope !216, !llvm.access.group !1
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <16 x i8> %wide.load17, ptr %5, align 1, !tbaa !103, !alias.scope !212, !llvm.access.group !1
  store <16 x i8> %wide.load18, ptr %i.s, align 1, !tbaa !103, !alias.scope !212, !llvm.access.group !1
  %i.t = add i64 %i.a, 32
  store i64 %i.t, ptr %0, align 8, !tbaa !109, !alias.scope !207
  %i.u = add i64 %i.d, 32
  store i64 %i.u, ptr %i.c, align 8, !tbaa !109, !alias.scope !207
  %i.v = add i64 %i.g, 32
  store i64 %i.v, ptr %i.f, align 8, !tbaa !109, !alias.scope !207
  %i.w = add i64 %i.j, 32
  store i64 %i.w, ptr %i.i, align 8, !tbaa !109, !alias.scope !207
  %i.x = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !208
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.x(ptr noundef nonnull %0, ptr noundef nonnull %i.y, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !noalias !217, !inline_history !0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_read_planar_fv_x_f32_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias nofree readnone captures(none) %2, ptr noalias nofree readnone captures(none) %3, ptr noalias nofree readnone captures(none) %4, ptr noalias nofree readnone captures(none) %5) #0 {
bb.a:
  %6 = alloca %union.block_t, align 4             ; 37 uses
  %7 = alloca %union.block_t, align 4             ; 3 uses
  %8 = alloca %union.block_t, align 4             ; 3 uses
  %9 = alloca %union.block_t, align 4             ; 3 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !107, !alias.scope !225
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !103, !alias.scope !226
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !103, !alias.scope !226 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !110, !alias.scope !225
  %i.j = mul nsw i32 %i.i, %i.g
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12, !noalias !227
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12, !noalias !227
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12, !noalias !227
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12, !noalias !227
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %6, i8 0, i64 128, i1 false), !noalias !227
  %i.m = icmp sgt i32 %i.g, 0
  br i1 %i.m, label %.lr.ph, label %read_planar_fv_U8.exit

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %wide.trip.count = zext nneg i32 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 76 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 84 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 92 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 100 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 108 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 116 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 124 ; 2 uses
  %.promoted = load float, ptr %6, align 4, !tbaa !103, !noalias !227
  %.promoted17 = load float, ptr %i.o, align 4, !tbaa !103, !noalias !227
  %.promoted18 = load float, ptr %i.p, align 4, !tbaa !103, !noalias !227
  %.promoted19 = load float, ptr %i.q, align 4, !tbaa !103, !noalias !227
  %.promoted20 = load float, ptr %i.r, align 4, !tbaa !103, !noalias !227
  %.promoted21 = load float, ptr %i.s, align 4, !tbaa !103, !noalias !227
  %.promoted22 = load float, ptr %i.t, align 4, !tbaa !103, !noalias !227
  %.promoted23 = load float, ptr %i.u, align 4, !tbaa !103, !noalias !227
  %.promoted24 = load float, ptr %i.v, align 4, !tbaa !103, !noalias !227
  %.promoted25 = load float, ptr %i.w, align 4, !tbaa !103, !noalias !227
  %.promoted26 = load float, ptr %i.x, align 4, !tbaa !103, !noalias !227
  %.promoted27 = load float, ptr %i.y, align 4, !tbaa !103, !noalias !227
  %.promoted28 = load float, ptr %i.z, align 4, !tbaa !103, !noalias !227
  %.promoted29 = load float, ptr %i.aa, align 4, !tbaa !103, !noalias !227
  %.promoted30 = load float, ptr %i.ab, align 4, !tbaa !103, !noalias !227
  %.promoted31 = load float, ptr %i.ac, align 4, !tbaa !103, !noalias !227
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.at = phi float [ %.promoted31, %.lr.ph ], [ %i.el, %bb.b ]
  %i.au = phi float [ %.promoted30, %.lr.ph ], [ %i.eg, %bb.b ]
  %i.av = phi float [ %.promoted29, %.lr.ph ], [ %i.eb, %bb.b ]
  %i.aw = phi float [ %.promoted28, %.lr.ph ], [ %i.dw, %bb.b ]
  %i.ax = phi float [ %.promoted27, %.lr.ph ], [ %i.dr, %bb.b ]
  %i.ay = phi float [ %.promoted26, %.lr.ph ], [ %i.dm, %bb.b ]
  %i.az = phi float [ %.promoted25, %.lr.ph ], [ %i.dh, %bb.b ]
  %i.ba = phi float [ %.promoted24, %.lr.ph ], [ %i.dc, %bb.b ]
  %i.bb = phi float [ %.promoted23, %.lr.ph ], [ %i.cx, %bb.b ]
  %i.bc = phi float [ %.promoted22, %.lr.ph ], [ %i.cs, %bb.b ]
  %i.bd = phi float [ %.promoted21, %.lr.ph ], [ %i.cn, %bb.b ]
  %i.be = phi float [ %.promoted20, %.lr.ph ], [ %i.ci, %bb.b ]
  %i.bf = phi float [ %.promoted19, %.lr.ph ], [ %i.cd, %bb.b ]
  %i.bg = phi float [ %.promoted18, %.lr.ph ], [ %i.by, %bb.b ]
  %i.bh = phi float [ %.promoted17, %.lr.ph ], [ %i.bt, %bb.b ]
  %i.bi = phi float [ %.promoted, %.lr.ph ], [ %i.bo, %bb.b ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.065.i.in12 = phi i64 [ %i.a, %.lr.ph ], [ %i.if, %bb.b ] ; 2 uses
  %.065.i14 = inttoptr i64 %.065.i.in12 to ptr    ; 32 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !117, !noalias !228 ; 32 uses
  %i.bl = load i8, ptr %.065.i14, align 1, !tbaa !103, !noalias !228, !llvm.access.group !2
  %i.bm = uitofp i8 %i.bl to float
  %i.bn = fmul nsz float %i.bk, %i.bm
  %i.bo = fadd nsz float %i.bi, %i.bn             ; 2 uses
  store float %i.bo, ptr %6, align 4, !tbaa !103, !noalias !227, !llvm.access.group !2
  %i.bp = getelementptr inbounds nuw i8, ptr %.065.i14, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !103, !noalias !228, !llvm.access.group !2
  %i.br = uitofp i8 %i.bq to float
  %i.bs = fmul nsz float %i.bk, %i.br
  %i.bt = fadd nsz float %i.bh, %i.bs             ; 2 uses
  store float %i.bt, ptr %i.o, align 4, !tbaa !103, !noalias !227, !llvm.access.group !2
  %i.bu = getelementptr inbounds nuw i8, ptr %.065.i14, i64 2
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !103, !noalias !228, !llvm.access.group !2
  %i.bw = uitofp i8 %i.bv to float
  %i.bx = fmul nsz float %i.bk, %i.bw
  %i.by = fadd nsz float %i.bg, %i.bx             ; 2 uses
  store float %i.by, ptr %i.p, align 4, !tbaa !103, !noalias !227, !llvm.access.group !2
  %i.bz = getelementptr inbounds nuw i8, ptr %.065.i14, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !103, !noalias !228, !llvm.access.group !2
  %i.cb = uitofp i8 %i.ca to float
  %i.cc = fmul nsz float %i.bk, %i.cb
  %i.cd = fadd nsz float %i.bf, %i.cc             ; 2 uses
  store float %i.cd, ptr %i.q, align 4, !tbaa !103, !noalias !227, !llvm.access.group !2
  %i.ce = getelementptr inbounds nuw i8, ptr %.065.i14, i64 4
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !103, !noalias !228, !llvm.access.group !2
  %i.cg = uitofp i8 %i.cf to float
  %i.ch = fmul nsz float %i.bk, %i.cg
  %i.ci = fadd nsz float %i.be, %i.ch             ; 2 uses
  store float %i.ci, ptr %i.r, align 4, !tbaa !103, !noalias !227, !llvm.access.group !2
  %i.cj = getelementptr inbounds nuw i8, ptr %.065.i14, i64 5
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !103, !noalias !228, !llvm.access.group !2
  %i.cl = uitofp i8 %i.ck to float
  %i.cm = fmul nsz float %i.bk, %i.cl
  %i.cn = fadd nsz float %i.bd, %i.cm             ; 2 uses
  store float %i.cn, ptr %i.s, align 4, !tbaa !103, !noalias !227, !llvm.access.group !2
  %i.co = getelementptr inbounds nuw i8, ptr %.065.i14, i64 6
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !103, !noalias !228, !llvm.access.group !2
end_hunk_0
begin_hunk_1_@u8_read_packed_xy_c:read_packed_U8.exit
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 11
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 11
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 27
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 13
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 15
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 15
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 35
  %i.db = load i8, ptr %i.da, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i8 %i.de, ptr %i.df, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 37
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 38
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 19
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 39
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 21
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 43
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 45
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 46
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 23
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 47
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 %i.el, ptr %i.em, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 %i.er, ptr %i.es, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 25
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 51
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 53
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 54
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 27
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 55
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 27
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 29
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 30
  store i8 %i.fy, ptr %i.fz, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 61
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 62
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 31
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !103, !alias.scope !324, !llvm.access.group !7
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 63
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !103, !alias.scope !326, !llvm.access.group !7
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 31
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !103, !alias.scope !325, !llvm.access.group !7
  %i.gj = add i64 %i.a, 64
  store i64 %i.gj, ptr %0, align 8, !tbaa !109, !alias.scope !322
  %i.gk = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !323
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.gk(ptr noundef nonnull %0, ptr noundef nonnull %i.gl, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5) #12, !noalias !326, !inline_history !8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_read_packed_xyz_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 32)) %2, ptr noalias noundef initializes((0, 32)) %3, ptr noalias noundef initializes((0, 32)) %4, ptr noalias noundef %5) #0 {
vector.ph:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 20 uses
  %i.c = mul nuw nsw i64 %index, 3
  %i.d = mul nuw i64 %index, 3
  %i.e = mul nuw i64 %index, 3
  %i.f = mul nuw i64 %index, 3
  %i.g = mul nuw i64 %index, 3
  %i.h = mul nuw i64 %index, 3
  %i.i = mul nuw i64 %index, 3
  %i.j = mul nuw i64 %index, 3
  %i.k = mul nuw i64 %index, 3
  %i.l = mul nuw i64 %index, 3
  %i.m = mul nuw i64 %index, 3
  %i.n = mul nuw i64 %index, 3
  %i.o = mul nuw i64 %index, 3
  %i.p = mul nuw i64 %index, 3
  %i.q = mul nuw i64 %index, 3
  %i.r = mul nuw i64 %index, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 18
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.j ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.l ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 27
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 30
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.n ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 39
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 42
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 45
  %i.ax = load i8, ptr %i.s, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.ay = load i8, ptr %i.u, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.az = load i8, ptr %i.w, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.ba = load i8, ptr %i.y, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.bb = load i8, ptr %i.aa, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.bc = load i8, ptr %i.ac, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.bd = load i8, ptr %i.ae, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.be = load i8, ptr %i.ag, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.bf = load i8, ptr %i.ai, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.bg = load i8, ptr %i.ak, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.bh = load i8, ptr %i.am, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.bi = load i8, ptr %i.ao, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.bj = load i8, ptr %i.aq, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.bk = load i8, ptr %i.as, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.bl = load i8, ptr %i.au, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.bm = load i8, ptr %i.aw, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.bn = insertelement <16 x i8> poison, i8 %i.ax, i64 0
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 1
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 2
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 3
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 4
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 5
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 6
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 7
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 8
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 9
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 10
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 11
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 12
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 13
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 14
  %i.cc = insertelement <16 x i8> %i.cb, i8 %i.bm, i64 15
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 %index
  store <16 x i8> %i.cc, ptr %i.cd, align 1, !tbaa !103, !alias.scope !337, !llvm.access.group !7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 7
  %i.ch = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.z, i64 13
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ad, i64 19
  %i.cl = getelementptr inbounds nuw i8, ptr %i.af, i64 22
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ah, i64 25
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  %i.co = getelementptr inbounds nuw i8, ptr %i.al, i64 31
  %i.cp = getelementptr inbounds nuw i8, ptr %i.an, i64 34
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ap, i64 37
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %i.at, i64 43
  %i.ct = getelementptr inbounds nuw i8, ptr %i.av, i64 46
  %i.cu = load i8, ptr %i.ce, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.cv = load i8, ptr %i.cf, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.cw = load i8, ptr %i.cg, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.cx = load i8, ptr %i.ch, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.cy = load i8, ptr %i.ci, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.cz = load i8, ptr %i.cj, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.da = load i8, ptr %i.ck, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.db = load i8, ptr %i.cl, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.dc = load i8, ptr %i.cm, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.dd = load i8, ptr %i.cn, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.de = load i8, ptr %i.co, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.df = load i8, ptr %i.cp, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.dg = load i8, ptr %i.cq, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.dh = load i8, ptr %i.cr, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.di = load i8, ptr %i.cs, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.dj = load i8, ptr %i.ct, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.dk = insertelement <16 x i8> poison, i8 %i.cu, i64 0
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 1
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 2
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 3
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 4
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 5
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 6
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 7
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 8
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 9
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 10
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 11
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 12
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 13
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 14
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 15
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 %index
  store <16 x i8> %i.dz, ptr %i.ea, align 1, !tbaa !103, !alias.scope !338, !llvm.access.group !7
  %i.eb = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  %i.ed = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.ef = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ab, i64 17
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ei = getelementptr inbounds nuw i8, ptr %i.af, i64 23
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ah, i64 26
  %i.ek = getelementptr inbounds nuw i8, ptr %i.aj, i64 29
  %i.el = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.an, i64 35
  %i.en = getelementptr inbounds nuw i8, ptr %i.ap, i64 38
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ar, i64 41
  %i.ep = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.eq = getelementptr inbounds nuw i8, ptr %i.av, i64 47
  %i.er = load i8, ptr %i.eb, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.es = load i8, ptr %i.ec, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.et = load i8, ptr %i.ed, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.eu = load i8, ptr %i.ee, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.ev = load i8, ptr %i.ef, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.ew = load i8, ptr %i.eg, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.ex = load i8, ptr %i.eh, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.ey = load i8, ptr %i.ei, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.ez = load i8, ptr %i.ej, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.fa = load i8, ptr %i.ek, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.fb = load i8, ptr %i.el, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.fc = load i8, ptr %i.em, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.fd = load i8, ptr %i.en, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.fe = load i8, ptr %i.eo, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.ff = load i8, ptr %i.ep, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.fg = load i8, ptr %i.eq, align 1, !tbaa !103, !alias.scope !340, !llvm.access.group !7
  %i.fh = insertelement <16 x i8> poison, i8 %i.er, i64 0
  %i.fi = insertelement <16 x i8> %i.fh, i8 %i.es, i64 1
  %i.fj = insertelement <16 x i8> %i.fi, i8 %i.et, i64 2
  %i.fk = insertelement <16 x i8> %i.fj, i8 %i.eu, i64 3
  %i.fl = insertelement <16 x i8> %i.fk, i8 %i.ev, i64 4
  %i.fm = insertelement <16 x i8> %i.fl, i8 %i.ew, i64 5
  %i.fn = insertelement <16 x i8> %i.fm, i8 %i.ex, i64 6
  %i.fo = insertelement <16 x i8> %i.fn, i8 %i.ey, i64 7
  %i.fp = insertelement <16 x i8> %i.fo, i8 %i.ez, i64 8
  %i.fq = insertelement <16 x i8> %i.fp, i8 %i.fa, i64 9
  %i.fr = insertelement <16 x i8> %i.fq, i8 %i.fb, i64 10
  %i.fs = insertelement <16 x i8> %i.fr, i8 %i.fc, i64 11
  %i.ft = insertelement <16 x i8> %i.fs, i8 %i.fd, i64 12
  %i.fu = insertelement <16 x i8> %i.ft, i8 %i.fe, i64 13
  %i.fv = insertelement <16 x i8> %i.fu, i8 %i.ff, i64 14
  %i.fw = insertelement <16 x i8> %i.fv, i8 %i.fg, i64 15
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 %index
  store <16 x i8> %i.fw, ptr %i.fx, align 1, !tbaa !103, !alias.scope !339, !llvm.access.group !7
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fy = icmp eq i64 %index.next, 32
  br i1 %i.fy, label %read_packed_U8.exit, label %vector.body, !llvm.loop !334

read_packed_U8.exit:                              ; preds = %vector.body
  %i.fz = add i64 %i.a, 96
  store i64 %i.fz, ptr %0, align 8, !tbaa !109, !alias.scope !335
  %i.ga = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !336
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.ga(ptr noundef nonnull %0, ptr noundef nonnull %i.gb, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !noalias !340, !inline_history !8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_read_packed_xyzw_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 32)) %2, ptr noalias noundef initializes((0, 32)) %3, ptr noalias noundef initializes((0, 32)) %4, ptr noalias noundef initializes((0, 32)) %5) #0 {
vector.ph:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 21 uses
  %i.c = shl nuw nsw i64 %index, 2
  %i.d = shl i64 %index, 2
  %i.e = shl i64 %index, 2
  %i.f = shl i64 %index, 2
  %i.g = shl i64 %index, 2
  %i.h = shl i64 %index, 2
  %i.i = shl i64 %index, 2
  %i.j = shl i64 %index, 2
  %i.k = shl i64 %index, 2
  %i.l = shl i64 %index, 2
  %i.m = shl i64 %index, 2
  %i.n = shl i64 %index, 2
  %i.o = shl i64 %index, 2
  %i.p = shl i64 %index, 2
  %i.q = shl i64 %index, 2
  %i.r = shl i64 %index, 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.j ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.l ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.n ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 52
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 60
  %i.ax = load i8, ptr %i.s, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.ay = load i8, ptr %i.u, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.az = load i8, ptr %i.w, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.ba = load i8, ptr %i.y, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.bb = load i8, ptr %i.aa, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.bc = load i8, ptr %i.ac, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.bd = load i8, ptr %i.ae, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.be = load i8, ptr %i.ag, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.bf = load i8, ptr %i.ai, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.bg = load i8, ptr %i.ak, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.bh = load i8, ptr %i.am, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.bi = load i8, ptr %i.ao, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.bj = load i8, ptr %i.aq, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.bk = load i8, ptr %i.as, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.bl = load i8, ptr %i.au, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.bm = load i8, ptr %i.aw, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.bn = insertelement <16 x i8> poison, i8 %i.ax, i64 0
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 1
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 2
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 3
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 4
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 5
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 6
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 7
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 8
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 9
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 10
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 11
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 12
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 13
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 14
  %i.cc = insertelement <16 x i8> %i.cb, i8 %i.bm, i64 15
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 %index
  store <16 x i8> %i.cc, ptr %i.cd, align 1, !tbaa !103, !alias.scope !352, !llvm.access.group !7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 9
  %i.ch = getelementptr inbounds nuw i8, ptr %i.x, i64 13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.z, i64 17
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ab, i64 21
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ad, i64 25
  %i.cl = getelementptr inbounds nuw i8, ptr %i.af, i64 29
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ah, i64 33
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aj, i64 37
  %i.co = getelementptr inbounds nuw i8, ptr %i.al, i64 41
  %i.cp = getelementptr inbounds nuw i8, ptr %i.an, i64 45
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ap, i64 49
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ar, i64 53
  %i.cs = getelementptr inbounds nuw i8, ptr %i.at, i64 57
  %i.ct = getelementptr inbounds nuw i8, ptr %i.av, i64 61
  %i.cu = load i8, ptr %i.ce, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.cv = load i8, ptr %i.cf, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.cw = load i8, ptr %i.cg, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.cx = load i8, ptr %i.ch, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.cy = load i8, ptr %i.ci, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.cz = load i8, ptr %i.cj, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.da = load i8, ptr %i.ck, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.db = load i8, ptr %i.cl, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.dc = load i8, ptr %i.cm, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.dd = load i8, ptr %i.cn, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.de = load i8, ptr %i.co, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.df = load i8, ptr %i.cp, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.dg = load i8, ptr %i.cq, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.dh = load i8, ptr %i.cr, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.di = load i8, ptr %i.cs, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.dj = load i8, ptr %i.ct, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.dk = insertelement <16 x i8> poison, i8 %i.cu, i64 0
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 1
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 2
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 3
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 4
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 5
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 6
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 7
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 8
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 9
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 10
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 11
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 12
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 13
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 14
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 15
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 %index
  store <16 x i8> %i.dz, ptr %i.ea, align 1, !tbaa !103, !alias.scope !353, !llvm.access.group !7
  %i.eb = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %i.ed = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  %i.ee = getelementptr inbounds nuw i8, ptr %i.x, i64 14
  %i.ef = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ab, i64 22
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ad, i64 26
  %i.ei = getelementptr inbounds nuw i8, ptr %i.af, i64 30
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ah, i64 34
  %i.ek = getelementptr inbounds nuw i8, ptr %i.aj, i64 38
  %i.el = getelementptr inbounds nuw i8, ptr %i.al, i64 42
  %i.em = getelementptr inbounds nuw i8, ptr %i.an, i64 46
  %i.en = getelementptr inbounds nuw i8, ptr %i.ap, i64 50
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ar, i64 54
  %i.ep = getelementptr inbounds nuw i8, ptr %i.at, i64 58
  %i.eq = getelementptr inbounds nuw i8, ptr %i.av, i64 62
  %i.er = load i8, ptr %i.eb, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.es = load i8, ptr %i.ec, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.et = load i8, ptr %i.ed, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.eu = load i8, ptr %i.ee, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.ev = load i8, ptr %i.ef, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.ew = load i8, ptr %i.eg, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.ex = load i8, ptr %i.eh, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.ey = load i8, ptr %i.ei, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.ez = load i8, ptr %i.ej, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.fa = load i8, ptr %i.ek, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.fb = load i8, ptr %i.el, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.fc = load i8, ptr %i.em, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.fd = load i8, ptr %i.en, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.fe = load i8, ptr %i.eo, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.ff = load i8, ptr %i.ep, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.fg = load i8, ptr %i.eq, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.fh = insertelement <16 x i8> poison, i8 %i.er, i64 0
  %i.fi = insertelement <16 x i8> %i.fh, i8 %i.es, i64 1
  %i.fj = insertelement <16 x i8> %i.fi, i8 %i.et, i64 2
  %i.fk = insertelement <16 x i8> %i.fj, i8 %i.eu, i64 3
  %i.fl = insertelement <16 x i8> %i.fk, i8 %i.ev, i64 4
  %i.fm = insertelement <16 x i8> %i.fl, i8 %i.ew, i64 5
  %i.fn = insertelement <16 x i8> %i.fm, i8 %i.ex, i64 6
  %i.fo = insertelement <16 x i8> %i.fn, i8 %i.ey, i64 7
  %i.fp = insertelement <16 x i8> %i.fo, i8 %i.ez, i64 8
  %i.fq = insertelement <16 x i8> %i.fp, i8 %i.fa, i64 9
  %i.fr = insertelement <16 x i8> %i.fq, i8 %i.fb, i64 10
  %i.fs = insertelement <16 x i8> %i.fr, i8 %i.fc, i64 11
  %i.ft = insertelement <16 x i8> %i.fs, i8 %i.fd, i64 12
  %i.fu = insertelement <16 x i8> %i.ft, i8 %i.fe, i64 13
  %i.fv = insertelement <16 x i8> %i.fu, i8 %i.ff, i64 14
  %i.fw = insertelement <16 x i8> %i.fv, i8 %i.fg, i64 15
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 %index
  store <16 x i8> %i.fw, ptr %i.fx, align 1, !tbaa !103, !alias.scope !354, !llvm.access.group !7
  %i.fy = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.fz = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  %i.ga = getelementptr inbounds nuw i8, ptr %i.v, i64 11
  %i.gb = getelementptr inbounds nuw i8, ptr %i.x, i64 15
  %i.gc = getelementptr inbounds nuw i8, ptr %i.z, i64 19
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ab, i64 23
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ad, i64 27
  %i.gf = getelementptr inbounds nuw i8, ptr %i.af, i64 31
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ah, i64 35
  %i.gh = getelementptr inbounds nuw i8, ptr %i.aj, i64 39
  %i.gi = getelementptr inbounds nuw i8, ptr %i.al, i64 43
  %i.gj = getelementptr inbounds nuw i8, ptr %i.an, i64 47
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ap, i64 51
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ar, i64 55
  %i.gm = getelementptr inbounds nuw i8, ptr %i.at, i64 59
  %i.gn = getelementptr inbounds nuw i8, ptr %i.av, i64 63
  %i.go = load i8, ptr %i.fy, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.gp = load i8, ptr %i.fz, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.gq = load i8, ptr %i.ga, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.gr = load i8, ptr %i.gb, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.gs = load i8, ptr %i.gc, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.gt = load i8, ptr %i.gd, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.gu = load i8, ptr %i.ge, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.gv = load i8, ptr %i.gf, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.gw = load i8, ptr %i.gg, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.gx = load i8, ptr %i.gh, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.gy = load i8, ptr %i.gi, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.gz = load i8, ptr %i.gj, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.ha = load i8, ptr %i.gk, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.hb = load i8, ptr %i.gl, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.hc = load i8, ptr %i.gm, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.hd = load i8, ptr %i.gn, align 1, !tbaa !103, !alias.scope !356, !llvm.access.group !7
  %i.he = insertelement <16 x i8> poison, i8 %i.go, i64 0
  %i.hf = insertelement <16 x i8> %i.he, i8 %i.gp, i64 1
  %i.hg = insertelement <16 x i8> %i.hf, i8 %i.gq, i64 2
  %i.hh = insertelement <16 x i8> %i.hg, i8 %i.gr, i64 3
  %i.hi = insertelement <16 x i8> %i.hh, i8 %i.gs, i64 4
  %i.hj = insertelement <16 x i8> %i.hi, i8 %i.gt, i64 5
  %i.hk = insertelement <16 x i8> %i.hj, i8 %i.gu, i64 6
  %i.hl = insertelement <16 x i8> %i.hk, i8 %i.gv, i64 7
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 8
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 9
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 10
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 11
  %i.hq = insertelement <16 x i8> %i.hp, i8 %i.ha, i64 12
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 13
  %i.hs = insertelement <16 x i8> %i.hr, i8 %i.hc, i64 14
  %i.ht = insertelement <16 x i8> %i.hs, i8 %i.hd, i64 15
  %i.hu = getelementptr inbounds nuw i8, ptr %5, i64 %index
  store <16 x i8> %i.ht, ptr %i.hu, align 1, !tbaa !103, !alias.scope !355, !llvm.access.group !7
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hv = icmp eq i64 %index.next, 32
  br i1 %i.hv, label %read_packed_U8.exit, label %vector.body, !llvm.loop !349

read_packed_U8.exit:                              ; preds = %vector.body
  %i.hw = add i64 %i.a, 128
  store i64 %i.hw, ptr %0, align 8, !tbaa !109, !alias.scope !350
  %i.hx = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !351
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.hx(ptr noundef nonnull %0, ptr noundef nonnull %i.hy, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !noalias !356, !inline_history !8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_read_nibble_x_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 32)) %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
read_nibble_U8.exit:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.c = load <8 x i8>, ptr %i.b, align 1, !tbaa !103, !alias.scope !366
  %i.d = shufflevector <8 x i8> %i.c, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7> ; 2 uses
  %i.e = lshr <16 x i8> %i.d, <i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15>
  %i.f = and <16 x i8> %i.d, <i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15>
  %i.g = shufflevector <16 x i8> %i.e, <16 x i8> %i.f, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  store <16 x i8> %i.g, ptr %2, align 1, !tbaa !103, !alias.scope !365
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load <8 x i8>, ptr %i.h, align 1, !tbaa !103, !alias.scope !366
  %i.k = shufflevector <8 x i8> %i.j, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7> ; 2 uses
  %i.l = lshr <16 x i8> %i.k, <i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15>
  %i.m = and <16 x i8> %i.k, <i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15>
  %i.n = shufflevector <16 x i8> %i.l, <16 x i8> %i.m, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  store <16 x i8> %i.n, ptr %i.i, align 1, !tbaa !103, !alias.scope !365
  %i.o = add i64 %i.a, 16
  store i64 %i.o, ptr %0, align 8, !tbaa !109, !alias.scope !363
  %i.p = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !364
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.p(ptr noundef nonnull %0, ptr noundef nonnull %i.q, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12, !noalias !366, !inline_history !362
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_read_bit_x_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 32)) %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
read_bit_U8.exit:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.c = load <2 x i8>, ptr %i.b, align 1, !tbaa !103, !alias.scope !376
  %i.d = shufflevector <2 x i8> %i.c, <2 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.e = lshr <16 x i8> %i.d, <i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>
  %i.f = and <16 x i8> %i.e, <i8 -1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %i.f, ptr %2, align 1, !tbaa !103, !alias.scope !375
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load <2 x i8>, ptr %i.g, align 1, !tbaa !103, !alias.scope !376
  %i.j = shufflevector <2 x i8> %i.i, <2 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.k = lshr <16 x i8> %i.j, <i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>
  %i.l = and <16 x i8> %i.k, <i8 -1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %i.l, ptr %i.h, align 1, !tbaa !103, !alias.scope !375
  %i.m = add i64 %i.a, 4
  store i64 %i.m, ptr %0, align 8, !tbaa !109, !alias.scope !373
  %i.n = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !374
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.n(ptr noundef nonnull %0, ptr noundef nonnull %i.o, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12, !noalias !376, !inline_history !372
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_read_palette_xyzw_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 32)) %2, ptr noalias noundef initializes((0, 32)) %3, ptr noalias noundef initializes((0, 32)) %4, ptr noalias noundef initializes((0, 32)) %5) #0 {
vector.ph:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !109
  %i.e = inttoptr i64 %i.d to ptr                 ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 21 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 7
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 9
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 15
  %i.ak = load i8, ptr %i.f, align 1, !tbaa !103, !alias.scope !395, !llvm.access.group !386
  %i.al = load i8, ptr %i.h, align 1, !tbaa !103, !alias.scope !395, !llvm.access.group !386
  %i.am = load i8, ptr %i.j, align 1, !tbaa !103, !alias.scope !395, !llvm.access.group !386
  %i.an = load i8, ptr %i.l, align 1, !tbaa !103, !alias.scope !395, !llvm.access.group !386
  %i.ao = load i8, ptr %i.n, align 1, !tbaa !103, !alias.scope !395, !llvm.access.group !386
  %i.ap = load i8, ptr %i.p, align 1, !tbaa !103, !alias.scope !395, !llvm.access.group !386
  %i.aq = load i8, ptr %i.r, align 1, !tbaa !103, !alias.scope !395, !llvm.access.group !386
  %i.ar = load i8, ptr %i.t, align 1, !tbaa !103, !alias.scope !395, !llvm.access.group !386
  %i.as = load i8, ptr %i.v, align 1, !tbaa !103, !alias.scope !395, !llvm.access.group !386
  %i.at = load i8, ptr %i.x, align 1, !tbaa !103, !alias.scope !395, !llvm.access.group !386
  %i.au = load i8, ptr %i.z, align 1, !tbaa !103, !alias.scope !395, !llvm.access.group !386
  %i.av = load i8, ptr %i.ab, align 1, !tbaa !103, !alias.scope !395, !llvm.access.group !386
  %i.aw = load i8, ptr %i.ad, align 1, !tbaa !103, !alias.scope !395, !llvm.access.group !386
  %i.ax = load i8, ptr %i.af, align 1, !tbaa !103, !alias.scope !395, !llvm.access.group !386
  %i.ay = load i8, ptr %i.ah, align 1, !tbaa !103, !alias.scope !395, !llvm.access.group !386
  %i.az = load i8, ptr %i.aj, align 1, !tbaa !103, !alias.scope !395, !llvm.access.group !386
  %i.ba = zext i8 %i.ak to i64
  %i.bb = zext i8 %i.al to i64
  %i.bc = zext i8 %i.am to i64
  %i.bd = zext i8 %i.an to i64
  %i.be = zext i8 %i.ao to i64
  %i.bf = zext i8 %i.ap to i64
  %i.bg = zext i8 %i.aq to i64
  %i.bh = zext i8 %i.ar to i64
  %i.bi = zext i8 %i.as to i64
  %i.bj = zext i8 %i.at to i64
  %i.bk = zext i8 %i.au to i64
  %i.bl = zext i8 %i.av to i64
  %i.bm = zext i8 %i.aw to i64
  %i.bn = zext i8 %i.ax to i64
  %i.bo = zext i8 %i.ay to i64
  %i.bp = zext i8 %i.az to i64
  %i.bq = shl nuw nsw i64 %i.ba, 2
  %i.br = shl nuw nsw i64 %i.bb, 2
  %i.bs = shl nuw nsw i64 %i.bc, 2
  %i.bt = shl nuw nsw i64 %i.bd, 2
  %i.bu = shl nuw nsw i64 %i.be, 2
  %i.bv = shl nuw nsw i64 %i.bf, 2
  %i.bw = shl nuw nsw i64 %i.bg, 2
  %i.bx = shl nuw nsw i64 %i.bh, 2
  %i.by = shl nuw nsw i64 %i.bi, 2
  %i.bz = shl nuw nsw i64 %i.bj, 2
  %i.ca = shl nuw nsw i64 %i.bk, 2
  %i.cb = shl nuw nsw i64 %i.bl, 2
  %i.cc = shl nuw nsw i64 %i.bm, 2
  %i.cd = shl nuw nsw i64 %i.bn, 2
  %i.ce = shl nuw nsw i64 %i.bo, 2
  %i.cf = shl nuw nsw i64 %i.bp, 2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bq ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.br ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bt ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bu ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bv ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bw ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bx ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.by ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bz ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ca ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cb ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cc ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cd ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ce ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cf ; 4 uses
  %i.cw = load i8, ptr %i.cg, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.cx = load i8, ptr %i.ch, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.cy = load i8, ptr %i.ci, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.cz = load i8, ptr %i.cj, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.da = load i8, ptr %i.ck, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.db = load i8, ptr %i.cl, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.dc = load i8, ptr %i.cm, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.dd = load i8, ptr %i.cn, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.de = load i8, ptr %i.co, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.df = load i8, ptr %i.cp, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.dg = load i8, ptr %i.cq, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.dh = load i8, ptr %i.cr, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.di = load i8, ptr %i.cs, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.dj = load i8, ptr %i.ct, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.dk = load i8, ptr %i.cu, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.dl = load i8, ptr %i.cv, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.dm = insertelement <16 x i8> poison, i8 %i.cw, i64 0
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 1
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 2
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 3
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 4
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 5
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 6
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 7
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 8
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 9
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 10
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 11
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 12
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 13
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 14
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 15
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 %index
  store <16 x i8> %i.eb, ptr %i.ec, align 1, !tbaa !103, !alias.scope !391, !llvm.access.group !386
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.et = load i8, ptr %i.ed, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.eu = load i8, ptr %i.ee, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.ev = load i8, ptr %i.ef, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.ew = load i8, ptr %i.eg, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.ex = load i8, ptr %i.eh, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.ey = load i8, ptr %i.ei, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.ez = load i8, ptr %i.ej, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.fa = load i8, ptr %i.ek, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.fb = load i8, ptr %i.el, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.fc = load i8, ptr %i.em, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.fd = load i8, ptr %i.en, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.fe = load i8, ptr %i.eo, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.ff = load i8, ptr %i.ep, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.fg = load i8, ptr %i.eq, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.fh = load i8, ptr %i.er, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.fi = load i8, ptr %i.es, align 1, !tbaa !103, !alias.scope !396, !llvm.access.group !386
  %i.fj = insertelement <16 x i8> poison, i8 %i.et, i64 0
  %i.fk = insertelement <16 x i8> %i.fj, i8 %i.eu, i64 1
  %i.fl = insertelement <16 x i8> %i.fk, i8 %i.ev, i64 2
  %i.fm = insertelement <16 x i8> %i.fl, i8 %i.ew, i64 3
  %i.fn = insertelement <16 x i8> %i.fm, i8 %i.ex, i64 4
  %i.fo = insertelement <16 x i8> %i.fn, i8 %i.ey, i64 5
  %i.fp = insertelement <16 x i8> %i.fo, i8 %i.ez, i64 6
  %i.fq = insertelement <16 x i8> %i.fp, i8 %i.fa, i64 7
  %i.fr = insertelement <16 x i8> %i.fq, i8 %i.fb, i64 8
  %i.fs = insertelement <16 x i8> %i.fr, i8 %i.fc, i64 9
  %i.ft = insertelement <16 x i8> %i.fs, i8 %i.fd, i64 10
  %i.fu = insertelement <16 x i8> %i.ft, i8 %i.fe, i64 11
  %i.fv = insertelement <16 x i8> %i.fu, i8 %i.ff, i64 12
  %i.fw = insertelement <16 x i8> %i.fv, i8 %i.fg, i64 13
  %i.fx = insertelement <16 x i8> %i.fw, i8 %i.fh, i64 14
  %i.fy = insertelement <16 x i8> %i.fx, i8 %i.fi, i64 15
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 %index
  store <16 x i8> %i.fy, ptr %i.fz, align 1, !tbaa !103, !alias.scope !392, !llvm.access.group !386
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
end_hunk_1
begin_hunk_2_@u8_to_f32_xyzw_c:vector.ph
  %wide.load8 = load <4 x i8>, ptr %3, align 1, !tbaa !103, !alias.scope !732, !llvm.access.group !17
  %i.b = uitofp <4 x i8> %wide.load8 to <4 x float>
  store <4 x float> %i.b, ptr %7, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %wide.load9 = load <4 x i8>, ptr %4, align 1, !tbaa !103, !alias.scope !733, !llvm.access.group !17
  %i.c = uitofp <4 x i8> %wide.load9 to <4 x float>
  store <4 x float> %i.c, ptr %8, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %wide.load10 = load <4 x i8>, ptr %5, align 1, !tbaa !103, !alias.scope !734, !llvm.access.group !17
  %i.d = uitofp <4 x i8> %wide.load10 to <4 x float>
  store <4 x float> %i.d, ptr %9, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %wide.load.1 = load <4 x i8>, ptr %i.e, align 1, !tbaa !103, !alias.scope !731, !llvm.access.group !17
  %i.f = uitofp <4 x i8> %wide.load.1 to <4 x float>
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <4 x float> %i.f, ptr %i.g, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %wide.load8.1 = load <4 x i8>, ptr %i.h, align 1, !tbaa !103, !alias.scope !732, !llvm.access.group !17
  %i.i = uitofp <4 x i8> %wide.load8.1 to <4 x float>
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <4 x float> %i.i, ptr %i.j, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %wide.load9.1 = load <4 x i8>, ptr %i.k, align 1, !tbaa !103, !alias.scope !733, !llvm.access.group !17
  %i.l = uitofp <4 x i8> %wide.load9.1 to <4 x float>
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  store <4 x float> %i.l, ptr %i.m, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 4
  %wide.load10.1 = load <4 x i8>, ptr %i.n, align 1, !tbaa !103, !alias.scope !734, !llvm.access.group !17
  %i.o = uitofp <4 x i8> %wide.load10.1 to <4 x float>
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <4 x float> %i.o, ptr %i.p, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.load.2 = load <4 x i8>, ptr %i.q, align 1, !tbaa !103, !alias.scope !731, !llvm.access.group !17
  %i.r = uitofp <4 x i8> %wide.load.2 to <4 x float>
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32
  store <4 x float> %i.r, ptr %i.s, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.load8.2 = load <4 x i8>, ptr %i.t, align 1, !tbaa !103, !alias.scope !732, !llvm.access.group !17
  %i.u = uitofp <4 x i8> %wide.load8.2 to <4 x float>
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 32
  store <4 x float> %i.u, ptr %i.v, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %wide.load9.2 = load <4 x i8>, ptr %i.w, align 1, !tbaa !103, !alias.scope !733, !llvm.access.group !17
  %i.x = uitofp <4 x i8> %wide.load9.2 to <4 x float>
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 32
  store <4 x float> %i.x, ptr %i.y, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %wide.load10.2 = load <4 x i8>, ptr %i.z, align 1, !tbaa !103, !alias.scope !734, !llvm.access.group !17
  %i.aa = uitofp <4 x i8> %wide.load10.2 to <4 x float>
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <4 x float> %i.aa, ptr %i.ab, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12
  %wide.load.3 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !103, !alias.scope !731, !llvm.access.group !17
  %i.ad = uitofp <4 x i8> %wide.load.3 to <4 x float>
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 48
  store <4 x float> %i.ad, ptr %i.ae, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 12
  %wide.load8.3 = load <4 x i8>, ptr %i.af, align 1, !tbaa !103, !alias.scope !732, !llvm.access.group !17
  %i.ag = uitofp <4 x i8> %wide.load8.3 to <4 x float>
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 48
  store <4 x float> %i.ag, ptr %i.ah, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 12
  %wide.load9.3 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !103, !alias.scope !733, !llvm.access.group !17
  %i.aj = uitofp <4 x i8> %wide.load9.3 to <4 x float>
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <4 x float> %i.aj, ptr %i.ak, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 12
  %wide.load10.3 = load <4 x i8>, ptr %i.al, align 1, !tbaa !103, !alias.scope !734, !llvm.access.group !17
  %i.am = uitofp <4 x i8> %wide.load10.3 to <4 x float>
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <4 x float> %i.am, ptr %i.an, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %wide.load.4 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !103, !alias.scope !731, !llvm.access.group !17
  %i.ap = uitofp <4 x i8> %wide.load.4 to <4 x float>
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 64
  store <4 x float> %i.ap, ptr %i.aq, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load8.4 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !103, !alias.scope !732, !llvm.access.group !17
  %i.as = uitofp <4 x i8> %wide.load8.4 to <4 x float>
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 64
  store <4 x float> %i.as, ptr %i.at, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load9.4 = load <4 x i8>, ptr %i.au, align 1, !tbaa !103, !alias.scope !733, !llvm.access.group !17
  %i.av = uitofp <4 x i8> %wide.load9.4 to <4 x float>
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 64
  store <4 x float> %i.av, ptr %i.aw, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.load10.4 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !103, !alias.scope !734, !llvm.access.group !17
  %i.ay = uitofp <4 x i8> %wide.load10.4 to <4 x float>
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <4 x float> %i.ay, ptr %i.az, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 20
  %wide.load.5 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !103, !alias.scope !731, !llvm.access.group !17
  %i.bb = uitofp <4 x i8> %wide.load.5 to <4 x float>
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 80
  store <4 x float> %i.bb, ptr %i.bc, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 20
  %wide.load8.5 = load <4 x i8>, ptr %i.bd, align 1, !tbaa !103, !alias.scope !732, !llvm.access.group !17
  %i.be = uitofp <4 x i8> %wide.load8.5 to <4 x float>
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 80
  store <4 x float> %i.be, ptr %i.bf, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 20
  %wide.load9.5 = load <4 x i8>, ptr %i.bg, align 1, !tbaa !103, !alias.scope !733, !llvm.access.group !17
  %i.bh = uitofp <4 x i8> %wide.load9.5 to <4 x float>
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 80
  store <4 x float> %i.bh, ptr %i.bi, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 20
  %wide.load10.5 = load <4 x i8>, ptr %i.bj, align 1, !tbaa !103, !alias.scope !734, !llvm.access.group !17
  %i.bk = uitofp <4 x i8> %wide.load10.5 to <4 x float>
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <4 x float> %i.bk, ptr %i.bl, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %wide.load.6 = load <4 x i8>, ptr %i.bm, align 1, !tbaa !103, !alias.scope !731, !llvm.access.group !17
  %i.bn = uitofp <4 x i8> %wide.load.6 to <4 x float>
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 96
  store <4 x float> %i.bn, ptr %i.bo, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %wide.load8.6 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !103, !alias.scope !732, !llvm.access.group !17
  %i.bq = uitofp <4 x i8> %wide.load8.6 to <4 x float>
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 96
  store <4 x float> %i.bq, ptr %i.br, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 24
  %wide.load9.6 = load <4 x i8>, ptr %i.bs, align 1, !tbaa !103, !alias.scope !733, !llvm.access.group !17
  %i.bt = uitofp <4 x i8> %wide.load9.6 to <4 x float>
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 96
  store <4 x float> %i.bt, ptr %i.bu, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %wide.load10.6 = load <4 x i8>, ptr %i.bv, align 1, !tbaa !103, !alias.scope !734, !llvm.access.group !17
  %i.bw = uitofp <4 x i8> %wide.load10.6 to <4 x float>
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <4 x float> %i.bw, ptr %i.bx, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 28
  %wide.load.7 = load <4 x i8>, ptr %i.by, align 1, !tbaa !103, !alias.scope !731, !llvm.access.group !17
  %i.bz = uitofp <4 x i8> %wide.load.7 to <4 x float>
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 112
  store <4 x float> %i.bz, ptr %i.ca, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 28
  %wide.load8.7 = load <4 x i8>, ptr %i.cb, align 1, !tbaa !103, !alias.scope !732, !llvm.access.group !17
  %i.cc = uitofp <4 x i8> %wide.load8.7 to <4 x float>
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 112
  store <4 x float> %i.cc, ptr %i.cd, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 28
  %wide.load9.7 = load <4 x i8>, ptr %i.ce, align 1, !tbaa !103, !alias.scope !733, !llvm.access.group !17
  %i.cf = uitofp <4 x i8> %wide.load9.7 to <4 x float>
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 112
  store <4 x float> %i.cf, ptr %i.cg, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 28
  %wide.load10.7 = load <4 x i8>, ptr %i.ch, align 1, !tbaa !103, !alias.scope !734, !llvm.access.group !17
  %i.ci = uitofp <4 x i8> %wide.load10.7 to <4 x float>
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 112
  store <4 x float> %i.ci, ptr %i.cj, align 16, !tbaa !103, !noalias !735, !llvm.access.group !17
  %i.ck = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !730
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void %i.ck(ptr noundef %0, ptr noundef nonnull %i.cl, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #12, !noalias !736, !inline_history !16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12, !noalias !735
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12, !noalias !735
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12, !noalias !735
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12, !noalias !735
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_scale_xyz_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 16, !tbaa !103, !alias.scope !744
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %wide.load = load <16 x i8>, ptr %2, align 1, !tbaa !103, !alias.scope !745, !llvm.access.group !742
  %i.c = mul <16 x i8> %wide.load, %broadcast.splat
  store <16 x i8> %i.c, ptr %2, align 1, !tbaa !103, !alias.scope !745, !llvm.access.group !742
  %wide.load8 = load <16 x i8>, ptr %3, align 1, !tbaa !103, !alias.scope !746, !llvm.access.group !742
  %i.d = mul <16 x i8> %wide.load8, %broadcast.splat
  store <16 x i8> %i.d, ptr %3, align 1, !tbaa !103, !alias.scope !746, !llvm.access.group !742
  %wide.load9 = load <16 x i8>, ptr %4, align 1, !tbaa !103, !alias.scope !747, !llvm.access.group !742
  %i.e = mul <16 x i8> %wide.load9, %broadcast.splat
  store <16 x i8> %i.e, ptr %4, align 1, !tbaa !103, !alias.scope !747, !llvm.access.group !742
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.f, align 1, !tbaa !103, !alias.scope !745, !llvm.access.group !742
  %i.g = mul <16 x i8> %wide.load.1, %broadcast.splat
  store <16 x i8> %i.g, ptr %i.f, align 1, !tbaa !103, !alias.scope !745, !llvm.access.group !742
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %wide.load8.1 = load <16 x i8>, ptr %i.h, align 1, !tbaa !103, !alias.scope !746, !llvm.access.group !742
  %i.i = mul <16 x i8> %wide.load8.1, %broadcast.splat
  store <16 x i8> %i.i, ptr %i.h, align 1, !tbaa !103, !alias.scope !746, !llvm.access.group !742
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %wide.load9.1 = load <16 x i8>, ptr %i.j, align 1, !tbaa !103, !alias.scope !747, !llvm.access.group !742
  %i.k = mul <16 x i8> %wide.load9.1, %broadcast.splat
  store <16 x i8> %i.k, ptr %i.j, align 1, !tbaa !103, !alias.scope !747, !llvm.access.group !742
  %i.l = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !744
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.l(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !743
  ret void
}

declare i32 @ff_sws_setup_scalar(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @u8_unpack_xyz_121_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef initializes((0, 32)) %3, ptr noalias noundef initializes((0, 32)) %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %2, align 1, !tbaa !103, !alias.scope !754, !llvm.access.group !18 ; 3 uses
  %wide.load8 = load <16 x i8>, ptr %i.a, align 1, !tbaa !103, !alias.scope !754, !llvm.access.group !18 ; 3 uses
  %i.b = lshr <16 x i8> %wide.load, splat (i8 3)
  %i.c = lshr <16 x i8> %wide.load8, splat (i8 3)
  %i.d = and <16 x i8> %i.b, splat (i8 1)
  %i.e = and <16 x i8> %i.c, splat (i8 1)
  store <16 x i8> %i.d, ptr %2, align 1, !tbaa !103, !alias.scope !754, !llvm.access.group !18
  store <16 x i8> %i.e, ptr %i.a, align 1, !tbaa !103, !alias.scope !754, !llvm.access.group !18
  %i.f = lshr <16 x i8> %wide.load, splat (i8 1)
  %i.g = lshr <16 x i8> %wide.load8, splat (i8 1)
  %i.h = and <16 x i8> %i.f, splat (i8 3)
  %i.i = and <16 x i8> %i.g, splat (i8 3)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <16 x i8> %i.h, ptr %3, align 1, !tbaa !103, !alias.scope !755, !llvm.access.group !18
  store <16 x i8> %i.i, ptr %i.j, align 1, !tbaa !103, !alias.scope !755, !llvm.access.group !18
  %i.k = and <16 x i8> %wide.load, splat (i8 1)
  %i.l = and <16 x i8> %wide.load8, splat (i8 1)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <16 x i8> %i.k, ptr %4, align 1, !tbaa !103, !alias.scope !756, !llvm.access.group !18
  store <16 x i8> %i.l, ptr %i.m, align 1, !tbaa !103, !alias.scope !756, !llvm.access.group !18
  %i.n = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !753
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.n(ptr noundef %0, ptr noundef nonnull %i.o, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_unpack_xyz_233_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef initializes((0, 32)) %3, ptr noalias noundef initializes((0, 32)) %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %2, align 1, !tbaa !103, !alias.scope !763, !llvm.access.group !18 ; 3 uses
  %wide.load8 = load <16 x i8>, ptr %i.a, align 1, !tbaa !103, !alias.scope !763, !llvm.access.group !18 ; 3 uses
  %i.b = lshr <16 x i8> %wide.load, splat (i8 6)
  %i.c = lshr <16 x i8> %wide.load8, splat (i8 6)
  store <16 x i8> %i.b, ptr %2, align 1, !tbaa !103, !alias.scope !763, !llvm.access.group !18
  store <16 x i8> %i.c, ptr %i.a, align 1, !tbaa !103, !alias.scope !763, !llvm.access.group !18
  %i.d = lshr <16 x i8> %wide.load, splat (i8 3)
  %i.e = lshr <16 x i8> %wide.load8, splat (i8 3)
  %i.f = and <16 x i8> %i.d, splat (i8 7)
  %i.g = and <16 x i8> %i.e, splat (i8 7)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <16 x i8> %i.f, ptr %3, align 1, !tbaa !103, !alias.scope !764, !llvm.access.group !18
  store <16 x i8> %i.g, ptr %i.h, align 1, !tbaa !103, !alias.scope !764, !llvm.access.group !18
  %i.i = and <16 x i8> %wide.load, splat (i8 7)
  %i.j = and <16 x i8> %wide.load8, splat (i8 7)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <16 x i8> %i.i, ptr %4, align 1, !tbaa !103, !alias.scope !765, !llvm.access.group !18
  store <16 x i8> %i.j, ptr %i.k, align 1, !tbaa !103, !alias.scope !765, !llvm.access.group !18
  %i.l = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !762
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.l(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_unpack_xyz_332_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef initializes((0, 32)) %3, ptr noalias noundef initializes((0, 32)) %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %2, align 1, !tbaa !103, !alias.scope !772, !llvm.access.group !18 ; 3 uses
  %wide.load8 = load <16 x i8>, ptr %i.a, align 1, !tbaa !103, !alias.scope !772, !llvm.access.group !18 ; 3 uses
  %i.b = lshr <16 x i8> %wide.load, splat (i8 5)
  %i.c = lshr <16 x i8> %wide.load8, splat (i8 5)
  store <16 x i8> %i.b, ptr %2, align 1, !tbaa !103, !alias.scope !772, !llvm.access.group !18
  store <16 x i8> %i.c, ptr %i.a, align 1, !tbaa !103, !alias.scope !772, !llvm.access.group !18
  %i.d = lshr <16 x i8> %wide.load, splat (i8 2)
  %i.e = lshr <16 x i8> %wide.load8, splat (i8 2)
  %i.f = and <16 x i8> %i.d, splat (i8 7)
  %i.g = and <16 x i8> %i.e, splat (i8 7)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <16 x i8> %i.f, ptr %3, align 1, !tbaa !103, !alias.scope !773, !llvm.access.group !18
  store <16 x i8> %i.g, ptr %i.h, align 1, !tbaa !103, !alias.scope !773, !llvm.access.group !18
  %i.i = and <16 x i8> %wide.load, splat (i8 3)
  %i.j = and <16 x i8> %wide.load8, splat (i8 3)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <16 x i8> %i.i, ptr %4, align 1, !tbaa !103, !alias.scope !774, !llvm.access.group !18
  store <16 x i8> %i.j, ptr %i.k, align 1, !tbaa !103, !alias.scope !774, !llvm.access.group !18
  %i.l = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !771
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.l(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_pack_xyz_121_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %2, align 1, !tbaa !103, !alias.scope !781, !llvm.access.group !20
  %wide.load8 = load <16 x i8>, ptr %i.a, align 1, !tbaa !103, !alias.scope !781, !llvm.access.group !20
  %i.b = shl <16 x i8> %wide.load, splat (i8 3)
  %i.c = shl <16 x i8> %wide.load8, splat (i8 3)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load9 = load <16 x i8>, ptr %3, align 1, !tbaa !103, !alias.scope !782, !llvm.access.group !20
  %wide.load10 = load <16 x i8>, ptr %i.d, align 1, !tbaa !103, !alias.scope !782, !llvm.access.group !20
  %i.e = shl <16 x i8> %wide.load9, splat (i8 1)
  %i.f = shl <16 x i8> %wide.load10, splat (i8 1)
  %i.g = or <16 x i8> %i.e, %i.b
  %i.h = or <16 x i8> %i.f, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load11 = load <16 x i8>, ptr %4, align 1, !tbaa !103, !alias.scope !783, !llvm.access.group !20
  %wide.load12 = load <16 x i8>, ptr %i.i, align 1, !tbaa !103, !alias.scope !783, !llvm.access.group !20
  %i.j = or <16 x i8> %i.g, %wide.load11
  %i.k = or <16 x i8> %i.h, %wide.load12
  store <16 x i8> %i.j, ptr %2, align 1, !tbaa !103, !alias.scope !781, !llvm.access.group !20
  store <16 x i8> %i.k, ptr %i.a, align 1, !tbaa !103, !alias.scope !781, !llvm.access.group !20
  %i.l = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !780
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.l(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !21
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_pack_xyz_233_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %2, align 1, !tbaa !103, !alias.scope !790, !llvm.access.group !20
  %wide.load8 = load <16 x i8>, ptr %i.a, align 1, !tbaa !103, !alias.scope !790, !llvm.access.group !20
  %i.b = shl <16 x i8> %wide.load, splat (i8 6)
  %i.c = shl <16 x i8> %wide.load8, splat (i8 6)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load9 = load <16 x i8>, ptr %3, align 1, !tbaa !103, !alias.scope !791, !llvm.access.group !20
  %wide.load10 = load <16 x i8>, ptr %i.d, align 1, !tbaa !103, !alias.scope !791, !llvm.access.group !20
  %i.e = shl <16 x i8> %wide.load9, splat (i8 3)
  %i.f = shl <16 x i8> %wide.load10, splat (i8 3)
  %i.g = or <16 x i8> %i.e, %i.b
  %i.h = or <16 x i8> %i.f, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load11 = load <16 x i8>, ptr %4, align 1, !tbaa !103, !alias.scope !792, !llvm.access.group !20
  %wide.load12 = load <16 x i8>, ptr %i.i, align 1, !tbaa !103, !alias.scope !792, !llvm.access.group !20
  %i.j = or <16 x i8> %i.g, %wide.load11
  %i.k = or <16 x i8> %i.h, %wide.load12
  store <16 x i8> %i.j, ptr %2, align 1, !tbaa !103, !alias.scope !790, !llvm.access.group !20
  store <16 x i8> %i.k, ptr %i.a, align 1, !tbaa !103, !alias.scope !790, !llvm.access.group !20
  %i.l = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !789
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.l(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !21
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_pack_xyz_332_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %2, align 1, !tbaa !103, !alias.scope !799, !llvm.access.group !20
  %wide.load8 = load <16 x i8>, ptr %i.a, align 1, !tbaa !103, !alias.scope !799, !llvm.access.group !20
  %i.b = shl <16 x i8> %wide.load, splat (i8 5)
  %i.c = shl <16 x i8> %wide.load8, splat (i8 5)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load9 = load <16 x i8>, ptr %3, align 1, !tbaa !103, !alias.scope !800, !llvm.access.group !20
  %wide.load10 = load <16 x i8>, ptr %i.d, align 1, !tbaa !103, !alias.scope !800, !llvm.access.group !20
  %i.e = shl <16 x i8> %wide.load9, splat (i8 2)
  %i.f = shl <16 x i8> %wide.load10, splat (i8 2)
  %i.g = or <16 x i8> %i.e, %i.b
  %i.h = or <16 x i8> %i.f, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load11 = load <16 x i8>, ptr %4, align 1, !tbaa !103, !alias.scope !801, !llvm.access.group !20
  %wide.load12 = load <16 x i8>, ptr %i.i, align 1, !tbaa !103, !alias.scope !801, !llvm.access.group !20
  %i.j = or <16 x i8> %i.g, %wide.load11
  %i.k = or <16 x i8> %i.h, %wide.load12
  store <16 x i8> %i.j, ptr %2, align 1, !tbaa !103, !alias.scope !799, !llvm.access.group !20
  store <16 x i8> %i.k, ptr %i.a, align 1, !tbaa !103, !alias.scope !799, !llvm.access.group !20
  %i.l = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !798
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.l(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !21
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_clear_x_0_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 32)) %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
clear_U8.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i64 32, i1 false), !tbaa !103, !alias.scope !806
  %i.a = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !805
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.a(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12, !inline_history !22
  ret void
}

declare i32 @ff_sws_setup_vec4(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @u8_clear_x_1_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 32)) %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
clear_U8.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 -1, i64 32, i1 false), !tbaa !103, !alias.scope !811
  %i.a = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !810
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.a(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12, !inline_history !22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_clear_y_1_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef initializes((0, 32)) %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
clear_U8.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 -1, i64 32, i1 false), !tbaa !103, !alias.scope !816
  %i.a = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !815
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.a(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5) #12, !inline_history !22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_clear_xy_xx_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 32)) %2, ptr noalias noundef initializes((0, 32)) %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
clear_U8.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 16, !tbaa !103, !alias.scope !821
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.d = load i8, ptr %i.c, align 1, !tbaa !103, !alias.scope !821
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 %i.b, i64 32, i1 false), !tbaa !103, !alias.scope !822
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 %i.d, i64 32, i1 false), !tbaa !103, !alias.scope !823
  %i.e = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !821
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.e(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5) #12, !inline_history !22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_clear_xz_xx_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 32)) %2, ptr noalias noundef %3, ptr noalias noundef initializes((0, 32)) %4, ptr noalias noundef %5) #0 {
clear_U8.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 16, !tbaa !103, !alias.scope !828
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.d = load i8, ptr %i.c, align 2, !tbaa !103, !alias.scope !828
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 %i.b, i64 32, i1 false), !tbaa !103, !alias.scope !829
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 %i.d, i64 32, i1 false), !tbaa !103, !alias.scope !830
  %i.e = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !828
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.e(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !22
  ret void
}

end_hunk_2
begin_hunk_3_@u8_clear_w_0_c:clear_U8.exit
  %i.a = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !850
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.a(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) #12, !inline_history !22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_clear_w_1_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef initializes((0, 32)) %5) #0 {
clear_U8.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 -1, i64 32, i1 false), !tbaa !103, !alias.scope !856
  %i.a = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !855
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.a(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) #12, !inline_history !22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_clear_xyw_xx0_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 32)) %2, ptr noalias noundef initializes((0, 32)) %3, ptr noalias noundef %4, ptr noalias noundef initializes((0, 32)) %5) #0 {
clear_U8.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 16, !tbaa !103, !alias.scope !862
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.d = load i8, ptr %i.c, align 1, !tbaa !103, !alias.scope !862
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 %i.b, i64 32, i1 false), !tbaa !103, !alias.scope !863
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 %i.d, i64 32, i1 false), !tbaa !103, !alias.scope !864
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i64 32, i1 false), !tbaa !103, !alias.scope !865
  %i.e = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !862
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.e(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5) #12, !inline_history !22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_clear_xyw_xx1_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 32)) %2, ptr noalias noundef initializes((0, 32)) %3, ptr noalias noundef %4, ptr noalias noundef initializes((0, 32)) %5) #0 {
clear_U8.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 16, !tbaa !103, !alias.scope !871
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.d = load i8, ptr %i.c, align 1, !tbaa !103, !alias.scope !871
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 %i.b, i64 32, i1 false), !tbaa !103, !alias.scope !872
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 %i.d, i64 32, i1 false), !tbaa !103, !alias.scope !873
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 -1, i64 32, i1 false), !tbaa !103, !alias.scope !874
  %i.e = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !871
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.e(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5) #12, !inline_history !22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_clear_zw_xx_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef initializes((0, 32)) %4, ptr noalias noundef initializes((0, 32)) %5) #0 {
clear_U8.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.b = load i8, ptr %i.a, align 2, !tbaa !103, !alias.scope !879
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.d = load i8, ptr %i.c, align 1, !tbaa !103, !alias.scope !879
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 %i.b, i64 32, i1 false), !tbaa !103, !alias.scope !880
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 %i.d, i64 32, i1 false), !tbaa !103, !alias.scope !881
  %i.e = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !879
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.e(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !inline_history !22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_clear_xzw_1xx_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 32)) %2, ptr noalias noundef %3, ptr noalias noundef initializes((0, 32)) %4, ptr noalias noundef initializes((0, 32)) %5) #0 {
clear_U8.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.b = load i8, ptr %i.a, align 2, !tbaa !103, !alias.scope !887
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.d = load i8, ptr %i.c, align 1, !tbaa !103, !alias.scope !887
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 -1, i64 32, i1 false), !tbaa !103, !alias.scope !888
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 %i.b, i64 32, i1 false), !tbaa !103, !alias.scope !889
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 %i.d, i64 32, i1 false), !tbaa !103, !alias.scope !890
  %i.e = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !887
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.e(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !inline_history !22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u8_clear_xzw_xx1_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 32)) %2, ptr noalias noundef %3, ptr noalias noundef initializes((0, 32)) %4, ptr noalias noundef initializes((0, 32)) %5) #0 {
clear_U8.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 16, !tbaa !103, !alias.scope !896
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.d = load i8, ptr %i.c, align 2, !tbaa !103, !alias.scope !896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 %i.b, i64 32, i1 false), !tbaa !103, !alias.scope !897
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 %i.d, i64 32, i1 false), !tbaa !103, !alias.scope !898
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 -1, i64 32, i1 false), !tbaa !103, !alias.scope !899
  %i.e = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !896
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.e(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !inline_history !22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u16_read_planar_x_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 64)) %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
read_planar_U16.exit:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.c = load <8 x i16>, ptr %i.b, align 2, !tbaa !130, !alias.scope !911
  store <8 x i16> %i.c, ptr %2, align 2, !tbaa !130, !alias.scope !910
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load <8 x i16>, ptr %i.d, align 2, !tbaa !130, !alias.scope !911
  store <8 x i16> %i.f, ptr %i.e, align 2, !tbaa !130, !alias.scope !910
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load <8 x i16>, ptr %i.g, align 2, !tbaa !130, !alias.scope !911
  store <8 x i16> %i.i, ptr %i.h, align 2, !tbaa !130, !alias.scope !910
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = load <8 x i16>, ptr %i.j, align 2, !tbaa !130, !alias.scope !911
  store <8 x i16> %i.l, ptr %i.k, align 2, !tbaa !130, !alias.scope !910
  %i.m = add i64 %i.a, 64
  store i64 %i.m, ptr %0, align 8, !tbaa !109, !alias.scope !908
  %i.n = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !909
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.n(ptr noundef nonnull %0, ptr noundef nonnull %i.o, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12, !noalias !912, !inline_history !23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u16_read_planar_xy_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 64)) %2, ptr noalias noundef initializes((0, 64)) %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
read_planar_U16.exit:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  %i.f = load <8 x i16>, ptr %i.b, align 2, !tbaa !130, !alias.scope !926
  store <8 x i16> %i.f, ptr %2, align 2, !tbaa !130, !alias.scope !924
  %i.g = load <8 x i16>, ptr %i.e, align 2, !tbaa !130, !alias.scope !927
  store <8 x i16> %i.g, ptr %3, align 2, !tbaa !130, !alias.scope !925
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load <8 x i16>, ptr %i.h, align 2, !tbaa !130, !alias.scope !926
  store <8 x i16> %i.l, ptr %i.i, align 2, !tbaa !130, !alias.scope !924
  %i.m = load <8 x i16>, ptr %i.j, align 2, !tbaa !130, !alias.scope !927
  store <8 x i16> %i.m, ptr %i.k, align 2, !tbaa !130, !alias.scope !925
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = load <8 x i16>, ptr %i.n, align 2, !tbaa !130, !alias.scope !926
  store <8 x i16> %i.r, ptr %i.o, align 2, !tbaa !130, !alias.scope !924
  %i.s = load <8 x i16>, ptr %i.p, align 2, !tbaa !130, !alias.scope !927
  store <8 x i16> %i.s, ptr %i.q, align 2, !tbaa !130, !alias.scope !925
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.x = load <8 x i16>, ptr %i.t, align 2, !tbaa !130, !alias.scope !926
  store <8 x i16> %i.x, ptr %i.u, align 2, !tbaa !130, !alias.scope !924
  %i.y = load <8 x i16>, ptr %i.v, align 2, !tbaa !130, !alias.scope !927
  store <8 x i16> %i.y, ptr %i.w, align 2, !tbaa !130, !alias.scope !925
  %i.z = add i64 %i.a, 64
  store i64 %i.z, ptr %0, align 8, !tbaa !109, !alias.scope !922
  %i.aa = add i64 %i.d, 64
  store i64 %i.aa, ptr %i.c, align 8, !tbaa !109, !alias.scope !922
  %i.ab = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !923
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.ab(ptr noundef nonnull %0, ptr noundef nonnull %i.ac, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5) #12, !noalias !928, !inline_history !23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u16_read_planar_xyz_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 64)) %2, ptr noalias noundef initializes((0, 64)) %3, ptr noalias noundef initializes((0, 64)) %4, ptr noalias noundef %5) #0 {
vector.ph:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !109  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.h = inttoptr i64 %i.a to ptr                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !tbaa !130, !alias.scope !944, !llvm.access.group !24
  %wide.load12 = load <8 x i16>, ptr %i.i, align 2, !tbaa !130, !alias.scope !944, !llvm.access.group !24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <8 x i16> %wide.load, ptr %2, align 2, !tbaa !130, !alias.scope !941, !llvm.access.group !24
  store <8 x i16> %wide.load12, ptr %i.j, align 2, !tbaa !130, !alias.scope !941, !llvm.access.group !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load13 = load <8 x i16>, ptr %i.g, align 2, !tbaa !130, !alias.scope !945, !llvm.access.group !24
  %wide.load14 = load <8 x i16>, ptr %i.k, align 2, !tbaa !130, !alias.scope !945, !llvm.access.group !24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <8 x i16> %wide.load13, ptr %3, align 2, !tbaa !130, !alias.scope !942, !llvm.access.group !24
  store <8 x i16> %wide.load14, ptr %i.l, align 2, !tbaa !130, !alias.scope !942, !llvm.access.group !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load15 = load <8 x i16>, ptr %i.f, align 2, !tbaa !130, !alias.scope !946, !llvm.access.group !24
  %wide.load16 = load <8 x i16>, ptr %i.m, align 2, !tbaa !130, !alias.scope !946, !llvm.access.group !24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <8 x i16> %wide.load15, ptr %4, align 2, !tbaa !130, !alias.scope !943, !llvm.access.group !24
  store <8 x i16> %wide.load16, ptr %i.n, align 2, !tbaa !130, !alias.scope !943, !llvm.access.group !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %wide.load.1 = load <8 x i16>, ptr %i.o, align 2, !tbaa !130, !alias.scope !944, !llvm.access.group !24
  %wide.load12.1 = load <8 x i16>, ptr %i.p, align 2, !tbaa !130, !alias.scope !944, !llvm.access.group !24
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <8 x i16> %wide.load.1, ptr %i.q, align 2, !tbaa !130, !alias.scope !941, !llvm.access.group !24
  store <8 x i16> %wide.load12.1, ptr %i.r, align 2, !tbaa !130, !alias.scope !941, !llvm.access.group !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %wide.load13.1 = load <8 x i16>, ptr %i.s, align 2, !tbaa !130, !alias.scope !945, !llvm.access.group !24
  %wide.load14.1 = load <8 x i16>, ptr %i.t, align 2, !tbaa !130, !alias.scope !945, !llvm.access.group !24
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <8 x i16> %wide.load13.1, ptr %i.u, align 2, !tbaa !130, !alias.scope !942, !llvm.access.group !24
  store <8 x i16> %wide.load14.1, ptr %i.v, align 2, !tbaa !130, !alias.scope !942, !llvm.access.group !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %wide.load15.1 = load <8 x i16>, ptr %i.w, align 2, !tbaa !130, !alias.scope !946, !llvm.access.group !24
  %wide.load16.1 = load <8 x i16>, ptr %i.x, align 2, !tbaa !130, !alias.scope !946, !llvm.access.group !24
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <8 x i16> %wide.load15.1, ptr %i.y, align 2, !tbaa !130, !alias.scope !943, !llvm.access.group !24
  store <8 x i16> %wide.load16.1, ptr %i.z, align 2, !tbaa !130, !alias.scope !943, !llvm.access.group !24
  %i.aa = add i64 %i.a, 64
  store i64 %i.aa, ptr %0, align 8, !tbaa !109, !alias.scope !939
  %i.ab = add i64 %i.c, 64
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !109, !alias.scope !939
  %i.ac = add i64 %i.e, 64
  store i64 %i.ac, ptr %i.d, align 8, !tbaa !109, !alias.scope !939
  %i.ad = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !940
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.ad(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !noalias !947, !inline_history !23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u16_read_planar_xyzw_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 64)) %2, ptr noalias noundef initializes((0, 64)) %3, ptr noalias noundef initializes((0, 64)) %4, ptr noalias noundef initializes((0, 64)) %5) #0 {
vector.ph:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !109  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !109  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  %i.i = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.j = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.k = inttoptr i64 %i.a to ptr                 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <8 x i16>, ptr %i.k, align 2, !tbaa !130, !alias.scope !965, !llvm.access.group !24
  %wide.load12 = load <8 x i16>, ptr %i.l, align 2, !tbaa !130, !alias.scope !965, !llvm.access.group !24
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <8 x i16> %wide.load, ptr %2, align 2, !tbaa !130, !alias.scope !961, !llvm.access.group !24
  store <8 x i16> %wide.load12, ptr %i.m, align 2, !tbaa !130, !alias.scope !961, !llvm.access.group !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load13 = load <8 x i16>, ptr %i.j, align 2, !tbaa !130, !alias.scope !966, !llvm.access.group !24
  %wide.load14 = load <8 x i16>, ptr %i.n, align 2, !tbaa !130, !alias.scope !966, !llvm.access.group !24
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <8 x i16> %wide.load13, ptr %3, align 2, !tbaa !130, !alias.scope !962, !llvm.access.group !24
  store <8 x i16> %wide.load14, ptr %i.o, align 2, !tbaa !130, !alias.scope !962, !llvm.access.group !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load15 = load <8 x i16>, ptr %i.i, align 2, !tbaa !130, !alias.scope !967, !llvm.access.group !24
  %wide.load16 = load <8 x i16>, ptr %i.p, align 2, !tbaa !130, !alias.scope !967, !llvm.access.group !24
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <8 x i16> %wide.load15, ptr %4, align 2, !tbaa !130, !alias.scope !963, !llvm.access.group !24
  store <8 x i16> %wide.load16, ptr %i.q, align 2, !tbaa !130, !alias.scope !963, !llvm.access.group !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load17 = load <8 x i16>, ptr %i.h, align 2, !tbaa !130, !alias.scope !968, !llvm.access.group !24
  %wide.load18 = load <8 x i16>, ptr %i.r, align 2, !tbaa !130, !alias.scope !968, !llvm.access.group !24
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <8 x i16> %wide.load17, ptr %5, align 2, !tbaa !130, !alias.scope !964, !llvm.access.group !24
  store <8 x i16> %wide.load18, ptr %i.s, align 2, !tbaa !130, !alias.scope !964, !llvm.access.group !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %wide.load.1 = load <8 x i16>, ptr %i.t, align 2, !tbaa !130, !alias.scope !965, !llvm.access.group !24
  %wide.load12.1 = load <8 x i16>, ptr %i.u, align 2, !tbaa !130, !alias.scope !965, !llvm.access.group !24
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <8 x i16> %wide.load.1, ptr %i.v, align 2, !tbaa !130, !alias.scope !961, !llvm.access.group !24
  store <8 x i16> %wide.load12.1, ptr %i.w, align 2, !tbaa !130, !alias.scope !961, !llvm.access.group !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %wide.load13.1 = load <8 x i16>, ptr %i.x, align 2, !tbaa !130, !alias.scope !966, !llvm.access.group !24
  %wide.load14.1 = load <8 x i16>, ptr %i.y, align 2, !tbaa !130, !alias.scope !966, !llvm.access.group !24
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <8 x i16> %wide.load13.1, ptr %i.z, align 2, !tbaa !130, !alias.scope !962, !llvm.access.group !24
  store <8 x i16> %wide.load14.1, ptr %i.aa, align 2, !tbaa !130, !alias.scope !962, !llvm.access.group !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %wide.load15.1 = load <8 x i16>, ptr %i.ab, align 2, !tbaa !130, !alias.scope !967, !llvm.access.group !24
  %wide.load16.1 = load <8 x i16>, ptr %i.ac, align 2, !tbaa !130, !alias.scope !967, !llvm.access.group !24
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <8 x i16> %wide.load15.1, ptr %i.ad, align 2, !tbaa !130, !alias.scope !963, !llvm.access.group !24
  store <8 x i16> %wide.load16.1, ptr %i.ae, align 2, !tbaa !130, !alias.scope !963, !llvm.access.group !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %wide.load17.1 = load <8 x i16>, ptr %i.af, align 2, !tbaa !130, !alias.scope !968, !llvm.access.group !24
  %wide.load18.1 = load <8 x i16>, ptr %i.ag, align 2, !tbaa !130, !alias.scope !968, !llvm.access.group !24
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <8 x i16> %wide.load17.1, ptr %i.ah, align 2, !tbaa !130, !alias.scope !964, !llvm.access.group !24
  store <8 x i16> %wide.load18.1, ptr %i.ai, align 2, !tbaa !130, !alias.scope !964, !llvm.access.group !24
  %i.aj = add i64 %i.a, 64
  store i64 %i.aj, ptr %0, align 8, !tbaa !109, !alias.scope !959
  %i.ak = add i64 %i.c, 64
  store i64 %i.ak, ptr %i.b, align 8, !tbaa !109, !alias.scope !959
  %i.al = add i64 %i.e, 64
  store i64 %i.al, ptr %i.d, align 8, !tbaa !109, !alias.scope !959
  %i.am = add i64 %i.g, 64
  store i64 %i.am, ptr %i.f, align 8, !tbaa !109, !alias.scope !959
  %i.an = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !960
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.an(ptr noundef nonnull %0, ptr noundef nonnull %i.ao, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !noalias !969, !inline_history !23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u16_read_planar_fv_x_f32_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias nofree readnone captures(none) %2, ptr noalias nofree readnone captures(none) %3, ptr noalias nofree readnone captures(none) %4, ptr noalias nofree readnone captures(none) %5) #0 {
bb.a:
  %6 = alloca %union.block_t, align 4             ; 37 uses
  %7 = alloca %union.block_t, align 4             ; 3 uses
  %8 = alloca %union.block_t, align 4             ; 3 uses
  %9 = alloca %union.block_t, align 4             ; 3 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !107, !alias.scope !977
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !103, !alias.scope !978
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !103, !alias.scope !978 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !110, !alias.scope !977
  %i.j = mul nsw i32 %i.i, %i.g
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12, !noalias !979
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12, !noalias !979
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12, !noalias !979
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12, !noalias !979
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %6, i8 0, i64 128, i1 false), !noalias !979
  %i.m = icmp sgt i32 %i.g, 0
  br i1 %i.m, label %.lr.ph, label %read_planar_fv_U16.exit

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %wide.trip.count = zext nneg i32 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 76 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 84 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 92 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 100 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 108 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 116 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 124 ; 2 uses
  %.promoted = load float, ptr %6, align 4, !tbaa !103, !noalias !979
  %.promoted17 = load float, ptr %i.o, align 4, !tbaa !103, !noalias !979
  %.promoted18 = load float, ptr %i.p, align 4, !tbaa !103, !noalias !979
  %.promoted19 = load float, ptr %i.q, align 4, !tbaa !103, !noalias !979
  %.promoted20 = load float, ptr %i.r, align 4, !tbaa !103, !noalias !979
  %.promoted21 = load float, ptr %i.s, align 4, !tbaa !103, !noalias !979
  %.promoted22 = load float, ptr %i.t, align 4, !tbaa !103, !noalias !979
  %.promoted23 = load float, ptr %i.u, align 4, !tbaa !103, !noalias !979
  %.promoted24 = load float, ptr %i.v, align 4, !tbaa !103, !noalias !979
  %.promoted25 = load float, ptr %i.w, align 4, !tbaa !103, !noalias !979
  %.promoted26 = load float, ptr %i.x, align 4, !tbaa !103, !noalias !979
  %.promoted27 = load float, ptr %i.y, align 4, !tbaa !103, !noalias !979
  %.promoted28 = load float, ptr %i.z, align 4, !tbaa !103, !noalias !979
  %.promoted29 = load float, ptr %i.aa, align 4, !tbaa !103, !noalias !979
  %.promoted30 = load float, ptr %i.ab, align 4, !tbaa !103, !noalias !979
  %.promoted31 = load float, ptr %i.ac, align 4, !tbaa !103, !noalias !979
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.at = phi float [ %.promoted31, %.lr.ph ], [ %i.el, %bb.b ]
  %i.au = phi float [ %.promoted30, %.lr.ph ], [ %i.eg, %bb.b ]
  %i.av = phi float [ %.promoted29, %.lr.ph ], [ %i.eb, %bb.b ]
  %i.aw = phi float [ %.promoted28, %.lr.ph ], [ %i.dw, %bb.b ]
  %i.ax = phi float [ %.promoted27, %.lr.ph ], [ %i.dr, %bb.b ]
  %i.ay = phi float [ %.promoted26, %.lr.ph ], [ %i.dm, %bb.b ]
  %i.az = phi float [ %.promoted25, %.lr.ph ], [ %i.dh, %bb.b ]
  %i.ba = phi float [ %.promoted24, %.lr.ph ], [ %i.dc, %bb.b ]
  %i.bb = phi float [ %.promoted23, %.lr.ph ], [ %i.cx, %bb.b ]
  %i.bc = phi float [ %.promoted22, %.lr.ph ], [ %i.cs, %bb.b ]
  %i.bd = phi float [ %.promoted21, %.lr.ph ], [ %i.cn, %bb.b ]
  %i.be = phi float [ %.promoted20, %.lr.ph ], [ %i.ci, %bb.b ]
  %i.bf = phi float [ %.promoted19, %.lr.ph ], [ %i.cd, %bb.b ]
  %i.bg = phi float [ %.promoted18, %.lr.ph ], [ %i.by, %bb.b ]
  %i.bh = phi float [ %.promoted17, %.lr.ph ], [ %i.bt, %bb.b ]
  %i.bi = phi float [ %.promoted, %.lr.ph ], [ %i.bo, %bb.b ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.065.i.in12 = phi i64 [ %i.a, %.lr.ph ], [ %i.if, %bb.b ] ; 2 uses
  %.065.i14 = inttoptr i64 %.065.i.in12 to ptr    ; 32 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !117, !noalias !980 ; 32 uses
  %i.bl = load i16, ptr %.065.i14, align 2, !tbaa !130, !noalias !980, !llvm.access.group !25
  %i.bm = uitofp i16 %i.bl to float
  %i.bn = fmul nsz float %i.bk, %i.bm
  %i.bo = fadd nsz float %i.bi, %i.bn             ; 2 uses
  store float %i.bo, ptr %6, align 4, !tbaa !103, !noalias !979, !llvm.access.group !25
end_hunk_3
begin_hunk_4_@u16_read_packed_xy_c:read_packed_U16.exit
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 38
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i16 %i.bo, ptr %i.bp, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 46
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i16 %i.ca, ptr %i.cb, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 54
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 30
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 62
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 34
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 70
  %i.db = load i16, ptr %i.da, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 34
  store i16 %i.db, ptr %i.dc, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i16 %i.de, ptr %i.df, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 74
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i16 %i.dh, ptr %i.di, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 38
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 78
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 38
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i16 %i.dq, ptr %i.dr, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 82
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 42
  store i16 %i.dw, ptr %i.dx, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 86
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 42
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 90
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 46
  store i16 %i.ei, ptr %i.ej, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 94
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 46
  store i16 %i.el, ptr %i.em, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i16 %i.eo, ptr %i.ep, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 98
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i16 %i.er, ptr %i.es, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 50
  store i16 %i.eu, ptr %i.ev, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 102
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 50
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i16 %i.fa, ptr %i.fb, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 106
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i16 %i.fd, ptr %i.fe, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 54
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 110
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 54
  store i16 %i.fj, ptr %i.fk, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 114
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 58
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 118
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 58
  store i16 %i.fv, ptr %i.fw, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 122
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i16 %i.gb, ptr %i.gc, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 62
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !130, !alias.scope !1069, !llvm.access.group !31
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 126
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !130, !alias.scope !1071, !llvm.access.group !31
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 62
  store i16 %i.gh, ptr %i.gi, align 2, !tbaa !130, !alias.scope !1070, !llvm.access.group !31
  %i.gj = add i64 %i.a, 128
  store i64 %i.gj, ptr %0, align 8, !tbaa !109, !alias.scope !1067
  %i.gk = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1068
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.gk(ptr noundef nonnull %0, ptr noundef nonnull %i.gl, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12, !noalias !1071, !inline_history !32
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u16_read_packed_xyz_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 64)) %2, ptr noalias noundef initializes((0, 64)) %3, ptr noalias noundef initializes((0, 64)) %4, ptr noalias noundef %5) #0 {
vector.ph:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 96 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  %i.j = load i16, ptr %i.b, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.k = load i16, ptr %i.c, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.l = load i16, ptr %i.d, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.m = load i16, ptr %i.e, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.n = load i16, ptr %i.f, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.o = load i16, ptr %i.g, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.p = load i16, ptr %i.h, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.q = load i16, ptr %i.i, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.r = insertelement <8 x i16> poison, i16 %i.j, i64 0
  %i.s = insertelement <8 x i16> %i.r, i16 %i.k, i64 1
  %i.t = insertelement <8 x i16> %i.s, i16 %i.l, i64 2
  %i.u = insertelement <8 x i16> %i.t, i16 %i.m, i64 3
  %i.v = insertelement <8 x i16> %i.u, i16 %i.n, i64 4
  %i.w = insertelement <8 x i16> %i.v, i16 %i.o, i64 5
  %i.x = insertelement <8 x i16> %i.w, i16 %i.p, i64 6
  %i.y = insertelement <8 x i16> %i.x, i16 %i.q, i64 7
  store <8 x i16> %i.y, ptr %2, align 2, !tbaa !130, !alias.scope !1081, !llvm.access.group !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.ah = load i16, ptr %i.z, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ai = load i16, ptr %i.aa, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.aj = load i16, ptr %i.ab, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ak = load i16, ptr %i.ac, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.al = load i16, ptr %i.ad, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.am = load i16, ptr %i.ae, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.an = load i16, ptr %i.af, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ao = load i16, ptr %i.ag, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ap = insertelement <8 x i16> poison, i16 %i.ah, i64 0
  %i.aq = insertelement <8 x i16> %i.ap, i16 %i.ai, i64 1
  %i.ar = insertelement <8 x i16> %i.aq, i16 %i.aj, i64 2
  %i.as = insertelement <8 x i16> %i.ar, i16 %i.ak, i64 3
  %i.at = insertelement <8 x i16> %i.as, i16 %i.al, i64 4
  %i.au = insertelement <8 x i16> %i.at, i16 %i.am, i64 5
  %i.av = insertelement <8 x i16> %i.au, i16 %i.an, i64 6
  %i.aw = insertelement <8 x i16> %i.av, i16 %i.ao, i64 7
  store <8 x i16> %i.aw, ptr %3, align 2, !tbaa !130, !alias.scope !1082, !llvm.access.group !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 46
  %i.bf = load i16, ptr %i.ax, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.bg = load i16, ptr %i.ay, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.bh = load i16, ptr %i.az, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.bi = load i16, ptr %i.ba, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.bj = load i16, ptr %i.bb, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.bk = load i16, ptr %i.bc, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.bl = load i16, ptr %i.bd, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.bm = load i16, ptr %i.be, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.bn = insertelement <8 x i16> poison, i16 %i.bf, i64 0
  %i.bo = insertelement <8 x i16> %i.bn, i16 %i.bg, i64 1
  %i.bp = insertelement <8 x i16> %i.bo, i16 %i.bh, i64 2
  %i.bq = insertelement <8 x i16> %i.bp, i16 %i.bi, i64 3
  %i.br = insertelement <8 x i16> %i.bq, i16 %i.bj, i64 4
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 5
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 6
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 7
  store <8 x i16> %i.bu, ptr %4, align 2, !tbaa !130, !alias.scope !1083, !llvm.access.group !31
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 54
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 78
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 90
  %i.cd = load i16, ptr %i.bv, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ce = load i16, ptr %i.bw, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.cf = load i16, ptr %i.bx, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.cg = load i16, ptr %i.by, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ch = load i16, ptr %i.bz, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ci = load i16, ptr %i.ca, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.cj = load i16, ptr %i.cb, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ck = load i16, ptr %i.cc, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.cl = insertelement <8 x i16> poison, i16 %i.cd, i64 0
  %i.cm = insertelement <8 x i16> %i.cl, i16 %i.ce, i64 1
  %i.cn = insertelement <8 x i16> %i.cm, i16 %i.cf, i64 2
  %i.co = insertelement <8 x i16> %i.cn, i16 %i.cg, i64 3
  %i.cp = insertelement <8 x i16> %i.co, i16 %i.ch, i64 4
  %i.cq = insertelement <8 x i16> %i.cp, i16 %i.ci, i64 5
  %i.cr = insertelement <8 x i16> %i.cq, i16 %i.cj, i64 6
  %i.cs = insertelement <8 x i16> %i.cr, i16 %i.ck, i64 7
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <8 x i16> %i.cs, ptr %i.ct, align 2, !tbaa !130, !alias.scope !1081, !llvm.access.group !31
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 62
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 74
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 86
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.dc = load i16, ptr %i.cu, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.dd = load i16, ptr %i.cv, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.de = load i16, ptr %i.cw, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.df = load i16, ptr %i.cx, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.dg = load i16, ptr %i.cy, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.dh = load i16, ptr %i.cz, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.di = load i16, ptr %i.da, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.dj = load i16, ptr %i.db, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.dk = insertelement <8 x i16> poison, i16 %i.dc, i64 0
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.dd, i64 1
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.de, i64 2
  %i.dn = insertelement <8 x i16> %i.dm, i16 %i.df, i64 3
  %i.do = insertelement <8 x i16> %i.dn, i16 %i.dg, i64 4
  %i.dp = insertelement <8 x i16> %i.do, i16 %i.dh, i64 5
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.di, i64 6
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.dj, i64 7
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <8 x i16> %i.dr, ptr %i.ds, align 2, !tbaa !130, !alias.scope !1082, !llvm.access.group !31
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 70
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 82
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 94
  %i.eb = load i16, ptr %i.dt, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ec = load i16, ptr %i.du, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ed = load i16, ptr %i.dv, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ee = load i16, ptr %i.dw, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ef = load i16, ptr %i.dx, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.eg = load i16, ptr %i.dy, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.eh = load i16, ptr %i.dz, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ei = load i16, ptr %i.ea, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ej = insertelement <8 x i16> poison, i16 %i.eb, i64 0
  %i.ek = insertelement <8 x i16> %i.ej, i16 %i.ec, i64 1
  %i.el = insertelement <8 x i16> %i.ek, i16 %i.ed, i64 2
  %i.em = insertelement <8 x i16> %i.el, i16 %i.ee, i64 3
  %i.en = insertelement <8 x i16> %i.em, i16 %i.ef, i64 4
  %i.eo = insertelement <8 x i16> %i.en, i16 %i.eg, i64 5
  %i.ep = insertelement <8 x i16> %i.eo, i16 %i.eh, i64 6
  %i.eq = insertelement <8 x i16> %i.ep, i16 %i.ei, i64 7
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <8 x i16> %i.eq, ptr %i.er, align 2, !tbaa !130, !alias.scope !1083, !llvm.access.group !31
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 102
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 114
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 126
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 138
  %i.fa = load i16, ptr %i.es, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.fb = load i16, ptr %i.et, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.fc = load i16, ptr %i.eu, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.fd = load i16, ptr %i.ev, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.fe = load i16, ptr %i.ew, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ff = load i16, ptr %i.ex, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.fg = load i16, ptr %i.ey, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.fh = load i16, ptr %i.ez, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.fi = insertelement <8 x i16> poison, i16 %i.fa, i64 0
  %i.fj = insertelement <8 x i16> %i.fi, i16 %i.fb, i64 1
  %i.fk = insertelement <8 x i16> %i.fj, i16 %i.fc, i64 2
  %i.fl = insertelement <8 x i16> %i.fk, i16 %i.fd, i64 3
  %i.fm = insertelement <8 x i16> %i.fl, i16 %i.fe, i64 4
  %i.fn = insertelement <8 x i16> %i.fm, i16 %i.ff, i64 5
  %i.fo = insertelement <8 x i16> %i.fn, i16 %i.fg, i64 6
  %i.fp = insertelement <8 x i16> %i.fo, i16 %i.fh, i64 7
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <8 x i16> %i.fp, ptr %i.fq, align 2, !tbaa !130, !alias.scope !1081, !llvm.access.group !31
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 98
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 110
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 122
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 134
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.fz = load i16, ptr %i.fr, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ga = load i16, ptr %i.fs, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.gb = load i16, ptr %i.ft, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.gc = load i16, ptr %i.fu, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.gd = load i16, ptr %i.fv, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ge = load i16, ptr %i.fw, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.gf = load i16, ptr %i.fx, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.gg = load i16, ptr %i.fy, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.gh = insertelement <8 x i16> poison, i16 %i.fz, i64 0
  %i.gi = insertelement <8 x i16> %i.gh, i16 %i.ga, i64 1
  %i.gj = insertelement <8 x i16> %i.gi, i16 %i.gb, i64 2
  %i.gk = insertelement <8 x i16> %i.gj, i16 %i.gc, i64 3
  %i.gl = insertelement <8 x i16> %i.gk, i16 %i.gd, i64 4
  %i.gm = insertelement <8 x i16> %i.gl, i16 %i.ge, i64 5
  %i.gn = insertelement <8 x i16> %i.gm, i16 %i.gf, i64 6
  %i.go = insertelement <8 x i16> %i.gn, i16 %i.gg, i64 7
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <8 x i16> %i.go, ptr %i.gp, align 2, !tbaa !130, !alias.scope !1082, !llvm.access.group !31
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 106
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 118
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 130
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 142
  %i.gy = load i16, ptr %i.gq, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.gz = load i16, ptr %i.gr, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ha = load i16, ptr %i.gs, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.hb = load i16, ptr %i.gt, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.hc = load i16, ptr %i.gu, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.hd = load i16, ptr %i.gv, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.he = load i16, ptr %i.gw, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.hf = load i16, ptr %i.gx, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.hg = insertelement <8 x i16> poison, i16 %i.gy, i64 0
  %i.hh = insertelement <8 x i16> %i.hg, i16 %i.gz, i64 1
  %i.hi = insertelement <8 x i16> %i.hh, i16 %i.ha, i64 2
  %i.hj = insertelement <8 x i16> %i.hi, i16 %i.hb, i64 3
  %i.hk = insertelement <8 x i16> %i.hj, i16 %i.hc, i64 4
  %i.hl = insertelement <8 x i16> %i.hk, i16 %i.hd, i64 5
  %i.hm = insertelement <8 x i16> %i.hl, i16 %i.he, i64 6
  %i.hn = insertelement <8 x i16> %i.hm, i16 %i.hf, i64 7
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 32
  store <8 x i16> %i.hn, ptr %i.ho, align 2, !tbaa !130, !alias.scope !1083, !llvm.access.group !31
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 150
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 162
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 174
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 186
  %i.hx = load i16, ptr %i.hp, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.hy = load i16, ptr %i.hq, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.hz = load i16, ptr %i.hr, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ia = load i16, ptr %i.hs, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ib = load i16, ptr %i.ht, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ic = load i16, ptr %i.hu, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.id = load i16, ptr %i.hv, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ie = load i16, ptr %i.hw, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.if = insertelement <8 x i16> poison, i16 %i.hx, i64 0
  %i.ig = insertelement <8 x i16> %i.if, i16 %i.hy, i64 1
  %i.ih = insertelement <8 x i16> %i.ig, i16 %i.hz, i64 2
  %i.ii = insertelement <8 x i16> %i.ih, i16 %i.ia, i64 3
  %i.ij = insertelement <8 x i16> %i.ii, i16 %i.ib, i64 4
  %i.ik = insertelement <8 x i16> %i.ij, i16 %i.ic, i64 5
  %i.il = insertelement <8 x i16> %i.ik, i16 %i.id, i64 6
  %i.im = insertelement <8 x i16> %i.il, i16 %i.ie, i64 7
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <8 x i16> %i.im, ptr %i.in, align 2, !tbaa !130, !alias.scope !1081, !llvm.access.group !31
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 146
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 158
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 170
  %i.it = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 182
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %i.iw = load i16, ptr %i.io, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ix = load i16, ptr %i.ip, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.iy = load i16, ptr %i.iq, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.iz = load i16, ptr %i.ir, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ja = load i16, ptr %i.is, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.jb = load i16, ptr %i.it, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.jc = load i16, ptr %i.iu, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.jd = load i16, ptr %i.iv, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.je = insertelement <8 x i16> poison, i16 %i.iw, i64 0
  %i.jf = insertelement <8 x i16> %i.je, i16 %i.ix, i64 1
  %i.jg = insertelement <8 x i16> %i.jf, i16 %i.iy, i64 2
  %i.jh = insertelement <8 x i16> %i.jg, i16 %i.iz, i64 3
  %i.ji = insertelement <8 x i16> %i.jh, i16 %i.ja, i64 4
  %i.jj = insertelement <8 x i16> %i.ji, i16 %i.jb, i64 5
  %i.jk = insertelement <8 x i16> %i.jj, i16 %i.jc, i64 6
  %i.jl = insertelement <8 x i16> %i.jk, i16 %i.jd, i64 7
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <8 x i16> %i.jl, ptr %i.jm, align 2, !tbaa !130, !alias.scope !1082, !llvm.access.group !31
  %i.jn = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 154
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 166
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.js = getelementptr inbounds nuw i8, ptr %i.b, i64 178
  %i.jt = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 190
  %i.jv = load i16, ptr %i.jn, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.jw = load i16, ptr %i.jo, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.jx = load i16, ptr %i.jp, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.jy = load i16, ptr %i.jq, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.jz = load i16, ptr %i.jr, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.ka = load i16, ptr %i.js, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.kb = load i16, ptr %i.jt, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.kc = load i16, ptr %i.ju, align 2, !tbaa !130, !alias.scope !1084, !llvm.access.group !31
  %i.kd = insertelement <8 x i16> poison, i16 %i.jv, i64 0
  %i.ke = insertelement <8 x i16> %i.kd, i16 %i.jw, i64 1
  %i.kf = insertelement <8 x i16> %i.ke, i16 %i.jx, i64 2
  %i.kg = insertelement <8 x i16> %i.kf, i16 %i.jy, i64 3
  %i.kh = insertelement <8 x i16> %i.kg, i16 %i.jz, i64 4
  %i.ki = insertelement <8 x i16> %i.kh, i16 %i.ka, i64 5
  %i.kj = insertelement <8 x i16> %i.ki, i16 %i.kb, i64 6
  %i.kk = insertelement <8 x i16> %i.kj, i16 %i.kc, i64 7
  %i.kl = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <8 x i16> %i.kk, ptr %i.kl, align 2, !tbaa !130, !alias.scope !1083, !llvm.access.group !31
  %i.km = add i64 %i.a, 192
  store i64 %i.km, ptr %0, align 8, !tbaa !109, !alias.scope !1079
  %i.kn = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1080
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.kn(ptr noundef nonnull %0, ptr noundef nonnull %i.ko, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !noalias !1084, !inline_history !32
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u16_read_packed_xyzw_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 64)) %2, ptr noalias noundef initializes((0, 64)) %3, ptr noalias noundef initializes((0, 64)) %4, ptr noalias noundef initializes((0, 64)) %5) #0 {
vector.ph:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 128 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i16, ptr %i.b, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.k = load i16, ptr %i.c, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.l = load i16, ptr %i.d, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.m = load i16, ptr %i.e, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.n = load i16, ptr %i.f, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.o = load i16, ptr %i.g, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.p = load i16, ptr %i.h, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.q = load i16, ptr %i.i, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.r = insertelement <8 x i16> poison, i16 %i.j, i64 0
  %i.s = insertelement <8 x i16> %i.r, i16 %i.k, i64 1
  %i.t = insertelement <8 x i16> %i.s, i16 %i.l, i64 2
  %i.u = insertelement <8 x i16> %i.t, i16 %i.m, i64 3
  %i.v = insertelement <8 x i16> %i.u, i16 %i.n, i64 4
  %i.w = insertelement <8 x i16> %i.v, i16 %i.o, i64 5
  %i.x = insertelement <8 x i16> %i.w, i16 %i.p, i64 6
  %i.y = insertelement <8 x i16> %i.x, i16 %i.q, i64 7
  store <8 x i16> %i.y, ptr %2, align 2, !tbaa !130, !alias.scope !1095, !llvm.access.group !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.ah = load i16, ptr %i.z, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.ai = load i16, ptr %i.aa, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.aj = load i16, ptr %i.ab, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.ak = load i16, ptr %i.ac, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.al = load i16, ptr %i.ad, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.am = load i16, ptr %i.ae, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.an = load i16, ptr %i.af, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.ao = load i16, ptr %i.ag, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.ap = insertelement <8 x i16> poison, i16 %i.ah, i64 0
  %i.aq = insertelement <8 x i16> %i.ap, i16 %i.ai, i64 1
  %i.ar = insertelement <8 x i16> %i.aq, i16 %i.aj, i64 2
  %i.as = insertelement <8 x i16> %i.ar, i16 %i.ak, i64 3
  %i.at = insertelement <8 x i16> %i.as, i16 %i.al, i64 4
  %i.au = insertelement <8 x i16> %i.at, i16 %i.am, i64 5
  %i.av = insertelement <8 x i16> %i.au, i16 %i.an, i64 6
  %i.aw = insertelement <8 x i16> %i.av, i16 %i.ao, i64 7
  store <8 x i16> %i.aw, ptr %3, align 2, !tbaa !130, !alias.scope !1096, !llvm.access.group !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.bf = load i16, ptr %i.ax, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.bg = load i16, ptr %i.ay, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.bh = load i16, ptr %i.az, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.bi = load i16, ptr %i.ba, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.bj = load i16, ptr %i.bb, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.bk = load i16, ptr %i.bc, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.bl = load i16, ptr %i.bd, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.bm = load i16, ptr %i.be, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.bn = insertelement <8 x i16> poison, i16 %i.bf, i64 0
  %i.bo = insertelement <8 x i16> %i.bn, i16 %i.bg, i64 1
  %i.bp = insertelement <8 x i16> %i.bo, i16 %i.bh, i64 2
  %i.bq = insertelement <8 x i16> %i.bp, i16 %i.bi, i64 3
  %i.br = insertelement <8 x i16> %i.bq, i16 %i.bj, i64 4
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 5
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 6
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 7
  store <8 x i16> %i.bu, ptr %4, align 2, !tbaa !130, !alias.scope !1097, !llvm.access.group !31
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 38
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 46
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 54
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 62
  %i.cd = load i16, ptr %i.bv, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.ce = load i16, ptr %i.bw, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.cf = load i16, ptr %i.bx, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.cg = load i16, ptr %i.by, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.ch = load i16, ptr %i.bz, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.ci = load i16, ptr %i.ca, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.cj = load i16, ptr %i.cb, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.ck = load i16, ptr %i.cc, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.cl = insertelement <8 x i16> poison, i16 %i.cd, i64 0
  %i.cm = insertelement <8 x i16> %i.cl, i16 %i.ce, i64 1
  %i.cn = insertelement <8 x i16> %i.cm, i16 %i.cf, i64 2
  %i.co = insertelement <8 x i16> %i.cn, i16 %i.cg, i64 3
  %i.cp = insertelement <8 x i16> %i.co, i16 %i.ch, i64 4
  %i.cq = insertelement <8 x i16> %i.cp, i16 %i.ci, i64 5
  %i.cr = insertelement <8 x i16> %i.cq, i16 %i.cj, i64 6
  %i.cs = insertelement <8 x i16> %i.cr, i16 %i.ck, i64 7
  store <8 x i16> %i.cs, ptr %5, align 2, !tbaa !130, !alias.scope !1098, !llvm.access.group !31
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.db = load i16, ptr %i.ct, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.dc = load i16, ptr %i.cu, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.dd = load i16, ptr %i.cv, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.de = load i16, ptr %i.cw, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.df = load i16, ptr %i.cx, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.dg = load i16, ptr %i.cy, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.dh = load i16, ptr %i.cz, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.di = load i16, ptr %i.da, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.dj = insertelement <8 x i16> poison, i16 %i.db, i64 0
  %i.dk = insertelement <8 x i16> %i.dj, i16 %i.dc, i64 1
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.dd, i64 2
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.de, i64 3
  %i.dn = insertelement <8 x i16> %i.dm, i16 %i.df, i64 4
  %i.do = insertelement <8 x i16> %i.dn, i16 %i.dg, i64 5
  %i.dp = insertelement <8 x i16> %i.do, i16 %i.dh, i64 6
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.di, i64 7
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <8 x i16> %i.dq, ptr %i.dr, align 2, !tbaa !130, !alias.scope !1095, !llvm.access.group !31
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 74
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 82
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 90
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 98
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 106
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 114
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 122
  %i.ea = load i16, ptr %i.ds, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.eb = load i16, ptr %i.dt, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.ec = load i16, ptr %i.du, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.ed = load i16, ptr %i.dv, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.ee = load i16, ptr %i.dw, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.ef = load i16, ptr %i.dx, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.eg = load i16, ptr %i.dy, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.eh = load i16, ptr %i.dz, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.ei = insertelement <8 x i16> poison, i16 %i.ea, i64 0
  %i.ej = insertelement <8 x i16> %i.ei, i16 %i.eb, i64 1
  %i.ek = insertelement <8 x i16> %i.ej, i16 %i.ec, i64 2
  %i.el = insertelement <8 x i16> %i.ek, i16 %i.ed, i64 3
  %i.em = insertelement <8 x i16> %i.el, i16 %i.ee, i64 4
  %i.en = insertelement <8 x i16> %i.em, i16 %i.ef, i64 5
  %i.eo = insertelement <8 x i16> %i.en, i16 %i.eg, i64 6
  %i.ep = insertelement <8 x i16> %i.eo, i16 %i.eh, i64 7
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <8 x i16> %i.ep, ptr %i.eq, align 2, !tbaa !130, !alias.scope !1096, !llvm.access.group !31
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.fa = load i16, ptr %i.es, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.fb = load i16, ptr %i.et, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.fc = load i16, ptr %i.eu, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.fd = load i16, ptr %i.ev, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.fe = load i16, ptr %i.ew, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.ff = load i16, ptr %i.ex, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.fg = load i16, ptr %i.ey, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.fh = insertelement <8 x i16> poison, i16 %i.ez, i64 0
  %i.fi = insertelement <8 x i16> %i.fh, i16 %i.fa, i64 1
  %i.fj = insertelement <8 x i16> %i.fi, i16 %i.fb, i64 2
  %i.fk = insertelement <8 x i16> %i.fj, i16 %i.fc, i64 3
  %i.fl = insertelement <8 x i16> %i.fk, i16 %i.fd, i64 4
  %i.fm = insertelement <8 x i16> %i.fl, i16 %i.fe, i64 5
  %i.fn = insertelement <8 x i16> %i.fm, i16 %i.ff, i64 6
  %i.fo = insertelement <8 x i16> %i.fn, i16 %i.fg, i64 7
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <8 x i16> %i.fo, ptr %i.fp, align 2, !tbaa !130, !alias.scope !1097, !llvm.access.group !31
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 70
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 78
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 86
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 94
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 102
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 110
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 118
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 126
  %i.fy = load i16, ptr %i.fq, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.fz = load i16, ptr %i.fr, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.ga = load i16, ptr %i.fs, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.gb = load i16, ptr %i.ft, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
  %i.gc = load i16, ptr %i.fu, align 2, !tbaa !130, !alias.scope !1099, !llvm.access.group !31
end_hunk_4
begin_hunk_5_@u16_to_f32_xyzw_c:vector.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 48
  store <4 x float> %i.ad, ptr %i.ae, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %wide.load8.3 = load <4 x i16>, ptr %i.af, align 2, !tbaa !130, !alias.scope !1353, !llvm.access.group !39
  %i.ag = uitofp <4 x i16> %wide.load8.3 to <4 x float>
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 48
  store <4 x float> %i.ag, ptr %i.ah, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 24
  %wide.load9.3 = load <4 x i16>, ptr %i.ai, align 2, !tbaa !130, !alias.scope !1354, !llvm.access.group !39
  %i.aj = uitofp <4 x i16> %wide.load9.3 to <4 x float>
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <4 x float> %i.aj, ptr %i.ak, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 24
  %wide.load10.3 = load <4 x i16>, ptr %i.al, align 2, !tbaa !130, !alias.scope !1355, !llvm.access.group !39
  %i.am = uitofp <4 x i16> %wide.load10.3 to <4 x float>
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <4 x float> %i.am, ptr %i.an, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %wide.load.4 = load <4 x i16>, ptr %i.ao, align 2, !tbaa !130, !alias.scope !1352, !llvm.access.group !39
  %i.ap = uitofp <4 x i16> %wide.load.4 to <4 x float>
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 64
  store <4 x float> %i.ap, ptr %i.aq, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32
  %wide.load8.4 = load <4 x i16>, ptr %i.ar, align 2, !tbaa !130, !alias.scope !1353, !llvm.access.group !39
  %i.as = uitofp <4 x i16> %wide.load8.4 to <4 x float>
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 64
  store <4 x float> %i.as, ptr %i.at, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 32
  %wide.load9.4 = load <4 x i16>, ptr %i.au, align 2, !tbaa !130, !alias.scope !1354, !llvm.access.group !39
  %i.av = uitofp <4 x i16> %wide.load9.4 to <4 x float>
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 64
  store <4 x float> %i.av, ptr %i.aw, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 32
  %wide.load10.4 = load <4 x i16>, ptr %i.ax, align 2, !tbaa !130, !alias.scope !1355, !llvm.access.group !39
  %i.ay = uitofp <4 x i16> %wide.load10.4 to <4 x float>
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <4 x float> %i.ay, ptr %i.az, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 40
  %wide.load.5 = load <4 x i16>, ptr %i.ba, align 2, !tbaa !130, !alias.scope !1352, !llvm.access.group !39
  %i.bb = uitofp <4 x i16> %wide.load.5 to <4 x float>
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 80
  store <4 x float> %i.bb, ptr %i.bc, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %wide.load8.5 = load <4 x i16>, ptr %i.bd, align 2, !tbaa !130, !alias.scope !1353, !llvm.access.group !39
  %i.be = uitofp <4 x i16> %wide.load8.5 to <4 x float>
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 80
  store <4 x float> %i.be, ptr %i.bf, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 40
  %wide.load9.5 = load <4 x i16>, ptr %i.bg, align 2, !tbaa !130, !alias.scope !1354, !llvm.access.group !39
  %i.bh = uitofp <4 x i16> %wide.load9.5 to <4 x float>
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 80
  store <4 x float> %i.bh, ptr %i.bi, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 40
  %wide.load10.5 = load <4 x i16>, ptr %i.bj, align 2, !tbaa !130, !alias.scope !1355, !llvm.access.group !39
  %i.bk = uitofp <4 x i16> %wide.load10.5 to <4 x float>
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <4 x float> %i.bk, ptr %i.bl, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %wide.load.6 = load <4 x i16>, ptr %i.bm, align 2, !tbaa !130, !alias.scope !1352, !llvm.access.group !39
  %i.bn = uitofp <4 x i16> %wide.load.6 to <4 x float>
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 96
  store <4 x float> %i.bn, ptr %i.bo, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 48
  %wide.load8.6 = load <4 x i16>, ptr %i.bp, align 2, !tbaa !130, !alias.scope !1353, !llvm.access.group !39
  %i.bq = uitofp <4 x i16> %wide.load8.6 to <4 x float>
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 96
  store <4 x float> %i.bq, ptr %i.br, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 48
  %wide.load9.6 = load <4 x i16>, ptr %i.bs, align 2, !tbaa !130, !alias.scope !1354, !llvm.access.group !39
  %i.bt = uitofp <4 x i16> %wide.load9.6 to <4 x float>
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 96
  store <4 x float> %i.bt, ptr %i.bu, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 48
  %wide.load10.6 = load <4 x i16>, ptr %i.bv, align 2, !tbaa !130, !alias.scope !1355, !llvm.access.group !39
  %i.bw = uitofp <4 x i16> %wide.load10.6 to <4 x float>
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <4 x float> %i.bw, ptr %i.bx, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 56
  %wide.load.7 = load <4 x i16>, ptr %i.by, align 2, !tbaa !130, !alias.scope !1352, !llvm.access.group !39
  %i.bz = uitofp <4 x i16> %wide.load.7 to <4 x float>
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 112
  store <4 x float> %i.bz, ptr %i.ca, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 56
  %wide.load8.7 = load <4 x i16>, ptr %i.cb, align 2, !tbaa !130, !alias.scope !1353, !llvm.access.group !39
  %i.cc = uitofp <4 x i16> %wide.load8.7 to <4 x float>
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 112
  store <4 x float> %i.cc, ptr %i.cd, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 56
  %wide.load9.7 = load <4 x i16>, ptr %i.ce, align 2, !tbaa !130, !alias.scope !1354, !llvm.access.group !39
  %i.cf = uitofp <4 x i16> %wide.load9.7 to <4 x float>
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 112
  store <4 x float> %i.cf, ptr %i.cg, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 56
  %wide.load10.7 = load <4 x i16>, ptr %i.ch, align 2, !tbaa !130, !alias.scope !1355, !llvm.access.group !39
  %i.ci = uitofp <4 x i16> %wide.load10.7 to <4 x float>
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 112
  store <4 x float> %i.ci, ptr %i.cj, align 16, !tbaa !103, !noalias !1356, !llvm.access.group !39
  %i.ck = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1351
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void %i.ck(ptr noundef %0, ptr noundef nonnull %i.cl, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #12, !noalias !1357, !inline_history !38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12, !noalias !1356
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12, !noalias !1356
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12, !noalias !1356
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12, !noalias !1356
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u16_scale_x_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
scale_U16.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i16, ptr %i.a, align 16, !tbaa !103, !alias.scope !1361
  %i.c = load <8 x i16>, ptr %2, align 2, !tbaa !130, !alias.scope !1362
  %i.d = insertelement <8 x i16> poison, i16 %i.b, i64 0
  %i.e = shufflevector <8 x i16> %i.d, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.f = mul <8 x i16> %i.c, %i.e
  store <8 x i16> %i.f, ptr %2, align 2, !tbaa !130, !alias.scope !1362
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load <8 x i16>, ptr %i.g, align 2, !tbaa !130, !alias.scope !1362
  %i.i = mul <8 x i16> %i.h, %i.e
  store <8 x i16> %i.i, ptr %i.g, align 2, !tbaa !130, !alias.scope !1362
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.k = load <8 x i16>, ptr %i.j, align 2, !tbaa !130, !alias.scope !1362
  %i.l = mul <8 x i16> %i.k, %i.e
  store <8 x i16> %i.l, ptr %i.j, align 2, !tbaa !130, !alias.scope !1362
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.n = load <8 x i16>, ptr %i.m, align 2, !tbaa !130, !alias.scope !1362
  %i.o = mul <8 x i16> %i.n, %i.e
  store <8 x i16> %i.o, ptr %i.m, align 2, !tbaa !130, !alias.scope !1362
  %i.p = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1361
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.p(ptr noundef %0, ptr noundef nonnull %i.q, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12, !inline_history !40
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u16_scale_xyz_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i16, ptr %i.a, align 16, !tbaa !103, !alias.scope !1369
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.b, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 12 uses
  %wide.load = load <8 x i16>, ptr %2, align 2, !tbaa !130, !alias.scope !1370, !llvm.access.group !1368
  %i.c = mul <8 x i16> %wide.load, %broadcast.splat
  store <8 x i16> %i.c, ptr %2, align 2, !tbaa !130, !alias.scope !1370, !llvm.access.group !1368
  %wide.load8 = load <8 x i16>, ptr %3, align 2, !tbaa !130, !alias.scope !1371, !llvm.access.group !1368
  %i.d = mul <8 x i16> %wide.load8, %broadcast.splat
  store <8 x i16> %i.d, ptr %3, align 2, !tbaa !130, !alias.scope !1371, !llvm.access.group !1368
  %wide.load9 = load <8 x i16>, ptr %4, align 2, !tbaa !130, !alias.scope !1372, !llvm.access.group !1368
  %i.e = mul <8 x i16> %wide.load9, %broadcast.splat
  store <8 x i16> %i.e, ptr %4, align 2, !tbaa !130, !alias.scope !1372, !llvm.access.group !1368
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load.1 = load <8 x i16>, ptr %i.f, align 2, !tbaa !130, !alias.scope !1370, !llvm.access.group !1368
  %i.g = mul <8 x i16> %wide.load.1, %broadcast.splat
  store <8 x i16> %i.g, ptr %i.f, align 2, !tbaa !130, !alias.scope !1370, !llvm.access.group !1368
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %wide.load8.1 = load <8 x i16>, ptr %i.h, align 2, !tbaa !130, !alias.scope !1371, !llvm.access.group !1368
  %i.i = mul <8 x i16> %wide.load8.1, %broadcast.splat
  store <8 x i16> %i.i, ptr %i.h, align 2, !tbaa !130, !alias.scope !1371, !llvm.access.group !1368
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %wide.load9.1 = load <8 x i16>, ptr %i.j, align 2, !tbaa !130, !alias.scope !1372, !llvm.access.group !1368
  %i.k = mul <8 x i16> %wide.load9.1, %broadcast.splat
  store <8 x i16> %i.k, ptr %i.j, align 2, !tbaa !130, !alias.scope !1372, !llvm.access.group !1368
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %wide.load.2 = load <8 x i16>, ptr %i.l, align 2, !tbaa !130, !alias.scope !1370, !llvm.access.group !1368
  %i.m = mul <8 x i16> %wide.load.2, %broadcast.splat
  store <8 x i16> %i.m, ptr %i.l, align 2, !tbaa !130, !alias.scope !1370, !llvm.access.group !1368
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %wide.load8.2 = load <8 x i16>, ptr %i.n, align 2, !tbaa !130, !alias.scope !1371, !llvm.access.group !1368
  %i.o = mul <8 x i16> %wide.load8.2, %broadcast.splat
  store <8 x i16> %i.o, ptr %i.n, align 2, !tbaa !130, !alias.scope !1371, !llvm.access.group !1368
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %wide.load9.2 = load <8 x i16>, ptr %i.p, align 2, !tbaa !130, !alias.scope !1372, !llvm.access.group !1368
  %i.q = mul <8 x i16> %wide.load9.2, %broadcast.splat
  store <8 x i16> %i.q, ptr %i.p, align 2, !tbaa !130, !alias.scope !1372, !llvm.access.group !1368
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.3 = load <8 x i16>, ptr %i.r, align 2, !tbaa !130, !alias.scope !1370, !llvm.access.group !1368
  %i.s = mul <8 x i16> %wide.load.3, %broadcast.splat
  store <8 x i16> %i.s, ptr %i.r, align 2, !tbaa !130, !alias.scope !1370, !llvm.access.group !1368
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %wide.load8.3 = load <8 x i16>, ptr %i.t, align 2, !tbaa !130, !alias.scope !1371, !llvm.access.group !1368
  %i.u = mul <8 x i16> %wide.load8.3, %broadcast.splat
  store <8 x i16> %i.u, ptr %i.t, align 2, !tbaa !130, !alias.scope !1371, !llvm.access.group !1368
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %wide.load9.3 = load <8 x i16>, ptr %i.v, align 2, !tbaa !130, !alias.scope !1372, !llvm.access.group !1368
  %i.w = mul <8 x i16> %wide.load9.3, %broadcast.splat
  store <8 x i16> %i.w, ptr %i.v, align 2, !tbaa !130, !alias.scope !1372, !llvm.access.group !1368
  %i.x = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1369
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.x(ptr noundef %0, ptr noundef nonnull %i.y, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !40
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u16_unpack_xyz_444_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef initializes((0, 64)) %3, ptr noalias noundef initializes((0, 64)) %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %2, align 2, !tbaa !130, !alias.scope !1379, !llvm.access.group !41 ; 3 uses
  %wide.load8 = load <8 x i16>, ptr %i.a, align 2, !tbaa !130, !alias.scope !1379, !llvm.access.group !41 ; 3 uses
  %i.b = lshr <8 x i16> %wide.load, splat (i16 8)
  %i.c = lshr <8 x i16> %wide.load8, splat (i16 8)
  %i.d = and <8 x i16> %i.b, splat (i16 15)
  %i.e = and <8 x i16> %i.c, splat (i16 15)
  store <8 x i16> %i.d, ptr %2, align 2, !tbaa !130, !alias.scope !1379, !llvm.access.group !41
  store <8 x i16> %i.e, ptr %i.a, align 2, !tbaa !130, !alias.scope !1379, !llvm.access.group !41
  %i.f = lshr <8 x i16> %wide.load, splat (i16 4)
  %i.g = lshr <8 x i16> %wide.load8, splat (i16 4)
  %i.h = and <8 x i16> %i.f, splat (i16 15)
  %i.i = and <8 x i16> %i.g, splat (i16 15)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <8 x i16> %i.h, ptr %3, align 2, !tbaa !130, !alias.scope !1380, !llvm.access.group !41
  store <8 x i16> %i.i, ptr %i.j, align 2, !tbaa !130, !alias.scope !1380, !llvm.access.group !41
  %i.k = and <8 x i16> %wide.load, splat (i16 15)
  %i.l = and <8 x i16> %wide.load8, splat (i16 15)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <8 x i16> %i.k, ptr %4, align 2, !tbaa !130, !alias.scope !1381, !llvm.access.group !41
  store <8 x i16> %i.l, ptr %i.m, align 2, !tbaa !130, !alias.scope !1381, !llvm.access.group !41
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.1 = load <8 x i16>, ptr %i.n, align 2, !tbaa !130, !alias.scope !1379, !llvm.access.group !41 ; 3 uses
  %wide.load8.1 = load <8 x i16>, ptr %i.o, align 2, !tbaa !130, !alias.scope !1379, !llvm.access.group !41 ; 3 uses
  %i.p = lshr <8 x i16> %wide.load.1, splat (i16 8)
  %i.q = lshr <8 x i16> %wide.load8.1, splat (i16 8)
  %i.r = and <8 x i16> %i.p, splat (i16 15)
  %i.s = and <8 x i16> %i.q, splat (i16 15)
  store <8 x i16> %i.r, ptr %i.n, align 2, !tbaa !130, !alias.scope !1379, !llvm.access.group !41
  store <8 x i16> %i.s, ptr %i.o, align 2, !tbaa !130, !alias.scope !1379, !llvm.access.group !41
  %i.t = lshr <8 x i16> %wide.load.1, splat (i16 4)
  %i.u = lshr <8 x i16> %wide.load8.1, splat (i16 4)
  %i.v = and <8 x i16> %i.t, splat (i16 15)
  %i.w = and <8 x i16> %i.u, splat (i16 15)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <8 x i16> %i.v, ptr %i.x, align 2, !tbaa !130, !alias.scope !1380, !llvm.access.group !41
  store <8 x i16> %i.w, ptr %i.y, align 2, !tbaa !130, !alias.scope !1380, !llvm.access.group !41
  %i.z = and <8 x i16> %wide.load.1, splat (i16 15)
  %i.aa = and <8 x i16> %wide.load8.1, splat (i16 15)
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <8 x i16> %i.z, ptr %i.ab, align 2, !tbaa !130, !alias.scope !1381, !llvm.access.group !41
  store <8 x i16> %i.aa, ptr %i.ac, align 2, !tbaa !130, !alias.scope !1381, !llvm.access.group !41
  %i.ad = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1378
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.ad(ptr noundef %0, ptr noundef nonnull %i.ae, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !42
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u16_unpack_xyz_555_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef initializes((0, 64)) %3, ptr noalias noundef initializes((0, 64)) %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %2, align 2, !tbaa !130, !alias.scope !1388, !llvm.access.group !41 ; 3 uses
  %wide.load8 = load <8 x i16>, ptr %i.a, align 2, !tbaa !130, !alias.scope !1388, !llvm.access.group !41 ; 3 uses
  %i.b = lshr <8 x i16> %wide.load, splat (i16 10)
  %i.c = lshr <8 x i16> %wide.load8, splat (i16 10)
  %i.d = and <8 x i16> %i.b, splat (i16 31)
  %i.e = and <8 x i16> %i.c, splat (i16 31)
  store <8 x i16> %i.d, ptr %2, align 2, !tbaa !130, !alias.scope !1388, !llvm.access.group !41
  store <8 x i16> %i.e, ptr %i.a, align 2, !tbaa !130, !alias.scope !1388, !llvm.access.group !41
  %i.f = lshr <8 x i16> %wide.load, splat (i16 5)
  %i.g = lshr <8 x i16> %wide.load8, splat (i16 5)
  %i.h = and <8 x i16> %i.f, splat (i16 31)
  %i.i = and <8 x i16> %i.g, splat (i16 31)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <8 x i16> %i.h, ptr %3, align 2, !tbaa !130, !alias.scope !1389, !llvm.access.group !41
  store <8 x i16> %i.i, ptr %i.j, align 2, !tbaa !130, !alias.scope !1389, !llvm.access.group !41
  %i.k = and <8 x i16> %wide.load, splat (i16 31)
  %i.l = and <8 x i16> %wide.load8, splat (i16 31)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <8 x i16> %i.k, ptr %4, align 2, !tbaa !130, !alias.scope !1390, !llvm.access.group !41
  store <8 x i16> %i.l, ptr %i.m, align 2, !tbaa !130, !alias.scope !1390, !llvm.access.group !41
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.1 = load <8 x i16>, ptr %i.n, align 2, !tbaa !130, !alias.scope !1388, !llvm.access.group !41 ; 3 uses
  %wide.load8.1 = load <8 x i16>, ptr %i.o, align 2, !tbaa !130, !alias.scope !1388, !llvm.access.group !41 ; 3 uses
  %i.p = lshr <8 x i16> %wide.load.1, splat (i16 10)
  %i.q = lshr <8 x i16> %wide.load8.1, splat (i16 10)
  %i.r = and <8 x i16> %i.p, splat (i16 31)
  %i.s = and <8 x i16> %i.q, splat (i16 31)
  store <8 x i16> %i.r, ptr %i.n, align 2, !tbaa !130, !alias.scope !1388, !llvm.access.group !41
  store <8 x i16> %i.s, ptr %i.o, align 2, !tbaa !130, !alias.scope !1388, !llvm.access.group !41
  %i.t = lshr <8 x i16> %wide.load.1, splat (i16 5)
  %i.u = lshr <8 x i16> %wide.load8.1, splat (i16 5)
  %i.v = and <8 x i16> %i.t, splat (i16 31)
  %i.w = and <8 x i16> %i.u, splat (i16 31)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <8 x i16> %i.v, ptr %i.x, align 2, !tbaa !130, !alias.scope !1389, !llvm.access.group !41
  store <8 x i16> %i.w, ptr %i.y, align 2, !tbaa !130, !alias.scope !1389, !llvm.access.group !41
  %i.z = and <8 x i16> %wide.load.1, splat (i16 31)
  %i.aa = and <8 x i16> %wide.load8.1, splat (i16 31)
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <8 x i16> %i.z, ptr %i.ab, align 2, !tbaa !130, !alias.scope !1390, !llvm.access.group !41
  store <8 x i16> %i.aa, ptr %i.ac, align 2, !tbaa !130, !alias.scope !1390, !llvm.access.group !41
  %i.ad = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1387
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.ad(ptr noundef %0, ptr noundef nonnull %i.ae, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !42
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u16_unpack_xyz_565_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef initializes((0, 64)) %3, ptr noalias noundef initializes((0, 64)) %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %2, align 2, !tbaa !130, !alias.scope !1397, !llvm.access.group !41 ; 3 uses
  %wide.load8 = load <8 x i16>, ptr %i.a, align 2, !tbaa !130, !alias.scope !1397, !llvm.access.group !41 ; 3 uses
  %i.b = lshr <8 x i16> %wide.load, splat (i16 11)
  %i.c = lshr <8 x i16> %wide.load8, splat (i16 11)
  store <8 x i16> %i.b, ptr %2, align 2, !tbaa !130, !alias.scope !1397, !llvm.access.group !41
  store <8 x i16> %i.c, ptr %i.a, align 2, !tbaa !130, !alias.scope !1397, !llvm.access.group !41
  %i.d = lshr <8 x i16> %wide.load, splat (i16 5)
  %i.e = lshr <8 x i16> %wide.load8, splat (i16 5)
  %i.f = and <8 x i16> %i.d, splat (i16 63)
  %i.g = and <8 x i16> %i.e, splat (i16 63)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <8 x i16> %i.f, ptr %3, align 2, !tbaa !130, !alias.scope !1398, !llvm.access.group !41
  store <8 x i16> %i.g, ptr %i.h, align 2, !tbaa !130, !alias.scope !1398, !llvm.access.group !41
  %i.i = and <8 x i16> %wide.load, splat (i16 31)
  %i.j = and <8 x i16> %wide.load8, splat (i16 31)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <8 x i16> %i.i, ptr %4, align 2, !tbaa !130, !alias.scope !1399, !llvm.access.group !41
  store <8 x i16> %i.j, ptr %i.k, align 2, !tbaa !130, !alias.scope !1399, !llvm.access.group !41
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.1 = load <8 x i16>, ptr %i.l, align 2, !tbaa !130, !alias.scope !1397, !llvm.access.group !41 ; 3 uses
  %wide.load8.1 = load <8 x i16>, ptr %i.m, align 2, !tbaa !130, !alias.scope !1397, !llvm.access.group !41 ; 3 uses
  %i.n = lshr <8 x i16> %wide.load.1, splat (i16 11)
  %i.o = lshr <8 x i16> %wide.load8.1, splat (i16 11)
  store <8 x i16> %i.n, ptr %i.l, align 2, !tbaa !130, !alias.scope !1397, !llvm.access.group !41
  store <8 x i16> %i.o, ptr %i.m, align 2, !tbaa !130, !alias.scope !1397, !llvm.access.group !41
  %i.p = lshr <8 x i16> %wide.load.1, splat (i16 5)
  %i.q = lshr <8 x i16> %wide.load8.1, splat (i16 5)
  %i.r = and <8 x i16> %i.p, splat (i16 63)
  %i.s = and <8 x i16> %i.q, splat (i16 63)
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <8 x i16> %i.r, ptr %i.t, align 2, !tbaa !130, !alias.scope !1398, !llvm.access.group !41
  store <8 x i16> %i.s, ptr %i.u, align 2, !tbaa !130, !alias.scope !1398, !llvm.access.group !41
  %i.v = and <8 x i16> %wide.load.1, splat (i16 31)
  %i.w = and <8 x i16> %wide.load8.1, splat (i16 31)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <8 x i16> %i.v, ptr %i.x, align 2, !tbaa !130, !alias.scope !1399, !llvm.access.group !41
  store <8 x i16> %i.w, ptr %i.y, align 2, !tbaa !130, !alias.scope !1399, !llvm.access.group !41
  %i.z = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1396
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.z(ptr noundef %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !42
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u16_pack_xyz_444_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %2, align 2, !tbaa !130, !alias.scope !1406, !llvm.access.group !43
  %wide.load8 = load <8 x i16>, ptr %i.a, align 2, !tbaa !130, !alias.scope !1406, !llvm.access.group !43
  %i.b = shl <8 x i16> %wide.load, splat (i16 8)
  %i.c = shl <8 x i16> %wide.load8, splat (i16 8)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load9 = load <8 x i16>, ptr %3, align 2, !tbaa !130, !alias.scope !1407, !llvm.access.group !43
  %wide.load10 = load <8 x i16>, ptr %i.d, align 2, !tbaa !130, !alias.scope !1407, !llvm.access.group !43
  %i.e = shl <8 x i16> %wide.load9, splat (i16 4)
  %i.f = shl <8 x i16> %wide.load10, splat (i16 4)
  %i.g = or <8 x i16> %i.e, %i.b
  %i.h = or <8 x i16> %i.f, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load11 = load <8 x i16>, ptr %4, align 2, !tbaa !130, !alias.scope !1408, !llvm.access.group !43
  %wide.load12 = load <8 x i16>, ptr %i.i, align 2, !tbaa !130, !alias.scope !1408, !llvm.access.group !43
  %i.j = or <8 x i16> %i.g, %wide.load11
  %i.k = or <8 x i16> %i.h, %wide.load12
  store <8 x i16> %i.j, ptr %2, align 2, !tbaa !130, !alias.scope !1406, !llvm.access.group !43
  store <8 x i16> %i.k, ptr %i.a, align 2, !tbaa !130, !alias.scope !1406, !llvm.access.group !43
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.1 = load <8 x i16>, ptr %i.l, align 2, !tbaa !130, !alias.scope !1406, !llvm.access.group !43
  %wide.load8.1 = load <8 x i16>, ptr %i.m, align 2, !tbaa !130, !alias.scope !1406, !llvm.access.group !43
  %i.n = shl <8 x i16> %wide.load.1, splat (i16 8)
  %i.o = shl <8 x i16> %wide.load8.1, splat (i16 8)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 48
  %wide.load9.1 = load <8 x i16>, ptr %i.p, align 2, !tbaa !130, !alias.scope !1407, !llvm.access.group !43
  %wide.load10.1 = load <8 x i16>, ptr %i.q, align 2, !tbaa !130, !alias.scope !1407, !llvm.access.group !43
  %i.r = shl <8 x i16> %wide.load9.1, splat (i16 4)
  %i.s = shl <8 x i16> %wide.load10.1, splat (i16 4)
  %i.t = or <8 x i16> %i.r, %i.n
  %i.u = or <8 x i16> %i.s, %i.o
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %wide.load11.1 = load <8 x i16>, ptr %i.v, align 2, !tbaa !130, !alias.scope !1408, !llvm.access.group !43
  %wide.load12.1 = load <8 x i16>, ptr %i.w, align 2, !tbaa !130, !alias.scope !1408, !llvm.access.group !43
  %i.x = or <8 x i16> %i.t, %wide.load11.1
  %i.y = or <8 x i16> %i.u, %wide.load12.1
  store <8 x i16> %i.x, ptr %i.l, align 2, !tbaa !130, !alias.scope !1406, !llvm.access.group !43
  store <8 x i16> %i.y, ptr %i.m, align 2, !tbaa !130, !alias.scope !1406, !llvm.access.group !43
  %i.z = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1405
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.z(ptr noundef %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !44
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u16_pack_xyz_555_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %2, align 2, !tbaa !130, !alias.scope !1415, !llvm.access.group !43
  %wide.load8 = load <8 x i16>, ptr %i.a, align 2, !tbaa !130, !alias.scope !1415, !llvm.access.group !43
  %i.b = shl <8 x i16> %wide.load, splat (i16 10)
  %i.c = shl <8 x i16> %wide.load8, splat (i16 10)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load9 = load <8 x i16>, ptr %3, align 2, !tbaa !130, !alias.scope !1416, !llvm.access.group !43
  %wide.load10 = load <8 x i16>, ptr %i.d, align 2, !tbaa !130, !alias.scope !1416, !llvm.access.group !43
  %i.e = shl <8 x i16> %wide.load9, splat (i16 5)
  %i.f = shl <8 x i16> %wide.load10, splat (i16 5)
  %i.g = or <8 x i16> %i.e, %i.b
  %i.h = or <8 x i16> %i.f, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load11 = load <8 x i16>, ptr %4, align 2, !tbaa !130, !alias.scope !1417, !llvm.access.group !43
  %wide.load12 = load <8 x i16>, ptr %i.i, align 2, !tbaa !130, !alias.scope !1417, !llvm.access.group !43
  %i.j = or <8 x i16> %i.g, %wide.load11
  %i.k = or <8 x i16> %i.h, %wide.load12
  store <8 x i16> %i.j, ptr %2, align 2, !tbaa !130, !alias.scope !1415, !llvm.access.group !43
  store <8 x i16> %i.k, ptr %i.a, align 2, !tbaa !130, !alias.scope !1415, !llvm.access.group !43
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.1 = load <8 x i16>, ptr %i.l, align 2, !tbaa !130, !alias.scope !1415, !llvm.access.group !43
  %wide.load8.1 = load <8 x i16>, ptr %i.m, align 2, !tbaa !130, !alias.scope !1415, !llvm.access.group !43
  %i.n = shl <8 x i16> %wide.load.1, splat (i16 10)
  %i.o = shl <8 x i16> %wide.load8.1, splat (i16 10)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 48
  %wide.load9.1 = load <8 x i16>, ptr %i.p, align 2, !tbaa !130, !alias.scope !1416, !llvm.access.group !43
  %wide.load10.1 = load <8 x i16>, ptr %i.q, align 2, !tbaa !130, !alias.scope !1416, !llvm.access.group !43
  %i.r = shl <8 x i16> %wide.load9.1, splat (i16 5)
  %i.s = shl <8 x i16> %wide.load10.1, splat (i16 5)
  %i.t = or <8 x i16> %i.r, %i.n
  %i.u = or <8 x i16> %i.s, %i.o
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %wide.load11.1 = load <8 x i16>, ptr %i.v, align 2, !tbaa !130, !alias.scope !1417, !llvm.access.group !43
  %wide.load12.1 = load <8 x i16>, ptr %i.w, align 2, !tbaa !130, !alias.scope !1417, !llvm.access.group !43
  %i.x = or <8 x i16> %i.t, %wide.load11.1
  %i.y = or <8 x i16> %i.u, %wide.load12.1
  store <8 x i16> %i.x, ptr %i.l, align 2, !tbaa !130, !alias.scope !1415, !llvm.access.group !43
  store <8 x i16> %i.y, ptr %i.m, align 2, !tbaa !130, !alias.scope !1415, !llvm.access.group !43
  %i.z = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1414
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.z(ptr noundef %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !44
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u16_pack_xyz_565_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %2, align 2, !tbaa !130, !alias.scope !1424, !llvm.access.group !43
  %wide.load8 = load <8 x i16>, ptr %i.a, align 2, !tbaa !130, !alias.scope !1424, !llvm.access.group !43
  %i.b = shl <8 x i16> %wide.load, splat (i16 11)
  %i.c = shl <8 x i16> %wide.load8, splat (i16 11)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load9 = load <8 x i16>, ptr %3, align 2, !tbaa !130, !alias.scope !1425, !llvm.access.group !43
  %wide.load10 = load <8 x i16>, ptr %i.d, align 2, !tbaa !130, !alias.scope !1425, !llvm.access.group !43
  %i.e = shl <8 x i16> %wide.load9, splat (i16 5)
  %i.f = shl <8 x i16> %wide.load10, splat (i16 5)
  %i.g = or <8 x i16> %i.e, %i.b
  %i.h = or <8 x i16> %i.f, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load11 = load <8 x i16>, ptr %4, align 2, !tbaa !130, !alias.scope !1426, !llvm.access.group !43
  %wide.load12 = load <8 x i16>, ptr %i.i, align 2, !tbaa !130, !alias.scope !1426, !llvm.access.group !43
  %i.j = or <8 x i16> %i.g, %wide.load11
  %i.k = or <8 x i16> %i.h, %wide.load12
  store <8 x i16> %i.j, ptr %2, align 2, !tbaa !130, !alias.scope !1424, !llvm.access.group !43
  store <8 x i16> %i.k, ptr %i.a, align 2, !tbaa !130, !alias.scope !1424, !llvm.access.group !43
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.1 = load <8 x i16>, ptr %i.l, align 2, !tbaa !130, !alias.scope !1424, !llvm.access.group !43
  %wide.load8.1 = load <8 x i16>, ptr %i.m, align 2, !tbaa !130, !alias.scope !1424, !llvm.access.group !43
  %i.n = shl <8 x i16> %wide.load.1, splat (i16 11)
  %i.o = shl <8 x i16> %wide.load8.1, splat (i16 11)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 48
  %wide.load9.1 = load <8 x i16>, ptr %i.p, align 2, !tbaa !130, !alias.scope !1425, !llvm.access.group !43
  %wide.load10.1 = load <8 x i16>, ptr %i.q, align 2, !tbaa !130, !alias.scope !1425, !llvm.access.group !43
  %i.r = shl <8 x i16> %wide.load9.1, splat (i16 5)
  %i.s = shl <8 x i16> %wide.load10.1, splat (i16 5)
  %i.t = or <8 x i16> %i.r, %i.n
  %i.u = or <8 x i16> %i.s, %i.o
end_hunk_5
begin_hunk_6_@u16_clear_xzw_xx0_c:clear_U16.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1657)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i16, ptr %i.a, align 16, !tbaa !103, !alias.scope !1654
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i16, ptr %i.c, align 4, !tbaa !103, !alias.scope !1654
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %5, i8 0, i64 64, i1 false), !tbaa !130, !alias.scope !1657
  %i.e = insertelement <8 x i16> poison, i16 %i.b, i64 0
  %i.f = shufflevector <8 x i16> %i.e, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  store <8 x i16> %i.f, ptr %2, align 2, !tbaa !130, !alias.scope !1655
  %i.g = insertelement <8 x i16> poison, i16 %i.d, i64 0
  %i.h = shufflevector <8 x i16> %i.g, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  store <8 x i16> %i.h, ptr %4, align 2, !tbaa !130, !alias.scope !1656
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <8 x i16> %i.f, ptr %i.i, align 2, !tbaa !130, !alias.scope !1655
  store <8 x i16> %i.h, ptr %i.j, align 2, !tbaa !130, !alias.scope !1656
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  store <8 x i16> %i.f, ptr %i.k, align 2, !tbaa !130, !alias.scope !1655
  store <8 x i16> %i.h, ptr %i.l, align 2, !tbaa !130, !alias.scope !1656
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <8 x i16> %i.f, ptr %i.m, align 2, !tbaa !130, !alias.scope !1655
  store <8 x i16> %i.h, ptr %i.n, align 2, !tbaa !130, !alias.scope !1656
  %i.o = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1654
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.o(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !inline_history !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u16_clear_xzw_1xx_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 64)) %2, ptr noalias noundef %3, ptr noalias noundef initializes((0, 64)) %4, ptr noalias noundef initializes((0, 64)) %5) #0 {
clear_U16.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1666)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i16, ptr %i.a, align 4, !tbaa !103, !alias.scope !1663
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.d = load i16, ptr %i.c, align 2, !tbaa !103, !alias.scope !1663
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %2, i8 -1, i64 64, i1 false), !tbaa !130, !alias.scope !1664
  %i.e = insertelement <8 x i16> poison, i16 %i.b, i64 0
  %i.f = shufflevector <8 x i16> %i.e, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  store <8 x i16> %i.f, ptr %4, align 2, !tbaa !130, !alias.scope !1665
  %i.g = insertelement <8 x i16> poison, i16 %i.d, i64 0
  %i.h = shufflevector <8 x i16> %i.g, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  store <8 x i16> %i.h, ptr %5, align 2, !tbaa !130, !alias.scope !1666
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <8 x i16> %i.f, ptr %i.i, align 2, !tbaa !130, !alias.scope !1665
  store <8 x i16> %i.h, ptr %i.j, align 2, !tbaa !130, !alias.scope !1666
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  store <8 x i16> %i.f, ptr %i.k, align 2, !tbaa !130, !alias.scope !1665
  store <8 x i16> %i.h, ptr %i.l, align 2, !tbaa !130, !alias.scope !1666
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <8 x i16> %i.f, ptr %i.m, align 2, !tbaa !130, !alias.scope !1665
  store <8 x i16> %i.h, ptr %i.n, align 2, !tbaa !130, !alias.scope !1666
  %i.o = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1663
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.o(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !inline_history !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_read_planar_x_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 128)) %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
read_planar_U32.exit:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  %i.c = load <4 x i32>, ptr %i.b, align 4, !tbaa !104, !alias.scope !1678
  store <4 x i32> %i.c, ptr %2, align 4, !tbaa !104, !alias.scope !1677
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load <4 x i32>, ptr %i.d, align 4, !tbaa !104, !alias.scope !1678
  store <4 x i32> %i.f, ptr %i.e, align 4, !tbaa !104, !alias.scope !1677
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load <4 x i32>, ptr %i.g, align 4, !tbaa !104, !alias.scope !1678
  store <4 x i32> %i.i, ptr %i.h, align 4, !tbaa !104, !alias.scope !1677
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = load <4 x i32>, ptr %i.j, align 4, !tbaa !104, !alias.scope !1678
  store <4 x i32> %i.l, ptr %i.k, align 4, !tbaa !104, !alias.scope !1677
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = load <4 x i32>, ptr %i.m, align 4, !tbaa !104, !alias.scope !1678
  store <4 x i32> %i.o, ptr %i.n, align 4, !tbaa !104, !alias.scope !1677
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.r = load <4 x i32>, ptr %i.p, align 4, !tbaa !104, !alias.scope !1678
  store <4 x i32> %i.r, ptr %i.q, align 4, !tbaa !104, !alias.scope !1677
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.u = load <4 x i32>, ptr %i.s, align 4, !tbaa !104, !alias.scope !1678
  store <4 x i32> %i.u, ptr %i.t, align 4, !tbaa !104, !alias.scope !1677
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.x = load <4 x i32>, ptr %i.v, align 4, !tbaa !104, !alias.scope !1678
  store <4 x i32> %i.x, ptr %i.w, align 4, !tbaa !104, !alias.scope !1677
  %i.y = add i64 %i.a, 128
  store i64 %i.y, ptr %0, align 8, !tbaa !109, !alias.scope !1675
  %i.z = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1676
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.z(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12, !noalias !1679, !inline_history !50
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_read_planar_xy_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 128)) %2, ptr noalias noundef initializes((0, 128)) %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
read_planar_U32.exit:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1694)
  %i.f = load <4 x i32>, ptr %i.b, align 4, !tbaa !104, !alias.scope !1693
  store <4 x i32> %i.f, ptr %2, align 4, !tbaa !104, !alias.scope !1691
  %i.g = load <4 x i32>, ptr %i.e, align 4, !tbaa !104, !alias.scope !1694
  store <4 x i32> %i.g, ptr %3, align 4, !tbaa !104, !alias.scope !1692
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load <4 x i32>, ptr %i.h, align 4, !tbaa !104, !alias.scope !1693
  store <4 x i32> %i.l, ptr %i.i, align 4, !tbaa !104, !alias.scope !1691
  %i.m = load <4 x i32>, ptr %i.j, align 4, !tbaa !104, !alias.scope !1694
  store <4 x i32> %i.m, ptr %i.k, align 4, !tbaa !104, !alias.scope !1692
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = load <4 x i32>, ptr %i.n, align 4, !tbaa !104, !alias.scope !1693
  store <4 x i32> %i.r, ptr %i.o, align 4, !tbaa !104, !alias.scope !1691
  %i.s = load <4 x i32>, ptr %i.p, align 4, !tbaa !104, !alias.scope !1694
  store <4 x i32> %i.s, ptr %i.q, align 4, !tbaa !104, !alias.scope !1692
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.x = load <4 x i32>, ptr %i.t, align 4, !tbaa !104, !alias.scope !1693
  store <4 x i32> %i.x, ptr %i.u, align 4, !tbaa !104, !alias.scope !1691
  %i.y = load <4 x i32>, ptr %i.v, align 4, !tbaa !104, !alias.scope !1694
  store <4 x i32> %i.y, ptr %i.w, align 4, !tbaa !104, !alias.scope !1692
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ad = load <4 x i32>, ptr %i.z, align 4, !tbaa !104, !alias.scope !1693
  store <4 x i32> %i.ad, ptr %i.aa, align 4, !tbaa !104, !alias.scope !1691
  %i.ae = load <4 x i32>, ptr %i.ab, align 4, !tbaa !104, !alias.scope !1694
  store <4 x i32> %i.ae, ptr %i.ac, align 4, !tbaa !104, !alias.scope !1692
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.aj = load <4 x i32>, ptr %i.af, align 4, !tbaa !104, !alias.scope !1693
  store <4 x i32> %i.aj, ptr %i.ag, align 4, !tbaa !104, !alias.scope !1691
  %i.ak = load <4 x i32>, ptr %i.ah, align 4, !tbaa !104, !alias.scope !1694
  store <4 x i32> %i.ak, ptr %i.ai, align 4, !tbaa !104, !alias.scope !1692
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ap = load <4 x i32>, ptr %i.al, align 4, !tbaa !104, !alias.scope !1693
  store <4 x i32> %i.ap, ptr %i.am, align 4, !tbaa !104, !alias.scope !1691
  %i.aq = load <4 x i32>, ptr %i.an, align 4, !tbaa !104, !alias.scope !1694
  store <4 x i32> %i.aq, ptr %i.ao, align 4, !tbaa !104, !alias.scope !1692
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.av = load <4 x i32>, ptr %i.ar, align 4, !tbaa !104, !alias.scope !1693
  store <4 x i32> %i.av, ptr %i.as, align 4, !tbaa !104, !alias.scope !1691
  %i.aw = load <4 x i32>, ptr %i.at, align 4, !tbaa !104, !alias.scope !1694
  store <4 x i32> %i.aw, ptr %i.au, align 4, !tbaa !104, !alias.scope !1692
  %i.ax = add i64 %i.a, 128
  store i64 %i.ax, ptr %0, align 8, !tbaa !109, !alias.scope !1689
  %i.ay = add i64 %i.d, 128
  store i64 %i.ay, ptr %i.c, align 8, !tbaa !109, !alias.scope !1689
  %i.az = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1690
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.az(ptr noundef nonnull %0, ptr noundef nonnull %i.ba, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5) #12, !noalias !1695, !inline_history !50
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_read_planar_xyz_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 128)) %2, ptr noalias noundef initializes((0, 128)) %3, ptr noalias noundef initializes((0, 128)) %4, ptr noalias noundef %5) #0 {
vector.ph:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !109  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  %i.f = inttoptr i64 %i.e to ptr                 ; 8 uses
  %i.g = inttoptr i64 %i.c to ptr                 ; 8 uses
  %i.h = inttoptr i64 %i.a to ptr                 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <4 x i32>, ptr %i.h, align 4, !tbaa !104, !alias.scope !1711, !llvm.access.group !51
  %wide.load12 = load <4 x i32>, ptr %i.i, align 4, !tbaa !104, !alias.scope !1711, !llvm.access.group !51
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x i32> %wide.load, ptr %2, align 4, !tbaa !104, !alias.scope !1708, !llvm.access.group !51
  store <4 x i32> %wide.load12, ptr %i.j, align 4, !tbaa !104, !alias.scope !1708, !llvm.access.group !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load13 = load <4 x i32>, ptr %i.g, align 4, !tbaa !104, !alias.scope !1712, !llvm.access.group !51
  %wide.load14 = load <4 x i32>, ptr %i.k, align 4, !tbaa !104, !alias.scope !1712, !llvm.access.group !51
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x i32> %wide.load13, ptr %3, align 4, !tbaa !104, !alias.scope !1709, !llvm.access.group !51
  store <4 x i32> %wide.load14, ptr %i.l, align 4, !tbaa !104, !alias.scope !1709, !llvm.access.group !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load15 = load <4 x i32>, ptr %i.f, align 4, !tbaa !104, !alias.scope !1713, !llvm.access.group !51
  %wide.load16 = load <4 x i32>, ptr %i.m, align 4, !tbaa !104, !alias.scope !1713, !llvm.access.group !51
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> %wide.load15, ptr %4, align 4, !tbaa !104, !alias.scope !1710, !llvm.access.group !51
  store <4 x i32> %wide.load16, ptr %i.n, align 4, !tbaa !104, !alias.scope !1710, !llvm.access.group !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %wide.load.1 = load <4 x i32>, ptr %i.o, align 4, !tbaa !104, !alias.scope !1711, !llvm.access.group !51
  %wide.load12.1 = load <4 x i32>, ptr %i.p, align 4, !tbaa !104, !alias.scope !1711, !llvm.access.group !51
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x i32> %wide.load.1, ptr %i.q, align 4, !tbaa !104, !alias.scope !1708, !llvm.access.group !51
  store <4 x i32> %wide.load12.1, ptr %i.r, align 4, !tbaa !104, !alias.scope !1708, !llvm.access.group !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %wide.load13.1 = load <4 x i32>, ptr %i.s, align 4, !tbaa !104, !alias.scope !1712, !llvm.access.group !51
  %wide.load14.1 = load <4 x i32>, ptr %i.t, align 4, !tbaa !104, !alias.scope !1712, !llvm.access.group !51
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x i32> %wide.load13.1, ptr %i.u, align 4, !tbaa !104, !alias.scope !1709, !llvm.access.group !51
  store <4 x i32> %wide.load14.1, ptr %i.v, align 4, !tbaa !104, !alias.scope !1709, !llvm.access.group !51
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %wide.load15.1 = load <4 x i32>, ptr %i.w, align 4, !tbaa !104, !alias.scope !1713, !llvm.access.group !51
  %wide.load16.1 = load <4 x i32>, ptr %i.x, align 4, !tbaa !104, !alias.scope !1713, !llvm.access.group !51
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <4 x i32> %wide.load15.1, ptr %i.y, align 4, !tbaa !104, !alias.scope !1710, !llvm.access.group !51
  store <4 x i32> %wide.load16.1, ptr %i.z, align 4, !tbaa !104, !alias.scope !1710, !llvm.access.group !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %wide.load.2 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !104, !alias.scope !1711, !llvm.access.group !51
  %wide.load12.2 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !104, !alias.scope !1711, !llvm.access.group !51
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 80
  store <4 x i32> %wide.load.2, ptr %i.ac, align 4, !tbaa !104, !alias.scope !1708, !llvm.access.group !51
  store <4 x i32> %wide.load12.2, ptr %i.ad, align 4, !tbaa !104, !alias.scope !1708, !llvm.access.group !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %wide.load13.2 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !104, !alias.scope !1712, !llvm.access.group !51
  %wide.load14.2 = load <4 x i32>, ptr %i.af, align 4, !tbaa !104, !alias.scope !1712, !llvm.access.group !51
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <4 x i32> %wide.load13.2, ptr %i.ag, align 4, !tbaa !104, !alias.scope !1709, !llvm.access.group !51
  store <4 x i32> %wide.load14.2, ptr %i.ah, align 4, !tbaa !104, !alias.scope !1709, !llvm.access.group !51
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %wide.load15.2 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !104, !alias.scope !1713, !llvm.access.group !51
  %wide.load16.2 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !104, !alias.scope !1713, !llvm.access.group !51
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 80
  store <4 x i32> %wide.load15.2, ptr %i.ak, align 4, !tbaa !104, !alias.scope !1710, !llvm.access.group !51
  store <4 x i32> %wide.load16.2, ptr %i.al, align 4, !tbaa !104, !alias.scope !1710, !llvm.access.group !51
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %wide.load.3 = load <4 x i32>, ptr %i.am, align 4, !tbaa !104, !alias.scope !1711, !llvm.access.group !51
  %wide.load12.3 = load <4 x i32>, ptr %i.an, align 4, !tbaa !104, !alias.scope !1711, !llvm.access.group !51
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112
  store <4 x i32> %wide.load.3, ptr %i.ao, align 4, !tbaa !104, !alias.scope !1708, !llvm.access.group !51
  store <4 x i32> %wide.load12.3, ptr %i.ap, align 4, !tbaa !104, !alias.scope !1708, !llvm.access.group !51
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %wide.load13.3 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !104, !alias.scope !1712, !llvm.access.group !51
  %wide.load14.3 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !104, !alias.scope !1712, !llvm.access.group !51
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <4 x i32> %wide.load13.3, ptr %i.as, align 4, !tbaa !104, !alias.scope !1709, !llvm.access.group !51
  store <4 x i32> %wide.load14.3, ptr %i.at, align 4, !tbaa !104, !alias.scope !1709, !llvm.access.group !51
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %wide.load15.3 = load <4 x i32>, ptr %i.au, align 4, !tbaa !104, !alias.scope !1713, !llvm.access.group !51
  %wide.load16.3 = load <4 x i32>, ptr %i.av, align 4, !tbaa !104, !alias.scope !1713, !llvm.access.group !51
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 112
  store <4 x i32> %wide.load15.3, ptr %i.aw, align 4, !tbaa !104, !alias.scope !1710, !llvm.access.group !51
  store <4 x i32> %wide.load16.3, ptr %i.ax, align 4, !tbaa !104, !alias.scope !1710, !llvm.access.group !51
  %i.ay = add i64 %i.a, 128
  store i64 %i.ay, ptr %0, align 8, !tbaa !109, !alias.scope !1706
  %i.az = add i64 %i.c, 128
  store i64 %i.az, ptr %i.b, align 8, !tbaa !109, !alias.scope !1706
  %i.ba = add i64 %i.e, 128
  store i64 %i.ba, ptr %i.d, align 8, !tbaa !109, !alias.scope !1706
  %i.bb = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1707
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.bb(ptr noundef nonnull %0, ptr noundef nonnull %i.bc, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !noalias !1714, !inline_history !50
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_read_planar_xyzw_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 128)) %2, ptr noalias noundef initializes((0, 128)) %3, ptr noalias noundef initializes((0, 128)) %4, ptr noalias noundef initializes((0, 128)) %5) #0 {
vector.ph:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !109  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !109  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  %i.h = inttoptr i64 %i.g to ptr                 ; 8 uses
  %i.i = inttoptr i64 %i.e to ptr                 ; 8 uses
  %i.j = inttoptr i64 %i.c to ptr                 ; 8 uses
  %i.k = inttoptr i64 %i.a to ptr                 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !104, !alias.scope !1732, !llvm.access.group !51
  %wide.load12 = load <4 x i32>, ptr %i.l, align 4, !tbaa !104, !alias.scope !1732, !llvm.access.group !51
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x i32> %wide.load, ptr %2, align 4, !tbaa !104, !alias.scope !1728, !llvm.access.group !51
  store <4 x i32> %wide.load12, ptr %i.m, align 4, !tbaa !104, !alias.scope !1728, !llvm.access.group !51
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load13 = load <4 x i32>, ptr %i.j, align 4, !tbaa !104, !alias.scope !1733, !llvm.access.group !51
  %wide.load14 = load <4 x i32>, ptr %i.n, align 4, !tbaa !104, !alias.scope !1733, !llvm.access.group !51
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x i32> %wide.load13, ptr %3, align 4, !tbaa !104, !alias.scope !1729, !llvm.access.group !51
  store <4 x i32> %wide.load14, ptr %i.o, align 4, !tbaa !104, !alias.scope !1729, !llvm.access.group !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load15 = load <4 x i32>, ptr %i.i, align 4, !tbaa !104, !alias.scope !1734, !llvm.access.group !51
  %wide.load16 = load <4 x i32>, ptr %i.p, align 4, !tbaa !104, !alias.scope !1734, !llvm.access.group !51
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> %wide.load15, ptr %4, align 4, !tbaa !104, !alias.scope !1730, !llvm.access.group !51
  store <4 x i32> %wide.load16, ptr %i.q, align 4, !tbaa !104, !alias.scope !1730, !llvm.access.group !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load17 = load <4 x i32>, ptr %i.h, align 4, !tbaa !104, !alias.scope !1735, !llvm.access.group !51
  %wide.load18 = load <4 x i32>, ptr %i.r, align 4, !tbaa !104, !alias.scope !1735, !llvm.access.group !51
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <4 x i32> %wide.load17, ptr %5, align 4, !tbaa !104, !alias.scope !1731, !llvm.access.group !51
  store <4 x i32> %wide.load18, ptr %i.s, align 4, !tbaa !104, !alias.scope !1731, !llvm.access.group !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %wide.load.1 = load <4 x i32>, ptr %i.t, align 4, !tbaa !104, !alias.scope !1732, !llvm.access.group !51
  %wide.load12.1 = load <4 x i32>, ptr %i.u, align 4, !tbaa !104, !alias.scope !1732, !llvm.access.group !51
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x i32> %wide.load.1, ptr %i.v, align 4, !tbaa !104, !alias.scope !1728, !llvm.access.group !51
  store <4 x i32> %wide.load12.1, ptr %i.w, align 4, !tbaa !104, !alias.scope !1728, !llvm.access.group !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %wide.load13.1 = load <4 x i32>, ptr %i.x, align 4, !tbaa !104, !alias.scope !1733, !llvm.access.group !51
  %wide.load14.1 = load <4 x i32>, ptr %i.y, align 4, !tbaa !104, !alias.scope !1733, !llvm.access.group !51
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x i32> %wide.load13.1, ptr %i.z, align 4, !tbaa !104, !alias.scope !1729, !llvm.access.group !51
  store <4 x i32> %wide.load14.1, ptr %i.aa, align 4, !tbaa !104, !alias.scope !1729, !llvm.access.group !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %wide.load15.1 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !104, !alias.scope !1734, !llvm.access.group !51
  %wide.load16.1 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !104, !alias.scope !1734, !llvm.access.group !51
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <4 x i32> %wide.load15.1, ptr %i.ad, align 4, !tbaa !104, !alias.scope !1730, !llvm.access.group !51
  store <4 x i32> %wide.load16.1, ptr %i.ae, align 4, !tbaa !104, !alias.scope !1730, !llvm.access.group !51
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %wide.load17.1 = load <4 x i32>, ptr %i.af, align 4, !tbaa !104, !alias.scope !1735, !llvm.access.group !51
  %wide.load18.1 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !104, !alias.scope !1735, !llvm.access.group !51
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <4 x i32> %wide.load17.1, ptr %i.ah, align 4, !tbaa !104, !alias.scope !1731, !llvm.access.group !51
  store <4 x i32> %wide.load18.1, ptr %i.ai, align 4, !tbaa !104, !alias.scope !1731, !llvm.access.group !51
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %wide.load.2 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !104, !alias.scope !1732, !llvm.access.group !51
  %wide.load12.2 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !104, !alias.scope !1732, !llvm.access.group !51
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 80
  store <4 x i32> %wide.load.2, ptr %i.al, align 4, !tbaa !104, !alias.scope !1728, !llvm.access.group !51
  store <4 x i32> %wide.load12.2, ptr %i.am, align 4, !tbaa !104, !alias.scope !1728, !llvm.access.group !51
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %wide.load13.2 = load <4 x i32>, ptr %i.an, align 4, !tbaa !104, !alias.scope !1733, !llvm.access.group !51
  %wide.load14.2 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !104, !alias.scope !1733, !llvm.access.group !51
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <4 x i32> %wide.load13.2, ptr %i.ap, align 4, !tbaa !104, !alias.scope !1729, !llvm.access.group !51
  store <4 x i32> %wide.load14.2, ptr %i.aq, align 4, !tbaa !104, !alias.scope !1729, !llvm.access.group !51
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %wide.load15.2 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !104, !alias.scope !1734, !llvm.access.group !51
  %wide.load16.2 = load <4 x i32>, ptr %i.as, align 4, !tbaa !104, !alias.scope !1734, !llvm.access.group !51
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 80
  store <4 x i32> %wide.load15.2, ptr %i.at, align 4, !tbaa !104, !alias.scope !1730, !llvm.access.group !51
  store <4 x i32> %wide.load16.2, ptr %i.au, align 4, !tbaa !104, !alias.scope !1730, !llvm.access.group !51
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %wide.load17.2 = load <4 x i32>, ptr %i.av, align 4, !tbaa !104, !alias.scope !1735, !llvm.access.group !51
  %wide.load18.2 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !104, !alias.scope !1735, !llvm.access.group !51
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 80
  store <4 x i32> %wide.load17.2, ptr %i.ax, align 4, !tbaa !104, !alias.scope !1731, !llvm.access.group !51
  store <4 x i32> %wide.load18.2, ptr %i.ay, align 4, !tbaa !104, !alias.scope !1731, !llvm.access.group !51
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %wide.load.3 = load <4 x i32>, ptr %i.az, align 4, !tbaa !104, !alias.scope !1732, !llvm.access.group !51
  %wide.load12.3 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !104, !alias.scope !1732, !llvm.access.group !51
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 112
  store <4 x i32> %wide.load.3, ptr %i.bb, align 4, !tbaa !104, !alias.scope !1728, !llvm.access.group !51
  store <4 x i32> %wide.load12.3, ptr %i.bc, align 4, !tbaa !104, !alias.scope !1728, !llvm.access.group !51
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %wide.load13.3 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !104, !alias.scope !1733, !llvm.access.group !51
  %wide.load14.3 = load <4 x i32>, ptr %i.be, align 4, !tbaa !104, !alias.scope !1733, !llvm.access.group !51
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <4 x i32> %wide.load13.3, ptr %i.bf, align 4, !tbaa !104, !alias.scope !1729, !llvm.access.group !51
  store <4 x i32> %wide.load14.3, ptr %i.bg, align 4, !tbaa !104, !alias.scope !1729, !llvm.access.group !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %wide.load15.3 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !104, !alias.scope !1734, !llvm.access.group !51
  %wide.load16.3 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !104, !alias.scope !1734, !llvm.access.group !51
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 112
  store <4 x i32> %wide.load15.3, ptr %i.bj, align 4, !tbaa !104, !alias.scope !1730, !llvm.access.group !51
  store <4 x i32> %wide.load16.3, ptr %i.bk, align 4, !tbaa !104, !alias.scope !1730, !llvm.access.group !51
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %wide.load17.3 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !104, !alias.scope !1735, !llvm.access.group !51
  %wide.load18.3 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !104, !alias.scope !1735, !llvm.access.group !51
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 112
  store <4 x i32> %wide.load17.3, ptr %i.bn, align 4, !tbaa !104, !alias.scope !1731, !llvm.access.group !51
  store <4 x i32> %wide.load18.3, ptr %i.bo, align 4, !tbaa !104, !alias.scope !1731, !llvm.access.group !51
  %i.bp = add i64 %i.a, 128
  store i64 %i.bp, ptr %0, align 8, !tbaa !109, !alias.scope !1726
  %i.bq = add i64 %i.c, 128
  store i64 %i.bq, ptr %i.b, align 8, !tbaa !109, !alias.scope !1726
  %i.br = add i64 %i.e, 128
  store i64 %i.br, ptr %i.d, align 8, !tbaa !109, !alias.scope !1726
  %i.bs = add i64 %i.g, 128
  store i64 %i.bs, ptr %i.f, align 8, !tbaa !109, !alias.scope !1726
  %i.bt = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1727
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.bt(ptr noundef nonnull %0, ptr noundef nonnull %i.bu, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !noalias !1736, !inline_history !50
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_read_packed_xy_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 128)) %2, ptr noalias noundef initializes((0, 128)) %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
read_packed_U32.exit:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 64 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  %i.c = load i32, ptr %i.b, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  store i32 %i.c, ptr %2, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  store i32 %i.e, ptr %3, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.g, ptr %i.h, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.j, ptr %i.k, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.m, ptr %i.n, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.p, ptr %i.q, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load i32, ptr %i.r, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.s, ptr %i.t, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.v, ptr %i.w, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.y = load i32, ptr %i.x, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.y, ptr %i.z, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 36
end_hunk_6
begin_hunk_7_@u32_read_packed_xy_c:read_packed_U32.exit
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.db = load i32, ptr %i.da, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 %i.de, ptr %i.df, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 76
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 84
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 84
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 92
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 %i.el, ptr %i.em, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 %i.er, ptr %i.es, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 100
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 100
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 108
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 108
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 116
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 116
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 124
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !104, !alias.scope !1745, !llvm.access.group !52
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 252
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !104, !alias.scope !1747, !llvm.access.group !52
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 124
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !104, !alias.scope !1746, !llvm.access.group !52
  %i.gj = add i64 %i.a, 256
  store i64 %i.gj, ptr %0, align 8, !tbaa !109, !alias.scope !1743
  %i.gk = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1744
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.gk(ptr noundef nonnull %0, ptr noundef nonnull %i.gl, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12, !noalias !1747, !inline_history !53
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_read_packed_xyz_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 128)) %2, ptr noalias noundef initializes((0, 128)) %3, ptr noalias noundef initializes((0, 128)) %4, ptr noalias noundef %5) #0 {
vector.ph:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 96 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1760)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.f = load i32, ptr %i.b, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.g = load i32, ptr %i.c, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.h = load i32, ptr %i.d, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.i = load i32, ptr %i.e, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.j = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %i.k = insertelement <4 x i32> %i.j, i32 %i.g, i64 1
  %i.l = insertelement <4 x i32> %i.k, i32 %i.h, i64 2
  %i.m = insertelement <4 x i32> %i.l, i32 %i.i, i64 3
  store <4 x i32> %i.m, ptr %2, align 4, !tbaa !104, !alias.scope !1757, !llvm.access.group !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load i32, ptr %i.n, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.s = load i32, ptr %i.o, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.t = load i32, ptr %i.p, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.u = load i32, ptr %i.q, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.v = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %i.w = insertelement <4 x i32> %i.v, i32 %i.s, i64 1
  %i.x = insertelement <4 x i32> %i.w, i32 %i.t, i64 2
  %i.y = insertelement <4 x i32> %i.x, i32 %i.u, i64 3
  store <4 x i32> %i.y, ptr %3, align 4, !tbaa !104, !alias.scope !1758, !llvm.access.group !52
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.ad = load i32, ptr %i.z, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.af = load i32, ptr %i.ab, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ag = load i32, ptr %i.ac, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ah = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %i.ai = insertelement <4 x i32> %i.ah, i32 %i.ae, i64 1
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.af, i64 2
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 3
  store <4 x i32> %i.ak, ptr %4, align 4, !tbaa !104, !alias.scope !1759, !llvm.access.group !52
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.ap = load i32, ptr %i.al, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ar = load i32, ptr %i.an, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.as = load i32, ptr %i.ao, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.at = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 1
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 2
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 3
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x i32> %i.aw, ptr %i.ax, align 4, !tbaa !104, !alias.scope !1757, !llvm.access.group !52
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bc = load i32, ptr %i.ay, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.be = load i32, ptr %i.ba, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.bf = load i32, ptr %i.bb, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.bg = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %i.bh = insertelement <4 x i32> %i.bg, i32 %i.bd, i64 1
  %i.bi = insertelement <4 x i32> %i.bh, i32 %i.be, i64 2
  %i.bj = insertelement <4 x i32> %i.bi, i32 %i.bf, i64 3
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x i32> %i.bj, ptr %i.bk, align 4, !tbaa !104, !alias.scope !1758, !llvm.access.group !52
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.bp = load i32, ptr %i.bl, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.bq = load i32, ptr %i.bm, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.bs = load i32, ptr %i.bo, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.bt = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %i.bu = insertelement <4 x i32> %i.bt, i32 %i.bq, i64 1
  %i.bv = insertelement <4 x i32> %i.bu, i32 %i.br, i64 2
  %i.bw = insertelement <4 x i32> %i.bv, i32 %i.bs, i64 3
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> %i.bw, ptr %i.bx, align 4, !tbaa !104, !alias.scope !1759, !llvm.access.group !52
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.cc = load i32, ptr %i.by, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ce = load i32, ptr %i.ca, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.cf = load i32, ptr %i.cb, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.cg = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %i.ch = insertelement <4 x i32> %i.cg, i32 %i.cd, i64 1
  %i.ci = insertelement <4 x i32> %i.ch, i32 %i.ce, i64 2
  %i.cj = insertelement <4 x i32> %i.ci, i32 %i.cf, i64 3
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <4 x i32> %i.cj, ptr %i.ck, align 4, !tbaa !104, !alias.scope !1757, !llvm.access.group !52
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.cp = load i32, ptr %i.cl, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.cq = load i32, ptr %i.cm, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.cr = load i32, ptr %i.cn, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.cs = load i32, ptr %i.co, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ct = insertelement <4 x i32> poison, i32 %i.cp, i64 0
  %i.cu = insertelement <4 x i32> %i.ct, i32 %i.cq, i64 1
  %i.cv = insertelement <4 x i32> %i.cu, i32 %i.cr, i64 2
  %i.cw = insertelement <4 x i32> %i.cv, i32 %i.cs, i64 3
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <4 x i32> %i.cw, ptr %i.cx, align 4, !tbaa !104, !alias.scope !1758, !llvm.access.group !52
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.dc = load i32, ptr %i.cy, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.dd = load i32, ptr %i.cz, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.de = load i32, ptr %i.da, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.df = load i32, ptr %i.db, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.dg = insertelement <4 x i32> poison, i32 %i.dc, i64 0
  %i.dh = insertelement <4 x i32> %i.dg, i32 %i.dd, i64 1
  %i.di = insertelement <4 x i32> %i.dh, i32 %i.de, i64 2
  %i.dj = insertelement <4 x i32> %i.di, i32 %i.df, i64 3
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 32
  store <4 x i32> %i.dj, ptr %i.dk, align 4, !tbaa !104, !alias.scope !1759, !llvm.access.group !52
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.dp = load i32, ptr %i.dl, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.dq = load i32, ptr %i.dm, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.dr = load i32, ptr %i.dn, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ds = load i32, ptr %i.do, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.dt = insertelement <4 x i32> poison, i32 %i.dp, i64 0
  %i.du = insertelement <4 x i32> %i.dt, i32 %i.dq, i64 1
  %i.dv = insertelement <4 x i32> %i.du, i32 %i.dr, i64 2
  %i.dw = insertelement <4 x i32> %i.dv, i32 %i.ds, i64 3
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x i32> %i.dw, ptr %i.dx, align 4, !tbaa !104, !alias.scope !1757, !llvm.access.group !52
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ec = load i32, ptr %i.dy, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ed = load i32, ptr %i.dz, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ee = load i32, ptr %i.ea, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ef = load i32, ptr %i.eb, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.eg = insertelement <4 x i32> poison, i32 %i.ec, i64 0
  %i.eh = insertelement <4 x i32> %i.eg, i32 %i.ed, i64 1
  %i.ei = insertelement <4 x i32> %i.eh, i32 %i.ee, i64 2
  %i.ej = insertelement <4 x i32> %i.ei, i32 %i.ef, i64 3
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x i32> %i.ej, ptr %i.ek, align 4, !tbaa !104, !alias.scope !1758, !llvm.access.group !52
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %i.ep = load i32, ptr %i.el, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.eq = load i32, ptr %i.em, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.er = load i32, ptr %i.en, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.es = load i32, ptr %i.eo, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.et = insertelement <4 x i32> poison, i32 %i.ep, i64 0
  %i.eu = insertelement <4 x i32> %i.et, i32 %i.eq, i64 1
  %i.ev = insertelement <4 x i32> %i.eu, i32 %i.er, i64 2
  %i.ew = insertelement <4 x i32> %i.ev, i32 %i.es, i64 3
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <4 x i32> %i.ew, ptr %i.ex, align 4, !tbaa !104, !alias.scope !1759, !llvm.access.group !52
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.fc = load i32, ptr %i.ey, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.fd = load i32, ptr %i.ez, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.fe = load i32, ptr %i.fa, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ff = load i32, ptr %i.fb, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.fg = insertelement <4 x i32> poison, i32 %i.fc, i64 0
  %i.fh = insertelement <4 x i32> %i.fg, i32 %i.fd, i64 1
  %i.fi = insertelement <4 x i32> %i.fh, i32 %i.fe, i64 2
  %i.fj = insertelement <4 x i32> %i.fi, i32 %i.ff, i64 3
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 64
  store <4 x i32> %i.fj, ptr %i.fk, align 4, !tbaa !104, !alias.scope !1757, !llvm.access.group !52
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.fp = load i32, ptr %i.fl, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.fq = load i32, ptr %i.fm, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.fr = load i32, ptr %i.fn, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.fs = load i32, ptr %i.fo, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ft = insertelement <4 x i32> poison, i32 %i.fp, i64 0
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.fq, i64 1
  %i.fv = insertelement <4 x i32> %i.fu, i32 %i.fr, i64 2
  %i.fw = insertelement <4 x i32> %i.fv, i32 %i.fs, i64 3
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <4 x i32> %i.fw, ptr %i.fx, align 4, !tbaa !104, !alias.scope !1758, !llvm.access.group !52
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.gc = load i32, ptr %i.fy, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.gd = load i32, ptr %i.fz, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ge = load i32, ptr %i.ga, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.gf = load i32, ptr %i.gb, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.gg = insertelement <4 x i32> poison, i32 %i.gc, i64 0
  %i.gh = insertelement <4 x i32> %i.gg, i32 %i.gd, i64 1
  %i.gi = insertelement <4 x i32> %i.gh, i32 %i.ge, i64 2
  %i.gj = insertelement <4 x i32> %i.gi, i32 %i.gf, i64 3
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 64
  store <4 x i32> %i.gj, ptr %i.gk, align 4, !tbaa !104, !alias.scope !1759, !llvm.access.group !52
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 252
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  %i.gp = load i32, ptr %i.gl, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.gq = load i32, ptr %i.gm, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.gr = load i32, ptr %i.gn, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.gs = load i32, ptr %i.go, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.gt = insertelement <4 x i32> poison, i32 %i.gp, i64 0
  %i.gu = insertelement <4 x i32> %i.gt, i32 %i.gq, i64 1
  %i.gv = insertelement <4 x i32> %i.gu, i32 %i.gr, i64 2
  %i.gw = insertelement <4 x i32> %i.gv, i32 %i.gs, i64 3
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 80
  store <4 x i32> %i.gw, ptr %i.gx, align 4, !tbaa !104, !alias.scope !1757, !llvm.access.group !52
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 268
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.hc = load i32, ptr %i.gy, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.hd = load i32, ptr %i.gz, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.he = load i32, ptr %i.ha, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.hf = load i32, ptr %i.hb, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.hg = insertelement <4 x i32> poison, i32 %i.hc, i64 0
  %i.hh = insertelement <4 x i32> %i.hg, i32 %i.hd, i64 1
  %i.hi = insertelement <4 x i32> %i.hh, i32 %i.he, i64 2
  %i.hj = insertelement <4 x i32> %i.hi, i32 %i.hf, i64 3
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <4 x i32> %i.hj, ptr %i.hk, align 4, !tbaa !104, !alias.scope !1758, !llvm.access.group !52
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 284
  %i.hp = load i32, ptr %i.hl, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.hq = load i32, ptr %i.hm, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.hr = load i32, ptr %i.hn, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.hs = load i32, ptr %i.ho, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ht = insertelement <4 x i32> poison, i32 %i.hp, i64 0
  %i.hu = insertelement <4 x i32> %i.ht, i32 %i.hq, i64 1
  %i.hv = insertelement <4 x i32> %i.hu, i32 %i.hr, i64 2
  %i.hw = insertelement <4 x i32> %i.hv, i32 %i.hs, i64 3
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 80
  store <4 x i32> %i.hw, ptr %i.hx, align 4, !tbaa !104, !alias.scope !1759, !llvm.access.group !52
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 300
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 324
  %i.ic = load i32, ptr %i.hy, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.id = load i32, ptr %i.hz, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ie = load i32, ptr %i.ia, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.if = load i32, ptr %i.ib, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ig = insertelement <4 x i32> poison, i32 %i.ic, i64 0
  %i.ih = insertelement <4 x i32> %i.ig, i32 %i.id, i64 1
  %i.ii = insertelement <4 x i32> %i.ih, i32 %i.ie, i64 2
  %i.ij = insertelement <4 x i32> %i.ii, i32 %i.if, i64 3
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 96
  store <4 x i32> %i.ij, ptr %i.ik, align 4, !tbaa !104, !alias.scope !1757, !llvm.access.group !52
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 292
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 316
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.ip = load i32, ptr %i.il, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.iq = load i32, ptr %i.im, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ir = load i32, ptr %i.in, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.is = load i32, ptr %i.io, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.it = insertelement <4 x i32> poison, i32 %i.ip, i64 0
  %i.iu = insertelement <4 x i32> %i.it, i32 %i.iq, i64 1
  %i.iv = insertelement <4 x i32> %i.iu, i32 %i.ir, i64 2
  %i.iw = insertelement <4 x i32> %i.iv, i32 %i.is, i64 3
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 96
  store <4 x i32> %i.iw, ptr %i.ix, align 4, !tbaa !104, !alias.scope !1758, !llvm.access.group !52
  %i.iy = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.iz = getelementptr inbounds nuw i8, ptr %i.b, i64 308
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 332
  %i.jc = load i32, ptr %i.iy, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.jd = load i32, ptr %i.iz, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.je = load i32, ptr %i.ja, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.jf = load i32, ptr %i.jb, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.jg = insertelement <4 x i32> poison, i32 %i.jc, i64 0
  %i.jh = insertelement <4 x i32> %i.jg, i32 %i.jd, i64 1
  %i.ji = insertelement <4 x i32> %i.jh, i32 %i.je, i64 2
  %i.jj = insertelement <4 x i32> %i.ji, i32 %i.jf, i64 3
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 96
  store <4 x i32> %i.jj, ptr %i.jk, align 4, !tbaa !104, !alias.scope !1759, !llvm.access.group !52
  %i.jl = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.jm = getelementptr inbounds nuw i8, ptr %i.b, i64 348
  %i.jn = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 372
  %i.jp = load i32, ptr %i.jl, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.jq = load i32, ptr %i.jm, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.jr = load i32, ptr %i.jn, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.js = load i32, ptr %i.jo, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.jt = insertelement <4 x i32> poison, i32 %i.jp, i64 0
  %i.ju = insertelement <4 x i32> %i.jt, i32 %i.jq, i64 1
  %i.jv = insertelement <4 x i32> %i.ju, i32 %i.jr, i64 2
  %i.jw = insertelement <4 x i32> %i.jv, i32 %i.js, i64 3
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 112
  store <4 x i32> %i.jw, ptr %i.jx, align 4, !tbaa !104, !alias.scope !1757, !llvm.access.group !52
  %i.jy = getelementptr inbounds nuw i8, ptr %i.b, i64 340
  %i.jz = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.ka = getelementptr inbounds nuw i8, ptr %i.b, i64 364
  %i.kb = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.kc = load i32, ptr %i.jy, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.kd = load i32, ptr %i.jz, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ke = load i32, ptr %i.ka, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.kf = load i32, ptr %i.kb, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.kg = insertelement <4 x i32> poison, i32 %i.kc, i64 0
  %i.kh = insertelement <4 x i32> %i.kg, i32 %i.kd, i64 1
  %i.ki = insertelement <4 x i32> %i.kh, i32 %i.ke, i64 2
  %i.kj = insertelement <4 x i32> %i.ki, i32 %i.kf, i64 3
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <4 x i32> %i.kj, ptr %i.kk, align 4, !tbaa !104, !alias.scope !1758, !llvm.access.group !52
  %i.kl = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.km = getelementptr inbounds nuw i8, ptr %i.b, i64 356
  %i.kn = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ko = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  %i.kp = load i32, ptr %i.kl, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.kq = load i32, ptr %i.km, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.kr = load i32, ptr %i.kn, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.ks = load i32, ptr %i.ko, align 4, !tbaa !104, !alias.scope !1760, !llvm.access.group !52
  %i.kt = insertelement <4 x i32> poison, i32 %i.kp, i64 0
  %i.ku = insertelement <4 x i32> %i.kt, i32 %i.kq, i64 1
  %i.kv = insertelement <4 x i32> %i.ku, i32 %i.kr, i64 2
  %i.kw = insertelement <4 x i32> %i.kv, i32 %i.ks, i64 3
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 112
  store <4 x i32> %i.kw, ptr %i.kx, align 4, !tbaa !104, !alias.scope !1759, !llvm.access.group !52
  %i.ky = add i64 %i.a, 384
  store i64 %i.ky, ptr %0, align 8, !tbaa !109, !alias.scope !1755
  %i.kz = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1756
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.kz(ptr noundef nonnull %0, ptr noundef nonnull %i.la, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !noalias !1760, !inline_history !53
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_read_packed_xyzw_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef initializes((0, 128)) %2, ptr noalias noundef initializes((0, 128)) %3, ptr noalias noundef initializes((0, 128)) %4, ptr noalias noundef initializes((0, 128)) %5) #0 {
vector.ph:
  %i.a = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %i.c = shl nuw nsw i64 %index, 4
  %i.d = shl i64 %index, 4
  %i.e = shl i64 %index, 4
  %i.f = shl i64 %index, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load i32, ptr %i.g, align 4, !tbaa !104, !alias.scope !1776, !llvm.access.group !52
  %i.o = load i32, ptr %i.i, align 4, !tbaa !104, !alias.scope !1776, !llvm.access.group !52
  %i.p = load i32, ptr %i.k, align 4, !tbaa !104, !alias.scope !1776, !llvm.access.group !52
  %i.q = load i32, ptr %i.m, align 4, !tbaa !104, !alias.scope !1776, !llvm.access.group !52
  %i.r = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %i.s = insertelement <4 x i32> %i.r, i32 %i.o, i64 1
  %i.t = insertelement <4 x i32> %i.s, i32 %i.p, i64 2
  %i.u = insertelement <4 x i32> %i.t, i32 %i.q, i64 3
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <4 x i32> %i.u, ptr %i.v, align 4, !tbaa !104, !alias.scope !1772, !llvm.access.group !52
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.aa = load i32, ptr %i.w, align 4, !tbaa !104, !alias.scope !1776, !llvm.access.group !52
  %i.ab = load i32, ptr %i.x, align 4, !tbaa !104, !alias.scope !1776, !llvm.access.group !52
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !104, !alias.scope !1776, !llvm.access.group !52
  %i.ad = load i32, ptr %i.z, align 4, !tbaa !104, !alias.scope !1776, !llvm.access.group !52
  %i.ae = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %i.af = insertelement <4 x i32> %i.ae, i32 %i.ab, i64 1
  %i.ag = insertelement <4 x i32> %i.af, i32 %i.ac, i64 2
  %i.ah = insertelement <4 x i32> %i.ag, i32 %i.ad, i64 3
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  store <4 x i32> %i.ah, ptr %i.ai, align 4, !tbaa !104, !alias.scope !1773, !llvm.access.group !52
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.an = load i32, ptr %i.aj, align 4, !tbaa !104, !alias.scope !1776, !llvm.access.group !52
  %i.ao = load i32, ptr %i.ak, align 4, !tbaa !104, !alias.scope !1776, !llvm.access.group !52
  %i.ap = load i32, ptr %i.al, align 4, !tbaa !104, !alias.scope !1776, !llvm.access.group !52
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !104, !alias.scope !1776, !llvm.access.group !52
  %i.ar = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 1
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 2
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 3
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index
  store <4 x i32> %i.au, ptr %i.av, align 4, !tbaa !104, !alias.scope !1774, !llvm.access.group !52
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.ba = load i32, ptr %i.aw, align 4, !tbaa !104, !alias.scope !1776, !llvm.access.group !52
  %i.bb = load i32, ptr %i.ax, align 4, !tbaa !104, !alias.scope !1776, !llvm.access.group !52
  %i.bc = load i32, ptr %i.ay, align 4, !tbaa !104, !alias.scope !1776, !llvm.access.group !52
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !104, !alias.scope !1776, !llvm.access.group !52
  %i.be = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %i.bf = insertelement <4 x i32> %i.be, i32 %i.bb, i64 1
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.bc, i64 2
  %i.bh = insertelement <4 x i32> %i.bg, i32 %i.bd, i64 3
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index
  store <4 x i32> %i.bh, ptr %i.bi, align 4, !tbaa !104, !alias.scope !1775, !llvm.access.group !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, 32
  br i1 %i.bj, label %read_packed_U32.exit, label %vector.body, !llvm.loop !1769

read_packed_U32.exit:                             ; preds = %vector.body
  %i.bk = add i64 %i.a, 512
  store i64 %i.bk, ptr %0, align 8, !tbaa !109, !alias.scope !1770
  %i.bl = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !1771
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.bl(ptr noundef nonnull %0, ptr noundef nonnull %i.bm, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !noalias !1776, !inline_history !53
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_permute_xzyw_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.a(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %4, ptr noundef %3, ptr noundef %5) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_permute_xzwy_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.a(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %4, ptr noundef %5, ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_permute_xwzy_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.a(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %5, ptr noundef %4, ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_permute_yxzw_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.a(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef %2, ptr noundef %4, ptr noundef %5) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_permute_yzxw_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.a(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef %4, ptr noundef %2, ptr noundef %5) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_permute_yzwx_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.a(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %2) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_permute_zxyw_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.a(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef %5) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_permute_zyxw_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.a(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %4, ptr noundef %3, ptr noundef %2, ptr noundef %5) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_permute_zywx_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.a(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %4, ptr noundef %3, ptr noundef %5, ptr noundef %2) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_permute_zwyx_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.a(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %4, ptr noundef %5, ptr noundef %3, ptr noundef %2) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_permute_wxyz_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.a(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %5, ptr noundef %2, ptr noundef %3, ptr noundef %4) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_permute_wxzy_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.a(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %5, ptr noundef %2, ptr noundef %4, ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_permute_wyxz_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
end_hunk_7
begin_hunk_8_@u32_to_f32_yzw_c:vector.ph
  %i.au = uitofp <4 x i32> %wide.load9.5 to <4 x float>
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <4 x float> %i.au, ptr %i.av, align 16, !tbaa !103, !noalias !2008, !llvm.access.group !61
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 96
  %wide.load.6 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !104, !alias.scope !2005, !llvm.access.group !61
  %i.ax = uitofp <4 x i32> %wide.load.6 to <4 x float>
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 96
  store <4 x float> %i.ax, ptr %i.ay, align 16, !tbaa !103, !noalias !2008, !llvm.access.group !61
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 96
  %wide.load8.6 = load <4 x i32>, ptr %i.az, align 4, !tbaa !104, !alias.scope !2006, !llvm.access.group !61
  %i.ba = uitofp <4 x i32> %wide.load8.6 to <4 x float>
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 96
  store <4 x float> %i.ba, ptr %i.bb, align 16, !tbaa !103, !noalias !2008, !llvm.access.group !61
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 96
  %wide.load9.6 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !104, !alias.scope !2007, !llvm.access.group !61
  %i.bd = uitofp <4 x i32> %wide.load9.6 to <4 x float>
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <4 x float> %i.bd, ptr %i.be, align 16, !tbaa !103, !noalias !2008, !llvm.access.group !61
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 112
  %wide.load.7 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !104, !alias.scope !2005, !llvm.access.group !61
  %i.bg = uitofp <4 x i32> %wide.load.7 to <4 x float>
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 112
  store <4 x float> %i.bg, ptr %i.bh, align 16, !tbaa !103, !noalias !2008, !llvm.access.group !61
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 112
  %wide.load8.7 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !104, !alias.scope !2006, !llvm.access.group !61
  %i.bj = uitofp <4 x i32> %wide.load8.7 to <4 x float>
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 112
  store <4 x float> %i.bj, ptr %i.bk, align 16, !tbaa !103, !noalias !2008, !llvm.access.group !61
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 112
  %wide.load9.7 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !104, !alias.scope !2007, !llvm.access.group !61
  %i.bm = uitofp <4 x i32> %wide.load9.7 to <4 x float>
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 112
  store <4 x float> %i.bm, ptr %i.bn, align 16, !tbaa !103, !noalias !2008, !llvm.access.group !61
  %i.bo = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !2004
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void %i.bo(ptr noundef %0, ptr noundef nonnull %i.bp, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #12, !noalias !2009, !inline_history !60
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12, !noalias !2008
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12, !noalias !2008
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12, !noalias !2008
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12, !noalias !2008
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_scale_x_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
scale_U32.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !103, !alias.scope !2013
  %i.c = load <4 x i32>, ptr %2, align 4, !tbaa !104, !alias.scope !2014
  %i.d = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %i.e = shufflevector <4 x i32> %i.d, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.f = mul <4 x i32> %i.c, %i.e
  store <4 x i32> %i.f, ptr %2, align 4, !tbaa !104, !alias.scope !2014
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load <4 x i32>, ptr %i.g, align 4, !tbaa !104, !alias.scope !2014
  %i.i = mul <4 x i32> %i.h, %i.e
  store <4 x i32> %i.i, ptr %i.g, align 4, !tbaa !104, !alias.scope !2014
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.k = load <4 x i32>, ptr %i.j, align 4, !tbaa !104, !alias.scope !2014
  %i.l = mul <4 x i32> %i.k, %i.e
  store <4 x i32> %i.l, ptr %i.j, align 4, !tbaa !104, !alias.scope !2014
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.n = load <4 x i32>, ptr %i.m, align 4, !tbaa !104, !alias.scope !2014
  %i.o = mul <4 x i32> %i.n, %i.e
  store <4 x i32> %i.o, ptr %i.m, align 4, !tbaa !104, !alias.scope !2014
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.q = load <4 x i32>, ptr %i.p, align 4, !tbaa !104, !alias.scope !2014
  %i.r = mul <4 x i32> %i.q, %i.e
  store <4 x i32> %i.r, ptr %i.p, align 4, !tbaa !104, !alias.scope !2014
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.t = load <4 x i32>, ptr %i.s, align 4, !tbaa !104, !alias.scope !2014
  %i.u = mul <4 x i32> %i.t, %i.e
  store <4 x i32> %i.u, ptr %i.s, align 4, !tbaa !104, !alias.scope !2014
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.w = load <4 x i32>, ptr %i.v, align 4, !tbaa !104, !alias.scope !2014
  %i.x = mul <4 x i32> %i.w, %i.e
  store <4 x i32> %i.x, ptr %i.v, align 4, !tbaa !104, !alias.scope !2014
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.z = load <4 x i32>, ptr %i.y, align 4, !tbaa !104, !alias.scope !2014
  %i.aa = mul <4 x i32> %i.z, %i.e
  store <4 x i32> %i.aa, ptr %i.y, align 4, !tbaa !104, !alias.scope !2014
  %i.ab = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !2013
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.ab(ptr noundef %0, ptr noundef nonnull %i.ac, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12, !inline_history !62
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_scale_xyz_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !103, !alias.scope !2021
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 24 uses
  %wide.load = load <4 x i32>, ptr %2, align 4, !tbaa !104, !alias.scope !2022, !llvm.access.group !2020
  %i.c = mul <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %i.c, ptr %2, align 4, !tbaa !104, !alias.scope !2022, !llvm.access.group !2020
  %wide.load8 = load <4 x i32>, ptr %3, align 4, !tbaa !104, !alias.scope !2023, !llvm.access.group !2020
  %i.d = mul <4 x i32> %wide.load8, %broadcast.splat
  store <4 x i32> %i.d, ptr %3, align 4, !tbaa !104, !alias.scope !2023, !llvm.access.group !2020
  %wide.load9 = load <4 x i32>, ptr %4, align 4, !tbaa !104, !alias.scope !2024, !llvm.access.group !2020
  %i.e = mul <4 x i32> %wide.load9, %broadcast.splat
  store <4 x i32> %i.e, ptr %4, align 4, !tbaa !104, !alias.scope !2024, !llvm.access.group !2020
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.f, align 4, !tbaa !104, !alias.scope !2022, !llvm.access.group !2020
  %i.g = mul <4 x i32> %wide.load.1, %broadcast.splat
  store <4 x i32> %i.g, ptr %i.f, align 4, !tbaa !104, !alias.scope !2022, !llvm.access.group !2020
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %wide.load8.1 = load <4 x i32>, ptr %i.h, align 4, !tbaa !104, !alias.scope !2023, !llvm.access.group !2020
  %i.i = mul <4 x i32> %wide.load8.1, %broadcast.splat
  store <4 x i32> %i.i, ptr %i.h, align 4, !tbaa !104, !alias.scope !2023, !llvm.access.group !2020
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %wide.load9.1 = load <4 x i32>, ptr %i.j, align 4, !tbaa !104, !alias.scope !2024, !llvm.access.group !2020
  %i.k = mul <4 x i32> %wide.load9.1, %broadcast.splat
  store <4 x i32> %i.k, ptr %i.j, align 4, !tbaa !104, !alias.scope !2024, !llvm.access.group !2020
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %wide.load.2 = load <4 x i32>, ptr %i.l, align 4, !tbaa !104, !alias.scope !2022, !llvm.access.group !2020
  %i.m = mul <4 x i32> %wide.load.2, %broadcast.splat
  store <4 x i32> %i.m, ptr %i.l, align 4, !tbaa !104, !alias.scope !2022, !llvm.access.group !2020
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %wide.load8.2 = load <4 x i32>, ptr %i.n, align 4, !tbaa !104, !alias.scope !2023, !llvm.access.group !2020
  %i.o = mul <4 x i32> %wide.load8.2, %broadcast.splat
  store <4 x i32> %i.o, ptr %i.n, align 4, !tbaa !104, !alias.scope !2023, !llvm.access.group !2020
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %wide.load9.2 = load <4 x i32>, ptr %i.p, align 4, !tbaa !104, !alias.scope !2024, !llvm.access.group !2020
  %i.q = mul <4 x i32> %wide.load9.2, %broadcast.splat
  store <4 x i32> %i.q, ptr %i.p, align 4, !tbaa !104, !alias.scope !2024, !llvm.access.group !2020
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.3 = load <4 x i32>, ptr %i.r, align 4, !tbaa !104, !alias.scope !2022, !llvm.access.group !2020
  %i.s = mul <4 x i32> %wide.load.3, %broadcast.splat
  store <4 x i32> %i.s, ptr %i.r, align 4, !tbaa !104, !alias.scope !2022, !llvm.access.group !2020
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %wide.load8.3 = load <4 x i32>, ptr %i.t, align 4, !tbaa !104, !alias.scope !2023, !llvm.access.group !2020
  %i.u = mul <4 x i32> %wide.load8.3, %broadcast.splat
  store <4 x i32> %i.u, ptr %i.t, align 4, !tbaa !104, !alias.scope !2023, !llvm.access.group !2020
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %wide.load9.3 = load <4 x i32>, ptr %i.v, align 4, !tbaa !104, !alias.scope !2024, !llvm.access.group !2020
  %i.w = mul <4 x i32> %wide.load9.3, %broadcast.splat
  store <4 x i32> %i.w, ptr %i.v, align 4, !tbaa !104, !alias.scope !2024, !llvm.access.group !2020
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %wide.load.4 = load <4 x i32>, ptr %i.x, align 4, !tbaa !104, !alias.scope !2022, !llvm.access.group !2020
  %i.y = mul <4 x i32> %wide.load.4, %broadcast.splat
  store <4 x i32> %i.y, ptr %i.x, align 4, !tbaa !104, !alias.scope !2022, !llvm.access.group !2020
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %wide.load8.4 = load <4 x i32>, ptr %i.z, align 4, !tbaa !104, !alias.scope !2023, !llvm.access.group !2020
  %i.aa = mul <4 x i32> %wide.load8.4, %broadcast.splat
  store <4 x i32> %i.aa, ptr %i.z, align 4, !tbaa !104, !alias.scope !2023, !llvm.access.group !2020
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %wide.load9.4 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !104, !alias.scope !2024, !llvm.access.group !2020
  %i.ac = mul <4 x i32> %wide.load9.4, %broadcast.splat
  store <4 x i32> %i.ac, ptr %i.ab, align 4, !tbaa !104, !alias.scope !2024, !llvm.access.group !2020
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.5 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !104, !alias.scope !2022, !llvm.access.group !2020
  %i.ae = mul <4 x i32> %wide.load.5, %broadcast.splat
  store <4 x i32> %i.ae, ptr %i.ad, align 4, !tbaa !104, !alias.scope !2022, !llvm.access.group !2020
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %wide.load8.5 = load <4 x i32>, ptr %i.af, align 4, !tbaa !104, !alias.scope !2023, !llvm.access.group !2020
  %i.ag = mul <4 x i32> %wide.load8.5, %broadcast.splat
  store <4 x i32> %i.ag, ptr %i.af, align 4, !tbaa !104, !alias.scope !2023, !llvm.access.group !2020
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %wide.load9.5 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !104, !alias.scope !2024, !llvm.access.group !2020
  %i.ai = mul <4 x i32> %wide.load9.5, %broadcast.splat
  store <4 x i32> %i.ai, ptr %i.ah, align 4, !tbaa !104, !alias.scope !2024, !llvm.access.group !2020
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.load.6 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !104, !alias.scope !2022, !llvm.access.group !2020
  %i.ak = mul <4 x i32> %wide.load.6, %broadcast.splat
  store <4 x i32> %i.ak, ptr %i.aj, align 4, !tbaa !104, !alias.scope !2022, !llvm.access.group !2020
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %wide.load8.6 = load <4 x i32>, ptr %i.al, align 4, !tbaa !104, !alias.scope !2023, !llvm.access.group !2020
  %i.am = mul <4 x i32> %wide.load8.6, %broadcast.splat
  store <4 x i32> %i.am, ptr %i.al, align 4, !tbaa !104, !alias.scope !2023, !llvm.access.group !2020
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %wide.load9.6 = load <4 x i32>, ptr %i.an, align 4, !tbaa !104, !alias.scope !2024, !llvm.access.group !2020
  %i.ao = mul <4 x i32> %wide.load9.6, %broadcast.splat
  store <4 x i32> %i.ao, ptr %i.an, align 4, !tbaa !104, !alias.scope !2024, !llvm.access.group !2020
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.7 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !104, !alias.scope !2022, !llvm.access.group !2020
  %i.aq = mul <4 x i32> %wide.load.7, %broadcast.splat
  store <4 x i32> %i.aq, ptr %i.ap, align 4, !tbaa !104, !alias.scope !2022, !llvm.access.group !2020
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %wide.load8.7 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !104, !alias.scope !2023, !llvm.access.group !2020
  %i.as = mul <4 x i32> %wide.load8.7, %broadcast.splat
  store <4 x i32> %i.as, ptr %i.ar, align 4, !tbaa !104, !alias.scope !2023, !llvm.access.group !2020
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %wide.load9.7 = load <4 x i32>, ptr %i.at, align 4, !tbaa !104, !alias.scope !2024, !llvm.access.group !2020
  %i.au = mul <4 x i32> %wide.load9.7, %broadcast.splat
  store <4 x i32> %i.au, ptr %i.at, align 4, !tbaa !104, !alias.scope !2024, !llvm.access.group !2020
  %i.av = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !2021
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.av(ptr noundef %0, ptr noundef nonnull %i.aw, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !62
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_unpack_xyzw_2aaa_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef initializes((0, 128)) %3, ptr noalias noundef initializes((0, 128)) %4, ptr noalias noundef initializes((0, 128)) %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2035)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %2, align 4, !tbaa !104, !alias.scope !2032, !llvm.access.group !63 ; 4 uses
  %wide.load8 = load <4 x i32>, ptr %i.a, align 4, !tbaa !104, !alias.scope !2032, !llvm.access.group !63 ; 4 uses
  %i.b = lshr <4 x i32> %wide.load, splat (i32 30)
  %i.c = lshr <4 x i32> %wide.load8, splat (i32 30)
  store <4 x i32> %i.b, ptr %2, align 4, !tbaa !104, !alias.scope !2032, !llvm.access.group !63
  store <4 x i32> %i.c, ptr %i.a, align 4, !tbaa !104, !alias.scope !2032, !llvm.access.group !63
  %i.d = lshr <4 x i32> %wide.load, splat (i32 20)
  %i.e = lshr <4 x i32> %wide.load8, splat (i32 20)
  %i.f = and <4 x i32> %i.d, splat (i32 1023)
  %i.g = and <4 x i32> %i.e, splat (i32 1023)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x i32> %i.f, ptr %3, align 4, !tbaa !104, !alias.scope !2033, !llvm.access.group !63
  store <4 x i32> %i.g, ptr %i.h, align 4, !tbaa !104, !alias.scope !2033, !llvm.access.group !63
  %i.i = lshr <4 x i32> %wide.load, splat (i32 10)
  %i.j = lshr <4 x i32> %wide.load8, splat (i32 10)
  %i.k = and <4 x i32> %i.i, splat (i32 1023)
  %i.l = and <4 x i32> %i.j, splat (i32 1023)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> %i.k, ptr %4, align 4, !tbaa !104, !alias.scope !2034, !llvm.access.group !63
  store <4 x i32> %i.l, ptr %i.m, align 4, !tbaa !104, !alias.scope !2034, !llvm.access.group !63
  %i.n = and <4 x i32> %wide.load, splat (i32 1023)
  %i.o = and <4 x i32> %wide.load8, splat (i32 1023)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <4 x i32> %i.n, ptr %5, align 4, !tbaa !104, !alias.scope !2035, !llvm.access.group !63
  store <4 x i32> %i.o, ptr %i.p, align 4, !tbaa !104, !alias.scope !2035, !llvm.access.group !63
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.q, align 4, !tbaa !104, !alias.scope !2032, !llvm.access.group !63 ; 4 uses
  %wide.load8.1 = load <4 x i32>, ptr %i.r, align 4, !tbaa !104, !alias.scope !2032, !llvm.access.group !63 ; 4 uses
  %i.s = lshr <4 x i32> %wide.load.1, splat (i32 30)
  %i.t = lshr <4 x i32> %wide.load8.1, splat (i32 30)
  store <4 x i32> %i.s, ptr %i.q, align 4, !tbaa !104, !alias.scope !2032, !llvm.access.group !63
  store <4 x i32> %i.t, ptr %i.r, align 4, !tbaa !104, !alias.scope !2032, !llvm.access.group !63
  %i.u = lshr <4 x i32> %wide.load.1, splat (i32 20)
  %i.v = lshr <4 x i32> %wide.load8.1, splat (i32 20)
  %i.w = and <4 x i32> %i.u, splat (i32 1023)
  %i.x = and <4 x i32> %i.v, splat (i32 1023)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x i32> %i.w, ptr %i.y, align 4, !tbaa !104, !alias.scope !2033, !llvm.access.group !63
  store <4 x i32> %i.x, ptr %i.z, align 4, !tbaa !104, !alias.scope !2033, !llvm.access.group !63
  %i.aa = lshr <4 x i32> %wide.load.1, splat (i32 10)
  %i.ab = lshr <4 x i32> %wide.load8.1, splat (i32 10)
  %i.ac = and <4 x i32> %i.aa, splat (i32 1023)
  %i.ad = and <4 x i32> %i.ab, splat (i32 1023)
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <4 x i32> %i.ac, ptr %i.ae, align 4, !tbaa !104, !alias.scope !2034, !llvm.access.group !63
  store <4 x i32> %i.ad, ptr %i.af, align 4, !tbaa !104, !alias.scope !2034, !llvm.access.group !63
  %i.ag = and <4 x i32> %wide.load.1, splat (i32 1023)
  %i.ah = and <4 x i32> %wide.load8.1, splat (i32 1023)
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <4 x i32> %i.ag, ptr %i.ai, align 4, !tbaa !104, !alias.scope !2035, !llvm.access.group !63
  store <4 x i32> %i.ah, ptr %i.aj, align 4, !tbaa !104, !alias.scope !2035, !llvm.access.group !63
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.2 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !104, !alias.scope !2032, !llvm.access.group !63 ; 4 uses
  %wide.load8.2 = load <4 x i32>, ptr %i.al, align 4, !tbaa !104, !alias.scope !2032, !llvm.access.group !63 ; 4 uses
  %i.am = lshr <4 x i32> %wide.load.2, splat (i32 30)
  %i.an = lshr <4 x i32> %wide.load8.2, splat (i32 30)
  store <4 x i32> %i.am, ptr %i.ak, align 4, !tbaa !104, !alias.scope !2032, !llvm.access.group !63
  store <4 x i32> %i.an, ptr %i.al, align 4, !tbaa !104, !alias.scope !2032, !llvm.access.group !63
  %i.ao = lshr <4 x i32> %wide.load.2, splat (i32 20)
  %i.ap = lshr <4 x i32> %wide.load8.2, splat (i32 20)
  %i.aq = and <4 x i32> %i.ao, splat (i32 1023)
  %i.ar = and <4 x i32> %i.ap, splat (i32 1023)
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <4 x i32> %i.aq, ptr %i.as, align 4, !tbaa !104, !alias.scope !2033, !llvm.access.group !63
  store <4 x i32> %i.ar, ptr %i.at, align 4, !tbaa !104, !alias.scope !2033, !llvm.access.group !63
  %i.au = lshr <4 x i32> %wide.load.2, splat (i32 10)
  %i.av = lshr <4 x i32> %wide.load8.2, splat (i32 10)
  %i.aw = and <4 x i32> %i.au, splat (i32 1023)
  %i.ax = and <4 x i32> %i.av, splat (i32 1023)
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 80
  store <4 x i32> %i.aw, ptr %i.ay, align 4, !tbaa !104, !alias.scope !2034, !llvm.access.group !63
  store <4 x i32> %i.ax, ptr %i.az, align 4, !tbaa !104, !alias.scope !2034, !llvm.access.group !63
  %i.ba = and <4 x i32> %wide.load.2, splat (i32 1023)
  %i.bb = and <4 x i32> %wide.load8.2, splat (i32 1023)
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 80
  store <4 x i32> %i.ba, ptr %i.bc, align 4, !tbaa !104, !alias.scope !2035, !llvm.access.group !63
  store <4 x i32> %i.bb, ptr %i.bd, align 4, !tbaa !104, !alias.scope !2035, !llvm.access.group !63
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.3 = load <4 x i32>, ptr %i.be, align 4, !tbaa !104, !alias.scope !2032, !llvm.access.group !63 ; 4 uses
  %wide.load8.3 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !104, !alias.scope !2032, !llvm.access.group !63 ; 4 uses
  %i.bg = lshr <4 x i32> %wide.load.3, splat (i32 30)
  %i.bh = lshr <4 x i32> %wide.load8.3, splat (i32 30)
  store <4 x i32> %i.bg, ptr %i.be, align 4, !tbaa !104, !alias.scope !2032, !llvm.access.group !63
  store <4 x i32> %i.bh, ptr %i.bf, align 4, !tbaa !104, !alias.scope !2032, !llvm.access.group !63
  %i.bi = lshr <4 x i32> %wide.load.3, splat (i32 20)
  %i.bj = lshr <4 x i32> %wide.load8.3, splat (i32 20)
  %i.bk = and <4 x i32> %i.bi, splat (i32 1023)
  %i.bl = and <4 x i32> %i.bj, splat (i32 1023)
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <4 x i32> %i.bk, ptr %i.bm, align 4, !tbaa !104, !alias.scope !2033, !llvm.access.group !63
  store <4 x i32> %i.bl, ptr %i.bn, align 4, !tbaa !104, !alias.scope !2033, !llvm.access.group !63
  %i.bo = lshr <4 x i32> %wide.load.3, splat (i32 10)
  %i.bp = lshr <4 x i32> %wide.load8.3, splat (i32 10)
  %i.bq = and <4 x i32> %i.bo, splat (i32 1023)
  %i.br = and <4 x i32> %i.bp, splat (i32 1023)
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 112
  store <4 x i32> %i.bq, ptr %i.bs, align 4, !tbaa !104, !alias.scope !2034, !llvm.access.group !63
  store <4 x i32> %i.br, ptr %i.bt, align 4, !tbaa !104, !alias.scope !2034, !llvm.access.group !63
  %i.bu = and <4 x i32> %wide.load.3, splat (i32 1023)
  %i.bv = and <4 x i32> %wide.load8.3, splat (i32 1023)
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 112
  store <4 x i32> %i.bu, ptr %i.bw, align 4, !tbaa !104, !alias.scope !2035, !llvm.access.group !63
  store <4 x i32> %i.bv, ptr %i.bx, align 4, !tbaa !104, !alias.scope !2035, !llvm.access.group !63
  %i.by = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !2031
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.by(ptr noundef %0, ptr noundef nonnull %i.bz, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !inline_history !64
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_unpack_xyzw_aaa2_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef initializes((0, 128)) %3, ptr noalias noundef initializes((0, 128)) %4, ptr noalias noundef initializes((0, 128)) %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2046)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %2, align 4, !tbaa !104, !alias.scope !2043, !llvm.access.group !63 ; 4 uses
  %wide.load8 = load <4 x i32>, ptr %i.a, align 4, !tbaa !104, !alias.scope !2043, !llvm.access.group !63 ; 4 uses
  %i.b = lshr <4 x i32> %wide.load, splat (i32 22)
  %i.c = lshr <4 x i32> %wide.load8, splat (i32 22)
  store <4 x i32> %i.b, ptr %2, align 4, !tbaa !104, !alias.scope !2043, !llvm.access.group !63
  store <4 x i32> %i.c, ptr %i.a, align 4, !tbaa !104, !alias.scope !2043, !llvm.access.group !63
  %i.d = lshr <4 x i32> %wide.load, splat (i32 12)
  %i.e = lshr <4 x i32> %wide.load8, splat (i32 12)
  %i.f = and <4 x i32> %i.d, splat (i32 1023)
  %i.g = and <4 x i32> %i.e, splat (i32 1023)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x i32> %i.f, ptr %3, align 4, !tbaa !104, !alias.scope !2044, !llvm.access.group !63
  store <4 x i32> %i.g, ptr %i.h, align 4, !tbaa !104, !alias.scope !2044, !llvm.access.group !63
  %i.i = lshr <4 x i32> %wide.load, splat (i32 2)
  %i.j = lshr <4 x i32> %wide.load8, splat (i32 2)
  %i.k = and <4 x i32> %i.i, splat (i32 1023)
  %i.l = and <4 x i32> %i.j, splat (i32 1023)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> %i.k, ptr %4, align 4, !tbaa !104, !alias.scope !2045, !llvm.access.group !63
  store <4 x i32> %i.l, ptr %i.m, align 4, !tbaa !104, !alias.scope !2045, !llvm.access.group !63
  %i.n = and <4 x i32> %wide.load, splat (i32 3)
  %i.o = and <4 x i32> %wide.load8, splat (i32 3)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <4 x i32> %i.n, ptr %5, align 4, !tbaa !104, !alias.scope !2046, !llvm.access.group !63
  store <4 x i32> %i.o, ptr %i.p, align 4, !tbaa !104, !alias.scope !2046, !llvm.access.group !63
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.q, align 4, !tbaa !104, !alias.scope !2043, !llvm.access.group !63 ; 4 uses
  %wide.load8.1 = load <4 x i32>, ptr %i.r, align 4, !tbaa !104, !alias.scope !2043, !llvm.access.group !63 ; 4 uses
  %i.s = lshr <4 x i32> %wide.load.1, splat (i32 22)
  %i.t = lshr <4 x i32> %wide.load8.1, splat (i32 22)
  store <4 x i32> %i.s, ptr %i.q, align 4, !tbaa !104, !alias.scope !2043, !llvm.access.group !63
  store <4 x i32> %i.t, ptr %i.r, align 4, !tbaa !104, !alias.scope !2043, !llvm.access.group !63
  %i.u = lshr <4 x i32> %wide.load.1, splat (i32 12)
  %i.v = lshr <4 x i32> %wide.load8.1, splat (i32 12)
  %i.w = and <4 x i32> %i.u, splat (i32 1023)
  %i.x = and <4 x i32> %i.v, splat (i32 1023)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x i32> %i.w, ptr %i.y, align 4, !tbaa !104, !alias.scope !2044, !llvm.access.group !63
  store <4 x i32> %i.x, ptr %i.z, align 4, !tbaa !104, !alias.scope !2044, !llvm.access.group !63
  %i.aa = lshr <4 x i32> %wide.load.1, splat (i32 2)
  %i.ab = lshr <4 x i32> %wide.load8.1, splat (i32 2)
  %i.ac = and <4 x i32> %i.aa, splat (i32 1023)
  %i.ad = and <4 x i32> %i.ab, splat (i32 1023)
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <4 x i32> %i.ac, ptr %i.ae, align 4, !tbaa !104, !alias.scope !2045, !llvm.access.group !63
  store <4 x i32> %i.ad, ptr %i.af, align 4, !tbaa !104, !alias.scope !2045, !llvm.access.group !63
  %i.ag = and <4 x i32> %wide.load.1, splat (i32 3)
  %i.ah = and <4 x i32> %wide.load8.1, splat (i32 3)
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <4 x i32> %i.ag, ptr %i.ai, align 4, !tbaa !104, !alias.scope !2046, !llvm.access.group !63
  store <4 x i32> %i.ah, ptr %i.aj, align 4, !tbaa !104, !alias.scope !2046, !llvm.access.group !63
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.2 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !104, !alias.scope !2043, !llvm.access.group !63 ; 4 uses
  %wide.load8.2 = load <4 x i32>, ptr %i.al, align 4, !tbaa !104, !alias.scope !2043, !llvm.access.group !63 ; 4 uses
  %i.am = lshr <4 x i32> %wide.load.2, splat (i32 22)
  %i.an = lshr <4 x i32> %wide.load8.2, splat (i32 22)
  store <4 x i32> %i.am, ptr %i.ak, align 4, !tbaa !104, !alias.scope !2043, !llvm.access.group !63
  store <4 x i32> %i.an, ptr %i.al, align 4, !tbaa !104, !alias.scope !2043, !llvm.access.group !63
  %i.ao = lshr <4 x i32> %wide.load.2, splat (i32 12)
  %i.ap = lshr <4 x i32> %wide.load8.2, splat (i32 12)
  %i.aq = and <4 x i32> %i.ao, splat (i32 1023)
  %i.ar = and <4 x i32> %i.ap, splat (i32 1023)
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <4 x i32> %i.aq, ptr %i.as, align 4, !tbaa !104, !alias.scope !2044, !llvm.access.group !63
  store <4 x i32> %i.ar, ptr %i.at, align 4, !tbaa !104, !alias.scope !2044, !llvm.access.group !63
  %i.au = lshr <4 x i32> %wide.load.2, splat (i32 2)
  %i.av = lshr <4 x i32> %wide.load8.2, splat (i32 2)
  %i.aw = and <4 x i32> %i.au, splat (i32 1023)
  %i.ax = and <4 x i32> %i.av, splat (i32 1023)
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 80
  store <4 x i32> %i.aw, ptr %i.ay, align 4, !tbaa !104, !alias.scope !2045, !llvm.access.group !63
  store <4 x i32> %i.ax, ptr %i.az, align 4, !tbaa !104, !alias.scope !2045, !llvm.access.group !63
  %i.ba = and <4 x i32> %wide.load.2, splat (i32 3)
  %i.bb = and <4 x i32> %wide.load8.2, splat (i32 3)
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 80
  store <4 x i32> %i.ba, ptr %i.bc, align 4, !tbaa !104, !alias.scope !2046, !llvm.access.group !63
  store <4 x i32> %i.bb, ptr %i.bd, align 4, !tbaa !104, !alias.scope !2046, !llvm.access.group !63
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.3 = load <4 x i32>, ptr %i.be, align 4, !tbaa !104, !alias.scope !2043, !llvm.access.group !63 ; 4 uses
  %wide.load8.3 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !104, !alias.scope !2043, !llvm.access.group !63 ; 4 uses
  %i.bg = lshr <4 x i32> %wide.load.3, splat (i32 22)
  %i.bh = lshr <4 x i32> %wide.load8.3, splat (i32 22)
  store <4 x i32> %i.bg, ptr %i.be, align 4, !tbaa !104, !alias.scope !2043, !llvm.access.group !63
  store <4 x i32> %i.bh, ptr %i.bf, align 4, !tbaa !104, !alias.scope !2043, !llvm.access.group !63
  %i.bi = lshr <4 x i32> %wide.load.3, splat (i32 12)
  %i.bj = lshr <4 x i32> %wide.load8.3, splat (i32 12)
  %i.bk = and <4 x i32> %i.bi, splat (i32 1023)
  %i.bl = and <4 x i32> %i.bj, splat (i32 1023)
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <4 x i32> %i.bk, ptr %i.bm, align 4, !tbaa !104, !alias.scope !2044, !llvm.access.group !63
  store <4 x i32> %i.bl, ptr %i.bn, align 4, !tbaa !104, !alias.scope !2044, !llvm.access.group !63
  %i.bo = lshr <4 x i32> %wide.load.3, splat (i32 2)
  %i.bp = lshr <4 x i32> %wide.load8.3, splat (i32 2)
  %i.bq = and <4 x i32> %i.bo, splat (i32 1023)
  %i.br = and <4 x i32> %i.bp, splat (i32 1023)
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 112
  store <4 x i32> %i.bq, ptr %i.bs, align 4, !tbaa !104, !alias.scope !2045, !llvm.access.group !63
  store <4 x i32> %i.br, ptr %i.bt, align 4, !tbaa !104, !alias.scope !2045, !llvm.access.group !63
  %i.bu = and <4 x i32> %wide.load.3, splat (i32 3)
  %i.bv = and <4 x i32> %wide.load8.3, splat (i32 3)
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 112
  store <4 x i32> %i.bu, ptr %i.bw, align 4, !tbaa !104, !alias.scope !2046, !llvm.access.group !63
  store <4 x i32> %i.bv, ptr %i.bx, align 4, !tbaa !104, !alias.scope !2046, !llvm.access.group !63
  %i.by = load ptr, ptr %1, align 16, !tbaa !113, !alias.scope !2042
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.by(ptr noundef %0, ptr noundef nonnull %i.bz, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !inline_history !64
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u32_pack_xyzw_2aaa_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2057)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %2, align 4, !tbaa !104, !alias.scope !2054, !llvm.access.group !65
  %wide.load8 = load <4 x i32>, ptr %i.a, align 4, !tbaa !104, !alias.scope !2054, !llvm.access.group !65
  %i.b = shl <4 x i32> %wide.load, splat (i32 30)
  %i.c = shl <4 x i32> %wide.load8, splat (i32 30)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load9 = load <4 x i32>, ptr %3, align 4, !tbaa !104, !alias.scope !2055, !llvm.access.group !65
  %wide.load10 = load <4 x i32>, ptr %i.d, align 4, !tbaa !104, !alias.scope !2055, !llvm.access.group !65
  %i.e = shl <4 x i32> %wide.load9, splat (i32 20)
  %i.f = shl <4 x i32> %wide.load10, splat (i32 20)
  %i.g = or <4 x i32> %i.e, %i.b
  %i.h = or <4 x i32> %i.f, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load11 = load <4 x i32>, ptr %4, align 4, !tbaa !104, !alias.scope !2056, !llvm.access.group !65
  %wide.load12 = load <4 x i32>, ptr %i.i, align 4, !tbaa !104, !alias.scope !2056, !llvm.access.group !65
  %i.j = shl <4 x i32> %wide.load11, splat (i32 10)
  %i.k = shl <4 x i32> %wide.load12, splat (i32 10)
  %i.l = or <4 x i32> %i.g, %i.j
  %i.m = or <4 x i32> %i.h, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.load13 = load <4 x i32>, ptr %5, align 4, !tbaa !104, !alias.scope !2057, !llvm.access.group !65
  %wide.load14 = load <4 x i32>, ptr %i.n, align 4, !tbaa !104, !alias.scope !2057, !llvm.access.group !65
  %i.o = or <4 x i32> %i.l, %wide.load13
  %i.p = or <4 x i32> %i.m, %wide.load14
  store <4 x i32> %i.o, ptr %2, align 4, !tbaa !104, !alias.scope !2054, !llvm.access.group !65
  store <4 x i32> %i.p, ptr %i.a, align 4, !tbaa !104, !alias.scope !2054, !llvm.access.group !65
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.q, align 4, !tbaa !104, !alias.scope !2054, !llvm.access.group !65
  %wide.load8.1 = load <4 x i32>, ptr %i.r, align 4, !tbaa !104, !alias.scope !2054, !llvm.access.group !65
  %i.s = shl <4 x i32> %wide.load.1, splat (i32 30)
  %i.t = shl <4 x i32> %wide.load8.1, splat (i32 30)
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 48
  %wide.load9.1 = load <4 x i32>, ptr %i.u, align 4, !tbaa !104, !alias.scope !2055, !llvm.access.group !65
  %wide.load10.1 = load <4 x i32>, ptr %i.v, align 4, !tbaa !104, !alias.scope !2055, !llvm.access.group !65
  %i.w = shl <4 x i32> %wide.load9.1, splat (i32 20)
  %i.x = shl <4 x i32> %wide.load10.1, splat (i32 20)
  %i.y = or <4 x i32> %i.w, %i.s
  %i.z = or <4 x i32> %i.x, %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %wide.load11.1 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !104, !alias.scope !2056, !llvm.access.group !65
  %wide.load12.1 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !104, !alias.scope !2056, !llvm.access.group !65
  %i.ac = shl <4 x i32> %wide.load11.1, splat (i32 10)
  %i.ad = shl <4 x i32> %wide.load12.1, splat (i32 10)
  %i.ae = or <4 x i32> %i.y, %i.ac
  %i.af = or <4 x i32> %i.z, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 48
  %wide.load13.1 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !104, !alias.scope !2057, !llvm.access.group !65
  %wide.load14.1 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !104, !alias.scope !2057, !llvm.access.group !65
  %i.ai = or <4 x i32> %i.ae, %wide.load13.1
  %i.aj = or <4 x i32> %i.af, %wide.load14.1
  store <4 x i32> %i.ai, ptr %i.q, align 4, !tbaa !104, !alias.scope !2054, !llvm.access.group !65
  store <4 x i32> %i.aj, ptr %i.r, align 4, !tbaa !104, !alias.scope !2054, !llvm.access.group !65
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.2 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !104, !alias.scope !2054, !llvm.access.group !65
  %wide.load8.2 = load <4 x i32>, ptr %i.al, align 4, !tbaa !104, !alias.scope !2054, !llvm.access.group !65
  %i.am = shl <4 x i32> %wide.load.2, splat (i32 30)
  %i.an = shl <4 x i32> %wide.load8.2, splat (i32 30)
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 80
end_hunk_8

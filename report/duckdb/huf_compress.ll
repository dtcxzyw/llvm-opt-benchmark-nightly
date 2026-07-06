inline.NumInlined: 440
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN11duckdb_zstd14HUF_readCTableEPmPjPKvmS1_:bb.a
  %.not53 = icmp eq i8 %i.az, 0
  %narrow = select i1 %.not53, i8 0, i8 %i.bb
  %i.bc = zext i8 %narrow to i64
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !15
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.lr.ph62.preheader, label %scalar.ph, !llvm.loop !31

.lr.ph62.preheader:                               ; preds = %scalar.ph, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  %xtraiter97 = and i64 %wide.trip.count78, 1
  %i.bd = icmp eq i32 %i.o, 1
  br i1 %i.bd, label %.lr.ph62.epil.preheader, label %.lr.ph62.preheader.new

.lr.ph62.preheader.new:                           ; preds = %.lr.ph62.preheader
  %unroll_iter100 = and i64 %wide.trip.count78, 4294967294
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62, %.lr.ph62.preheader.new
  %indvars.iv80 = phi i64 [ 0, %.lr.ph62.preheader.new ], [ %indvars.iv.next81.1, %.lr.ph62 ] ; 3 uses
  %niter101 = phi i64 [ 0, %.lr.ph62.preheader.new ], [ %niter101.next.1, %.lr.ph62 ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv80
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !15
  %i.bg = and i64 %i.bf, 255
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.bg ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !32
  %i.bj = add i16 %i.bi, 1
  store i16 %i.bj, ptr %i.bh, align 2, !tbaa !32
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv80
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !15
  %i.bn = and i64 %i.bm, 255
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.bn ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !32
  %i.bq = add i16 %i.bp, 1
  store i16 %i.bq, ptr %i.bo, align 2, !tbaa !32
  %indvars.iv.next81.1 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %niter101.next.1 = add i64 %niter101, 2         ; 2 uses
  %niter101.ncmp.1 = icmp eq i64 %niter101.next.1, %unroll_iter100
  br i1 %niter101.ncmp.1, label %._crit_edge63.loopexit.unr-lcssa, label %.lr.ph62, !llvm.loop !34

._crit_edge63.loopexit.unr-lcssa:                 ; preds = %.lr.ph62
  %lcmp.mod98.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod98.not, label %._crit_edge63, label %.lr.ph62.epil.preheader

.lr.ph62.epil.preheader:                          ; preds = %._crit_edge63.loopexit.unr-lcssa, %.lr.ph62.preheader
  %indvars.iv80.epil.init = phi i64 [ 0, %.lr.ph62.preheader ], [ %indvars.iv.next81.1, %._crit_edge63.loopexit.unr-lcssa ]
  %lcmp.mod99 = trunc i32 %i.o to i1
  call void @llvm.assume(i1 %lcmp.mod99)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv80.epil.init
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !15
  %i.bt = and i64 %i.bs, 255
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.bt ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !32
  %i.bw = add i16 %i.bv, 1
  store i16 %i.bw, ptr %i.bu, align 2, !tbaa !32
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %.lr.ph62.epil.preheader, %._crit_edge63.loopexit.unr-lcssa, %._crit_edge.thread
  %i.bx = zext nneg i32 %i.m to i64               ; 3 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i16 0, ptr %i.bz, align 2, !tbaa !32
  br i1 %.not5155, label %.preheader, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %._crit_edge63
  %xtraiter102 = and i32 %i.m, 1
  %i.ca = icmp eq i32 %i.m, 1
  br i1 %i.ca, label %.lr.ph68.epil.preheader, label %.lr.ph68.preheader.new

.lr.ph68.preheader.new:                           ; preds = %.lr.ph68.preheader
  %unroll_iter105 = and i32 %i.m, 14
  br label %.lr.ph68

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph68
  %lcmp.mod103.not = icmp eq i32 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %.preheader, label %.lr.ph68.epil.preheader

.lr.ph68.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph68.preheader
  %indvars.iv85.epil.init = phi i64 [ %i.bx, %.lr.ph68.preheader ], [ %indvars.iv.next86.1, %.preheader.loopexit.unr-lcssa ]
  %.04465.epil.init = phi i16 [ 0, %.lr.ph68.preheader ], [ %i.cl, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod104 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod104)
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv85.epil.init
  store i16 %.04465.epil.init, ptr %i.cb, align 2, !tbaa !32
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph68.epil.preheader, %.preheader.loopexit.unr-lcssa, %._crit_edge63
  br i1 %.not, label %._crit_edge71, label %.lr.ph70.preheader

.lr.ph70.preheader:                               ; preds = %.preheader
  %wide.trip.count90 = zext i32 %i.o to i64
  br label %.lr.ph70

.lr.ph68:                                         ; preds = %.lr.ph68, %.lr.ph68.preheader.new
  %indvars.iv85 = phi i64 [ %i.bx, %.lr.ph68.preheader.new ], [ %indvars.iv.next86.1, %.lr.ph68 ] ; 4 uses
  %.04465 = phi i16 [ 0, %.lr.ph68.preheader.new ], [ %i.cl, %.lr.ph68 ] ; 2 uses
  %niter106 = phi i32 [ 0, %.lr.ph68.preheader.new ], [ %niter106.next.1, %.lr.ph68 ]
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv85
  store i16 %.04465, ptr %i.cc, align 2, !tbaa !32
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv85
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !32
  %i.cf = add i16 %i.ce, %.04465
  %i.cg = lshr i16 %i.cf, 1                       ; 2 uses
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, -1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next86
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !32
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next86
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !32
  %i.ck = add i16 %i.cj, %i.cg
  %i.cl = lshr i16 %i.ck, 1                       ; 2 uses
  %indvars.iv.next86.1 = add nsw i64 %indvars.iv85, -2 ; 2 uses
  %niter106.next.1 = add i32 %niter106, 2         ; 2 uses
  %niter106.ncmp.1 = icmp eq i32 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph68, !llvm.loop !35

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %_ZN11duckdb_zstdL12HUF_setValueEPmm.exit
  %indvars.iv87 = phi i64 [ 0, %.lr.ph70.preheader ], [ %indvars.iv.next88, %_ZN11duckdb_zstdL12HUF_setValueEPmm.exit ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv87 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !15 ; 2 uses
  %i.co = and i64 %i.cn, 255                      ; 3 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.co ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !32 ; 2 uses
  %i.cr = add i16 %i.cq, 1
  store i16 %i.cr, ptr %i.cp, align 2, !tbaa !32
  %.not.i = icmp eq i64 %i.co, 0
  br i1 %.not.i, label %_ZN11duckdb_zstdL12HUF_setValueEPmm.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph70
  %i.cs = zext i16 %i.cq to i64
  %i.ct = sub nsw i64 64, %i.co
  %i.cu = shl i64 %i.cs, %i.ct
  %i.cv = or i64 %i.cu, %i.cn
  store i64 %i.cv, ptr %i.cm, align 8, !tbaa !15
  br label %_ZN11duckdb_zstdL12HUF_setValueEPmm.exit

_ZN11duckdb_zstdL12HUF_setValueEPmm.exit:         ; preds = %.lr.ph70, %bb.e
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %._crit_edge71, label %.lr.ph70, !llvm.loop !36

._crit_edge71:                                    ; preds = %_ZN11duckdb_zstdL12HUF_setValueEPmm.exit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a, %._crit_edge71
  %.046 = phi i64 [ %i.h, %._crit_edge71 ], [ %i.h, %bb.a ], [ -44, %bb.b ], [ -48, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i64 %.046
}

declare noundef i64 @_ZN11duckdb_zstd13HUF_readStatsEPhmPjS1_S1_PKvm(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 256) i32 @_ZN11duckdb_zstd23HUF_getNbBitsFromCTableEPKmj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.a = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 255
  %i.d = icmp ugt i32 %1, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 255
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 -66, 13) i64 @_ZN11duckdb_zstd20HUF_buildCTable_wkspEPmPKjjjPvm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [13 x i16], align 16              ; 13 uses
  %i.b = alloca [13 x i16], align 16              ; 9 uses
  %i.c = alloca [14 x i32], align 16              ; 11 uses
  %i.d = ptrtoint ptr %4 to i64
  %i.e = sub i64 0, %i.d
  %i.f = and i64 %i.e, 3                          ; 3 uses
  %.not.i = icmp ult i64 %5, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 %i.f ; 7 uses
  %storemerge.i = tail call i64 @llvm.usub.sat.i64(i64 %5, i64 %i.f)
  %.0.i = select i1 %.not.i, ptr null, ptr %i.g   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 58 uses
  %i.i = icmp ult i64 %storemerge.i, 4864
  br i1 %i.i, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i32 %2, 255
  br i1 %i.j, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.g, i8 0, i64 4096, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 4096 ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(768) %i.k, i8 0, i64 768, i1 false)
  %i.l = add nuw nsw i32 %2, 1                    ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.l to i64  ; 7 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.m = icmp eq i32 %2, 0
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %wide.trip.count.i, 510
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.d ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3    ; 3 uses
  %i.p = icmp ult i32 %i.o, 165
  %i.q = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.o, i1 true)
  %i.r = sub nuw nsw i32 189, %i.q
  %i.s = select i1 %i.p, i32 %i.o, i32 %i.r
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.t ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !37
  %i.w = add i16 %i.v, 1
  store i16 %i.w, ptr %i.u, align 2, !tbaa !37
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3    ; 3 uses
  %i.aa = icmp ult i32 %i.z, 165
  %i.ab = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.z, i1 true)
  %i.ac = sub nuw nsw i32 189, %i.ab
  %i.ad = select i1 %i.aa, i32 %i.z, i32 %i.ac
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ae ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !37
  %i.ah = add i16 %i.ag, 1
  store i16 %i.ah, ptr %i.af, align 2, !tbaa !37
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader49.preheader.i.unr-lcssa, label %bb.d, !llvm.loop !39

.preheader49.preheader.i.unr-lcssa:               ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader49.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader49.preheader.i.unr-lcssa, %bb.c
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.1, %.preheader49.preheader.i.unr-lcssa ]
  %lcmp.mod102 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.epil.init
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3  ; 3 uses
  %i.ak = icmp ult i32 %i.aj, 165
  %i.al = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.aj, i1 true)
  %i.am = sub nuw nsw i32 189, %i.al
  %i.an = select i1 %i.ak, i32 %i.aj, i32 %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ao ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !37
  %i.ar = add i16 %i.aq, 1
  store i16 %i.ar, ptr %i.ap, align 2, !tbaa !37
  br label %.preheader49.preheader.i

.preheader49.preheader.i:                         ; preds = %.preheader49.preheader.i.unr-lcssa, %.epil.preheader
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4860
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !37
  br label %.preheader49.i

.preheader49.i:                                   ; preds = %.preheader49.i.3, %.preheader49.preheader.i
  %i.as = phi i16 [ %.pre.i, %.preheader49.preheader.i ], [ %i.bj, %.preheader49.i.3 ]
  %indvars.iv55.i = phi i64 [ 191, %.preheader49.preheader.i ], [ %indvars.iv.next56.i.3, %.preheader49.i.3 ] ; 4 uses
  %i.at = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv55.i ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -4     ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !37
  %i.aw = add i16 %i.av, %i.as                    ; 3 uses
  store i16 %i.aw, ptr %i.au, align 2, !tbaa !37
  %i.ax = getelementptr i8, ptr %i.at, i64 -2
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !40
  %i.ay = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv55.i ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -8     ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !37
  %i.bb = add i16 %i.ba, %i.aw                    ; 3 uses
  store i16 %i.bb, ptr %i.az, align 2, !tbaa !37
  %i.bc = getelementptr i8, ptr %i.ay, i64 -6
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !40
  %indvars.iv.next56.i.2 = add nsw i64 %indvars.iv55.i, -3 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next56.i.2 ; 3 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !37
  %i.bf = add i16 %i.be, %i.bb                    ; 3 uses
  store i16 %i.bf, ptr %i.bd, align 2, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !40
  %.not46.i.2 = icmp eq i64 %indvars.iv.next56.i.2, 0
  br i1 %.not46.i.2, label %.preheader48.i.preheader, label %.preheader49.i.3

.preheader49.i.3:                                 ; preds = %.preheader49.i
  %indvars.iv.next56.i.3 = add nsw i64 %indvars.iv55.i, -4 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next56.i.3 ; 3 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !37
  %i.bj = add i16 %i.bi, %i.bf                    ; 3 uses
  store i16 %i.bj, ptr %i.bh, align 2, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !40
  br label %.preheader49.i

.preheader48.i.preheader:                         ; preds = %.preheader49.i
  %xtraiter103 = and i64 %wide.trip.count.i, 1
  %i.bl = icmp eq i32 %2, 0
  br i1 %i.bl, label %.preheader48.i.epil.preheader, label %.preheader48.i.preheader.new

.preheader48.i.preheader.new:                     ; preds = %.preheader48.i.preheader
  %unroll_iter106 = and i64 %wide.trip.count.i, 510
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %.preheader48.i, %.preheader48.i.preheader.new
  %indvars.iv58.i = phi i64 [ 0, %.preheader48.i.preheader.new ], [ %indvars.iv.next59.i.1, %.preheader48.i ] ; 4 uses
  %niter107 = phi i64 [ 0, %.preheader48.i.preheader.new ], [ %niter107.next.1, %.preheader48.i ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv58.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3  ; 4 uses
  %i.bo = icmp ult i32 %i.bn, 165
  %i.bp = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bn, i1 true)
  %i.bq = sub nuw nsw i32 189, %i.bp
  %i.br = select i1 %i.bo, i32 %i.bn, i32 %i.bq
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 6 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !40 ; 2 uses
  %i.bw = add i16 %i.bv, 1
  store i16 %i.bw, ptr %i.bu, align 2, !tbaa !40
  %i.bx = zext i16 %i.bv to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bx ; 2 uses
  store i32 %i.bn, ptr %i.by, align 4, !tbaa !41
  %i.bz = trunc i64 %indvars.iv58.i to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 6
  store i8 %i.bz, ptr %i.ca, align 2, !tbaa !43
  %indvars.iv.next59.i = or disjoint i64 %indvars.iv58.i, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next59.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3  ; 4 uses
  %i.cd = icmp ult i32 %i.cc, 165
  %i.ce = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cc, i1 true)
  %i.cf = sub nuw nsw i32 189, %i.ce
  %i.cg = select i1 %i.cd, i32 %i.cc, i32 %i.cf
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 6 ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !40 ; 2 uses
  %i.cl = add i16 %i.ck, 1
  store i16 %i.cl, ptr %i.cj, align 2, !tbaa !40
  %i.cm = zext i16 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cm ; 2 uses
  store i32 %i.cc, ptr %i.cn, align 4, !tbaa !41
  %i.co = trunc i64 %indvars.iv.next59.i to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 6
  store i8 %i.co, ptr %i.cp, align 2, !tbaa !43
  %indvars.iv.next59.i.1 = add nuw nsw i64 %indvars.iv58.i, 2 ; 2 uses
  %niter107.next.1 = add i64 %niter107, 2         ; 2 uses
  %niter107.ncmp.1 = icmp eq i64 %niter107.next.1, %unroll_iter106
  br i1 %niter107.ncmp.1, label %.preheader.i.preheader.unr-lcssa, label %.preheader48.i, !llvm.loop !44

.preheader.i.preheader.unr-lcssa:                 ; preds = %.preheader48.i
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %.preheader.i.preheader, label %.preheader48.i.epil.preheader

.preheader48.i.epil.preheader:                    ; preds = %.preheader.i.preheader.unr-lcssa, %.preheader48.i.preheader
  %indvars.iv58.i.epil.init = phi i64 [ 0, %.preheader48.i.preheader ], [ %indvars.iv.next59.i.1, %.preheader.i.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod105 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv58.i.epil.init
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3  ; 4 uses
  %i.cs = icmp ult i32 %i.cr, 165
  %i.ct = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cr, i1 true)
  %i.cu = sub nuw nsw i32 189, %i.ct
  %i.cv = select i1 %i.cs, i32 %i.cr, i32 %i.cu
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 6 ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !40 ; 2 uses
  %i.da = add i16 %i.cz, 1
  store i16 %i.da, ptr %i.cy, align 2, !tbaa !40
  %i.db = zext i16 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.db ; 2 uses
  store i32 %i.cr, ptr %i.dc, align 4, !tbaa !41
  %i.dd = trunc i64 %indvars.iv58.i.epil.init to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 6
  store i8 %i.dd, ptr %i.de, align 2, !tbaa !43
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.i.preheader.unr-lcssa, %.preheader48.i.epil.preheader
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.f
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %bb.f ], [ 165, %.preheader.i.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv63.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !40
  %i.di = zext i16 %i.dh to i32
  %i.dj = load i16, ptr %i.df, align 2, !tbaa !37 ; 2 uses
  %i.dk = zext i16 %i.dj to i32
  %i.dl = sub nsw i32 %i.di, %i.dk                ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader.i
  %i.dn = zext i16 %i.dj to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dn
  %i.dp = add nsw i32 %i.dl, -1
  tail call fastcc void @_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii(ptr noundef nonnull %i.do, i32 noundef 0, i32 noundef %i.dp)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader.i
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next64.i, 191
  br i1 %exitcond66.not.i, label %_ZN11duckdb_zstdL8HUF_sortEPNS_9nodeElt_sEPKjjPNS_7rankPosE.exit, label %.preheader.i, !llvm.loop !45

_ZN11duckdb_zstdL8HUF_sortEPNS_9nodeElt_sEPKjjPNS_7rankPosE.exit: ; preds = %bb.f
  %i.dq = zext nneg i32 %2 to i64
  %i.dr = add nuw nsw i32 %2, 254
  %i.ds = add nuw nsw i32 %2, 255
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN11duckdb_zstdL8HUF_sortEPNS_9nodeElt_sEPKjjPNS_7rankPosE.exit
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.g ], [ %i.ds, %_ZN11duckdb_zstdL8HUF_sortEPNS_9nodeElt_sEPKjjPNS_7rankPosE.exit ] ; 3 uses
  %indvars.iv121.i = phi i32 [ %indvars.iv.next122.i, %bb.g ], [ %i.l, %_ZN11duckdb_zstdL8HUF_sortEPNS_9nodeElt_sEPKjjPNS_7rankPosE.exit ] ; 3 uses
  %indvars.iv113.i = phi i32 [ %indvars.iv.next114.i, %bb.g ], [ %i.dr, %_ZN11duckdb_zstdL8HUF_sortEPNS_9nodeElt_sEPKjjPNS_7rankPosE.exit ] ; 2 uses
  %indvars.iv.i24 = phi i64 [ %indvars.iv.next.i25, %bb.g ], [ %i.dq, %_ZN11duckdb_zstdL8HUF_sortEPNS_9nodeElt_sEPKjjPNS_7rankPosE.exit ] ; 10 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.i24
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !41 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  %indvars.iv.next.i25 = add nsw i64 %indvars.iv.i24, -1
  %indvars.iv.next114.i = add i32 %indvars.iv113.i, -1
  %indvars.iv.next122.i = add nsw i32 %indvars.iv121.i, -1
  %indvars.iv.next = add i32 %indvars.iv, -1
  br i1 %i.dv, label %bb.g, label %bb.h, !llvm.loop !46

bb.h:                                             ; preds = %bb.g
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.i24 ; 3 uses
  %i.dx = icmp eq i32 %3, 0
  %spec.store.select = select i1 %i.dx, i32 11, i32 %3 ; 15 uses
  %i.dy = trunc nsw i64 %indvars.iv.i24 to i32    ; 3 uses
  %i.dz = add nsw i32 %i.dy, 255                  ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dw, i64 -8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !41
  %i.ec = add i32 %i.eb, %i.du
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 2056
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !41
  %i.ee = getelementptr i8, ptr %i.dw, i64 -4
  store i16 256, ptr %i.ee, align 4, !tbaa !47
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i16 256, ptr %i.ef, align 4, !tbaa !47
  %i.eg = add nsw i32 %i.dy, -2
  %.not89.i = icmp slt i64 %indvars.iv.i24, 2
  br i1 %.not89.i, label %.preheader.i28, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.eh = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 257) ; 2 uses
  %narrow = add nuw i32 %i.eh, 1
  %i.ei = zext i32 %narrow to i64
  %i.ej = zext nneg i32 %i.eh to i64              ; 2 uses
  %xtraiter108 = and i64 %i.ej, 7                 ; 3 uses
  %i.ek = icmp slt i32 %indvars.iv, 264
  br i1 %i.ek, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %i.el = and i64 %i.ej, 2147483640
  %i.em = add nsw i64 %i.el, -264
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv107.i = phi i64 [ 257, %.lr.ph.preheader.i.new ], [ %indvars.iv.next108.i.7, %.lr.ph.i ] ; 9 uses
  %niter112 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter112.next.7, %.lr.ph.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv107.i
  store i32 1073741824, ptr %i.en, align 4, !tbaa !41
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv107.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i32 1073741824, ptr %i.ep, align 4, !tbaa !41
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv107.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i32 1073741824, ptr %i.er, align 4, !tbaa !41
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv107.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store i32 1073741824, ptr %i.et, align 4, !tbaa !41
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv107.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store i32 1073741824, ptr %i.ev, align 4, !tbaa !41
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv107.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  store i32 1073741824, ptr %i.ex, align 4, !tbaa !41
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv107.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  store i32 1073741824, ptr %i.ez, align 4, !tbaa !41
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv107.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  store i32 1073741824, ptr %i.fb, align 4, !tbaa !41
  %indvars.iv.next108.i.7 = add nuw nsw i64 %indvars.iv107.i, 8 ; 2 uses
  %niter112.next.7 = add i64 %niter112, 8
  %niter112.ncmp.7 = icmp eq i64 %niter112, %i.em
  br i1 %niter112.ncmp.7, label %.lr.ph96.preheader.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !48

.lr.ph96.preheader.i.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod109.not, label %.lr.ph96.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph96.preheader.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv107.i.epil.init = phi i64 [ 257, %.lr.ph.preheader.i ], [ %indvars.iv.next108.i.7, %.lr.ph96.preheader.i.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter108, 0
  tail call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv107.i.epil = phi i64 [ %indvars.iv107.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next108.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv107.i.epil
  store i32 1073741824, ptr %i.fc, align 4, !tbaa !41
  %indvars.iv.next108.i.epil = add nuw nsw i64 %indvars.iv107.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter108
  br i1 %epil.iter.cmp.not, label %.lr.ph96.preheader.i, label %.lr.ph.i.epil, !llvm.loop !49

.lr.ph96.preheader.i:                             ; preds = %.lr.ph.i.epil, %.lr.ph96.preheader.i.unr-lcssa
  store i32 -2147483648, ptr %i.g, align 4, !tbaa !41
  br label %.lr.ph96.i

.lr.ph96.i:                                       ; preds = %.lr.ph96.i, %.lr.ph96.preheader.i
  %indvars.iv110.i = phi i64 [ 257, %.lr.ph96.preheader.i ], [ %indvars.iv.next111.i, %.lr.ph96.i ] ; 3 uses
  %.07394.i = phi i32 [ %i.eg, %.lr.ph96.preheader.i ], [ %.2.i, %.lr.ph96.i ] ; 3 uses
  %.07493.i = phi i32 [ 256, %.lr.ph96.preheader.i ], [ %.276.i, %.lr.ph96.i ] ; 3 uses
  %i.fd = sext i32 %.07394.i to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !41
  %i.fg = sext i32 %.07493.i to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !41
  %i.fj = icmp uge i32 %i.ff, %i.fi               ; 3 uses
  %i.fk = zext i1 %i.fj to i32
  %.175.i = add nsw i32 %.07493.i, %i.fk          ; 3 uses
  %not..i = xor i1 %i.fj, true
  %i.fl = sext i1 %not..i to i32
  %.1.i = add nsw i32 %.07394.i, %i.fl            ; 3 uses
  %i.fm = select i1 %i.fj, i32 %.07493.i, i32 %.07394.i
  %i.fn = sext i32 %.1.i to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !41
  %i.fq = sext i32 %.175.i to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !41
  %i.ft = icmp uge i32 %i.fp, %i.fs               ; 3 uses
  %i.fu = zext i1 %i.ft to i32
  %.276.i = add nsw i32 %.175.i, %i.fu
  %not.86.i = xor i1 %i.ft, true
  %i.fv = sext i1 %not.86.i to i32
  %.2.i = add nsw i32 %.1.i, %i.fv
  %i.fw = select i1 %i.ft, i32 %.175.i, i32 %.1.i
  %i.fx = sext i32 %i.fm to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !41
  %i.ga = sext i32 %i.fw to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ga ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !41
  %i.gd = add i32 %i.gc, %i.fz
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv110.i
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !41
  %i.gf = trunc i64 %indvars.iv110.i to i16       ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store i16 %i.gf, ptr %i.gg, align 4, !tbaa !47
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  store i16 %i.gf, ptr %i.gh, align 4, !tbaa !47
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next111.i, %i.ei
  br i1 %exitcond64.not, label %.lr.ph100.preheader.i, label %.lr.ph96.i, !llvm.loop !50

.lr.ph100.preheader.i:                            ; preds = %.lr.ph96.i
  %i.gi = sext i32 %i.dz to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 7
  store i8 0, ptr %i.gk, align 1, !tbaa !51
  %i.gl = zext i32 %indvars.iv113.i to i64
  br label %.lr.ph100.i

.preheader.i28:                                   ; preds = %bb.h
  store i32 -2147483648, ptr %i.g, align 4, !tbaa !41
  %.pre.i29 = sext i32 %i.dz to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.pre.i29
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 7
  store i8 0, ptr %i.gn, align 1, !tbaa !51
  %.not84101.i = icmp slt i64 %indvars.iv.i24, 0
  br i1 %.not84101.i, label %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit, label %.lr.ph103.preheader.i

.lr.ph103.preheader.i:                            ; preds = %.lr.ph100.i, %.preheader.i28
  %wide.trip.count.i26 = zext i32 %indvars.iv121.i to i64 ; 2 uses
  %xtraiter113 = and i64 %wide.trip.count.i26, 3  ; 3 uses
  %i.go = add i32 %indvars.iv121.i, -1
  %i.gp = icmp ult i32 %i.go, 3
  br i1 %i.gp, label %.lr.ph103.i.epil.preheader, label %.lr.ph103.preheader.i.new

.lr.ph103.preheader.i.new:                        ; preds = %.lr.ph103.preheader.i
  %unroll_iter117 = and i64 %wide.trip.count.i26, 4294967292
  br label %.lr.ph103.i

.lr.ph100.i:                                      ; preds = %.lr.ph100.i, %.lr.ph100.preheader.i
  %indvars.iv115.i = phi i64 [ %i.gl, %.lr.ph100.preheader.i ], [ %indvars.iv.next116.i, %.lr.ph100.i ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv115.i ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.gs = load i16, ptr %i.gr, align 4, !tbaa !47
  %i.gt = zext i16 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 7
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !51
  %i.gx = add i8 %i.gw, 1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 7
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !51
  %indvars.iv.next116.i = add nsw i64 %indvars.iv115.i, -1
  %i.gz = icmp samesign ugt i64 %indvars.iv115.i, 256
  br i1 %i.gz, label %.lr.ph100.i, label %.lr.ph103.preheader.i, !llvm.loop !52

.lr.ph103.i:                                      ; preds = %.lr.ph103.i, %.lr.ph103.preheader.i.new
  %indvars.iv118.i = phi i64 [ 0, %.lr.ph103.preheader.i.new ], [ %indvars.iv.next119.i.3, %.lr.ph103.i ] ; 5 uses
  %niter118 = phi i64 [ 0, %.lr.ph103.preheader.i.new ], [ %niter118.next.3, %.lr.ph103.i ]
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv118.i ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hc = load i16, ptr %i.hb, align 4, !tbaa !47
  %i.hd = zext i16 %i.hc to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 7
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !51
  %i.hh = add i8 %i.hg, 1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 7
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !51
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv118.i ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  %i.hl = load i16, ptr %i.hk, align 4, !tbaa !47
  %i.hm = zext i16 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 7
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !51
  %i.hq = add i8 %i.hp, 1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 15
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !51
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv118.i ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 20
  %i.hu = load i16, ptr %i.ht, align 4, !tbaa !47
  %i.hv = zext i16 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 7
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !51
  %i.hz = add i8 %i.hy, 1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hs, i64 23
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !51
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv118.i ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 28
  %i.id = load i16, ptr %i.ic, align 4, !tbaa !47
  %i.ie = zext i16 %i.id to i64
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 7
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !51
  %i.ii = add i8 %i.ih, 1
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 31
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !51
  %indvars.iv.next119.i.3 = add nuw nsw i64 %indvars.iv118.i, 4 ; 2 uses
  %niter118.next.3 = add i64 %niter118, 4         ; 2 uses
  %niter118.ncmp.3 = icmp eq i64 %niter118.next.3, %unroll_iter117
  br i1 %niter118.ncmp.3, label %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit.loopexit.unr-lcssa, label %.lr.ph103.i, !llvm.loop !53

_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph103.i
  %lcmp.mod115.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod115.not, label %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit, label %.lr.ph103.i.epil.preheader

.lr.ph103.i.epil.preheader:                       ; preds = %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit.loopexit.unr-lcssa, %.lr.ph103.preheader.i
  %indvars.iv118.i.epil.init = phi i64 [ 0, %.lr.ph103.preheader.i ], [ %indvars.iv.next119.i.3, %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit.loopexit.unr-lcssa ]
  %lcmp.mod116 = icmp ne i64 %xtraiter113, 0
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph103.i.epil

.lr.ph103.i.epil:                                 ; preds = %.lr.ph103.i.epil, %.lr.ph103.i.epil.preheader
  %indvars.iv118.i.epil = phi i64 [ %indvars.iv118.i.epil.init, %.lr.ph103.i.epil.preheader ], [ %indvars.iv.next119.i.epil, %.lr.ph103.i.epil ] ; 2 uses
  %epil.iter114 = phi i64 [ 0, %.lr.ph103.i.epil.preheader ], [ %epil.iter114.next, %.lr.ph103.i.epil ]
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv118.i.epil ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.im = load i16, ptr %i.il, align 4, !tbaa !47
  %i.in = zext i16 %i.im to i64
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 7
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !51
  %i.ir = add i8 %i.iq, 1
  %i.is = getelementptr inbounds nuw i8, ptr %i.ik, i64 7
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !51
  %indvars.iv.next119.i.epil = add nuw nsw i64 %indvars.iv118.i.epil, 1
  %epil.iter114.next = add i64 %epil.iter114, 1   ; 2 uses
  %epil.iter114.cmp.not = icmp eq i64 %epil.iter114.next, %xtraiter113
  br i1 %epil.iter114.cmp.not, label %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit, label %.lr.ph103.i.epil, !llvm.loop !54

_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit: ; preds = %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit.loopexit.unr-lcssa, %.lr.ph103.i.epil, %.preheader.i28
  %i.it = and i64 %indvars.iv.i24, 4294967295
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 7
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !51
  %i.ix = zext i8 %i.iw to i32                    ; 4 uses
  %.not.i30 = icmp ult i32 %spec.store.select, %i.ix
  br i1 %.not.i30, label %bb.i, label %_ZN11duckdb_zstdL16HUF_setMaxHeightEPNS_9nodeElt_sEjj.exit

bb.i:                                             ; preds = %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit
  %i.iy = sub nuw nsw i32 %i.ix, %spec.store.select ; 2 uses
  %i.iz = shl nuw i32 1, %i.iy
  %sext = shl i64 %indvars.iv.i24, 32
  %6 = ashr exact i64 %sext, 32                   ; 3 uses
  %7 = getelementptr inbounds [8 x i8], ptr %i.h, i64 %6
  %i.ja = getelementptr inbounds nuw i8, ptr %7, i64 7 ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !51
  %i.jc = zext i8 %i.jb to i32                    ; 2 uses
  %i.jd = icmp samesign ult i32 %spec.store.select, %i.jc
  br i1 %i.jd, label %.lr.ph.i35, label %.preheader113.i

.lr.ph.i35:                                       ; preds = %bb.i
  %i.je = trunc nuw i32 %spec.store.select to i8
  br label %bb.j

.preheader113.loopexit.i:                         ; preds = %bb.j
  %i.jf = trunc nsw i64 %indvars.iv.next.i37 to i32
  %sext.i = shl i64 %indvars.iv.next.i37, 32
  %.pre.i38 = ashr exact i64 %sext.i, 32
  br label %.preheader113.i

.preheader113.i:                                  ; preds = %.preheader113.loopexit.i, %bb.i
  %.pre-phi.i = phi i64 [ %.pre.i38, %.preheader113.loopexit.i ], [ %6, %bb.i ]
  %.088.lcssa.i = phi i32 [ %i.jf, %.preheader113.loopexit.i ], [ %i.dy, %bb.i ]
  %.086.lcssa.i = phi i32 [ %i.jk, %.preheader113.loopexit.i ], [ 0, %bb.i ]
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.i35
  %indvars.iv.i36 = phi i64 [ %6, %.lr.ph.i35 ], [ %indvars.iv.next.i37, %bb.j ] ; 2 uses
  %i.jg = phi i32 [ %i.jc, %.lr.ph.i35 ], [ %i.jo, %bb.j ]
  %i.jh = phi ptr [ %i.ja, %.lr.ph.i35 ], [ %i.jm, %bb.j ]
  %.086116.i = phi i32 [ 0, %.lr.ph.i35 ], [ %i.jk, %bb.j ]
  %i.ji = sub nsw i32 %i.ix, %i.jg
  %.neg108.i = shl nsw i32 -1, %i.ji
  %i.jj = add i32 %.086116.i, %i.iz
  %i.jk = add i32 %i.jj, %.neg108.i               ; 2 uses
  store i8 %i.je, ptr %i.jh, align 1, !tbaa !51
  %indvars.iv.next.i37 = add nsw i64 %indvars.iv.i36, -1 ; 3 uses
  %i.jl = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv.i36
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 7 ; 2 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !51
  %i.jo = zext i8 %i.jn to i32                    ; 2 uses
  %i.jp = icmp samesign ult i32 %spec.store.select, %i.jo
  br i1 %i.jp, label %bb.j, label %.preheader113.loopexit.i, !llvm.loop !55

bb.k:                                             ; preds = %bb.k, %.preheader113.i
  %indvars.iv155.i = phi i32 [ %indvars.iv.next156.i, %bb.k ], [ %.088.lcssa.i, %.preheader113.i ] ; 4 uses
  %indvars.iv152.i = phi i64 [ %indvars.iv.next153.i, %bb.k ], [ %.pre-phi.i, %.preheader113.i ] ; 4 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv152.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 7
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !51
  %i.jt = zext i8 %i.js to i32
  %i.ju = icmp eq i32 %spec.store.select, %i.jt
  %indvars.iv.next153.i = add nsw i64 %indvars.iv152.i, -1
  %indvars.iv.next156.i = add i32 %indvars.iv155.i, -1
  br i1 %i.ju, label %bb.k, label %bb.l, !llvm.loop !56

bb.l:                                             ; preds = %bb.k
  %i.jv = ashr i32 %.086.lcssa.i, %i.iy           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, i8 -16, i64 56, i1 false)
  %i.jw = icmp sgt i64 %indvars.iv152.i, -1
  br i1 %i.jw, label %.lr.ph120.preheader.i, label %.preheader112.i

.lr.ph120.preheader.i:                            ; preds = %bb.l
  %i.jx = zext i32 %indvars.iv155.i to i64        ; 4 uses
  %i.jy = and i64 %i.jx, 1
  %lcmp.mod120.not.not = icmp eq i64 %i.jy, 0
  br i1 %lcmp.mod120.not.not, label %.lr.ph120.i.prol, label %.lr.ph120.i.prol.loopexit

.lr.ph120.i.prol:                                 ; preds = %.lr.ph120.preheader.i
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.jx
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 7
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !51
  %i.kc = zext i8 %i.kb to i32                    ; 3 uses
  %.not107.i.prol = icmp ugt i32 %spec.store.select, %i.kc
  br i1 %.not107.i.prol, label %bb.m, label %.lr.ph120.i.prol.loopexit.unr-lcssa

bb.m:                                             ; preds = %.lr.ph120.i.prol
  %i.kd = sub nuw nsw i32 %spec.store.select, %i.kc
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ke
  store i32 %indvars.iv155.i, ptr %i.kf, align 4, !tbaa !3
  br label %.lr.ph120.i.prol.loopexit.unr-lcssa

.lr.ph120.i.prol.loopexit.unr-lcssa:              ; preds = %bb.m, %.lr.ph120.i.prol
  %.195.i.prol = phi i32 [ %spec.store.select, %.lr.ph120.i.prol ], [ %i.kc, %bb.m ]
  %indvars.iv.next158.i.prol = add nsw i64 %i.jx, -1
  br label %.lr.ph120.i.prol.loopexit

.lr.ph120.i.prol.loopexit:                        ; preds = %.lr.ph120.i.prol.loopexit.unr-lcssa, %.lr.ph120.preheader.i
  %indvars.iv157.i.unr = phi i64 [ %i.jx, %.lr.ph120.preheader.i ], [ %indvars.iv.next158.i.prol, %.lr.ph120.i.prol.loopexit.unr-lcssa ]
  %.094118.i.unr = phi i32 [ %spec.store.select, %.lr.ph120.preheader.i ], [ %.195.i.prol, %.lr.ph120.i.prol.loopexit.unr-lcssa ]
  %i.kg = icmp eq i32 %indvars.iv155.i, 0
  br i1 %i.kg, label %.preheader112.i, label %.lr.ph120.i

.preheader112.i:                                  ; preds = %.lr.ph120.i.prol.loopexit, %bb.p, %bb.l
  %i.kh = icmp sgt i32 %i.jv, 0
  br i1 %i.kh, label %.lr.ph134.i, label %.preheader111.i

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.prol.loopexit, %bb.p
  %indvars.iv157.i = phi i64 [ %indvars.iv.next158.i.1, %bb.p ], [ %indvars.iv157.i.unr, %.lr.ph120.i.prol.loopexit ] ; 6 uses
  %.094118.i = phi i32 [ %.195.i.1, %bb.p ], [ %.094118.i.unr, %.lr.ph120.i.prol.loopexit ] ; 2 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv157.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 7
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !51
  %i.kl = zext i8 %i.kk to i32                    ; 3 uses
  %.not107.i = icmp ugt i32 %.094118.i, %i.kl
  br i1 %.not107.i, label %bb.n, label %.lr.ph120.i.1

bb.n:                                             ; preds = %.lr.ph120.i
  %i.km = sub nsw i32 %spec.store.select, %i.kl
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kn
  %i.kp = trunc nuw nsw i64 %indvars.iv157.i to i32
  store i32 %i.kp, ptr %i.ko, align 4, !tbaa !3
  br label %.lr.ph120.i.1

.lr.ph120.i.1:                                    ; preds = %bb.n, %.lr.ph120.i
  %.195.i = phi i32 [ %.094118.i, %.lr.ph120.i ], [ %i.kl, %bb.n ] ; 2 uses
  %i.kq = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv157.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 7
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !51
  %i.kt = zext i8 %i.ks to i32                    ; 3 uses
  %.not107.i.1 = icmp ugt i32 %.195.i, %i.kt
  br i1 %.not107.i.1, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph120.i.1
  %i.ku = sub nsw i32 %spec.store.select, %i.kt
  %i.kv = zext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kv
  %i.kx = trunc i64 %indvars.iv157.i to i32
  %i.ky = add i32 %i.kx, -1
  store i32 %i.ky, ptr %i.kw, align 4, !tbaa !3
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph120.i.1
  %.195.i.1 = phi i32 [ %.195.i, %.lr.ph120.i.1 ], [ %i.kt, %bb.o ]
  %indvars.iv.next158.i.1 = add nsw i64 %indvars.iv157.i, -2
  %i.kz = icmp sgt i64 %indvars.iv157.i, 1
  br i1 %i.kz, label %.lr.ph120.i, label %.preheader112.i, !llvm.loop !57

.preheader111.i:                                  ; preds = %bb.u, %.preheader112.i
  %.187.lcssa.i = phi i32 [ %i.jv, %.preheader112.i ], [ %i.lz, %bb.u ] ; 2 uses
  %i.la = icmp slt i32 %.187.lcssa.i, 0
  br i1 %i.la, label %.lr.ph137.lr.ph.i, label %.outer._crit_edge.i

.lr.ph137.lr.ph.i:                                ; preds = %.preheader111.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.promoted143.i = load i32, ptr %i.lb, align 4
  br label %.lr.ph137.i

.lr.ph134.i:                                      ; preds = %.preheader112.i, %bb.u
  %.187133.i = phi i32 [ %i.lz, %bb.u ], [ %i.jv, %.preheader112.i ] ; 2 uses
  %i.lc = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.187133.i, i1 true) ; 2 uses
  %.not145.i = icmp eq i32 %i.lc, 31
  br i1 %.not145.i, label %.lr.ph129.i.preheader, label %.lr.ph122.preheader.i

.lr.ph122.preheader.i:                            ; preds = %.lr.ph134.i
  %narrow.i = sub nuw nsw i32 32, %i.lc
  %i.ld = zext nneg i32 %narrow.i to i64
  br label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %select.unfold.i, %.lr.ph122.preheader.i
  %indvars.iv160.i = phi i64 [ %i.ld, %.lr.ph122.preheader.i ], [ %indvars.iv.next161.i, %select.unfold.i ] ; 5 uses
  %i.le = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv160.i ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !3  ; 2 uses
  %i.lg = getelementptr i8, ptr %i.le, i64 -4
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !3  ; 2 uses
  %i.li = icmp eq i32 %i.lf, -252645136
  br i1 %i.li, label %select.unfold.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph122.i
  %i.lj = icmp eq i32 %i.lh, -252645136
  br i1 %i.lj, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.lk = zext i32 %i.lf to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !41
  %i.ln = zext i32 %i.lh to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !41
  %i.lq = shl i32 %i.lp, 1
  %.not105.i = icmp ugt i32 %i.lm, %i.lq
  br i1 %.not105.i, label %select.unfold.i, label %.thread.i

select.unfold.i:                                  ; preds = %bb.r, %.lr.ph122.i
  %indvars.iv.next161.i = add nsw i64 %indvars.iv160.i, -1 ; 2 uses
  %i.lr = icmp ugt i64 %indvars.iv.next161.i, 1
  br i1 %i.lr, label %.lr.ph122.i, label %.lr.ph129.i.preheader, !llvm.loop !58

.thread.i:                                        ; preds = %bb.r, %bb.q
  %i.ls = trunc nuw nsw i64 %indvars.iv160.i to i32
  %i.lt = icmp ult i64 %indvars.iv160.i, 13
  br i1 %i.lt, label %.lr.ph129.i.preheader, label %.critedge.i

.lr.ph129.i.preheader:                            ; preds = %select.unfold.i, %.thread.i, %.lr.ph134.i
  %indvars.iv163.i.ph = phi i64 [ %indvars.iv160.i, %.thread.i ], [ 1, %.lr.ph134.i ], [ 1, %select.unfold.i ]
  br label %.lr.ph129.i

.lr.ph129.i:                                      ; preds = %.lr.ph129.i.preheader, %bb.s
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %bb.s ], [ %indvars.iv163.i.ph, %.lr.ph129.i.preheader ] ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv163.i
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !3
  %i.lw = icmp eq i32 %i.lv, -252645136
  br i1 %i.lw, label %bb.s, label %.critedge.loopexit.split.loop.exit190.i

bb.s:                                             ; preds = %.lr.ph129.i
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next164.i, 13
  br i1 %exitcond.not.i34, label %.critedge.i, label %.lr.ph129.i, !llvm.loop !59

.critedge.loopexit.split.loop.exit190.i:          ; preds = %.lr.ph129.i
  %i.lx = trunc nuw nsw i64 %indvars.iv163.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.s, %.critedge.loopexit.split.loop.exit190.i, %.thread.i
  %.192.lcssa.i = phi i32 [ %i.ls, %.thread.i ], [ %i.lx, %.critedge.loopexit.split.loop.exit190.i ], [ 13, %bb.s ] ; 3 uses
  %i.ly = add nsw i32 %.192.lcssa.i, -1           ; 2 uses
  %.neg.i = shl nsw i32 -1, %i.ly
  %i.lz = add nsw i32 %.neg.i, %.187133.i         ; 3 uses
  %i.ma = zext nneg i32 %.192.lcssa.i to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ma ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !3  ; 4 uses
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 7 ; 2 uses
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !51
  %i.mh = add i8 %i.mg, 1
  store i8 %i.mh, ptr %i.mf, align 1, !tbaa !51
  %i.mi = zext nneg i32 %i.ly to i64
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.mi ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !3  ; 2 uses
  %i.ml = icmp eq i32 %i.mk, -252645136
  %spec.store.select110.i = select i1 %i.ml, i32 %i.mc, i32 %i.mk
  store i32 %spec.store.select110.i, ptr %i.mj, align 4
  %i.mm = icmp eq i32 %i.mc, 0
  br i1 %i.mm, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge.i
  %i.mn = add i32 %i.mc, -1                       ; 2 uses
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 7
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !51
  %i.ms = zext i8 %i.mr to i32
  %i.mt = sub nsw i32 %spec.store.select, %.192.lcssa.i
  %.not106.i = icmp eq i32 %i.mt, %i.ms
  %spec.store.select.i = select i1 %.not106.i, i32 %i.mn, i32 -252645136
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.critedge.i
  %storemerge.i33 = phi i32 [ %spec.store.select.i, %bb.t ], [ -252645136, %.critedge.i ]
  store i32 %storemerge.i33, ptr %i.mb, align 4
  %i.mu = icmp sgt i32 %i.lz, 0
  br i1 %i.mu, label %.lr.ph134.i, label %.preheader111.i, !llvm.loop !60

bb.v:                                             ; preds = %bb.x, %.lr.ph137.i
  %i.mv = phi i32 [ %i.nl, %.lr.ph137.i ], [ %i.nm, %bb.x ] ; 2 uses
  %.2136.i = phi i32 [ %.2.ph142.i, %.lr.ph137.i ], [ %i.ns, %bb.x ] ; 4 uses
  %i.mw = icmp eq i32 %i.mv, -252645136
  br i1 %i.mw, label %.preheader.i32, label %bb.x

.preheader.i32:                                   ; preds = %bb.v
  %sext184.i = shl i64 %.290.ph141.i, 32
  %8 = ashr exact i64 %sext184.i, 32
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.preheader.i32
  %indvars.iv167.i = phi i64 [ %indvars.iv.next168.i, %bb.w ], [ %8, %.preheader.i32 ] ; 4 uses
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv167.i
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 7
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !51
  %i.na = zext i8 %i.mz to i32
  %i.nb = icmp eq i32 %spec.store.select, %i.na
  %indvars.iv.next168.i = add nsw i64 %indvars.iv167.i, -1
  br i1 %i.nb, label %bb.w, label %.outer.i, !llvm.loop !61

.outer.i:                                         ; preds = %bb.w
  %i.nc = trunc nsw i64 %indvars.iv167.i to i32
  %i.nd = add nsw i32 %i.nc, 1                    ; 2 uses
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 7 ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !51
  %i.ni = add i8 %i.nh, -1
  store i8 %i.ni, ptr %i.ng, align 1, !tbaa !51
  %i.nj = add nuw nsw i32 %.2136.i, 1
  %i.nk = icmp slt i32 %.2136.i, -1
  br i1 %i.nk, label %.lr.ph137.i, label %.outer._crit_edge.i, !llvm.loop !62

.lr.ph137.i:                                      ; preds = %.outer.i, %.lr.ph137.lr.ph.i
  %i.nl = phi i32 [ %.promoted143.i, %.lr.ph137.lr.ph.i ], [ %i.nd, %.outer.i ]
  %.2.ph142.i = phi i32 [ %.187.lcssa.i, %.lr.ph137.lr.ph.i ], [ %i.nj, %.outer.i ]
  %.290.ph141.i = phi i64 [ %indvars.iv152.i, %.lr.ph137.lr.ph.i ], [ %indvars.iv167.i, %.outer.i ]
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.nm = add i32 %i.mv, 1                        ; 2 uses
  %i.nn = zext i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 7 ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !51
  %i.nr = add i8 %i.nq, -1
  store i8 %i.nr, ptr %i.np, align 1, !tbaa !51
  %i.ns = add nuw nsw i32 %.2136.i, 1
  %exitcond166.not.i = icmp eq i32 %.2136.i, -1
  br i1 %exitcond166.not.i, label %.outer._crit_edge.i, label %bb.v, !llvm.loop !62

.outer._crit_edge.i:                              ; preds = %.outer.i, %bb.x, %.preheader111.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %_ZN11duckdb_zstdL16HUF_setMaxHeightEPNS_9nodeElt_sEjj.exit

_ZN11duckdb_zstdL16HUF_setMaxHeightEPNS_9nodeElt_sEjj.exit: ; preds = %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit, %.outer._crit_edge.i
  %.0.i31 = phi i32 [ %spec.store.select, %.outer._crit_edge.i ], [ %i.ix, %_ZN11duckdb_zstdL13HUF_buildTreeEPNS_9nodeElt_sEj.exit ] ; 6 uses
  %i.nt = icmp samesign ugt i32 %.0.i31, 12
  br i1 %i.nt, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZN11duckdb_zstdL16HUF_setMaxHeightEPNS_9nodeElt_sEjj.exit
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.a, i8 0, i64 26, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.b, i8 0, i64 26, i1 false)
  %.not38.i = icmp slt i64 %indvars.iv.i24, 0
  br i1 %.not38.i, label %.preheader37.i, label %.lr.ph.preheader.i39

.lr.ph.preheader.i39:                             ; preds = %bb.y
  %i.nv = add nuw i64 %indvars.iv.i24, 1          ; 3 uses
  %wide.trip.count.i40 = and i64 %i.nv, 4294967295
  %i.nw = add nsw i64 %wide.trip.count.i40, -1
  %xtraiter121 = and i64 %i.nv, 3                 ; 3 uses
  %i.nx = icmp ult i64 %i.nw, 3
  br i1 %i.nx, label %.lr.ph.i41.epil.preheader, label %.lr.ph.preheader.i39.new

.lr.ph.preheader.i39.new:                         ; preds = %.lr.ph.preheader.i39
  %unroll_iter125 = and i64 %i.nv, 4294967292
  br label %.lr.ph.i41

.preheader37.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i41
  %lcmp.mod123.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod123.not, label %.preheader37.i, label %.lr.ph.i41.epil.preheader

.lr.ph.i41.epil.preheader:                        ; preds = %.preheader37.i.loopexit.unr-lcssa, %.lr.ph.preheader.i39
  %indvars.iv.i42.epil.init = phi i64 [ 0, %.lr.ph.preheader.i39 ], [ %indvars.iv.next.i43.3, %.preheader37.i.loopexit.unr-lcssa ]
  %lcmp.mod124 = icmp ne i64 %xtraiter121, 0
  tail call void @llvm.assume(i1 %lcmp.mod124)
  br label %.lr.ph.i41.epil

.lr.ph.i41.epil:                                  ; preds = %.lr.ph.i41.epil, %.lr.ph.i41.epil.preheader
  %indvars.iv.i42.epil = phi i64 [ %indvars.iv.i42.epil.init, %.lr.ph.i41.epil.preheader ], [ %indvars.iv.next.i43.epil, %.lr.ph.i41.epil ] ; 2 uses
  %epil.iter122 = phi i64 [ 0, %.lr.ph.i41.epil.preheader ], [ %epil.iter122.next, %.lr.ph.i41.epil ]
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i42.epil
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 7
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !51
  %i.ob = zext i8 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ob ; 2 uses
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !32
  %i.oe = add i16 %i.od, 1
  store i16 %i.oe, ptr %i.oc, align 2, !tbaa !32
  %indvars.iv.next.i43.epil = add nuw nsw i64 %indvars.iv.i42.epil, 1
  %epil.iter122.next = add i64 %epil.iter122, 1   ; 2 uses
  %epil.iter122.cmp.not = icmp eq i64 %epil.iter122.next, %xtraiter121
  br i1 %epil.iter122.cmp.not, label %.preheader37.i, label %.lr.ph.i41.epil, !llvm.loop !63

.preheader37.i:                                   ; preds = %.preheader37.i.loopexit.unr-lcssa, %.lr.ph.i41.epil, %bb.y
  %.not.i45 = icmp eq i32 %.0.i31, 0
  br i1 %.not.i45, label %.preheader36.i.preheader, label %.lr.ph42.preheader.i

.lr.ph42.preheader.i:                             ; preds = %.preheader37.i
  %i.of = zext nneg i32 %.0.i31 to i64            ; 4 uses
  %xtraiter127 = and i64 %i.of, 3                 ; 3 uses
  %i.og = icmp ult i32 %.0.i31, 4
  br i1 %i.og, label %.lr.ph42.i.epil.preheader, label %.lr.ph42.preheader.i.new

.lr.ph42.preheader.i.new:                         ; preds = %.lr.ph42.preheader.i
  %unroll_iter131 = and i64 %i.of, 12
  br label %.lr.ph42.i

.lr.ph.i41:                                       ; preds = %.lr.ph.i41, %.lr.ph.preheader.i39.new
  %indvars.iv.i42 = phi i64 [ 0, %.lr.ph.preheader.i39.new ], [ %indvars.iv.next.i43.3, %.lr.ph.i41 ] ; 5 uses
  %niter126 = phi i64 [ 0, %.lr.ph.preheader.i39.new ], [ %niter126.next.3, %.lr.ph.i41 ]
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i42
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 7
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !51
  %i.ok = zext i8 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ok ; 2 uses
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !32
  %i.on = add i16 %i.om, 1
  store i16 %i.on, ptr %i.ol, align 2, !tbaa !32
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i42
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 15
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !51
  %i.or = zext i8 %i.oq to i64
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.or ; 2 uses
  %i.ot = load i16, ptr %i.os, align 2, !tbaa !32
  %i.ou = add i16 %i.ot, 1
  store i16 %i.ou, ptr %i.os, align 2, !tbaa !32
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i42
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 23
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !51
  %i.oy = zext i8 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oy ; 2 uses
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !32
  %i.pb = add i16 %i.pa, 1
  store i16 %i.pb, ptr %i.oz, align 2, !tbaa !32
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i42
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 31
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !51
  %i.pf = zext i8 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.pf ; 2 uses
  %i.ph = load i16, ptr %i.pg, align 2, !tbaa !32
  %i.pi = add i16 %i.ph, 1
  store i16 %i.pi, ptr %i.pg, align 2, !tbaa !32
  %indvars.iv.next.i43.3 = add nuw nsw i64 %indvars.iv.i42, 4 ; 2 uses
  %niter126.next.3 = add i64 %niter126, 4         ; 2 uses
  %niter126.ncmp.3 = icmp eq i64 %niter126.next.3, %unroll_iter125
  br i1 %niter126.ncmp.3, label %.preheader37.i.loopexit.unr-lcssa, label %.lr.ph.i41, !llvm.loop !64

.lr.ph42.i:                                       ; preds = %.lr.ph42.i, %.lr.ph42.preheader.i.new
  %indvars.iv46.i = phi i64 [ %i.of, %.lr.ph42.preheader.i.new ], [ %indvars.iv.next47.i.3, %.lr.ph42.i ] ; 6 uses
  %.041.i = phi i16 [ 0, %.lr.ph42.preheader.i.new ], [ %i.qc, %.lr.ph42.i ] ; 2 uses
  %niter132 = phi i64 [ 0, %.lr.ph42.preheader.i.new ], [ %niter132.next.3, %.lr.ph42.i ]
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv46.i
  store i16 %.041.i, ptr %i.pj, align 2, !tbaa !32
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv46.i
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !32
  %i.pm = add i16 %i.pl, %.041.i
  %i.pn = lshr i16 %i.pm, 1                       ; 2 uses
  %indvars.iv.next47.i = add nsw i64 %indvars.iv46.i, -1 ; 2 uses
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next47.i
  store i16 %i.pn, ptr %i.po, align 2, !tbaa !32
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next47.i
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !32
  %i.pr = add i16 %i.pq, %i.pn
  %i.ps = lshr i16 %i.pr, 1                       ; 2 uses
  %indvars.iv.next47.i.1 = add nsw i64 %indvars.iv46.i, -2 ; 2 uses
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next47.i.1
  store i16 %i.ps, ptr %i.pt, align 2, !tbaa !32
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next47.i.1
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !32
  %i.pw = add i16 %i.pv, %i.ps
  %i.px = lshr i16 %i.pw, 1                       ; 2 uses
  %indvars.iv.next47.i.2 = add nsw i64 %indvars.iv46.i, -3 ; 2 uses
  %i.py = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next47.i.2
  store i16 %i.px, ptr %i.py, align 2, !tbaa !32
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next47.i.2
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !32
  %i.qb = add i16 %i.qa, %i.px
  %i.qc = lshr i16 %i.qb, 1                       ; 2 uses
  %indvars.iv.next47.i.3 = add nsw i64 %indvars.iv46.i, -4 ; 2 uses
  %niter132.next.3 = add i64 %niter132, 4         ; 2 uses
  %niter132.ncmp.3.not = icmp eq i64 %niter132.next.3, %unroll_iter131
  br i1 %niter132.ncmp.3.not, label %.preheader36.i.preheader.loopexit.unr-lcssa, label %.lr.ph42.i, !llvm.loop !65

.preheader36.i.preheader.loopexit.unr-lcssa:      ; preds = %.lr.ph42.i
  %lcmp.mod129.not = icmp eq i64 %xtraiter127, 0
  br i1 %lcmp.mod129.not, label %.preheader36.i.preheader, label %.lr.ph42.i.epil.preheader

.lr.ph42.i.epil.preheader:                        ; preds = %.preheader36.i.preheader.loopexit.unr-lcssa, %.lr.ph42.preheader.i
  %indvars.iv46.i.epil.init = phi i64 [ %i.of, %.lr.ph42.preheader.i ], [ %indvars.iv.next47.i.3, %.preheader36.i.preheader.loopexit.unr-lcssa ]
  %.041.i.epil.init = phi i16 [ 0, %.lr.ph42.preheader.i ], [ %i.qc, %.preheader36.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod130 = icmp ne i64 %xtraiter127, 0
  tail call void @llvm.assume(i1 %lcmp.mod130)
  br label %.lr.ph42.i.epil

.lr.ph42.i.epil:                                  ; preds = %.lr.ph42.i.epil, %.lr.ph42.i.epil.preheader
  %indvars.iv46.i.epil = phi i64 [ %indvars.iv46.i.epil.init, %.lr.ph42.i.epil.preheader ], [ %indvars.iv.next47.i.epil, %.lr.ph42.i.epil ] ; 3 uses
  %.041.i.epil = phi i16 [ %.041.i.epil.init, %.lr.ph42.i.epil.preheader ], [ %i.qh, %.lr.ph42.i.epil ] ; 2 uses
  %epil.iter128 = phi i64 [ 0, %.lr.ph42.i.epil.preheader ], [ %epil.iter128.next, %.lr.ph42.i.epil ]
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL21HUF_compress_internalEPvmPKvmjjNS_15HUF_nbStreams_eES0_mPmPNS_10HUF_repeatEi:bb.a
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %wide.load245 = load <2 x i32>, ptr %i.bj, align 4, !tbaa !3
  %wide.load246 = load <2 x i32>, ptr %i.bk, align 4, !tbaa !3
  %i.bl = zext <2 x i32> %wide.load245 to <2 x i64>
  %i.bm = zext <2 x i32> %wide.load246 to <2 x i64>
  %i.bn = mul nuw nsw <2 x i64> %i.bh, %i.bl
  %i.bo = mul nuw nsw <2 x i64> %i.bi, %i.bm
  %i.bp = add <2 x i64> %i.bn, %vec.phi           ; 2 uses
  %i.bq = add <2 x i64> %i.bo, %vec.phi243        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bq, %i.bp
  %i.bs = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.lr.ph.preheader.i185, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.0911.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.0911.i = phi i64 [ %i.ca, %.lr.ph.i ], [ %.0911.i.ph, %.lr.ph.i.preheader ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !15
  %i.bv = and i64 %i.bu, 255
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = zext i32 %i.bx to i64
  %i.bz = mul nuw nsw i64 %i.bv, %i.by
  %i.ca = add i64 %i.bz, %.0911.i                 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.preheader.i185, label %.lr.ph.i, !llvm.loop !86

.lr.ph.preheader.i185:                            ; preds = %.lr.ph.i, %middle.block
  %.lcssa242 = phi i64 [ %i.bs, %middle.block ], [ %i.ca, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 1032 ; 2 uses
  %min.iters.check248 = icmp ult i32 %i.bc, 3
  br i1 %min.iters.check248, label %.lr.ph.i187.preheader, label %vector.ph249

vector.ph249:                                     ; preds = %.lr.ph.preheader.i185
  %n.vec251 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body252

vector.body252:                                   ; preds = %vector.body252, %vector.ph249
  %index253 = phi i64 [ 0, %vector.ph249 ], [ %index.next260, %vector.body252 ] ; 3 uses
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %vector.ph249 ], [ %i.cm, %vector.body252 ]
  %vec.phi255 = phi <2 x i64> [ zeroinitializer, %vector.ph249 ], [ %i.cn, %vector.body252 ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %index253 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load256 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !15
  %wide.load257 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !15
  %i.ce = and <2 x i64> %wide.load256, splat (i64 255)
  %i.cf = and <2 x i64> %wide.load257, splat (i64 255)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index253 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %wide.load258 = load <2 x i32>, ptr %i.cg, align 4, !tbaa !3
  %wide.load259 = load <2 x i32>, ptr %i.ch, align 4, !tbaa !3
  %i.ci = zext <2 x i32> %wide.load258 to <2 x i64>
  %i.cj = zext <2 x i32> %wide.load259 to <2 x i64>
  %i.ck = mul nuw nsw <2 x i64> %i.ce, %i.ci
  %i.cl = mul nuw nsw <2 x i64> %i.cf, %i.cj
  %i.cm = add <2 x i64> %i.ck, %vec.phi254        ; 2 uses
  %i.cn = add <2 x i64> %i.cl, %vec.phi255        ; 2 uses
  %index.next260 = add nuw i64 %index253, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next260, %n.vec251
  br i1 %i.co, label %middle.block261, label %vector.body252, !llvm.loop !87

middle.block261:                                  ; preds = %vector.body252
  %bin.rdx262 = add <2 x i64> %i.cn, %i.cm
  %i.cp = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx262) ; 2 uses
  %cmp.n263 = icmp eq i64 %n.vec251, %wide.trip.count.i
  br i1 %cmp.n263, label %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194, label %.lr.ph.i187.preheader

.lr.ph.i187.preheader:                            ; preds = %.lr.ph.preheader.i185, %middle.block261
  %indvars.iv.i188.ph = phi i64 [ 0, %.lr.ph.preheader.i185 ], [ %n.vec251, %middle.block261 ]
  %.0911.i189.ph = phi i64 [ 0, %.lr.ph.preheader.i185 ], [ %i.cp, %middle.block261 ]
  br label %.lr.ph.i187

.lr.ph.i187:                                      ; preds = %.lr.ph.i187.preheader, %.lr.ph.i187
  %indvars.iv.i188 = phi i64 [ %indvars.iv.next.i190, %.lr.ph.i187 ], [ %indvars.iv.i188.ph, %.lr.ph.i187.preheader ] ; 3 uses
  %.0911.i189 = phi i64 [ %i.cx, %.lr.ph.i187 ], [ %.0911.i189.ph, %.lr.ph.i187.preheader ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i188
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !15
  %i.cs = and i64 %i.cr, 255
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i188
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i32 %i.cu to i64
  %i.cw = mul nuw nsw i64 %i.cs, %i.cv
  %i.cx = add i64 %i.cw, %.0911.i189              ; 2 uses
  %indvars.iv.next.i190 = add nuw nsw i64 %indvars.iv.i188, 1 ; 2 uses
  %exitcond.not.i191 = icmp eq i64 %indvars.iv.next.i190, %wide.trip.count.i
  br i1 %exitcond.not.i191, label %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194, label %.lr.ph.i187, !llvm.loop !88

_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194: ; preds = %.lr.ph.i187, %middle.block261
  %.lcssa = phi i64 [ %i.cp, %middle.block261 ], [ %i.cx, %.lr.ph.i187 ]
  %i.cy = lshr i64 %.lcssa242, 3
  %i.cz = lshr i64 %.lcssa, 3
  %i.da = add nuw nsw i64 %i.cz, %i.az
  %.not176 = icmp samesign ugt i64 %i.cy, %i.da
  %i.db = add nuw nsw i64 %i.az, 12
  %.not177 = icmp samesign ult i64 %i.db, %3
  %or.cond182 = and i1 %.not177, %.not176
  br i1 %or.cond182, label %.thread206.thread, label %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194.thread

_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194.thread: ; preds = %bb.y, %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194
  %i.dc = call fastcc noundef i64 @_ZN11duckdb_zstdL27HUF_compressCTable_internalEPhS0_S0_PKvmNS_15HUF_nbStreams_eEPKmi(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.h, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef %9, i32 noundef %11)
  br label %.thread

.thread206:                                       ; preds = %bb.x
  %.pre = add nuw nsw i64 %i.az, 12
  %i.dd = icmp samesign ult i64 %.pre, %3
  br i1 %i.dd, label %.thread206.thread, label %.thread

.thread209:                                       ; preds = %bb.w
  %i.de = add nuw nsw i64 %i.az, 12
  %.not178210 = icmp samesign ult i64 %i.de, %3
  br i1 %.not178210, label %.thread211, label %.thread

.thread206.thread:                                ; preds = %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194, %.thread206
  store i32 0, ptr %10, align 4, !tbaa !83
  br label %.thread211

.thread211:                                       ; preds = %.thread209, %.thread206.thread
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  %.not179 = icmp eq ptr %9, null
  br i1 %.not179, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.thread211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %9, ptr noundef nonnull align 8 dereferenceable(2056) %i.as, i64 2056, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread211
  %i.dg = call fastcc noundef i64 @_ZN11duckdb_zstdL27HUF_compressCTable_internalEPhS0_S0_PKvmNS_15HUF_nbStreams_eEPKmi(ptr noundef %0, ptr noundef %i.df, ptr noundef nonnull %i.h, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef nonnull %i.as, i32 noundef %11)
  br label %.thread

.thread:                                          ; preds = %.thread209, %.thread206, %bb.v, %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194.thread, %bb.o, %bb.m, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.l, %.thread198, %bb.p, %bb.aa, %.thread234, %bb.j
  %.9 = phi i64 [ -66, %bb.a ], [ -46, %bb.e ], [ -72, %bb.c ], [ -44, %bb.d ], [ %i.s, %bb.j ], [ %i.aq, %.thread234 ], [ %i.dg, %bb.aa ], [ %i.af, %bb.m ], [ %i.av, %.thread198 ], [ 0, %bb.p ], [ 0, %bb.l ], [ 0, %bb.b ], [ 1, %bb.o ], [ 0, %.thread209 ], [ 0, %.thread206 ], [ %i.az, %bb.v ], [ %i.dc, %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194.thread ]
  ret i64 %.9
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd21HUF_compress4X_repeatEPvmPKvmjjS0_mPmPNS_10HUF_repeatEi(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr nofree noundef captures(address_is_null) %9, i32 noundef %10) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL21HUF_compress_internalEPvmPKvmjjNS_15HUF_nbStreams_eES0_mPmPNS_10HUF_repeatEi(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10)
  ret i64 %i.a
}

declare noundef i32 @_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN11duckdb_zstd19FSE_optimalTableLogEjmj(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i64 @_ZN11duckdb_zstd18FSE_normalizeCountEPsjPKjmjj(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i64 @_ZN11duckdb_zstd15FSE_writeNCountEPvmPKsjj(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i64 @_ZN11duckdb_zstd20FSE_buildCTable_wkspEPjPKsjjPvm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef i64 @_ZN11duckdb_zstd24FSE_compress_usingCTableEPvmPKvmPKj(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii(ptr noundef %0, i32 noundef range(i32 -2147483646, -2147483648) %1, i32 noundef range(i32 -2147483648, 2147483647) %2) unnamed_addr #8 {
bb.a:
  %i.a = sub nsw i32 %2, %1                       ; 2 uses
  %i.b = icmp slt i32 %i.a, 8
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp slt i32 %1, %2
  br i1 %i.c, label %.lr.ph.preheader.i, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.d ; 77 uses
  %.not.i29 = icmp slt i32 %i.a, 1
  br i1 %.not.i29, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.f = add nsw i32 %2, 1
  %i.g = sub i32 %i.f, %1                         ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = load <2 x i32>, ptr %i.h, align 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = load i32, ptr %i.e, align 4, !tbaa !41
  %i.k = icmp ult i32 %i.j, %.sroa.0.0.copyload.i
  br i1 %i.k, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i64, ptr %i.e, align 4
  store i64 %i.m, ptr %i.l, align 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.preheader
  %.0.in.i.lcssa = phi i64 [ 8, %.lr.ph.preheader ], [ 0, %bb.c ]
  %3 = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa
  store <2 x i32> %i.i, ptr %3, align 4
  %exitcond.not = icmp eq i32 %i.g, 2
  br i1 %exitcond.not, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.critedge.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.o = load <2 x i32>, ptr %i.n, align 4
  %.sroa.0.0.copyload.i.1 = load i32, ptr %i.n, align 4, !tbaa !3 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !41
  %i.r = icmp ult i32 %i.q, %.sroa.0.0.copyload.i.1
  br i1 %i.r, label %bb.d, label %.critedge.i.1

bb.d:                                             ; preds = %.lr.ph.1
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load i64, ptr %i.p, align 4
  store i64 %i.t, ptr %i.s, align 4
  %i.u = load i32, ptr %i.e, align 4, !tbaa !41
  %i.v = icmp ult i32 %i.u, %.sroa.0.0.copyload.i.1
  br i1 %i.v, label %bb.e, label %.critedge.i.1

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = load i64, ptr %i.e, align 4
  store i64 %i.x, ptr %i.w, align 4
  br label %.critedge.i.1

.critedge.i.1:                                    ; preds = %bb.e, %bb.d, %.lr.ph.1
  %.0.in.i.lcssa.1 = phi i64 [ 16, %.lr.ph.1 ], [ 0, %bb.e ], [ 8, %bb.d ]
  %4 = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa.1
  store <2 x i32> %i.o, ptr %4, align 4
  %exitcond.not.1 = icmp eq i32 %i.g, 3
  br i1 %exitcond.not.1, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.critedge.i.1
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.z = load <2 x i32>, ptr %i.y, align 4
  %.sroa.0.0.copyload.i.2 = load i32, ptr %i.y, align 4, !tbaa !3 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !41
  %i.ac = icmp ult i32 %i.ab, %.sroa.0.0.copyload.i.2
  br i1 %i.ac, label %bb.f, label %.critedge.i.2

bb.f:                                             ; preds = %.lr.ph.2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ae = load i64, ptr %i.aa, align 4
  store i64 %i.ae, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !41
  %i.ah = icmp ult i32 %i.ag, %.sroa.0.0.copyload.i.2
  br i1 %i.ah, label %bb.g, label %.critedge.i.2

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aj = load i64, ptr %i.af, align 4
  store i64 %i.aj, ptr %i.ai, align 4
  %i.ak = load i32, ptr %i.e, align 4, !tbaa !41
  %i.al = icmp ult i32 %i.ak, %.sroa.0.0.copyload.i.2
  br i1 %i.al, label %bb.h, label %.critedge.i.2

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.an = load i64, ptr %i.e, align 4
  store i64 %i.an, ptr %i.am, align 4
  br label %.critedge.i.2

.critedge.i.2:                                    ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph.2
  %.0.in.i.lcssa.2 = phi i64 [ 24, %.lr.ph.2 ], [ 8, %bb.g ], [ 16, %bb.f ], [ 0, %bb.h ]
  %5 = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa.2
  store <2 x i32> %i.z, ptr %5, align 4
  %exitcond.not.2 = icmp eq i32 %i.g, 4
  br i1 %exitcond.not.2, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.critedge.i.2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.ap = load <2 x i32>, ptr %i.ao, align 4
  %.sroa.0.0.copyload.i.3 = load i32, ptr %i.ao, align 4, !tbaa !3 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !41
  %i.as = icmp ult i32 %i.ar, %.sroa.0.0.copyload.i.3
  br i1 %i.as, label %bb.i, label %.critedge.i.3

bb.i:                                             ; preds = %.lr.ph.3
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.au = load i64, ptr %i.aq, align 4
  store i64 %i.au, ptr %i.at, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !41
  %i.ax = icmp ult i32 %i.aw, %.sroa.0.0.copyload.i.3
  br i1 %i.ax, label %bb.j, label %.critedge.i.3

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.az = load i64, ptr %i.av, align 4
  store i64 %i.az, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !41
  %i.bc = icmp ult i32 %i.bb, %.sroa.0.0.copyload.i.3
  br i1 %i.bc, label %bb.k, label %.critedge.i.3

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.be = load i64, ptr %i.ba, align 4
  store i64 %i.be, ptr %i.bd, align 4
  %i.bf = load i32, ptr %i.e, align 4, !tbaa !41
  %i.bg = icmp ult i32 %i.bf, %.sroa.0.0.copyload.i.3
  br i1 %i.bg, label %bb.l, label %.critedge.i.3

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bi = load i64, ptr %i.e, align 4
  store i64 %i.bi, ptr %i.bh, align 4
  br label %.critedge.i.3

.critedge.i.3:                                    ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %.lr.ph.3
  %.0.in.i.lcssa.3 = phi i64 [ 32, %.lr.ph.3 ], [ 0, %bb.l ], [ 24, %bb.i ], [ 8, %bb.k ], [ 16, %bb.j ]
  %6 = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa.3
  store <2 x i32> %i.ap, ptr %6, align 4
  %exitcond.not.3 = icmp eq i32 %i.g, 5
  br i1 %exitcond.not.3, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.critedge.i.3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.bk = load <2 x i32>, ptr %i.bj, align 4
  %.sroa.0.0.copyload.i.4 = load i32, ptr %i.bj, align 4, !tbaa !3 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !41
  %i.bn = icmp ult i32 %i.bm, %.sroa.0.0.copyload.i.4
  br i1 %i.bn, label %bb.m, label %.critedge.i.4

bb.m:                                             ; preds = %.lr.ph.4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bp = load i64, ptr %i.bl, align 4
  store i64 %i.bp, ptr %i.bo, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !41
  %i.bs = icmp ult i32 %i.br, %.sroa.0.0.copyload.i.4
  br i1 %i.bs, label %bb.n, label %.critedge.i.4

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bu = load i64, ptr %i.bq, align 4
  store i64 %i.bu, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !41
  %i.bx = icmp ult i32 %i.bw, %.sroa.0.0.copyload.i.4
  br i1 %i.bx, label %bb.o, label %.critedge.i.4

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bz = load i64, ptr %i.bv, align 4
  store i64 %i.bz, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !41
  %i.cc = icmp ult i32 %i.cb, %.sroa.0.0.copyload.i.4
  br i1 %i.cc, label %bb.p, label %.critedge.i.4

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ce = load i64, ptr %i.ca, align 4
  store i64 %i.ce, ptr %i.cd, align 4
  %i.cf = load i32, ptr %i.e, align 4, !tbaa !41
  %i.cg = icmp ult i32 %i.cf, %.sroa.0.0.copyload.i.4
  br i1 %i.cg, label %bb.q, label %.critedge.i.4

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ci = load i64, ptr %i.e, align 4
  store i64 %i.ci, ptr %i.ch, align 4
  br label %.critedge.i.4

.critedge.i.4:                                    ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %.lr.ph.4
  %.0.in.i.lcssa.4 = phi i64 [ 40, %.lr.ph.4 ], [ 16, %bb.o ], [ 32, %bb.m ], [ 0, %bb.q ], [ 24, %bb.n ], [ 8, %bb.p ]
  %7 = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa.4
  store <2 x i32> %i.bk, ptr %7, align 4
  %exitcond.not.4 = icmp eq i32 %i.g, 6
  br i1 %exitcond.not.4, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.critedge.i.4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.ck = load <2 x i32>, ptr %i.cj, align 4
  %.sroa.0.0.copyload.i.5 = load i32, ptr %i.cj, align 4, !tbaa !3 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !41
  %i.cn = icmp ult i32 %i.cm, %.sroa.0.0.copyload.i.5
  br i1 %i.cn, label %bb.r, label %.critedge.i.5

bb.r:                                             ; preds = %.lr.ph.5
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cp = load i64, ptr %i.cl, align 4
  store i64 %i.cp, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !41
  %i.cs = icmp ult i32 %i.cr, %.sroa.0.0.copyload.i.5
  br i1 %i.cs, label %bb.s, label %.critedge.i.5

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cu = load i64, ptr %i.cq, align 4
  store i64 %i.cu, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !41
  %i.cx = icmp ult i32 %i.cw, %.sroa.0.0.copyload.i.5
  br i1 %i.cx, label %bb.t, label %.critedge.i.5

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cz = load i64, ptr %i.cv, align 4
  store i64 %i.cz, ptr %i.cy, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !41
  %i.dc = icmp ult i32 %i.db, %.sroa.0.0.copyload.i.5
  br i1 %i.dc, label %bb.u, label %.critedge.i.5

bb.u:                                             ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.de = load i64, ptr %i.da, align 4
  store i64 %i.de, ptr %i.dd, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !41
  %i.dh = icmp ult i32 %i.dg, %.sroa.0.0.copyload.i.5
  br i1 %i.dh, label %bb.v, label %.critedge.i.5

bb.v:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dj = load i64, ptr %i.df, align 4
  store i64 %i.dj, ptr %i.di, align 4
  %i.dk = load i32, ptr %i.e, align 4, !tbaa !41
  %i.dl = icmp ult i32 %i.dk, %.sroa.0.0.copyload.i.5
  br i1 %i.dl, label %bb.w, label %.critedge.i.5

bb.w:                                             ; preds = %bb.v
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dn = load i64, ptr %i.e, align 4
  store i64 %i.dn, ptr %i.dm, align 4
  br label %.critedge.i.5

.critedge.i.5:                                    ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %.lr.ph.5
  %.0.in.i.lcssa.5 = phi i64 [ 48, %.lr.ph.5 ], [ 8, %bb.v ], [ 40, %bb.r ], [ 16, %bb.u ], [ 32, %bb.s ], [ 0, %bb.w ], [ 24, %bb.t ]
  %8 = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa.5
  store <2 x i32> %i.ck, ptr %8, align 4
  %exitcond.not.5 = icmp eq i32 %i.g, 7
  br i1 %exitcond.not.5, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.critedge.i.5
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.dp = load <2 x i32>, ptr %i.do, align 4
  %.sroa.0.0.copyload.i.6 = load i32, ptr %i.do, align 4, !tbaa !3 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !41
  %i.ds = icmp ult i32 %i.dr, %.sroa.0.0.copyload.i.6
  br i1 %i.ds, label %bb.x, label %.critedge.i.6

bb.x:                                             ; preds = %.lr.ph.6
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.du = load i64, ptr %i.dq, align 4
  store i64 %i.du, ptr %i.dt, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !41
  %i.dx = icmp ult i32 %i.dw, %.sroa.0.0.copyload.i.6
  br i1 %i.dx, label %bb.y, label %.critedge.i.6

bb.y:                                             ; preds = %bb.x
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.dz = load i64, ptr %i.dv, align 4
  store i64 %i.dz, ptr %i.dy, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !41
  %i.ec = icmp ult i32 %i.eb, %.sroa.0.0.copyload.i.6
  br i1 %i.ec, label %bb.z, label %.critedge.i.6

bb.z:                                             ; preds = %bb.y
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ee = load i64, ptr %i.ea, align 4
  store i64 %i.ee, ptr %i.ed, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !41
  %i.eh = icmp ult i32 %i.eg, %.sroa.0.0.copyload.i.6
  br i1 %i.eh, label %bb.aa, label %.critedge.i.6

bb.aa:                                            ; preds = %bb.z
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ej = load i64, ptr %i.ef, align 4
  store i64 %i.ej, ptr %i.ei, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !41
  %i.em = icmp ult i32 %i.el, %.sroa.0.0.copyload.i.6
  br i1 %i.em, label %bb.ab, label %.critedge.i.6

bb.ab:                                            ; preds = %bb.aa
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.eo = load i64, ptr %i.ek, align 4
  store i64 %i.eo, ptr %i.en, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !41
  %i.er = icmp ult i32 %i.eq, %.sroa.0.0.copyload.i.6
  br i1 %i.er, label %bb.ac, label %.critedge.i.6

bb.ac:                                            ; preds = %bb.ab
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.et = load i64, ptr %i.ep, align 4
  store i64 %i.et, ptr %i.es, align 4
  %i.eu = load i32, ptr %i.e, align 4, !tbaa !41
  %i.ev = icmp ult i32 %i.eu, %.sroa.0.0.copyload.i.6
  br i1 %i.ev, label %bb.ad, label %.critedge.i.6

bb.ad:                                            ; preds = %bb.ac
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ex = load i64, ptr %i.e, align 4
  store i64 %i.ex, ptr %i.ew, align 4
  br label %.critedge.i.6

.critedge.i.6:                                    ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %.lr.ph.6
  %.0.in.i.lcssa.6 = phi i64 [ 56, %.lr.ph.6 ], [ 0, %bb.ad ], [ 48, %bb.x ], [ 8, %bb.ac ], [ 40, %bb.y ], [ 24, %bb.aa ], [ 32, %bb.z ], [ 16, %bb.ab ]
  %9 = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa.6
  store <2 x i32> %i.dp, ptr %9, align 4
  br label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit

.lr.ph.preheader.i:                               ; preds = %.preheader, %bb.ak
  %.025 = phi i32 [ %.1, %bb.ak ], [ %1, %.preheader ] ; 7 uses
  %.02124 = phi i32 [ %.122, %bb.ak ], [ %2, %.preheader ] ; 4 uses
  %i.ey = sext i32 %.02124 to i64                 ; 4 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ey ; 3 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !41 ; 3 uses
  %i.fb = add nsw i32 %.025, -1                   ; 2 uses
  %i.fc = sext i32 %.025 to i64                   ; 5 uses
  %i.fd = sub nsw i64 %i.ey, %i.fc
  %xtraiter = and i64 %i.fd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.fe = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fc ; 3 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !41
  %i.fg = icmp ugt i32 %i.ff, %i.fa
  br i1 %i.fg, label %bb.ae, label %.lr.ph.i.prol.loopexit.unr-lcssa

bb.ae:                                            ; preds = %.lr.ph.i.prol
  %i.fh = sext i32 %.025 to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fh ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 4
  %i.fk = load i64, ptr %i.fe, align 4
  store i64 %i.fk, ptr %i.fi, align 4
  store i64 %i.fj, ptr %i.fe, align 4
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.ae, %.lr.ph.i.prol
  %.1.i.prol = phi i32 [ %.025, %bb.ae ], [ %i.fb, %.lr.ph.i.prol ] ; 2 uses
  %indvars.iv.next.i.prol = add nsw i64 %i.fc, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.1.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %indvars.iv.i.unr = phi i64 [ %i.fc, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.01920.i.unr = phi i32 [ %i.fb, %.lr.ph.preheader.i ], [ %.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.fl = add nsw i64 %i.ey, -1
  %i.fm = icmp eq i64 %i.fl, %i.fc
  br i1 %i.fm, label %_ZN11duckdb_zstdL22HUF_quickSortPartitionEPNS_9nodeElt_sEii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.ah
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.ah ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.01920.i = phi i32 [ %.1.i.1, %bb.ah ], [ %.01920.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.i ; 3 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !41
  %i.fp = icmp ugt i32 %i.fo, %i.fa
  br i1 %i.fp, label %bb.af, label %.lr.ph.i.1

bb.af:                                            ; preds = %.lr.ph.i
  %i.fq = add nsw i32 %.01920.i, 1                ; 2 uses
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fr ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 4
  %i.fu = load i64, ptr %i.fn, align 4
  store i64 %i.fu, ptr %i.fs, align 4
  store i64 %i.ft, ptr %i.fn, align 4
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.af, %.lr.ph.i
  %.1.i = phi i32 [ %i.fq, %bb.af ], [ %.01920.i, %.lr.ph.i ] ; 2 uses
  %i.fv = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.fw = getelementptr i8, ptr %i.fv, i64 8      ; 3 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !41
  %i.fy = icmp ugt i32 %i.fx, %i.fa
  br i1 %i.fy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i.1
  %i.fz = add nsw i32 %.1.i, 1                    ; 2 uses
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ga ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 4
  %i.gd = load i64, ptr %i.fw, align 4
  store i64 %i.gd, ptr %i.gb, align 4
  store i64 %i.gc, ptr %i.fw, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i.1
  %.1.i.1 = phi i32 [ %i.fz, %bb.ag ], [ %.1.i, %.lr.ph.i.1 ] ; 2 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.ey
  br i1 %exitcond.not.i.1, label %_ZN11duckdb_zstdL22HUF_quickSortPartitionEPNS_9nodeElt_sEii.exit, label %.lr.ph.i, !llvm.loop !89

_ZN11duckdb_zstdL22HUF_quickSortPartitionEPNS_9nodeElt_sEii.exit: ; preds = %bb.ah, %.lr.ph.i.prol.loopexit
  %.1.i.lcssa = phi i32 [ %.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.1.i.1, %bb.ah ] ; 5 uses
  %i.ge = add nsw i32 %.1.i.lcssa, 1              ; 3 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gf ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 4
  %i.gi = load i64, ptr %i.ez, align 4
  store i64 %i.gi, ptr %i.gg, align 4
  store i64 %i.gh, ptr %i.ez, align 4
  %i.gj = sub nsw i32 %i.ge, %.025
  %i.gk = sub nsw i32 %.02124, %i.ge
  %i.gl = icmp slt i32 %i.gj, %i.gk
  br i1 %i.gl, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN11duckdb_zstdL22HUF_quickSortPartitionEPNS_9nodeElt_sEii.exit
  tail call fastcc void @_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii(ptr noundef nonnull %0, i32 noundef %.025, i32 noundef %.1.i.lcssa)
  %i.gm = add nsw i32 %.1.i.lcssa, 2
  br label %bb.ak

bb.aj:                                            ; preds = %_ZN11duckdb_zstdL22HUF_quickSortPartitionEPNS_9nodeElt_sEii.exit
  %i.gn = add nsw i32 %.1.i.lcssa, 2
  tail call fastcc void @_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii(ptr noundef nonnull %0, i32 noundef %i.gn, i32 noundef %.02124)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.122 = phi i32 [ %.02124, %bb.ai ], [ %.1.i.lcssa, %bb.aj ] ; 2 uses
  %.1 = phi i32 [ %i.gm, %bb.ai ], [ %.025, %bb.aj ] ; 2 uses
  %i.go = icmp slt i32 %.1, %.122
  br i1 %i.go, label %.lr.ph.preheader.i, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, !llvm.loop !90

_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit: ; preds = %bb.ak, %.critedge.i, %.critedge.i.1, %.critedge.i.2, %.critedge.i.3, %.critedge.i.4, %.critedge.i.5, %.critedge.i.6, %.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #9 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %4, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.a = and i32 %.sroa.0.0.extract.trunc.i, 255  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 153 uses
  %i.c = icmp ult i64 %1, 8
  br i1 %i.c, label %_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bodyEPvmPKvmPKm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 11 uses
  %.not = icmp eq i64 %1, 8
  br i1 %.not, label %_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bodyEPvmPKvmPKm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %.sroa.0.0.copyload.i, 255
  %i.g = mul i64 %i.f, %3
  %i.h = lshr i64 %i.g, 3
  %i.i = add nuw nsw i64 %i.h, 8
  %i.j = icmp ult i64 %1, %i.i
  %i.k = icmp samesign ugt i32 %i.a, 11
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.k
  %i.l = trunc i64 %3 to i32                      ; 14 uses
  br i1 %or.cond.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = srem i32 %i.l, 4                         ; 6 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.preheader582.preheader, label %_ZN11duckdb_zstdL13HUF_flushBitsEPNS_13HUF_CStream_tEi.exit

.preheader582.preheader:                          ; preds = %bb.d
  %sext950 = shl i64 %3, 32
  %i.o = ashr exact i64 %sext950, 32              ; 2 uses
  %xtraiter1112 = and i32 %i.m, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.preheader582.epil.preheader, label %.preheader582.preheader.new

.preheader582.preheader.new:                      ; preds = %.preheader582.preheader
  %unroll_iter1117 = and i32 %i.m, 2147483646
  br label %.preheader582

.preheader582:                                    ; preds = %.preheader582, %.preheader582.preheader.new
  %indvars.iv922 = phi i64 [ %i.o, %.preheader582.preheader.new ], [ %indvars.iv.next923.1, %.preheader582 ] ; 2 uses
  %.sroa.0.6727 = phi i64 [ 0, %.preheader582.preheader.new ], [ %i.aj, %.preheader582 ]
  %.sroa.264.6726 = phi i64 [ 0, %.preheader582.preheader.new ], [ %i.ak, %.preheader582 ]
  %niter1118 = phi i32 [ 0, %.preheader582.preheader.new ], [ %niter1118.next.1, %.preheader582 ]
  %i.q = getelementptr i8, ptr %2, i64 %indvars.iv922
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !7
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !15   ; 3 uses
  %i.w = and i64 %i.v, 255
  %i.x = lshr i64 %.sroa.0.6727, %i.w
  %i.y = and i64 %i.v, -256
  %i.z = or i64 %i.x, %i.y
  %i.aa = add i64 %i.v, %.sroa.264.6726
  %indvars.iv.next923.1 = add nsw i64 %indvars.iv922, -2 ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next923.1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !7
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !15 ; 3 uses
  %i.ag = and i64 %i.af, 255
  %i.ah = lshr i64 %i.z, %i.ag
  %i.ai = and i64 %i.af, -256
  %i.aj = or i64 %i.ah, %i.ai                     ; 3 uses
  %i.ak = add i64 %i.af, %i.aa                    ; 3 uses
  %niter1118.next.1 = add i32 %niter1118, 2       ; 2 uses
  %niter1118.ncmp.1.not = icmp eq i32 %niter1118.next.1, %unroll_iter1117
  br i1 %niter1118.ncmp.1.not, label %.unr-lcssa1111, label %.preheader582, !llvm.loop !74

.unr-lcssa1111:                                   ; preds = %.preheader582
  %lcmp.mod1113.not = icmp eq i32 %xtraiter1112, 0
  br i1 %lcmp.mod1113.not, label %bb.e, label %.preheader582.epil.preheader

.preheader582.epil.preheader:                     ; preds = %.unr-lcssa1111, %.preheader582.preheader
  %indvars.iv922.epil.init = phi i64 [ %i.o, %.preheader582.preheader ], [ %indvars.iv.next923.1, %.unr-lcssa1111 ]
end_hunk_1

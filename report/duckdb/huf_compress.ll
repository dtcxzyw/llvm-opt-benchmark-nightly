Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/huf_compress?download=true
inline.NumInlined: 440
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN11duckdb_zstd20HUF_buildCTable_wkspEPmPKjjjPvm:bb.a

.preheader.i44:                                   ; preds = %.preheader.i44.preheader, %_ZN11duckdb_zstdL12HUF_setValueEPmm.exit.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %_ZN11duckdb_zstdL12HUF_setValueEPmm.exit.i ], [ 0, %.preheader.i44.preheader ] ; 2 uses
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %indvars.iv53.i ; 2 uses
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !14 ; 2 uses
  %i.rz = and i64 %i.ry, 255                      ; 3 uses
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.rz ; 2 uses
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !17 ; 2 uses
  %i.sc = add i16 %i.sb, 1
  store i16 %i.sc, ptr %i.sa, align 2, !tbaa !17
  %.not.i.i = icmp eq i64 %i.rz, 0
  br i1 %.not.i.i, label %_ZN11duckdb_zstdL12HUF_setValueEPmm.exit.i, label %bb.y

bb.y:                                             ; preds = %.preheader.i44
  %i.sd = zext i16 %i.sb to i64
  %i.se = sub nuw nsw i64 64, %i.rz
  %i.sf = shl i64 %i.sd, %i.se
  %i.sg = or i64 %i.sf, %i.ry
  store i64 %i.sg, ptr %i.rx, align 8, !tbaa !14
  br label %_ZN11duckdb_zstdL12HUF_setValueEPmm.exit.i

_ZN11duckdb_zstdL12HUF_setValueEPmm.exit.i:       ; preds = %bb.y, %.preheader.i44
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count.i
  br i1 %exitcond57.not.i, label %_ZN11duckdb_zstdL23HUF_buildCTableFromTreeEPmPKNS_9nodeElt_sEijj.exit, label %.preheader.i44, !llvm.loop !65

_ZN11duckdb_zstdL23HUF_buildCTableFromTreeEPmPKNS_9nodeElt_sEijj.exit: ; preds = %_ZN11duckdb_zstdL12HUF_setValueEPmm.exit.i
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 6, i1 false)
  %i.sh = trunc nuw nsw i32 %.095.i to i8
  %i.si = trunc nuw i32 %2 to i8
  store i8 %i.sh, ptr %0, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.si, ptr %.sroa.5.0..sroa_idx.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.sj = zext nneg i32 %.095.i to i64
  br label %bb.z

bb.z:                                             ; preds = %_ZN11duckdb_zstdL16HUF_setMaxHeightEPNS_9nodeElt_sEjj.exit, %bb.b, %bb.a, %_ZN11duckdb_zstdL23HUF_buildCTableFromTreeEPmPKNS_9nodeElt_sEijj.exit
  %.0 = phi i64 [ %i.sj, %_ZN11duckdb_zstdL23HUF_buildCTableFromTreeEPmPKNS_9nodeElt_sEijj.exit ], [ -66, %bb.a ], [ -46, %bb.b ], [ -1, %_ZN11duckdb_zstdL16HUF_setMaxHeightEPNS_9nodeElt_sEjj.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 0, 2305843009213693952) i64 @_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10 = icmp slt i32 %2, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.b to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %2, 3
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi14 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <2 x i64>, ptr %i.c, align 8, !tbaa !14
  %wide.load15 = load <2 x i64>, ptr %i.d, align 8, !tbaa !14
  %i.e = and <2 x i64> %wide.load, splat (i64 255)
  %i.f = and <2 x i64> %wide.load15, splat (i64 255)
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load16 = load <2 x i32>, ptr %i.g, align 4, !tbaa !8
  %wide.load17 = load <2 x i32>, ptr %i.h, align 4, !tbaa !8
  %i.i = zext <2 x i32> %wide.load16 to <2 x i64>
  %i.j = zext <2 x i32> %wide.load17 to <2 x i64>
  %i.k = mul nuw nsw <2 x i64> %i.e, %i.i
  %i.l = mul nuw nsw <2 x i64> %i.f, %i.j
  %i.m = add <2 x i64> %i.k, %vec.phi             ; 2 uses
  %i.n = add <2 x i64> %i.l, %vec.phi14           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.n, %i.m
  %i.p = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0911.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader18 ] ; 3 uses
  %.0911 = phi i64 [ %i.x, %.lr.ph ], [ %.0911.ph, %.lr.ph.preheader18 ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !14
  %i.s = and i64 %i.r, 255
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8
  %i.v = zext i32 %i.u to i64
  %i.w = mul nuw nsw i64 %i.s, %i.v
  %i.x = add i64 %i.w, %.0911                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !73

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.p, %middle.block ], [ %i.x, %.lr.ph ]
  %i.y = lshr i64 %.lcssa, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.09.lcssa = phi i64 [ 0, %bb.a ], [ %i.y, %._crit_edge.loopexit ]
  ret i64 %.09.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 2) i32 @_ZN11duckdb_zstd18HUF_validateCTableEPKmPKjj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.a = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.b = lshr i32 %i.a, 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = and i32 %i.b, 255
  %i.e = icmp ult i32 %i.d, %2
  br i1 %i.e, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nuw nsw i32 %2, 1
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %2, 3
  br i1 %min.iters.check, label %.preheader.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi19 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load = load <2 x i32>, ptr %i.g, align 4, !tbaa !8
  %wide.load20 = load <2 x i32>, ptr %i.h, align 4, !tbaa !8
  %i.i = icmp ne <2 x i32> %wide.load, zeroinitializer
  %i.j = icmp ne <2 x i32> %wide.load20, zeroinitializer
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load21 = load <2 x i64>, ptr %i.k, align 8, !tbaa !14
  %wide.load22 = load <2 x i64>, ptr %i.l, align 8, !tbaa !14
  %i.m = and <2 x i64> %wide.load21, splat (i64 255)
  %i.n = and <2 x i64> %wide.load22, splat (i64 255)
  %i.o = icmp eq <2 x i64> %i.m, zeroinitializer
  %i.p = icmp eq <2 x i64> %i.n, zeroinitializer
  %i.q = and <2 x i1> %i.i, %i.o
  %i.r = and <2 x i1> %i.j, %i.p
  %i.s = zext <2 x i1> %i.q to <2 x i32>
  %i.t = zext <2 x i1> %i.r to <2 x i32>
  %i.u = or <2 x i32> %vec.phi, %i.s              ; 2 uses
  %i.v = or <2 x i32> %vec.phi19, %i.t            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i32> %i.v, %i.u
  %i.x = tail call i32 @llvm.vector.reduce.or.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader23

.preheader.preheader23:                           ; preds = %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.01216.ph = phi i32 [ 0, %.preheader.preheader ], [ %i.x, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader23, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader23 ] ; 3 uses
  %.01216 = phi i32 [ %i.ah, %.preheader ], [ %.01216.ph, %.preheader.preheader23 ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !8
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !14
  %i.ad = and i64 %i.ac, 255
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = and i1 %i.aa, %i.ae
  %i.ag = zext i1 %i.af to i32
  %i.ah = or i32 %.01216, %i.ag                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !75

.loopexit:                                        ; preds = %.preheader, %middle.block
  %.lcssa = phi i32 [ %i.x, %middle.block ], [ %i.ah, %.preheader ]
  %.not15 = icmp eq i32 %.lcssa, 0
  %3 = zext i1 %.not15 to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %.013 = phi i32 [ %3, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN11duckdb_zstd17HUF_compressBoundEm(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = lshr i64 %0, 8
  %i.b = add i64 %0, 137
  %i.c = add i64 %i.b, %i.a
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN11duckdb_zstd26HUF_compress1X_usingCTableEPvmPKvmPKmi(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr nofree noundef readonly %4, i32 noundef %5) unnamed_addr #7 {
bb.a:
  %i.a = and i32 %5, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i64 @_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %_ZN11duckdb_zstdL43HUF_compress1X_usingCTable_internal_defaultEPvmPKvmPKm.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %4, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.c = and i32 %.sroa.0.0.extract.trunc.i.i, 255 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 153 uses
  %i.e = icmp ult i64 %1, 8
  br i1 %i.e, label %_ZN11duckdb_zstdL43HUF_compress1X_usingCTable_internal_defaultEPvmPKvmPKm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 11 uses
  %.not.i = icmp eq i64 %1, 8
  br i1 %.not.i, label %_ZN11duckdb_zstdL43HUF_compress1X_usingCTable_internal_defaultEPvmPKvmPKm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = and i64 %.sroa.0.0.copyload.i.i, 255
  %i.i = mul i64 %i.h, %3
  %i.j = lshr i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 8
  %i.l = icmp ult i64 %1, %i.k
  %i.m = icmp samesign ugt i32 %i.c, 11
  %or.cond.i.i = select i1 %i.l, i1 true, i1 %i.m
  %i.n = trunc i64 %3 to i32                      ; 21 uses
  br i1 %or.cond.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = srem i32 %i.n, 4                         ; 6 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.preheader582.preheader.i, label %_ZN11duckdb_zstdL13HUF_flushBitsEPNS_13HUF_CStream_tEi.exit.i

.preheader582.preheader.i:                        ; preds = %bb.f
  %sext950.i = shl i64 %3, 32
  %i.q = ashr exact i64 %sext950.i, 32            ; 2 uses
  %xtraiter259 = and i32 %i.o, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.preheader582.i.epil.preheader, label %.preheader582.preheader.i.new

.preheader582.preheader.i.new:                    ; preds = %.preheader582.preheader.i
  %unroll_iter264 = and i32 %i.o, 2147483646
  br label %.preheader582.i

.preheader582.i:                                  ; preds = %.preheader582.i, %.preheader582.preheader.i.new
  %indvars.iv922.i = phi i64 [ %i.q, %.preheader582.preheader.i.new ], [ %indvars.iv.next923.i.1, %.preheader582.i ] ; 2 uses
  %.sroa.264.6727.i = phi i64 [ 0, %.preheader582.preheader.i.new ], [ %i.am, %.preheader582.i ]
  %.sroa.0.6726.i = phi i64 [ 0, %.preheader582.preheader.i.new ], [ %i.al, %.preheader582.i ]
  %niter265 = phi i32 [ 0, %.preheader582.preheader.i.new ], [ %niter265.next.1, %.preheader582.i ]
  %i.s = getelementptr i8, ptr %2, i64 %indvars.iv922.i
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !14   ; 3 uses
  %i.y = and i64 %i.x, 255
  %i.z = lshr i64 %.sroa.0.6726.i, %i.y
  %i.aa = and i64 %i.x, -256
  %i.ab = or i64 %i.z, %i.aa
  %i.ac = add i64 %i.x, %.sroa.264.6727.i
  %indvars.iv.next923.i.1 = add nsw i64 %indvars.iv922.i, -2 ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next923.i.1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !14 ; 3 uses
  %i.ai = and i64 %i.ah, 255
  %i.aj = lshr i64 %i.ab, %i.ai
  %i.ak = and i64 %i.ah, -256
  %i.al = or i64 %i.aj, %i.ak                     ; 3 uses
  %i.am = add i64 %i.ah, %i.ac                    ; 3 uses
  %niter265.next.1 = add nuw nsw i32 %niter265, 2 ; 2 uses
  %niter265.ncmp.1.not = icmp eq i32 %niter265.next.1, %unroll_iter264
  br i1 %niter265.ncmp.1.not, label %.unr-lcssa258, label %.preheader582.i, !llvm.loop !0

.unr-lcssa258:                                    ; preds = %.preheader582.i
  %lcmp.mod260.not = icmp eq i32 %xtraiter259, 0
  br i1 %lcmp.mod260.not, label %bb.g, label %.preheader582.i.epil.preheader

.preheader582.i.epil.preheader:                   ; preds = %.unr-lcssa258, %.preheader582.preheader.i
  %indvars.iv922.i.epil.init = phi i64 [ %i.q, %.preheader582.preheader.i ], [ %indvars.iv.next923.i.1, %.unr-lcssa258 ]
  %.sroa.264.6727.i.epil.init = phi i64 [ 0, %.preheader582.preheader.i ], [ %i.am, %.unr-lcssa258 ]
  %.sroa.0.6726.i.epil.init = phi i64 [ 0, %.preheader582.preheader.i ], [ %i.al, %.unr-lcssa258 ]
  %lcmp.mod263 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod263)
  %i.an = getelementptr i8, ptr %2, i64 %indvars.iv922.i.epil.init
  %i.ao = getelementptr i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !14 ; 3 uses
  %i.at = and i64 %i.as, 255
  %i.au = lshr i64 %.sroa.0.6726.i.epil.init, %i.at
  %i.av = and i64 %i.as, -256
  %i.aw = or i64 %i.au, %i.av
  %i.ax = add i64 %i.as, %.sroa.264.6727.i.epil.init
  br label %bb.g

bb.g:                                             ; preds = %.unr-lcssa258, %.preheader582.i.epil.preheader
  %.lcssa178 = phi i64 [ %i.al, %.unr-lcssa258 ], [ %i.aw, %.preheader582.i.epil.preheader ] ; 2 uses
  %.lcssa177 = phi i64 [ %i.am, %.unr-lcssa258 ], [ %i.ax, %.preheader582.i.epil.preheader ] ; 2 uses
  %i.ay = sub nsw i32 %i.n, %i.o
  %i.az = and i64 %.lcssa177, 255                 ; 2 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = sub nsw i64 64, %i.az
  %i.bc = lshr i64 %.lcssa178, %i.bb
  %i.bd = and i64 %.lcssa177, 7
  store i64 %i.bc, ptr %0, align 1, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba ; 2 uses
  %i.bf = icmp ugt ptr %i.be, %i.g
  %spec.select.i = select i1 %i.bf, ptr %i.g, ptr %i.be
  br label %_ZN11duckdb_zstdL13HUF_flushBitsEPNS_13HUF_CStream_tEi.exit.i

_ZN11duckdb_zstdL13HUF_flushBitsEPNS_13HUF_CStream_tEi.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.1.i = phi i64 [ 0, %bb.f ], [ %.lcssa178, %bb.g ] ; 2 uses
  %.sroa.264.1.i = phi i64 [ 0, %bb.f ], [ %i.bd, %bb.g ] ; 2 uses
  %.sroa.458.1.i = phi ptr [ %0, %bb.f ], [ %spec.select.i, %bb.g ] ; 3 uses
  %.173.i.i = phi i32 [ %i.n, %bb.f ], [ %i.ay, %bb.g ] ; 4 uses
  %i.bg = and i32 %.173.i.i, 7
  %.not.i4.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i4.i, label %_ZN11duckdb_zstdL13HUF_flushBitsEPNS_13HUF_CStream_tEi.exit68.i, label %.preheader581.preheader.i

.preheader581.preheader.i:                        ; preds = %_ZN11duckdb_zstdL13HUF_flushBitsEPNS_13HUF_CStream_tEi.exit.i
  %i.bh = sext i32 %.173.i.i to i64
  %i.bi = getelementptr i8, ptr %2, i64 %i.bh     ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !9
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !14 ; 3 uses
  %i.bo = and i64 %i.bn, 255
  %i.bp = lshr i64 %.sroa.0.1.i, %i.bo
  %i.bq = or i64 %i.bp, %i.bn
  %i.br = add i64 %i.bn, %.sroa.264.1.i
  %i.bs = getelementptr i8, ptr %i.bi, i64 -2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !14 ; 3 uses
  %i.bx = and i64 %i.bw, 255
  %i.by = lshr i64 %i.bq, %i.bx
  %i.bz = or i64 %i.by, %i.bw
  %i.ca = add i64 %i.br, %i.bw
  %i.cb = getelementptr i8, ptr %i.bi, i64 -3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !14 ; 3 uses
  %i.cg = and i64 %i.cf, 255
  %i.ch = lshr i64 %i.bz, %i.cg
  %i.ci = or i64 %i.ch, %i.cf
  %i.cj = add i64 %i.ca, %i.cf
  %i.ck = add nsw i32 %.173.i.i, -4               ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %2, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !9
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !14 ; 3 uses
  %i.cr = and i64 %i.cq, 255
  %i.cs = lshr i64 %i.ci, %i.cr
  %i.ct = and i64 %i.cq, -256
  %i.cu = or i64 %i.cs, %i.ct                     ; 2 uses
  %i.cv = add i64 %i.cj, %i.cq                    ; 2 uses
  %i.cw = and i64 %i.cv, 255                      ; 2 uses
  %i.cx = lshr i64 %i.cw, 3
  %i.cy = sub nsw i64 64, %i.cw
  %i.cz = lshr i64 %i.cu, %i.cy
  %i.da = and i64 %i.cv, 7
end_hunk_0

inline.NumInlined: 440
inline.NumDeleted: 31
begin_hunk_0_@_ZN11duckdb_zstd19HUF_optimalTableLogEjmjPvmPmPKji:bb.a
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.067.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.o, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.067.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.067.i.ph, %.lr.ph.i.preheader ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %.not.i = icmp ne i32 %i.q, 0
  %i.r = zext i1 %.not.i to i32
  %spec.select.i = add i32 %.067.i, %i.r          ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstd15HUF_cardinalityEPKjj.exit, label %.lr.ph.i, !llvm.loop !78

_ZN11duckdb_zstd15HUF_cardinalityEPKjj.exit:      ; preds = %.lr.ph.i, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.o, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.s = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %spec.select.i.lcssa, i1 true)
  %i.t = sub nuw nsw i32 32, %i.s                 ; 4 uses
  %.not5370 = icmp ugt i32 %i.t, %0
  br i1 %.not5370, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11duckdb_zstd15HUF_cardinalityEPKjj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not10.i = icmp slt i32 %2, 0
  %wide.trip.count.i58 = zext i32 %i.e to i64
  br i1 %.not10.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check107 = icmp ult i32 %i.e, 4
  %n.vec110 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %cmp.n122 = icmp eq i64 %n.vec110, %wide.trip.count.i
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.c, %.lr.ph
  %.06.lcssa.i9599 = phi i32 [ %i.t, %.lr.ph ], [ poison, %bb.c ] ; 2 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.thread67.us
  %.04673.us = phi i32 [ %i.ag, %.thread67.us ], [ %.06.lcssa.i9599, %.lr.ph.split.us.preheader ] ; 5 uses
  %.04772.us = phi i32 [ %.1.us, %.thread67.us ], [ %0, %.lr.ph.split.us.preheader ] ; 5 uses
  %.04871.us = phi i64 [ %.149.us, %.thread67.us ], [ -2, %.lr.ph.split.us.preheader ] ; 5 uses
  %i.v = tail call noundef i64 @_ZN11duckdb_zstd20HUF_buildCTable_wkspEPmPKjjjPvm(ptr noundef %5, ptr noundef %6, i32 noundef %2, i32 noundef %.04673.us, ptr noundef %3, i64 noundef %4) ; 3 uses
  %i.w = icmp ult i64 %i.v, -119
  br i1 %i.w, label %bb.d, label %.thread67.us

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.x = zext i32 %.04673.us to i64
  %i.y = icmp samesign ult i64 %i.v, %i.x
  %i.z = icmp ugt i32 %.04673.us, %.06.lcssa.i9599
  %or.cond.us = and i1 %i.z, %i.y
  br i1 %or.cond.us, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i64 %i.v to i32
  %i.ab = tail call noundef i64 @_ZN11duckdb_zstd20HUF_writeCTable_wkspEPvmPKmjjS0_m(ptr noundef nonnull %i.c, i64 noundef %i.d, ptr noundef %5, i32 noundef %2, i32 noundef %i.aa, ptr noundef %3, i64 noundef %4) ; 4 uses
  %i.ac = icmp ult i64 %i.ab, -119
  br i1 %i.ac, label %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit.us, label %.thread67.us

_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit.us: ; preds = %bb.e
  %i.ad = add nsw i64 %.04871.us, 1
  %i.ae = icmp ugt i64 %i.ab, %i.ad
  br i1 %i.ae, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit.us
  %i.af = icmp ult i64 %i.ab, %.04871.us
  %spec.select.us = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %.04871.us)
  %spec.select56.us = select i1 %i.af, i32 %.04673.us, i32 %.04772.us
  br label %.thread67.us

.thread67.us:                                     ; preds = %bb.f, %bb.e, %.lr.ph.split.us
  %.149.us = phi i64 [ %.04871.us, %bb.e ], [ %spec.select.us, %bb.f ], [ %.04871.us, %.lr.ph.split.us ]
  %.1.us = phi i32 [ %.04772.us, %bb.e ], [ %spec.select56.us, %bb.f ], [ %.04772.us, %.lr.ph.split.us ] ; 2 uses
  %i.ag = add i32 %.04673.us, 1                   ; 2 uses
  %.not53.us = icmp ugt i32 %i.ag, %0
  br i1 %.not53.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !79

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.thread67
  %.04673 = phi i32 [ %i.bq, %.thread67 ], [ %i.t, %.lr.ph.split.preheader ] ; 5 uses
  %.04772 = phi i32 [ %.1, %.thread67 ], [ %0, %.lr.ph.split.preheader ] ; 5 uses
  %.04871 = phi i64 [ %.149, %.thread67 ], [ -2, %.lr.ph.split.preheader ] ; 5 uses
  %i.ah = tail call noundef i64 @_ZN11duckdb_zstd20HUF_buildCTable_wkspEPmPKjjjPvm(ptr noundef %5, ptr noundef %6, i32 noundef %2, i32 noundef %.04673, ptr noundef %3, i64 noundef %4) ; 3 uses
  %i.ai = icmp ult i64 %i.ah, -119
  br i1 %i.ai, label %bb.g, label %.thread67

bb.g:                                             ; preds = %.lr.ph.split
  %i.aj = zext i32 %.04673 to i64
  %i.ak = icmp samesign ult i64 %i.ah, %i.aj
  %i.al = icmp ugt i32 %.04673, %i.t
  %or.cond = and i1 %i.al, %i.ak
  br i1 %or.cond, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = trunc nuw nsw i64 %i.ah to i32
  %i.an = tail call noundef i64 @_ZN11duckdb_zstd20HUF_writeCTable_wkspEPvmPKmjjS0_m(ptr noundef nonnull %i.c, i64 noundef %i.d, ptr noundef %5, i32 noundef %2, i32 noundef %i.am, ptr noundef %3, i64 noundef %4) ; 2 uses
  %i.ao = icmp ult i64 %i.an, -119
  br i1 %i.ao, label %.lr.ph.i59.preheader, label %.thread67

.lr.ph.i59.preheader:                             ; preds = %bb.h
  br i1 %min.iters.check107, label %.lr.ph.i59.preheader125, label %vector.body111

vector.body111:                                   ; preds = %.lr.ph.i59.preheader, %vector.body111
  %index112 = phi i64 [ %index.next119, %vector.body111 ], [ 0, %.lr.ph.i59.preheader ] ; 3 uses
  %vec.phi113 = phi <2 x i64> [ %i.az, %vector.body111 ], [ zeroinitializer, %.lr.ph.i59.preheader ]
  %vec.phi114 = phi <2 x i64> [ %i.ba, %vector.body111 ], [ zeroinitializer, %.lr.ph.i59.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index112 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load115 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !15
  %wide.load116 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !15
  %i.ar = and <2 x i64> %wide.load115, splat (i64 255)
  %i.as = and <2 x i64> %wide.load116, splat (i64 255)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index112 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %wide.load117 = load <2 x i32>, ptr %i.at, align 4, !tbaa !3
  %wide.load118 = load <2 x i32>, ptr %i.au, align 4, !tbaa !3
  %i.av = zext <2 x i32> %wide.load117 to <2 x i64>
  %i.aw = zext <2 x i32> %wide.load118 to <2 x i64>
  %i.ax = mul nuw nsw <2 x i64> %i.ar, %i.av
  %i.ay = mul nuw nsw <2 x i64> %i.as, %i.aw
  %i.az = add <2 x i64> %i.ax, %vec.phi113        ; 2 uses
  %i.ba = add <2 x i64> %i.ay, %vec.phi114        ; 2 uses
  %index.next119 = add nuw i64 %index112, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next119, %n.vec110
  br i1 %i.bb, label %middle.block120, label %vector.body111, !llvm.loop !80

middle.block120:                                  ; preds = %vector.body111
  %bin.rdx121 = add <2 x i64> %i.ba, %i.az
  %i.bc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx121) ; 2 uses
  br i1 %cmp.n122, label %._crit_edge.loopexit.i, label %.lr.ph.i59.preheader125

.lr.ph.i59.preheader125:                          ; preds = %.lr.ph.i59.preheader, %middle.block120
  %indvars.iv.i60.ph = phi i64 [ 0, %.lr.ph.i59.preheader ], [ %n.vec110, %middle.block120 ]
  %.0911.i.ph = phi i64 [ 0, %.lr.ph.i59.preheader ], [ %i.bc, %middle.block120 ]
  br label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %.lr.ph.i59.preheader125, %.lr.ph.i59
  %indvars.iv.i60 = phi i64 [ %indvars.iv.next.i61, %.lr.ph.i59 ], [ %indvars.iv.i60.ph, %.lr.ph.i59.preheader125 ] ; 3 uses
  %.0911.i = phi i64 [ %i.bk, %.lr.ph.i59 ], [ %.0911.i.ph, %.lr.ph.i59.preheader125 ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i60
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !15
  %i.bf = and i64 %i.be, 255
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i60
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = zext i32 %i.bh to i64
  %i.bj = mul nuw nsw i64 %i.bf, %i.bi
  %i.bk = add i64 %i.bj, %.0911.i                 ; 2 uses
  %indvars.iv.next.i61 = add nuw nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %exitcond.not.i62 = icmp eq i64 %indvars.iv.next.i61, %wide.trip.count.i58
  br i1 %exitcond.not.i62, label %._crit_edge.loopexit.i, label %.lr.ph.i59, !llvm.loop !81

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i59, %middle.block120
  %.lcssa = phi i64 [ %i.bc, %middle.block120 ], [ %i.bk, %.lr.ph.i59 ]
  %i.bl = lshr i64 %.lcssa, 3
  %i.bm = add nuw nsw i64 %i.bl, %i.an            ; 3 uses
  %i.bn = add nsw i64 %.04871, 1
  %i.bo = icmp ugt i64 %i.bm, %i.bn
  br i1 %i.bo, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %._crit_edge.loopexit.i
  %i.bp = icmp ult i64 %i.bm, %.04871
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 %.04871)
  %spec.select56 = select i1 %i.bp, i32 %.04673, i32 %.04772
  br label %.thread67

.thread67:                                        ; preds = %.lr.ph.split, %bb.i, %bb.h
  %.149 = phi i64 [ %.04871, %bb.h ], [ %spec.select, %bb.i ], [ %.04871, %.lr.ph.split ]
  %.1 = phi i32 [ %.04772, %bb.h ], [ %spec.select56, %bb.i ], [ %.04772, %.lr.ph.split ] ; 2 uses
  %i.bq = add i32 %.04673, 1                      ; 2 uses
  %.not53 = icmp ugt i32 %i.bq, %0
  br i1 %.not53, label %.loopexit, label %.lr.ph.split, !llvm.loop !79

.loopexit:                                        ; preds = %._crit_edge.loopexit.i, %.thread67, %bb.g, %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit.us, %.thread67.us, %bb.d, %_ZN11duckdb_zstd15HUF_cardinalityEPKjj.exit, %bb.b
  %.045 = phi i32 [ %i.b, %bb.b ], [ %0, %_ZN11duckdb_zstd15HUF_cardinalityEPKjj.exit ], [ %.04772.us, %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit.us ], [ %.1.us, %.thread67.us ], [ %.04772.us, %bb.d ], [ %.04772, %._crit_edge.loopexit.i ], [ %.1, %.thread67 ], [ %.04772, %bb.g ]
  ret i32 %.045
}

declare noundef i32 @_ZN11duckdb_zstd28FSE_optimalTableLog_internalEjmjj(i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd21HUF_compress1X_repeatEPvmPKvmjjS0_mPmPNS_10HUF_repeatEi(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef captures(address_is_null) %9, i32 noundef %10) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL21HUF_compress_internalEPvmPKvmjjNS_15HUF_nbStreams_eES0_mPmPNS_10HUF_repeatEi(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 0, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL21HUF_compress_internalEPvmPKvmjjNS_15HUF_nbStreams_eES0_mPmPNS_10HUF_repeatEi(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef captures(address_is_null) %10, i32 noundef %11) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !3
  %i.d = ptrtoint ptr %7 to i64
  %i.e = sub i64 0, %i.d
  %i.f = and i64 %i.e, 7                          ; 3 uses
  %.not.i = icmp ult i64 %8, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 %i.f ; 9 uses
  %storemerge.i = tail call i64 @llvm.usub.sat.i64(i64 %8, i64 %i.f)
  %.0.i = select i1 %.not.i, ptr null, ptr %i.g   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.i = icmp ult i64 %storemerge.i, 7944
  br i1 %i.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %3, 0
  %.not164 = icmp eq i64 %1, 0
  %or.cond183 = or i1 %.not164, %.not
  br i1 %or.cond183, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %3, 131072
  br i1 %i.j, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ugt i32 %5, 12
  br i1 %i.k, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i32 %4, 255
  br i1 %i.l, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not165 = icmp eq i32 %4, 0
  br i1 %.not165, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 255, ptr %i.a, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = phi i32 [ 255, %bb.g ], [ %4, %bb.f ]    ; 2 uses
  %.not166 = icmp eq i32 %5, 0
  %spec.store.select = select i1 %.not166, i32 11, i32 %5
  %i.n = and i32 %11, 4
  %i.o = icmp eq i32 %i.n, 0
  %i.p = icmp eq ptr %10, null                    ; 3 uses
  %or.cond.not241 = or i1 %i.p, %i.o              ; 3 uses
  br i1 %or.cond.not241, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load i32, ptr %10, align 4, !tbaa !82
  %i.r = icmp eq i32 %i.q, 2
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = tail call fastcc noundef i64 @_ZN11duckdb_zstdL27HUF_compressCTable_internalEPhS0_S0_PKvmNS_15HUF_nbStreams_eEPKmi(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.h, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef %9, i32 noundef %11)
  br label %.thread

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.t = and i32 %11, 8
  %i.u = icmp ne i32 %i.t, 0
  %i.v = icmp samesign ugt i64 %3, 40959
  %or.cond10 = and i1 %i.v, %i.u
  br i1 %or.cond10, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.m, ptr %i.b, align 4, !tbaa !3
  %i.w = call noundef i32 @_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm(ptr noundef %.0.i, ptr noundef nonnull %i.b, ptr noundef %2, i64 noundef 4096)
  %i.x = zext i32 %i.w to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 %i.m, ptr %i.c, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4096
  %i.aa = call noundef i32 @_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm(ptr noundef %.0.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.z, i64 noundef 4096)
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.ab, %i.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.ad = icmp samesign ugt i64 %i.ac, 68
  br i1 %i.ad, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 3080 ; 4 uses
  %i.af = call noundef i64 @_ZN11duckdb_zstd15HIST_count_wkspEPjS0_PKvmPvm(ptr noundef %.0.i, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %i.ae, i64 noundef 4096) ; 4 uses
  %i.ag = icmp ult i64 %i.af, -119
  br i1 %i.ag, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ah = icmp eq i64 %i.af, %3
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ai = load i8, ptr %2, align 1, !tbaa !7
  store i8 %i.ai, ptr %0, align 1, !tbaa !7
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.aj = lshr i64 %3, 7
  %i.ak = add nuw nsw i64 %i.aj, 4
  %.not170 = icmp ugt i64 %i.af, %i.ak
  br i1 %.not170, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  br i1 %i.p, label %.thread198, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = load i32, ptr %10, align 4, !tbaa !82   ; 2 uses
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.an = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ao = call noundef i32 @_ZN11duckdb_zstd18HUF_validateCTableEPKmPKjj(ptr noundef %9, ptr noundef nonnull %i.g, i32 noundef %i.an)
  %.not171 = icmp eq i32 %i.ao, 0
  br i1 %.not171, label %bb.t, label %.thread233

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %10, align 4, !tbaa !82
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.ap = phi i32 [ 0, %bb.t ], [ %i.al, %bb.r ]
  %.not172 = icmp eq i32 %i.ap, 0
  %or.cond238 = or i1 %or.cond.not241, %.not172
  br i1 %or.cond238, label %.thread198, label %.thread234

.thread233:                                       ; preds = %bb.s
  br i1 %or.cond.not241, label %.thread198, label %.thread234

.thread234:                                       ; preds = %bb.u, %.thread233
  %12 = call fastcc noundef i64 @_ZN11duckdb_zstdL27HUF_compressCTable_internalEPhS0_S0_PKvmNS_15HUF_nbStreams_eEPKmi(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.h, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef %9, i32 noundef %11)
  br label %.thread

.thread198:                                       ; preds = %.thread233, %bb.q, %bb.u
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 1024 ; 5 uses
  %i.as = call noundef i32 @_ZN11duckdb_zstd19HUF_optimalTableLogEjmjPvmPmPKji(i32 noundef %spec.store.select, i64 noundef %3, i32 noundef %i.aq, ptr noundef nonnull %i.ae, i64 noundef 4864, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.g, i32 noundef %11)
  %i.at = load i32, ptr %i.a, align 4, !tbaa !3
  %i.au = call noundef i64 @_ZN11duckdb_zstd20HUF_buildCTable_wkspEPmPKjjjPvm(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.g, i32 noundef %i.at, i32 noundef %i.as, ptr noundef nonnull %i.ae, i64 noundef 4864) ; 3 uses
  %i.av = icmp ult i64 %i.au, -119
  br i1 %i.av, label %bb.v, label %.thread

bb.v:                                             ; preds = %.thread198
  %i.aw = trunc nuw nsw i64 %i.au to i32
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ay = call noundef i64 @_ZN11duckdb_zstd20HUF_writeCTable_wkspEPvmPKmjjS0_m(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.ar, i32 noundef %i.ax, i32 noundef %i.aw, ptr noundef nonnull %i.ae, i64 noundef 748) ; 7 uses
  %i.az = icmp ult i64 %i.ay, -119
  br i1 %i.az, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  br i1 %i.p, label %.thread209, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = load i32, ptr %10, align 4, !tbaa !82
  %.not175 = icmp eq i32 %i.ba, 0
  br i1 %.not175, label %.thread206, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not10.i = icmp slt i32 %i.bb, 0
  br i1 %.not10.i, label %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.y
  %i.bd = add nuw i32 %i.bb, 1
  %wide.trip.count.i = zext i32 %i.bd to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %i.bb, 3
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bo, %vector.body ]
  %vec.phi243 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bp, %vector.body ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <2 x i64>, ptr %i.be, align 8, !tbaa !15
  %wide.load244 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !15
  %i.bg = and <2 x i64> %wide.load, splat (i64 255)
  %i.bh = and <2 x i64> %wide.load244, splat (i64 255)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %wide.load245 = load <2 x i32>, ptr %i.bi, align 4, !tbaa !3
  %wide.load246 = load <2 x i32>, ptr %i.bj, align 4, !tbaa !3
  %i.bk = zext <2 x i32> %wide.load245 to <2 x i64>
  %i.bl = zext <2 x i32> %wide.load246 to <2 x i64>
  %i.bm = mul nuw nsw <2 x i64> %i.bg, %i.bk
  %i.bn = mul nuw nsw <2 x i64> %i.bh, %i.bl
  %i.bo = add <2 x i64> %i.bm, %vec.phi           ; 2 uses
  %i.bp = add <2 x i64> %i.bn, %vec.phi243        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bp, %i.bo
  %i.br = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.lr.ph.preheader.i185, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.0911.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.br, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.0911.i = phi i64 [ %i.bz, %.lr.ph.i ], [ %.0911.i.ph, %.lr.ph.i.preheader ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !15
  %i.bu = and i64 %i.bt, 255
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = zext i32 %i.bw to i64
  %i.by = mul nuw nsw i64 %i.bu, %i.bx
  %i.bz = add i64 %i.by, %.0911.i                 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.preheader.i185, label %.lr.ph.i, !llvm.loop !85

.lr.ph.preheader.i185:                            ; preds = %.lr.ph.i, %middle.block
  %.lcssa242 = phi i64 [ %i.br, %middle.block ], [ %i.bz, %.lr.ph.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 1032 ; 2 uses
  %min.iters.check248 = icmp ult i32 %i.bb, 3
  br i1 %min.iters.check248, label %.lr.ph.i187.preheader, label %vector.ph249

vector.ph249:                                     ; preds = %.lr.ph.preheader.i185
  %n.vec251 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body252

vector.body252:                                   ; preds = %vector.body252, %vector.ph249
  %index253 = phi i64 [ 0, %vector.ph249 ], [ %index.next260, %vector.body252 ] ; 3 uses
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %vector.ph249 ], [ %i.cl, %vector.body252 ]
  %vec.phi255 = phi <2 x i64> [ zeroinitializer, %vector.ph249 ], [ %i.cm, %vector.body252 ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %index253 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load256 = load <2 x i64>, ptr %i.cb, align 8, !tbaa !15
  %wide.load257 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !15
  %i.cd = and <2 x i64> %wide.load256, splat (i64 255)
  %i.ce = and <2 x i64> %wide.load257, splat (i64 255)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index253 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %wide.load258 = load <2 x i32>, ptr %i.cf, align 4, !tbaa !3
  %wide.load259 = load <2 x i32>, ptr %i.cg, align 4, !tbaa !3
  %i.ch = zext <2 x i32> %wide.load258 to <2 x i64>
  %i.ci = zext <2 x i32> %wide.load259 to <2 x i64>
  %i.cj = mul nuw nsw <2 x i64> %i.cd, %i.ch
  %i.ck = mul nuw nsw <2 x i64> %i.ce, %i.ci
  %i.cl = add <2 x i64> %i.cj, %vec.phi254        ; 2 uses
  %i.cm = add <2 x i64> %i.ck, %vec.phi255        ; 2 uses
  %index.next260 = add nuw i64 %index253, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next260, %n.vec251
  br i1 %i.cn, label %middle.block261, label %vector.body252, !llvm.loop !86

middle.block261:                                  ; preds = %vector.body252
  %bin.rdx262 = add <2 x i64> %i.cm, %i.cl
  %i.co = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx262) ; 2 uses
  %cmp.n263 = icmp eq i64 %n.vec251, %wide.trip.count.i
  br i1 %cmp.n263, label %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194, label %.lr.ph.i187.preheader

.lr.ph.i187.preheader:                            ; preds = %.lr.ph.preheader.i185, %middle.block261
  %indvars.iv.i188.ph = phi i64 [ 0, %.lr.ph.preheader.i185 ], [ %n.vec251, %middle.block261 ]
  %.0911.i189.ph = phi i64 [ 0, %.lr.ph.preheader.i185 ], [ %i.co, %middle.block261 ]
  br label %.lr.ph.i187

.lr.ph.i187:                                      ; preds = %.lr.ph.i187.preheader, %.lr.ph.i187
  %indvars.iv.i188 = phi i64 [ %indvars.iv.next.i190, %.lr.ph.i187 ], [ %indvars.iv.i188.ph, %.lr.ph.i187.preheader ] ; 3 uses
  %.0911.i189 = phi i64 [ %i.cw, %.lr.ph.i187 ], [ %.0911.i189.ph, %.lr.ph.i187.preheader ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.i188
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !15
  %i.cr = and i64 %i.cq, 255
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i188
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = zext i32 %i.ct to i64
  %i.cv = mul nuw nsw i64 %i.cr, %i.cu
  %i.cw = add i64 %i.cv, %.0911.i189              ; 2 uses
  %indvars.iv.next.i190 = add nuw nsw i64 %indvars.iv.i188, 1 ; 2 uses
  %exitcond.not.i191 = icmp eq i64 %indvars.iv.next.i190, %wide.trip.count.i
  br i1 %exitcond.not.i191, label %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194, label %.lr.ph.i187, !llvm.loop !87

_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194: ; preds = %.lr.ph.i187, %middle.block261
  %.lcssa = phi i64 [ %i.co, %middle.block261 ], [ %i.cw, %.lr.ph.i187 ]
  %i.cx = lshr i64 %.lcssa242, 3
  %i.cy = lshr i64 %.lcssa, 3
  %i.cz = add nuw nsw i64 %i.cy, %i.ay
  %.not176 = icmp samesign ugt i64 %i.cx, %i.cz
  %i.da = add nuw nsw i64 %i.ay, 12
  %.not177 = icmp samesign ult i64 %i.da, %3
  %or.cond182 = and i1 %.not177, %.not176
  br i1 %or.cond182, label %.thread206.thread, label %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194.thread

_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194.thread: ; preds = %bb.y, %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194
  %13 = call fastcc noundef i64 @_ZN11duckdb_zstdL27HUF_compressCTable_internalEPhS0_S0_PKvmNS_15HUF_nbStreams_eEPKmi(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.h, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef %9, i32 noundef %11)
  br label %.thread

.thread206:                                       ; preds = %bb.x
  %.pre = add nuw nsw i64 %i.ay, 12
  %i.db = icmp samesign ult i64 %.pre, %3
  br i1 %i.db, label %.thread206.thread, label %.thread

.thread209:                                       ; preds = %bb.w
  %i.dc = add nuw nsw i64 %i.ay, 12
  %.not178210 = icmp samesign ult i64 %i.dc, %3
  br i1 %.not178210, label %.thread211, label %.thread

.thread206.thread:                                ; preds = %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194, %.thread206
  store i32 0, ptr %10, align 4, !tbaa !82
  br label %.thread211

.thread211:                                       ; preds = %.thread209, %.thread206.thread
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay
  %.not179 = icmp eq ptr %9, null
  br i1 %.not179, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.thread211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %9, ptr noundef nonnull align 8 dereferenceable(2056) %i.ar, i64 2056, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread211
  %i.de = call fastcc noundef i64 @_ZN11duckdb_zstdL27HUF_compressCTable_internalEPhS0_S0_PKvmNS_15HUF_nbStreams_eEPKmi(ptr noundef %0, ptr noundef %i.dd, ptr noundef nonnull %i.h, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef nonnull %i.ar, i32 noundef %11)
  br label %.thread

.thread:                                          ; preds = %.thread209, %.thread206, %bb.v, %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194.thread, %bb.o, %bb.m, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.l, %.thread198, %bb.p, %bb.aa, %.thread234, %bb.j
  %.9 = phi i64 [ -66, %bb.a ], [ -46, %bb.e ], [ -72, %bb.c ], [ -44, %bb.d ], [ %i.s, %bb.j ], [ %12, %.thread234 ], [ %i.de, %bb.aa ], [ %i.af, %bb.m ], [ %i.au, %.thread198 ], [ 0, %bb.p ], [ 0, %bb.l ], [ 0, %bb.b ], [ 1, %bb.o ], [ 0, %.thread209 ], [ 0, %.thread206 ], [ %i.ay, %bb.v ], [ %13, %_ZN11duckdb_zstd26HUF_estimateCompressedSizeEPKmPKjj.exit194.thread ]
  ret i64 %.9
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd21HUF_compress4X_repeatEPvmPKvmjjS0_mPmPNS_10HUF_repeatEi(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef captures(address_is_null) %9, i32 noundef %10) local_unnamed_addr #2 {
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
  %i.j = load i32, ptr %i.e, align 4, !tbaa !40
  %i.k = icmp ult i32 %i.j, %.sroa.0.0.copyload.i
  br i1 %i.k, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i64, ptr %i.e, align 4
  store i64 %i.m, ptr %i.l, align 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.preheader
  %.0.in.i.lcssa = phi i64 [ 8, %.lr.ph.preheader ], [ 0, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa
  store <2 x i32> %i.i, ptr %i.n, align 4
  %exitcond.not = icmp eq i32 %i.g, 2
  br i1 %exitcond.not, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.critedge.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.p = load <2 x i32>, ptr %i.o, align 4
  %.sroa.0.0.copyload.i.1 = load i32, ptr %i.o, align 4, !tbaa !3 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !40
  %i.s = icmp ult i32 %i.r, %.sroa.0.0.copyload.i.1
  br i1 %i.s, label %bb.d, label %.critedge.i.1

bb.d:                                             ; preds = %.lr.ph.1
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.u = load i64, ptr %i.q, align 4
  store i64 %i.u, ptr %i.t, align 4
  %i.v = load i32, ptr %i.e, align 4, !tbaa !40
  %i.w = icmp ult i32 %i.v, %.sroa.0.0.copyload.i.1
  br i1 %i.w, label %bb.e, label %.critedge.i.1

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.y = load i64, ptr %i.e, align 4
  store i64 %i.y, ptr %i.x, align 4
  br label %.critedge.i.1

.critedge.i.1:                                    ; preds = %bb.e, %bb.d, %.lr.ph.1
  %.0.in.i.lcssa.1 = phi i64 [ 16, %.lr.ph.1 ], [ 0, %bb.e ], [ 8, %bb.d ]
  %i.z = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa.1
  store <2 x i32> %i.p, ptr %i.z, align 4
  %exitcond.not.1 = icmp eq i32 %i.g, 3
  br i1 %exitcond.not.1, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.critedge.i.1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.ab = load <2 x i32>, ptr %i.aa, align 4
  %.sroa.0.0.copyload.i.2 = load i32, ptr %i.aa, align 4, !tbaa !3 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.ae = icmp ult i32 %i.ad, %.sroa.0.0.copyload.i.2
  br i1 %i.ae, label %bb.f, label %.critedge.i.2

bb.f:                                             ; preds = %.lr.ph.2
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ag = load i64, ptr %i.ac, align 4
  store i64 %i.ag, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !40
  %i.aj = icmp ult i32 %i.ai, %.sroa.0.0.copyload.i.2
  br i1 %i.aj, label %bb.g, label %.critedge.i.2

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.al = load i64, ptr %i.ah, align 4
  store i64 %i.al, ptr %i.ak, align 4
  %i.am = load i32, ptr %i.e, align 4, !tbaa !40
  %i.an = icmp ult i32 %i.am, %.sroa.0.0.copyload.i.2
  br i1 %i.an, label %bb.h, label %.critedge.i.2

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = load i64, ptr %i.e, align 4
  store i64 %i.ap, ptr %i.ao, align 4
  br label %.critedge.i.2

.critedge.i.2:                                    ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph.2
  %.0.in.i.lcssa.2 = phi i64 [ 24, %.lr.ph.2 ], [ 8, %bb.g ], [ 16, %bb.f ], [ 0, %bb.h ]
  %i.aq = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa.2
  store <2 x i32> %i.ab, ptr %i.aq, align 4
  %exitcond.not.2 = icmp eq i32 %i.g, 4
  br i1 %exitcond.not.2, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.critedge.i.2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.as = load <2 x i32>, ptr %i.ar, align 4
  %.sroa.0.0.copyload.i.3 = load i32, ptr %i.ar, align 4, !tbaa !3 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !40
  %i.av = icmp ult i32 %i.au, %.sroa.0.0.copyload.i.3
  br i1 %i.av, label %bb.i, label %.critedge.i.3

bb.i:                                             ; preds = %.lr.ph.3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ax = load i64, ptr %i.at, align 4
  store i64 %i.ax, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !40
  %i.ba = icmp ult i32 %i.az, %.sroa.0.0.copyload.i.3
  br i1 %i.ba, label %bb.j, label %.critedge.i.3

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bc = load i64, ptr %i.ay, align 4
  store i64 %i.bc, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !40
  %i.bf = icmp ult i32 %i.be, %.sroa.0.0.copyload.i.3
  br i1 %i.bf, label %bb.k, label %.critedge.i.3

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bh = load i64, ptr %i.bd, align 4
  store i64 %i.bh, ptr %i.bg, align 4
  %i.bi = load i32, ptr %i.e, align 4, !tbaa !40
  %i.bj = icmp ult i32 %i.bi, %.sroa.0.0.copyload.i.3
  br i1 %i.bj, label %bb.l, label %.critedge.i.3

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bl = load i64, ptr %i.e, align 4
  store i64 %i.bl, ptr %i.bk, align 4
  br label %.critedge.i.3

.critedge.i.3:                                    ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %.lr.ph.3
  %.0.in.i.lcssa.3 = phi i64 [ 32, %.lr.ph.3 ], [ 0, %bb.l ], [ 24, %bb.i ], [ 8, %bb.k ], [ 16, %bb.j ]
  %i.bm = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa.3
  store <2 x i32> %i.as, ptr %i.bm, align 4
  %exitcond.not.3 = icmp eq i32 %i.g, 5
  br i1 %exitcond.not.3, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.critedge.i.3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.bo = load <2 x i32>, ptr %i.bn, align 4
  %.sroa.0.0.copyload.i.4 = load i32, ptr %i.bn, align 4, !tbaa !3 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !40
  %i.br = icmp ult i32 %i.bq, %.sroa.0.0.copyload.i.4
  br i1 %i.br, label %bb.m, label %.critedge.i.4

bb.m:                                             ; preds = %.lr.ph.4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bt = load i64, ptr %i.bp, align 4
  store i64 %i.bt, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = icmp ult i32 %i.bv, %.sroa.0.0.copyload.i.4
  br i1 %i.bw, label %bb.n, label %.critedge.i.4

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.by = load i64, ptr %i.bu, align 4
end_hunk_0

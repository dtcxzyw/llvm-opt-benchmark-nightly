Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/zstdmt_compress?download=true
inline.NumInlined: 124
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ZSTDMT_compressStream_generic:bb.a
  %i.aex = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.aey = tail call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(address) %i.aex) #17
  %i.aez = trunc i64 %i.aey to i32
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aeu, i64 136
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !172
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8 ; 2 uses
  %i.afd = load i64, ptr %i.afc, align 8, !tbaa !94 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afb, i64 %i.afd
  store i32 %i.aez, ptr %i.afe, align 1, !tbaa !9
  %i.aff = add nuw i64 %i.adc, 4
  %i.afg = add i64 %i.afd, 4
  store i64 %i.afg, ptr %i.afc, align 8, !tbaa !94
  store i32 0, ptr %i.aev, align 8, !tbaa !169
  br label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.not113.i = icmp eq i64 %i.adc, 0
  br i1 %.not113.i, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread137.i
  %.0105140.i = phi i64 [ %i.aff, %.thread137.i ], [ %i.adc, %bb.am ] ; 5 uses
  %i.afh = getelementptr inbounds nuw [456 x i8], ptr %.pre129.pre.i, i64 %i.abs ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 440
  %i.afj = load i64, ptr %i.afi, align 8, !tbaa !96 ; 3 uses
  %i.afk = sub i64 %.0105140.i, %i.afj
  %i.afl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.afm = load i64, ptr %i.afl, align 8, !tbaa !173
  %i.afn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.afo = load i64, ptr %i.afn, align 8, !tbaa !175 ; 3 uses
  %i.afp = sub i64 %i.afm, %i.afo
  %..i77 = tail call i64 @llvm.umin.i64(i64 %i.afk, i64 %i.afp) ; 4 uses
  %.not114.i = icmp eq i64 %..i77, 0
  br i1 %.not114.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.afq = load ptr, ptr %1, align 8, !tbaa !176
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 %i.afo
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afh, i64 136
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !172
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 %i.afj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afr, ptr align 1 %i.afu, i64 %..i77, i1 false)
  %.pre125.i = load i64, ptr %i.afn, align 8, !tbaa !175
  %.pre126.i = load ptr, ptr %i.abq, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i78 = getelementptr inbounds nuw [456 x i8], ptr %.pre126.i, i64 %i.abs
  %.phi.trans.insert127.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i78, i64 440
  %.pre128.i = load i64, ptr %.phi.trans.insert127.i, align 8, !tbaa !96
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.afv = phi i64 [ %.pre128.i, %bb.ao ], [ %i.afj, %bb.an ]
  %i.afw = phi ptr [ %.pre126.i, %bb.ao ], [ %.pre129.pre.i, %bb.an ]
  %i.afx = phi i64 [ %.pre125.i, %bb.ao ], [ %i.afo, %bb.an ]
  %i.afy = add i64 %i.afx, %..i77
  store i64 %i.afy, ptr %i.afn, align 8, !tbaa !175
  %i.afz = getelementptr inbounds nuw [456 x i8], ptr %i.afw, i64 %i.abs ; 3 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 440
  %i.agb = add i64 %i.afv, %..i77                 ; 3 uses
  store i64 %i.agb, ptr %i.aga, align 8, !tbaa !96
  %i.agc = icmp eq i64 %i.agb, %.0105140.i
  %or.cond.i79 = select i1 %i.aet, i1 %i.agc, i1 false
  br i1 %or.cond.i79, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !37 ; 8 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afz, i64 136
  %i.agg = load ptr, ptr %i.agf, align 8          ; 4 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afz, i64 144
  %i.agi = load i64, ptr %i.agh, align 8
  %i.agj = icmp eq ptr %i.agg, null
  br i1 %i.agj, label %ZSTDMT_releaseBuffer.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.agk = tail call i32 @pthread_mutex_lock(ptr noundef %i.age) #14 ; 0 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.age, i64 52 ; 2 uses
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !56 ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.age, i64 48
  %i.ago = load i32, ptr %i.agn, align 8, !tbaa !57
  %i.agp = icmp ult i32 %i.agm, %i.ago
  br i1 %i.agp, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.agq = getelementptr inbounds nuw i8, ptr %i.age, i64 80
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !58
  %i.ags = add nuw i32 %i.agm, 1
  store i32 %i.ags, ptr %i.agl, align 4, !tbaa !56
  %i.agt = zext i32 %i.agm to i64
  %i.agu = getelementptr inbounds nuw [16 x i8], ptr %i.agr, i64 %i.agt ; 2 uses
  store ptr %i.agg, ptr %i.agu, align 8, !tbaa !43
  %.sroa.4.0..sroa_idx.i.i80 = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  store i64 %i.agi, ptr %.sroa.4.0..sroa_idx.i.i80, align 8, !tbaa !59
  %i.agv = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.age) #14 ; 0 uses
  br label %ZSTDMT_releaseBuffer.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.agw = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.age) #14 ; 0 uses
  %i.agx = getelementptr i8, ptr %i.age, i64 64
  %.val.i.i = load ptr, ptr %i.agx, align 8       ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not4.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.agy = getelementptr i8, ptr %i.age, i64 72
  %.val10.i.i = load ptr, ptr %i.agy, align 8
  tail call void %.val.i.i(ptr noundef %.val10.i.i, ptr noundef nonnull %i.agg) #14, !inline_history !177
  br label %ZSTDMT_releaseBuffer.exit.i

bb.av:                                            ; preds = %bb.at
  tail call void @free(ptr noundef nonnull %i.agg) #14
  br label %ZSTDMT_releaseBuffer.exit.i

ZSTDMT_releaseBuffer.exit.i:                      ; preds = %bb.av, %bb.au, %bb.as, %bb.aq
  %i.agz = load ptr, ptr %i.abq, align 8, !tbaa !35
  %i.aha = getelementptr inbounds nuw [456 x i8], ptr %i.agz, i64 %i.abs
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahb, i8 0, i64 16, i1 false)
  %i.ahc = load ptr, ptr %i.abq, align 8, !tbaa !35
  %i.ahd = getelementptr inbounds nuw [456 x i8], ptr %i.ahc, i64 %i.abs ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  store i64 0, ptr %i.ahe, align 8, !tbaa !94
  %i.ahf = getelementptr inbounds nuw i8, ptr %0, i64 3056 ; 2 uses
  %i.ahg = load i64, ptr %i.ahf, align 8, !tbaa !86
  %i.ahh = add i64 %i.ahg, %i.add
  store i64 %i.ahh, ptr %i.ahf, align 8, !tbaa !86
  %i.ahi = getelementptr inbounds nuw i8, ptr %0, i64 3064 ; 2 uses
  %i.ahj = load i64, ptr %i.ahi, align 8, !tbaa !88
  %i.ahk = add i64 %i.ahj, %.0105140.i
  store i64 %i.ahk, ptr %i.ahi, align 8, !tbaa !88
  %i.ahl = load i32, ptr %i.abl, align 4, !tbaa !93
  %i.ahm = add i32 %i.ahl, 1
  store i32 %i.ahm, ptr %i.abl, align 4, !tbaa !93
  %.phi.trans.insert104 = getelementptr inbounds nuw i8, ptr %i.ahd, i64 440
  %.pre105 = load i64, ptr %.phi.trans.insert104, align 8, !tbaa !96
  br label %bb.aw

bb.aw:                                            ; preds = %ZSTDMT_releaseBuffer.exit.i, %bb.ap
  %i.ahn = phi i64 [ %i.agb, %bb.ap ], [ %.pre105, %ZSTDMT_releaseBuffer.exit.i ] ; 2 uses
  %i.aho = icmp ugt i64 %.0105140.i, %i.ahn
  br i1 %i.aho, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %bb.aw
  %i.ahp = sub nuw i64 %.0105140.i, %i.ahn
  br label %ZSTDMT_flushProduced.exit

.thread:                                          ; preds = %bb.am, %bb.aw
  %.not122.i = icmp ugt i64 %i.adf, %i.add
  br i1 %.not122.i, label %ZSTDMT_flushProduced.exit, label %bb.ay

bb.ay:                                            ; preds = %.thread
  %i.ahq = load i32, ptr %i.abl, align 4, !tbaa !93
  %i.ahr = getelementptr inbounds nuw i8, ptr %0, i64 3032
  %i.ahs = load i32, ptr %i.ahr, align 8, !tbaa !89
  %i.aht = icmp ult i32 %i.ahq, %i.ahs
  br i1 %i.aht, label %ZSTDMT_flushProduced.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ahu = load i32, ptr %i.e, align 8, !tbaa !92
  %.not115.i = icmp eq i32 %i.ahu, 0
  br i1 %.not115.i, label %bb.ba, label %ZSTDMT_flushProduced.exit

bb.ba:                                            ; preds = %bb.az
  %i.ahv = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ahw = load i64, ptr %i.ahv, align 8, !tbaa !87
  %.not116.i = icmp eq i64 %i.ahw, 0
  br i1 %.not116.i, label %bb.bb, label %ZSTDMT_flushProduced.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ahx = load i32, ptr %i.a, align 4, !tbaa !146 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %0, i64 3040
  store i32 %i.ahx, ptr %i.ahy, align 8, !tbaa !11
  %i.ahz = icmp eq i32 %spec.store.select7, 2
  br i1 %i.ahz, label %bb.bc, label %ZSTDMT_flushProduced.exit

bb.bc:                                            ; preds = %bb.bb
  %.not117.i = icmp eq i32 %i.ahx, 0
  %i.aia = zext i1 %.not117.i to i64
  br label %ZSTDMT_flushProduced.exit

ZSTDMT_flushProduced.exit:                        ; preds = %ZSTDMT_waitForAllJobsCompleted.exit.i, %bb.ax, %.thread, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc
  %.1.i75 = phi i64 [ 1, %.thread ], [ 1, %bb.ay ], [ 1, %bb.az ], [ %i.aia, %bb.bc ], [ 1, %bb.ba ], [ 0, %bb.bb ], [ %i.ahp, %bb.ax ], [ %i.adc, %ZSTDMT_waitForAllJobsCompleted.exit.i ] ; 2 uses
  %i.aib = load i64, ptr %i.xm, align 8, !tbaa !149
  %i.aic = load i64, ptr %i.xo, align 8, !tbaa !147
  %i.aid = icmp ult i64 %i.aib, %i.aic
  %i.aie = tail call i64 @llvm.umax.i64(i64 %.1.i75, i64 1)
  %.1 = select i1 %i.aid, i64 %i.aie, i64 %.1.i75
  br label %bb.bd

bb.bd:                                            ; preds = %bb.a, %ZSTDMT_flushProduced.exit
  %.2 = phi i64 [ -60, %bb.a ], [ %.1, %ZSTDMT_flushProduced.exit ]
  ret i64 %.2
}

declare ptr @POOL_create_advanced(i64 noundef, i64 noundef, ptr noundef byval(%struct.ZSTD_customMem) align 8) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @ZSTDMT_createJobsTable(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.a, i1 true) ; 2 uses
  %i.c = xor i32 %i.b, 31
  %i.d = shl nuw i32 2, %i.c                      ; 2 uses
  %i.e = sub nuw nsw i32 32, %i.b
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw nsw i64 456, %i.f                ; 3 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !122   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val23 = load ptr, ptr %i.h, align 8           ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr %.val(ptr noundef %.val23, i64 noundef range(i64 -17179869184, 1958505086521) %i.g) #14, !inline_history !178 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, i8 0, i64 range(i64 -17179869184, 1958505086521) %i.g, i1 false)
  br label %ZSTD_customCalloc.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef range(i64 -17179869184, 1958505086521) %i.g) #15
  br label %ZSTD_customCalloc.exit

ZSTD_customCalloc.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 6 uses
  %i.k = icmp eq ptr %.0.i, null
  br i1 %i.k, label %ZSTDMT_freeJobsTable.exit, label %bb.d

bb.d:                                             ; preds = %ZSTD_customCalloc.exit
  store i32 %i.d, ptr %0, align 4, !tbaa !9
  %wide.trip.count = zext i32 %i.d to i64         ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.028 = phi i32 [ 0, %bb.d ], [ %i.r, %bb.e ]
  %i.l = getelementptr inbounds nuw [456 x i8], ptr %.0.i, i64 %indvars.iv ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.m, ptr noundef null) #14
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.p = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.o, ptr noundef null) #14
  %i.q = or i32 %i.n, %.028
  %i.r = or i32 %i.q, %i.p                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.f, label %bb.e, !llvm.loop !179

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %ZSTDMT_freeJobsTable.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val24 = load ptr, ptr %i.s, align 8           ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [456 x i8], ptr %.0.i, i64 %indvars.iv.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.u) #14 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.x = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.w) #14 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !44

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not4.i.i = icmp eq ptr %.val24, null
  br i1 %.not4.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  tail call void %.val24(ptr noundef %.val23, ptr noundef nonnull %.0.i) #14, !inline_history !46
  br label %ZSTDMT_freeJobsTable.exit

bb.h:                                             ; preds = %._crit_edge.i
  tail call void @free(ptr noundef nonnull %.0.i) #14
  br label %ZSTDMT_freeJobsTable.exit

ZSTDMT_freeJobsTable.exit:                        ; preds = %bb.h, %bb.g, %bb.f, %ZSTD_customCalloc.exit
  %.020 = phi ptr [ null, %ZSTD_customCalloc.exit ], [ %.0.i, %bb.f ], [ null, %bb.g ], [ null, %bb.h ]
  ret ptr %.020
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @ZSTDMT_createBufferPool(i32 noundef %0, ptr nofree noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %.val15 = load ptr, ptr %1, align 8, !tbaa !122 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val16 = load ptr, ptr %i.a, align 8           ; 3 uses
  %.not.i = icmp eq ptr %.val15, null
  br i1 %.not.i, label %ZSTD_customCalloc.exit, label %.thread

ZSTD_customCalloc.exit:                           ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #15 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ZSTD_customFree.exit, label %bb.b

bb.b:                                             ; preds = %ZSTD_customCalloc.exit
  %i.d = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.b, ptr noundef null) #14
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.e = tail call ptr %.val15(ptr noundef %.val16, i64 noundef 88) #14, !inline_history !178 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %i.e, i8 0, i64 88, i1 false)
  %i.f = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.e, ptr noundef null) #14
  %.not26 = icmp eq i32 %i.f, 0
  br i1 %.not26, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.0.i2428 = phi ptr [ %i.e, %.thread ], [ %i.b, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val17 = load ptr, ptr %i.g, align 8           ; 2 uses
  %.not4.i = icmp eq ptr %.val17, null
  br i1 %.not4.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %.val17(ptr noundef %.val16, ptr noundef nonnull %.0.i2428) #14, !inline_history !52
  br label %ZSTD_customFree.exit

bb.e:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %.0.i2428) #14
  br label %ZSTD_customFree.exit

bb.f:                                             ; preds = %.thread
  %i.h = zext i32 %0 to i64
  %i.i = shl nuw nsw i64 %i.h, 4                  ; 2 uses
  %i.j = tail call ptr %.val15(ptr noundef %.val16, i64 noundef range(i64 -17179869184, 1958505086521) %i.i) #14, !inline_history !178 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.j, i8 0, i64 range(i64 -17179869184, 1958505086521) %i.i, i1 false)
  br label %ZSTD_customCalloc.exit22

bb.g:                                             ; preds = %bb.b
  %i.k = zext i32 %0 to i64
  %i.l = shl nuw nsw i64 %i.k, 4
  %i.m = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef range(i64 -17179869184, 1958505086521) %i.l) #15
  br label %ZSTD_customCalloc.exit22

ZSTD_customCalloc.exit22:                         ; preds = %bb.f, %bb.g
  %.0.i242731 = phi ptr [ %i.e, %bb.f ], [ %i.b, %bb.g ] ; 7 uses
  %.0.i21 = phi ptr [ %i.j, %bb.f ], [ %i.m, %bb.g ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i242731, i64 80
  store ptr %.0.i21, ptr %i.n, align 8, !tbaa !58
  %i.o = icmp eq ptr %.0.i21, null
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %ZSTD_customCalloc.exit22
  tail call fastcc void @ZSTDMT_freeBufferPool(ptr noundef nonnull %.0.i242731)
  br label %ZSTD_customFree.exit

bb.i:                                             ; preds = %ZSTD_customCalloc.exit22
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i242731, i64 40
  store i64 65536, ptr %i.p, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i242731, i64 48
  store i32 %0, ptr %i.q, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i242731, i64 52
  store i32 0, ptr %i.r, align 4, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i242731, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !103
  br label %ZSTD_customFree.exit

ZSTD_customFree.exit:                             ; preds = %bb.e, %bb.d, %ZSTD_customCalloc.exit, %bb.i, %bb.h
  %.0 = phi ptr [ %.0.i242731, %bb.i ], [ null, %ZSTD_customCalloc.exit ], [ null, %bb.h ], [ null, %bb.d ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @ZSTDMT_createCCtxPool(i32 noundef %0, ptr nofree noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %.val20 = load ptr, ptr %1, align 8, !tbaa !122 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val21 = load ptr, ptr %i.a, align 8           ; 3 uses
  %.not.i = icmp eq ptr %.val20, null             ; 2 uses
  br i1 %.not.i, label %ZSTD_customCalloc.exit, label %ZSTD_customCalloc.exit.thread

ZSTD_customCalloc.exit.thread:                    ; preds = %bb.a
  %i.b = tail call ptr %.val20(ptr noundef %.val21, i64 noundef 80) #14, !inline_history !178 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  br label %bb.b

ZSTD_customCalloc.exit:                           ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #15 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %ZSTD_customFree.exit, label %bb.b

bb.b:                                             ; preds = %ZSTD_customCalloc.exit.thread, %ZSTD_customCalloc.exit
  %.0.i30 = phi ptr [ %i.b, %ZSTD_customCalloc.exit.thread ], [ %i.c, %ZSTD_customCalloc.exit ] ; 10 uses
  %i.d = tail call i32 @pthread_mutex_init(ptr noundef nonnull %.0.i30, ptr noundef null) #14
  %.not16 = icmp eq i32 %i.d, 0
  br i1 %.not16, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val22 = load ptr, ptr %i.e, align 8           ; 2 uses
  %.not4.i = icmp eq ptr %.val22, null
  br i1 %.not4.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %.val22(ptr noundef %.val21, ptr noundef nonnull %.0.i30) #14, !inline_history !52
  br label %ZSTD_customFree.exit

bb.e:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %.0.i30) #14
  br label %ZSTD_customFree.exit

bb.f:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i30, i64 40
  store i32 %0, ptr %i.f, align 8, !tbaa !68
  %i.g = sext i32 %0 to i64
  %i.h = shl nsw i64 %i.g, 3                      ; 3 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call ptr %.val20(ptr noundef %.val21, i64 noundef range(i64 -17179869184, 1958505086521) %i.h) #14, !inline_history !178 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 0, i64 range(i64 -17179869184, 1958505086521) %i.h, i1 false)
  br label %ZSTD_customCalloc.exit27

bb.h:                                             ; preds = %bb.f
  %i.j = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef range(i64 -17179869184, 1958505086521) %i.h) #15
  br label %ZSTD_customCalloc.exit27

ZSTD_customCalloc.exit27:                         ; preds = %bb.g, %bb.h
  %.0.i26 = phi ptr [ %i.i, %bb.g ], [ %i.j, %bb.h ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i30, i64 72 ; 2 uses
  store ptr %.0.i26, ptr %i.k, align 8, !tbaa !64
  %.not17 = icmp eq ptr %.0.i26, null
  br i1 %.not17, label %bb.i, label %bb.j

bb.i:                                             ; preds = %ZSTD_customCalloc.exit27
  tail call fastcc void @ZSTDMT_freeCCtxPool(ptr noundef nonnull %.0.i30)
  br label %ZSTD_customFree.exit

bb.j:                                             ; preds = %ZSTD_customCalloc.exit27
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i30, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !103
  %i.m = tail call ptr @ZSTD_createCCtx_advanced(ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %1) #14 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !64
  store ptr %i.m, ptr %i.n, align 8, !tbaa !69
  %.not18 = icmp eq ptr %i.m, null
  br i1 %.not18, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @ZSTDMT_freeCCtxPool(ptr noundef nonnull %.0.i30)
  br label %ZSTD_customFree.exit

bb.l:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i30, i64 44
  store i32 1, ptr %i.o, align 4, !tbaa !180
  br label %ZSTD_customFree.exit

ZSTD_customFree.exit:                             ; preds = %bb.e, %bb.d, %ZSTD_customCalloc.exit, %bb.l, %bb.k, %bb.i
  %.0 = phi ptr [ null, %ZSTD_customCalloc.exit ], [ %.0.i30, %bb.l ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.d ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @ZSTD_CCtxParams_setParameter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #3
end_hunk_0
begin_hunk_1_@ZSTDMT_compressionJob:bb.a
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !57
  %i.ix = icmp ult i32 %i.iu, %i.iw
  br i1 %i.ix, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.iy = getelementptr inbounds nuw i8, ptr %i.io, i64 80
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !58
  %i.ja = add nuw i32 %i.iu, 1
  store i32 %i.ja, ptr %i.it, align 4, !tbaa !56
  %i.jb = zext i32 %i.iu to i64
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %i.jb ; 2 uses
  store ptr %.val184, ptr %i.jc, align 8, !tbaa !43
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i64 %i.iq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !59
  %i.jd = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.io) #14 ; 0 uses
  br label %ZSTDMT_releaseSeq.exit

bb.av:                                            ; preds = %bb.at
  %i.je = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.io) #14 ; 0 uses
  %i.jf = getelementptr i8, ptr %i.io, i64 64
  %.val.i.i = load ptr, ptr %i.jf, align 8        ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not4.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jg = getelementptr i8, ptr %i.io, i64 72
  %.val10.i.i = load ptr, ptr %i.jg, align 8
  call void %.val.i.i(ptr noundef %.val10.i.i, ptr noundef nonnull %.val184) #14, !inline_history !198
  br label %ZSTDMT_releaseSeq.exit

bb.ax:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %.val184) #14
  br label %ZSTDMT_releaseSeq.exit

ZSTDMT_releaseSeq.exit:                           ; preds = %ZSTDMT_serialState_ensureFinished.exit, %bb.au, %bb.aw, %bb.ax
  %i.jh = load ptr, ptr %i.b, align 8, !tbaa !181 ; 5 uses
  br i1 %i.ae, label %ZSTDMT_releaseCCtx.exit, label %bb.ay

bb.ay:                                            ; preds = %ZSTDMT_releaseSeq.exit
  %i.ji = call i32 @pthread_mutex_lock(ptr noundef %i.jh) #14 ; 0 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 44 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !180 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !68
  %i.jn = icmp slt i32 %i.jk, %i.jm
  br i1 %i.jn, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jh, i64 72
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !64
  %i.jq = add nsw i32 %i.jk, 1
  store i32 %i.jq, ptr %i.jj, align 4, !tbaa !180
  %i.jr = sext i32 %i.jk to i64
  %i.js = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %i.jr
  store ptr %.0.i, ptr %i.js, align 8, !tbaa !69
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.jt = call i64 @ZSTD_freeCCtx(ptr noundef nonnull %.0.i) #14 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ju = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.jh) #14 ; 0 uses
  br label %ZSTDMT_releaseCCtx.exit

ZSTDMT_releaseCCtx.exit:                          ; preds = %ZSTDMT_releaseSeq.exit, %bb.bb
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jx = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.jw) #14 ; 0 uses
  %i.jy = load i64, ptr %i.jv, align 8, !tbaa !94
  %i.jz = add i64 %i.jy, %.3164
  store i64 %i.jz, ptr %i.jv, align 8, !tbaa !94
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !97
  store i64 %i.kb, ptr %0, align 8, !tbaa !98
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.kd = call i32 @pthread_cond_signal(ptr noundef nonnull %i.kc) #14 ; 0 uses
  %i.ke = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.jw) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc { ptr, i64 } @ZSTDMT_getBuffer(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef %0) #14 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !56   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %ZSTD_customFree.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.h = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.h, ptr %i.d, align 4, !tbaa !56
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.i ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !43 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !59 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = icmp ult i64 %.sroa.4.0.copyload, %i.b
  %i.l = lshr i64 %.sroa.4.0.copyload, 3
  %i.m = icmp ugt i64 %i.l, %i.b
  %.not24 = or i1 %i.k, %i.m
  br i1 %.not24, label %bb.c, label %ZSTD_customFree.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 72
  %.val25 = load ptr, ptr %i.o, align 8
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i, label %ZSTD_customFree.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not4.i = icmp eq ptr %.val, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %.val(ptr noundef %.val25, ptr noundef nonnull %.sroa.0.0.copyload) #14, !inline_history !52
  br label %ZSTD_customFree.exit.thread

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %.sroa.0.0.copyload) #14
  br label %ZSTD_customFree.exit.thread

ZSTD_customFree.exit:                             ; preds = %bb.b
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.i

ZSTD_customFree.exit.thread:                      ; preds = %bb.c, %bb.e, %bb.f, %bb.a
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #14 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val26 = load ptr, ptr %i.r, align 8, !tbaa !122 ; 2 uses
  %.not.i28 = icmp eq ptr %.val26, null
  br i1 %.not.i28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %ZSTD_customFree.exit.thread
  %i.s = getelementptr i8, ptr %0, i64 72
  %.val27 = load ptr, ptr %i.s, align 8
  %i.t = tail call ptr %.val26(ptr noundef %.val27, i64 noundef %i.b) #14, !inline_history !123
  br label %ZSTD_customMalloc.exit

bb.h:                                             ; preds = %ZSTD_customFree.exit.thread
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.b) #16
  br label %ZSTD_customMalloc.exit

ZSTD_customMalloc.exit:                           ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.t, %bb.g ], [ %i.u, %bb.h ] ; 2 uses
  %i.v = icmp eq ptr %.0.i, null
  %i.w = select i1 %i.v, i64 0, i64 %i.b
  br label %bb.i

bb.i:                                             ; preds = %ZSTD_customFree.exit, %ZSTD_customMalloc.exit
  %.sroa.0.0 = phi ptr [ %.0.i, %ZSTD_customMalloc.exit ], [ %.sroa.0.0.copyload, %ZSTD_customFree.exit ]
  %.sroa.4.0 = phi i64 [ %i.w, %ZSTD_customMalloc.exit ], [ %.sroa.4.0.copyload, %ZSTD_customFree.exit ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare i64 @ZSTD_writeLastEmptyBlock(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @ZSTD_compressBegin_advanced_internal(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @ZSTD_compressContinue_public(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ZSTD_invalidateRepCodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #3

declare i64 @ZSTD_compressEnd_public(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ZSTD_CCtx_trace(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @ZSTD_ldm_generateSequences(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ZSTD_XXH64_update(ptr noundef captures(address), ptr noundef captures(address), i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #3

declare void @ZSTD_referenceExternalSequences(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64_digest(ptr noundef captures(address)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = distinct !{null, null}
!11 = !{!12, !6, i64 3040}
!12 = !{!"ZSTDMT_CCtx_s", !13, i64 0, !14, i64 8, !15, i64 16, !14, i64 24, !15, i64 32, !16, i64 40, !19, i64 264, !19, i64 272, !6, i64 280, !22, i64 288, !25, i64 328, !27, i64 352, !31, i64 3000, !6, i64 3024, !6, i64 3028, !6, i64 3032, !6, i64 3036, !6, i64 3040, !32, i64 3048, !32, i64 3056, !32, i64 3064, !21, i64 3072, !33, i64 3096, !33, i64 3104, !6, i64 3112}
!13 = !{!"p1 _ZTS10POOL_ctx_s", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"p1 _ZTS19ZSTDMT_bufferPool_s", !14, i64 0}
!16 = !{!"ZSTD_CCtx_params_s", !6, i64 0, !17, i64 4, !18, i64 32, !6, i64 44, !6, i64 48, !19, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !19, i64 80, !6, i64 88, !6, i64 92, !20, i64 96, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !19, i64 152, !6, i64 160, !6, i64 164, !21, i64 168, !6, i64 192, !6, i64 196, !14, i64 200, !14, i64 208, !6, i64 216}
!17 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!18 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!19 = !{!"long", !7, i64 0}
!20 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!21 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16}
!22 = !{!"", !23, i64 0, !24, i64 16, !19, i64 32}
!23 = !{!"", !14, i64 0, !19, i64 8}
!24 = !{!"buffer_s", !14, i64 0, !19, i64 8}
!25 = !{!"", !26, i64 0, !19, i64 8, !19, i64 16}
!26 = !{!"p1 omnipotent char", !14, i64 0}
!27 = !{!"", !7, i64 0, !7, i64 40, !16, i64 88, !28, i64 312, !30, i64 2424, !6, i64 2512, !7, i64 2520, !7, i64 2560, !29, i64 2608}
!28 = !{!"", !29, i64 0, !14, i64 40, !6, i64 48, !26, i64 56, !7, i64 64, !7, i64 576}
!29 = !{!"", !26, i64 0, !26, i64 8, !26, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!30 = !{!"XXH64_state_s", !19, i64 0, !7, i64 8, !7, i64 40, !6, i64 72, !6, i64 76, !19, i64 80}
!31 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16}
!32 = !{!"long long", !7, i64 0}
!33 = !{!"p1 _ZTS12ZSTD_CDict_s", !14, i64 0}
!34 = !{!12, !13, i64 0}
!35 = !{!12, !14, i64 8}
!36 = !{!12, !6, i64 3024}
!37 = !{!12, !15, i64 16}
!38 = !{!12, !14, i64 24}
!39 = !{!40, !19, i64 40}
!40 = !{!"ZSTDMT_bufferPool_s", !7, i64 0, !19, i64 40, !6, i64 48, !6, i64 52, !21, i64 56, !41, i64 80}
!41 = !{!"p1 _ZTS8buffer_s", !14, i64 0}
!42 = !{!12, !15, i64 32}
!43 = !{!14, !14, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = distinct !{null, null}
!47 = !{!27, !14, i64 352}
!48 = distinct !{null, null}
!49 = !{!27, !26, i64 368}
!50 = !{!12, !33, i64 3096}
!51 = !{!12, !26, i64 328}
!52 = distinct !{null}
!53 = !{i64 0, i64 40, !54}
!54 = !{!7, !7, i64 0}
!55 = !{i64 0, i64 48, !54}
!56 = !{!40, !6, i64 52}
!57 = !{!40, !6, i64 48}
!58 = !{!40, !41, i64 80}
!59 = !{!19, !19, i64 0}
!60 = distinct !{null, null}
!61 = distinct !{!61, !45}
!62 = !{!24, !14, i64 0}
!63 = distinct !{!63, !45}
!64 = !{!65, !66, i64 72}
!65 = !{!"", !7, i64 0, !6, i64 40, !6, i64 44, !21, i64 48, !66, i64 72}
!66 = !{!"p2 _ZTS11ZSTD_CCtx_s", !67, i64 0}
!67 = !{!"any p2 pointer", !14, i64 0}
!68 = !{!65, !6, i64 40}
!69 = !{!70, !70, i64 0}
!70 = !{!"p1 _ZTS11ZSTD_CCtx_s", !14, i64 0}
!71 = distinct !{!71, !45}
!72 = !{!24, !19, i64 8}
!73 = distinct !{!73, !45, !74, !75}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = distinct !{!76, !45, !75, !74}
!77 = distinct !{!77, !45}
!78 = distinct !{!78, !45, !74, !75}
!79 = distinct !{!79, !45, !75, !74}
!80 = !{!12, !19, i64 336}
!81 = !{!12, !6, i64 44}
!82 = !{!16, !6, i64 44}
!83 = !{!12, !6, i64 84}
!84 = !{!17, !6, i64 0}
!85 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 4, !9, i64 20, i64 4, !9, i64 24, i64 4, !9}
!86 = !{!12, !32, i64 3056}
!87 = !{!12, !19, i64 320}
!88 = !{!12, !32, i64 3064}
!89 = !{!12, !6, i64 3032}
!90 = !{!91, !6, i64 32}
!91 = !{!"", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !6, i64 32, !6, i64 36}
!92 = !{!12, !6, i64 280}
!93 = !{!12, !6, i64 3028}
!94 = !{!95, !19, i64 8}
!95 = !{!"", !19, i64 0, !19, i64 8, !7, i64 16, !7, i64 56, !14, i64 104, !15, i64 112, !15, i64 120, !14, i64 128, !24, i64 136, !23, i64 152, !23, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !16, i64 200, !33, i64 424, !32, i64 432, !19, i64 440, !6, i64 448}
!96 = !{!95, !19, i64 440}
!97 = !{!95, !19, i64 176}
!98 = !{!95, !19, i64 0}
!99 = distinct !{!99, !45}
!100 = !{!16, !6, i64 76}
!101 = !{!12, !6, i64 116}
!102 = distinct !{null, null, null, null}
!103 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43}
!104 = !{!16, !19, i64 80}
!105 = distinct !{!105, !45}
!106 = distinct !{!106, !45}
!107 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 4, !9, i64 20, i64 4, !9, i64 24, i64 4, !9, i64 28, i64 4, !9, i64 32, i64 4, !9, i64 36, i64 4, !9, i64 40, i64 4, !9, i64 44, i64 4, !9, i64 48, i64 4, !9, i64 56, i64 8, !59, i64 64, i64 4, !9, i64 68, i64 4, !9, i64 72, i64 4, !9, i64 76, i64 4, !9, i64 80, i64 8, !59, i64 88, i64 4, !9, i64 92, i64 4, !9, i64 96, i64 4, !9, i64 100, i64 4, !9, i64 104, i64 4, !9, i64 108, i64 4, !9, i64 112, i64 4, !9, i64 116, i64 4, !9, i64 120, i64 4, !9, i64 124, i64 4, !9, i64 128, i64 4, !9, i64 132, i64 4, !9, i64 136, i64 4, !9, i64 140, i64 4, !9, i64 144, i64 4, !9, i64 152, i64 8, !59, i64 160, i64 4, !9, i64 164, i64 4, !9, i64 168, i64 8, !43, i64 176, i64 8, !43, i64 184, i64 8, !43, i64 192, i64 4, !9, i64 196, i64 4, !9, i64 200, i64 8, !43, i64 208, i64 8, !43, i64 216, i64 4, !9}
!108 = !{!12, !32, i64 3048}
!109 = !{!12, !33, i64 3104}
!110 = !{!16, !6, i64 88}
!111 = !{!16, !6, i64 28}
!112 = !{!16, !6, i64 4}
!113 = !{!16, !6, i64 96}
!114 = !{!16, !6, i64 8}
!115 = !{!12, !19, i64 272}
!116 = !{!12, !19, i64 264}
!117 = !{!16, !6, i64 92}
!118 = !{!12, !19, i64 3000}
!119 = !{!12, !19, i64 3008}
!120 = !{!12, !19, i64 3016}
!121 = !{!12, !6, i64 136}
!122 = !{!21, !14, i64 0}
!123 = distinct !{null}
!124 = !{!12, !19, i64 344}
!125 = !{!12, !14, i64 288}
!126 = !{!12, !19, i64 296}
!127 = !{!27, !6, i64 2512}
!128 = !{!16, !6, i64 36}
!129 = !{!16, !6, i64 100}
!130 = !{!16, !6, i64 104}
!131 = !{!27, !6, i64 188}
!132 = !{!27, !6, i64 192}
!133 = !{!29, !26, i64 8}
!134 = !{!29, !26, i64 16}
!135 = !{!29, !6, i64 24}
!136 = !{!29, !6, i64 28}
!137 = !{!29, !26, i64 0}
!138 = distinct !{null, null}
!139 = distinct !{null, null}
!140 = !{!27, !6, i64 360}
!141 = !{!16, !6, i64 48}
!142 = !{!27, !26, i64 320}
!143 = !{i64 0, i64 8, !144, i64 8, i64 8, !144, i64 16, i64 8, !144, i64 24, i64 4, !9, i64 28, i64 4, !9, i64 32, i64 4, !9}
!144 = !{!26, !26, i64 0}
!145 = !{!27, !19, i64 168}
!146 = !{!12, !6, i64 3036}
!147 = !{!148, !19, i64 8}
!148 = !{!"ZSTD_inBuffer_s", !14, i64 0, !19, i64 8, !19, i64 16}
!149 = !{!148, !19, i64 16}
!150 = !{!12, !14, i64 304}
!151 = distinct !{!151, !45}
!152 = distinct !{!152, !45}
!153 = !{!12, !6, i64 132}
!154 = distinct !{!154, !45}
!155 = distinct !{!155, !156}
!156 = !{!"llvm.loop.unroll.disable"}
!157 = distinct !{!157, !156}
!158 = distinct !{!158, !45}
!159 = !{!95, !14, i64 168}
!160 = !{i64 0, i64 8, !43, i64 8, i64 8, !59}
!161 = !{!95, !33, i64 424}
!162 = !{!95, !32, i64 432}
end_hunk_1

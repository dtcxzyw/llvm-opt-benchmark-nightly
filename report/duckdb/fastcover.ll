inline.NumInlined: 29
inline.NumDeleted: 15
begin_hunk_0_@_ZN11duckdb_zstd31ZDICT_trainFromBuffer_fastCoverEPvmPKvPKmjNS_24ZDICT_fastCover_params_tE:bb.a
  %i.bd = tail call noalias ptr @calloc(i64 noundef %i.bc, i64 noundef 2) #15 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !23 ; 2 uses
  store i32 %.sroa.048.0.copyload, ptr %7, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.249.0.copyload, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !3
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x i32> %i.j, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !3
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double 1.000000e+00, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !24
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.sroa.955.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !3
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 0, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !3
  %.sroa.16.sroa.4.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.16.sroa.4.0..sroa.16.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.16.sroa.4, i64 12, i1 false), !tbaa.struct !25
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 0, ptr %.sroa.18.0..sroa_idx, align 4
  %i.bg = call fastcc noundef i64 @_ZN11duckdb_zstdL25FASTCOVER_buildDictionaryEPKNS_15FASTCOVER_ctx_tEPjPvmNS_20ZDICT_cover_params_tEPt(ptr noundef nonnull %6, ptr noundef %i.bf, ptr noundef %0, i64 noundef %1, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZDICT_cover_params_t") align 8 %7, ptr noundef %i.bd) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !27
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul i64 %i.bi, %i.bl
  %i.bn = udiv i64 %i.bm, 100
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg
  %i.bq = sub i64 %1, %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false)
  %i.br = tail call noundef i64 @_ZN11duckdb_zstd24ZDICT_finalizeDictionaryEPvmPKvmS2_PKmjNS_14ZDICT_params_tE(ptr noundef %0, i64 noundef %1, ptr noundef %i.bp, i64 noundef %i.bq, ptr noundef %2, ptr noundef %3, i32 noundef %i.bo, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZDICT_params_t") align 8 %8) ; 3 uses
  %i.bs = icmp ult i64 %i.br, -119
  %i.bt = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4
  %i.bu = icmp sgt i32 %i.bt, 1
  %or.cond = select i1 %i.bs, i1 %i.bu, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bw = trunc i64 %i.br to i32
  %i.bx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bv, ptr noundef nonnull @.str.5, i32 noundef %i.bw) #14 ; 0 uses
  %i.by = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bz = tail call i32 @fflush(ptr noundef %i.by) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @free(ptr noundef %i.bf) #12
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.cb) #12
  tail call void @free(ptr noundef %i.bd) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.j, %bb.f, %bb.g, %_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit.thread, %bb.d, %bb.q
  %.1 = phi i64 [ -42, %_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit.thread ], [ -72, %bb.f ], [ %i.br, %bb.q ], [ -70, %bb.i ], [ -42, %bb.d ], [ -72, %bb.g ], [ -70, %bb.j ], [ %i.ak, %bb.l ], [ %i.ak, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 -72, 1) i64 @_ZN11duckdb_zstdL18FASTCOVER_ctx_initEPNS_15FASTCOVER_ctx_tEPKvPKmjjdjNS_17FASTCOVER_accel_tE(ptr noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, double noundef %5, i32 noundef %6, i64 %7) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN11duckdb_zstd9COVER_sumEPKmj(ptr noundef %2, i32 noundef %3) ; 5 uses
  %i.b = fcmp olt double %5, 1.000000e+00         ; 3 uses
  %i.c = uitofp i32 %3 to double
  %i.d = fmul double %5, %i.c
  %i.e = fptoui double %i.d to i32                ; 4 uses
  %i.f = select i1 %i.b, i32 %i.e, i32 0          ; 2 uses
  %i.g = select i1 %i.b, i32 %i.e, i32 %3         ; 4 uses
  %i.h = sub i32 %3, %i.f                         ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @_ZN11duckdb_zstd9COVER_sumEPKmj(ptr noundef %2, i32 noundef %i.e)
  %i.j = zext i32 %i.e to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.l = tail call noundef i64 @_ZN11duckdb_zstd9COVER_sumEPKmj(ptr noundef %i.k, i32 noundef %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.n = phi i64 [ %i.l, %bb.b ], [ %i.a, %bb.a ]
  %i.o = tail call i32 @llvm.umax.i32(i32 %4, i32 8)
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp ult i64 %i.a, %i.p
  %i.r = icmp ugt i64 %i.a, 4294967294
  %or.cond = or i1 %i.q, %i.r
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.v = lshr i64 %i.a, 20
  %i.w = trunc i64 %i.v to i32
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.16, i32 noundef %i.w, i32 noundef 4095) #14 ; 0 uses
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.z = tail call i32 @fflush(ptr noundef %i.y)  ; 0 uses
  br label %_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit

bb.f:                                             ; preds = %bb.c
  %i.aa = icmp ult i32 %i.g, 5
  br i1 %i.aa, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ab = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.17, i32 noundef %i.g) #14 ; 0 uses
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ag = tail call i32 @fflush(ptr noundef %i.af) ; 0 uses
  br label %_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit

bb.i:                                             ; preds = %bb.f
  %i.ah = icmp eq i32 %3, %i.f
  br i1 %i.ah, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ai = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.18, i32 noundef 0) #14 ; 0 uses
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.an = tail call i32 @fflush(ptr noundef %i.am) ; 0 uses
  br label %_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit

bb.l:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %i.ao = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.m, label %.thread81

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ar = trunc i64 %i.m to i32
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.19, i32 noundef %i.g, i32 noundef %i.ar) #14 ; 0 uses
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.au = tail call i32 @fflush(ptr noundef %i.at) ; 0 uses
  %.pr = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.av = icmp sgt i32 %.pr, 1
  br i1 %i.av, label %bb.n, label %.thread81

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ax = trunc i64 %i.n to i32
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.20, i32 noundef %i.h, i32 noundef %i.ax) #14 ; 0 uses
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ba = tail call i32 @fflush(ptr noundef %i.az) ; 0 uses
  br label %.thread81

.thread81:                                        ; preds = %bb.l, %bb.n, %bb.m
  store ptr %1, ptr %0, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.bb, align 8, !tbaa !30
  %i.bc = zext i32 %3 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !31
  %i.be = zext i32 %i.g to i64                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !26
  %i.bg = zext i32 %i.h to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !32
  %reass.sub = sub i64 %i.m, %i.p
  %i.bi = add i64 %reass.sub, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i32 %4, ptr %i.bk, align 8, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store i32 %6, ptr %i.bl, align 4, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %7, ptr %i.bm, align 8
  %i.bn = add i32 %3, 1                           ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = tail call noalias ptr @calloc(i64 noundef %i.bo, i64 noundef 8) #15 ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !28
  %i.br = icmp eq ptr %i.bp, null
  br i1 %i.br, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.thread81
  %i.bs = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bu = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bv = tail call i64 @fwrite(ptr nonnull @.str.21, i64 36, i64 1, ptr %i.bu) #13 ; 0 uses
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bx = tail call i32 @fflush(ptr noundef %i.bw) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.bz) #12
  store ptr null, ptr %i.by, align 8, !tbaa !23
  %i.ca = load ptr, ptr %i.bq, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.ca) #12
  store ptr null, ptr %i.bq, align 8, !tbaa !28
  br label %_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit

bb.r:                                             ; preds = %.thread81
  store i64 0, ptr %i.bp, align 8, !tbaa !35
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 2) ; 2 uses
  %wide.trip.count = zext i32 %umax to i64
  %i.cb = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.cb, 3                    ; 3 uses
  %i.cc = add i32 %umax, -2
  %i.cd = icmp ult i32 %i.cc, 3
  br i1 %i.cd, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.r
  %unroll_iter = and i64 %i.cb, -4
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.new
  %i.ce = phi i64 [ 0, %.new ], [ %i.cx, %bb.s ]
  %indvars.iv = phi i64 [ 1, %.new ], [ %indvars.iv.next.3, %bb.s ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.s ]
  %i.cf = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !35
  %i.ci = add i64 %i.ch, %i.ce                    ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !35
  %i.cn = add i64 %i.cm, %i.ci                    ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !35
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cp = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.cq = getelementptr i8, ptr %i.cp, i64 -8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !35
  %i.cs = add i64 %i.cr, %i.cn                    ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.1
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !35
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cu = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.cv = getelementptr i8, ptr %i.cu, i64 -8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !35
  %i.cx = add i64 %i.cw, %i.cs                    ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.2
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !35
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.s, !llvm.loop !36

.unr-lcssa:                                       ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.r
  %.epil.init = phi i64 [ 0, %bb.r ], [ %i.cx, %.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %bb.r ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %lcmp.mod94 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod94)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %i.cz = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.dd, %bb.t ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.t ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.t ]
  %i.da = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.db = getelementptr i8, ptr %i.da, i64 -8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !35
  %i.dd = add i64 %i.dc, %i.cz                    ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.epil
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !35
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.t, !llvm.loop !38

.epilog-lcssa:                                    ; preds = %bb.t, %.unr-lcssa
  %i.df = zext nneg i32 %6 to i64
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = tail call noalias ptr @calloc(i64 noundef %i.dg, i64 noundef 4) #15 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !23
  %i.dj = icmp eq ptr %i.dh, null
  %i.dk = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3 ; 2 uses
  br i1 %i.dj, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.epilog-lcssa
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dm = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dn = tail call i64 @fwrite(ptr nonnull @.str.22, i64 36, i64 1, ptr %i.dm) #13 ; 0 uses
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dp = tail call i32 @fflush(ptr noundef %i.do) ; 0 uses
  %.pre85 = load ptr, ptr %i.di, align 8, !tbaa !23
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dq = phi ptr [ %.pre85, %bb.v ], [ null, %bb.u ]
  tail call void @free(ptr noundef %i.dq) #12
  store ptr null, ptr %i.di, align 8, !tbaa !23
  %i.dr = load ptr, ptr %i.bq, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.dr) #12
  store ptr null, ptr %i.bq, align 8, !tbaa !28
  br label %_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit

bb.x:                                             ; preds = %.epilog-lcssa
  %i.ds = icmp sgt i32 %i.dk, 1
  br i1 %i.ds, label %bb.y, label %.lr.ph26.i

bb.y:                                             ; preds = %bb.x
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.du = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %i.dt) #13 ; 0 uses
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dw = tail call i32 @fflush(ptr noundef %i.dv) ; 0 uses
  %.pre = load ptr, ptr %i.di, align 8, !tbaa !23
  %.pre84 = load i64, ptr %i.bf, align 8, !tbaa !26 ; 2 uses
  %.not27.i = icmp eq i64 %.pre84, 0
  br i1 %.not27.i, label %_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %bb.x, %bb.y
  %i.dx = phi ptr [ %.pre, %bb.y ], [ %i.dh, %bb.x ]
  %i.dy = phi i64 [ %.pre84, %bb.y ], [ %i.be, %bb.x ]
  %i.dz = load i32, ptr %i.bk, align 8, !tbaa !33 ; 2 uses
  %i.ea = tail call i32 @llvm.umax.i32(i32 %i.dz, i32 8)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !40
  %i.ed = load i32, ptr %i.bl, align 4, !tbaa !34
  %i.ee = load ptr, ptr %i.bq, align 8, !tbaa !28 ; 2 uses
  %i.ef = zext i32 %i.ea to i64                   ; 2 uses
  %i.eg = icmp eq i32 %i.dz, 6
  %i.eh = sub i32 64, %i.ed
  %i.ei = zext nneg i32 %i.eh to i64
  %..i.i = select i1 %i.eg, i64 -3523014627193847808, i64 -3523014627327384477
  %i.ej = zext i32 %i.ec to i64
  %i.ek = add nuw nsw i64 %i.ej, 1
  %.pre.i = load i64, ptr %i.ee, align 8, !tbaa !35
  br label %bb.z

.loopexit.i:                                      ; preds = %bb.aa, %bb.z
  %exitcond.not.i = icmp eq i64 %i.em, %i.dy
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit, label %bb.z, !llvm.loop !41

bb.z:                                             ; preds = %.loopexit.i, %.lr.ph26.i
  %i.el = phi i64 [ %.pre.i, %.lr.ph26.i ], [ %i.eo, %.loopexit.i ] ; 2 uses
  %.025.i = phi i64 [ 0, %.lr.ph26.i ], [ %i.em, %.loopexit.i ]
  %i.em = add nuw i64 %.025.i, 1                  ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !35 ; 3 uses
  %i.ep = add i64 %i.el, %i.ef
  %.not23.i = icmp ugt i64 %i.ep, %i.eo
  br i1 %.not23.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z
  %i.eq = load ptr, ptr %0, align 8, !tbaa !29
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i
  %.02224.i = phi i64 [ %i.el, %.lr.ph.i ], [ %i.ex, %bb.aa ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.02224.i
  %.val.i.i = load i64, ptr %i.er, align 1, !tbaa !35
  %i.es = mul i64 %.val.i.i, %..i.i
  %i.et = lshr i64 %i.es, %i.ei
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !3
  %i.ex = add i64 %i.ek, %.02224.i                ; 2 uses
  %i.ey = add i64 %i.ex, %i.ef
  %.not.i = icmp ugt i64 %i.ey, %i.eo
  br i1 %.not.i, label %.loopexit.i, label %bb.aa, !llvm.loop !42

_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit: ; preds = %.loopexit.i, %bb.y, %bb.j, %bb.k, %bb.g, %bb.h, %bb.d, %bb.e, %bb.w, %bb.q
  %.074 = phi i64 [ -72, %bb.j ], [ -72, %bb.d ], [ -72, %bb.g ], [ -64, %bb.q ], [ -64, %bb.w ], [ -72, %bb.e ], [ -72, %bb.h ], [ -72, %bb.k ], [ 0, %bb.y ], [ 0, %.loopexit.i ]
  ret i64 %.074
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN11duckdb_zstd23COVER_warnOnSmallCorpusEmmi(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL25FASTCOVER_buildDictionaryEPKNS_15FASTCOVER_ctx_tEPjPvmNS_20ZDICT_cover_params_tEPt(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef writeonly captures(none) %2, i64 noundef %3, ptr noundef readonly byval(%"struct.duckdb_zstd::ZDICT_cover_params_t") align 8 captures(none) %4, ptr noundef captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %3 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16
  %i.d = trunc i64 %i.c to i32
  %i.e = load i32, ptr %4, align 8, !tbaa !43     ; 2 uses
  %i.f = tail call i64 @_ZN11duckdb_zstd19COVER_computeEpochsEjjjj(i32 noundef %i.a, i32 noundef %i.d, i32 noundef %i.e, i32 noundef 1) ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %i.f, 32    ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32 ; 2 uses
  %i.g = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0

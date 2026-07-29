inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN11duckdb_zstdL20ZDICT_analyzeEntropyEPvmiPKvPKmjS2_mj:bb.a

bb.ad:                                            ; preds = %bb.aa
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ra ; 2 uses
  %i.rh = sub i64 %1, %i.ra                       ; 2 uses
  %i.ri = call noundef i64 @_ZN11duckdb_zstd15FSE_writeNCountEPvmPKsjj(ptr noundef %i.rg, i64 noundef %i.rh, ptr noundef nonnull %i.d, i32 noundef 30, i32 noundef %i.qd) ; 6 uses
  %i.rj = icmp ult i64 %i.ri, -119
  br i1 %i.rj, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not202 = icmp eq i32 %8, 0
  br i1 %.not202, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.rk = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.rl = call i64 @fwrite(ptr nonnull @.str.12, i64 42, i64 1, ptr %i.rk) #18 ; 0 uses
  %i.rm = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.rn = call i32 @fflush(ptr noundef %i.rm)     ; 0 uses
  br label %.thread

bb.ag:                                            ; preds = %bb.ad
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.ri ; 2 uses
  %i.rp = sub i64 %i.rh, %i.ri                    ; 2 uses
  %i.rq = call noundef i64 @_ZN11duckdb_zstd15FSE_writeNCountEPvmPKsjj(ptr noundef %i.ro, i64 noundef %i.rp, ptr noundef nonnull %i.f, i32 noundef 52, i32 noundef %i.qr) ; 6 uses
  %i.rr = icmp ult i64 %i.rq, -119
  br i1 %i.rr, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not204 = icmp eq i32 %8, 0
  br i1 %.not204, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.rs = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.rt = call i64 @fwrite(ptr nonnull @.str.13, i64 46, i64 1, ptr %i.rs) #18 ; 0 uses
  %i.ru = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.rv = call i32 @fflush(ptr noundef %i.ru)     ; 0 uses
  br label %.thread

bb.aj:                                            ; preds = %bb.ag
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rq ; 2 uses
  %i.rx = sub i64 %i.rp, %i.rq                    ; 2 uses
  %i.ry = call noundef i64 @_ZN11duckdb_zstd15FSE_writeNCountEPvmPKsjj(ptr noundef %i.rw, i64 noundef %i.rx, ptr noundef nonnull %i.h, i32 noundef 35, i32 noundef %i.qz) ; 6 uses
  %i.rz = icmp ult i64 %i.ry, -119
  br i1 %i.rz, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not206 = icmp eq i32 %8, 0
  br i1 %.not206, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.sa = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.sb = call i64 @fwrite(ptr nonnull @.str.14, i64 44, i64 1, ptr %i.sa) #18 ; 0 uses
  %i.sc = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.sd = call i32 @fflush(ptr noundef %i.sc)     ; 0 uses
  br label %.thread

bb.am:                                            ; preds = %bb.aj
  %i.se = sub i64 %i.rx, %i.ry
  %i.sf = icmp ult i64 %i.se, 12
  br i1 %i.sf, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %.not207 = icmp eq i32 %8, 0
  br i1 %.not207, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.sg = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.sh = call i64 @fwrite(ptr nonnull @.str.15, i64 38, i64 1, ptr %i.sg) #18 ; 0 uses
  %i.si = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.sj = call i32 @fflush(ptr noundef %i.si)     ; 0 uses
  br label %.thread

bb.ap:                                            ; preds = %bb.am
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.ry ; 3 uses
  store i32 1, ptr %i.sk, align 1, !tbaa !3
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  store i32 4, ptr %i.sl, align 1, !tbaa !3
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  store i32 8, ptr %i.sm, align 1, !tbaa !3
  %i.sn = add nuw i64 %i.ra, 12
  %i.so = add i64 %i.sn, %i.ri
  %i.sp = add i64 %i.so, %i.rq
  %i.sq = add i64 %i.sp, %i.ry
  br label %.thread

.thread:                                          ; preds = %bb.ak, %bb.al, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.ab, %bb.ac, %bb.n, %bb.o, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit, %bb.an, %bb.ao, %bb.y, %bb.z, %bb.v, %bb.w, %bb.s, %bb.t, %bb.b, %bb.c, %bb.ap
  %.5 = phi i64 [ -64, %bb.b ], [ %i.pq, %bb.t ], [ %i.pq, %bb.s ], [ %i.qf, %bb.w ], [ %i.qf, %bb.v ], [ %i.qt, %bb.z ], [ %i.qt, %bb.y ], [ -70, %bb.ao ], [ -70, %bb.an ], [ %i.sq, %bb.ap ], [ %i.rq, %bb.ah ], [ %i.ri, %bb.ae ], [ %i.ra, %bb.ab ], [ %i.lz, %bb.n ], [ -34, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit ], [ -64, %bb.c ], [ %i.lz, %bb.o ], [ %i.ra, %bb.ac ], [ %i.ri, %bb.af ], [ %i.rq, %bb.ai ], [ %i.ry, %bb.al ], [ %i.ry, %bb.ak ]
  %.sroa.10.0 = phi ptr [ %i.ds, %bb.b ], [ %i.ds, %bb.t ], [ %i.ds, %bb.s ], [ %i.ds, %bb.w ], [ %i.ds, %bb.v ], [ %i.ds, %bb.z ], [ %i.ds, %bb.y ], [ %i.ds, %bb.ao ], [ %i.ds, %bb.an ], [ %i.ds, %bb.ap ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ae ], [ %i.ds, %bb.ab ], [ %i.ds, %bb.n ], [ null, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit ], [ %i.ds, %bb.c ], [ %i.ds, %bb.o ], [ %i.ds, %bb.ac ], [ %i.ds, %bb.af ], [ %i.ds, %bb.ai ], [ %i.ds, %bb.al ], [ %i.ds, %bb.ak ]
  %.sroa.7.0 = phi ptr [ %i.dr, %bb.b ], [ %i.dr, %bb.t ], [ %i.dr, %bb.s ], [ %i.dr, %bb.w ], [ %i.dr, %bb.v ], [ %i.dr, %bb.z ], [ %i.dr, %bb.y ], [ %i.dr, %bb.ao ], [ %i.dr, %bb.an ], [ %i.dr, %bb.ap ], [ %i.dr, %bb.ah ], [ %i.dr, %bb.ae ], [ %i.dr, %bb.ab ], [ %i.dr, %bb.n ], [ null, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit ], [ %i.dr, %bb.c ], [ %i.dr, %bb.o ], [ %i.dr, %bb.ac ], [ %i.dr, %bb.af ], [ %i.dr, %bb.ai ], [ %i.dr, %bb.al ], [ %i.dr, %bb.ak ]
  %.sroa.0.0 = phi ptr [ %i.dq, %bb.b ], [ %i.dq, %bb.t ], [ %i.dq, %bb.s ], [ %i.dq, %bb.w ], [ %i.dq, %bb.v ], [ %i.dq, %bb.z ], [ %i.dq, %bb.y ], [ %i.dq, %bb.ao ], [ %i.dq, %bb.an ], [ %i.dq, %bb.ap ], [ %i.dq, %bb.ah ], [ %i.dq, %bb.ae ], [ %i.dq, %bb.ab ], [ %i.dq, %bb.n ], [ null, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit ], [ %i.dq, %bb.c ], [ %i.dq, %bb.o ], [ %i.dq, %bb.ac ], [ %i.dq, %bb.af ], [ %i.dq, %bb.ai ], [ %i.dq, %bb.al ], [ %i.dq, %bb.ak ]
  %i.sr = call noundef i64 @_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE(ptr noundef %.sroa.0.0) ; 0 uses
  %i.ss = call noundef i64 @_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE(ptr noundef %.sroa.7.0) ; 0 uses
  call void @free(ptr noundef %.sroa.10.0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd28ZDICT_trainFromBuffer_legacyEPvmPKvPKmjNS_21ZDICT_legacy_params_tE(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly byval(%"struct.duckdb_zstd::ZDICT_legacy_params_t") align 8 captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 13 uses
  %i.b = alloca [64 x i32], align 16              ; 64 uses
  %i.c = alloca [64 x i32], align 16              ; 11 uses
  %6 = alloca %"struct.duckdb_zstd::ZDICT_params_t", align 8 ; 5 uses
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %4 to i64         ; 6 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi132 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !14
  %wide.load133 = load <2 x i64>, ptr %i.e, align 8, !tbaa !14
  %i.f = add <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.g = add <2 x i64> %wide.load133, %vec.phi132 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.g, %i.f
  %i.i = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.067.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.i, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.067.i = phi i64 [ %i.l, %.lr.ph.i ], [ %.067.i.ph, %.lr.ph.i.preheader ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %i.l = add i64 %i.k, %.067.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit, label %.lr.ph.i, !llvm.loop !56

_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa131 = phi i64 [ %i.i, %middle.block ], [ %i.l, %.lr.ph.i ] ; 4 uses
  %i.m = icmp ult i64 %.lcssa131, 512
  br i1 %i.m, label %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit
  %i.n = add i64 %.lcssa131, 32
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #15 ; 21 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %2, i64 %.lcssa131, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.lcssa131 ; 2 uses
  store <16 x i8> <i8 -30, i8 51, i8 -9, i8 105, i8 -35, i8 -31, i8 -119, i8 112, i8 5, i8 -68, i8 15, i8 79, i8 -73, i8 -13, i8 110, i8 -47>, ptr %i.p, align 1, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> <i8 14, i8 -34, i8 95, i8 14, i8 -114, i8 -50, i8 31, i8 67, i8 -40, i8 -37, i8 31, i8 -102, i8 88, i8 -72, i8 -78, i8 0>, ptr %i.q, align 1, !tbaa !33
  %.sroa.026.0.copyload = load i32, ptr %5, align 8, !tbaa !3 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !3 ; 4 uses
  %i.r = load <2 x i32>, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !3
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.427.0.copyload = load i32, ptr %.sroa.427.0..sroa_idx, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.s = lshr i64 %1, 4
  %i.t = trunc i64 %i.s to i32
  %i.u = tail call i32 @llvm.umax.i32(i32 %4, i32 %i.t)
  %..i = tail call i32 @llvm.umax.i32(i32 %i.u, i32 10000) ; 2 uses
  %i.v = zext i32 %..i to i64
  %i.w = mul nuw nsw i64 %i.v, 12
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #15 ; 34 uses
  %min.iters.check135 = icmp ult i32 %4, 4
  br i1 %min.iters.check135, label %.lr.ph.i.i.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec138 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %vec.phi141 = phi <2 x i64> [ zeroinitializer, %vector.ph136 ], [ %i.aa, %vector.body139 ]
  %vec.phi142 = phi <2 x i64> [ zeroinitializer, %vector.ph136 ], [ %i.ab, %vector.body139 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index140 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load143 = load <2 x i64>, ptr %i.y, align 8, !tbaa !14
  %wide.load144 = load <2 x i64>, ptr %i.z, align 8, !tbaa !14
  %i.aa = add <2 x i64> %wide.load143, %vec.phi141 ; 2 uses
  %i.ab = add <2 x i64> %wide.load144, %vec.phi142 ; 2 uses
  %index.next145 = add nuw i64 %index140, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.ac, label %middle.block146, label %vector.body139, !llvm.loop !57

middle.block146:                                  ; preds = %vector.body139
  %bin.rdx147 = add <2 x i64> %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx147) ; 2 uses
  %cmp.n148 = icmp eq i64 %n.vec138, %wide.trip.count.i
  br i1 %cmp.n148, label %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block146
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec138, %middle.block146 ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.ad, %middle.block146 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !14
  %i.ag = add i64 %i.af, %.067.i.i                ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond.not.i.i, label %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit.i, label %.lr.ph.i.i, !llvm.loop !58

_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit.i: ; preds = %.lr.ph.i.i, %middle.block146
  %.lcssa130 = phi i64 [ %i.ad, %middle.block146 ], [ %i.ag, %.lr.ph.i.i ] ; 10 uses
  %i.ah = icmp eq i32 %.sroa.026.0.copyload, 0
  %i.ai = select i1 %i.ah, i32 9, i32 %.sroa.026.0.copyload ; 5 uses
  %i.aj = icmp ugt i32 %i.ai, 30
  %i.ak = lshr i32 %4, %i.ai
  %i.al = select i1 %i.aj, i32 4, i32 %i.ak       ; 2 uses
  %.not.i19 = icmp eq ptr %i.x, null
  br i1 %.not.i19, label %_ZN11duckdb_zstdL35ZDICT_trainFromBuffer_unsafe_legacyEPvmPKvPKmjNS_21ZDICT_legacy_params_tE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit.i
  %i.am = icmp ult i64 %1, 256
  br i1 %i.am, label %.thread233.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = icmp ult i64 %.lcssa130, 512
  br i1 %i.an, label %.thread233.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.x, align 4, !tbaa !59
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 -1, ptr %i.ap, align 4, !tbaa !62
  %i.aq = shl i64 %.lcssa130, 2                   ; 2 uses
  %i.ar = add i64 %i.aq, 8
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #15 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 22 uses
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.aq) #15 ; 8 uses
  %i.av = add i64 %.lcssa130, 16                  ; 2 uses
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.av) #15 ; 11 uses
  %i.ax = icmp ugt i32 %.sroa.3.0.copyload, 1     ; 6 uses
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ay, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17 ; 0 uses
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bb = tail call i32 @fflush(ptr noundef %i.ba) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = icmp ne ptr %i.as, null
  %i.bd = icmp ne ptr %i.au, null
  %or.cond.i.i = and i1 %i.bc, %i.bd
  %i.be = icmp ne ptr %i.aw, null
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.be
  br i1 %or.cond3.i.i, label %bb.h, label %_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.i

bb.h:                                             ; preds = %bb.g
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.al, i32 4) ; 60 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aw, i8 0, i64 %i.av, i1 false)
  %i.bf = icmp ugt i64 %.lcssa130, 2097152000     ; 2 uses
  %i.bg = icmp ugt i32 %.sroa.3.0.copyload, 2     ; 2 uses
  %or.cond7.i.i = and i1 %i.bg, %i.bf
  br i1 %or.cond7.i.i, label %.thread189.i.i, label %bb.i

.thread189.i.i:                                   ; preds = %bb.h
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bh, ptr noundef nonnull @.str.29, i32 noundef 2000) #17 ; 0 uses
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bk = tail call i32 @fflush(ptr noundef %i.bj) ; 0 uses
  br label %.lr.ph.i192.i.preheader

bb.i:                                             ; preds = %bb.h
  br i1 %i.bf, label %.lr.ph.i192.i.preheader, label %._crit_edge.i.i

.lr.ph.i192.i.preheader:                          ; preds = %bb.i, %.thread189.i.i
  br label %.lr.ph.i192.i

.lr.ph.i192.i:                                    ; preds = %.lr.ph.i192.i.preheader, %.lr.ph.i192.i
  %.095135.i.i = phi i64 [ %i.bp, %.lr.ph.i192.i ], [ %.lcssa130, %.lr.ph.i192.i.preheader ]
  %.096134.i.i = phi i32 [ %i.bl, %.lr.ph.i192.i ], [ %4, %.lr.ph.i192.i.preheader ]
  %i.bl = add i32 %.096134.i.i, -1                ; 3 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !14
  %i.bp = sub i64 %.095135.i.i, %i.bo             ; 3 uses
  %i.bq = icmp ugt i64 %i.bp, 2097152000
  br i1 %i.bq, label %.lr.ph.i192.i, label %._crit_edge.i.i, !llvm.loop !63

._crit_edge.i.i:                                  ; preds = %.lr.ph.i192.i, %bb.i
  %.096.lcssa.i.i = phi i32 [ %4, %bb.i ], [ %i.bl, %.lr.ph.i192.i ]
  %.095.lcssa.i.i = phi i64 [ %.lcssa130, %bb.i ], [ %i.bp, %.lr.ph.i192.i ] ; 9 uses
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bs = lshr i64 %.095.lcssa.i.i, 20
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.30, i32 noundef %.096.lcssa.i.i, i32 noundef %i.bt) #17 ; 0 uses
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bw = tail call i32 @fflush(ptr noundef %i.bv) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %i.bx = trunc nuw nsw i64 %.095.lcssa.i.i to i32 ; 3 uses
  %i.by = tail call noundef i32 @_ZN11duckdb_zstd10divsufsortEPKhPiii(ptr noundef nonnull %i.o, ptr noundef nonnull %i.at, i32 noundef %i.bx, i32 noundef 0)
  %.not.i189.not.i = icmp eq i32 %i.by, 0
  br i1 %.not.i189.not.i, label %bb.l, label %_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.095.lcssa.i.i
  store i32 %i.bx, ptr %i.bz, align 4, !tbaa !3
  store i32 %i.bx, ptr %i.as, align 4, !tbaa !3
  %.not156.i.i = icmp eq i64 %.095.lcssa.i.i, 0   ; 2 uses
  br i1 %.not156.i.i, label %._crit_edge144.i.i, label %.lr.ph139.i.i.preheader

.lr.ph139.i.i.preheader:                          ; preds = %bb.l
  %xtraiter = and i64 %.095.lcssa.i.i, 3          ; 3 uses
  %i.ca = icmp ult i64 %.095.lcssa.i.i, 4
  br i1 %i.ca, label %.lr.ph139.i.i.epil.preheader, label %.lr.ph139.i.i.preheader.new

.lr.ph139.i.i.preheader.new:                      ; preds = %.lr.ph139.i.i.preheader
  %unroll_iter = and i64 %.095.lcssa.i.i, 2147483644
  br label %.lr.ph139.i.i

.lr.ph139.i.i:                                    ; preds = %.lr.ph139.i.i, %.lr.ph139.i.i.preheader.new
  %.0101137.i.i = phi i64 [ 0, %.lr.ph139.i.i.preheader.new ], [ %i.cy, %.lr.ph139.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph139.i.i.preheader.new ], [ %niter.next.3, %.lr.ph139.i.i ]
  %i.cb = trunc nuw nsw i64 %.0101137.i.i to i32
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.0101137.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ce
  store i32 %i.cb, ptr %i.cf, align 4, !tbaa !3
  %i.cg = or disjoint i64 %.0101137.i.i, 1        ; 2 uses
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cg
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ck
  store i32 %i.ch, ptr %i.cl, align 4, !tbaa !3
  %i.cm = or disjoint i64 %.0101137.i.i, 2        ; 2 uses
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cm
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cq
  store i32 %i.cn, ptr %i.cr, align 4, !tbaa !3
  %i.cs = or disjoint i64 %.0101137.i.i, 3        ; 2 uses
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cs
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cw
  store i32 %i.ct, ptr %i.cx, align 4, !tbaa !3
  %i.cy = add nuw nsw i64 %.0101137.i.i, 4        ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge144.i.i.loopexit.unr-lcssa, label %.lr.ph139.i.i, !llvm.loop !64

._crit_edge144.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph139.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge144.i.i, label %.lr.ph139.i.i.epil.preheader

.lr.ph139.i.i.epil.preheader:                     ; preds = %._crit_edge144.i.i.loopexit.unr-lcssa, %.lr.ph139.i.i.preheader
  %.0101137.i.i.epil.init = phi i64 [ 0, %.lr.ph139.i.i.preheader ], [ %i.cy, %._crit_edge144.i.i.loopexit.unr-lcssa ]
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd28ZDICT_trainFromBuffer_legacyEPvmPKvPKmjNS_21ZDICT_legacy_params_tE:bb.a
  %i.pr = getelementptr i8, ptr %i.pq, i64 -1
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !33
  %i.pt = add nuw nsw i32 %.1225.lcssa.i.i.i, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv379.i.i.i = phi i32 [ %indvars.iv.next380.i.i.i, %bb.ai ], [ %i.pt, %bb.ah ] ; 3 uses
  %.0202.i.i.i = phi i32 [ %i.pz, %bb.ai ], [ %.1225.lcssa.i.i.i, %bb.ah ] ; 9 uses
  %i.pu = zext i32 %.0202.i.i.i to i64            ; 4 uses
  %i.pv = getelementptr i8, ptr %i.lk, i64 %i.pu
  %i.pw = getelementptr i8, ptr %i.pv, i64 -2
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !33
  %i.py = icmp eq i8 %i.px, %i.ps
  %i.pz = add i32 %.0202.i.i.i, -1
  %indvars.iv.next380.i.i.i = add i32 %indvars.iv379.i.i.i, -1
  br i1 %i.py, label %bb.ai, label %bb.aj, !llvm.loop !78

bb.aj:                                            ; preds = %bb.ai
  %i.qa = icmp ult i32 %.0202.i.i.i, 7
  br i1 %i.qa, label %_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.fu, align 4, !tbaa !3
  %.not241343.i.i.i = icmp slt i32 %.0202.i.i.i, 7
  br i1 %.not241343.i.i.i, label %._crit_edge347.i.i.i, label %.lr.ph346.preheader.i.i.i

.lr.ph346.preheader.i.i.i:                        ; preds = %bb.ak
  %wide.trip.count381.i.i.i = zext i32 %indvars.iv379.i.i.i to i64
  %load_initial152 = load i32, ptr %scevgep151, align 8 ; 2 uses
  %i.qb = add nsw i64 %wide.trip.count381.i.i.i, -7 ; 3 uses
  %xtraiter188 = and i64 %i.qb, 1
  %i.qc = icmp eq i32 %indvars.iv379.i.i.i, 8
  br i1 %i.qc, label %.lr.ph346.i.i.i.epil.preheader, label %.lr.ph346.preheader.i.i.i.new

.lr.ph346.preheader.i.i.i.new:                    ; preds = %.lr.ph346.preheader.i.i.i
  %unroll_iter192 = and i64 %i.qb, -2
  br label %.lr.ph346.i.i.i

.lr.ph346.i.i.i:                                  ; preds = %.lr.ph346.i.i.i, %.lr.ph346.preheader.i.i.i.new
  %store_forwarded153 = phi i32 [ %load_initial152, %.lr.ph346.preheader.i.i.i.new ], [ %i.qq, %.lr.ph346.i.i.i ]
  %indvars.iv376.i.i.i = phi i64 [ 7, %.lr.ph346.preheader.i.i.i.new ], [ %indvars.iv.next377.i.i.i.1, %.lr.ph346.i.i.i ] ; 5 uses
  %niter193 = phi i64 [ 0, %.lr.ph346.preheader.i.i.i.new ], [ %niter193.next.1, %.lr.ph346.i.i.i ]
  %i.qd = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv376.i.i.i
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv376.i.i.i
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !3
  %i.qg = trunc i64 %indvars.iv376.i.i.i to i32
  %i.qh = add i32 %i.qg, -3
  %i.qi = mul i32 %i.qf, %i.qh
  %i.qj = add i32 %i.qi, %store_forwarded153      ; 2 uses
  store i32 %i.qj, ptr %i.qd, align 4, !tbaa !3
  %indvars.iv.next377.i.i.i = add nuw nsw i64 %indvars.iv376.i.i.i, 1 ; 3 uses
  %i.qk = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next377.i.i.i
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next377.i.i.i
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !3
  %i.qn = trunc i64 %indvars.iv.next377.i.i.i to i32
  %i.qo = add i32 %i.qn, -3
  %i.qp = mul i32 %i.qm, %i.qo
  %i.qq = add i32 %i.qp, %i.qj                    ; 3 uses
  store i32 %i.qq, ptr %i.qk, align 4, !tbaa !3
  %indvars.iv.next377.i.i.i.1 = add nuw nsw i64 %indvars.iv376.i.i.i, 2 ; 2 uses
  %niter193.next.1 = add i64 %niter193, 2         ; 2 uses
  %niter193.ncmp.1 = icmp eq i64 %niter193.next.1, %unroll_iter192
  br i1 %niter193.ncmp.1, label %._crit_edge347.i.i.i.loopexit.unr-lcssa, label %.lr.ph346.i.i.i, !llvm.loop !79

._crit_edge347.i.i.i.loopexit.unr-lcssa:          ; preds = %.lr.ph346.i.i.i
  %lcmp.mod190.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod190.not, label %._crit_edge347.i.i.i, label %.lr.ph346.i.i.i.epil.preheader

.lr.ph346.i.i.i.epil.preheader:                   ; preds = %._crit_edge347.i.i.i.loopexit.unr-lcssa, %.lr.ph346.preheader.i.i.i
  %store_forwarded153.epil.init = phi i32 [ %load_initial152, %.lr.ph346.preheader.i.i.i ], [ %i.qq, %._crit_edge347.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv376.i.i.i.epil.init = phi i64 [ 7, %.lr.ph346.preheader.i.i.i ], [ %indvars.iv.next377.i.i.i.1, %._crit_edge347.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod191 = trunc i64 %i.qb to i1
  tail call void @llvm.assume(i1 %lcmp.mod191)
  %i.qr = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv376.i.i.i.epil.init
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv376.i.i.i.epil.init
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !3
  %i.qu = trunc i64 %indvars.iv376.i.i.i.epil.init to i32
  %i.qv = add i32 %i.qu, -3
  %i.qw = mul i32 %i.qt, %i.qv
  %i.qx = add i32 %i.qw, %store_forwarded153.epil.init
  store i32 %i.qx, ptr %i.qr, align 4, !tbaa !3
  br label %._crit_edge347.i.i.i

._crit_edge347.i.i.i:                             ; preds = %.lr.ph346.i.i.i.epil.preheader, %._crit_edge347.i.i.i.loopexit.unr-lcssa, %bb.ak
  br i1 %i.dn, label %bb.al, label %._crit_edge347._crit_edge.i.i.i

._crit_edge347._crit_edge.i.i.i:                  ; preds = %._crit_edge347.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pu
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !3
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge347.i.i.i
  %i.qy = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pu
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !3  ; 3 uses
  %i.rb = uitofp i32 %i.ra to double
  %i.rc = uitofp i32 %.0202.i.i.i to double
  %i.rd = fdiv double %i.rb, %i.rc
  %i.re = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qy, ptr noundef nonnull @.str.36, i32 noundef %i.li, i32 noundef %.0202.i.i.i, i32 noundef %i.ra, double noundef %i.rd) #17 ; 0 uses
  %i.rf = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.rg = tail call i32 @fflush(ptr noundef %i.rf) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge347._crit_edge.i.i.i
  %i.rh = phi i32 [ %.pre.i.i.i, %._crit_edge347._crit_edge.i.i.i ], [ %i.ra, %bb.al ] ; 4 uses
  %i.ri = icmp ult i32 %.2.lcssa.i.i.i, %indvars.iv390.i.i.i
  br i1 %i.ri, label %.lr.ph354.preheader.i.i.i, label %_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.i.i

.lr.ph354.preheader.i.i.i:                        ; preds = %bb.am
  %i.rj = zext i32 %.2.lcssa.i.i.i to i64
  br label %.lr.ph354.i.i.i

.lr.ph354.i.i.i:                                  ; preds = %._crit_edge351.i.i.i, %.lr.ph354.preheader.i.i.i
  %indvars.iv386.i.i.i = phi i64 [ %i.rj, %.lr.ph354.preheader.i.i.i ], [ %indvars.iv.next387.i.i.i, %._crit_edge351.i.i.i ] ; 2 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv386.i.i.i
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !3  ; 3 uses
  %i.rm = zext i32 %i.rl to i64                   ; 3 uses
  %i.rn = icmp eq i64 %i.rm, %i.lj
  br i1 %i.rn, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph354.i.i.i
  %i.ro = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.rm ; 2 uses
  %.014.val21.i297.i.i.i = load i64, ptr %i.ro, align 1, !tbaa !14 ; 2 uses
  %.012.val22.i298.i.i.i = load i64, ptr %i.lk, align 1, !tbaa !14 ; 2 uses
  %.not23.i299.i.i.i = icmp eq i64 %.014.val21.i297.i.i.i, %.012.val22.i298.i.i.i
  br i1 %.not23.i299.i.i.i, label %.lr.ph.i303.i.i.i, label %_ZN11duckdb_zstdL11ZDICT_countEPKvS1_.exit309.i.i.i

.lr.ph.i303.i.i.i:                                ; preds = %bb.an, %.lr.ph.i303.i.i.i
  %.01225.i304.i.i.i = phi ptr [ %i.rp, %.lr.ph.i303.i.i.i ], [ %i.lk, %bb.an ]
  %.01424.i305.i.i.i = phi ptr [ %i.rq, %.lr.ph.i303.i.i.i ], [ %i.ro, %bb.an ]
  %i.rp = getelementptr inbounds nuw i8, ptr %.01225.i304.i.i.i, i64 8 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.01424.i305.i.i.i, i64 8 ; 2 uses
  %.014.val.i306.i.i.i = load i64, ptr %i.rq, align 1, !tbaa !14 ; 2 uses
  %.012.val.i307.i.i.i = load i64, ptr %i.rp, align 1, !tbaa !14 ; 2 uses
  %.not.i308.i.i.i = icmp eq i64 %.014.val.i306.i.i.i, %.012.val.i307.i.i.i
  br i1 %.not.i308.i.i.i, label %.lr.ph.i303.i.i.i, label %_ZN11duckdb_zstdL11ZDICT_countEPKvS1_.exit309.i.i.i

_ZN11duckdb_zstdL11ZDICT_countEPKvS1_.exit309.i.i.i: ; preds = %.lr.ph.i303.i.i.i, %bb.an
  %.012.lcssa.i300.i.i.i = phi ptr [ %i.lk, %bb.an ], [ %i.rp, %.lr.ph.i303.i.i.i ]
  %.014.val.lcssa.i301.i.i.i = phi i64 [ %.014.val21.i297.i.i.i, %bb.an ], [ %.014.val.i306.i.i.i, %.lr.ph.i303.i.i.i ]
  %.012.val.lcssa.i302.i.i.i = phi i64 [ %.012.val22.i298.i.i.i, %bb.an ], [ %.012.val.i307.i.i.i, %.lr.ph.i303.i.i.i ]
  %i.rr = xor i64 %.012.val.lcssa.i302.i.i.i, %.014.val.lcssa.i301.i.i.i
  %i.rs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.rr, i1 true)
  %i.rt = lshr i64 %i.rs, 3
  %i.ru = getelementptr inbounds nuw i8, ptr %.012.lcssa.i300.i.i.i, i64 %i.rt
  %i.rv = ptrtoint ptr %i.ru to i64
  %i.rw = sub i64 %i.rv, %i.ll
  %i.rx = trunc i64 %i.rw to i32
  %spec.select250.i.i.i = tail call i32 @llvm.umin.i32(i32 %.0202.i.i.i, i32 %i.rx)
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN11duckdb_zstdL11ZDICT_countEPKvS1_.exit309.i.i.i, %.lr.ph354.i.i.i
  %.0.i.i.i = phi i32 [ %spec.select250.i.i.i, %_ZN11duckdb_zstdL11ZDICT_countEPKvS1_.exit309.i.i.i ], [ %.0202.i.i.i, %.lr.ph354.i.i.i ] ; 2 uses
  %i.ry = add i32 %.0.i.i.i, %i.rl
  %i.rz = icmp ult i32 %i.rl, %i.ry
  br i1 %i.rz, label %.lr.ph350.preheader.i.i.i, label %._crit_edge351.i.i.i

.lr.ph350.preheader.i.i.i:                        ; preds = %bb.ao
  %scevgep.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.rm
  %i.sa = add i32 %.0.i.i.i, -1
  %i.sb = zext i32 %i.sa to i64
  %i.sc = add nuw nsw i64 %i.sb, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i.i, i8 1, i64 %i.sc, i1 false), !tbaa !33
  br label %._crit_edge351.i.i.i

._crit_edge351.i.i.i:                             ; preds = %.lr.ph350.preheader.i.i.i, %bb.ao
  %indvars.iv.next387.i.i.i = add nuw nsw i64 %indvars.iv386.i.i.i, 1 ; 2 uses
  %exitcond393.not.i.i.i = icmp eq i64 %indvars.iv.next387.i.i.i, %i.lm
  br i1 %exitcond393.not.i.i.i, label %_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.i.i, label %.lr.ph354.i.i.i, !llvm.loop !80

_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.thread.i.i: ; preds = %.lr.ph357.i.i.i.prol.loopexit, %.lr.ph357.i.i.i, %bb.aj, %.preheader.i.i.i, %.lr.ph360.preheader.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sd = add i32 %.0103151.i.i, 1
  br label %bb.au, !llvm.loop !66

_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.i.i: ; preds = %._crit_edge351.i.i.i, %bb.am
  %i.se = shl nuw i64 %i.pu, 32
  %i.sf = zext i32 %i.li to i64
  %i.sg = or disjoint i64 %i.se, %i.sf            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sh = tail call fastcc noundef i32 @_ZN11duckdb_zstdL14ZDICT_tryMergeEPNS_8dictItemES0_jPKv(ptr noundef nonnull %i.x, i64 %i.sg, i32 %i.rh, i32 noundef 0, ptr noundef nonnull readonly %i.o) ; 4 uses
  %.not.i113.i.i = icmp eq i32 %i.sh, 0
  br i1 %.not.i113.i.i, label %bb.ap, label %.preheader.i114.preheader.i.i

.preheader.i114.preheader.i.i:                    ; preds = %_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.i.i
  %i.si = zext i32 %i.sh to i64                   ; 2 uses
  %i.sj = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.si ; 2 uses
  %.sroa.08.0.copyload.i145.i.i = load i64, ptr %i.sj, align 4
  %.sroa.29.0..sroa_idx.i146.i.i = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %.sroa.29.0.copyload.i147.i.i = load i32, ptr %.sroa.29.0..sroa_idx.i146.i.i, align 4, !tbaa !3
  %i.sk = tail call fastcc noundef i32 @_ZN11duckdb_zstdL14ZDICT_tryMergeEPNS_8dictItemES0_jPKv(ptr noundef nonnull %i.x, i64 %.sroa.08.0.copyload.i145.i.i, i32 %.sroa.29.0.copyload.i147.i.i, i32 noundef %i.sh, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not47.i148.i.i = icmp eq i32 %i.sk, 0
  br i1 %.not47.i148.i.i, label %_ZN11duckdb_zstdL20ZDICT_insertDictItemEPNS_8dictItemEjS0_PKv.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i114.preheader.i.i, %_ZN11duckdb_zstdL20ZDICT_removeDictItemEPNS_8dictItemEj.exit.i.i.i
  %i.sl = phi i32 [ %i.ss, %_ZN11duckdb_zstdL20ZDICT_removeDictItemEPNS_8dictItemEj.exit.i.i.i ], [ %i.sk, %.preheader.i114.preheader.i.i ] ; 3 uses
  %i.sm = phi i64 [ %i.sq, %_ZN11duckdb_zstdL20ZDICT_removeDictItemEPNS_8dictItemEj.exit.i.i.i ], [ %i.si, %.preheader.i114.preheader.i.i ]
  %.03948.i149.i.i = phi i32 [ %i.sl, %_ZN11duckdb_zstdL20ZDICT_removeDictItemEPNS_8dictItemEj.exit.i.i.i ], [ %i.sh, %.preheader.i114.preheader.i.i ] ; 2 uses
  %i.sn = load i32, ptr %i.x, align 4, !tbaa !59  ; 2 uses
  %i.so = add i32 %i.sn, -1                       ; 2 uses
  %i.sp = icmp ult i32 %.03948.i149.i.i, %i.so
  br i1 %i.sp, label %.lr.ph.i.i115.i.i, label %_ZN11duckdb_zstdL20ZDICT_removeDictItemEPNS_8dictItemEj.exit.i.i.i

.lr.ph.i.i115.i.i:                                ; preds = %.preheader.i.i.i.i
  %7 = mul nuw nsw i64 %i.sm, 12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.x, i64 %7 ; 2 uses
  %scevgep12.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 12
  %reass.sub = sub i32 %i.sn, %.03948.i149.i.i
  %8 = add i32 %reass.sub, -2
  %9 = zext i32 %8 to i64
  %10 = mul nuw nsw i64 %9, 12
  %11 = add nuw nsw i64 %10, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep12.i.i.i.i, i64 %11, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.x, align 4, !tbaa !59
  %.pre14.i.i.i.i = add i32 %.pre.i.i.i.i, -1
  br label %_ZN11duckdb_zstdL20ZDICT_removeDictItemEPNS_8dictItemEj.exit.i.i.i

_ZN11duckdb_zstdL20ZDICT_removeDictItemEPNS_8dictItemEj.exit.i.i.i: ; preds = %.lr.ph.i.i115.i.i, %.preheader.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre14.i.i.i.i, %.lr.ph.i.i115.i.i ], [ %i.so, %.preheader.i.i.i.i ]
  store i32 %.pre-phi.i.i.i.i, ptr %i.x, align 4, !tbaa !59
  %i.sq = zext i32 %i.sl to i64                   ; 2 uses
  %i.sr = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sq ; 2 uses
  %.sroa.08.0.copyload.i.i.i = load i64, ptr %i.sr, align 4
  %.sroa.29.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %.sroa.29.0.copyload.i.i.i = load i32, ptr %.sroa.29.0..sroa_idx.i.i.i, align 4, !tbaa !3
  %i.ss = tail call fastcc noundef i32 @_ZN11duckdb_zstdL14ZDICT_tryMergeEPNS_8dictItemES0_jPKv(ptr noundef nonnull %i.x, i64 %.sroa.08.0.copyload.i.i.i, i32 %.sroa.29.0.copyload.i.i.i, i32 noundef %i.sl, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not47.i.i.i = icmp eq i32 %i.ss, 0
  br i1 %.not47.i.i.i, label %_ZN11duckdb_zstdL20ZDICT_insertDictItemEPNS_8dictItemEjS0_PKv.exit.i.i, label %.preheader.i.i.i.i, !llvm.loop !81

bb.ap:                                            ; preds = %_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.i.i
  %i.st = load i32, ptr %i.x, align 4, !tbaa !59
  %spec.select.i116.i.i = tail call i32 @llvm.umin.i32(i32 %i.st, i32 %i.fv) ; 4 uses
  %.03849.i.i.i = add i32 %spec.select.i116.i.i, -1 ; 2 uses
  %i.su = zext i32 %.03849.i.i.i to i64
  %i.sv = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.su ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !62
  %i.sy = icmp ult i32 %i.sx, %i.rh
  br i1 %i.sy, label %.lr.ph.i118.i.i, label %._crit_edge.i117.i.i

.lr.ph.i118.i.i:                                  ; preds = %bb.ap, %.lr.ph.i118.i.i
  %i.sz = phi ptr [ %i.td, %.lr.ph.i118.i.i ], [ %i.sv, %bb.ap ]
  %.03851.i.i.i = phi i32 [ %.038.i.i.i, %.lr.ph.i118.i.i ], [ %.03849.i.i.i, %bb.ap ] ; 3 uses
  %.038.in50.i.i.i = phi i32 [ %.03851.i.i.i, %.lr.ph.i118.i.i ], [ %spec.select.i116.i.i, %bb.ap ]
  %i.ta = zext i32 %.038.in50.i.i.i to i64
  %i.tb = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.ta
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.tb, ptr noundef nonnull align 4 dereferenceable(12) %i.sz, i64 12, i1 false), !tbaa.struct !82
  %.038.i.i.i = add i32 %.03851.i.i.i, -1         ; 2 uses
  %i.tc = zext i32 %.038.i.i.i to i64
  %i.td = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tc ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !62
  %i.tg = icmp ult i32 %i.tf, %i.rh
  br i1 %i.tg, label %.lr.ph.i118.i.i, label %._crit_edge.i117.i.i, !llvm.loop !83

._crit_edge.i117.i.i:                             ; preds = %.lr.ph.i118.i.i, %bb.ap
  %.038.in.lcssa.i.i.i = phi i32 [ %spec.select.i116.i.i, %bb.ap ], [ %.03851.i.i.i, %.lr.ph.i118.i.i ]
  %i.th = zext i32 %.038.in.lcssa.i.i.i to i64
  %i.ti = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.th ; 2 uses
  store i64 %i.sg, ptr %i.ti, align 4
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  store i32 %i.rh, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !tbaa !3
  %i.tj = add nuw i32 %spec.select.i116.i.i, 1
  store i32 %i.tj, ptr %i.x, align 4, !tbaa !59
  br label %_ZN11duckdb_zstdL20ZDICT_insertDictItemEPNS_8dictItemEjS0_PKv.exit.i.i

_ZN11duckdb_zstdL20ZDICT_insertDictItemEPNS_8dictItemEjS0_PKv.exit.i.i: ; preds = %_ZN11duckdb_zstdL20ZDICT_removeDictItemEPNS_8dictItemEj.exit.i.i.i, %._crit_edge.i117.i.i, %.preheader.i114.preheader.i.i
  %i.tk = add i32 %.0202.i.i.i, %.0103151.i.i     ; 4 uses
  br i1 %i.ax, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %_ZN11duckdb_zstdL20ZDICT_insertDictItemEPNS_8dictItemEjS0_PKv.exit.i.i
  %i.tl = tail call i64 @clock() #16
  %i.tm = sub nsw i64 %i.tl, %.098153.i.i
  %i.tn = icmp sgt i64 %i.tm, 300000
  br i1 %i.tn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.to = tail call i64 @clock() #16
  %i.tp = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.tq = uitofp i32 %i.tk to double
  %i.tr = fdiv double %i.tq, %i.fw
  %i.ts = fmul double %i.tr, 1.000000e+02
  %i.tt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tp, ptr noundef nonnull @.str.33, double noundef %i.ts) #17 ; 0 uses
  %i.tu = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.tv = tail call i32 @fflush(ptr noundef %i.tu) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.199.i.i = phi i64 [ %i.to, %bb.ar ], [ %.098153.i.i, %bb.aq ] ; 2 uses
  br i1 %i.dn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.tw = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.tx = tail call i32 @fflush(ptr noundef %i.tw) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %_ZN11duckdb_zstdL20ZDICT_insertDictItemEPNS_8dictItemEjS0_PKv.exit.i.i, %_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.thread.i.i, %bb.p
  %.1104.i.i = phi i32 [ %i.ga, %bb.p ], [ %i.sd, %_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.thread.i.i ], [ %i.tk, %bb.as ], [ %i.tk, %bb.at ], [ %i.tk, %_ZN11duckdb_zstdL20ZDICT_insertDictItemEPNS_8dictItemEjS0_PKv.exit.i.i ] ; 2 uses
  %.3.i.i = phi i64 [ %.098153.i.i, %bb.p ], [ %.098153.i.i, %_ZN11duckdb_zstdL16ZDICT_analyzePosEPhPKijPKvjj.exit.thread.i.i ], [ %.199.i.i, %bb.as ], [ %.199.i.i, %bb.at ], [ %.098153.i.i, %_ZN11duckdb_zstdL20ZDICT_insertDictItemEPNS_8dictItemEjS0_PKv.exit.i.i ]
  %i.ty = zext i32 %.1104.i.i to i64              ; 2 uses
  %i.tz = icmp samesign ugt i64 %.095.lcssa.i.i, %i.ty
  br i1 %i.tz, label %bb.o, label %_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.loopexit.i

_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.loopexit.i: ; preds = %bb.au
  %.pre.pre.i = load i32, ptr %i.x, align 4, !tbaa !59
  br label %_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.i

_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.i: ; preds = %_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.loopexit.i, %.thread.i.i, %bb.k, %bb.g
  %.pre.i = phi i32 [ %.pre.pre.i, %_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.loopexit.i ], [ 1, %bb.g ], [ 1, %bb.k ], [ 1, %.thread.i.i ] ; 9 uses
  tail call void @free(ptr noundef %i.as) #16
  tail call void @free(ptr noundef %i.au) #16
  tail call void @free(ptr noundef %i.aw) #16
  %i.ua = icmp ugt i32 %.sroa.3.0.copyload, 2
  br i1 %i.ua, label %bb.av, label %.critedge179.i

bb.av:                                            ; preds = %_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.i
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %.pre.i, i32 25) ; 3 uses
  %i.ub = icmp ugt i32 %.pre.i, 1
  br i1 %i.ub, label %.lr.ph.preheader.i194.i, label %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.thread.critedge.i

.lr.ph.preheader.i194.i:                          ; preds = %bb.av
  %wide.trip.count.i195.i = zext i32 %.pre.i to i64
  %i.uc = add nsw i64 %wide.trip.count.i195.i, -1 ; 2 uses
  %xtraiter198 = and i64 %i.uc, 3                 ; 3 uses
  %i.ud = add i32 %.pre.i, -2
  %i.ue = icmp ult i32 %i.ud, 3
  br i1 %i.ue, label %.lr.ph.i196.i.epil.preheader, label %.lr.ph.preheader.i194.i.new

.lr.ph.preheader.i194.i.new:                      ; preds = %.lr.ph.preheader.i194.i
  %unroll_iter203 = and i64 %i.uc, -4
  br label %.lr.ph.i196.i

.lr.ph.i196.i:                                    ; preds = %.lr.ph.i196.i, %.lr.ph.preheader.i194.i.new
  %indvars.iv.i197.i = phi i64 [ 1, %.lr.ph.preheader.i194.i.new ], [ %indvars.iv.next.i198.i.3, %.lr.ph.i196.i ] ; 5 uses
  %.08.i.i = phi i32 [ 0, %.lr.ph.preheader.i194.i.new ], [ %i.uu, %.lr.ph.i196.i ]
  %niter204 = phi i64 [ 0, %.lr.ph.preheader.i194.i.new ], [ %niter204.next.3, %.lr.ph.i196.i ]
  %i.uf = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 4
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !61
  %i.ui = add i32 %i.uh, %.08.i.i
  %i.uj = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !61
  %i.um = add i32 %i.ul, %i.ui
  %i.un = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 28
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !61
  %i.uq = add i32 %i.up, %i.um
  %i.ur = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 40
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !61
  %i.uu = add i32 %i.ut, %i.uq                    ; 3 uses
  %indvars.iv.next.i198.i.3 = add nuw nsw i64 %indvars.iv.i197.i, 4 ; 2 uses
  %niter204.next.3 = add nuw i64 %niter204, 4     ; 2 uses
  %niter204.ncmp.3 = icmp eq i64 %niter204.next.3, %unroll_iter203
  br i1 %niter204.ncmp.3, label %.critedge.i.unr-lcssa, label %.lr.ph.i196.i, !llvm.loop !84

.critedge.i.unr-lcssa:                            ; preds = %.lr.ph.i196.i
  %lcmp.mod200.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod200.not, label %.critedge.i, label %.lr.ph.i196.i.epil.preheader

.lr.ph.i196.i.epil.preheader:                     ; preds = %.critedge.i.unr-lcssa, %.lr.ph.preheader.i194.i
  %indvars.iv.i197.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i194.i ], [ %indvars.iv.next.i198.i.3, %.critedge.i.unr-lcssa ]
  %.08.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i194.i ], [ %i.uu, %.critedge.i.unr-lcssa ]
  %lcmp.mod202 = icmp ne i64 %xtraiter198, 0
  tail call void @llvm.assume(i1 %lcmp.mod202)
  br label %.lr.ph.i196.i.epil

.lr.ph.i196.i.epil:                               ; preds = %.lr.ph.i196.i.epil, %.lr.ph.i196.i.epil.preheader
  %indvars.iv.i197.i.epil = phi i64 [ %indvars.iv.i197.i.epil.init, %.lr.ph.i196.i.epil.preheader ], [ %indvars.iv.next.i198.i.epil, %.lr.ph.i196.i.epil ] ; 2 uses
  %.08.i.i.epil = phi i32 [ %.08.i.i.epil.init, %.lr.ph.i196.i.epil.preheader ], [ %i.uy, %.lr.ph.i196.i.epil ]
  %epil.iter199 = phi i64 [ 0, %.lr.ph.i196.i.epil.preheader ], [ %epil.iter199.next, %.lr.ph.i196.i.epil ]
  %i.uv = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i.epil
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !61
  %i.uy = add i32 %i.ux, %.08.i.i.epil            ; 2 uses
  %indvars.iv.next.i198.i.epil = add nuw nsw i64 %indvars.iv.i197.i.epil, 1
  %epil.iter199.next = add i64 %epil.iter199, 1   ; 2 uses
  %epil.iter199.cmp.not = icmp eq i64 %epil.iter199.next, %xtraiter198
  br i1 %epil.iter199.cmp.not, label %.critedge.i, label %.lr.ph.i196.i.epil, !llvm.loop !85

.critedge.i:                                      ; preds = %.lr.ph.i196.i.epil, %.critedge.i.unr-lcssa
  %.lcssa158 = phi i32 [ %i.uu, %.critedge.i.unr-lcssa ], [ %i.uy, %.lr.ph.i196.i.epil ]
  %i.uz = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.va = add i32 %.pre.i, -1
  %i.vb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.uz, ptr noundef nonnull @.str.18, i32 noundef %i.va, i32 noundef %.lcssa158) #17 ; 0 uses
  %i.vc = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.vd = tail call i32 @fflush(ptr noundef %i.vc) ; 0 uses
  %i.ve = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.vf = add nsw i32 %spec.select.i, -1
  %i.vg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ve, ptr noundef nonnull @.str.19, i32 noundef %i.vf) #17 ; 0 uses
  %i.vh = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.vi = tail call i32 @fflush(ptr noundef %i.vh) ; 0 uses
  %wide.trip.count.i21 = zext nneg i32 %spec.select.i to i64
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.loopexit.i, %.critedge.i
  %indvars.iv.i23 = phi i64 [ 1, %.critedge.i ], [ %indvars.iv.next.i24, %.loopexit.i ] ; 3 uses
  %i.vj = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i23 ; 3 uses
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !59 ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !61 ; 4 uses
  %i.vn = zext i32 %i.vk to i64                   ; 2 uses
  %i.vo = icmp ult i64 %.lcssa130, %i.vn
  %i.vp = add i32 %i.vm, %i.vk
  %i.vq = zext i32 %i.vp to i64
  %i.vr = icmp ult i64 %.lcssa130, %i.vq
  %or.cond173.i = select i1 %i.vo, i1 true, i1 %i.vr
  br i1 %or.cond173.i, label %.thread233.sink.split.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i22
  %i.vs = tail call i32 @llvm.umin.i32(i32 %i.vm, i32 40)
  %i.vt = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !62
  %i.vw = trunc nuw nsw i64 %indvars.iv.i23 to i32
  %i.vx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vt, ptr noundef nonnull @.str.20, i32 noundef %i.vw, i32 noundef %i.vm, i32 noundef %i.vk, i32 noundef %i.vv) #17 ; 0 uses
  %i.vy = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.vz = tail call i32 @fflush(ptr noundef %i.vy) ; 0 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.vn
  %i.wb = zext nneg i32 %i.vs to i64
  %.not.i200.i = icmp eq i32 %i.vm, 0
  br i1 %.not.i200.i, label %.loopexit.i, label %.lr.ph.i201.i

.lr.ph.i201.i:                                    ; preds = %bb.aw, %.lr.ph.i201.i
  %.010.i.i = phi i64 [ %i.wj, %.lr.ph.i201.i ], [ 0, %bb.aw ] ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 %.010.i.i
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !33  ; 2 uses
  %i.we = add i8 %i.wd, -127
  %or.cond.i202.i = icmp ult i8 %i.we, -95
  %spec.store.select.i203.i = select i1 %or.cond.i202.i, i8 46, i8 %i.wd
  %i.wf = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.wg = zext i8 %spec.store.select.i203.i to i32
  %fputc.i.i = tail call i32 @fputc(i32 %i.wg, ptr %i.wf) ; 0 uses
  %i.wh = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.wi = tail call i32 @fflush(ptr noundef %i.wh) ; 0 uses
  %i.wj = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i204.i = icmp eq i64 %i.wj, %i.wb
  br i1 %exitcond.not.i204.i, label %.loopexit.i, label %.lr.ph.i201.i, !llvm.loop !86

.loopexit.i:                                      ; preds = %.lr.ph.i201.i, %bb.aw
  %i.wk = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.wl = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %i.wk) #18 ; 0 uses
  %i.wm = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.wn = tail call i32 @fflush(ptr noundef %i.wm) ; 0 uses
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %indvars.iv.next.i24, %wide.trip.count.i21
  br i1 %exitcond.not.i25, label %.critedge179.i, label %.lr.ph.i22, !llvm.loop !87

.critedge179.i:                                   ; preds = %.loopexit.i, %_ZN11duckdb_zstdL24ZDICT_trainBuffer_legacyEPNS_8dictItemEjPKvmPKmjjj.exit.i
  %i.wo = icmp ugt i32 %.pre.i, 1
  br i1 %i.wo, label %.lr.ph.preheader.i217.i, label %.thread233.sink.split.i

.lr.ph.preheader.i217.i:                          ; preds = %.critedge179.i
  %wide.trip.count.i218.i = zext i32 %.pre.i to i64 ; 3 uses
  %i.wp = add nsw i64 %wide.trip.count.i218.i, -1 ; 2 uses
  %xtraiter205 = and i64 %i.wp, 3                 ; 3 uses
  %i.wq = add i32 %.pre.i, -2
  %i.wr = icmp ult i32 %i.wq, 3
  br i1 %i.wr, label %.lr.ph.i219.i.epil.preheader, label %.lr.ph.preheader.i217.i.new

.lr.ph.preheader.i217.i.new:                      ; preds = %.lr.ph.preheader.i217.i
  %unroll_iter210 = and i64 %i.wp, -4
  br label %.lr.ph.i219.i

.lr.ph.i219.i:                                    ; preds = %.lr.ph.i219.i, %.lr.ph.preheader.i217.i.new
  %indvars.iv.i220.i = phi i64 [ 1, %.lr.ph.preheader.i217.i.new ], [ %indvars.iv.next.i222.i.3, %.lr.ph.i219.i ] ; 5 uses
  %.08.i221.i = phi i32 [ 0, %.lr.ph.preheader.i217.i.new ], [ %i.xh, %.lr.ph.i219.i ]
  %niter211 = phi i64 [ 0, %.lr.ph.preheader.i217.i.new ], [ %niter211.next.3, %.lr.ph.i219.i ]
  %i.ws = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i220.i
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 4
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !61
  %i.wv = add i32 %i.wu, %.08.i221.i
  %i.ww = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i220.i
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !61
  %i.wz = add i32 %i.wy, %i.wv
  %i.xa = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i220.i
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 28
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !61
  %i.xd = add i32 %i.xc, %i.wz
  %i.xe = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i220.i
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 40
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !61
  %i.xh = add i32 %i.xg, %i.xd                    ; 3 uses
  %indvars.iv.next.i222.i.3 = add nuw nsw i64 %indvars.iv.i220.i, 4 ; 2 uses
  %niter211.next.3 = add nuw i64 %niter211, 4     ; 2 uses
  %niter211.ncmp.3 = icmp eq i64 %niter211.next.3, %unroll_iter210
  br i1 %niter211.ncmp.3, label %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i.unr-lcssa, label %.lr.ph.i219.i, !llvm.loop !84

_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i.unr-lcssa: ; preds = %.lr.ph.i219.i
  %lcmp.mod207.not = icmp eq i64 %xtraiter205, 0
  br i1 %lcmp.mod207.not, label %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i, label %.lr.ph.i219.i.epil.preheader

.lr.ph.i219.i.epil.preheader:                     ; preds = %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i.unr-lcssa, %.lr.ph.preheader.i217.i
  %indvars.iv.i220.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i217.i ], [ %indvars.iv.next.i222.i.3, %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i.unr-lcssa ]
  %.08.i221.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i217.i ], [ %i.xh, %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i.unr-lcssa ]
  %lcmp.mod209 = icmp ne i64 %xtraiter205, 0
  tail call void @llvm.assume(i1 %lcmp.mod209)
  br label %.lr.ph.i219.i.epil

.lr.ph.i219.i.epil:                               ; preds = %.lr.ph.i219.i.epil, %.lr.ph.i219.i.epil.preheader
  %indvars.iv.i220.i.epil = phi i64 [ %indvars.iv.i220.i.epil.init, %.lr.ph.i219.i.epil.preheader ], [ %indvars.iv.next.i222.i.epil, %.lr.ph.i219.i.epil ] ; 2 uses
  %.08.i221.i.epil = phi i32 [ %.08.i221.i.epil.init, %.lr.ph.i219.i.epil.preheader ], [ %i.xl, %.lr.ph.i219.i.epil ]
  %epil.iter206 = phi i64 [ 0, %.lr.ph.i219.i.epil.preheader ], [ %epil.iter206.next, %.lr.ph.i219.i.epil ]
  %i.xi = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i220.i.epil
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 4
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !61
  %i.xl = add i32 %i.xk, %.08.i221.i.epil         ; 2 uses
  %indvars.iv.next.i222.i.epil = add nuw nsw i64 %indvars.iv.i220.i.epil, 1
  %epil.iter206.next = add i64 %epil.iter206, 1   ; 2 uses
  %epil.iter206.cmp.not = icmp eq i64 %epil.iter206.next, %xtraiter205
  br i1 %epil.iter206.cmp.not, label %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i, label %.lr.ph.i219.i.epil, !llvm.loop !88

_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i: ; preds = %.lr.ph.i219.i.epil, %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i.unr-lcssa
  %.lcssa = phi i32 [ %i.xh, %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i.unr-lcssa ], [ %i.xl, %.lr.ph.i219.i.epil ] ; 4 uses
  %i.xm = icmp ult i32 %.lcssa, 128
  br i1 %i.xm, label %.thread233.sink.split.i, label %bb.ax

_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.thread.critedge.i: ; preds = %bb.av
  %i.xn = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.xo = add nsw i32 %.pre.i, -1
  %i.xp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xn, ptr noundef nonnull @.str.18, i32 noundef %i.xo, i32 noundef 0) #17 ; 0 uses
  %i.xq = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.xr = tail call i32 @fflush(ptr noundef %i.xq) ; 0 uses
  %i.xs = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.xt = add nsw i32 %spec.select.i, -1
  %i.xu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xs, ptr noundef nonnull @.str.19, i32 noundef %i.xt) #17 ; 0 uses
  %i.xv = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.xw = tail call i32 @fflush(ptr noundef %i.xv) ; 0 uses
  br label %.thread233.sink.split.i

bb.ax:                                            ; preds = %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i
  %i.xx = zext i32 %.lcssa to i64                 ; 2 uses
  %i.xy = lshr i64 %1, 2
  %i.xz = icmp samesign ugt i64 %i.xy, %i.xx
  %brmerge239.not.i = and i1 %i.ax, %i.xz
  br i1 %brmerge239.not.i, label %bb.ay, label %.critedge181.i

bb.ay:                                            ; preds = %bb.ax
  %i.ya = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yb = trunc i64 %1 to i32
  %i.yc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ya, ptr noundef nonnull @.str.22, i32 noundef %.lcssa, i32 noundef %i.yb) #17 ; 0 uses
  %i.yd = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ye = tail call i32 @fflush(ptr noundef %i.yd) ; 0 uses
  %i.yf = mul i64 %1, 10
  %i.yg = icmp ult i64 %.lcssa130, %i.yf
  br i1 %i.yg, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.yh = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yi = lshr i64 %.lcssa130, 20
  %i.yj = trunc i64 %i.yi to i32
  %i.yk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yh, ptr noundef nonnull @.str.23, i32 noundef %i.yj) #17 ; 0 uses
  %i.yl = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ym = tail call i32 @fflush(ptr noundef %i.yl) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.yn = icmp ugt i32 %i.al, 4
  br i1 %i.yn, label %bb.bb, label %.critedge181.i

bb.bb:                                            ; preds = %bb.ba
  %i.yo = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yp = add i32 %i.ai, 1
  %i.yq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yo, ptr noundef nonnull @.str.24, i32 noundef %i.yp) #17 ; 0 uses
  %i.yr = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ys = tail call i32 @fflush(ptr noundef %i.yr) ; 0 uses
  %i.yt = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yu = tail call i64 @fwrite(ptr nonnull @.str.25, i64 90, i64 1, ptr %i.yt) #18 ; 0 uses
  %i.yv = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yw = tail call i32 @fflush(ptr noundef %i.yv) ; 0 uses
  br label %.critedge181.i

.critedge181.i:                                   ; preds = %bb.bb, %bb.ba, %bb.ax
  %i.yx = mul i64 %1, 3
  %i.yy = icmp ult i64 %i.yx, %i.xx
  %i.yz = icmp ugt i32 %4, 8
  %or.cond.i = and i1 %i.yz, %i.yy
  %i.za = icmp ugt i32 %i.ai, 1
  %or.cond7.i = select i1 %or.cond.i, i1 %i.za, i1 false
  br i1 %or.cond7.i, label %.preheader.i, label %.lr.ph261.i.preheader

.preheader.i:                                     ; preds = %.critedge181.i, %.preheader.i
  %.0150.in.i = phi i32 [ %.0150.i, %.preheader.i ], [ %i.ai, %.critedge181.i ]
  %.0150.i = add i32 %.0150.in.i, -1              ; 3 uses
  %i.zb = lshr i32 %4, %.0150.i
  %i.zc = icmp ult i32 %i.zb, 5
  br i1 %i.zc, label %.preheader.i, label %bb.bc, !llvm.loop !89

bb.bc:                                            ; preds = %.preheader.i
  br i1 %i.ax, label %.critedge183.i, label %.lr.ph261.i.preheader

.critedge183.i:                                   ; preds = %bb.bc
  %i.zd = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ze = trunc i64 %1 to i32
  %i.zf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zd, ptr noundef nonnull @.str.26, i32 noundef %.lcssa, i32 noundef %i.ze) #17 ; 0 uses
  %i.zg = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.zh = tail call i32 @fflush(ptr noundef %i.zg) ; 0 uses
  %i.zi = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.zj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zi, ptr noundef nonnull @.str.27, i32 noundef %.0150.i) #17 ; 0 uses
  %i.zk = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.zl = tail call i32 @fflush(ptr noundef %i.zk) ; 0 uses
  %i.zm = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.zn = tail call i64 @fwrite(ptr nonnull @.str.28, i64 54, i64 1, ptr %i.zm) #18 ; 0 uses
  %i.zo = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.zp = tail call i32 @fflush(ptr noundef %i.zo) ; 0 uses
  br label %.lr.ph261.i.preheader

.lr.ph261.i.preheader:                            ; preds = %.critedge183.i, %bb.bc, %.critedge181.i
  br label %.lr.ph261.i

.lr.ph261.i:                                      ; preds = %.lr.ph261.i.preheader, %bb.bd
  %indvars.iv289.i = phi i64 [ %indvars.iv.next290.i, %bb.bd ], [ 1, %.lr.ph261.i.preheader ] ; 4 uses
  %.0147259.i = phi i32 [ %i.zt, %bb.bd ], [ 0, %.lr.ph261.i.preheader ] ; 3 uses
  %i.zq = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv289.i
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 4
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !61
  %i.zt = add i32 %i.zs, %.0147259.i              ; 3 uses
  %i.zu = zext i32 %i.zt to i64
  %i.zv = icmp ult i64 %1, %i.zu
  br i1 %i.zv, label %._crit_edge.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph261.i
  %indvars.iv.next290.i = add nuw nsw i64 %indvars.iv289.i, 1 ; 2 uses
  %exitcond293.not.i = icmp eq i64 %indvars.iv.next290.i, %wide.trip.count.i218.i
  br i1 %exitcond293.not.i, label %.lr.ph270.preheader.i, label %.lr.ph261.i, !llvm.loop !90

._crit_edge.i:                                    ; preds = %.lr.ph261.i
  %.not170266.i = icmp samesign ugt i64 %indvars.iv289.i, 1
  br i1 %.not170266.i, label %.lr.ph270.preheader.i, label %._crit_edge271.i

.lr.ph270.preheader.i:                            ; preds = %bb.bd, %._crit_edge.i
  %wide.trip.count297.i.pre-phi = phi i64 [ %indvars.iv289.i, %._crit_edge.i ], [ %wide.trip.count.i218.i, %bb.bd ]
  %.0147.lcssa.ph324.i = phi i32 [ %.0147259.i, %._crit_edge.i ], [ %i.zt, %bb.bd ]
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %.lr.ph270.i

.lr.ph270.i:                                      ; preds = %bb.be, %.lr.ph270.preheader.i
  %indvars.iv294.i = phi i64 [ 1, %.lr.ph270.preheader.i ], [ %indvars.iv.next295.i, %bb.be ] ; 2 uses
  %.0144268.i = phi ptr [ %i.zw, %.lr.ph270.preheader.i ], [ %i.aac, %bb.be ]
  %i.zx = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv294.i ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 4
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !61
  %i.aaa = zext i32 %i.zz to i64                  ; 2 uses
  %i.aab = sub nsw i64 0, %i.aaa
  %i.aac = getelementptr inbounds i8, ptr %.0144268.i, i64 %i.aab ; 3 uses
  %.not169.i = icmp ult ptr %i.aac, %0
  br i1 %.not169.i, label %.thread233.sink.split.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph270.i
  %i.aad = load i32, ptr %i.zx, align 4, !tbaa !59
  %i.aae = zext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aae
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aac, ptr nonnull align 1 %i.aaf, i64 %i.aaa, i1 false)
  %indvars.iv.next295.i = add nuw nsw i64 %indvars.iv294.i, 1 ; 2 uses
  %exitcond298.not.i = icmp eq i64 %indvars.iv.next295.i, %wide.trip.count297.i.pre-phi
  br i1 %exitcond298.not.i, label %._crit_edge271.i, label %.lr.ph270.i, !llvm.loop !91

._crit_edge271.i:                                 ; preds = %bb.be, %._crit_edge.i
  %.0147.lcssa.ph323.i = phi i32 [ %.0147259.i, %._crit_edge.i ], [ %.0147.lcssa.ph324.i, %bb.be ]
  %i.aag = zext i32 %.0147.lcssa.ph323.i to i64
  store <2 x i32> %i.r, ptr %6, align 8, !tbaa !3
  %.sroa.6.4..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.427.0.copyload, ptr %.sroa.6.4..sroa_idx, align 8, !tbaa !3
  %i.aah = tail call fastcc noundef i64 @_ZN11duckdb_zstdL41ZDICT_addEntropyTablesFromBuffer_advancedEPvmmPKvPKmjNS_14ZDICT_params_tE(ptr noundef %0, i64 noundef %i.aag, i64 noundef %1, ptr noundef nonnull %i.o, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZDICT_params_t") align 8 %6)
  br label %.thread233.sink.split.i

.thread233.sink.split.i:                          ; preds = %.lr.ph.i22, %.lr.ph270.i, %._crit_edge271.i, %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.thread.critedge.i, %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i, %.critedge179.i, %bb.d, %bb.c
  %.8.ph.i = phi i64 [ -1, %.lr.ph270.i ], [ -34, %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.i ], [ -34, %bb.d ], [ %i.aah, %._crit_edge271.i ], [ -70, %bb.c ], [ -34, %_ZN11duckdb_zstdL14ZDICT_dictSizeEPKNS_8dictItemE.exit224.thread.critedge.i ], [ -34, %.critedge179.i ], [ -1, %.lr.ph.i22 ]
  tail call void @free(ptr noundef nonnull %i.x) #16
  br label %_ZN11duckdb_zstdL35ZDICT_trainFromBuffer_unsafe_legacyEPvmPKvPKmjNS_21ZDICT_legacy_params_tE.exit

_ZN11duckdb_zstdL35ZDICT_trainFromBuffer_unsafe_legacyEPvmPKvPKmjNS_21ZDICT_legacy_params_tE.exit: ; preds = %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit.i, %.thread233.sink.split.i
  %.8.i = phi i64 [ -64, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit.i ], [ %.8.ph.i, %.thread233.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  tail call void @free(ptr noundef %i.o) #16
  br label %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit.thread

_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit.thread: ; preds = %bb.a, %bb.b, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit, %_ZN11duckdb_zstdL35ZDICT_trainFromBuffer_unsafe_legacyEPvmPKvPKmjNS_21ZDICT_legacy_params_tE.exit
  %.0 = phi i64 [ 0, %_ZN11duckdb_zstdL21ZDICT_totalSampleSizeEPKmj.exit ], [ %.8.i, %_ZN11duckdb_zstdL35ZDICT_trainFromBuffer_unsafe_legacyEPvmPKvPKmjNS_21ZDICT_legacy_params_tE.exit ], [ -64, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd21ZDICT_trainFromBufferEPvmPKvPKmj(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %"struct.duckdb_zstd::ZDICT_fastCover_params_t", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 8, ptr %i.a, align 4, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 4, ptr %i.b, align 4, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 3, ptr %i.c, align 4, !tbaa !96
  %i.d = call noundef i64 @_ZN11duckdb_zstd39ZDICT_optimizeTrainFromBuffer_fastCoverEPvmPKvPKmjPNS_24ZDICT_fastCover_params_tE(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i64 %i.d
}

declare noundef i64 @_ZN11duckdb_zstd39ZDICT_optimizeTrainFromBuffer_fastCoverEPvmPKvPKmjPNS_24ZDICT_fastCover_params_tE(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd32ZDICT_addEntropyTablesFromBufferEPvmmPKvPKmj(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %6 = alloca %"struct.duckdb_zstd::ZDICT_params_t", align 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL41ZDICT_addEntropyTablesFromBuffer_advancedEPvmmPKvPKmjNS_14ZDICT_params_tE(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZDICT_params_t") align 8 %6)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL41ZDICT_addEntropyTablesFromBuffer_advancedEPvmmPKvPKmjNS_14ZDICT_params_tE(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly byval(%"struct.duckdb_zstd::ZDICT_params_t") align 8 captures(none) %6) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = select i1 %i.b, i32 3, i32 %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %i.k) #18 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.n = tail call i32 @fflush(ptr noundef %i.m)  ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = add i64 %2, -8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.r = sub i64 0, %1
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r ; 3 uses
  %i.t = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZDICT_analyzeEntropyEPvmiPKvPKmjS2_mj(ptr noundef nonnull %i.o, i64 noundef %i.p, i32 noundef %i.c, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %i.s, i64 noundef %1, i32 noundef %i.e) ; 3 uses
  %i.u = icmp ult i64 %i.t, -119
  %i.v = add i64 %i.t, 8                          ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.critedge
  store i32 -332356553, ptr %0, align 1, !tbaa !3
  %i.w = tail call noundef i64 @_ZN11duckdb_zstd5XXH64EPKvmy(ptr noundef nonnull %i.s, i64 noundef %1, i64 noundef 0)
  %i.x = urem i64 %i.w, 2147450880
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, 32768
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !10 ; 2 uses
  %.not46 = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not46, i32 %i.z, i32 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ac, ptr %i.ad, align 1, !tbaa !3
  %i.ae = add i64 %i.v, %1                        ; 2 uses
  %i.af = icmp ult i64 %i.ae, %2
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %i.s, i64 %1, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.ae)
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %.1 = phi i64 [ %i.ah, %bb.e ], [ %i.t, %.critedge ]
  ret i64 %.1
}

declare noundef ptr @_ZN11duckdb_zstd18ERR_getErrorStringENS_14ZSTD_ErrorCodeE(i32 noundef) local_unnamed_addr #5

declare void @_ZN11duckdb_zstd14ZSTD_getParamsEiym(ptr dead_on_unwind writable sret(%"struct.duckdb_zstd::ZSTD_parameters") align 4, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11duckdb_zstd25ZSTD_createCDict_advancedEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_26ZSTD_compressionParametersENS_14ZSTD_customMemE(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8, ptr noundef byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8) local_unnamed_addr #5

declare noundef ptr @_ZN11duckdb_zstd15ZSTD_createCCtxEv() local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd20HUF_buildCTable_wkspEPmPKjjjPvm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd18FSE_normalizeCountEPsjPKjmjj(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd20HUF_writeCTable_wkspEPvmPKmjjS0_m(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd15FSE_writeNCountEPvmPKsjj(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE(ptr noundef) local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

declare noundef i64 @_ZN11duckdb_zstd40ZSTD_compressBegin_usingCDict_deprecatedEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd29ZSTD_compressBlock_deprecatedEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11duckdb_zstd16ZSTD_getSeqStoreEPKNS_11ZSTD_CCtx_sE(ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE(ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN11duckdb_zstd10divsufsortEPKhPiii(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @_ZN11duckdb_zstdL14ZDICT_tryMergeEPNS_8dictItemES0_jPKv(ptr nofree noundef nonnull captures(none) %0, i64 %1, i32 %2, i32 noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #11 {
bb.a:
  %.sroa.0102.sroa.0.0.extract.trunc = trunc i64 %1 to i32 ; 7 uses
  %.sroa.0102.sroa.14.0.extract.shift = lshr i64 %1, 32 ; 2 uses
  %.sroa.0102.sroa.14.0.extract.trunc = trunc nuw i64 %.sroa.0102.sroa.14.0.extract.shift to i32 ; 7 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !59     ; 3 uses
  %i.b = add i32 %.sroa.0102.sroa.14.0.extract.trunc, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.c = icmp ugt i32 %i.a, 1
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext i32 %3 to i64
  %wide.trip.count = zext i32 %i.a to i64
  br label %.lr.ph

.lr.ph197:                                        ; preds = %bb.e
  %i.e = and i64 %1, 4294967295
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = zext i32 %3 to i64
  %wide.trip.count231 = zext i32 %i.a to i64
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.i = icmp eq i64 %indvars.iv, %i.d
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59   ; 3 uses
  %i.l = icmp ule i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc
  %.not164 = icmp ugt i32 %i.k, %i.b
  %or.cond = select i1 %i.l, i1 true, i1 %.not164
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !61
  %i.p = add i32 %i.o, %i.m
  store i32 %i.p, ptr %i.n, align 4, !tbaa !61
  store i32 %.sroa.0102.sroa.0.0.extract.trunc, ptr %i.j, align 4, !tbaa !59
  %i.q = mul i32 %i.m, %2
  %i.r = udiv i32 %i.q, %.sroa.0102.sroa.14.0.extract.trunc
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !62
  %i.u = lshr i32 %.sroa.0102.sroa.14.0.extract.trunc, 3
  %i.v = add i32 %i.r, %i.u
  %i.w = add i32 %i.v, %i.t                       ; 3 uses
  store i32 %i.w, ptr %i.s, align 4, !tbaa !62
  %.sroa.0102.0.copyload = load i64, ptr %i.j, align 4
  %i.x = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.x, label %.lr.ph203, label %.critedge

.lr.ph203:                                        ; preds = %bb.c, %bb.d
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %bb.d ], [ %indvars.iv, %bb.c ] ; 3 uses
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, -1 ; 3 uses
  %i.y = and i64 %indvars.iv.next225, 4294967295
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !62
  %i.ac = icmp ult i32 %i.ab, %i.w
  br i1 %i.ac, label %bb.d, label %.critedge.loopexit.split.loop.exit270

bb.d:                                             ; preds = %.lr.ph203
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false), !tbaa.struct !82
  %i.ae = and i64 %indvars.iv.next225, 4294967294
  %.not249 = icmp eq i64 %i.ae, 0
  br i1 %.not249, label %.critedge, label %.lr.ph203, !llvm.loop !97

.critedge.loopexit.split.loop.exit270:            ; preds = %.lr.ph203
  %i.af = trunc nuw i64 %indvars.iv224 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.loopexit.split.loop.exit270, %bb.c
  %.1.lcssa = phi i32 [ 1, %bb.c ], [ %i.af, %.critedge.loopexit.split.loop.exit270 ], [ 1, %bb.d ] ; 2 uses
  %i.ag = zext i32 %.1.lcssa to i64
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.ag ; 2 uses
  store i64 %.sroa.0102.0.copyload, ptr %i.ah, align 4
  %.sroa.24.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %i.w, ptr %.sroa.24.0..sroa_idx132, align 4, !tbaa !3
  br label %.loopexit

bb.e:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph197, label %.lr.ph, !llvm.loop !98

bb.f:                                             ; preds = %.lr.ph197, %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit
  %indvars.iv227 = phi i64 [ 1, %.lr.ph197 ], [ %indvars.iv.next228, %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit ] ; 6 uses
  %i.ai = icmp eq i64 %indvars.iv227, %i.h
  br i1 %i.ai, label %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv227 ; 8 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !59 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !61 ; 6 uses
  %i.an = add i32 %i.am, %i.ak                    ; 2 uses
  %.not = icmp uge i32 %i.an, %.sroa.0102.sroa.0.0.extract.trunc
  %i.ao = icmp ult i32 %i.ak, %.sroa.0102.sroa.0.0.extract.trunc
  %or.cond165 = and i1 %i.ao, %.not
  br i1 %or.cond165, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ap = sub nsw i32 %i.b, %i.an                 ; 3 uses
  %i.aq = lshr i32 %.sroa.0102.sroa.14.0.extract.trunc, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.at = add i32 %i.as, %i.aq                    ; 3 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !62
  %i.au = icmp sgt i32 %i.ap, 0
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.aw = add i32 %i.ap, %i.am
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !61
  %i.ax = mul i32 %i.ap, %2
  %i.ay = udiv i32 %i.ax, %.sroa.0102.sroa.14.0.extract.trunc
  %i.az = add i32 %i.ay, %i.at                    ; 2 uses
  store i32 %i.az, ptr %i.ar, align 4, !tbaa !62
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.24.0.copyload135 = phi i32 [ %i.az, %bb.i ], [ %i.at, %bb.h ] ; 2 uses
  %.sroa.0102.0.copyload112 = load i64, ptr %i.aj, align 4
  %i.ba = icmp samesign ugt i64 %indvars.iv227, 1
  br i1 %i.ba, label %.lr.ph199, label %.critedge2

.lr.ph199:                                        ; preds = %bb.j, %bb.k
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %bb.k ], [ %indvars.iv227, %bb.j ] ; 3 uses
  %indvars.iv.next237 = add nsw i64 %indvars.iv236, -1 ; 3 uses
  %i.bb = and i64 %indvars.iv.next237, 4294967295
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !62
  %i.bf = icmp ult i32 %i.be, %.sroa.24.0.copyload135
  br i1 %i.bf, label %bb.k, label %.critedge2.loopexit.split.loop.exit275

bb.k:                                             ; preds = %.lr.ph199
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv236
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bg, ptr noundef nonnull align 4 dereferenceable(12) %i.bc, i64 12, i1 false), !tbaa.struct !82
  %i.bh = and i64 %indvars.iv.next237, 4294967294
  %.not250 = icmp eq i64 %i.bh, 0
  br i1 %.not250, label %.critedge2, label %.lr.ph199, !llvm.loop !99

.critedge2.loopexit.split.loop.exit275:           ; preds = %.lr.ph199
  %i.bi = trunc nuw i64 %indvars.iv236 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.k, %.critedge2.loopexit.split.loop.exit275, %bb.j
  %.3.lcssa = phi i32 [ 1, %bb.j ], [ %i.bi, %.critedge2.loopexit.split.loop.exit275 ], [ 1, %bb.k ] ; 2 uses
  %i.bj = zext i32 %.3.lcssa to i64
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.bj ; 2 uses
  store i64 %.sroa.0102.0.copyload112, ptr %i.bk, align 4
  %.sroa.24.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %.sroa.24.0.copyload135, ptr %.sroa.24.0..sroa_idx136, align 4, !tbaa !3
  br label %.loopexit

bb.l:                                             ; preds = %bb.g
  %i.bl = zext i32 %i.ak to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 %i.bl ; 2 uses
  %.val166 = load i64, ptr %i.bm, align 1, !tbaa !14
  %.val = load i64, ptr %i.g, align 1, !tbaa !14
  %i.bn = icmp eq i64 %.val166, %.val
  br i1 %i.bn, label %bb.m, label %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit

bb.m:                                             ; preds = %bb.l
  %i.bo = zext i32 %i.am to i64
  %.not13.i = icmp eq i32 %i.am, 0
  br i1 %.not13.i, label %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.010.i = phi i64 [ %i.bt, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.010.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 %.010.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.bq, %i.bs
  br i1 %.not.i, label %bb.n, label %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit

bb.n:                                             ; preds = %.lr.ph.i
  %i.bt = add nuw nsw i64 %.010.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bt, %i.bo
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread, label %.lr.ph.i, !llvm.loop !100

_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread: ; preds = %bb.m, %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.2196218 = trunc i64 %indvars.iv227 to i32
  %i.bv = sub nsw i32 %.sroa.0102.sroa.14.0.extract.trunc, %i.am
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 1)
  %spec.select = zext nneg i32 %narrow to i64
  store i32 %.sroa.0102.sroa.0.0.extract.trunc, ptr %i.aj, align 4, !tbaa !59
  %i.bw = zext i32 %2 to i64
  %i.bx = mul nuw nsw i64 %spec.select, %i.bw
  %i.by = udiv i64 %i.bx, %.sroa.0102.sroa.14.0.extract.shift
  %i.bz = trunc i64 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !62
  %i.cc = add i32 %i.cb, %i.bz
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !62
  %i.cd = add i32 %i.am, 1
  %i.ce = tail call i32 @llvm.umin.i32(i32 %i.cd, i32 %.sroa.0102.sroa.14.0.extract.trunc)
  store i32 %i.ce, ptr %i.bu, align 4, !tbaa !61
  br label %.loopexit

_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit:       ; preds = %.lr.ph.i, %bb.l, %bb.f
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count231
  br i1 %exitcond232.not, label %.loopexit, label %bb.f, !llvm.loop !101

.loopexit:                                        ; preds = %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit, %bb.a, %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread, %.critedge2, %.critedge
  %.0 = phi i32 [ %.1.lcssa, %.critedge ], [ %.3.lcssa, %.critedge2 ], [ %.2196218, %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread ], [ 0, %bb.a ], [ 0, %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN11duckdb_zstd14ZDICT_params_tE", !4, i64 0, !4, i64 4, !4, i64 8}
!9 = !{!8, !4, i64 4}
!10 = !{!8, !4, i64 8}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = distinct !{!16, !17, !18, !19}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !17, !19, !18}
!21 = distinct !{!21, !17, !18, !19}
!22 = distinct !{!22, !17, !19, !18}
!23 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !24, i64 24, i64 4, !3, i64 28, i64 4, !3, i64 32, i64 4, !3}
!24 = !{!25, !25, i64 0}
!25 = !{!"_ZTSN11duckdb_zstd13ZSTD_strategyE", !5, i64 0}
!26 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !24}
!27 = !{!28, !30, i64 16}
!28 = !{!"_ZTSN11duckdb_zstd10seqStore_tE", !29, i64 0, !29, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !15, i64 56, !15, i64 64, !31, i64 72, !4, i64 76}
!29 = !{!"p1 _ZTSN11duckdb_zstd8seqDef_sE", !13, i64 0}
!30 = !{!"p1 omnipotent char", !13, i64 0}
!31 = !{!"_ZTSN11duckdb_zstd21ZSTD_longLengthType_eE", !5, i64 0}
!32 = !{!28, !30, i64 24}
!33 = !{!5, !5, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !17}
!37 = !{!28, !29, i64 8}
!38 = !{!28, !29, i64 0}
!39 = !{!28, !30, i64 48}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !35}
!42 = !{!28, !30, i64 40}
!43 = distinct !{!43, !17}
!44 = distinct !{!44, !35}
!45 = !{!28, !30, i64 32}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !35}
!48 = !{!49, !4, i64 0}
!49 = !{!"_ZTSN11duckdb_zstd8seqDef_sE", !4, i64 0, !50, i64 4, !50, i64 6}
!50 = !{!"short", !5, i64 0}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17, !18, !19}
!54 = distinct !{!54, !17, !19, !18}
!55 = distinct !{!55, !17, !18, !19}
!56 = distinct !{!56, !17, !19, !18}
!57 = distinct !{!57, !17, !18, !19}
!58 = distinct !{!58, !17, !19, !18}
!59 = !{!60, !4, i64 0}
!60 = !{!"_ZTSN11duckdb_zstd8dictItemE", !4, i64 0, !4, i64 4, !4, i64 8}
!61 = !{!60, !4, i64 4}
!62 = !{!60, !4, i64 8}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17}
!65 = distinct !{!65, !35}
!66 = distinct !{!66, !17}
!67 = !{!50, !50, i64 0}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17}
!71 = distinct !{!71, !35}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = distinct !{!74, !17}
!75 = distinct !{!75, !17}
!76 = distinct !{!76, !17}
!77 = distinct !{!77, !17}
!78 = distinct !{!78, !17}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !17}
!81 = distinct !{!81, !17}
!82 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, !35}
!86 = distinct !{!86, !17}
!87 = distinct !{!87, !17}
!88 = distinct !{!88, !35}
!89 = distinct !{!89, !17}
!90 = distinct !{!90, !17}
!91 = distinct !{!91, !17}
!92 = !{!93, !4, i64 4}
!93 = !{!"_ZTSN11duckdb_zstd24ZDICT_fastCover_params_tE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !94, i64 24, !4, i64 32, !4, i64 36, !4, i64 40, !8, i64 44}
!94 = !{!"double", !5, i64 0}
!95 = !{!93, !4, i64 12}
!96 = !{!93, !4, i64 44}
!97 = distinct !{!97, !17}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, !17}
!100 = distinct !{!100, !17}
!101 = distinct !{!101, !17}
end_hunk_1

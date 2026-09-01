Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zdict?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ZDICT_analyzeEntropy:bb.a

bb.ab:                                            ; preds = %bb.aa
  %.not194 = icmp eq i32 %8, 0
  br i1 %.not194, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.rc = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.rd = call i64 @fwrite(ptr nonnull @.str.11, i64 23, i64 1, ptr %i.rc) #20 ; 0 uses
  %i.re = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.rf = call i32 @fflush(ptr noundef %i.re)     ; 0 uses
  br label %.thread

bb.ad:                                            ; preds = %bb.aa
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ra ; 2 uses
  %i.rh = sub i64 %1, %i.ra                       ; 2 uses
  %i.ri = call i64 @FSE_writeNCount(ptr noundef %i.rg, i64 noundef %i.rh, ptr noundef nonnull %i.d, i32 noundef 30, i32 noundef %i.qd) #16 ; 6 uses
  %i.rj = icmp ult i64 %i.ri, -119
  br i1 %i.rj, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not196 = icmp eq i32 %8, 0
  br i1 %.not196, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.rk = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.rl = call i64 @fwrite(ptr nonnull @.str.12, i64 42, i64 1, ptr %i.rk) #20 ; 0 uses
  %i.rm = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.rn = call i32 @fflush(ptr noundef %i.rm)     ; 0 uses
  br label %.thread

bb.ag:                                            ; preds = %bb.ad
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.ri ; 2 uses
  %i.rp = sub i64 %i.rh, %i.ri                    ; 2 uses
  %i.rq = call i64 @FSE_writeNCount(ptr noundef %i.ro, i64 noundef %i.rp, ptr noundef nonnull %i.f, i32 noundef 52, i32 noundef %i.qr) #16 ; 6 uses
  %i.rr = icmp ult i64 %i.rq, -119
  br i1 %i.rr, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not198 = icmp eq i32 %8, 0
  br i1 %.not198, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.rs = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.rt = call i64 @fwrite(ptr nonnull @.str.13, i64 46, i64 1, ptr %i.rs) #20 ; 0 uses
  %i.ru = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.rv = call i32 @fflush(ptr noundef %i.ru)     ; 0 uses
  br label %.thread

bb.aj:                                            ; preds = %bb.ag
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rq ; 2 uses
  %i.rx = sub i64 %i.rp, %i.rq                    ; 2 uses
  %i.ry = call i64 @FSE_writeNCount(ptr noundef %i.rw, i64 noundef %i.rx, ptr noundef nonnull %i.h, i32 noundef 35, i32 noundef %i.qz) #16 ; 6 uses
  %i.rz = icmp ult i64 %i.ry, -119
  br i1 %i.rz, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not200 = icmp eq i32 %8, 0
  br i1 %.not200, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.sa = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.sb = call i64 @fwrite(ptr nonnull @.str.14, i64 44, i64 1, ptr %i.sa) #20 ; 0 uses
  %i.sc = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.sd = call i32 @fflush(ptr noundef %i.sc)     ; 0 uses
  br label %.thread

bb.am:                                            ; preds = %bb.aj
  %i.se = sub i64 %i.rx, %i.ry
  %i.sf = icmp ult i64 %i.se, 12
  br i1 %i.sf, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %.not201 = icmp eq i32 %8, 0
  br i1 %.not201, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.sg = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.sh = call i64 @fwrite(ptr nonnull @.str.15, i64 38, i64 1, ptr %i.sg) #20 ; 0 uses
  %i.si = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.sj = call i32 @fflush(ptr noundef %i.si)     ; 0 uses
  br label %.thread

bb.ap:                                            ; preds = %bb.am
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.ry ; 3 uses
  store i32 1, ptr %i.sk, align 1, !tbaa !8
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  store i32 4, ptr %i.sl, align 1, !tbaa !8
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  store i32 8, ptr %i.sm, align 1, !tbaa !8
  %i.sn = add nuw i64 %i.ra, 12
  %i.so = add i64 %i.sn, %i.ri
  %i.sp = add i64 %i.so, %i.rq
  %i.sq = add i64 %i.sp, %i.ry
  br label %.thread

.thread:                                          ; preds = %bb.ak, %bb.al, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.ab, %bb.ac, %bb.n, %bb.o, %ZDICT_totalSampleSize.exit, %bb.an, %bb.ao, %bb.y, %bb.z, %bb.v, %bb.w, %bb.s, %bb.t, %bb.b, %bb.c, %bb.ap
  %.sroa.0.0 = phi ptr [ null, %ZDICT_totalSampleSize.exit ], [ %i.dq, %bb.an ], [ %i.dq, %bb.ao ], [ %i.dq, %bb.ap ], [ %i.dq, %bb.ah ], [ %i.dq, %bb.ae ], [ %i.dq, %bb.ab ], [ %i.dq, %bb.n ], [ %i.dq, %bb.y ], [ %i.dq, %bb.z ], [ %i.dq, %bb.v ], [ %i.dq, %bb.w ], [ %i.dq, %bb.s ], [ %i.dq, %bb.t ], [ %i.dq, %bb.c ], [ %i.dq, %bb.b ], [ %i.dq, %bb.o ], [ %i.dq, %bb.ac ], [ %i.dq, %bb.af ], [ %i.dq, %bb.ai ], [ %i.dq, %bb.al ], [ %i.dq, %bb.ak ]
  %.sroa.7.0 = phi ptr [ null, %ZDICT_totalSampleSize.exit ], [ %i.dr, %bb.an ], [ %i.dr, %bb.ao ], [ %i.dr, %bb.ap ], [ %i.dr, %bb.ah ], [ %i.dr, %bb.ae ], [ %i.dr, %bb.ab ], [ %i.dr, %bb.n ], [ %i.dr, %bb.y ], [ %i.dr, %bb.z ], [ %i.dr, %bb.v ], [ %i.dr, %bb.w ], [ %i.dr, %bb.s ], [ %i.dr, %bb.t ], [ %i.dr, %bb.c ], [ %i.dr, %bb.b ], [ %i.dr, %bb.o ], [ %i.dr, %bb.ac ], [ %i.dr, %bb.af ], [ %i.dr, %bb.ai ], [ %i.dr, %bb.al ], [ %i.dr, %bb.ak ]
  %.sroa.9.0 = phi ptr [ null, %ZDICT_totalSampleSize.exit ], [ %i.ds, %bb.an ], [ %i.ds, %bb.ao ], [ %i.ds, %bb.ap ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ae ], [ %i.ds, %bb.ab ], [ %i.ds, %bb.n ], [ %i.ds, %bb.y ], [ %i.ds, %bb.z ], [ %i.ds, %bb.v ], [ %i.ds, %bb.w ], [ %i.ds, %bb.s ], [ %i.ds, %bb.t ], [ %i.ds, %bb.c ], [ %i.ds, %bb.b ], [ %i.ds, %bb.o ], [ %i.ds, %bb.ac ], [ %i.ds, %bb.af ], [ %i.ds, %bb.ai ], [ %i.ds, %bb.al ], [ %i.ds, %bb.ak ]
  %.5 = phi i64 [ -34, %ZDICT_totalSampleSize.exit ], [ -70, %bb.an ], [ -70, %bb.ao ], [ %i.sq, %bb.ap ], [ %i.rq, %bb.ah ], [ %i.ri, %bb.ae ], [ %i.ra, %bb.ab ], [ %i.lz, %bb.n ], [ %i.qt, %bb.y ], [ %i.qt, %bb.z ], [ %i.qf, %bb.v ], [ %i.qf, %bb.w ], [ %i.pq, %bb.s ], [ %i.pq, %bb.t ], [ -64, %bb.c ], [ -64, %bb.b ], [ %i.lz, %bb.o ], [ %i.ra, %bb.ac ], [ %i.ri, %bb.af ], [ %i.rq, %bb.ai ], [ %i.ry, %bb.al ], [ %i.ry, %bb.ak ]
  %i.sr = call i64 @ZSTD_freeCDict(ptr noundef %.sroa.0.0) #16 ; 0 uses
  %i.ss = call i64 @ZSTD_freeCCtx(ptr noundef %.sroa.7.0) #16 ; 0 uses
  call void @free(ptr noundef %.sroa.9.0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
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
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define i64 @ZDICT_trainFromBuffer_legacy(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly byval(%struct.ZDICT_legacy_params_t) align 8 captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 13 uses
  %i.b = alloca [64 x i32], align 16              ; 64 uses
  %i.c = alloca [64 x i32], align 16              ; 10 uses
  %6 = alloca %struct.ZDICT_params_t, align 8     ; 5 uses
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %ZDICT_totalSampleSize.exit.thread, label %.lr.ph.preheader.i

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
  %vec.phi129 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !16
  %wide.load130 = load <2 x i64>, ptr %i.e, align 8, !tbaa !16
  %i.f = add <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.g = add <2 x i64> %wide.load130, %vec.phi129 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.g, %i.f
  %i.i = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %ZDICT_totalSampleSize.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.067.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.i, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.067.i = phi i64 [ %i.l, %.lr.ph.i ], [ %.067.i.ph, %.lr.ph.i.preheader ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16
  %i.l = add i64 %i.k, %.067.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ZDICT_totalSampleSize.exit, label %.lr.ph.i, !llvm.loop !56

ZDICT_totalSampleSize.exit:                       ; preds = %.lr.ph.i, %middle.block
  %.lcssa128 = phi i64 [ %i.i, %middle.block ], [ %i.l, %.lr.ph.i ] ; 4 uses
  %i.m = icmp ult i64 %.lcssa128, 512
  br i1 %i.m, label %ZDICT_totalSampleSize.exit.thread, label %bb.b

bb.b:                                             ; preds = %ZDICT_totalSampleSize.exit
  %i.n = add i64 %.lcssa128, 32
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #17 ; 21 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %ZDICT_totalSampleSize.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %2, i64 %.lcssa128, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.lcssa128 ; 2 uses
  store <16 x i8> <i8 -30, i8 51, i8 -9, i8 105, i8 -35, i8 -31, i8 -119, i8 112, i8 5, i8 -68, i8 15, i8 79, i8 -73, i8 -13, i8 110, i8 -47>, ptr %i.p, align 1, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> <i8 14, i8 -34, i8 95, i8 14, i8 -114, i8 -50, i8 31, i8 67, i8 -40, i8 -37, i8 31, i8 -102, i8 88, i8 -72, i8 -78, i8 0>, ptr %i.q, align 1, !tbaa !33
  %.sroa.0.0.copyload = load i32, ptr %5, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %i.r = load <2 x i32>, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  %i.s = lshr i64 %1, 4
  %i.t = trunc i64 %i.s to i32
  %i.u = tail call i32 @llvm.umax.i32(i32 %4, i32 %i.t)
  %..i = tail call i32 @llvm.umax.i32(i32 %i.u, i32 10000) ; 2 uses
  %i.v = zext i32 %..i to i64
  %i.w = mul nuw nsw i64 %i.v, 12
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #17 ; 34 uses
  %min.iters.check132 = icmp ult i32 %4, 4
  br i1 %min.iters.check132, label %.lr.ph.i.i.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec134 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next141, %vector.body135 ] ; 2 uses
  %vec.phi137 = phi <2 x i64> [ zeroinitializer, %vector.ph133 ], [ %i.aa, %vector.body135 ]
  %vec.phi138 = phi <2 x i64> [ zeroinitializer, %vector.ph133 ], [ %i.ab, %vector.body135 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index136 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load139 = load <2 x i64>, ptr %i.y, align 8, !tbaa !16
  %wide.load140 = load <2 x i64>, ptr %i.z, align 8, !tbaa !16
  %i.aa = add <2 x i64> %wide.load139, %vec.phi137 ; 2 uses
  %i.ab = add <2 x i64> %wide.load140, %vec.phi138 ; 2 uses
  %index.next141 = add nuw i64 %index136, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next141, %n.vec134
  br i1 %i.ac, label %middle.block142, label %vector.body135, !llvm.loop !57

middle.block142:                                  ; preds = %vector.body135
  %bin.rdx143 = add <2 x i64> %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx143) ; 2 uses
  %cmp.n144 = icmp eq i64 %n.vec134, %wide.trip.count.i
  br i1 %cmp.n144, label %ZDICT_totalSampleSize.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block142
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec134, %middle.block142 ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.ad, %middle.block142 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ag = add i64 %i.af, %.067.i.i                ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond.not.i.i, label %ZDICT_totalSampleSize.exit.i, label %.lr.ph.i.i, !llvm.loop !58

ZDICT_totalSampleSize.exit.i:                     ; preds = %.lr.ph.i.i, %middle.block142
  %.lcssa127 = phi i64 [ %i.ad, %middle.block142 ], [ %i.ag, %.lr.ph.i.i ] ; 10 uses
  %i.ah = icmp eq i32 %.sroa.0.0.copyload, 0
  %i.ai = select i1 %i.ah, i32 9, i32 %.sroa.0.0.copyload ; 5 uses
  %i.aj = icmp ugt i32 %i.ai, 30
  %i.ak = lshr i32 %4, %i.ai
  %i.al = select i1 %i.aj, i32 4, i32 %i.ak       ; 2 uses
  %.not.i19 = icmp eq ptr %i.x, null
  br i1 %.not.i19, label %ZDICT_trainFromBuffer_unsafe_legacy.exit, label %bb.c

bb.c:                                             ; preds = %ZDICT_totalSampleSize.exit.i
  %i.am = icmp ult i64 %1, 256
  br i1 %i.am, label %.thread233.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = icmp ult i64 %.lcssa127, 512
  br i1 %i.an, label %.thread233.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.x, align 4, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 -1, ptr %i.ap, align 4, !tbaa !12
  %i.aq = shl i64 %.lcssa127, 2                   ; 2 uses
  %i.ar = add i64 %i.aq, 8
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #17 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 22 uses
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.aq) #17 ; 8 uses
  %i.av = add i64 %.lcssa127, 16                  ; 2 uses
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.av) #17 ; 11 uses
  %i.ax = icmp ugt i32 %.sroa.5.0.copyload, 1     ; 5 uses
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ay, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19 ; 0 uses
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bb = tail call i32 @fflush(ptr noundef %i.ba) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = icmp ne ptr %i.as, null
  %i.bd = icmp ne ptr %i.au, null
  %or.cond.i.i = and i1 %i.bc, %i.bd
  %i.be = icmp ne ptr %i.aw, null
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.be
  br i1 %or.cond3.i.i, label %bb.h, label %ZDICT_trainBuffer_legacy.exit.i

bb.h:                                             ; preds = %bb.g
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.al, i32 4) ; 60 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aw, i8 0, i64 %i.av, i1 false)
  %i.bf = icmp ugt i64 %.lcssa127, 2097152000     ; 2 uses
  %i.bg = icmp ugt i32 %.sroa.5.0.copyload, 2     ; 2 uses
  %or.cond7.i.i = and i1 %i.bg, %i.bf
  br i1 %or.cond7.i.i, label %.thread186.i.i, label %bb.i

.thread186.i.i:                                   ; preds = %bb.h
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bh, ptr noundef nonnull @.str.29, i32 noundef 2000) #19 ; 0 uses
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bk = tail call i32 @fflush(ptr noundef %i.bj) ; 0 uses
  br label %.lr.ph.i192.i.preheader

bb.i:                                             ; preds = %bb.h
  br i1 %i.bf, label %.lr.ph.i192.i.preheader, label %._crit_edge.i.i

.lr.ph.i192.i.preheader:                          ; preds = %bb.i, %.thread186.i.i
  br label %.lr.ph.i192.i

.lr.ph.i192.i:                                    ; preds = %.lr.ph.i192.i.preheader, %.lr.ph.i192.i
  %.093132.i.i = phi i64 [ %i.bp, %.lr.ph.i192.i ], [ %.lcssa127, %.lr.ph.i192.i.preheader ]
  %.094131.i.i = phi i32 [ %i.bl, %.lr.ph.i192.i ], [ %4, %.lr.ph.i192.i.preheader ]
  %i.bl = add i32 %.094131.i.i, -1                ; 3 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.bp = sub i64 %.093132.i.i, %i.bo             ; 3 uses
  %i.bq = icmp ugt i64 %i.bp, 2097152000
  br i1 %i.bq, label %.lr.ph.i192.i, label %._crit_edge.i.i, !llvm.loop !59

._crit_edge.i.i:                                  ; preds = %.lr.ph.i192.i, %bb.i
  %.094.lcssa.i.i = phi i32 [ %4, %bb.i ], [ %i.bl, %.lr.ph.i192.i ]
  %.093.lcssa.i.i = phi i64 [ %.lcssa127, %bb.i ], [ %i.bp, %.lr.ph.i192.i ] ; 9 uses
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bs = lshr i64 %.093.lcssa.i.i, 20
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.30, i32 noundef %.094.lcssa.i.i, i32 noundef %i.bt) #19 ; 0 uses
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bw = tail call i32 @fflush(ptr noundef %i.bv) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %i.bx = trunc nuw nsw i64 %.093.lcssa.i.i to i32 ; 3 uses
  %i.by = tail call i32 @divsufsort(ptr noundef nonnull %i.o, ptr noundef nonnull %i.at, i32 noundef %i.bx, i32 noundef 0) #16
  %.not.i189.not.i = icmp eq i32 %i.by, 0
  br i1 %.not.i189.not.i, label %bb.l, label %ZDICT_trainBuffer_legacy.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.093.lcssa.i.i
  store i32 %i.bx, ptr %i.bz, align 4, !tbaa !8
  store i32 %i.bx, ptr %i.as, align 4, !tbaa !8
  %.not153.i.i = icmp eq i64 %.093.lcssa.i.i, 0   ; 2 uses
  br i1 %.not153.i.i, label %._crit_edge141.i.i, label %.lr.ph136.i.i.preheader

.lr.ph136.i.i.preheader:                          ; preds = %bb.l
  %xtraiter = and i64 %.093.lcssa.i.i, 3          ; 3 uses
  %i.ca = icmp ult i64 %.093.lcssa.i.i, 4
  br i1 %i.ca, label %.lr.ph136.i.i.epil.preheader, label %.lr.ph136.i.i.preheader.new

.lr.ph136.i.i.preheader.new:                      ; preds = %.lr.ph136.i.i.preheader
  %unroll_iter = and i64 %.093.lcssa.i.i, 2147483644
  br label %.lr.ph136.i.i

.lr.ph136.i.i:                                    ; preds = %.lr.ph136.i.i, %.lr.ph136.i.i.preheader.new
  %.096134.i.i = phi i64 [ 0, %.lr.ph136.i.i.preheader.new ], [ %i.cy, %.lr.ph136.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph136.i.i.preheader.new ], [ %niter.next.3, %.lr.ph136.i.i ]
  %i.cb = trunc nuw nsw i64 %.096134.i.i to i32
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.096134.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ce
  store i32 %i.cb, ptr %i.cf, align 4, !tbaa !8
  %i.cg = or disjoint i64 %.096134.i.i, 1         ; 2 uses
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cg
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ck
  store i32 %i.ch, ptr %i.cl, align 4, !tbaa !8
  %i.cm = or disjoint i64 %.096134.i.i, 2         ; 2 uses
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cm
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.cq
  store i32 %i.cn, ptr %i.cr, align 4, !tbaa !8
  %i.cs = or disjoint i64 %.096134.i.i, 3         ; 2 uses
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cs
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.cw
  store i32 %i.ct, ptr %i.cx, align 4, !tbaa !8
  %i.cy = add nuw nsw i64 %.096134.i.i, 4         ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge141.i.i.loopexit.unr-lcssa, label %.lr.ph136.i.i, !llvm.loop !60

._crit_edge141.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph136.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge141.i.i, label %.lr.ph136.i.i.epil.preheader

.lr.ph136.i.i.epil.preheader:                     ; preds = %._crit_edge141.i.i.loopexit.unr-lcssa, %.lr.ph136.i.i.preheader
  %.096134.i.i.epil.init = phi i64 [ 0, %.lr.ph136.i.i.preheader ], [ %i.cy, %._crit_edge141.i.i.loopexit.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph136.i.i.epil

.lr.ph136.i.i.epil:                               ; preds = %.lr.ph136.i.i.epil, %.lr.ph136.i.i.epil.preheader
  %.096134.i.i.epil = phi i64 [ %i.de, %.lr.ph136.i.i.epil ], [ %.096134.i.i.epil.init, %.lr.ph136.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph136.i.i.epil ], [ 0, %.lr.ph136.i.i.epil.preheader ]
  %i.cz = trunc nuw nsw i64 %.096134.i.i.epil to i32
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.096134.i.i.epil
  %i.db = load i32, ptr %i.da, align 4, !tbaa !8
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.dc
  store i32 %i.cz, ptr %i.dd, align 4, !tbaa !8
  %i.de = add nuw nsw i64 %.096134.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge141.i.i, label %.lr.ph136.i.i.epil, !llvm.loop !61

._crit_edge141.i.i:                               ; preds = %._crit_edge141.i.i.loopexit.unr-lcssa, %.lr.ph136.i.i.epil, %bb.l
  br i1 %i.ax, label %bb.m, label %.thread.i.i

bb.m:                                             ; preds = %._crit_edge141.i.i
  %i.df = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dg = tail call i64 @fwrite(ptr nonnull @.str.31, i64 22, i64 1, ptr %i.df) #20 ; 0 uses
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.di = tail call i32 @fflush(ptr noundef %i.dh) ; 0 uses
  br i1 %i.bg, label %bb.n, label %.thread.i.i

bb.n:                                             ; preds = %bb.m
  %i.dj = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dj, ptr noundef nonnull @.str.32, i32 noundef %spec.store.select.i.i) #19 ; 0 uses
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dm = tail call i32 @fflush(ptr noundef %i.dl) ; 0 uses
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.n, %bb.m, %._crit_edge141.i.i
  br i1 %.not153.i.i, label %ZDICT_trainBuffer_legacy.exit.i, label %.lr.ph152.i.i

.lr.ph152.i.i:                                    ; preds = %.thread.i.i
  %i.dn = icmp ugt i32 %.sroa.5.0.copyload, 3     ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 252 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 124
end_hunk_0
begin_hunk_1_@ZDICT_trainFromBuffer_legacy:bb.a
  %niter195 = phi i64 [ 0, %.lr.ph.preheader.i194.i.new ], [ %niter195.next.3, %.lr.ph.i196.i ]
  %i.ul = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 4
  %i.un = load i32, ptr %i.um, align 4, !tbaa !11
  %i.uo = add i32 %i.un, %.08.i.i
  %i.up = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !11
  %i.us = add i32 %i.ur, %i.uo
  %i.ut = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 28
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !11
  %i.uw = add i32 %i.uv, %i.us
  %i.ux = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 40
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !11
  %i.va = add i32 %i.uz, %i.uw                    ; 3 uses
  %indvars.iv.next.i198.i.3 = add nuw nsw i64 %indvars.iv.i197.i, 4 ; 2 uses
  %niter195.next.3 = add nuw i64 %niter195, 4     ; 2 uses
  %niter195.ncmp.3 = icmp eq i64 %niter195.next.3, %unroll_iter194
  br i1 %niter195.ncmp.3, label %.critedge.i.unr-lcssa, label %.lr.ph.i196.i, !llvm.loop !79

.critedge.i.unr-lcssa:                            ; preds = %.lr.ph.i196.i
  %lcmp.mod191.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod191.not, label %.critedge.i, label %.lr.ph.i196.i.epil.preheader

.lr.ph.i196.i.epil.preheader:                     ; preds = %.critedge.i.unr-lcssa, %.lr.ph.preheader.i194.i
  %indvars.iv.i197.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i194.i ], [ %indvars.iv.next.i198.i.3, %.critedge.i.unr-lcssa ]
  %.08.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i194.i ], [ %i.va, %.critedge.i.unr-lcssa ]
  %lcmp.mod193 = icmp ne i64 %xtraiter189, 0
  tail call void @llvm.assume(i1 %lcmp.mod193)
  br label %.lr.ph.i196.i.epil

.lr.ph.i196.i.epil:                               ; preds = %.lr.ph.i196.i.epil, %.lr.ph.i196.i.epil.preheader
  %indvars.iv.i197.i.epil = phi i64 [ %indvars.iv.i197.i.epil.init, %.lr.ph.i196.i.epil.preheader ], [ %indvars.iv.next.i198.i.epil, %.lr.ph.i196.i.epil ] ; 2 uses
  %.08.i.i.epil = phi i32 [ %.08.i.i.epil.init, %.lr.ph.i196.i.epil.preheader ], [ %i.ve, %.lr.ph.i196.i.epil ]
  %epil.iter190 = phi i64 [ 0, %.lr.ph.i196.i.epil.preheader ], [ %epil.iter190.next, %.lr.ph.i196.i.epil ]
  %i.vb = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i.epil
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !11
  %i.ve = add i32 %i.vd, %.08.i.i.epil            ; 2 uses
  %indvars.iv.next.i198.i.epil = add nuw nsw i64 %indvars.iv.i197.i.epil, 1
  %epil.iter190.next = add i64 %epil.iter190, 1   ; 2 uses
  %epil.iter190.cmp.not = icmp eq i64 %epil.iter190.next, %xtraiter189
  br i1 %epil.iter190.cmp.not, label %.critedge.i, label %.lr.ph.i196.i.epil, !llvm.loop !80

.critedge.i:                                      ; preds = %.lr.ph.i196.i.epil, %.critedge.i.unr-lcssa
  %.lcssa151 = phi i32 [ %i.va, %.critedge.i.unr-lcssa ], [ %i.ve, %.lr.ph.i196.i.epil ]
  %i.vf = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.vg = add i32 %.pre.i, -1
  %i.vh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vf, ptr noundef nonnull @.str.18, i32 noundef %i.vg, i32 noundef %.lcssa151) #19 ; 0 uses
  %i.vi = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.vj = tail call i32 @fflush(ptr noundef %i.vi) ; 0 uses
  %i.vk = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.vl = add nsw i32 %spec.select.i, -1
  %i.vm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vk, ptr noundef nonnull @.str.19, i32 noundef %i.vl) #19 ; 0 uses
  %i.vn = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.vo = tail call i32 @fflush(ptr noundef %i.vn) ; 0 uses
  %wide.trip.count.i21 = zext nneg i32 %spec.select.i to i64
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.loopexit.i, %.critedge.i
  %indvars.iv.i23 = phi i64 [ 1, %.critedge.i ], [ %indvars.iv.next.i24, %.loopexit.i ] ; 3 uses
  %i.vp = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i23 ; 3 uses
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !9  ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 4
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !11 ; 4 uses
  %i.vt = zext i32 %i.vq to i64                   ; 2 uses
  %i.vu = icmp ult i64 %.lcssa127, %i.vt
  %i.vv = add i32 %i.vs, %i.vq
  %i.vw = zext i32 %i.vv to i64
  %i.vx = icmp ult i64 %.lcssa127, %i.vw
  %or.cond173.i = select i1 %i.vu, i1 true, i1 %i.vx
  br i1 %or.cond173.i, label %.thread233.sink.split.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i22
  %i.vy = tail call i32 @llvm.umin.i32(i32 %i.vs, i32 40)
  %i.vz = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !12
  %i.wc = trunc nuw nsw i64 %indvars.iv.i23 to i32
  %i.wd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vz, ptr noundef nonnull @.str.20, i32 noundef %i.wc, i32 noundef %i.vs, i32 noundef %i.vq, i32 noundef %i.wb) #19 ; 0 uses
  %i.we = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.wf = tail call i32 @fflush(ptr noundef %i.we) ; 0 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.vt
  %i.wh = zext nneg i32 %i.vy to i64
  %.not.i200.i = icmp eq i32 %i.vs, 0
  br i1 %.not.i200.i, label %.loopexit.i, label %.lr.ph.i201.i

.lr.ph.i201.i:                                    ; preds = %bb.ay, %.lr.ph.i201.i
  %.010.i.i = phi i64 [ %i.wp, %.lr.ph.i201.i ], [ 0, %bb.ay ] ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wg, i64 %.010.i.i
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !33  ; 2 uses
  %i.wk = add i8 %i.wj, -127
  %or.cond.i202.i = icmp ult i8 %i.wk, -95
  %spec.store.select.i203.i = select i1 %or.cond.i202.i, i8 46, i8 %i.wj
  %i.wl = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.wm = zext i8 %spec.store.select.i203.i to i32
  %fputc.i.i = tail call i32 @fputc(i32 %i.wm, ptr %i.wl) ; 0 uses
  %i.wn = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.wo = tail call i32 @fflush(ptr noundef %i.wn) ; 0 uses
  %i.wp = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i204.i = icmp eq i64 %i.wp, %i.wh
  br i1 %exitcond.not.i204.i, label %.loopexit.i, label %.lr.ph.i201.i, !llvm.loop !81

.loopexit.i:                                      ; preds = %.lr.ph.i201.i, %bb.ay
  %i.wq = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.wr = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %i.wq) #20 ; 0 uses
  %i.ws = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.wt = tail call i32 @fflush(ptr noundef %i.ws) ; 0 uses
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %indvars.iv.next.i24, %wide.trip.count.i21
  br i1 %exitcond.not.i25, label %.critedge179.i, label %.lr.ph.i22, !llvm.loop !82

.critedge179.i:                                   ; preds = %.loopexit.i, %ZDICT_trainBuffer_legacy.exit.i
  %i.wu = icmp ugt i32 %.pre.i, 1
  br i1 %i.wu, label %.lr.ph.preheader.i217.i, label %.thread233.sink.split.i

.lr.ph.preheader.i217.i:                          ; preds = %.critedge179.i
  %wide.trip.count.i218.i = zext i32 %.pre.i to i64 ; 3 uses
  %i.wv = add nsw i64 %wide.trip.count.i218.i, -1 ; 2 uses
  %xtraiter196 = and i64 %i.wv, 3                 ; 3 uses
  %i.ww = add i32 %.pre.i, -2
  %i.wx = icmp ult i32 %i.ww, 3
  br i1 %i.wx, label %.lr.ph.i219.i.epil.preheader, label %.lr.ph.preheader.i217.i.new

.lr.ph.preheader.i217.i.new:                      ; preds = %.lr.ph.preheader.i217.i
  %unroll_iter201 = and i64 %i.wv, -4
  br label %.lr.ph.i219.i

.lr.ph.i219.i:                                    ; preds = %.lr.ph.i219.i, %.lr.ph.preheader.i217.i.new
  %indvars.iv.i220.i = phi i64 [ 1, %.lr.ph.preheader.i217.i.new ], [ %indvars.iv.next.i222.i.3, %.lr.ph.i219.i ] ; 5 uses
  %.08.i221.i = phi i32 [ 0, %.lr.ph.preheader.i217.i.new ], [ %i.xn, %.lr.ph.i219.i ]
  %niter202 = phi i64 [ 0, %.lr.ph.preheader.i217.i.new ], [ %niter202.next.3, %.lr.ph.i219.i ]
  %i.wy = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i220.i
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 4
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !11
  %i.xb = add i32 %i.xa, %.08.i221.i
  %i.xc = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i220.i
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 16
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !11
  %i.xf = add i32 %i.xe, %i.xb
  %i.xg = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i220.i
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 28
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !11
  %i.xj = add i32 %i.xi, %i.xf
  %i.xk = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i220.i
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 40
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !11
  %i.xn = add i32 %i.xm, %i.xj                    ; 3 uses
  %indvars.iv.next.i222.i.3 = add nuw nsw i64 %indvars.iv.i220.i, 4 ; 2 uses
  %niter202.next.3 = add nuw i64 %niter202, 4     ; 2 uses
  %niter202.ncmp.3 = icmp eq i64 %niter202.next.3, %unroll_iter201
  br i1 %niter202.ncmp.3, label %ZDICT_dictSize.exit224.i.unr-lcssa, label %.lr.ph.i219.i, !llvm.loop !79

ZDICT_dictSize.exit224.i.unr-lcssa:               ; preds = %.lr.ph.i219.i
  %lcmp.mod198.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod198.not, label %ZDICT_dictSize.exit224.i, label %.lr.ph.i219.i.epil.preheader

.lr.ph.i219.i.epil.preheader:                     ; preds = %ZDICT_dictSize.exit224.i.unr-lcssa, %.lr.ph.preheader.i217.i
  %indvars.iv.i220.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i217.i ], [ %indvars.iv.next.i222.i.3, %ZDICT_dictSize.exit224.i.unr-lcssa ]
  %.08.i221.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i217.i ], [ %i.xn, %ZDICT_dictSize.exit224.i.unr-lcssa ]
  %lcmp.mod200 = icmp ne i64 %xtraiter196, 0
  tail call void @llvm.assume(i1 %lcmp.mod200)
  br label %.lr.ph.i219.i.epil

.lr.ph.i219.i.epil:                               ; preds = %.lr.ph.i219.i.epil, %.lr.ph.i219.i.epil.preheader
  %indvars.iv.i220.i.epil = phi i64 [ %indvars.iv.i220.i.epil.init, %.lr.ph.i219.i.epil.preheader ], [ %indvars.iv.next.i222.i.epil, %.lr.ph.i219.i.epil ] ; 2 uses
  %.08.i221.i.epil = phi i32 [ %.08.i221.i.epil.init, %.lr.ph.i219.i.epil.preheader ], [ %i.xr, %.lr.ph.i219.i.epil ]
  %epil.iter197 = phi i64 [ 0, %.lr.ph.i219.i.epil.preheader ], [ %epil.iter197.next, %.lr.ph.i219.i.epil ]
  %i.xo = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i220.i.epil
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 4
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !11
  %i.xr = add i32 %i.xq, %.08.i221.i.epil         ; 2 uses
  %indvars.iv.next.i222.i.epil = add nuw nsw i64 %indvars.iv.i220.i.epil, 1
  %epil.iter197.next = add i64 %epil.iter197, 1   ; 2 uses
  %epil.iter197.cmp.not = icmp eq i64 %epil.iter197.next, %xtraiter196
  br i1 %epil.iter197.cmp.not, label %ZDICT_dictSize.exit224.i, label %.lr.ph.i219.i.epil, !llvm.loop !83

ZDICT_dictSize.exit224.i:                         ; preds = %.lr.ph.i219.i.epil, %ZDICT_dictSize.exit224.i.unr-lcssa
  %.lcssa = phi i32 [ %i.xn, %ZDICT_dictSize.exit224.i.unr-lcssa ], [ %i.xr, %.lr.ph.i219.i.epil ] ; 4 uses
  %i.xs = icmp ult i32 %.lcssa, 128
  br i1 %i.xs, label %.thread233.sink.split.i, label %bb.az

ZDICT_dictSize.exit224.thread.critedge.i:         ; preds = %bb.ax
  %i.xt = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.xu = add nsw i32 %.pre.i, -1
  %i.xv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xt, ptr noundef nonnull @.str.18, i32 noundef %i.xu, i32 noundef 0) #19 ; 0 uses
  %i.xw = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.xx = tail call i32 @fflush(ptr noundef %i.xw) ; 0 uses
  %i.xy = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.xz = add nsw i32 %spec.select.i, -1
  %i.ya = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xy, ptr noundef nonnull @.str.19, i32 noundef %i.xz) #19 ; 0 uses
  %i.yb = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.yc = tail call i32 @fflush(ptr noundef %i.yb) ; 0 uses
  br label %.thread233.sink.split.i

bb.az:                                            ; preds = %ZDICT_dictSize.exit224.i
  %i.yd = zext i32 %.lcssa to i64                 ; 2 uses
  %i.ye = lshr i64 %1, 2
  %7 = icmp samesign ule i64 %i.ye, %i.yd
  %.not238.i = icmp ult i32 %.sroa.5.0.copyload, 2
  %brmerge239.i = or i1 %.not238.i, %7
  br i1 %brmerge239.i, label %.critedge181.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.yf = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.yg = trunc i64 %1 to i32
  %i.yh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yf, ptr noundef nonnull @.str.22, i32 noundef %.lcssa, i32 noundef %i.yg) #19 ; 0 uses
  %i.yi = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.yj = tail call i32 @fflush(ptr noundef %i.yi) ; 0 uses
  %i.yk = mul i64 %1, 10
  %i.yl = icmp ult i64 %.lcssa127, %i.yk
  br i1 %i.yl, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ym = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.yn = lshr i64 %.lcssa127, 20
  %i.yo = trunc i64 %i.yn to i32
  %i.yp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ym, ptr noundef nonnull @.str.23, i32 noundef %i.yo) #19 ; 0 uses
  %i.yq = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.yr = tail call i32 @fflush(ptr noundef %i.yq) ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %8 = icmp ult i32 %i.al, 5
  br i1 %8, label %.critedge181.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ys = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.yt = add i32 %i.ai, 1
  %i.yu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ys, ptr noundef nonnull @.str.24, i32 noundef %i.yt) #19 ; 0 uses
  %i.yv = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.yw = tail call i32 @fflush(ptr noundef %i.yv) ; 0 uses
  %i.yx = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.yy = tail call i64 @fwrite(ptr nonnull @.str.25, i64 90, i64 1, ptr %i.yx) #20 ; 0 uses
  %i.yz = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.za = tail call i32 @fflush(ptr noundef %i.yz) ; 0 uses
  br label %.critedge181.i

.critedge181.i:                                   ; preds = %bb.bd, %bb.bc, %bb.az
  %i.zb = mul i64 %1, 3
  %i.zc = icmp ult i64 %i.zb, %i.yd
  %i.zd = icmp ugt i32 %4, 8
  %or.cond.i = and i1 %i.zd, %i.zc
  %i.ze = icmp ugt i32 %i.ai, 1
  %or.cond7.i = select i1 %or.cond.i, i1 %i.ze, i1 false
  br i1 %or.cond7.i, label %.preheader.i, label %.lr.ph261.i.preheader

.preheader.i:                                     ; preds = %.critedge181.i, %.preheader.i
  %.0147.in.i = phi i32 [ %.0147.i, %.preheader.i ], [ %i.ai, %.critedge181.i ]
  %.0147.i = add i32 %.0147.in.i, -1              ; 3 uses
  %i.zf = lshr i32 %4, %.0147.i
  %i.zg = icmp ult i32 %i.zf, 5
  br i1 %i.zg, label %.preheader.i, label %bb.be, !llvm.loop !84

bb.be:                                            ; preds = %.preheader.i
  br i1 %i.ax, label %.critedge183.i, label %.lr.ph261.i.preheader

.critedge183.i:                                   ; preds = %bb.be
  %i.zh = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.zi = trunc i64 %1 to i32
  %i.zj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zh, ptr noundef nonnull @.str.26, i32 noundef %.lcssa, i32 noundef %i.zi) #19 ; 0 uses
  %i.zk = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.zl = tail call i32 @fflush(ptr noundef %i.zk) ; 0 uses
  %i.zm = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.zn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zm, ptr noundef nonnull @.str.27, i32 noundef %.0147.i) #19 ; 0 uses
  %i.zo = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.zp = tail call i32 @fflush(ptr noundef %i.zo) ; 0 uses
  %i.zq = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.zr = tail call i64 @fwrite(ptr nonnull @.str.28, i64 54, i64 1, ptr %i.zq) #20 ; 0 uses
  %i.zs = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.zt = tail call i32 @fflush(ptr noundef %i.zs) ; 0 uses
  br label %.lr.ph261.i.preheader

.lr.ph261.i.preheader:                            ; preds = %.critedge183.i, %bb.be, %.critedge181.i
  br label %.lr.ph261.i

.lr.ph261.i:                                      ; preds = %.lr.ph261.i.preheader, %bb.bf
  %indvars.iv287.i = phi i64 [ %indvars.iv.next288.i, %bb.bf ], [ 1, %.lr.ph261.i.preheader ] ; 4 uses
  %.0146259.i = phi i32 [ %i.zx, %bb.bf ], [ 0, %.lr.ph261.i.preheader ] ; 3 uses
  %i.zu = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv287.i
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 4
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !11
  %i.zx = add i32 %i.zw, %.0146259.i              ; 3 uses
  %i.zy = zext i32 %i.zx to i64
  %i.zz = icmp ult i64 %1, %i.zy
  br i1 %i.zz, label %._crit_edge.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph261.i
  %indvars.iv.next288.i = add nuw nsw i64 %indvars.iv287.i, 1 ; 2 uses
  %exitcond291.not.i = icmp eq i64 %indvars.iv.next288.i, %wide.trip.count.i218.i
  br i1 %exitcond291.not.i, label %.lr.ph270.preheader.i, label %.lr.ph261.i, !llvm.loop !85

._crit_edge.i:                                    ; preds = %.lr.ph261.i
  %.not170266.i = icmp samesign ugt i64 %indvars.iv287.i, 1
  br i1 %.not170266.i, label %.lr.ph270.preheader.i, label %._crit_edge271.i

.lr.ph270.preheader.i:                            ; preds = %bb.bf, %._crit_edge.i
  %wide.trip.count295.i.pre-phi = phi i64 [ %indvars.iv287.i, %._crit_edge.i ], [ %wide.trip.count.i218.i, %bb.bf ]
  %.0146.lcssa.ph323.i = phi i32 [ %.0146259.i, %._crit_edge.i ], [ %i.zx, %bb.bf ]
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %.lr.ph270.i

.lr.ph270.i:                                      ; preds = %bb.bg, %.lr.ph270.preheader.i
  %indvars.iv292.i = phi i64 [ 1, %.lr.ph270.preheader.i ], [ %indvars.iv.next293.i, %bb.bg ] ; 2 uses
  %.0268.i = phi ptr [ %i.aaa, %.lr.ph270.preheader.i ], [ %i.aag, %bb.bg ]
  %i.aab = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv292.i ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !11
  %i.aae = zext i32 %i.aad to i64                 ; 2 uses
  %i.aaf = sub nsw i64 0, %i.aae
  %i.aag = getelementptr inbounds i8, ptr %.0268.i, i64 %i.aaf ; 3 uses
  %.not169.i = icmp ult ptr %i.aag, %0
  br i1 %.not169.i, label %.thread233.sink.split.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph270.i
  %i.aah = load i32, ptr %i.aab, align 4, !tbaa !9
  %i.aai = zext i32 %i.aah to i64
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aai
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aag, ptr nonnull align 1 %i.aaj, i64 %i.aae, i1 false)
  %indvars.iv.next293.i = add nuw nsw i64 %indvars.iv292.i, 1 ; 2 uses
  %exitcond296.not.i = icmp eq i64 %indvars.iv.next293.i, %wide.trip.count295.i.pre-phi
  br i1 %exitcond296.not.i, label %._crit_edge271.i, label %.lr.ph270.i, !llvm.loop !86

._crit_edge271.i:                                 ; preds = %bb.bg, %._crit_edge.i
  %.0146.lcssa.ph322.i = phi i32 [ %.0146259.i, %._crit_edge.i ], [ %.0146.lcssa.ph323.i, %bb.bg ]
  %i.aak = zext i32 %.0146.lcssa.ph322.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store <2 x i32> %i.r, ptr %6, align 8, !tbaa !8
  %.sroa.6.4..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6.4..sroa_idx, align 8, !tbaa !8
  %i.aal = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %i.aak, i64 noundef %1, ptr noundef nonnull %i.o, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.thread233.sink.split.i

.thread233.sink.split.i:                          ; preds = %.lr.ph.i22, %.lr.ph270.i, %._crit_edge271.i, %ZDICT_dictSize.exit224.thread.critedge.i, %ZDICT_dictSize.exit224.i, %.critedge179.i, %bb.d, %bb.c
  %.8.ph.i = phi i64 [ -1, %.lr.ph270.i ], [ -34, %ZDICT_dictSize.exit224.i ], [ -34, %bb.d ], [ %i.aal, %._crit_edge271.i ], [ -70, %bb.c ], [ -34, %ZDICT_dictSize.exit224.thread.critedge.i ], [ -34, %.critedge179.i ], [ -1, %.lr.ph.i22 ]
  tail call void @free(ptr noundef nonnull %i.x) #16
  br label %ZDICT_trainFromBuffer_unsafe_legacy.exit

ZDICT_trainFromBuffer_unsafe_legacy.exit:         ; preds = %ZDICT_totalSampleSize.exit.i, %.thread233.sink.split.i
  %.8.i = phi i64 [ -64, %ZDICT_totalSampleSize.exit.i ], [ %.8.ph.i, %.thread233.sink.split.i ]
  tail call void @free(ptr noundef %i.o) #16
  br label %ZDICT_totalSampleSize.exit.thread

ZDICT_totalSampleSize.exit.thread:                ; preds = %bb.a, %bb.b, %ZDICT_totalSampleSize.exit, %ZDICT_trainFromBuffer_unsafe_legacy.exit
  %.0 = phi i64 [ 0, %ZDICT_totalSampleSize.exit ], [ %.8.i, %ZDICT_trainFromBuffer_unsafe_legacy.exit ], [ -64, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ZDICT_trainFromBuffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.ZDICT_fastCover_params_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 8, ptr %i.a, align 4, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 4, ptr %i.b, align 4, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 3, ptr %i.c, align 4, !tbaa !91
  %i.d = call i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i64 %i.d
}

declare i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i64 @ZDICT_addEntropyTablesFromBuffer(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %6 = alloca %struct.ZDICT_params_t, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %i.a = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly byval(%struct.ZDICT_params_t) align 8 captures(none) %6) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %6, align 8, !tbaa !9      ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = select i1 %i.b, i32 3, i32 %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11   ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %i.k) #20 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.n = tail call i32 @fflush(ptr noundef %i.m)  ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = add i64 %2, -8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.r = sub i64 0, %1
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r ; 3 uses
  %i.t = tail call fastcc i64 @ZDICT_analyzeEntropy(ptr noundef nonnull %i.o, i64 noundef %i.p, i32 noundef %i.c, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %i.s, i64 noundef %1, i32 noundef %i.e) ; 3 uses
  %i.u = icmp ult i64 %i.t, -119
  %i.v = add nuw i64 %i.t, 8                      ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.critedge
  store i32 -332356553, ptr %0, align 1, !tbaa !8
  %i.w = tail call i64 @ZSTD_XXH64(ptr noundef nonnull captures(address) %i.s, i64 noundef %1, i64 noundef 0) #18
  %i.x = urem i64 %i.w, 2147450880
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, 32768
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !12 ; 2 uses
  %.not46 = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not46, i32 %i.z, i32 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ac, ptr %i.ad, align 1, !tbaa !8
  %i.ae = add i64 %i.v, %1                        ; 2 uses
end_hunk_1

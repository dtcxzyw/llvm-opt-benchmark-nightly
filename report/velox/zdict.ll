inline.NumInlined: 73
inline.NumDeleted: 33
begin_hunk_0_@ZDICT_analyzeEntropy:bb.a
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
  %i.rk = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.rl = call i64 @fwrite(ptr nonnull @.str.12, i64 42, i64 1, ptr %i.rk) #20 ; 0 uses
  %i.rm = load ptr, ptr @stderr, align 8, !tbaa !11
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
  %i.rs = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.rt = call i64 @fwrite(ptr nonnull @.str.13, i64 46, i64 1, ptr %i.rs) #20 ; 0 uses
  %i.ru = load ptr, ptr @stderr, align 8, !tbaa !11
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
  %i.sa = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.sb = call i64 @fwrite(ptr nonnull @.str.14, i64 44, i64 1, ptr %i.sa) #20 ; 0 uses
  %i.sc = load ptr, ptr @stderr, align 8, !tbaa !11
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
  %i.sg = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.sh = call i64 @fwrite(ptr nonnull @.str.15, i64 38, i64 1, ptr %i.sg) #20 ; 0 uses
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

.thread:                                          ; preds = %bb.ak, %bb.al, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.ab, %bb.ac, %bb.n, %bb.o, %ZDICT_totalSampleSize.exit, %bb.an, %bb.ao, %bb.y, %bb.z, %bb.v, %bb.w, %bb.s, %bb.t, %bb.b, %bb.c, %bb.ap
  %.sroa.0.0 = phi ptr [ null, %ZDICT_totalSampleSize.exit ], [ %i.dq, %bb.an ], [ %i.dq, %bb.ao ], [ %i.dq, %bb.ap ], [ %i.dq, %bb.ah ], [ %i.dq, %bb.ae ], [ %i.dq, %bb.ab ], [ %i.dq, %bb.n ], [ %i.dq, %bb.y ], [ %i.dq, %bb.z ], [ %i.dq, %bb.v ], [ %i.dq, %bb.w ], [ %i.dq, %bb.s ], [ %i.dq, %bb.t ], [ %i.dq, %bb.c ], [ %i.dq, %bb.b ], [ %i.dq, %bb.o ], [ %i.dq, %bb.ac ], [ %i.dq, %bb.af ], [ %i.dq, %bb.ai ], [ %i.dq, %bb.al ], [ %i.dq, %bb.ak ]
  %.sroa.7.0 = phi ptr [ null, %ZDICT_totalSampleSize.exit ], [ %i.dr, %bb.an ], [ %i.dr, %bb.ao ], [ %i.dr, %bb.ap ], [ %i.dr, %bb.ah ], [ %i.dr, %bb.ae ], [ %i.dr, %bb.ab ], [ %i.dr, %bb.n ], [ %i.dr, %bb.y ], [ %i.dr, %bb.z ], [ %i.dr, %bb.v ], [ %i.dr, %bb.w ], [ %i.dr, %bb.s ], [ %i.dr, %bb.t ], [ %i.dr, %bb.c ], [ %i.dr, %bb.b ], [ %i.dr, %bb.o ], [ %i.dr, %bb.ac ], [ %i.dr, %bb.af ], [ %i.dr, %bb.ai ], [ %i.dr, %bb.al ], [ %i.dr, %bb.ak ]
  %.sroa.9.0 = phi ptr [ null, %ZDICT_totalSampleSize.exit ], [ %i.ds, %bb.an ], [ %i.ds, %bb.ao ], [ %i.ds, %bb.ap ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ae ], [ %i.ds, %bb.ab ], [ %i.ds, %bb.n ], [ %i.ds, %bb.y ], [ %i.ds, %bb.z ], [ %i.ds, %bb.v ], [ %i.ds, %bb.w ], [ %i.ds, %bb.s ], [ %i.ds, %bb.t ], [ %i.ds, %bb.c ], [ %i.ds, %bb.b ], [ %i.ds, %bb.o ], [ %i.ds, %bb.ac ], [ %i.ds, %bb.af ], [ %i.ds, %bb.ai ], [ %i.ds, %bb.al ], [ %i.ds, %bb.ak ]
  %.5178 = phi i64 [ -34, %ZDICT_totalSampleSize.exit ], [ -70, %bb.an ], [ -70, %bb.ao ], [ %i.sq, %bb.ap ], [ %i.rq, %bb.ah ], [ %i.ri, %bb.ae ], [ %i.ra, %bb.ab ], [ %i.lz, %bb.n ], [ %i.qt, %bb.y ], [ %i.qt, %bb.z ], [ %i.qf, %bb.v ], [ %i.qf, %bb.w ], [ %i.pq, %bb.s ], [ %i.pq, %bb.t ], [ -64, %bb.c ], [ -64, %bb.b ], [ %i.lz, %bb.o ], [ %i.ra, %bb.ac ], [ %i.ri, %bb.af ], [ %i.rq, %bb.ai ], [ %i.ry, %bb.al ], [ %i.ry, %bb.ak ]
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
  ret i64 %.5178
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
  %i.c = alloca [64 x i32], align 16              ; 11 uses
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
  %vec.phi130 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !14
  %wide.load131 = load <2 x i64>, ptr %i.e, align 8, !tbaa !14
  %i.f = add <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.g = add <2 x i64> %wide.load131, %vec.phi130 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !53

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
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %i.l = add i64 %i.k, %.067.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ZDICT_totalSampleSize.exit, label %.lr.ph.i, !llvm.loop !54

ZDICT_totalSampleSize.exit:                       ; preds = %.lr.ph.i, %middle.block
  %.lcssa129 = phi i64 [ %i.i, %middle.block ], [ %i.l, %.lr.ph.i ] ; 4 uses
  %i.m = icmp ult i64 %.lcssa129, 512
  br i1 %i.m, label %ZDICT_totalSampleSize.exit.thread, label %bb.b

bb.b:                                             ; preds = %ZDICT_totalSampleSize.exit
  %i.n = add i64 %.lcssa129, 32
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #17 ; 21 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %ZDICT_totalSampleSize.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %2, i64 %.lcssa129, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.lcssa129 ; 2 uses
  store <16 x i8> <i8 -30, i8 51, i8 -9, i8 105, i8 -35, i8 -31, i8 -119, i8 112, i8 5, i8 -68, i8 15, i8 79, i8 -73, i8 -13, i8 110, i8 -47>, ptr %i.p, align 1, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> <i8 14, i8 -34, i8 95, i8 14, i8 -114, i8 -50, i8 31, i8 67, i8 -40, i8 -37, i8 31, i8 -102, i8 88, i8 -72, i8 -78, i8 0>, ptr %i.q, align 1, !tbaa !31
  %.sroa.0.0.copyload = load i32, ptr %5, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %i.r = load <2 x i32>, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  %i.s = lshr i64 %1, 4
  %i.t = trunc i64 %i.s to i32
  %i.u = tail call i32 @llvm.umax.i32(i32 %4, i32 %i.t)
  %..i = tail call i32 @llvm.umax.i32(i32 %i.u, i32 10000) ; 2 uses
  %i.v = zext i32 %..i to i64
  %i.w = mul nuw nsw i64 %i.v, 12
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #17 ; 47 uses
  %min.iters.check133 = icmp ult i32 %4, 4
  br i1 %min.iters.check133, label %.lr.ph.i.i.preheader, label %vector.ph134

vector.ph134:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec136 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph134
  %index138 = phi i64 [ 0, %vector.ph134 ], [ %index.next143, %vector.body137 ] ; 2 uses
  %vec.phi139 = phi <2 x i64> [ zeroinitializer, %vector.ph134 ], [ %i.aa, %vector.body137 ]
  %vec.phi140 = phi <2 x i64> [ zeroinitializer, %vector.ph134 ], [ %i.ab, %vector.body137 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index138 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load141 = load <2 x i64>, ptr %i.y, align 8, !tbaa !14
  %wide.load142 = load <2 x i64>, ptr %i.z, align 8, !tbaa !14
  %i.aa = add <2 x i64> %wide.load141, %vec.phi139 ; 2 uses
  %i.ab = add <2 x i64> %wide.load142, %vec.phi140 ; 2 uses
  %index.next143 = add nuw i64 %index138, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next143, %n.vec136
  br i1 %i.ac, label %middle.block144, label %vector.body137, !llvm.loop !55

middle.block144:                                  ; preds = %vector.body137
  %bin.rdx145 = add <2 x i64> %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx145) ; 2 uses
  %cmp.n146 = icmp eq i64 %n.vec136, %wide.trip.count.i
  br i1 %cmp.n146, label %ZDICT_totalSampleSize.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block144
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec136, %middle.block144 ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.ad, %middle.block144 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !14
  %i.ag = add i64 %i.af, %.067.i.i                ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond.not.i.i, label %ZDICT_totalSampleSize.exit.i, label %.lr.ph.i.i, !llvm.loop !56

ZDICT_totalSampleSize.exit.i:                     ; preds = %.lr.ph.i.i, %middle.block144
  %.lcssa128 = phi i64 [ %i.ad, %middle.block144 ], [ %i.ag, %.lr.ph.i.i ] ; 10 uses
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
  %i.an = icmp ult i64 %.lcssa128, 512
  br i1 %i.an, label %.thread233.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.x, align 4, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 -1, ptr %i.ap, align 4, !tbaa !10
  %i.aq = shl i64 %.lcssa128, 2                   ; 2 uses
  %i.ar = add i64 %i.aq, 8
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #17 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 22 uses
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.aq) #17 ; 8 uses
  %i.av = add i64 %.lcssa128, 16                  ; 2 uses
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.av) #17 ; 11 uses
  %i.ax = icmp ugt i32 %.sroa.5.0.copyload, 1     ; 6 uses
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ay, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19 ; 0 uses
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !11
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
  %i.bf = icmp ugt i64 %.lcssa128, 2097152000     ; 2 uses
  %i.bg = icmp ugt i32 %.sroa.5.0.copyload, 2     ; 2 uses
  %or.cond7.i.i = and i1 %i.bg, %i.bf
  br i1 %or.cond7.i.i, label %.thread187.i.i, label %bb.i

.thread187.i.i:                                   ; preds = %bb.h
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bh, ptr noundef nonnull @.str.29, i32 noundef 2000) #19 ; 0 uses
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bk = tail call i32 @fflush(ptr noundef %i.bj) ; 0 uses
  br label %.lr.ph.i192.i.preheader

bb.i:                                             ; preds = %bb.h
  br i1 %i.bf, label %.lr.ph.i192.i.preheader, label %._crit_edge.i.i

.lr.ph.i192.i.preheader:                          ; preds = %bb.i, %.thread187.i.i
  br label %.lr.ph.i192.i

.lr.ph.i192.i:                                    ; preds = %.lr.ph.i192.i.preheader, %.lr.ph.i192.i
  %.093133.i.i = phi i64 [ %i.bp, %.lr.ph.i192.i ], [ %.lcssa128, %.lr.ph.i192.i.preheader ]
  %.094132.i.i = phi i32 [ %i.bl, %.lr.ph.i192.i ], [ %4, %.lr.ph.i192.i.preheader ]
  %i.bl = add i32 %.094132.i.i, -1                ; 3 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !14
  %i.bp = sub i64 %.093133.i.i, %i.bo             ; 3 uses
  %i.bq = icmp ugt i64 %i.bp, 2097152000
  br i1 %i.bq, label %.lr.ph.i192.i, label %._crit_edge.i.i, !llvm.loop !57

._crit_edge.i.i:                                  ; preds = %.lr.ph.i192.i, %bb.i
  %.094.lcssa.i.i = phi i32 [ %4, %bb.i ], [ %i.bl, %.lr.ph.i192.i ]
  %.093.lcssa.i.i = phi i64 [ %.lcssa128, %bb.i ], [ %i.bp, %.lr.ph.i192.i ] ; 9 uses
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bs = lshr i64 %.093.lcssa.i.i, 20
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.30, i32 noundef %.094.lcssa.i.i, i32 noundef %i.bt) #19 ; 0 uses
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bw = tail call i32 @fflush(ptr noundef %i.bv) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %i.bx = trunc nuw nsw i64 %.093.lcssa.i.i to i32 ; 3 uses
  %i.by = tail call i32 @divsufsort(ptr noundef nonnull %i.o, ptr noundef nonnull %i.at, i32 noundef %i.bx, i32 noundef 0) #16
  %.not.i189.not.i = icmp eq i32 %i.by, 0
  br i1 %.not.i189.not.i, label %bb.l, label %ZDICT_trainBuffer_legacy.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.093.lcssa.i.i
  store i32 %i.bx, ptr %i.bz, align 4, !tbaa !3
  store i32 %i.bx, ptr %i.as, align 4, !tbaa !3
  %.not154.i.i = icmp eq i64 %.093.lcssa.i.i, 0   ; 2 uses
  br i1 %.not154.i.i, label %._crit_edge142.i.i, label %.lr.ph137.i.i.preheader

.lr.ph137.i.i.preheader:                          ; preds = %bb.l
  %xtraiter = and i64 %.093.lcssa.i.i, 3          ; 3 uses
  %i.ca = icmp ult i64 %.093.lcssa.i.i, 4
  br i1 %i.ca, label %.lr.ph137.i.i.epil.preheader, label %.lr.ph137.i.i.preheader.new

.lr.ph137.i.i.preheader.new:                      ; preds = %.lr.ph137.i.i.preheader
  %unroll_iter = and i64 %.093.lcssa.i.i, 2147483644
  br label %.lr.ph137.i.i

.lr.ph137.i.i:                                    ; preds = %.lr.ph137.i.i, %.lr.ph137.i.i.preheader.new
  %.099135.i.i = phi i64 [ 0, %.lr.ph137.i.i.preheader.new ], [ %i.cy, %.lr.ph137.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph137.i.i.preheader.new ], [ %niter.next.3, %.lr.ph137.i.i ]
  %i.cb = trunc nuw nsw i64 %.099135.i.i to i32
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.099135.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ce
  store i32 %i.cb, ptr %i.cf, align 4, !tbaa !3
  %i.cg = or disjoint i64 %.099135.i.i, 1         ; 2 uses
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cg
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ck
  store i32 %i.ch, ptr %i.cl, align 4, !tbaa !3
  %i.cm = or disjoint i64 %.099135.i.i, 2         ; 2 uses
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cm
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cq
  store i32 %i.cn, ptr %i.cr, align 4, !tbaa !3
  %i.cs = or disjoint i64 %.099135.i.i, 3         ; 2 uses
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cs
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cw
  store i32 %i.ct, ptr %i.cx, align 4, !tbaa !3
  %i.cy = add nuw nsw i64 %.099135.i.i, 4         ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge142.i.i.loopexit.unr-lcssa, label %.lr.ph137.i.i, !llvm.loop !58

._crit_edge142.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph137.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge142.i.i, label %.lr.ph137.i.i.epil.preheader

.lr.ph137.i.i.epil.preheader:                     ; preds = %._crit_edge142.i.i.loopexit.unr-lcssa, %.lr.ph137.i.i.preheader
  %.099135.i.i.epil.init = phi i64 [ 0, %.lr.ph137.i.i.preheader ], [ %i.cy, %._crit_edge142.i.i.loopexit.unr-lcssa ]
end_hunk_0
begin_hunk_1_@ZDICT_trainFromBuffer_legacy:bb.a
  br label %bb.ao

bb.ao:                                            ; preds = %ZDICT_count.exit309.i.i.i, %.lr.ph354.i.i.i
  %.0.i.i.i = phi i32 [ %spec.select250.i.i.i, %ZDICT_count.exit309.i.i.i ], [ %.0202.i.i.i, %.lr.ph354.i.i.i ] ; 2 uses
  %i.ry = add i32 %.0.i.i.i, %i.rl
  %i.rz = icmp ult i32 %i.rl, %i.ry
  br i1 %i.rz, label %.lr.ph350.preheader.i.i.i, label %._crit_edge351.i.i.i

.lr.ph350.preheader.i.i.i:                        ; preds = %bb.ao
  %scevgep.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.rm
  %i.sa = add i32 %.0.i.i.i, -1
  %i.sb = zext i32 %i.sa to i64
  %i.sc = add nuw nsw i64 %i.sb, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i.i, i8 1, i64 %i.sc, i1 false), !tbaa !31
  br label %._crit_edge351.i.i.i

._crit_edge351.i.i.i:                             ; preds = %.lr.ph350.preheader.i.i.i, %bb.ao
  %indvars.iv.next387.i.i.i = add nuw nsw i64 %indvars.iv386.i.i.i, 1 ; 2 uses
  %exitcond393.not.i.i.i = icmp eq i64 %indvars.iv.next387.i.i.i, %i.lm
  br i1 %exitcond393.not.i.i.i, label %ZDICT_analyzePos.exit.i.i, label %.lr.ph354.i.i.i, !llvm.loop !73

ZDICT_analyzePos.exit.thread.i.i:                 ; preds = %.lr.ph357.i.i.i.prol.loopexit, %.lr.ph357.i.i.i, %bb.aj, %.preheader.i.i.i, %.lr.ph360.preheader.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sd = add i32 %.0101149.i.i, 1
  br label %bb.au, !llvm.loop !60

ZDICT_analyzePos.exit.i.i:                        ; preds = %._crit_edge351.i.i.i, %bb.am
  %i.se = shl nuw i64 %i.pu, 32
  %i.sf = zext i32 %i.li to i64
  %i.sg = or disjoint i64 %i.se, %i.sf            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sh = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %i.sg, i32 %i.rh, i32 noundef 0, ptr noundef nonnull readonly %i.o) ; 4 uses
  %.not.i111.i.i = icmp eq i32 %i.sh, 0
  br i1 %.not.i111.i.i, label %bb.ap, label %.preheader.i112.preheader.i.i

.preheader.i112.preheader.i.i:                    ; preds = %ZDICT_analyzePos.exit.i.i
  %i.si = zext i32 %i.sh to i64                   ; 2 uses
  %i.sj = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.si ; 2 uses
  %.sroa.0.0.copyload.i143.i.i = load i64, ptr %i.sj, align 4
  %.sroa.2.0..sroa_idx.i144.i.i = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %.sroa.2.0.copyload.i145.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i144.i.i, align 4
  %i.sk = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i143.i.i, i32 %.sroa.2.0.copyload.i145.i.i, i32 noundef %i.sh, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i146.i.i = icmp eq i32 %i.sk, 0
  br i1 %.not43.i146.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i112.preheader.i.i, %ZDICT_removeDictItem.exit.i.i.i
  %i.sl = phi i32 [ %i.tb, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sk, %.preheader.i112.preheader.i.i ] ; 3 uses
  %i.sm = phi i64 [ %i.sz, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.si, %.preheader.i112.preheader.i.i ] ; 5 uses
  %.03544.i147.i.i = phi i32 [ %i.sl, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sh, %.preheader.i112.preheader.i.i ]
  %i.sn = load i32, ptr %i.x, align 4, !tbaa !7
  %i.so = add i32 %i.sn, -1                       ; 3 uses
  %i.sp = icmp ult i32 %.03544.i147.i.i, %i.so
  br i1 %i.sp, label %.lr.ph.preheader.i.i.i.i, label %ZDICT_removeDictItem.exit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %wide.trip.count.i.i.i.i = zext i32 %i.so to i64 ; 3 uses
  %i.sq = sub nsw i64 %wide.trip.count.i.i.i.i, %i.sm
  %xtraiter224 = and i64 %i.sq, 1
  %lcmp.mod225.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod225.not, label %.lr.ph.i.i113.i.i.prol.loopexit, label %.lr.ph.i.i113.i.i.prol

.lr.ph.i.i113.i.i.prol:                           ; preds = %.lr.ph.preheader.i.i.i.i
  %i.sr = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sm
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %i.sm, 1 ; 2 uses
  %i.ss = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.i.i.prol
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.sr, ptr noundef nonnull align 4 dereferenceable(12) %i.ss, i64 12, i1 false), !tbaa.struct !74
  br label %.lr.ph.i.i113.i.i.prol.loopexit

.lr.ph.i.i113.i.i.prol.loopexit:                  ; preds = %.lr.ph.i.i113.i.i.prol, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i.unr = phi i64 [ %i.sm, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.prol, %.lr.ph.i.i113.i.i.prol ]
  %i.st = add nsw i64 %wide.trip.count.i.i.i.i, -1
  %i.su = icmp eq i64 %i.sm, %i.st
  br i1 %i.su, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i113.i.i

.lr.ph.i.i113.i.i:                                ; preds = %.lr.ph.i.i113.i.i.prol.loopexit, %.lr.ph.i.i113.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i113.i.i ], [ %indvars.iv.i.i.i.i.unr, %.lr.ph.i.i113.i.i.prol.loopexit ] ; 3 uses
  %i.sv = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.sw = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.sv, ptr noundef nonnull align 4 dereferenceable(12) %i.sw, i64 12, i1 false), !tbaa.struct !74
  %i.sx = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.i.i
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 3 uses
  %i.sy = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.i.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.sx, ptr noundef nonnull align 4 dereferenceable(12) %i.sy, i64 12, i1 false), !tbaa.struct !74
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i113.i.i, !llvm.loop !75

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i113.i.i, %.lr.ph.i.i113.i.i.prol.loopexit
  %.pre.i.i.i.i = load i32, ptr %i.x, align 4, !tbaa !7
  %.pre14.i.i.i.i = add i32 %.pre.i.i.i.i, -1
  br label %ZDICT_removeDictItem.exit.i.i.i

ZDICT_removeDictItem.exit.i.i.i:                  ; preds = %._crit_edge.loopexit.i.i.i.i, %.preheader.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre14.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.so, %.preheader.i.i.i.i ]
  store i32 %.pre-phi.i.i.i.i, ptr %i.x, align 4, !tbaa !7
  %i.sz = zext i32 %i.sl to i64                   ; 2 uses
  %i.ta = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sz ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ta, align 4
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %.sroa.2.0.copyload.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4
  %i.tb = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i.i.i, i32 %.sroa.2.0.copyload.i.i.i, i32 noundef %i.sl, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i.i.i = icmp eq i32 %i.tb, 0
  br i1 %.not43.i.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i, !llvm.loop !76

bb.ap:                                            ; preds = %ZDICT_analyzePos.exit.i.i
  %i.tc = load i32, ptr %i.x, align 4, !tbaa !7
  %spec.select.i114.i.i = tail call i32 @llvm.umin.i32(i32 %i.tc, i32 %i.fv) ; 4 uses
  %.03445.i.i.i = add i32 %spec.select.i114.i.i, -1 ; 2 uses
  %i.td = zext i32 %.03445.i.i.i to i64
  %i.te = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.td ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !10
  %i.th = icmp ult i32 %i.tg, %i.rh
  br i1 %i.th, label %.lr.ph.i116.i.i, label %._crit_edge.i115.i.i

.lr.ph.i116.i.i:                                  ; preds = %bb.ap, %.lr.ph.i116.i.i
  %i.ti = phi ptr [ %i.tm, %.lr.ph.i116.i.i ], [ %i.te, %bb.ap ]
  %.03447.i.i.i = phi i32 [ %.034.i.i.i, %.lr.ph.i116.i.i ], [ %.03445.i.i.i, %bb.ap ] ; 3 uses
  %.034.in46.i.i.i = phi i32 [ %.03447.i.i.i, %.lr.ph.i116.i.i ], [ %spec.select.i114.i.i, %bb.ap ]
  %i.tj = zext i32 %.034.in46.i.i.i to i64
  %i.tk = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.tk, ptr noundef nonnull align 4 dereferenceable(12) %i.ti, i64 12, i1 false), !tbaa.struct !74
  %.034.i.i.i = add i32 %.03447.i.i.i, -1         ; 2 uses
  %i.tl = zext i32 %.034.i.i.i to i64
  %i.tm = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tl ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !10
  %i.tp = icmp ult i32 %i.to, %i.rh
  br i1 %i.tp, label %.lr.ph.i116.i.i, label %._crit_edge.i115.i.i, !llvm.loop !77

._crit_edge.i115.i.i:                             ; preds = %.lr.ph.i116.i.i, %bb.ap
  %.034.in.lcssa.i.i.i = phi i32 [ %spec.select.i114.i.i, %bb.ap ], [ %.03447.i.i.i, %.lr.ph.i116.i.i ]
  %i.tq = zext i32 %.034.in.lcssa.i.i.i to i64
  %i.tr = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tq ; 2 uses
  store i64 %i.sg, ptr %i.tr, align 4
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  store i32 %i.rh, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !tbaa !3
  %i.ts = add nuw i32 %spec.select.i114.i.i, 1
  store i32 %i.ts, ptr %i.x, align 4, !tbaa !7
  br label %ZDICT_insertDictItem.exit.i.i

ZDICT_insertDictItem.exit.i.i:                    ; preds = %ZDICT_removeDictItem.exit.i.i.i, %._crit_edge.i115.i.i, %.preheader.i112.preheader.i.i
  %i.tt = add i32 %.0202.i.i.i, %.0101149.i.i     ; 4 uses
  br i1 %i.ax, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %ZDICT_insertDictItem.exit.i.i
  %i.tu = tail call i64 @clock() #16
  %i.tv = sub nsw i64 %i.tu, %.096151.i.i
  %i.tw = icmp sgt i64 %i.tv, 300000
  br i1 %i.tw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.tx = tail call i64 @clock() #16
  %i.ty = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.tz = uitofp i32 %i.tt to double
  %i.ua = fdiv double %i.tz, %i.fw
  %i.ub = fmul double %i.ua, 1.000000e+02
  %i.uc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ty, ptr noundef nonnull @.str.33, double noundef %i.ub) #19 ; 0 uses
  %i.ud = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ue = tail call i32 @fflush(ptr noundef %i.ud) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.197.i.i = phi i64 [ %i.tx, %bb.ar ], [ %.096151.i.i, %bb.aq ] ; 2 uses
  br i1 %i.dn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.uf = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ug = tail call i32 @fflush(ptr noundef %i.uf) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %ZDICT_insertDictItem.exit.i.i, %ZDICT_analyzePos.exit.thread.i.i, %bb.p
  %.1102.i.i = phi i32 [ %i.ga, %bb.p ], [ %i.sd, %ZDICT_analyzePos.exit.thread.i.i ], [ %i.tt, %bb.as ], [ %i.tt, %bb.at ], [ %i.tt, %ZDICT_insertDictItem.exit.i.i ] ; 2 uses
  %.3.i.i = phi i64 [ %.096151.i.i, %bb.p ], [ %.096151.i.i, %ZDICT_analyzePos.exit.thread.i.i ], [ %.197.i.i, %bb.as ], [ %.197.i.i, %bb.at ], [ %.096151.i.i, %ZDICT_insertDictItem.exit.i.i ]
  %i.uh = zext i32 %.1102.i.i to i64              ; 2 uses
  %i.ui = icmp samesign ugt i64 %.093.lcssa.i.i, %i.uh
  br i1 %i.ui, label %bb.o, label %ZDICT_trainBuffer_legacy.exit.loopexit.i

ZDICT_trainBuffer_legacy.exit.loopexit.i:         ; preds = %bb.au
  %.pre.pre.i = load i32, ptr %i.x, align 4, !tbaa !7
  br label %ZDICT_trainBuffer_legacy.exit.i

ZDICT_trainBuffer_legacy.exit.i:                  ; preds = %ZDICT_trainBuffer_legacy.exit.loopexit.i, %.thread.i.i, %bb.k, %bb.g
  %.pre.i = phi i32 [ %.pre.pre.i, %ZDICT_trainBuffer_legacy.exit.loopexit.i ], [ 1, %bb.g ], [ 1, %bb.k ], [ 1, %.thread.i.i ] ; 9 uses
  tail call void @free(ptr noundef %i.as) #16
  tail call void @free(ptr noundef %i.au) #16
  tail call void @free(ptr noundef %i.aw) #16
  %i.uj = icmp ugt i32 %.sroa.5.0.copyload, 2
  br i1 %i.uj, label %bb.av, label %.critedge179.i

bb.av:                                            ; preds = %ZDICT_trainBuffer_legacy.exit.i
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %.pre.i, i32 25) ; 3 uses
  %i.uk = icmp ugt i32 %.pre.i, 1
  br i1 %i.uk, label %.lr.ph.preheader.i194.i, label %ZDICT_dictSize.exit224.thread.critedge.i

.lr.ph.preheader.i194.i:                          ; preds = %bb.av
  %wide.trip.count.i195.i = zext i32 %.pre.i to i64 ; 2 uses
  %min.iters.check150 = icmp ult i32 %.pre.i, 10
  br i1 %min.iters.check150, label %.lr.ph.i196.i.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %.lr.ph.preheader.i194.i
  %7 = add nsw i64 %wide.trip.count.i195.i, -1    ; 2 uses
  %n.mod.vf152 = and i64 %7, 7                    ; 2 uses
  %8 = icmp eq i64 %n.mod.vf152, 0
  %9 = select i1 %8, i64 8, i64 %n.mod.vf152
  %n.vec153 = sub nsw i64 %7, %9                  ; 2 uses
  %10 = add nsw i64 %n.vec153, 1
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph151
  %index155 = phi i64 [ 0, %vector.ph151 ], [ %index.next158, %vector.body154 ] ; 9 uses
  %vec.phi156 = phi <4 x i32> [ zeroinitializer, %vector.ph151 ], [ %37, %vector.body154 ]
  %vec.phi157 = phi <4 x i32> [ zeroinitializer, %vector.ph151 ], [ %38, %vector.body154 ]
  %11 = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %index155
  %12 = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %index155
  %13 = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %index155
  %i.ul = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %index155
  %14 = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %index155
  %15 = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %index155
  %16 = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %index155
  %i.um = getelementptr [12 x i8], ptr %i.x, i64 %index155
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 28
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 52
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.uo = getelementptr i8, ptr %i.um, i64 100
  %23 = load i32, ptr %17, align 4, !tbaa !9
  %24 = load i32, ptr %18, align 4, !tbaa !9
  %25 = load i32, ptr %19, align 4, !tbaa !9
  %i.up = load i32, ptr %i.un, align 4, !tbaa !9
  %26 = insertelement <4 x i32> poison, i32 %23, i64 0
  %27 = insertelement <4 x i32> %26, i32 %24, i64 1
  %28 = insertelement <4 x i32> %27, i32 %25, i64 2
  %29 = insertelement <4 x i32> %28, i32 %i.up, i64 3
  %30 = load i32, ptr %20, align 4, !tbaa !9
  %31 = load i32, ptr %21, align 4, !tbaa !9
  %32 = load i32, ptr %22, align 4, !tbaa !9
  %i.uq = load i32, ptr %i.uo, align 4, !tbaa !9
  %33 = insertelement <4 x i32> poison, i32 %30, i64 0
  %34 = insertelement <4 x i32> %33, i32 %31, i64 1
  %35 = insertelement <4 x i32> %34, i32 %32, i64 2
  %36 = insertelement <4 x i32> %35, i32 %i.uq, i64 3
  %37 = add <4 x i32> %29, %vec.phi156            ; 2 uses
  %38 = add <4 x i32> %36, %vec.phi157            ; 2 uses
  %index.next158 = add nuw i64 %index155, 8       ; 2 uses
  %i.ur = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.ur, label %middle.block159, label %vector.body154, !llvm.loop !78

middle.block159:                                  ; preds = %vector.body154
  %bin.rdx160 = add <4 x i32> %38, %37
  %39 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx160)
  br label %.lr.ph.i196.i.preheader

.lr.ph.i196.i.preheader:                          ; preds = %.lr.ph.preheader.i194.i, %middle.block159
  %indvars.iv.i197.i.ph = phi i64 [ 1, %.lr.ph.preheader.i194.i ], [ %10, %middle.block159 ]
  %.08.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i194.i ], [ %39, %middle.block159 ]
  br label %.lr.ph.i196.i

.lr.ph.i196.i:                                    ; preds = %.lr.ph.i196.i.preheader, %.lr.ph.i196.i
  %indvars.iv.i197.i = phi i64 [ %indvars.iv.next.i198.i, %.lr.ph.i196.i ], [ %indvars.iv.i197.i.ph, %.lr.ph.i196.i.preheader ] ; 2 uses
  %.08.i.i.a = phi i32 [ %i.uv, %.lr.ph.i196.i ], [ %.08.i.i.ph, %.lr.ph.i196.i.preheader ]
  %i.us = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !9
  %i.uv = add i32 %i.uu, %.08.i.i.a               ; 2 uses
  %indvars.iv.next.i198.i = add nuw nsw i64 %indvars.iv.i197.i, 1 ; 2 uses
  %exitcond.not.i199.i = icmp eq i64 %indvars.iv.next.i198.i, %wide.trip.count.i195.i
  br i1 %exitcond.not.i199.i, label %.critedge.i, label %.lr.ph.i196.i, !llvm.loop !79

.critedge.i:                                      ; preds = %.lr.ph.i196.i
  %i.uw = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ux = add i32 %.pre.i, -1
  %i.uy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.uw, ptr noundef nonnull @.str.18, i32 noundef %i.ux, i32 noundef %i.uv) #19 ; 0 uses
  %i.uz = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.va = tail call i32 @fflush(ptr noundef %i.uz) ; 0 uses
  %i.vb = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.vc = add nsw i32 %spec.select.i, -1
  %i.vd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vb, ptr noundef nonnull @.str.19, i32 noundef %i.vc) #19 ; 0 uses
  %i.ve = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.vf = tail call i32 @fflush(ptr noundef %i.ve) ; 0 uses
  %wide.trip.count.i21 = zext nneg i32 %spec.select.i to i64
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.loopexit.i, %.critedge.i
  %indvars.iv.i23 = phi i64 [ 1, %.critedge.i ], [ %indvars.iv.next.i24, %.loopexit.i ] ; 3 uses
  %i.vg = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i23 ; 3 uses
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !7  ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !9  ; 4 uses
  %i.vk = zext i32 %i.vh to i64                   ; 2 uses
  %i.vl = icmp ult i64 %.lcssa128, %i.vk
  %i.vm = add i32 %i.vj, %i.vh
  %i.vn = zext i32 %i.vm to i64
  %i.vo = icmp ult i64 %.lcssa128, %i.vn
  %or.cond173.i = select i1 %i.vl, i1 true, i1 %i.vo
  br i1 %or.cond173.i, label %.thread233.sink.split.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i22
  %i.vp = tail call i32 @llvm.umin.i32(i32 %i.vj, i32 40)
  %i.vq = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !10
  %i.vt = trunc nuw nsw i64 %indvars.iv.i23 to i32
  %i.vu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vq, ptr noundef nonnull @.str.20, i32 noundef %i.vt, i32 noundef %i.vj, i32 noundef %i.vh, i32 noundef %i.vs) #19 ; 0 uses
  %i.vv = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.vw = tail call i32 @fflush(ptr noundef %i.vv) ; 0 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.vk
  %i.vy = zext nneg i32 %i.vp to i64
  %.not.i200.i = icmp eq i32 %i.vj, 0
  br i1 %.not.i200.i, label %.loopexit.i, label %.lr.ph.i201.i

.lr.ph.i201.i:                                    ; preds = %bb.aw, %.lr.ph.i201.i
  %.010.i.i = phi i64 [ %i.wg, %.lr.ph.i201.i ], [ 0, %bb.aw ] ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 %.010.i.i
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !31  ; 2 uses
  %i.wb = add i8 %i.wa, -127
  %or.cond.i202.i = icmp ult i8 %i.wb, -95
  %spec.store.select.i203.i = select i1 %or.cond.i202.i, i8 46, i8 %i.wa
  %i.wc = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.wd = zext i8 %spec.store.select.i203.i to i32
  %fputc.i.i = tail call i32 @fputc(i32 %i.wd, ptr %i.wc) ; 0 uses
  %i.we = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.wf = tail call i32 @fflush(ptr noundef %i.we) ; 0 uses
  %i.wg = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i204.i = icmp eq i64 %i.wg, %i.vy
  br i1 %exitcond.not.i204.i, label %.loopexit.i, label %.lr.ph.i201.i, !llvm.loop !80

.loopexit.i:                                      ; preds = %.lr.ph.i201.i, %bb.aw
  %i.wh = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.wi = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %i.wh) #20 ; 0 uses
  %i.wj = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.wk = tail call i32 @fflush(ptr noundef %i.wj) ; 0 uses
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %indvars.iv.next.i24, %wide.trip.count.i21
  br i1 %exitcond.not.i25, label %.critedge179.i, label %.lr.ph.i22, !llvm.loop !81

.critedge179.i:                                   ; preds = %.loopexit.i, %ZDICT_trainBuffer_legacy.exit.i
  %i.wl = icmp ugt i32 %.pre.i, 1
  br i1 %i.wl, label %.lr.ph.preheader.i217.i, label %.thread233.sink.split.i

.lr.ph.preheader.i217.i:                          ; preds = %.critedge179.i
  %wide.trip.count.i218.i = zext i32 %.pre.i to i64 ; 4 uses
  %min.iters.check164 = icmp ult i32 %.pre.i, 10
  br i1 %min.iters.check164, label %.lr.ph.i219.i.preheader, label %vector.ph165

vector.ph165:                                     ; preds = %.lr.ph.preheader.i217.i
  %40 = add nsw i64 %wide.trip.count.i218.i, -1   ; 2 uses
  %n.mod.vf166 = and i64 %40, 7                   ; 2 uses
  %41 = icmp eq i64 %n.mod.vf166, 0
  %42 = select i1 %41, i64 8, i64 %n.mod.vf166
  %n.vec167 = sub nsw i64 %40, %42                ; 2 uses
  %43 = add nsw i64 %n.vec167, 1
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph165
  %index169 = phi i64 [ 0, %vector.ph165 ], [ %index.next172, %vector.body168 ] ; 9 uses
  %vec.phi170 = phi <4 x i32> [ zeroinitializer, %vector.ph165 ], [ %70, %vector.body168 ]
  %vec.phi171 = phi <4 x i32> [ zeroinitializer, %vector.ph165 ], [ %71, %vector.body168 ]
  %44 = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %index169
  %45 = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %index169
  %46 = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %index169
  %i.wm = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %index169
  %47 = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %index169
  %48 = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %index169
  %49 = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %index169
  %i.wn = getelementptr [12 x i8], ptr %i.x, i64 %index169
  %50 = getelementptr inbounds nuw i8, ptr %44, i64 16
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 28
  %52 = getelementptr inbounds nuw i8, ptr %46, i64 40
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 52
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 64
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 76
  %55 = getelementptr inbounds nuw i8, ptr %49, i64 88
  %i.wp = getelementptr i8, ptr %i.wn, i64 100
  %56 = load i32, ptr %50, align 4, !tbaa !9
  %57 = load i32, ptr %51, align 4, !tbaa !9
  %58 = load i32, ptr %52, align 4, !tbaa !9
  %i.wq = load i32, ptr %i.wo, align 4, !tbaa !9
  %59 = insertelement <4 x i32> poison, i32 %56, i64 0
  %60 = insertelement <4 x i32> %59, i32 %57, i64 1
  %61 = insertelement <4 x i32> %60, i32 %58, i64 2
  %62 = insertelement <4 x i32> %61, i32 %i.wq, i64 3
  %63 = load i32, ptr %53, align 4, !tbaa !9
  %64 = load i32, ptr %54, align 4, !tbaa !9
  %65 = load i32, ptr %55, align 4, !tbaa !9
  %i.wr = load i32, ptr %i.wp, align 4, !tbaa !9
  %66 = insertelement <4 x i32> poison, i32 %63, i64 0
  %67 = insertelement <4 x i32> %66, i32 %64, i64 1
  %68 = insertelement <4 x i32> %67, i32 %65, i64 2
  %69 = insertelement <4 x i32> %68, i32 %i.wr, i64 3
  %70 = add <4 x i32> %62, %vec.phi170            ; 2 uses
  %71 = add <4 x i32> %69, %vec.phi171            ; 2 uses
  %index.next172 = add nuw i64 %index169, 8       ; 2 uses
  %i.ws = icmp eq i64 %index.next172, %n.vec167
  br i1 %i.ws, label %middle.block173, label %vector.body168, !llvm.loop !82

middle.block173:                                  ; preds = %vector.body168
  %bin.rdx174 = add <4 x i32> %71, %70
  %72 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx174)
  br label %.lr.ph.i219.i.preheader

.lr.ph.i219.i.preheader:                          ; preds = %.lr.ph.preheader.i217.i, %middle.block173
  %indvars.iv.i220.i.ph = phi i64 [ 1, %.lr.ph.preheader.i217.i ], [ %43, %middle.block173 ]
  %.08.i221.i.ph = phi i32 [ 0, %.lr.ph.preheader.i217.i ], [ %72, %middle.block173 ]
  br label %.lr.ph.i219.i

.lr.ph.i219.i:                                    ; preds = %.lr.ph.i219.i.preheader, %.lr.ph.i219.i
  %indvars.iv.i220.i = phi i64 [ %indvars.iv.next.i222.i, %.lr.ph.i219.i ], [ %indvars.iv.i220.i.ph, %.lr.ph.i219.i.preheader ] ; 2 uses
  %.08.i221.i.a = phi i32 [ %i.ww, %.lr.ph.i219.i ], [ %.08.i221.i.ph, %.lr.ph.i219.i.preheader ]
  %i.wt = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i220.i
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 4
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !9
  %i.ww = add i32 %i.wv, %.08.i221.i.a            ; 5 uses
  %indvars.iv.next.i222.i = add nuw nsw i64 %indvars.iv.i220.i, 1 ; 2 uses
  %exitcond.not.i223.i = icmp eq i64 %indvars.iv.next.i222.i, %wide.trip.count.i218.i
  br i1 %exitcond.not.i223.i, label %ZDICT_dictSize.exit224.i, label %.lr.ph.i219.i, !llvm.loop !83

ZDICT_dictSize.exit224.i:                         ; preds = %.lr.ph.i219.i
  %i.wx = icmp ult i32 %i.ww, 128
  br i1 %i.wx, label %.thread233.sink.split.i, label %bb.ax

ZDICT_dictSize.exit224.thread.critedge.i:         ; preds = %bb.av
  %i.wy = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.wz = add nsw i32 %.pre.i, -1
  %i.xa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.wy, ptr noundef nonnull @.str.18, i32 noundef %i.wz, i32 noundef 0) #19 ; 0 uses
  %i.xb = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.xc = tail call i32 @fflush(ptr noundef %i.xb) ; 0 uses
  %i.xd = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.xe = add nsw i32 %spec.select.i, -1
  %i.xf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xd, ptr noundef nonnull @.str.19, i32 noundef %i.xe) #19 ; 0 uses
  %i.xg = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.xh = tail call i32 @fflush(ptr noundef %i.xg) ; 0 uses
  br label %.thread233.sink.split.i

bb.ax:                                            ; preds = %ZDICT_dictSize.exit224.i
  %i.xi = zext i32 %i.ww to i64                   ; 2 uses
  %i.xj = lshr i64 %1, 2
  %i.xk = icmp samesign ugt i64 %i.xj, %i.xi
  %brmerge239.not.i = and i1 %i.ax, %i.xk
  br i1 %brmerge239.not.i, label %bb.ay, label %.critedge181.i

bb.ay:                                            ; preds = %bb.ax
  %i.xl = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.xm = trunc i64 %1 to i32
  %i.xn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xl, ptr noundef nonnull @.str.22, i32 noundef %i.ww, i32 noundef %i.xm) #19 ; 0 uses
  %i.xo = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.xp = tail call i32 @fflush(ptr noundef %i.xo) ; 0 uses
  %i.xq = mul i64 %1, 10
  %i.xr = icmp ult i64 %.lcssa128, %i.xq
  br i1 %i.xr, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.xs = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.xt = lshr i64 %.lcssa128, 20
  %i.xu = trunc i64 %i.xt to i32
  %i.xv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xs, ptr noundef nonnull @.str.23, i32 noundef %i.xu) #19 ; 0 uses
  %i.xw = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.xx = tail call i32 @fflush(ptr noundef %i.xw) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.xy = icmp ugt i32 %i.al, 4
  br i1 %i.xy, label %bb.bb, label %.critedge181.i

bb.bb:                                            ; preds = %bb.ba
  %i.xz = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ya = add i32 %i.ai, 1
  %i.yb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xz, ptr noundef nonnull @.str.24, i32 noundef %i.ya) #19 ; 0 uses
  %i.yc = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yd = tail call i32 @fflush(ptr noundef %i.yc) ; 0 uses
  %i.ye = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yf = tail call i64 @fwrite(ptr nonnull @.str.25, i64 90, i64 1, ptr %i.ye) #20 ; 0 uses
  %i.yg = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yh = tail call i32 @fflush(ptr noundef %i.yg) ; 0 uses
  br label %.critedge181.i

.critedge181.i:                                   ; preds = %bb.bb, %bb.ba, %bb.ax
  %i.yi = mul i64 %1, 3
  %i.yj = icmp ult i64 %i.yi, %i.xi
  %i.yk = icmp ugt i32 %4, 8
  %or.cond.i = and i1 %i.yk, %i.yj
  %i.yl = icmp ugt i32 %i.ai, 1
  %or.cond7.i = select i1 %or.cond.i, i1 %i.yl, i1 false
  br i1 %or.cond7.i, label %.preheader.i, label %.lr.ph261.i.preheader

.preheader.i:                                     ; preds = %.critedge181.i, %.preheader.i
  %.0150.in.i = phi i32 [ %.0150.i, %.preheader.i ], [ %i.ai, %.critedge181.i ]
  %.0150.i = add i32 %.0150.in.i, -1              ; 3 uses
  %i.ym = lshr i32 %4, %.0150.i
  %i.yn = icmp ult i32 %i.ym, 5
  br i1 %i.yn, label %.preheader.i, label %bb.bc, !llvm.loop !84

bb.bc:                                            ; preds = %.preheader.i
  br i1 %i.ax, label %.critedge183.i, label %.lr.ph261.i.preheader

.critedge183.i:                                   ; preds = %bb.bc
  %i.yo = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yp = trunc i64 %1 to i32
  %i.yq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yo, ptr noundef nonnull @.str.26, i32 noundef %i.ww, i32 noundef %i.yp) #19 ; 0 uses
  %i.yr = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ys = tail call i32 @fflush(ptr noundef %i.yr) ; 0 uses
  %i.yt = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yt, ptr noundef nonnull @.str.27, i32 noundef %.0150.i) #19 ; 0 uses
  %i.yv = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yw = tail call i32 @fflush(ptr noundef %i.yv) ; 0 uses
  %i.yx = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.yy = tail call i64 @fwrite(ptr nonnull @.str.28, i64 54, i64 1, ptr %i.yx) #20 ; 0 uses
  %i.yz = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.za = tail call i32 @fflush(ptr noundef %i.yz) ; 0 uses
  br label %.lr.ph261.i.preheader

.lr.ph261.i.preheader:                            ; preds = %.critedge183.i, %bb.bc, %.critedge181.i
  br label %.lr.ph261.i

.lr.ph261.i:                                      ; preds = %.lr.ph261.i.preheader, %bb.bd
  %indvars.iv289.i = phi i64 [ %indvars.iv.next290.i, %bb.bd ], [ 1, %.lr.ph261.i.preheader ] ; 4 uses
  %.0147259.i = phi i32 [ %i.ze, %bb.bd ], [ 0, %.lr.ph261.i.preheader ] ; 3 uses
  %i.zb = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv289.i
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 4
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !9
  %i.ze = add i32 %i.zd, %.0147259.i              ; 3 uses
  %i.zf = zext i32 %i.ze to i64
  %i.zg = icmp ult i64 %1, %i.zf
  br i1 %i.zg, label %._crit_edge.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph261.i
  %indvars.iv.next290.i = add nuw nsw i64 %indvars.iv289.i, 1 ; 2 uses
  %exitcond293.not.i = icmp eq i64 %indvars.iv.next290.i, %wide.trip.count.i218.i
  br i1 %exitcond293.not.i, label %.lr.ph270.preheader.i, label %.lr.ph261.i, !llvm.loop !85

._crit_edge.i:                                    ; preds = %.lr.ph261.i
  %.not170266.i = icmp samesign ugt i64 %indvars.iv289.i, 1
  br i1 %.not170266.i, label %._crit_edge.i..lr.ph270.preheader.i_crit_edge, label %._crit_edge271.i

._crit_edge.i..lr.ph270.preheader.i_crit_edge:    ; preds = %._crit_edge.i
  %.pre = and i64 %indvars.iv289.i, 4294967295
  br label %.lr.ph270.preheader.i

.lr.ph270.preheader.i:                            ; preds = %bb.bd, %._crit_edge.i..lr.ph270.preheader.i_crit_edge
  %wide.trip.count297.i.pre-phi = phi i64 [ %.pre, %._crit_edge.i..lr.ph270.preheader.i_crit_edge ], [ %wide.trip.count.i218.i, %bb.bd ]
  %.0147.lcssa.ph324.i = phi i32 [ %.0147259.i, %._crit_edge.i..lr.ph270.preheader.i_crit_edge ], [ %i.ze, %bb.bd ]
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %.lr.ph270.i

.lr.ph270.i:                                      ; preds = %bb.be, %.lr.ph270.preheader.i
  %indvars.iv294.i = phi i64 [ 1, %.lr.ph270.preheader.i ], [ %indvars.iv.next295.i, %bb.be ] ; 2 uses
  %.0144268.i = phi ptr [ %i.zh, %.lr.ph270.preheader.i ], [ %i.zn, %bb.be ]
  %i.zi = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv294.i ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 4
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !9
  %i.zl = zext i32 %i.zk to i64                   ; 2 uses
  %i.zm = sub nsw i64 0, %i.zl
  %i.zn = getelementptr inbounds i8, ptr %.0144268.i, i64 %i.zm ; 3 uses
  %.not169.i = icmp ult ptr %i.zn, %0
  br i1 %.not169.i, label %.thread233.sink.split.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph270.i
  %i.zo = load i32, ptr %i.zi, align 4, !tbaa !7
  %i.zp = zext i32 %i.zo to i64
  %i.zq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.zp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zn, ptr nonnull align 1 %i.zq, i64 %i.zl, i1 false)
  %indvars.iv.next295.i = add nuw nsw i64 %indvars.iv294.i, 1 ; 2 uses
  %exitcond298.not.i = icmp eq i64 %indvars.iv.next295.i, %wide.trip.count297.i.pre-phi
  br i1 %exitcond298.not.i, label %._crit_edge271.i, label %.lr.ph270.i, !llvm.loop !86

._crit_edge271.i:                                 ; preds = %bb.be, %._crit_edge.i
  %.0147.lcssa.ph323.i = phi i32 [ %.0147259.i, %._crit_edge.i ], [ %.0147.lcssa.ph324.i, %bb.be ]
  %i.zr = zext i32 %.0147.lcssa.ph323.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store <2 x i32> %i.r, ptr %6, align 8, !tbaa !3
  %.sroa.6.4..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6.4..sroa_idx, align 8, !tbaa !3
  %i.zs = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %i.zr, i64 noundef %1, ptr noundef nonnull %i.o, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.thread233.sink.split.i

.thread233.sink.split.i:                          ; preds = %.lr.ph.i22, %.lr.ph270.i, %._crit_edge271.i, %ZDICT_dictSize.exit224.thread.critedge.i, %ZDICT_dictSize.exit224.i, %.critedge179.i, %bb.d, %bb.c
  %.8.ph.i = phi i64 [ -1, %.lr.ph270.i ], [ -34, %ZDICT_dictSize.exit224.i ], [ -34, %bb.d ], [ %i.zs, %._crit_edge271.i ], [ -70, %bb.c ], [ -34, %ZDICT_dictSize.exit224.thread.critedge.i ], [ -34, %.critedge179.i ], [ -1, %.lr.ph.i22 ]
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
  %i.a = load i32, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = select i1 %i.b, i32 3, i32 %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %i.k) #20 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !11
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
  %i.v = add i64 %i.t, 8                          ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.critedge
  store i32 -332356553, ptr %0, align 1, !tbaa !3
  %i.w = tail call i64 @ZSTD_XXH64(ptr noundef nonnull captures(none) %i.s, i64 noundef %1, i64 noundef 0) #18
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

declare ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #5

declare void @ZSTD_getParams(ptr dead_on_unwind writable sret(%struct.ZSTD_parameters) align 4, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @ZSTD_createCDict_advanced(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.ZSTD_compressionParameters) align 8, ptr noundef byval(%struct.ZSTD_customMem) align 8) local_unnamed_addr #5

declare ptr @ZSTD_createCCtx() local_unnamed_addr #5

declare i64 @HUF_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @HUF_writeCTable_wksp(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @FSE_writeNCount(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @ZSTD_freeCDict(ptr noundef) local_unnamed_addr #5

declare i64 @ZSTD_freeCCtx(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

declare i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i64 @ZSTD_compressBlock_deprecated(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @ZSTD_getSeqStore(ptr noundef) local_unnamed_addr #5

declare i32 @ZSTD_seqToCodes(ptr noundef) local_unnamed_addr #5

declare i32 @divsufsort(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @ZDICT_tryMerge(ptr nofree noundef nonnull captures(none) %0, i64 %1, i32 %2, i32 noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #12 {
bb.a:
  %.sroa.0102.sroa.0.0.extract.trunc = trunc i64 %1 to i32 ; 7 uses
  %.sroa.0102.sroa.14.0.extract.shift = lshr i64 %1, 32 ; 2 uses
  %.sroa.0102.sroa.14.0.extract.trunc = trunc nuw i64 %.sroa.0102.sroa.14.0.extract.shift to i32 ; 7 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !7      ; 3 uses
  %i.b = add i32 %.sroa.0102.sroa.14.0.extract.trunc, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.c = icmp ugt i32 %i.a, 1
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext i32 %3 to i64
  %wide.trip.count = zext i32 %i.a to i64
  br label %.lr.ph

.lr.ph198:                                        ; preds = %bb.e
  %i.e = and i64 %1, 4294967295
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = zext i32 %3 to i64
  %wide.trip.count233 = zext i32 %i.a to i64
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.i = icmp eq i64 %indvars.iv, %i.d
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7    ; 3 uses
  %i.l = icmp ule i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc
  %.not164 = icmp ugt i32 %i.k, %i.b
  %or.cond = select i1 %i.l, i1 true, i1 %.not164
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9
  %i.p = add i32 %i.o, %i.m
  store i32 %i.p, ptr %i.n, align 4, !tbaa !9
  store i32 %.sroa.0102.sroa.0.0.extract.trunc, ptr %i.j, align 4, !tbaa !7
  %i.q = mul i32 %i.m, %2
  %i.r = udiv i32 %i.q, %.sroa.0102.sroa.14.0.extract.trunc
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !10
  %i.u = lshr i32 %.sroa.0102.sroa.14.0.extract.trunc, 3
  %i.v = add i32 %i.r, %i.u
  %i.w = add i32 %i.v, %i.t                       ; 3 uses
  store i32 %i.w, ptr %i.s, align 4, !tbaa !10
  %.sroa.0102.0.copyload = load i64, ptr %i.j, align 4
  %i.x = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.x, label %.lr.ph204, label %.critedge

.lr.ph204:                                        ; preds = %bb.c, %bb.d
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %bb.d ], [ %indvars.iv, %bb.c ] ; 3 uses
  %indvars.iv.next227 = add nsw i64 %indvars.iv226, -1 ; 3 uses
  %i.y = and i64 %indvars.iv.next227, 4294967295
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !10
  %i.ac = icmp ult i32 %i.ab, %i.w
  br i1 %i.ac, label %bb.d, label %.critedge.loopexit.split.loop.exit274

bb.d:                                             ; preds = %.lr.ph204
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv226
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false), !tbaa.struct !74
  %i.ae = and i64 %indvars.iv.next227, 4294967294
  %.not251 = icmp eq i64 %i.ae, 0
  br i1 %.not251, label %.critedge, label %.lr.ph204, !llvm.loop !92

.critedge.loopexit.split.loop.exit274:            ; preds = %.lr.ph204
  %i.af = trunc nuw i64 %indvars.iv226 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.loopexit.split.loop.exit274, %bb.c
  %.1.lcssa = phi i32 [ 1, %bb.c ], [ %i.af, %.critedge.loopexit.split.loop.exit274 ], [ 1, %bb.d ] ; 2 uses
  %i.ag = zext i32 %.1.lcssa to i64
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.ag ; 2 uses
  store i64 %.sroa.0102.0.copyload, ptr %i.ah, align 4
  %.sroa.24.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %i.w, ptr %.sroa.24.0..sroa_idx132, align 4, !tbaa !3
  br label %.loopexit

bb.e:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph198, label %.lr.ph, !llvm.loop !93

bb.f:                                             ; preds = %.lr.ph198, %bb.o
  %indvars.iv229 = phi i64 [ 1, %.lr.ph198 ], [ %indvars.iv.next230, %bb.o ] ; 6 uses
  %i.ai = icmp eq i64 %indvars.iv229, %i.h
  br i1 %i.ai, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv229 ; 8 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !9  ; 6 uses
  %i.an = add i32 %i.am, %i.ak                    ; 2 uses
  %.not = icmp uge i32 %i.an, %.sroa.0102.sroa.0.0.extract.trunc
  %i.ao = icmp ult i32 %i.ak, %.sroa.0102.sroa.0.0.extract.trunc
  %or.cond165 = and i1 %i.ao, %.not
  br i1 %or.cond165, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ap = sub nsw i32 %i.b, %i.an                 ; 3 uses
  %i.aq = lshr i32 %.sroa.0102.sroa.14.0.extract.trunc, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !10
  %i.at = add i32 %i.as, %i.aq                    ; 3 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !10
  %i.au = icmp sgt i32 %i.ap, 0
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.aw = add i32 %i.ap, %i.am
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !9
  %i.ax = mul i32 %i.ap, %2
  %i.ay = udiv i32 %i.ax, %.sroa.0102.sroa.14.0.extract.trunc
  %i.az = add i32 %i.ay, %i.at                    ; 2 uses
  store i32 %i.az, ptr %i.ar, align 4, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.24.0.copyload135 = phi i32 [ %i.az, %bb.i ], [ %i.at, %bb.h ] ; 2 uses
  %.sroa.0102.0.copyload112 = load i64, ptr %i.aj, align 4
  %i.ba = icmp samesign ugt i64 %indvars.iv229, 1
  br i1 %i.ba, label %.lr.ph200, label %.critedge2

.lr.ph200:                                        ; preds = %bb.j, %bb.k
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %bb.k ], [ %indvars.iv229, %bb.j ] ; 3 uses
  %indvars.iv.next239 = add nsw i64 %indvars.iv238, -1 ; 3 uses
  %i.bb = and i64 %indvars.iv.next239, 4294967295
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !10
  %i.bf = icmp ult i32 %i.be, %.sroa.24.0.copyload135
  br i1 %i.bf, label %bb.k, label %.critedge2.loopexit.split.loop.exit281

bb.k:                                             ; preds = %.lr.ph200
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv238
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bg, ptr noundef nonnull align 4 dereferenceable(12) %i.bc, i64 12, i1 false), !tbaa.struct !74
  %i.bh = and i64 %indvars.iv.next239, 4294967294
  %.not252 = icmp eq i64 %i.bh, 0
  br i1 %.not252, label %.critedge2, label %.lr.ph200, !llvm.loop !94

.critedge2.loopexit.split.loop.exit281:           ; preds = %.lr.ph200
  %i.bi = trunc nuw i64 %indvars.iv238 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.k, %.critedge2.loopexit.split.loop.exit281, %bb.j
  %.3.lcssa = phi i32 [ 1, %bb.j ], [ %i.bi, %.critedge2.loopexit.split.loop.exit281 ], [ 1, %bb.k ] ; 2 uses
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
  br i1 %i.bn, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bo = zext i32 %i.am to i64                   ; 2 uses
  %.not13.i = icmp eq i32 %i.am, 0
  br i1 %.not13.i, label %isIncluded.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.010.i = phi i64 [ %i.bt, %bb.n ], [ 0, %bb.m ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.010.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !31
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 %.010.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !31
  %.not.i = icmp eq i8 %i.bq, %i.bs
  br i1 %.not.i, label %bb.n, label %isIncluded.exit

bb.n:                                             ; preds = %.lr.ph.i
  %i.bt = add nuw nsw i64 %.010.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bt, %i.bo
  br i1 %exitcond.not.i, label %isIncluded.exit.thread, label %.lr.ph.i, !llvm.loop !95

isIncluded.exit:                                  ; preds = %.lr.ph.i
  %.not172 = icmp eq i64 %.010.i, %i.bo
  br i1 %.not172, label %isIncluded.exit.thread, label %bb.o

isIncluded.exit.thread:                           ; preds = %bb.m, %isIncluded.exit, %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.bv = trunc nuw i64 %indvars.iv229 to i32
  %i.bw = sub nsw i32 %.sroa.0102.sroa.14.0.extract.trunc, %i.am
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 1)
  %spec.select = zext nneg i32 %narrow to i64
  store i32 %.sroa.0102.sroa.0.0.extract.trunc, ptr %i.aj, align 4, !tbaa !7
  %i.bx = zext i32 %2 to i64
  %i.by = mul nuw nsw i64 %spec.select, %i.bx
  %i.bz = udiv i64 %i.by, %.sroa.0102.sroa.14.0.extract.shift
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !10
  %i.cd = add i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !10
  %i.ce = add i32 %i.am, 1
  %i.cf = tail call i32 @llvm.umin.i32(i32 %i.ce, i32 %.sroa.0102.sroa.14.0.extract.trunc)
  store i32 %i.cf, ptr %i.bu, align 4, !tbaa !9
  br label %.loopexit

bb.o:                                             ; preds = %bb.l, %isIncluded.exit, %bb.f
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next230, %wide.trip.count233
  br i1 %exitcond234.not, label %.loopexit, label %bb.f, !llvm.loop !96

.loopexit:                                        ; preds = %bb.o, %bb.a, %isIncluded.exit.thread, %.critedge2, %.critedge
  %.0 = phi i32 [ %.1.lcssa, %.critedge ], [ %.3.lcssa, %.critedge2 ], [ %i.bv, %isIncluded.exit.thread ], [ 0, %bb.a ], [ 0, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { cold nounwind }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8}
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
!23 = !{!24, !4, i64 0}
!24 = !{!"", !25, i64 0, !8, i64 28}
!25 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24}
!26 = !{!27, !29, i64 16}
!27 = !{!"", !28, i64 0, !28, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !15, i64 56, !15, i64 64, !4, i64 72, !4, i64 76}
!28 = !{!"p1 _ZTS8seqDef_s", !13, i64 0}
!29 = !{!"p1 omnipotent char", !13, i64 0}
!30 = !{!27, !29, i64 24}
!31 = !{!5, !5, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !17}
!35 = !{!27, !28, i64 8}
!36 = !{!27, !28, i64 0}
!37 = !{!27, !29, i64 48}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !33}
!40 = !{!27, !29, i64 40}
!41 = distinct !{!41, !17}
!42 = distinct !{!42, !33}
!43 = !{!27, !29, i64 32}
!44 = distinct !{!44, !17}
!45 = distinct !{!45, !33}
!46 = !{!47, !4, i64 0}
!47 = !{!"seqDef_s", !4, i64 0, !48, i64 4, !48, i64 6}
!48 = !{!"short", !5, i64 0}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17, !18, !19}
!52 = distinct !{!52, !17, !19, !18}
!53 = distinct !{!53, !17, !18, !19}
!54 = distinct !{!54, !17, !19, !18}
!55 = distinct !{!55, !17, !18, !19}
!56 = distinct !{!56, !17, !19, !18}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !33}
!60 = distinct !{!60, !17}
!61 = !{!48, !48, i64 0}
!62 = distinct !{!62, !17}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17}
!65 = distinct !{!65, !33}
!66 = distinct !{!66, !17}
!67 = distinct !{!67, !17}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17}
!71 = distinct !{!71, !17}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3}
!75 = distinct !{!75, !17}
!76 = distinct !{!76, !17}
!77 = distinct !{!77, !17}
!78 = distinct !{!78, !17, !18, !19}
!79 = distinct !{!79, !17, !19, !18}
!80 = distinct !{!80, !17}
!81 = distinct !{!81, !17}
!82 = distinct !{!82, !17, !18, !19}
!83 = distinct !{!83, !17, !19, !18}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, !17}
!86 = distinct !{!86, !17}
!87 = !{!88, !4, i64 4}
!88 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !89, i64 24, !4, i64 32, !4, i64 36, !4, i64 40, !8, i64 44}
!89 = !{!"double", !5, i64 0}
!90 = !{!88, !4, i64 12}
!91 = !{!88, !4, i64 44}
!92 = distinct !{!92, !17}
!93 = distinct !{!93, !17}
!94 = distinct !{!94, !17}
!95 = distinct !{!95, !17}
!96 = distinct !{!96, !17}
end_hunk_1

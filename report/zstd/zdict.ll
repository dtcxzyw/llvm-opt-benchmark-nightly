Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zdict?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ZDICT_analyzeEntropy:bb.a
  br i1 %i.ql, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not197 = icmp eq i32 %8, 0
  br i1 %.not197, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.qm = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite198 = call i64 @fwrite(ptr nonnull @.str.11, i64 23, i64 1, ptr %i.qm) #20 ; 0 uses
  %i.qn = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.qo = call i32 @fflush(ptr noundef %i.qn)     ; 0 uses
  br label %.thread

bb.ad:                                            ; preds = %bb.aa
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 %i.qk ; 2 uses
  %i.qq = sub i64 %1, %i.qk                       ; 2 uses
  %i.qr = call i64 @FSE_writeNCount(ptr noundef %i.qp, i64 noundef %i.qq, ptr noundef nonnull %i.d, i32 noundef 30, i32 noundef %i.pt) #16 ; 6 uses
  %i.qs = icmp ult i64 %i.qr, -119
  br i1 %i.qs, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not200 = icmp eq i32 %8, 0
  br i1 %.not200, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.qt = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite201 = call i64 @fwrite(ptr nonnull @.str.12, i64 42, i64 1, ptr %i.qt) #20 ; 0 uses
  %i.qu = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.qv = call i32 @fflush(ptr noundef %i.qu)     ; 0 uses
  br label %.thread

bb.ag:                                            ; preds = %bb.ad
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qr ; 2 uses
  %i.qx = sub i64 %i.qq, %i.qr                    ; 2 uses
  %i.qy = call i64 @FSE_writeNCount(ptr noundef %i.qw, i64 noundef %i.qx, ptr noundef nonnull %i.f, i32 noundef 52, i32 noundef %i.qc) #16 ; 6 uses
  %i.qz = icmp ult i64 %i.qy, -119
  br i1 %i.qz, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not203 = icmp eq i32 %8, 0
  br i1 %.not203, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ra = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite204 = call i64 @fwrite(ptr nonnull @.str.13, i64 46, i64 1, ptr %i.ra) #20 ; 0 uses
  %i.rb = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.rc = call i32 @fflush(ptr noundef %i.rb)     ; 0 uses
  br label %.thread

bb.aj:                                            ; preds = %bb.ag
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.qy ; 2 uses
  %i.re = sub i64 %i.qx, %i.qy                    ; 2 uses
  %i.rf = call i64 @FSE_writeNCount(ptr noundef %i.rd, i64 noundef %i.re, ptr noundef nonnull %i.h, i32 noundef 35, i32 noundef %i.qj) #16 ; 6 uses
  %i.rg = icmp ult i64 %i.rf, -119
  br i1 %i.rg, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not206 = icmp eq i32 %8, 0
  br i1 %.not206, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.rh = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite207 = call i64 @fwrite(ptr nonnull @.str.14, i64 44, i64 1, ptr %i.rh) #20 ; 0 uses
  %i.ri = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.rj = call i32 @fflush(ptr noundef %i.ri)     ; 0 uses
  br label %.thread

bb.am:                                            ; preds = %bb.aj
  %i.rk = sub i64 %i.re, %i.rf
  %i.rl = icmp ult i64 %i.rk, 12
  br i1 %i.rl, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %.not208 = icmp eq i32 %8, 0
  br i1 %.not208, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.rm = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite209 = call i64 @fwrite(ptr nonnull @.str.15, i64 38, i64 1, ptr %i.rm) #20 ; 0 uses
  %i.rn = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ro = call i32 @fflush(ptr noundef %i.rn)     ; 0 uses
  br label %.thread

bb.ap:                                            ; preds = %bb.am
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rf ; 3 uses
  store i32 1, ptr %i.rp, align 1, !tbaa !8
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 4
  store i32 4, ptr %i.rq, align 1, !tbaa !8
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  store i32 8, ptr %i.rr, align 1, !tbaa !8
  %i.rs = add nuw i64 %i.qk, 12
  %i.rt = add i64 %i.rs, %i.qr
  %i.ru = add i64 %i.rt, %i.qy
  %i.rv = add i64 %i.ru, %i.rf
  br label %.thread

.thread:                                          ; preds = %bb.ak, %bb.al, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.ab, %bb.ac, %bb.n, %bb.o, %ZDICT_totalSampleSize.exit, %bb.an, %bb.ao, %bb.y, %bb.z, %bb.v, %bb.w, %bb.s, %bb.t, %bb.b, %bb.c, %bb.ap
  %.sroa.0.0 = phi ptr [ null, %ZDICT_totalSampleSize.exit ], [ %i.dq, %bb.an ], [ %i.dq, %bb.ao ], [ %i.dq, %bb.ap ], [ %i.dq, %bb.ah ], [ %i.dq, %bb.ae ], [ %i.dq, %bb.ab ], [ %i.dq, %bb.n ], [ %i.dq, %bb.y ], [ %i.dq, %bb.z ], [ %i.dq, %bb.v ], [ %i.dq, %bb.w ], [ %i.dq, %bb.s ], [ %i.dq, %bb.t ], [ %i.dq, %bb.c ], [ %i.dq, %bb.b ], [ %i.dq, %bb.o ], [ %i.dq, %bb.ac ], [ %i.dq, %bb.af ], [ %i.dq, %bb.ai ], [ %i.dq, %bb.al ], [ %i.dq, %bb.ak ]
  %.sroa.7.0 = phi ptr [ null, %ZDICT_totalSampleSize.exit ], [ %i.dr, %bb.an ], [ %i.dr, %bb.ao ], [ %i.dr, %bb.ap ], [ %i.dr, %bb.ah ], [ %i.dr, %bb.ae ], [ %i.dr, %bb.ab ], [ %i.dr, %bb.n ], [ %i.dr, %bb.y ], [ %i.dr, %bb.z ], [ %i.dr, %bb.v ], [ %i.dr, %bb.w ], [ %i.dr, %bb.s ], [ %i.dr, %bb.t ], [ %i.dr, %bb.c ], [ %i.dr, %bb.b ], [ %i.dr, %bb.o ], [ %i.dr, %bb.ac ], [ %i.dr, %bb.af ], [ %i.dr, %bb.ai ], [ %i.dr, %bb.al ], [ %i.dr, %bb.ak ]
  %.sroa.9.0 = phi ptr [ null, %ZDICT_totalSampleSize.exit ], [ %i.ds, %bb.an ], [ %i.ds, %bb.ao ], [ %i.ds, %bb.ap ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ae ], [ %i.ds, %bb.ab ], [ %i.ds, %bb.n ], [ %i.ds, %bb.y ], [ %i.ds, %bb.z ], [ %i.ds, %bb.v ], [ %i.ds, %bb.w ], [ %i.ds, %bb.s ], [ %i.ds, %bb.t ], [ %i.ds, %bb.c ], [ %i.ds, %bb.b ], [ %i.ds, %bb.o ], [ %i.ds, %bb.ac ], [ %i.ds, %bb.af ], [ %i.ds, %bb.ai ], [ %i.ds, %bb.al ], [ %i.ds, %bb.ak ]
  %.5 = phi i64 [ -34, %ZDICT_totalSampleSize.exit ], [ -70, %bb.an ], [ -70, %bb.ao ], [ %i.rv, %bb.ap ], [ %i.qy, %bb.ah ], [ %i.qr, %bb.ae ], [ %i.qk, %bb.ab ], [ %i.lw, %bb.n ], [ %i.qe, %bb.y ], [ %i.qe, %bb.z ], [ %i.pv, %bb.v ], [ %i.pv, %bb.w ], [ %i.pl, %bb.s ], [ %i.pl, %bb.t ], [ -64, %bb.c ], [ -64, %bb.b ], [ %i.lw, %bb.o ], [ %i.qk, %bb.ac ], [ %i.qr, %bb.af ], [ %i.qy, %bb.ai ], [ %i.rf, %bb.al ], [ %i.rf, %bb.ak ]
  %i.rw = call i64 @ZSTD_freeCDict(ptr noundef %.sroa.0.0) #16 ; 0 uses
  %i.rx = call i64 @ZSTD_freeCCtx(ptr noundef %.sroa.7.0) #16 ; 0 uses
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
  %vec.phi128 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !17
  %wide.load129 = load <2 x i64>, ptr %i.e, align 8, !tbaa !17
  %i.f = add <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.g = add <2 x i64> %wide.load129, %vec.phi128 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !56

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
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17
  %i.l = add i64 %i.k, %.067.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ZDICT_totalSampleSize.exit, label %.lr.ph.i, !llvm.loop !57

ZDICT_totalSampleSize.exit:                       ; preds = %.lr.ph.i, %middle.block
  %.lcssa127 = phi i64 [ %i.i, %middle.block ], [ %i.l, %.lr.ph.i ] ; 4 uses
  %i.m = icmp ult i64 %.lcssa127, 512
  br i1 %i.m, label %ZDICT_totalSampleSize.exit.thread, label %bb.b

bb.b:                                             ; preds = %ZDICT_totalSampleSize.exit
  %i.n = add i64 %.lcssa127, 32
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #17 ; 21 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %ZDICT_totalSampleSize.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %2, i64 %.lcssa127, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.lcssa127 ; 2 uses
  store <16 x i8> <i8 -30, i8 51, i8 -9, i8 105, i8 -35, i8 -31, i8 -119, i8 112, i8 5, i8 -68, i8 15, i8 79, i8 -73, i8 -13, i8 110, i8 -47>, ptr %i.p, align 1, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> <i8 14, i8 -34, i8 95, i8 14, i8 -114, i8 -50, i8 31, i8 67, i8 -40, i8 -37, i8 31, i8 -102, i8 88, i8 -72, i8 -78, i8 0>, ptr %i.q, align 1, !tbaa !21
  %.sroa.0.0.copyload = load i32, ptr %5, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  %i.r = lshr i64 %1, 4
  %i.s = trunc i64 %i.r to i32
  %i.t = tail call i32 @llvm.umax.i32(i32 %4, i32 %i.s)
  %..i = tail call i32 @llvm.umax.i32(i32 %i.t, i32 10000) ; 2 uses
  %i.u = zext i32 %..i to i64
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #17 ; 34 uses
  %min.iters.check131 = icmp ult i32 %4, 4
  br i1 %min.iters.check131, label %.lr.ph.i.i.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec133 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next140, %vector.body134 ] ; 2 uses
  %vec.phi136 = phi <2 x i64> [ zeroinitializer, %vector.ph132 ], [ %i.z, %vector.body134 ]
  %vec.phi137 = phi <2 x i64> [ zeroinitializer, %vector.ph132 ], [ %i.aa, %vector.body134 ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index135 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load138 = load <2 x i64>, ptr %i.x, align 8, !tbaa !17
  %wide.load139 = load <2 x i64>, ptr %i.y, align 8, !tbaa !17
  %i.z = add <2 x i64> %wide.load138, %vec.phi136 ; 2 uses
  %i.aa = add <2 x i64> %wide.load139, %vec.phi137 ; 2 uses
  %index.next140 = add nuw i64 %index135, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next140, %n.vec133
  br i1 %i.ab, label %middle.block141, label %vector.body134, !llvm.loop !58

middle.block141:                                  ; preds = %vector.body134
  %bin.rdx142 = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx142) ; 2 uses
  %cmp.n143 = icmp eq i64 %n.vec133, %wide.trip.count.i
  br i1 %cmp.n143, label %ZDICT_totalSampleSize.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block141
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec133, %middle.block141 ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.ac, %middle.block141 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.i
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.af = add i64 %i.ae, %.067.i.i                ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond.not.i.i, label %ZDICT_totalSampleSize.exit.i, label %.lr.ph.i.i, !llvm.loop !59

ZDICT_totalSampleSize.exit.i:                     ; preds = %.lr.ph.i.i, %middle.block141
  %.lcssa126 = phi i64 [ %i.ac, %middle.block141 ], [ %i.af, %.lr.ph.i.i ] ; 10 uses
  %7 = freeze i32 %.sroa.5.0.copyload             ; 5 uses
  %i.ag = icmp eq i32 %.sroa.0.0.copyload, 0
  %i.ah = select i1 %i.ag, i32 9, i32 %.sroa.0.0.copyload ; 5 uses
  %i.ai = icmp ugt i32 %i.ah, 30
  %i.aj = lshr i32 %4, %i.ah
  %i.ak = select i1 %i.ai, i32 4, i32 %i.aj       ; 2 uses
  %.not.i19 = icmp eq ptr %i.w, null
  br i1 %.not.i19, label %ZDICT_trainFromBuffer_unsafe_legacy.exit, label %bb.c

bb.c:                                             ; preds = %ZDICT_totalSampleSize.exit.i
  %i.al = icmp ult i64 %1, 256
  br i1 %i.al, label %.thread235.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = icmp ult i64 %.lcssa126, 512
  br i1 %i.am, label %.thread235.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.w, align 4, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 0, ptr %i.an, align 4, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 -1, ptr %i.ao, align 4, !tbaa !12
  %i.ap = shl i64 %.lcssa126, 2                   ; 2 uses
  %i.aq = add i64 %i.ap, 8
  %i.ar = tail call noalias ptr @malloc(i64 noundef %i.aq) #17 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 22 uses
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.ap) #17 ; 8 uses
  %i.au = add i64 %.lcssa126, 16                  ; 2 uses
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.au) #17 ; 11 uses
  %i.aw = icmp ugt i32 %7, 1                      ; 6 uses
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ax, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19 ; 0 uses
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ba = tail call i32 @fflush(ptr noundef %i.az) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bb = icmp ne ptr %i.ar, null
  %i.bc = icmp ne ptr %i.at, null
  %or.cond.i.i = and i1 %i.bb, %i.bc
  %i.bd = icmp ne ptr %i.av, null
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.bd
  br i1 %or.cond3.i.i, label %bb.h, label %ZDICT_trainBuffer_legacy.exit.i

bb.h:                                             ; preds = %bb.g
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.ak, i32 4) ; 60 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.av, i8 0, i64 %i.au, i1 false)
  %i.be = icmp ugt i64 %.lcssa126, 2097152000     ; 2 uses
  %i.bf = icmp ugt i32 %7, 2                      ; 2 uses
  %or.cond7.i.i = and i1 %i.bf, %i.be
  br i1 %or.cond7.i.i, label %.thread186.i.i, label %bb.i

.thread186.i.i:                                   ; preds = %bb.h
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bg, ptr noundef nonnull @.str.29, i32 noundef 2000) #19 ; 0 uses
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bj = tail call i32 @fflush(ptr noundef %i.bi) ; 0 uses
  br label %.lr.ph.i194.i.preheader

bb.i:                                             ; preds = %bb.h
  br i1 %i.be, label %.lr.ph.i194.i.preheader, label %._crit_edge.i.i

.lr.ph.i194.i.preheader:                          ; preds = %bb.i, %.thread186.i.i
  br label %.lr.ph.i194.i

.lr.ph.i194.i:                                    ; preds = %.lr.ph.i194.i.preheader, %.lr.ph.i194.i
  %.093132.i.i = phi i64 [ %i.bo, %.lr.ph.i194.i ], [ %.lcssa126, %.lr.ph.i194.i.preheader ]
  %.094131.i.i = phi i32 [ %i.bk, %.lr.ph.i194.i ], [ %4, %.lr.ph.i194.i.preheader ]
  %i.bk = add i32 %.094131.i.i, -1                ; 3 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !17
  %i.bo = sub i64 %.093132.i.i, %i.bn             ; 3 uses
  %i.bp = icmp ugt i64 %i.bo, 2097152000
  br i1 %i.bp, label %.lr.ph.i194.i, label %._crit_edge.i.i, !llvm.loop !60

._crit_edge.i.i:                                  ; preds = %.lr.ph.i194.i, %bb.i
  %.094.lcssa.i.i = phi i32 [ %4, %bb.i ], [ %i.bk, %.lr.ph.i194.i ]
  %.093.lcssa.i.i = phi i64 [ %.lcssa126, %bb.i ], [ %i.bo, %.lr.ph.i194.i ] ; 9 uses
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.br = lshr i64 %.093.lcssa.i.i, 20
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.30, i32 noundef %.094.lcssa.i.i, i32 noundef %i.bs) #19 ; 0 uses
  %i.bu = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bv = tail call i32 @fflush(ptr noundef %i.bu) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %i.bw = trunc nuw nsw i64 %.093.lcssa.i.i to i32 ; 3 uses
  %i.bx = tail call i32 @divsufsort(ptr noundef nonnull %i.o, ptr noundef nonnull %i.as, i32 noundef %i.bw, i32 noundef 0) #16
  %.not.i191.not.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i191.not.i, label %bb.l, label %ZDICT_trainBuffer_legacy.exit.i

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.093.lcssa.i.i
  store i32 %i.bw, ptr %i.by, align 4, !tbaa !8
  store i32 %i.bw, ptr %i.ar, align 4, !tbaa !8
  %.not153.i.i = icmp eq i64 %.093.lcssa.i.i, 0   ; 2 uses
  br i1 %.not153.i.i, label %._crit_edge141.i.i, label %.lr.ph136.i.i.preheader

.lr.ph136.i.i.preheader:                          ; preds = %bb.l
  %xtraiter = and i64 %.093.lcssa.i.i, 3          ; 3 uses
  %i.bz = icmp ult i64 %.093.lcssa.i.i, 4
  br i1 %i.bz, label %.lr.ph136.i.i.epil.preheader, label %.lr.ph136.i.i.preheader.new

.lr.ph136.i.i.preheader.new:                      ; preds = %.lr.ph136.i.i.preheader
  %unroll_iter = and i64 %.093.lcssa.i.i, 2147483644
  br label %.lr.ph136.i.i

.lr.ph136.i.i:                                    ; preds = %.lr.ph136.i.i, %.lr.ph136.i.i.preheader.new
  %.096134.i.i = phi i64 [ 0, %.lr.ph136.i.i.preheader.new ], [ %i.cx, %.lr.ph136.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph136.i.i.preheader.new ], [ %niter.next.3, %.lr.ph136.i.i ]
  %i.ca = trunc nuw nsw i64 %.096134.i.i to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.096134.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cd
  store i32 %i.ca, ptr %i.ce, align 4, !tbaa !8
  %i.cf = or disjoint i64 %.096134.i.i, 1         ; 2 uses
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.cf
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !8
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cj
  store i32 %i.cg, ptr %i.ck, align 4, !tbaa !8
  %i.cl = or disjoint i64 %.096134.i.i, 2         ; 2 uses
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.cl
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !8
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cp
  store i32 %i.cm, ptr %i.cq, align 4, !tbaa !8
  %i.cr = or disjoint i64 %.096134.i.i, 3         ; 2 uses
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.cr
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !8
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cv
  store i32 %i.cs, ptr %i.cw, align 4, !tbaa !8
  %i.cx = add nuw nsw i64 %.096134.i.i, 4         ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge141.i.i.loopexit.unr-lcssa, label %.lr.ph136.i.i, !llvm.loop !61

._crit_edge141.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph136.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge141.i.i, label %.lr.ph136.i.i.epil.preheader

.lr.ph136.i.i.epil.preheader:                     ; preds = %._crit_edge141.i.i.loopexit.unr-lcssa, %.lr.ph136.i.i.preheader
  %.096134.i.i.epil.init = phi i64 [ 0, %.lr.ph136.i.i.preheader ], [ %i.cx, %._crit_edge141.i.i.loopexit.unr-lcssa ]
  %lcmp.mod169 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod169)
  br label %.lr.ph136.i.i.epil

.lr.ph136.i.i.epil:                               ; preds = %.lr.ph136.i.i.epil, %.lr.ph136.i.i.epil.preheader
  %.096134.i.i.epil = phi i64 [ %i.dd, %.lr.ph136.i.i.epil ], [ %.096134.i.i.epil.init, %.lr.ph136.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph136.i.i.epil ], [ 0, %.lr.ph136.i.i.epil.preheader ]
  %i.cy = trunc nuw nsw i64 %.096134.i.i.epil to i32
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.096134.i.i.epil
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !8
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.db
  store i32 %i.cy, ptr %i.dc, align 4, !tbaa !8
  %i.dd = add nuw nsw i64 %.096134.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge141.i.i, label %.lr.ph136.i.i.epil, !llvm.loop !62

._crit_edge141.i.i:                               ; preds = %._crit_edge141.i.i.loopexit.unr-lcssa, %.lr.ph136.i.i.epil, %bb.l
  br i1 %i.aw, label %bb.m, label %.thread.i.i

bb.m:                                             ; preds = %._crit_edge141.i.i
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.31, i64 22, i64 1, ptr %i.de) #20 ; 0 uses
  %i.df = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dg = tail call i32 @fflush(ptr noundef %i.df) ; 0 uses
  br i1 %i.bf, label %bb.n, label %.thread.i.i

bb.n:                                             ; preds = %bb.m
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.di = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dh, ptr noundef nonnull @.str.32, i32 noundef %spec.store.select.i.i) #19 ; 0 uses
  %i.dj = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dk = tail call i32 @fflush(ptr noundef %i.dj) ; 0 uses
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.n, %bb.m, %._crit_edge141.i.i
  br i1 %.not153.i.i, label %ZDICT_trainBuffer_legacy.exit.i, label %.lr.ph152.i.i

.lr.ph152.i.i:                                    ; preds = %.thread.i.i
  %i.dl = icmp ugt i32 %7, 3                      ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 252 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ft = add i32 %..i, -1
  %i.fu = uitofp nneg i64 %.093.lcssa.i.i to double
  br label %bb.o

bb.o:                                             ; preds = %bb.aw, %.lr.ph152.i.i
  %i.fv = phi i64 [ 0, %.lr.ph152.i.i ], [ %i.uc, %bb.aw ] ; 2 uses
  %.095150.i.i = phi i32 [ 0, %.lr.ph152.i.i ], [ %.1.i.i, %bb.aw ] ; 3 uses
  %.099148.i.i = phi i64 [ 0, %.lr.ph152.i.i ], [ %.3.i.i, %bb.aw ] ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !21
  %.not109.i.i = icmp eq i8 %i.fx, 0
  br i1 %.not109.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fy = add nuw i32 %.095150.i.i, 1
  br label %bb.aw, !llvm.loop !63

bb.q:                                             ; preds = %bb.o
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.fv
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !8  ; 2 uses
  %i.ge = zext i32 %i.gd to i64                   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ge ; 2 uses
  store i8 1, ptr %i.gf, align 1, !tbaa !21
  %i.gg = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ge ; 14 uses
  %.val258.i.i.i = load i16, ptr %i.gg, align 1, !tbaa !86
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  %.val257.i.i.i = load i16, ptr %i.gh, align 1, !tbaa !86 ; 2 uses
  %i.gi = icmp eq i16 %.val258.i.i.i, %.val257.i.i.i
  br i1 %i.gi, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  %.val256.i.i.i = load i16, ptr %i.gj, align 1, !tbaa !86
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 3
  %.val255.i.i.i = load i16, ptr %i.gk, align 1, !tbaa !86
  %i.gl = icmp eq i16 %.val256.i.i.i, %.val255.i.i.i
  br i1 %i.gl, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %.val253.i.i.i = load i16, ptr %i.gm, align 1, !tbaa !86
  %i.gn = icmp eq i16 %.val257.i.i.i, %.val253.i.i.i
  br i1 %i.gn, label %bb.t, label %.preheader315.i.i.i

.preheader315.i.i.i:                              ; preds = %bb.s
  %.012.val22.i.i.i.i = load i64, ptr %i.gg, align 1, !tbaa !17 ; 4 uses
  %i.go = ptrtoint ptr %i.gg to i64               ; 2 uses
  br label %bb.w

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %.val252.i.i.i = load i16, ptr %i.gp, align 1, !tbaa !86
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.0226.i.i.i = phi i32 [ 6, %bb.t ], [ %i.gt, %bb.u ] ; 4 uses
  %i.gq = zext i32 %.0226.i.i.i to i64            ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gq
  %.val.i.i.i = load i16, ptr %i.gr, align 1      ; 2 uses
  %i.gs = icmp eq i16 %.val.i.i.i, %.val252.i.i.i
  %i.gt = add i32 %.0226.i.i.i, 2
  br i1 %i.gs, label %bb.u, label %bb.v, !llvm.loop !64

bb.v:                                             ; preds = %bb.u
  %.not359.i.i.i = icmp eq i32 %.0226.i.i.i, 0
  br i1 %.not359.i.i.i, label %ZDICT_analyzePos.exit.thread.i.i, label %.lr.ph357.preheader.i.i.i

.lr.ph357.preheader.i.i.i:                        ; preds = %bb.v
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gq
  %i.gv = getelementptr i8, ptr %i.gu, i64 -1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !21
  %i.gx = trunc i16 %.val.i.i.i to i8
  %i.gy = icmp eq i8 %i.gw, %i.gx
  %i.gz = zext i1 %i.gy to i32
  %scevgep398.i.i.i = getelementptr i8, ptr %i.gf, i64 1
  %i.ha = or disjoint i32 %.0226.i.i.i, %i.gz
  %umax.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.ha, i32 2)
  %i.hb = add i32 %umax.i.i.i, -1
  %i.hc = zext i32 %i.hb to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep398.i.i.i, i8 1, i64 %i.hc, i1 false), !tbaa !21
  br label %ZDICT_analyzePos.exit.thread.i.i

bb.w:                                             ; preds = %ZDICT_count.exit.i.i.i, %.preheader315.i.i.i
  %indvars.iv394.in.i.i.i = phi i32 [ %i.ga, %.preheader315.i.i.i ], [ %indvars.iv394.i.i.i, %ZDICT_count.exit.i.i.i ] ; 2 uses
  %indvars.iv394.i.i.i = add i32 %indvars.iv394.in.i.i.i, 1 ; 6 uses
  %i.hd = zext i32 %indvars.iv394.i.i.i to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !8
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.hg ; 2 uses
  %.011.val21.i.i.i.i = load i64, ptr %i.hh, align 1, !tbaa !17 ; 2 uses
  %.not23.i.i.i.i = icmp eq i64 %.011.val21.i.i.i.i, %.012.val22.i.i.i.i
  br i1 %.not23.i.i.i.i, label %.lr.ph.i.i.i.i, label %ZDICT_count.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %.lr.ph.i.i.i.i
  %.01125.i.i.i.i = phi ptr [ %i.hj, %.lr.ph.i.i.i.i ], [ %i.hh, %bb.w ]
  %.01224.i.i.i.i = phi ptr [ %i.hi, %.lr.ph.i.i.i.i ], [ %i.gg, %bb.w ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.01224.i.i.i.i, i64 8 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.01125.i.i.i.i, i64 8 ; 2 uses
  %.011.val.i.i.i.i = load i64, ptr %i.hj, align 1, !tbaa !17 ; 2 uses
  %.012.val.i.i.i.i = load i64, ptr %i.hi, align 1, !tbaa !17 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.011.val.i.i.i.i, %.012.val.i.i.i.i
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %ZDICT_count.exit.i.i.i

ZDICT_count.exit.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %bb.w
  %.012.lcssa.i.i.i.i = phi ptr [ %i.gg, %bb.w ], [ %i.hi, %.lr.ph.i.i.i.i ]
  %.011.val.lcssa.i.i.i.i = phi i64 [ %.011.val21.i.i.i.i, %bb.w ], [ %.011.val.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.012.val.lcssa.i.i.i.i = phi i64 [ %.012.val22.i.i.i.i, %bb.w ], [ %.012.val.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.hk = xor i64 %.012.val.lcssa.i.i.i.i, %.011.val.lcssa.i.i.i.i
  %i.hl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.hk, i1 true)
  %i.hm = lshr i64 %i.hl, 3
  %i.hn = getelementptr inbounds nuw i8, ptr %.012.lcssa.i.i.i.i, i64 %i.hm
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = sub i64 %i.ho, %i.go
  %i.hq = icmp ugt i64 %i.hp, 6
  br i1 %i.hq, label %bb.w, label %.preheader314.i.i.i, !llvm.loop !65

.preheader314.i.i.i:                              ; preds = %ZDICT_count.exit.i.i.i, %ZDICT_count.exit271.i.i.i
  %indvar = phi i32 [ %indvar.next, %ZDICT_count.exit271.i.i.i ], [ 0, %ZDICT_count.exit.i.i.i ] ; 2 uses
  %.0231.i.i.i = phi i32 [ %i.ig, %ZDICT_count.exit271.i.i.i ], [ %i.ga, %ZDICT_count.exit.i.i.i ] ; 5 uses
  %i.hr = zext i32 %.0231.i.i.i to i64            ; 3 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.hr
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !8
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.hv ; 2 uses
  %.011.val21.i259.i.i.i = load i64, ptr %i.hw, align 1, !tbaa !17 ; 2 uses
  %.not23.i261.i.i.i = icmp eq i64 %.011.val21.i259.i.i.i, %.012.val22.i.i.i.i
  br i1 %.not23.i261.i.i.i, label %.lr.ph.i265.i.i.i, label %ZDICT_count.exit271.i.i.i

.lr.ph.i265.i.i.i:                                ; preds = %.preheader314.i.i.i, %.lr.ph.i265.i.i.i
  %.01125.i266.i.i.i = phi ptr [ %i.hy, %.lr.ph.i265.i.i.i ], [ %i.hw, %.preheader314.i.i.i ]
  %.01224.i267.i.i.i = phi ptr [ %i.hx, %.lr.ph.i265.i.i.i ], [ %i.gg, %.preheader314.i.i.i ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.01224.i267.i.i.i, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@ZDICT_trainFromBuffer_legacy:bb.a
  %i.rl = icmp eq i32 %i.rk, %i.lg
  br i1 %i.rl, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph351.i.i.i
  %i.rm = zext i32 %i.rk to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.rm ; 2 uses
  %.011.val21.i298.i.i.i = load i64, ptr %i.rn, align 1, !tbaa !17 ; 2 uses
  %.012.val22.i299.i.i.i = load i64, ptr %i.li, align 1, !tbaa !17 ; 2 uses
  %.not23.i300.i.i.i = icmp eq i64 %.011.val21.i298.i.i.i, %.012.val22.i299.i.i.i
  br i1 %.not23.i300.i.i.i, label %.lr.ph.i304.i.i.i, label %ZDICT_count.exit310.i.i.i

.lr.ph.i304.i.i.i:                                ; preds = %bb.ap, %.lr.ph.i304.i.i.i
  %.01125.i305.i.i.i = phi ptr [ %i.rp, %.lr.ph.i304.i.i.i ], [ %i.rn, %bb.ap ]
  %.01224.i306.i.i.i = phi ptr [ %i.ro, %.lr.ph.i304.i.i.i ], [ %i.li, %bb.ap ]
  %i.ro = getelementptr inbounds nuw i8, ptr %.01224.i306.i.i.i, i64 8 ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.01125.i305.i.i.i, i64 8 ; 2 uses
  %.011.val.i307.i.i.i = load i64, ptr %i.rp, align 1, !tbaa !17 ; 2 uses
  %.012.val.i308.i.i.i = load i64, ptr %i.ro, align 1, !tbaa !17 ; 2 uses
  %.not.i309.i.i.i = icmp eq i64 %.011.val.i307.i.i.i, %.012.val.i308.i.i.i
  br i1 %.not.i309.i.i.i, label %.lr.ph.i304.i.i.i, label %ZDICT_count.exit310.i.i.i

ZDICT_count.exit310.i.i.i:                        ; preds = %.lr.ph.i304.i.i.i, %bb.ap
  %.012.lcssa.i301.i.i.i = phi ptr [ %i.li, %bb.ap ], [ %i.ro, %.lr.ph.i304.i.i.i ]
  %.011.val.lcssa.i302.i.i.i = phi i64 [ %.011.val21.i298.i.i.i, %bb.ap ], [ %.011.val.i307.i.i.i, %.lr.ph.i304.i.i.i ]
  %.012.val.lcssa.i303.i.i.i = phi i64 [ %.012.val22.i299.i.i.i, %bb.ap ], [ %.012.val.i308.i.i.i, %.lr.ph.i304.i.i.i ]
  %i.rq = xor i64 %.012.val.lcssa.i303.i.i.i, %.011.val.lcssa.i302.i.i.i
  %i.rr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.rq, i1 true)
  %i.rs = lshr i64 %i.rr, 3
  %i.rt = getelementptr inbounds nuw i8, ptr %.012.lcssa.i301.i.i.i, i64 %i.rs
  %i.ru = ptrtoint ptr %i.rt to i64
  %i.rv = sub i64 %i.ru, %i.lj
  %i.rw = trunc i64 %i.rv to i32
  %spec.select251.i.i.i = tail call i32 @llvm.umin.i32(i32 %.0202.i.i.i, i32 %i.rw)
  br label %bb.aq

bb.aq:                                            ; preds = %ZDICT_count.exit310.i.i.i, %.lr.ph351.i.i.i
  %.0.i.i.i = phi i32 [ %spec.select251.i.i.i, %ZDICT_count.exit310.i.i.i ], [ %.0202.i.i.i, %.lr.ph351.i.i.i ] ; 2 uses
  %i.rx = add i32 %.0.i.i.i, %i.rk
  %i.ry = icmp ult i32 %i.rk, %i.rx
  br i1 %i.ry, label %.lr.ph347.preheader.i.i.i, label %._crit_edge348.i.i.i

.lr.ph347.preheader.i.i.i:                        ; preds = %bb.aq
  %i.rz = zext i32 %i.rk to i64
  %scevgep.i.i.i = getelementptr i8, ptr %i.av, i64 %i.rz
  %i.sa = add i32 %.0.i.i.i, -1
  %i.sb = zext i32 %i.sa to i64
  %i.sc = add nuw nsw i64 %i.sb, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i.i, i8 1, i64 %i.sc, i1 false), !tbaa !21
  br label %._crit_edge348.i.i.i

._crit_edge348.i.i.i:                             ; preds = %.lr.ph347.preheader.i.i.i, %bb.aq
  %indvars.iv.next383.i.i.i = add nuw nsw i64 %indvars.iv382.i.i.i, 1 ; 2 uses
  %exitcond389.not.i.i.i = icmp eq i64 %indvars.iv.next383.i.i.i, %i.lk
  br i1 %exitcond389.not.i.i.i, label %ZDICT_analyzePos.exit.i.i, label %.lr.ph351.i.i.i, !llvm.loop !75

ZDICT_analyzePos.exit.thread.i.i:                 ; preds = %.lr.ph354.i.i.i.prol.loopexit, %.lr.ph354.i.i.i, %bb.aj, %.preheader.i.i.i, %.lr.ph357.preheader.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sd = add nuw i32 %.095150.i.i, 1
  br label %bb.aw, !llvm.loop !63

ZDICT_analyzePos.exit.i.i:                        ; preds = %._crit_edge348.i.i.i, %bb.ao
  %i.se = shl nuw nsw i64 %i.ps, 32
  %i.sf = or disjoint i64 %i.se, %i.lh            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sg = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.w, i64 %i.sf, i32 %i.rg, i32 noundef 0, ptr noundef nonnull readonly %i.o) ; 4 uses
  %.not.i111.i.i = icmp eq i32 %i.sg, 0
  br i1 %.not.i111.i.i, label %bb.ar, label %.preheader.i112.preheader.i.i

.preheader.i112.preheader.i.i:                    ; preds = %ZDICT_analyzePos.exit.i.i
  %i.sh = zext i32 %i.sg to i64                   ; 2 uses
  %i.si = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.sh ; 2 uses
  %.sroa.0.0.copyload.i142.i.i = load i64, ptr %i.si, align 4
  %.sroa.2.0..sroa_idx.i143.i.i = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %.sroa.2.0.copyload.i144.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i143.i.i, align 4
  %i.sj = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.w, i64 %.sroa.0.0.copyload.i142.i.i, i32 %.sroa.2.0.copyload.i144.i.i, i32 noundef %i.sg, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i145.i.i = icmp eq i32 %i.sj, 0
  br i1 %.not43.i145.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i112.preheader.i.i, %ZDICT_removeDictItem.exit.i.i.i
  %i.sk = phi i32 [ %i.sw, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sj, %.preheader.i112.preheader.i.i ] ; 3 uses
  %i.sl = phi i64 [ %i.su, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sh, %.preheader.i112.preheader.i.i ]
  %.03544.i146.i.i = phi i32 [ %i.sk, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sg, %.preheader.i112.preheader.i.i ] ; 2 uses
  %i.sm = load i32, ptr %i.w, align 4, !tbaa !10  ; 2 uses
  %i.sn = add i32 %i.sm, -1                       ; 2 uses
  %i.so = icmp ult i32 %.03544.i146.i.i, %i.sn
  br i1 %i.so, label %.lr.ph.preheader.i.i.i.i, label %ZDICT_removeDictItem.exit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.sp = mul nuw nsw i64 %i.sl, 12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.w, i64 %i.sp ; 2 uses
  %scevgep12.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 12
  %reass.sub = sub i32 %i.sm, %.03544.i146.i.i
  %i.sq = add i32 %reass.sub, -2
  %i.sr = zext i32 %i.sq to i64
  %i.ss = mul nuw nsw i64 %i.sr, 12
  %i.st = add nuw nsw i64 %i.ss, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep12.i.i.i.i, i64 %i.st, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.w, align 4, !tbaa !10
  %.pre14.i.i.i.i = add i32 %.pre.i.i.i.i, -1
  br label %ZDICT_removeDictItem.exit.i.i.i

ZDICT_removeDictItem.exit.i.i.i:                  ; preds = %.lr.ph.preheader.i.i.i.i, %.preheader.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre14.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.sn, %.preheader.i.i.i.i ]
  store i32 %.pre-phi.i.i.i.i, ptr %i.w, align 4, !tbaa !10
  %i.su = zext i32 %i.sk to i64                   ; 2 uses
  %i.sv = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.su ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.sv, align 4
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %.sroa.2.0.copyload.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4
  %i.sw = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.w, i64 %.sroa.0.0.copyload.i.i.i, i32 %.sroa.2.0.copyload.i.i.i, i32 noundef %i.sk, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i.i.i = icmp eq i32 %i.sw, 0
  br i1 %.not43.i.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i, !llvm.loop !76

bb.ar:                                            ; preds = %ZDICT_analyzePos.exit.i.i
  %i.sx = load i32, ptr %i.w, align 4, !tbaa !10
  %spec.select.i113.i.i = tail call i32 @llvm.umin.i32(i32 %i.sx, i32 %i.ft) ; 4 uses
  %.03445.i.i.i = add i32 %spec.select.i113.i.i, -1 ; 2 uses
  %i.sy = zext i32 %.03445.i.i.i to i64
  %i.sz = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.sy ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !12
  %i.tc = icmp ult i32 %i.tb, %i.rg
  br i1 %i.tc, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i

.lr.ph.i115.i.i:                                  ; preds = %bb.ar, %.lr.ph.i115.i.i
  %i.td = phi ptr [ %i.th, %.lr.ph.i115.i.i ], [ %i.sz, %bb.ar ]
  %.03447.i.i.i = phi i32 [ %.034.i.i.i, %.lr.ph.i115.i.i ], [ %.03445.i.i.i, %bb.ar ] ; 3 uses
  %.034.in46.i.i.i = phi i32 [ %.03447.i.i.i, %.lr.ph.i115.i.i ], [ %spec.select.i113.i.i, %bb.ar ]
  %i.te = zext i32 %.034.in46.i.i.i to i64
  %i.tf = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.te
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.tf, ptr noundef nonnull align 4 dereferenceable(12) %i.td, i64 12, i1 false), !tbaa.struct !24
  %.034.i.i.i = add i32 %.03447.i.i.i, -1         ; 2 uses
  %i.tg = zext i32 %.034.i.i.i to i64
  %i.th = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.tg ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !12
  %i.tk = icmp ult i32 %i.tj, %i.rg
  br i1 %i.tk, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i, !llvm.loop !77

._crit_edge.i114.i.i:                             ; preds = %.lr.ph.i115.i.i, %bb.ar
  %.034.in.lcssa.i.i.i = phi i32 [ %spec.select.i113.i.i, %bb.ar ], [ %.03447.i.i.i, %.lr.ph.i115.i.i ]
  %i.tl = zext i32 %.034.in.lcssa.i.i.i to i64
  %i.tm = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.tl ; 2 uses
  store i64 %i.sf, ptr %i.tm, align 4, !tbaa !8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  store i32 %i.rg, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !tbaa !8
  %i.tn = add nuw i32 %spec.select.i113.i.i, 1
  store i32 %i.tn, ptr %i.w, align 4, !tbaa !10
  br label %ZDICT_insertDictItem.exit.i.i

ZDICT_insertDictItem.exit.i.i:                    ; preds = %ZDICT_removeDictItem.exit.i.i.i, %._crit_edge.i114.i.i, %.preheader.i112.preheader.i.i
  %i.to = add i32 %.0202.i.i.i, %.095150.i.i      ; 4 uses
  br i1 %i.aw, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %ZDICT_insertDictItem.exit.i.i
  %i.tp = tail call i64 @clock() #16
  %i.tq = sub nsw i64 %i.tp, %.099148.i.i
  %i.tr = icmp sgt i64 %i.tq, 300000
  br i1 %i.tr, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ts = tail call i64 @clock() #16
  %i.tt = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.tu = uitofp i32 %i.to to double
  %i.tv = fdiv double %i.tu, %i.fu
  %i.tw = fmul double %i.tv, 1.000000e+02
  %i.tx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tt, ptr noundef nonnull @.str.33, double noundef %i.tw) #19 ; 0 uses
  %i.ty = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.tz = tail call i32 @fflush(ptr noundef %i.ty) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.1100.i.i = phi i64 [ %i.ts, %bb.at ], [ %.099148.i.i, %bb.as ] ; 2 uses
  br i1 %i.dl, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ua = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ub = tail call i32 @fflush(ptr noundef %i.ua) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %ZDICT_insertDictItem.exit.i.i, %ZDICT_analyzePos.exit.thread.i.i, %bb.p
  %.3.i.i = phi i64 [ %.099148.i.i, %bb.p ], [ %.099148.i.i, %ZDICT_analyzePos.exit.thread.i.i ], [ %.1100.i.i, %bb.av ], [ %.1100.i.i, %bb.au ], [ %.099148.i.i, %ZDICT_insertDictItem.exit.i.i ]
  %.1.i.i = phi i32 [ %i.fy, %bb.p ], [ %i.sd, %ZDICT_analyzePos.exit.thread.i.i ], [ %i.to, %bb.av ], [ %i.to, %bb.au ], [ %i.to, %ZDICT_insertDictItem.exit.i.i ] ; 2 uses
  %i.uc = zext i32 %.1.i.i to i64                 ; 2 uses
  %i.ud = icmp samesign ugt i64 %.093.lcssa.i.i, %i.uc
  br i1 %i.ud, label %bb.o, label %ZDICT_trainBuffer_legacy.exit.loopexit.i

ZDICT_trainBuffer_legacy.exit.loopexit.i:         ; preds = %bb.aw
  %.pre.pre.i = load i32, ptr %i.w, align 4, !tbaa !10
  br label %ZDICT_trainBuffer_legacy.exit.i

ZDICT_trainBuffer_legacy.exit.i:                  ; preds = %ZDICT_trainBuffer_legacy.exit.loopexit.i, %.thread.i.i, %bb.k, %bb.g
  %.pre.i = phi i32 [ %.pre.pre.i, %ZDICT_trainBuffer_legacy.exit.loopexit.i ], [ 1, %bb.g ], [ 1, %bb.k ], [ 1, %.thread.i.i ] ; 10 uses
  tail call void @free(ptr noundef %i.ar) #16
  tail call void @free(ptr noundef %i.at) #16
  tail call void @free(ptr noundef %i.av) #16
  %i.ue = icmp ugt i32 %7, 2
  br i1 %i.ue, label %bb.ax, label %.critedge181.i

bb.ax:                                            ; preds = %ZDICT_trainBuffer_legacy.exit.i
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %.pre.i, i32 25) ; 3 uses
  %i.uf = icmp ugt i32 %.pre.i, 1
  br i1 %i.uf, label %.lr.ph.preheader.i196.i, label %ZDICT_dictSize.exit226.thread.critedge.i

.lr.ph.preheader.i196.i:                          ; preds = %bb.ax
  %wide.trip.count.i197.i = zext i32 %.pre.i to i64
  %i.ug = add nsw i64 %wide.trip.count.i197.i, -1 ; 2 uses
  %xtraiter188 = and i64 %i.ug, 3                 ; 3 uses
  %i.uh = add i32 %.pre.i, -2
  %i.ui = icmp ult i32 %i.uh, 3
  br i1 %i.ui, label %.lr.ph.i198.i.epil.preheader, label %.lr.ph.preheader.i196.i.new

.lr.ph.preheader.i196.i.new:                      ; preds = %.lr.ph.preheader.i196.i
  %unroll_iter193 = and i64 %i.ug, -4
  br label %.lr.ph.i198.i

.lr.ph.i198.i:                                    ; preds = %.lr.ph.i198.i, %.lr.ph.preheader.i196.i.new
  %indvars.iv.i199.i = phi i64 [ 1, %.lr.ph.preheader.i196.i.new ], [ %indvars.iv.next.i200.i.3, %.lr.ph.i198.i ] ; 5 uses
  %.08.i.i = phi i32 [ 0, %.lr.ph.preheader.i196.i.new ], [ %i.uy, %.lr.ph.i198.i ]
  %niter194 = phi i64 [ 0, %.lr.ph.preheader.i196.i.new ], [ %niter194.next.3, %.lr.ph.i198.i ]
  %i.uj = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv.i199.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !11
  %i.um = add i32 %i.ul, %.08.i.i
  %i.un = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv.i199.i
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !11
  %i.uq = add i32 %i.up, %i.um
  %i.ur = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv.i199.i
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 28
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !11
  %i.uu = add i32 %i.ut, %i.uq
  %i.uv = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv.i199.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 40
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !11
  %i.uy = add i32 %i.ux, %i.uu                    ; 3 uses
  %indvars.iv.next.i200.i.3 = add nuw nsw i64 %indvars.iv.i199.i, 4 ; 2 uses
  %niter194.next.3 = add nuw i64 %niter194, 4     ; 2 uses
  %niter194.ncmp.3 = icmp eq i64 %niter194.next.3, %unroll_iter193
  br i1 %niter194.ncmp.3, label %.critedge.i.unr-lcssa, label %.lr.ph.i198.i, !llvm.loop !78

.critedge.i.unr-lcssa:                            ; preds = %.lr.ph.i198.i
  %lcmp.mod190.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod190.not, label %.critedge.i, label %.lr.ph.i198.i.epil.preheader

.lr.ph.i198.i.epil.preheader:                     ; preds = %.critedge.i.unr-lcssa, %.lr.ph.preheader.i196.i
  %indvars.iv.i199.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i196.i ], [ %indvars.iv.next.i200.i.3, %.critedge.i.unr-lcssa ]
  %.08.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i196.i ], [ %i.uy, %.critedge.i.unr-lcssa ]
  %lcmp.mod192 = icmp ne i64 %xtraiter188, 0
  tail call void @llvm.assume(i1 %lcmp.mod192)
  br label %.lr.ph.i198.i.epil

.lr.ph.i198.i.epil:                               ; preds = %.lr.ph.i198.i.epil, %.lr.ph.i198.i.epil.preheader
  %indvars.iv.i199.i.epil = phi i64 [ %indvars.iv.i199.i.epil.init, %.lr.ph.i198.i.epil.preheader ], [ %indvars.iv.next.i200.i.epil, %.lr.ph.i198.i.epil ] ; 2 uses
  %.08.i.i.epil = phi i32 [ %.08.i.i.epil.init, %.lr.ph.i198.i.epil.preheader ], [ %i.vc, %.lr.ph.i198.i.epil ]
  %epil.iter189 = phi i64 [ 0, %.lr.ph.i198.i.epil.preheader ], [ %epil.iter189.next, %.lr.ph.i198.i.epil ]
  %i.uz = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv.i199.i.epil
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !11
  %i.vc = add i32 %i.vb, %.08.i.i.epil            ; 2 uses
  %indvars.iv.next.i200.i.epil = add nuw nsw i64 %indvars.iv.i199.i.epil, 1
  %epil.iter189.next = add i64 %epil.iter189, 1   ; 2 uses
  %epil.iter189.cmp.not = icmp eq i64 %epil.iter189.next, %xtraiter188
  br i1 %epil.iter189.cmp.not, label %.critedge.i, label %.lr.ph.i198.i.epil, !llvm.loop !79

.critedge.i:                                      ; preds = %.lr.ph.i198.i.epil, %.critedge.i.unr-lcssa
  %.lcssa150 = phi i32 [ %i.uy, %.critedge.i.unr-lcssa ], [ %i.vc, %.lr.ph.i198.i.epil ]
  %i.vd = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ve = add i32 %.pre.i, -1
  %i.vf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vd, ptr noundef nonnull @.str.18, i32 noundef %i.ve, i32 noundef %.lcssa150) #19 ; 0 uses
  %i.vg = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.vh = tail call i32 @fflush(ptr noundef %i.vg) ; 0 uses
  %i.vi = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.vj = add nsw i32 %spec.select.i, -1
  %i.vk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vi, ptr noundef nonnull @.str.19, i32 noundef %i.vj) #19 ; 0 uses
  %i.vl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.vm = tail call i32 @fflush(ptr noundef %i.vl) ; 0 uses
  %wide.trip.count.i21 = zext nneg i32 %spec.select.i to i64
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.loopexit.i, %.critedge.i
  %indvars.iv.i23 = phi i64 [ 1, %.critedge.i ], [ %indvars.iv.next.i24, %.loopexit.i ] ; 3 uses
  %i.vn = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv.i23 ; 3 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !10 ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 4
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !11 ; 4 uses
  %i.vr = zext i32 %i.vo to i64                   ; 2 uses
  %i.vs = icmp ult i64 %.lcssa126, %i.vr
  %i.vt = add i32 %i.vq, %i.vo
  %i.vu = zext i32 %i.vt to i64
  %i.vv = icmp ult i64 %.lcssa126, %i.vu
  %or.cond175.i = select i1 %i.vs, i1 true, i1 %i.vv
  br i1 %or.cond175.i, label %.thread235.sink.split.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i22
  %i.vw = tail call i32 @llvm.umin.i32(i32 %i.vq, i32 40)
  %i.vx = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !12
  %i.wa = trunc nuw nsw i64 %indvars.iv.i23 to i32
  %i.wb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vx, ptr noundef nonnull @.str.20, i32 noundef %i.wa, i32 noundef %i.vq, i32 noundef %i.vo, i32 noundef %i.vz) #19 ; 0 uses
  %i.wc = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.wd = tail call i32 @fflush(ptr noundef %i.wc) ; 0 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.vr
  %i.wf = zext nneg i32 %i.vw to i64
  %.not.i202.i = icmp eq i32 %i.vq, 0
  br i1 %.not.i202.i, label %.loopexit.i, label %.lr.ph.i203.i

.lr.ph.i203.i:                                    ; preds = %bb.ay, %.lr.ph.i203.i
  %.010.i.i = phi i64 [ %i.wn, %.lr.ph.i203.i ], [ 0, %bb.ay ] ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 %.010.i.i
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !21  ; 2 uses
  %i.wi = add i8 %i.wh, -127
  %or.cond.i204.i = icmp ult i8 %i.wi, -95
  %spec.store.select.i205.i = select i1 %or.cond.i204.i, i8 46, i8 %i.wh
  %i.wj = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.wk = zext i8 %spec.store.select.i205.i to i32
  %fputc.i.i = tail call i32 @fputc(i32 %i.wk, ptr %i.wj) ; 0 uses
  %i.wl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.wm = tail call i32 @fflush(ptr noundef %i.wl) ; 0 uses
  %i.wn = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i206.i = icmp eq i64 %i.wn, %i.wf
  br i1 %exitcond.not.i206.i, label %.loopexit.i, label %.lr.ph.i203.i, !llvm.loop !80

.loopexit.i:                                      ; preds = %.lr.ph.i203.i, %bb.ay
  %i.wo = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %i.wo) #20 ; 0 uses
  %i.wp = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.wq = tail call i32 @fflush(ptr noundef %i.wp) ; 0 uses
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond290.not.i = icmp eq i64 %indvars.iv.next.i24, %wide.trip.count.i21
  br i1 %exitcond290.not.i, label %.critedge181.i, label %.lr.ph.i22, !llvm.loop !81

.critedge181.i:                                   ; preds = %.loopexit.i, %ZDICT_trainBuffer_legacy.exit.i
  %i.wr = icmp ugt i32 %.pre.i, 1
  br i1 %i.wr, label %.lr.ph.preheader.i219.i, label %.thread235.sink.split.i

.lr.ph.preheader.i219.i:                          ; preds = %.critedge181.i
  %wide.trip.count.i220.i = zext i32 %.pre.i to i64 ; 2 uses
  %i.ws = add nsw i64 %wide.trip.count.i220.i, -1 ; 2 uses
  %xtraiter195 = and i64 %i.ws, 3                 ; 3 uses
  %i.wt = add i32 %.pre.i, -2
  %i.wu = icmp ult i32 %i.wt, 3
  br i1 %i.wu, label %.lr.ph.i221.i.epil.preheader, label %.lr.ph.preheader.i219.i.new

.lr.ph.preheader.i219.i.new:                      ; preds = %.lr.ph.preheader.i219.i
  %unroll_iter200 = and i64 %i.ws, -4
  br label %.lr.ph.i221.i

.lr.ph.i221.i:                                    ; preds = %.lr.ph.i221.i, %.lr.ph.preheader.i219.i.new
  %indvars.iv.i222.i = phi i64 [ 1, %.lr.ph.preheader.i219.i.new ], [ %indvars.iv.next.i224.i.3, %.lr.ph.i221.i ] ; 5 uses
  %.08.i223.i = phi i32 [ 0, %.lr.ph.preheader.i219.i.new ], [ %i.xk, %.lr.ph.i221.i ]
  %niter201 = phi i64 [ 0, %.lr.ph.preheader.i219.i.new ], [ %niter201.next.3, %.lr.ph.i221.i ]
  %i.wv = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv.i222.i
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 4
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !11
  %i.wy = add i32 %i.wx, %.08.i223.i
  %i.wz = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv.i222.i
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 16
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !11
  %i.xc = add i32 %i.xb, %i.wy
  %i.xd = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv.i222.i
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 28
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !11
  %i.xg = add i32 %i.xf, %i.xc
  %i.xh = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv.i222.i
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 40
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !11
  %i.xk = add i32 %i.xj, %i.xg                    ; 3 uses
  %indvars.iv.next.i224.i.3 = add nuw nsw i64 %indvars.iv.i222.i, 4 ; 2 uses
  %niter201.next.3 = add nuw i64 %niter201, 4     ; 2 uses
  %niter201.ncmp.3 = icmp eq i64 %niter201.next.3, %unroll_iter200
  br i1 %niter201.ncmp.3, label %ZDICT_dictSize.exit226.i.unr-lcssa, label %.lr.ph.i221.i, !llvm.loop !78

ZDICT_dictSize.exit226.i.unr-lcssa:               ; preds = %.lr.ph.i221.i
  %lcmp.mod197.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod197.not, label %ZDICT_dictSize.exit226.i, label %.lr.ph.i221.i.epil.preheader

.lr.ph.i221.i.epil.preheader:                     ; preds = %ZDICT_dictSize.exit226.i.unr-lcssa, %.lr.ph.preheader.i219.i
  %indvars.iv.i222.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i219.i ], [ %indvars.iv.next.i224.i.3, %ZDICT_dictSize.exit226.i.unr-lcssa ]
  %.08.i223.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i219.i ], [ %i.xk, %ZDICT_dictSize.exit226.i.unr-lcssa ]
  %lcmp.mod199 = icmp ne i64 %xtraiter195, 0
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %.lr.ph.i221.i.epil

.lr.ph.i221.i.epil:                               ; preds = %.lr.ph.i221.i.epil, %.lr.ph.i221.i.epil.preheader
  %indvars.iv.i222.i.epil = phi i64 [ %indvars.iv.i222.i.epil.init, %.lr.ph.i221.i.epil.preheader ], [ %indvars.iv.next.i224.i.epil, %.lr.ph.i221.i.epil ] ; 2 uses
  %.08.i223.i.epil = phi i32 [ %.08.i223.i.epil.init, %.lr.ph.i221.i.epil.preheader ], [ %i.xo, %.lr.ph.i221.i.epil ]
  %epil.iter196 = phi i64 [ 0, %.lr.ph.i221.i.epil.preheader ], [ %epil.iter196.next, %.lr.ph.i221.i.epil ]
  %i.xl = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv.i222.i.epil
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !11
  %i.xo = add i32 %i.xn, %.08.i223.i.epil         ; 2 uses
  %indvars.iv.next.i224.i.epil = add nuw nsw i64 %indvars.iv.i222.i.epil, 1
  %epil.iter196.next = add i64 %epil.iter196, 1   ; 2 uses
  %epil.iter196.cmp.not = icmp eq i64 %epil.iter196.next, %xtraiter195
  br i1 %epil.iter196.cmp.not, label %ZDICT_dictSize.exit226.i, label %.lr.ph.i221.i.epil, !llvm.loop !82

ZDICT_dictSize.exit226.i:                         ; preds = %.lr.ph.i221.i.epil, %ZDICT_dictSize.exit226.i.unr-lcssa
  %.lcssa = phi i32 [ %i.xk, %ZDICT_dictSize.exit226.i.unr-lcssa ], [ %i.xo, %.lr.ph.i221.i.epil ] ; 4 uses
  %i.xp = icmp ult i32 %.lcssa, 128
  br i1 %i.xp, label %.thread235.sink.split.i, label %bb.az

ZDICT_dictSize.exit226.thread.critedge.i:         ; preds = %bb.ax
  %i.xq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.xr = add nsw i32 %.pre.i, -1
  %i.xs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xq, ptr noundef nonnull @.str.18, i32 noundef %i.xr, i32 noundef 0) #19 ; 0 uses
  %i.xt = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.xu = tail call i32 @fflush(ptr noundef %i.xt) ; 0 uses
  %i.xv = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.xw = add nsw i32 %spec.select.i, -1
  %i.xx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xv, ptr noundef nonnull @.str.19, i32 noundef %i.xw) #19 ; 0 uses
  %i.xy = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.xz = tail call i32 @fflush(ptr noundef %i.xy) ; 0 uses
  br label %.thread235.sink.split.i

bb.az:                                            ; preds = %ZDICT_dictSize.exit226.i
  %i.ya = zext i32 %.lcssa to i64                 ; 2 uses
  %i.yb = lshr i64 %1, 2
  %i.yc = icmp samesign ugt i64 %i.yb, %i.ya
  %brmerge241.not.i = and i1 %i.aw, %i.yc
  br i1 %brmerge241.not.i, label %bb.ba, label %.critedge183.i

bb.ba:                                            ; preds = %bb.az
  %i.yd = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ye = trunc i64 %1 to i32
  %i.yf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yd, ptr noundef nonnull @.str.22, i32 noundef %.lcssa, i32 noundef %i.ye) #19 ; 0 uses
  %i.yg = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.yh = tail call i32 @fflush(ptr noundef %i.yg) ; 0 uses
  %i.yi = mul i64 %1, 10
  %i.yj = icmp ult i64 %.lcssa126, %i.yi
  br i1 %i.yj, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.yk = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.yl = lshr i64 %.lcssa126, 20
  %i.ym = trunc i64 %i.yl to i32
  %i.yn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yk, ptr noundef nonnull @.str.23, i32 noundef %i.ym) #19 ; 0 uses
  %i.yo = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.yp = tail call i32 @fflush(ptr noundef %i.yo) ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.yq = icmp ugt i32 %i.ak, 4
  br i1 %i.yq, label %bb.bd, label %.critedge183.i

bb.bd:                                            ; preds = %bb.bc
  %i.yr = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ys = add i32 %i.ah, 1
  %i.yt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yr, ptr noundef nonnull @.str.24, i32 noundef %i.ys) #19 ; 0 uses
  %i.yu = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.yv = tail call i32 @fflush(ptr noundef %i.yu) ; 0 uses
  %i.yw = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite169.i = tail call i64 @fwrite(ptr nonnull @.str.25, i64 90, i64 1, ptr %i.yw) #20 ; 0 uses
  %i.yx = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.yy = tail call i32 @fflush(ptr noundef %i.yx) ; 0 uses
  br label %.critedge183.i

.critedge183.i:                                   ; preds = %bb.bd, %bb.bc, %bb.az
  %i.yz = mul i64 %1, 3
  %i.za = icmp ult i64 %i.yz, %i.ya
  %i.zb = icmp ugt i32 %4, 8
  %or.cond.i = and i1 %i.zb, %i.za
  %i.zc = icmp ugt i32 %i.ah, 1
  %or.cond7.i = select i1 %or.cond.i, i1 %i.zc, i1 false
  br i1 %or.cond7.i, label %.preheader.i, label %.lr.ph263.i.preheader

.preheader.i:                                     ; preds = %.critedge183.i, %.preheader.i
  %.0147.in.i = phi i32 [ %.0147.i, %.preheader.i ], [ %i.ah, %.critedge183.i ]
  %.0147.i = add i32 %.0147.in.i, -1              ; 3 uses
  %i.zd = lshr i32 %4, %.0147.i
  %i.ze = icmp ult i32 %i.zd, 5
  br i1 %i.ze, label %.preheader.i, label %bb.be, !llvm.loop !83

bb.be:                                            ; preds = %.preheader.i
  br i1 %i.aw, label %.critedge185.i, label %.lr.ph263.i.preheader

.critedge185.i:                                   ; preds = %bb.be
  %i.zf = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.zg = trunc i64 %1 to i32
  %i.zh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zf, ptr noundef nonnull @.str.26, i32 noundef %.lcssa, i32 noundef %i.zg) #19 ; 0 uses
  %i.zi = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.zj = tail call i32 @fflush(ptr noundef %i.zi) ; 0 uses
  %i.zk = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.zl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.27, i32 noundef %.0147.i) #19 ; 0 uses
  %i.zm = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.zn = tail call i32 @fflush(ptr noundef %i.zm) ; 0 uses
  %i.zo = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite170.i = tail call i64 @fwrite(ptr nonnull @.str.28, i64 54, i64 1, ptr %i.zo) #20 ; 0 uses
  %i.zp = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.zq = tail call i32 @fflush(ptr noundef %i.zp) ; 0 uses
  br label %.lr.ph263.i.preheader

.lr.ph263.i.preheader:                            ; preds = %.critedge185.i, %bb.be, %.critedge183.i
  br label %.lr.ph263.i

.lr.ph263.i:                                      ; preds = %.lr.ph263.i.preheader, %bb.bf
  %indvars.iv291.i = phi i64 [ %indvars.iv.next292.i, %bb.bf ], [ 1, %.lr.ph263.i.preheader ] ; 3 uses
  %.0146261.i = phi i32 [ %i.zu, %bb.bf ], [ 0, %.lr.ph263.i.preheader ] ; 2 uses
  %i.zr = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv291.i
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 4
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !11
  %i.zu = add i32 %i.zt, %.0146261.i              ; 3 uses
  %i.zv = zext i32 %i.zu to i64
  %i.zw = icmp ult i64 %1, %i.zv
  br i1 %i.zw, label %._crit_edge.split.loop.exit337.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph263.i
  %indvars.iv.next292.i = add nuw nsw i64 %indvars.iv291.i, 1 ; 2 uses
  %exitcond295.not.i = icmp eq i64 %indvars.iv.next292.i, %wide.trip.count.i220.i
  br i1 %exitcond295.not.i, label %._crit_edge.i, label %.lr.ph263.i, !llvm.loop !84

._crit_edge.split.loop.exit337.i:                 ; preds = %.lr.ph263.i
  %i.zx = trunc nuw i64 %indvars.iv291.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bf, %._crit_edge.split.loop.exit337.i
  %.0146.lcssa.ph.i = phi i32 [ %.0146261.i, %._crit_edge.split.loop.exit337.i ], [ %i.zu, %bb.bf ]
  %.0145.lcssa.ph.i = phi i32 [ %i.zx, %._crit_edge.split.loop.exit337.i ], [ %.pre.i, %bb.bf ] ; 2 uses
  %.not172268.i = icmp ugt i32 %.0145.lcssa.ph.i, 1
  br i1 %.not172268.i, label %.lr.ph272.preheader.i, label %._crit_edge273.i

.lr.ph272.preheader.i:                            ; preds = %._crit_edge.i
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %wide.trip.count299.i = zext i32 %.0145.lcssa.ph.i to i64
  br label %.lr.ph272.i

.lr.ph272.i:                                      ; preds = %bb.bg, %.lr.ph272.preheader.i
  %indvars.iv296.i = phi i64 [ 1, %.lr.ph272.preheader.i ], [ %indvars.iv.next297.i, %bb.bg ] ; 2 uses
  %.0270.i = phi ptr [ %i.zy, %.lr.ph272.preheader.i ], [ %i.aae, %bb.bg ]
  %i.zz = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv296.i ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 4
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !11
  %i.aac = zext i32 %i.aab to i64                 ; 2 uses
  %i.aad = sub nsw i64 0, %i.aac
  %i.aae = getelementptr inbounds i8, ptr %.0270.i, i64 %i.aad ; 3 uses
  %.not171.i = icmp ult ptr %i.aae, %0
  br i1 %.not171.i, label %.thread235.sink.split.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph272.i
  %i.aaf = load i32, ptr %i.zz, align 4, !tbaa !10
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aag
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aae, ptr nonnull align 1 %i.aah, i64 %i.aac, i1 false)
  %indvars.iv.next297.i = add nuw nsw i64 %indvars.iv296.i, 1 ; 2 uses
  %exitcond300.not.i = icmp eq i64 %indvars.iv.next297.i, %wide.trip.count299.i
  br i1 %exitcond300.not.i, label %._crit_edge273.i, label %.lr.ph272.i, !llvm.loop !85

._crit_edge273.i:                                 ; preds = %bb.bg, %._crit_edge.i
  %i.aai = zext i32 %.0146.lcssa.ph.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %8 = freeze i32 %.sroa.4.0.copyload
  %9 = zext i32 %8 to i64
  %10 = zext i32 %7 to i64
  %11 = shl nuw i64 %10, 32
  %12 = or disjoint i64 %11, %9
  store i64 %12, ptr %6, align 8
  %.sroa.6.4..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6.4..sroa_idx, align 8, !tbaa !8
  %i.aaj = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %i.aai, i64 noundef %1, ptr noundef nonnull %i.o, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.thread235.sink.split.i

.thread235.sink.split.i:                          ; preds = %.lr.ph.i22, %.lr.ph272.i, %._crit_edge273.i, %ZDICT_dictSize.exit226.thread.critedge.i, %ZDICT_dictSize.exit226.i, %.critedge181.i, %bb.d, %bb.c
  %.8.ph.i = phi i64 [ -1, %.lr.ph272.i ], [ -34, %ZDICT_dictSize.exit226.i ], [ -34, %bb.d ], [ %i.aaj, %._crit_edge273.i ], [ -70, %bb.c ], [ -34, %ZDICT_dictSize.exit226.thread.critedge.i ], [ -34, %.critedge181.i ], [ -1, %.lr.ph.i22 ]
  tail call void @free(ptr noundef nonnull %i.w) #16
  br label %ZDICT_trainFromBuffer_unsafe_legacy.exit

ZDICT_trainFromBuffer_unsafe_legacy.exit:         ; preds = %ZDICT_totalSampleSize.exit.i, %.thread235.sink.split.i
  %.8.i = phi i64 [ -64, %ZDICT_totalSampleSize.exit.i ], [ %.8.ph.i, %.thread235.sink.split.i ]
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
  store i32 8, ptr %i.a, align 4, !tbaa !89
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
  %i.a = load i32, ptr %6, align 8, !tbaa !10     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = select i1 %i.b, i32 3, i32 %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11   ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %i.k) #20 ; 0 uses
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.m = tail call i32 @fflush(ptr noundef %i.l)  ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = add i64 %2, -8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.q = sub i64 0, %1
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q ; 3 uses
  %i.s = tail call fastcc i64 @ZDICT_analyzeEntropy(ptr noundef nonnull %i.n, i64 noundef %i.o, i32 noundef %i.c, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %i.r, i64 noundef %1, i32 noundef %i.e) ; 3 uses
  %i.t = icmp ult i64 %i.s, -119
  %i.u = add nuw i64 %i.s, 8                      ; 2 uses
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.critedge
  store i32 -332356553, ptr %0, align 1, !tbaa !8
  %i.v = tail call i64 @ZSTD_XXH64(ptr noundef nonnull captures(address) %i.r, i64 noundef %1, i64 noundef 0) #18
  %i.w = urem i64 %i.v, 2147450880
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = add nuw nsw i32 %i.x, 32768
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !12  ; 2 uses
  %.not46 = icmp eq i32 %i.aa, 0
  %i.ab = select i1 %.not46, i32 %i.y, i32 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ab, ptr %i.ac, align 1, !tbaa !8
  %i.ad = add i64 %i.u, %1                        ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %2
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.r, i64 %1, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.ad)
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %.1 = phi i64 [ %i.ag, %bb.e ], [ %i.s, %.critedge ]
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
  %i.a = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
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
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10   ; 3 uses
  %i.l = icmp ule i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc
  %.not164 = icmp ugt i32 %i.k, %i.b
  %or.cond = select i1 %i.l, i1 true, i1 %.not164
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11
  %i.p = add i32 %i.o, %i.m
  store i32 %i.p, ptr %i.n, align 4, !tbaa !11
  store i32 %.sroa.0102.sroa.0.0.extract.trunc, ptr %i.j, align 4, !tbaa !10
  %i.q = mul i32 %i.m, %2
  %i.r = udiv i32 %i.q, %.sroa.0102.sroa.14.0.extract.trunc
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
end_hunk_1

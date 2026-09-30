Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zdict?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ZDICT_analyzeEntropy:bb.a

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
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #17 ; 34 uses
  %min.iters.check131 = icmp ult i32 %4, 4
  br i1 %min.iters.check131, label %.lr.ph.i.i.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec133 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next140, %vector.body134 ] ; 2 uses
  %vec.phi136 = phi <2 x i64> [ zeroinitializer, %vector.ph132 ], [ %i.aa, %vector.body134 ]
  %vec.phi137 = phi <2 x i64> [ zeroinitializer, %vector.ph132 ], [ %i.ab, %vector.body134 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index135 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load138 = load <2 x i64>, ptr %i.y, align 8, !tbaa !17
  %wide.load139 = load <2 x i64>, ptr %i.z, align 8, !tbaa !17
  %i.aa = add <2 x i64> %wide.load138, %vec.phi136 ; 2 uses
  %i.ab = add <2 x i64> %wide.load139, %vec.phi137 ; 2 uses
  %index.next140 = add nuw i64 %index135, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next140, %n.vec133
  br i1 %i.ac, label %middle.block141, label %vector.body134, !llvm.loop !58

middle.block141:                                  ; preds = %vector.body134
  %bin.rdx142 = add <2 x i64> %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx142) ; 2 uses
  %cmp.n143 = icmp eq i64 %n.vec133, %wide.trip.count.i
  br i1 %cmp.n143, label %ZDICT_totalSampleSize.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block141
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec133, %middle.block141 ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.ad, %middle.block141 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.ag = add i64 %i.af, %.067.i.i                ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond.not.i.i, label %ZDICT_totalSampleSize.exit.i, label %.lr.ph.i.i, !llvm.loop !59

ZDICT_totalSampleSize.exit.i:                     ; preds = %.lr.ph.i.i, %middle.block141
  %.lcssa126 = phi i64 [ %i.ad, %middle.block141 ], [ %i.ag, %.lr.ph.i.i ] ; 10 uses
  %i.ah = icmp eq i32 %.sroa.0.0.copyload, 0
  %i.ai = select i1 %i.ah, i32 9, i32 %.sroa.0.0.copyload ; 5 uses
  %i.aj = icmp ugt i32 %i.ai, 30
  %i.ak = lshr i32 %4, %i.ai
  %i.al = select i1 %i.aj, i32 4, i32 %i.ak       ; 2 uses
  %.not.i19 = icmp eq ptr %i.x, null
  br i1 %.not.i19, label %ZDICT_trainFromBuffer_unsafe_legacy.exit, label %bb.c

bb.c:                                             ; preds = %ZDICT_totalSampleSize.exit.i
  %i.am = icmp ult i64 %1, 256
  br i1 %i.am, label %.thread235.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = icmp ult i64 %.lcssa126, 512
  br i1 %i.an, label %.thread235.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.x, align 4, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 -1, ptr %i.ap, align 4, !tbaa !12
  %i.aq = shl i64 %.lcssa126, 2                   ; 2 uses
  %i.ar = add i64 %i.aq, 8
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #17 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 22 uses
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.aq) #17 ; 8 uses
  %i.av = add i64 %.lcssa126, 16                  ; 2 uses
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.av) #17 ; 11 uses
  %i.ax = icmp ugt i32 %.sroa.5.0.copyload, 1     ; 6 uses
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ay, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19 ; 0 uses
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !15
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
  %i.bf = icmp ugt i64 %.lcssa126, 2097152000     ; 2 uses
  %i.bg = icmp ugt i32 %.sroa.5.0.copyload, 2     ; 2 uses
  %or.cond7.i.i = and i1 %i.bg, %i.bf
  br i1 %or.cond7.i.i, label %.thread186.i.i, label %bb.i

.thread186.i.i:                                   ; preds = %bb.h
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bh, ptr noundef nonnull @.str.29, i32 noundef 2000) #19 ; 0 uses
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bk = tail call i32 @fflush(ptr noundef %i.bj) ; 0 uses
  br label %.lr.ph.i194.i.preheader

bb.i:                                             ; preds = %bb.h
  br i1 %i.bf, label %.lr.ph.i194.i.preheader, label %._crit_edge.i.i

.lr.ph.i194.i.preheader:                          ; preds = %bb.i, %.thread186.i.i
  br label %.lr.ph.i194.i

.lr.ph.i194.i:                                    ; preds = %.lr.ph.i194.i.preheader, %.lr.ph.i194.i
  %.093132.i.i = phi i64 [ %i.bp, %.lr.ph.i194.i ], [ %.lcssa126, %.lr.ph.i194.i.preheader ]
  %.094131.i.i = phi i32 [ %i.bl, %.lr.ph.i194.i ], [ %4, %.lr.ph.i194.i.preheader ]
  %i.bl = add i32 %.094131.i.i, -1                ; 3 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !17
  %i.bp = sub i64 %.093132.i.i, %i.bo             ; 3 uses
  %i.bq = icmp ugt i64 %i.bp, 2097152000
  br i1 %i.bq, label %.lr.ph.i194.i, label %._crit_edge.i.i, !llvm.loop !60

._crit_edge.i.i:                                  ; preds = %.lr.ph.i194.i, %bb.i
  %.094.lcssa.i.i = phi i32 [ %4, %bb.i ], [ %i.bl, %.lr.ph.i194.i ]
  %.093.lcssa.i.i = phi i64 [ %.lcssa126, %bb.i ], [ %i.bp, %.lr.ph.i194.i ] ; 9 uses
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bs = lshr i64 %.093.lcssa.i.i, 20
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.30, i32 noundef %.094.lcssa.i.i, i32 noundef %i.bt) #19 ; 0 uses
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bw = tail call i32 @fflush(ptr noundef %i.bv) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %i.bx = trunc nuw nsw i64 %.093.lcssa.i.i to i32 ; 3 uses
  %i.by = tail call i32 @divsufsort(ptr noundef nonnull %i.o, ptr noundef nonnull %i.at, i32 noundef %i.bx, i32 noundef 0) #16
  %.not.i191.not.i = icmp eq i32 %i.by, 0
  br i1 %.not.i191.not.i, label %bb.l, label %ZDICT_trainBuffer_legacy.exit.i

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
  br i1 %niter.ncmp.3, label %._crit_edge141.i.i.loopexit.unr-lcssa, label %.lr.ph136.i.i, !llvm.loop !61

._crit_edge141.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph136.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge141.i.i, label %.lr.ph136.i.i.epil.preheader

.lr.ph136.i.i.epil.preheader:                     ; preds = %._crit_edge141.i.i.loopexit.unr-lcssa, %.lr.ph136.i.i.preheader
  %.096134.i.i.epil.init = phi i64 [ 0, %.lr.ph136.i.i.preheader ], [ %i.cy, %._crit_edge141.i.i.loopexit.unr-lcssa ]
  %lcmp.mod169 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod169)
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
  br i1 %epil.iter.cmp.not, label %._crit_edge141.i.i, label %.lr.ph136.i.i.epil, !llvm.loop !62

._crit_edge141.i.i:                               ; preds = %._crit_edge141.i.i.loopexit.unr-lcssa, %.lr.ph136.i.i.epil, %bb.l
  br i1 %i.ax, label %bb.m, label %.thread.i.i

bb.m:                                             ; preds = %._crit_edge141.i.i
  %i.df = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.31, i64 22, i64 1, ptr %i.df) #20 ; 0 uses
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dh = tail call i32 @fflush(ptr noundef %i.dg) ; 0 uses
  br i1 %i.bg, label %bb.n, label %.thread.i.i

bb.n:                                             ; preds = %bb.m
  %i.di = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.di, ptr noundef nonnull @.str.32, i32 noundef %spec.store.select.i.i) #19 ; 0 uses
  %i.dk = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dl = tail call i32 @fflush(ptr noundef %i.dk) ; 0 uses
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.n, %bb.m, %._crit_edge141.i.i
  br i1 %.not153.i.i, label %ZDICT_trainBuffer_legacy.exit.i, label %.lr.ph152.i.i

.lr.ph152.i.i:                                    ; preds = %.thread.i.i
  %i.dm = icmp ugt i32 %.sroa.5.0.copyload, 3     ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 252 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 124
end_hunk_0
begin_hunk_1_@ZDICT_trainFromBuffer_legacy:bb.a
  %niter194 = phi i64 [ 0, %.lr.ph.preheader.i196.i.new ], [ %niter194.next.3, %.lr.ph.i198.i ]
  %i.uk = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i199.i
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !11
  %i.un = add i32 %i.um, %.08.i.i
  %i.uo = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i199.i
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !11
  %i.ur = add i32 %i.uq, %i.un
  %i.us = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i199.i
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 28
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !11
  %i.uv = add i32 %i.uu, %i.ur
  %i.uw = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i199.i
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 40
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !11
  %i.uz = add i32 %i.uy, %i.uv                    ; 3 uses
  %indvars.iv.next.i200.i.3 = add nuw nsw i64 %indvars.iv.i199.i, 4 ; 2 uses
  %niter194.next.3 = add nuw i64 %niter194, 4     ; 2 uses
  %niter194.ncmp.3 = icmp eq i64 %niter194.next.3, %unroll_iter193
  br i1 %niter194.ncmp.3, label %.critedge.i.unr-lcssa, label %.lr.ph.i198.i, !llvm.loop !78

.critedge.i.unr-lcssa:                            ; preds = %.lr.ph.i198.i
  %lcmp.mod190.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod190.not, label %.critedge.i, label %.lr.ph.i198.i.epil.preheader

.lr.ph.i198.i.epil.preheader:                     ; preds = %.critedge.i.unr-lcssa, %.lr.ph.preheader.i196.i
  %indvars.iv.i199.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i196.i ], [ %indvars.iv.next.i200.i.3, %.critedge.i.unr-lcssa ]
  %.08.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i196.i ], [ %i.uz, %.critedge.i.unr-lcssa ]
  %lcmp.mod192 = icmp ne i64 %xtraiter188, 0
  tail call void @llvm.assume(i1 %lcmp.mod192)
  br label %.lr.ph.i198.i.epil

.lr.ph.i198.i.epil:                               ; preds = %.lr.ph.i198.i.epil, %.lr.ph.i198.i.epil.preheader
  %indvars.iv.i199.i.epil = phi i64 [ %indvars.iv.i199.i.epil.init, %.lr.ph.i198.i.epil.preheader ], [ %indvars.iv.next.i200.i.epil, %.lr.ph.i198.i.epil ] ; 2 uses
  %.08.i.i.epil = phi i32 [ %.08.i.i.epil.init, %.lr.ph.i198.i.epil.preheader ], [ %i.vd, %.lr.ph.i198.i.epil ]
  %epil.iter189 = phi i64 [ 0, %.lr.ph.i198.i.epil.preheader ], [ %epil.iter189.next, %.lr.ph.i198.i.epil ]
  %i.va = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i199.i.epil
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !11
  %i.vd = add i32 %i.vc, %.08.i.i.epil            ; 2 uses
  %indvars.iv.next.i200.i.epil = add nuw nsw i64 %indvars.iv.i199.i.epil, 1
  %epil.iter189.next = add i64 %epil.iter189, 1   ; 2 uses
  %epil.iter189.cmp.not = icmp eq i64 %epil.iter189.next, %xtraiter188
  br i1 %epil.iter189.cmp.not, label %.critedge.i, label %.lr.ph.i198.i.epil, !llvm.loop !79

.critedge.i:                                      ; preds = %.lr.ph.i198.i.epil, %.critedge.i.unr-lcssa
  %.lcssa150 = phi i32 [ %i.uz, %.critedge.i.unr-lcssa ], [ %i.vd, %.lr.ph.i198.i.epil ]
  %i.ve = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.vf = add i32 %.pre.i, -1
  %i.vg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ve, ptr noundef nonnull @.str.18, i32 noundef %i.vf, i32 noundef %.lcssa150) #19 ; 0 uses
  %i.vh = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.vi = tail call i32 @fflush(ptr noundef %i.vh) ; 0 uses
  %i.vj = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.vk = add nsw i32 %spec.select.i, -1
  %i.vl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vj, ptr noundef nonnull @.str.19, i32 noundef %i.vk) #19 ; 0 uses
  %i.vm = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.vn = tail call i32 @fflush(ptr noundef %i.vm) ; 0 uses
  %wide.trip.count.i21 = zext nneg i32 %spec.select.i to i64
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.loopexit.i, %.critedge.i
  %indvars.iv.i23 = phi i64 [ 1, %.critedge.i ], [ %indvars.iv.next.i24, %.loopexit.i ] ; 3 uses
  %i.vo = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i23 ; 3 uses
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !10 ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 4
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !11 ; 4 uses
  %i.vs = zext i32 %i.vp to i64                   ; 2 uses
  %i.vt = icmp ult i64 %.lcssa126, %i.vs
  %i.vu = add i32 %i.vr, %i.vp
  %i.vv = zext i32 %i.vu to i64
  %i.vw = icmp ult i64 %.lcssa126, %i.vv
  %or.cond175.i = select i1 %i.vt, i1 true, i1 %i.vw
  br i1 %or.cond175.i, label %.thread235.sink.split.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i22
  %i.vx = tail call i32 @llvm.umin.i32(i32 %i.vr, i32 40)
  %i.vy = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !12
  %i.wb = trunc nuw nsw i64 %indvars.iv.i23 to i32
  %i.wc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vy, ptr noundef nonnull @.str.20, i32 noundef %i.wb, i32 noundef %i.vr, i32 noundef %i.vp, i32 noundef %i.wa) #19 ; 0 uses
  %i.wd = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.we = tail call i32 @fflush(ptr noundef %i.wd) ; 0 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.vs
  %i.wg = zext nneg i32 %i.vx to i64
  %.not.i202.i = icmp eq i32 %i.vr, 0
  br i1 %.not.i202.i, label %.loopexit.i, label %.lr.ph.i203.i

.lr.ph.i203.i:                                    ; preds = %bb.ay, %.lr.ph.i203.i
  %.010.i.i = phi i64 [ %i.wo, %.lr.ph.i203.i ], [ 0, %bb.ay ] ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 %.010.i.i
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !21  ; 2 uses
  %i.wj = add i8 %i.wi, -127
  %or.cond.i204.i = icmp ult i8 %i.wj, -95
  %spec.store.select.i205.i = select i1 %or.cond.i204.i, i8 46, i8 %i.wi
  %i.wk = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.wl = zext i8 %spec.store.select.i205.i to i32
  %fputc.i.i = tail call i32 @fputc(i32 %i.wl, ptr %i.wk) ; 0 uses
  %i.wm = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.wn = tail call i32 @fflush(ptr noundef %i.wm) ; 0 uses
  %i.wo = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i206.i = icmp eq i64 %i.wo, %i.wg
  br i1 %exitcond.not.i206.i, label %.loopexit.i, label %.lr.ph.i203.i, !llvm.loop !80

.loopexit.i:                                      ; preds = %.lr.ph.i203.i, %bb.ay
  %i.wp = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %i.wp) #20 ; 0 uses
  %i.wq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.wr = tail call i32 @fflush(ptr noundef %i.wq) ; 0 uses
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond290.not.i = icmp eq i64 %indvars.iv.next.i24, %wide.trip.count.i21
  br i1 %exitcond290.not.i, label %.critedge181.i, label %.lr.ph.i22, !llvm.loop !81

.critedge181.i:                                   ; preds = %.loopexit.i, %ZDICT_trainBuffer_legacy.exit.i
  %i.ws = icmp ugt i32 %.pre.i, 1
  br i1 %i.ws, label %.lr.ph.preheader.i219.i, label %.thread235.sink.split.i

.lr.ph.preheader.i219.i:                          ; preds = %.critedge181.i
  %wide.trip.count.i220.i = zext i32 %.pre.i to i64 ; 3 uses
  %i.wt = add nsw i64 %wide.trip.count.i220.i, -1 ; 2 uses
  %xtraiter195 = and i64 %i.wt, 3                 ; 3 uses
  %i.wu = add i32 %.pre.i, -2
  %i.wv = icmp ult i32 %i.wu, 3
  br i1 %i.wv, label %.lr.ph.i221.i.epil.preheader, label %.lr.ph.preheader.i219.i.new

.lr.ph.preheader.i219.i.new:                      ; preds = %.lr.ph.preheader.i219.i
  %unroll_iter200 = and i64 %i.wt, -4
  br label %.lr.ph.i221.i

.lr.ph.i221.i:                                    ; preds = %.lr.ph.i221.i, %.lr.ph.preheader.i219.i.new
  %indvars.iv.i222.i = phi i64 [ 1, %.lr.ph.preheader.i219.i.new ], [ %indvars.iv.next.i224.i.3, %.lr.ph.i221.i ] ; 5 uses
  %.08.i223.i = phi i32 [ 0, %.lr.ph.preheader.i219.i.new ], [ %i.xl, %.lr.ph.i221.i ]
  %niter201 = phi i64 [ 0, %.lr.ph.preheader.i219.i.new ], [ %niter201.next.3, %.lr.ph.i221.i ]
  %i.ww = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i222.i
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 4
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !11
  %i.wz = add i32 %i.wy, %.08.i223.i
  %i.xa = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i222.i
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 16
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !11
  %i.xd = add i32 %i.xc, %i.wz
  %i.xe = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i222.i
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 28
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !11
  %i.xh = add i32 %i.xg, %i.xd
  %i.xi = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i222.i
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 40
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !11
  %i.xl = add i32 %i.xk, %i.xh                    ; 3 uses
  %indvars.iv.next.i224.i.3 = add nuw nsw i64 %indvars.iv.i222.i, 4 ; 2 uses
  %niter201.next.3 = add nuw i64 %niter201, 4     ; 2 uses
  %niter201.ncmp.3 = icmp eq i64 %niter201.next.3, %unroll_iter200
  br i1 %niter201.ncmp.3, label %ZDICT_dictSize.exit226.i.unr-lcssa, label %.lr.ph.i221.i, !llvm.loop !78

ZDICT_dictSize.exit226.i.unr-lcssa:               ; preds = %.lr.ph.i221.i
  %lcmp.mod197.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod197.not, label %ZDICT_dictSize.exit226.i, label %.lr.ph.i221.i.epil.preheader

.lr.ph.i221.i.epil.preheader:                     ; preds = %ZDICT_dictSize.exit226.i.unr-lcssa, %.lr.ph.preheader.i219.i
  %indvars.iv.i222.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i219.i ], [ %indvars.iv.next.i224.i.3, %ZDICT_dictSize.exit226.i.unr-lcssa ]
  %.08.i223.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i219.i ], [ %i.xl, %ZDICT_dictSize.exit226.i.unr-lcssa ]
  %lcmp.mod199 = icmp ne i64 %xtraiter195, 0
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %.lr.ph.i221.i.epil

.lr.ph.i221.i.epil:                               ; preds = %.lr.ph.i221.i.epil, %.lr.ph.i221.i.epil.preheader
  %indvars.iv.i222.i.epil = phi i64 [ %indvars.iv.i222.i.epil.init, %.lr.ph.i221.i.epil.preheader ], [ %indvars.iv.next.i224.i.epil, %.lr.ph.i221.i.epil ] ; 2 uses
  %.08.i223.i.epil = phi i32 [ %.08.i223.i.epil.init, %.lr.ph.i221.i.epil.preheader ], [ %i.xp, %.lr.ph.i221.i.epil ]
  %epil.iter196 = phi i64 [ 0, %.lr.ph.i221.i.epil.preheader ], [ %epil.iter196.next, %.lr.ph.i221.i.epil ]
  %i.xm = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i222.i.epil
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 4
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !11
  %i.xp = add i32 %i.xo, %.08.i223.i.epil         ; 2 uses
  %indvars.iv.next.i224.i.epil = add nuw nsw i64 %indvars.iv.i222.i.epil, 1
  %epil.iter196.next = add i64 %epil.iter196, 1   ; 2 uses
  %epil.iter196.cmp.not = icmp eq i64 %epil.iter196.next, %xtraiter195
  br i1 %epil.iter196.cmp.not, label %ZDICT_dictSize.exit226.i, label %.lr.ph.i221.i.epil, !llvm.loop !82

ZDICT_dictSize.exit226.i:                         ; preds = %.lr.ph.i221.i.epil, %ZDICT_dictSize.exit226.i.unr-lcssa
  %.lcssa = phi i32 [ %i.xl, %ZDICT_dictSize.exit226.i.unr-lcssa ], [ %i.xp, %.lr.ph.i221.i.epil ] ; 4 uses
  %i.xq = icmp ult i32 %.lcssa, 128
  br i1 %i.xq, label %.thread235.sink.split.i, label %bb.az

ZDICT_dictSize.exit226.thread.critedge.i:         ; preds = %bb.ax
  %i.xr = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.xs = add nsw i32 %.pre.i, -1
  %i.xt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xr, ptr noundef nonnull @.str.18, i32 noundef %i.xs, i32 noundef 0) #19 ; 0 uses
  %i.xu = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.xv = tail call i32 @fflush(ptr noundef %i.xu) ; 0 uses
  %i.xw = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.xx = add nsw i32 %spec.select.i, -1
  %i.xy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xw, ptr noundef nonnull @.str.19, i32 noundef %i.xx) #19 ; 0 uses
  %i.xz = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ya = tail call i32 @fflush(ptr noundef %i.xz) ; 0 uses
  br label %.thread235.sink.split.i

bb.az:                                            ; preds = %ZDICT_dictSize.exit226.i
  %i.yb = zext i32 %.lcssa to i64                 ; 2 uses
  %i.yc = lshr i64 %1, 2
  %7 = icmp samesign ugt i64 %i.yc, %i.yb
  %brmerge241.not.i = and i1 %i.ax, %7
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
  %8 = icmp ugt i32 %i.al, 4
  br i1 %8, label %bb.bd, label %.critedge183.i

bb.bd:                                            ; preds = %bb.bc
  %i.yq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.yr = add i32 %i.ai, 1
  %i.ys = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yq, ptr noundef nonnull @.str.24, i32 noundef %i.yr) #19 ; 0 uses
  %i.yt = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.yu = tail call i32 @fflush(ptr noundef %i.yt) ; 0 uses
  %i.yv = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite169.i = tail call i64 @fwrite(ptr nonnull @.str.25, i64 90, i64 1, ptr %i.yv) #20 ; 0 uses
  %i.yw = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.yx = tail call i32 @fflush(ptr noundef %i.yw) ; 0 uses
  br label %.critedge183.i

.critedge183.i:                                   ; preds = %bb.bd, %bb.bc, %bb.az
  %i.yy = mul i64 %1, 3
  %i.yz = icmp ult i64 %i.yy, %i.yb
  %i.za = icmp ugt i32 %4, 8
  %or.cond.i = and i1 %i.za, %i.yz
  %i.zb = icmp ugt i32 %i.ai, 1
  %or.cond7.i = select i1 %or.cond.i, i1 %i.zb, i1 false
  br i1 %or.cond7.i, label %.preheader.i, label %.lr.ph263.i.preheader

.preheader.i:                                     ; preds = %.critedge183.i, %.preheader.i
  %.0147.in.i = phi i32 [ %.0147.i, %.preheader.i ], [ %i.ai, %.critedge183.i ]
  %.0147.i = add i32 %.0147.in.i, -1              ; 3 uses
  %i.zc = lshr i32 %4, %.0147.i
  %i.zd = icmp ult i32 %i.zc, 5
  br i1 %i.zd, label %.preheader.i, label %bb.be, !llvm.loop !83

bb.be:                                            ; preds = %.preheader.i
  br i1 %i.ax, label %.critedge185.i, label %.lr.ph263.i.preheader

.critedge185.i:                                   ; preds = %bb.be
  %i.ze = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.zf = trunc i64 %1 to i32
  %i.zg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ze, ptr noundef nonnull @.str.26, i32 noundef %.lcssa, i32 noundef %i.zf) #19 ; 0 uses
  %i.zh = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.zi = tail call i32 @fflush(ptr noundef %i.zh) ; 0 uses
  %i.zj = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.zk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zj, ptr noundef nonnull @.str.27, i32 noundef %.0147.i) #19 ; 0 uses
  %i.zl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.zm = tail call i32 @fflush(ptr noundef %i.zl) ; 0 uses
  %i.zn = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite170.i = tail call i64 @fwrite(ptr nonnull @.str.28, i64 54, i64 1, ptr %i.zn) #20 ; 0 uses
  %i.zo = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.zp = tail call i32 @fflush(ptr noundef %i.zo) ; 0 uses
  br label %.lr.ph263.i.preheader

.lr.ph263.i.preheader:                            ; preds = %.critedge185.i, %bb.be, %.critedge183.i
  br label %.lr.ph263.i

.lr.ph263.i:                                      ; preds = %.lr.ph263.i.preheader, %bb.bf
  %indvars.iv291.i = phi i64 [ %indvars.iv.next292.i, %bb.bf ], [ 1, %.lr.ph263.i.preheader ] ; 4 uses
  %.0146261.i = phi i32 [ %i.zt, %bb.bf ], [ 0, %.lr.ph263.i.preheader ] ; 3 uses
  %i.zq = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv291.i
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 4
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !11
  %i.zt = add i32 %i.zs, %.0146261.i              ; 3 uses
  %i.zu = zext i32 %i.zt to i64
  %i.zv = icmp ult i64 %1, %i.zu
  br i1 %i.zv, label %._crit_edge.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph263.i
  %indvars.iv.next292.i = add nuw nsw i64 %indvars.iv291.i, 1 ; 2 uses
  %exitcond295.not.i = icmp eq i64 %indvars.iv.next292.i, %wide.trip.count.i220.i
  br i1 %exitcond295.not.i, label %.lr.ph272.preheader.i, label %.lr.ph263.i, !llvm.loop !84

._crit_edge.i:                                    ; preds = %.lr.ph263.i
  %.not172268.i = icmp samesign ugt i64 %indvars.iv291.i, 1
  br i1 %.not172268.i, label %.lr.ph272.preheader.i, label %._crit_edge273.i

.lr.ph272.preheader.i:                            ; preds = %bb.bf, %._crit_edge.i
  %wide.trip.count299.i.pre-phi = phi i64 [ %indvars.iv291.i, %._crit_edge.i ], [ %wide.trip.count.i220.i, %bb.bf ]
  %.0146.lcssa.ph326.i = phi i32 [ %.0146261.i, %._crit_edge.i ], [ %i.zt, %bb.bf ]
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %.lr.ph272.i

.lr.ph272.i:                                      ; preds = %bb.bg, %.lr.ph272.preheader.i
  %indvars.iv296.i = phi i64 [ 1, %.lr.ph272.preheader.i ], [ %indvars.iv.next297.i, %bb.bg ] ; 2 uses
  %.0270.i = phi ptr [ %i.zw, %.lr.ph272.preheader.i ], [ %i.aac, %bb.bg ]
  %i.zx = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv296.i ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 4
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !11
  %i.aaa = zext i32 %i.zz to i64                  ; 2 uses
  %i.aab = sub nsw i64 0, %i.aaa
  %i.aac = getelementptr inbounds i8, ptr %.0270.i, i64 %i.aab ; 3 uses
  %.not171.i = icmp ult ptr %i.aac, %0
  br i1 %.not171.i, label %.thread235.sink.split.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph272.i
  %i.aad = load i32, ptr %i.zx, align 4, !tbaa !10
  %i.aae = zext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aae
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aac, ptr nonnull align 1 %i.aaf, i64 %i.aaa, i1 false)
  %indvars.iv.next297.i = add nuw nsw i64 %indvars.iv296.i, 1 ; 2 uses
  %exitcond300.not.i = icmp eq i64 %indvars.iv.next297.i, %wide.trip.count299.i.pre-phi
  br i1 %exitcond300.not.i, label %._crit_edge273.i, label %.lr.ph272.i, !llvm.loop !85

._crit_edge273.i:                                 ; preds = %bb.bg, %._crit_edge.i
  %.0146.lcssa.ph325.i = phi i32 [ %.0146261.i, %._crit_edge.i ], [ %.0146.lcssa.ph326.i, %bb.bg ]
  %i.aag = zext i32 %.0146.lcssa.ph325.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store <2 x i32> %i.r, ptr %6, align 8, !tbaa !8
  %.sroa.6.4..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6.4..sroa_idx, align 8, !tbaa !8
  %i.aah = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %i.aag, i64 noundef %1, ptr noundef nonnull %i.o, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.thread235.sink.split.i

.thread235.sink.split.i:                          ; preds = %.lr.ph.i22, %.lr.ph272.i, %._crit_edge273.i, %ZDICT_dictSize.exit226.thread.critedge.i, %ZDICT_dictSize.exit226.i, %.critedge181.i, %bb.d, %bb.c
  %.8.ph.i = phi i64 [ -1, %.lr.ph272.i ], [ -34, %ZDICT_dictSize.exit226.i ], [ -34, %bb.d ], [ %i.aah, %._crit_edge273.i ], [ -70, %bb.c ], [ -34, %ZDICT_dictSize.exit226.thread.critedge.i ], [ -34, %.critedge181.i ], [ -1, %.lr.ph.i22 ]
  tail call void @free(ptr noundef nonnull %i.x) #16
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
end_hunk_1

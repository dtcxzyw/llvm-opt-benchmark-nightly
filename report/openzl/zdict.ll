Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/zdict?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ZDICT_analyzeEntropy:bb.a
  %n.vec384 = and i64 %wide.trip.count, 56        ; 3 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next391, %vector.body385 ] ; 2 uses
  %vec.phi387 = phi <4 x i32> [ zeroinitializer, %vector.ph383 ], [ %i.pc, %vector.body385 ]
  %vec.phi388 = phi <4 x i32> [ zeroinitializer, %vector.ph383 ], [ %i.pd, %vector.body385 ]
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index386 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %wide.load389 = load <4 x i32>, ptr %i.pa, align 16, !tbaa !11
  %wide.load390 = load <4 x i32>, ptr %i.pb, align 16, !tbaa !11
  %i.pc = add <4 x i32> %wide.load389, %vec.phi387 ; 2 uses
  %i.pd = add <4 x i32> %wide.load390, %vec.phi388 ; 2 uses
  %index.next391 = add nuw i64 %index386, 8       ; 2 uses
  %i.pe = icmp eq i64 %index.next391, %n.vec384
  br i1 %i.pe, label %middle.block392, label %vector.body385, !llvm.loop !42

middle.block392:                                  ; preds = %vector.body385
  %bin.rdx393 = add <4 x i32> %i.pd, %i.pc
  %i.pf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx393) ; 2 uses
  %cmp.n394 = icmp eq i64 %n.vec384, %wide.trip.count
  br i1 %cmp.n394, label %.loopexit397, label %.preheader.preheader398

.preheader.preheader398:                          ; preds = %.preheader.preheader, %middle.block392
  %indvars.iv320.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec384, %middle.block392 ]
  %.0168286.ph = phi i32 [ 0, %.preheader.preheader ], [ %i.pf, %middle.block392 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader398, %.preheader
  %indvars.iv320 = phi i64 [ %indvars.iv.next321, %.preheader ], [ %indvars.iv320.ph, %.preheader.preheader398 ] ; 2 uses
  %.0168286 = phi i32 [ %i.pi, %.preheader ], [ %.0168286.ph, %.preheader.preheader398 ]
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv320
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !11
  %i.pi = add i32 %i.ph, %.0168286                ; 2 uses
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %indvars.iv.next321, %wide.trip.count
  br i1 %exitcond324.not, label %.loopexit397, label %.preheader, !llvm.loop !43

.loopexit397:                                     ; preds = %.preheader, %middle.block392
  %.lcssa = phi i32 [ %i.pf, %middle.block392 ], [ %i.pi, %.preheader ]
  %i.pj = trunc i64 %.0157 to i32
  %i.pk = zext i32 %.lcssa to i64
  %i.pl = call i64 @FSE_normalizeCount(ptr noundef nonnull %i.d, i32 noundef 8, ptr noundef nonnull %i.c, i64 noundef %i.pk, i32 noundef %i.n, i32 noundef 1) #16 ; 4 uses
  %i.pm = icmp ult i64 %i.pl, -119
  br i1 %i.pm, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.loopexit397
  %.not214 = icmp eq i32 %8, 0
  br i1 %.not214, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.pn = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite215 = call i64 @fwrite(ptr nonnull @.str.8, i64 44, i64 1, ptr %i.pn) #20 ; 0 uses
  %i.po = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.pp = call i32 @fflush(ptr noundef %i.po)     ; 0 uses
  br label %.thread

bb.u:                                             ; preds = %.loopexit397
  %i.pq = load <52 x i32>, ptr %i.e, align 16, !tbaa !11
  %i.pr = load i32, ptr %i.dd, align 16, !tbaa !11
  %i.ps = call i32 @llvm.vector.reduce.add.v52i32(<52 x i32> %i.pq)
  %op.rdx = add i32 %i.ps, %i.pr
  %i.pt = trunc i64 %i.pl to i32
  %i.pu = zext i32 %op.rdx to i64
  %i.pv = call i64 @FSE_normalizeCount(ptr noundef nonnull %i.f, i32 noundef 9, ptr noundef nonnull %i.e, i64 noundef %i.pu, i32 noundef 52, i32 noundef 1) #16 ; 4 uses
  %i.pw = icmp ult i64 %i.pv, -119
  br i1 %i.pw, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not212 = icmp eq i32 %8, 0
  br i1 %.not212, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.px = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite213 = call i64 @fwrite(ptr nonnull @.str.9, i64 48, i64 1, ptr %i.px) #20 ; 0 uses
  %i.py = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.pz = call i32 @fflush(ptr noundef %i.py)     ; 0 uses
  br label %.thread

bb.x:                                             ; preds = %bb.u
  %i.qa = load <36 x i32>, ptr %i.g, align 16, !tbaa !11
  %i.qb = call i32 @llvm.vector.reduce.add.v36i32(<36 x i32> %i.qa)
  %i.qc = trunc i64 %i.pv to i32
  %i.qd = zext i32 %i.qb to i64
  %i.qe = call i64 @FSE_normalizeCount(ptr noundef nonnull %i.h, i32 noundef 9, ptr noundef nonnull %i.g, i64 noundef %i.qd, i32 noundef 35, i32 noundef 1) #16 ; 4 uses
  %i.qf = icmp ult i64 %i.qe, -119
  br i1 %i.qf, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not210 = icmp eq i32 %8, 0
  br i1 %.not210, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.qg = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite211 = call i64 @fwrite(ptr nonnull @.str.10, i64 46, i64 1, ptr %i.qg) #20 ; 0 uses
  %i.qh = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.qi = call i32 @fflush(ptr noundef %i.qh)     ; 0 uses
  br label %.thread

bb.aa:                                            ; preds = %bb.x
  %i.qj = trunc i64 %i.qe to i32
  %i.qk = call i64 @HUF_writeCTable_wksp(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.b, i32 noundef 255, i32 noundef %i.pj, ptr noundef nonnull %i.j, i64 noundef 4864) #16 ; 6 uses
  %i.ql = icmp ult i64 %i.qk, -119
  br i1 %i.ql, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not197 = icmp eq i32 %8, 0
  br i1 %.not197, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.qm = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite198 = call i64 @fwrite(ptr nonnull @.str.11, i64 23, i64 1, ptr %i.qm) #20 ; 0 uses
  %i.qn = load ptr, ptr @stderr, align 8, !tbaa !18
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
  %i.qt = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite201 = call i64 @fwrite(ptr nonnull @.str.12, i64 42, i64 1, ptr %i.qt) #20 ; 0 uses
  %i.qu = load ptr, ptr @stderr, align 8, !tbaa !18
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
  %i.ra = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite204 = call i64 @fwrite(ptr nonnull @.str.13, i64 46, i64 1, ptr %i.ra) #20 ; 0 uses
  %i.rb = load ptr, ptr @stderr, align 8, !tbaa !18
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
  %i.rh = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite207 = call i64 @fwrite(ptr nonnull @.str.14, i64 44, i64 1, ptr %i.rh) #20 ; 0 uses
  %i.ri = load ptr, ptr @stderr, align 8, !tbaa !18
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
  %i.rm = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite209 = call i64 @fwrite(ptr nonnull @.str.15, i64 38, i64 1, ptr %i.rm) #20 ; 0 uses
  %i.rn = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ro = call i32 @fflush(ptr noundef %i.rn)     ; 0 uses
  br label %.thread

bb.ap:                                            ; preds = %bb.am
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rf ; 3 uses
  store i32 1, ptr %i.rp, align 1, !tbaa !11
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 4
  store i32 4, ptr %i.rq, align 1, !tbaa !11
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  store i32 8, ptr %i.rr, align 1, !tbaa !11
  %i.rs = add nuw i64 %i.qk, 12
  %i.rt = add i64 %i.rs, %i.qr
  %i.ru = add i64 %i.rt, %i.qy
  %i.rv = add i64 %i.ru, %i.rf
  br label %.thread

.thread:                                          ; preds = %bb.ak, %bb.al, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.ab, %bb.ac, %bb.n, %bb.o, %ZDICT_totalSampleSize.exit, %bb.an, %bb.ao, %bb.y, %bb.z, %bb.v, %bb.w, %bb.s, %bb.t, %bb.b, %bb.c, %bb.ap
  %.5 = phi i64 [ -64, %bb.b ], [ %i.pl, %bb.t ], [ %i.pl, %bb.s ], [ %i.pv, %bb.w ], [ %i.pv, %bb.v ], [ %i.qe, %bb.z ], [ %i.qe, %bb.y ], [ -70, %bb.ao ], [ -70, %bb.an ], [ %i.rv, %bb.ap ], [ %i.qy, %bb.ah ], [ %i.qr, %bb.ae ], [ %i.qk, %bb.ab ], [ %i.lw, %bb.n ], [ -34, %ZDICT_totalSampleSize.exit ], [ -64, %bb.c ], [ %i.lw, %bb.o ], [ %i.qk, %bb.ac ], [ %i.qr, %bb.af ], [ %i.qy, %bb.ai ], [ %i.rf, %bb.al ], [ %i.rf, %bb.ak ]
  %.sroa.7.0 = phi ptr [ %i.ds, %bb.b ], [ %i.ds, %bb.t ], [ %i.ds, %bb.s ], [ %i.ds, %bb.w ], [ %i.ds, %bb.v ], [ %i.ds, %bb.z ], [ %i.ds, %bb.y ], [ %i.ds, %bb.ao ], [ %i.ds, %bb.an ], [ %i.ds, %bb.ap ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ae ], [ %i.ds, %bb.ab ], [ %i.ds, %bb.n ], [ null, %ZDICT_totalSampleSize.exit ], [ %i.ds, %bb.c ], [ %i.ds, %bb.o ], [ %i.ds, %bb.ac ], [ %i.ds, %bb.af ], [ %i.ds, %bb.ai ], [ %i.ds, %bb.al ], [ %i.ds, %bb.ak ]
  %.sroa.9.0 = phi ptr [ %i.dr, %bb.b ], [ %i.dr, %bb.t ], [ %i.dr, %bb.s ], [ %i.dr, %bb.w ], [ %i.dr, %bb.v ], [ %i.dr, %bb.z ], [ %i.dr, %bb.y ], [ %i.dr, %bb.ao ], [ %i.dr, %bb.an ], [ %i.dr, %bb.ap ], [ %i.dr, %bb.ah ], [ %i.dr, %bb.ae ], [ %i.dr, %bb.ab ], [ %i.dr, %bb.n ], [ null, %ZDICT_totalSampleSize.exit ], [ %i.dr, %bb.c ], [ %i.dr, %bb.o ], [ %i.dr, %bb.ac ], [ %i.dr, %bb.af ], [ %i.dr, %bb.ai ], [ %i.dr, %bb.al ], [ %i.dr, %bb.ak ]
  %10 = phi ptr [ %i.dq, %bb.b ], [ %i.dq, %bb.t ], [ %i.dq, %bb.s ], [ %i.dq, %bb.w ], [ %i.dq, %bb.v ], [ %i.dq, %bb.z ], [ %i.dq, %bb.y ], [ %i.dq, %bb.ao ], [ %i.dq, %bb.an ], [ %i.dq, %bb.ap ], [ %i.dq, %bb.ah ], [ %i.dq, %bb.ae ], [ %i.dq, %bb.ab ], [ %i.dq, %bb.n ], [ null, %ZDICT_totalSampleSize.exit ], [ %i.dq, %bb.c ], [ %i.dq, %bb.o ], [ %i.dq, %bb.ac ], [ %i.dq, %bb.af ], [ %i.dq, %bb.ai ], [ %i.dq, %bb.al ], [ %i.dq, %bb.ak ]
  %i.rw = call i64 @ZSTD_freeCDict(ptr noundef %10) #16 ; 0 uses
  %i.rx = call i64 @ZSTD_freeCCtx(ptr noundef %.sroa.9.0) #16 ; 0 uses
  call void @free(ptr noundef %.sroa.7.0) #16
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
  %vec.phi128 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !20
  %wide.load129 = load <2 x i64>, ptr %i.e, align 8, !tbaa !20
  %i.f = add <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.g = add <2 x i64> %wide.load129, %vec.phi128 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !59

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
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = add i64 %i.k, %.067.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ZDICT_totalSampleSize.exit, label %.lr.ph.i, !llvm.loop !60

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
  store <16 x i8> <i8 -30, i8 51, i8 -9, i8 105, i8 -35, i8 -31, i8 -119, i8 112, i8 5, i8 -68, i8 15, i8 79, i8 -73, i8 -13, i8 110, i8 -47>, ptr %i.p, align 1, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> <i8 14, i8 -34, i8 95, i8 14, i8 -114, i8 -50, i8 31, i8 67, i8 -40, i8 -37, i8 31, i8 -102, i8 88, i8 -72, i8 -78, i8 0>, ptr %i.q, align 1, !tbaa !24
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
  %wide.load138 = load <2 x i64>, ptr %i.y, align 8, !tbaa !20
  %wide.load139 = load <2 x i64>, ptr %i.z, align 8, !tbaa !20
  %i.aa = add <2 x i64> %wide.load138, %vec.phi136 ; 2 uses
  %i.ab = add <2 x i64> %wide.load139, %vec.phi137 ; 2 uses
  %index.next140 = add nuw i64 %index135, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next140, %n.vec133
  br i1 %i.ac, label %middle.block141, label %vector.body134, !llvm.loop !61

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
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !20
  %i.ag = add i64 %i.af, %.067.i.i                ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond.not.i.i, label %ZDICT_totalSampleSize.exit.i, label %.lr.ph.i.i, !llvm.loop !62

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
  store i32 1, ptr %i.x, align 4, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 -1, ptr %i.ap, align 4, !tbaa !15
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
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ay, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19 ; 0 uses
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !18
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
end_hunk_0

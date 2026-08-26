Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/lame?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@lame_print_config:bb.a
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.y = tail call i64 @fwrite(ptr nonnull @.str.5, i64 67, i64 1, ptr %i.x) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.z = load float, ptr %i.f, align 8, !tbaa !23
  %i.aa = fcmp une float %i.z, 1.000000e+00
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.ac = fptosi float %i.h to i32
  %i.ad = fptosi float %i.e to i32
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.6, i32 noundef %i.ac, i32 noundef %i.ad) #20 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ag = load float, ptr %i.af, align 4, !tbaa !34 ; 2 uses
  %i.ah = fcmp ogt float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !33
  %i.al = fmul float %i.ak, %i.e
  %i.am = fmul float %i.al, 5.000000e+02
  %i.an = fpext float %i.am to double
  %i.ao = fmul float %i.ag, %i.e
  %i.ap = fmul float %i.ao, 5.000000e+02
  %i.aq = fpext float %i.ap to double
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.7, double noundef %i.an, double noundef %i.aq) #20 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.at = load float, ptr %i.as, align 8, !tbaa !29 ; 2 uses
  %i.au = fcmp ogt float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.aw = fmul float %i.at, %i.e
  %i.ax = fmul float %i.aw, 5.000000e+02
  %i.ay = fpext float %i.ax to double
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.ba = load float, ptr %i.az, align 4, !tbaa !30
  %i.bb = fmul float %i.ba, %i.e
  %i.bc = fmul float %i.bb, 5.000000e+02
  %i.bd = fpext float %i.bc to double
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.8, double noundef %i.ay, double noundef %i.bd) #20 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !62
  %.not = icmp eq i32 %i.bg, 0
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !42 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !68 ; 5 uses
  br i1 %.not, label %sub_0, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bh, ptr noundef nonnull @.str.9, ptr noundef %i.bj) #20 ; 0 uses
  br label %bb.o

sub_0:                                            ; preds = %bb.j
  %i.bl = load i8, ptr %i.bj, align 1
  %.not47 = icmp eq i8 %i.bl, 45
  br i1 %.not47, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %sub_044, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.bp = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %i.bj, i32 noundef 47) #21 ; 2 uses
  %.not.i = icmp eq ptr %i.bp, null
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = select i1 %.not.i, ptr %i.bj, ptr %i.bq
  br label %sub_044

sub_044:                                          ; preds = %.tail, %.tail.thread
  %i.bs = phi ptr [ %i.br, %.tail.thread ], [ @.str.12, %.tail ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !58 ; 4 uses
  %i.bv = load i8, ptr %i.bu, align 1
  %.not48 = icmp eq i8 %i.bv, 45
  br i1 %.not48, label %.tail43, label %.tail43.thread

.tail43:                                          ; preds = %sub_044
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.l, label %.tail43.thread

.tail43.thread:                                   ; preds = %sub_044, %.tail43
  %i.bz = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %i.bu, i32 noundef 47) #21 ; 2 uses
  %.not.i42 = icmp eq ptr %i.bz, null
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = select i1 %.not.i42, ptr %i.bu, ptr %i.ca
  br label %bb.l

bb.l:                                             ; preds = %.tail43, %.tail43.thread
  %i.cc = phi ptr [ %i.cb, %.tail43.thread ], [ @.str.13, %.tail43 ]
  %i.cd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bh, ptr noundef nonnull @.str.10, ptr noundef %i.bs, ptr noundef nonnull %i.cc) #20 ; 0 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !19
  %.not41 = icmp eq i32 %i.cf, 0
  %i.cg = load ptr, ptr @stderr, align 8, !tbaa !42 ; 2 uses
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !16
  %i.ci = sitofp i32 %i.ch to double
  %i.cj = fdiv double %i.ci, 1.000000e+03         ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !55 ; 2 uses
  br i1 %.not41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !26
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !15
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr @lame_print_config.mode_names, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !69
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !49
  %i.cv = sub nsw i32 2, %i.cu
  %i.cw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cg, ptr noundef nonnull @.str.14, double noundef %i.cj, i32 noundef %i.cn, ptr noundef %i.cs, i32 noundef %i.cv, i32 noundef %i.cl) #20 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cx = load i32, ptr %i.n, align 8, !tbaa !17
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !15
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr @lame_print_config.mode_names, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !69
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !49
  %i.df = sub nsw i32 2, %i.de
  %i.dg = fpext float %i.q to double
  %i.dh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cg, ptr noundef nonnull @.str.15, double noundef %i.cj, i32 noundef %i.cx, ptr noundef %i.dc, i32 noundef %i.df, double noundef %i.dg, i32 noundef %i.cl) #20 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  %i.di = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.dj = tail call i32 @fflush(ptr noundef %i.di) ; 0 uses
  ret void
}

declare void @lame_print_version(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @lame_encode_frame(ptr noundef initializes((228, 232)) %0, ptr noundef %1, ptr noundef %2, i32 %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x [2 x [576 x double]]], align 16 ; 5 uses
  %i.b = alloca [2 x [2 x [576 x i32]]], align 16 ; 5 uses
  %6 = alloca [2 x [2 x %struct.III_psy_ratio]], align 16 ; 5 uses
  %7 = alloca [2 x [2 x %struct.III_psy_ratio]], align 16 ; 6 uses
  %8 = alloca [2 x [2 x %struct.III_scalefac_t]], align 16 ; 6 uses
  %i.c = alloca [2 x ptr], align 16               ; 6 uses
  %i.d = alloca [2 x [2 x double]], align 16      ; 5 uses
  %i.e = alloca [2 x [2 x double]], align 16      ; 5 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca double, align 8                   ; 5 uses
  %i.i = alloca [2 x ptr], align 16               ; 5 uses
  %i.j = alloca [2 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3904) %6, i8 0, i64 3904, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3904) %7, i8 0, i64 3904, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(976) %8, i8 0, i64 976, i1 false)
  store ptr %1, ptr %i.c, align 16, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.k, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 4 uses
  store i32 0, ptr %i.l, align 4, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !8    ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !16
  %i.r = sitofp i32 %i.q to double
  %i.s = fdiv nnan double %i.r, 1.000000e+03
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !17
  store i64 0, ptr @lame_encode_frame.sentBits, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.w = load i32, ptr %i.v, align 4, !tbaa !22
  %i.x = mul nsw i32 %i.w, %i.u
  %i.y = sitofp i32 %i.x to double
  %i.z = fmul nnan double %i.s, 8.000000e+00
  %i.aa = fdiv double %i.y, %i.z                  ; 2 uses
  %i.ab = fadd double %i.aa, 1.000000e-09
  %i.ac = tail call double @llvm.floor.f64(double %i.ab)
  %i.ad = fsub double %i.aa, %i.ac                ; 2 uses
  %i.ae = tail call double @llvm.fabs.f64(double %i.ad)
  %i.af = fcmp olt double %i.ae, 1.000000e-09
  %storemerge = select i1 %i.af, double 0.000000e+00, double %i.ad ; 3 uses
  store double %storemerge, ptr @lame_encode_frame.frac_SpF, align 8, !tbaa !70
  %i.ag = fneg double %storemerge
  store double %i.ag, ptr @lame_encode_frame.slot_lag, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ai = fcmp une double %storemerge, 0.000000e+00
  %storemerge116 = zext i1 %i.ai to i32
  store i32 %storemerge116, ptr %i.ah, align 4, !tbaa !75
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !76
  switch i32 %i.ak, label %bb.f [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 0, ptr %i.al, align 4, !tbaa !75
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 1, ptr %i.am, align 4, !tbaa !75
  br label %bb.n

bb.f:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !19
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 0, ptr %i.ap, align 4, !tbaa !75
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !77
  %.not117 = icmp eq i32 %i.ar, 0
  br i1 %.not117, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 0, ptr %i.as, align 4, !tbaa !75
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.at = load double, ptr @lame_encode_frame.frac_SpF, align 8, !tbaa !70 ; 4 uses
  %i.au = fcmp une double %i.at, 0.000000e+00
  br i1 %i.au, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.av = load double, ptr @lame_encode_frame.slot_lag, align 8, !tbaa !70 ; 3 uses
  %i.aw = fadd double %i.at, -1.000000e+00
  %i.ax = fcmp ogt double %i.av, %i.aw
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = fsub double %i.av, %i.at
  store double %i.ay, ptr @lame_encode_frame.slot_lag, align 8, !tbaa !70
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 0, ptr %i.az, align 4, !tbaa !75
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 1, ptr %i.ba, align 4, !tbaa !75
  %i.bb = fsub double 1.000000e+00, %i.at
  %i.bc = fadd double %i.bb, %i.av
  store double %i.bc, ptr @lame_encode_frame.slot_lag, align 8, !tbaa !70
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.j, %bb.m, %bb.l, %bb.i, %bb.e, %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !62
  %.not118 = icmp eq i32 %i.be, 0
  br i1 %.not118, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !78
  %.not119 = icmp eq i32 %i.bg, 0
  br i1 %.not119, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !49
  %i.bj = icmp eq i32 %i.bi, 0
  %9 = select i1 %i.bj, i64 200, i64 50
  %i.bk = srem i64 %i.n, %9
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !22
  tail call void @timestatus(i32 noundef %i.bn, i64 noundef %i.n, i64 noundef %i.bp, i32 noundef %i.br) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o, %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !63
  %.not120 = icmp eq i32 %i.bt, 0
  br i1 %.not120, label %.preheader128, label %bb.s

.preheader128:                                    ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !20 ; 4 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.preheader127.lr.ph, label %._crit_edge145.split

.preheader127.lr.ph:                              ; preds = %.preheader128
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !47 ; 3 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.preheader127.preheader, label %.preheader.lr.ph

.preheader127.preheader:                          ; preds = %.preheader127.lr.ph
  %wide.trip.count163 = zext nneg i32 %i.bv to i64
  %wide.trip.count158 = zext nneg i32 %i.by to i64 ; 2 uses
  %xtraiter209 = and i64 %wide.trip.count158, 3   ; 3 uses
  %i.ca = icmp ult i32 %i.by, 4
  %unroll_iter213 = and i64 %wide.trip.count158, 2147483644
  %lcmp.mod211.not = icmp eq i64 %xtraiter209, 0
  %lcmp.mod212 = icmp ne i64 %xtraiter209, 0
  br label %.preheader127

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !20 ; 3 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [8 x i8], ptr @lame_encode_frame.ms_ratio, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -8
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !70
  %i.ch = icmp sgt i32 %i.cc, 0
  br i1 %i.ch, label %.preheader129.lr.ph, label %._crit_edge136

.preheader129.lr.ph:                              ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %.pre = load i32, ptr %i.ci, align 4, !tbaa !47
  br label %.preheader129

.preheader129:                                    ; preds = %.preheader129.lr.ph, %._crit_edge134
  %i.cj = phi i32 [ %.pre, %.preheader129.lr.ph ], [ %i.da, %._crit_edge134 ] ; 3 uses
  %indvars.iv152 = phi i64 [ 0, %.preheader129.lr.ph ], [ %indvars.iv.next153, %._crit_edge134 ] ; 8 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader129
  %wide.trip.count = zext nneg i32 %i.cj to i64   ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv152, 1152    ; 3 uses
  %min.iters.check = icmp ult i32 %i.cj, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load = load <2 x ptr>, ptr %i.cl, align 16, !tbaa !72
  %wide.load201 = load <2 x ptr>, ptr %i.cm, align 16, !tbaa !72
  %wide.gep = getelementptr inbounds nuw i8, <2 x ptr> %wide.load, i64 %.idx
  %wide.gep202 = getelementptr inbounds nuw i8, <2 x ptr> %wide.load201, i64 %.idx
  %wide.gep203 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep, i64 608
  %wide.gep204 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep202, i64 608
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <2 x ptr> %wide.gep203, ptr %i.cn, align 16, !tbaa !72
  store <2 x ptr> %wide.gep204, ptr %i.co, align 16, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !72
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 608
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !82

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader129
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @lame_encode_frame.ms_ratio, i64 %indvars.iv152
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr @lame_encode_frame.ms_ener_ratio, i64 %indvars.iv152
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv152
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv152
  %i.cz = trunc nuw nsw i64 %indvars.iv152 to i32
  call void @L3psycho_anal(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i32 noundef %i.cz, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.h, ptr noundef nonnull %i.cw, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.j) #17
  %i.da = load i32, ptr %i.ci, align 4, !tbaa !47 ; 4 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph133, label %._crit_edge134

.lr.ph133:                                        ; preds = %._crit_edge
  %i.dc = getelementptr inbounds nuw [240 x i8], ptr getelementptr inbounds nuw (i8, ptr @l3_side, i64 48), i64 %indvars.iv152 ; 5 uses
  %wide.trip.count150 = zext nneg i32 %i.da to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count150, 3      ; 3 uses
  %i.dd = icmp ult i32 %i.da, 4
  br i1 %i.dd, label %.epil.preheader, label %.lr.ph133.new

.lr.ph133.new:                                    ; preds = %.lr.ph133
  %unroll_iter = and i64 %wide.trip.count150, 2147483644
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph133.new
  %indvars.iv147 = phi i64 [ 0, %.lr.ph133.new ], [ %indvars.iv.next148.3, %bb.t ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph133.new ], [ %niter.next.3, %bb.t ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv147
  %i.df = load i32, ptr %i.de, align 4, !tbaa !4
  %i.dg = getelementptr inbounds nuw [120 x i8], ptr %i.dc, i64 %indvars.iv147
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store i32 %i.df, ptr %i.dh, align 8, !tbaa !83
  %indvars.iv.next148 = or disjoint i64 %indvars.iv147, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next148
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dk = getelementptr inbounds nuw [120 x i8], ptr %i.dc, i64 %indvars.iv.next148
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store i32 %i.dj, ptr %i.dl, align 8, !tbaa !83
  %indvars.iv.next148.1 = or disjoint i64 %indvars.iv147, 2 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next148.1
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4
  %i.do = getelementptr inbounds nuw [120 x i8], ptr %i.dc, i64 %indvars.iv.next148.1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store i32 %i.dn, ptr %i.dp, align 8, !tbaa !83
  %indvars.iv.next148.2 = or disjoint i64 %indvars.iv147, 3 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next148.2
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !4
  %i.ds = getelementptr inbounds nuw [120 x i8], ptr %i.dc, i64 %indvars.iv.next148.2
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store i32 %i.dr, ptr %i.dt, align 8, !tbaa !83
  %indvars.iv.next148.3 = add nuw nsw i64 %indvars.iv147, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge134.loopexit.unr-lcssa, label %bb.t, !llvm.loop !87

._crit_edge134.loopexit.unr-lcssa:                ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge134, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge134.loopexit.unr-lcssa, %.lr.ph133
  %indvars.iv147.epil.init = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next148.3, %._crit_edge134.loopexit.unr-lcssa ]
  %lcmp.mod207 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod207)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %indvars.iv147.epil = phi i64 [ %indvars.iv147.epil.init, %.epil.preheader ], [ %indvars.iv.next148.epil, %bb.u ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv147.epil
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4
  %i.dw = getelementptr inbounds nuw [120 x i8], ptr %i.dc, i64 %indvars.iv147.epil
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store i32 %i.dv, ptr %i.dx, align 8, !tbaa !83
  %indvars.iv.next148.epil = add nuw nsw i64 %indvars.iv147.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge134, label %bb.u, !llvm.loop !88

._crit_edge134:                                   ; preds = %._crit_edge134.loopexit.unr-lcssa, %bb.u, %._crit_edge
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %i.dy = load i32, ptr %i.cb, align 8, !tbaa !20 ; 2 uses
  %i.dz = sext i32 %i.dy to i64
  %i.ea = icmp slt i64 %indvars.iv.next153, %i.dz
  br i1 %i.ea, label %.preheader129, label %._crit_edge136, !llvm.loop !90

._crit_edge136:                                   ; preds = %._crit_edge134, %bb.s
  %i.eb = phi i32 [ %i.cc, %bb.s ], [ %i.dy, %._crit_edge134 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  br label %.loopexit

end_hunk_0

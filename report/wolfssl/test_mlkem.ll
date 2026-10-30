Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/test_mlkem?download=true
begin_hunk_0_@test_wc_mlkem_decapsulate_kats:bb.a
  %fwrite459 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.ax) ; 0 uses
  %i.ay = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.az = tail call i32 @fflush(ptr noundef %i.ay) ; 0 uses
  %i.ba = tail call i32 @wc_MlKemKey_Free(ptr noundef %i.a) #7 ; 0 uses
  br label %.critedge521

.critedge508:                                     ; preds = %.critedge504
  %i.bb = tail call i32 @wc_MlKemKey_DecodePrivateKey(ptr noundef nonnull %i.a, ptr noundef nonnull @test_wc_mlkem_decapsulate_kats.dk_768, i32 noundef 2400) #7 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.critedge510, label %.critedge506

.critedge506:                                     ; preds = %.critedge508
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3860) ; 0 uses
  %i.be = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite476 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.be) ; 0 uses
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.10) ; 0 uses
  %i.bg = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite477 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.bg) ; 0 uses
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.bb, i32 noundef 0) ; 0 uses
  %i.bi = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite478 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.bi) ; 0 uses
  %i.bj = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.bk = tail call i32 @fflush(ptr noundef %i.bj) ; 0 uses
  br label %.critedge521

.critedge510:                                     ; preds = %.critedge508
  %i.bl = tail call i32 @wc_MlKemKey_Decapsulate(ptr noundef nonnull %i.a, ptr noundef nonnull @test_wc_mlkem_decapsulate_kats.ss, ptr noundef nonnull @test_wc_mlkem_decapsulate_kats.c_768, i32 noundef 1088) #7 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.critedge512, label %.critedge509

.critedge509:                                     ; preds = %.critedge510
  %i.bn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3861) ; 0 uses
  %i.bo = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite479 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bo) ; 0 uses
  %i.bp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.10) ; 0 uses
  %i.bq = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite480 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.bq) ; 0 uses
  %i.br = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.bl, i32 noundef 0) ; 0 uses
  %i.bs = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite481 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.bs) ; 0 uses
  %i.bt = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.bu = tail call i32 @fflush(ptr noundef %i.bt) ; 0 uses
  br label %.critedge521

.critedge512:                                     ; preds = %.critedge510
  %i.bv = tail call i32 @memcmp(ptr noundef nonnull dereferenceable(32) @test_wc_mlkem_decapsulate_kats.ss, ptr noundef nonnull dereferenceable(32) @test_wc_mlkem_decapsulate_kats.kprime_768, i64 noundef 32) #8 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %.critedge514, label %.critedge511

.critedge511:                                     ; preds = %.critedge512
  %i.bx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3862) ; 0 uses
  %i.by = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite482 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.by) ; 0 uses
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.10) ; 0 uses
  %i.ca = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite483 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.ca) ; 0 uses
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.bv, i32 noundef 0) ; 0 uses
  %i.cc = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite484 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.cc) ; 0 uses
  %i.cd = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ce = tail call i32 @fflush(ptr noundef %i.cd) ; 0 uses
  %i.cf = tail call i32 @wc_MlKemKey_Free(ptr noundef nonnull %i.a) #7 ; 0 uses
  br label %.critedge521.thread

.critedge514:                                     ; preds = %.critedge512
  %i.cg = tail call i32 @wc_MlKemKey_Free(ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.ch = tail call i32 @wc_MlKemKey_Init(ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef null, i32 noundef -2) #7 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.critedge518, label %bb.e

bb.e:                                             ; preds = %.critedge514
  %i.cj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3866) ; 0 uses
  %i.ck = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite485 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ck) ; 0 uses
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.10) ; 0 uses
  %i.cm = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite486 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.cm) ; 0 uses
  %i.cn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.ch, i32 noundef 0) ; 0 uses
  %i.co = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite487 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.co) ; 0 uses
  %i.cp = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.cq = tail call i32 @fflush(ptr noundef %i.cp) ; 0 uses
  br label %.critedge521.thread

.critedge518:                                     ; preds = %.critedge514
  %i.cr = tail call i32 @wc_MlKemKey_DecodePrivateKey(ptr noundef nonnull %i.a, ptr noundef nonnull @test_wc_mlkem_decapsulate_kats.dk_1024, i32 noundef 3168) #7 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.critedge520, label %.critedge516

.critedge516:                                     ; preds = %.critedge518
  %i.ct = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3867) ; 0 uses
  %i.cu = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite488 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.cu) ; 0 uses
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.10) ; 0 uses
  %i.cw = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite489 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.cw) ; 0 uses
  %i.cx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.cr, i32 noundef 0) ; 0 uses
  %i.cy = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite490 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.cy) ; 0 uses
  %i.cz = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.da = tail call i32 @fflush(ptr noundef %i.cz) ; 0 uses
  br label %.critedge521.thread

.critedge520:                                     ; preds = %.critedge518
  %i.db = tail call i32 @wc_MlKemKey_Decapsulate(ptr noundef nonnull %i.a, ptr noundef nonnull @test_wc_mlkem_decapsulate_kats.ss, ptr noundef nonnull @test_wc_mlkem_decapsulate_kats.c_1024, i32 noundef 1568) #7 ; 2 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %.critedge522, label %.critedge519

.critedge519:                                     ; preds = %.critedge520
  %i.dd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3868) ; 0 uses
  %i.de = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite491 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.de) ; 0 uses
  %i.df = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.10) ; 0 uses
  %i.dg = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite492 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.dg) ; 0 uses
  %i.dh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.db, i32 noundef 0) ; 0 uses
  %i.di = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite493 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.di) ; 0 uses
  %i.dj = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.dk = tail call i32 @fflush(ptr noundef %i.dj) ; 0 uses
  br label %.critedge521.thread

.critedge522:                                     ; preds = %.critedge520
  %i.dl = tail call i32 @memcmp(ptr noundef nonnull dereferenceable(32) @test_wc_mlkem_decapsulate_kats.ss, ptr noundef nonnull dereferenceable(32) @test_wc_mlkem_decapsulate_kats.kprime_1024, i64 noundef 32) #8 ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %.critedge521.thread, label %bb.f

bb.f:                                             ; preds = %.critedge522
  %i.dn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3869) ; 0 uses
  %i.do = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite494 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.do) ; 0 uses
  %i.dp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.10) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite495 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.dq) ; 0 uses
  %i.dr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.dl, i32 noundef 0) ; 0 uses
  %i.ds = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite496 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.ds) ; 0 uses
  %i.dt = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.du = tail call i32 @fflush(ptr noundef %i.dt) ; 0 uses
  br label %.critedge521.thread

.critedge521.thread:                              ; preds = %.critedge519, %.critedge516, %bb.e, %.critedge511, %.critedge522, %bb.f
  %.24.ph = phi i32 [ 0, %.critedge516 ], [ 0, %.critedge511 ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %.critedge519 ], [ 1, %.critedge522 ]
  %i.dv = tail call i32 @wc_MlKemKey_Free(ptr noundef nonnull %i.a) #7 ; 0 uses
  br label %bb.g

.critedge521:                                     ; preds = %.critedge503, %.critedge501, %bb.d, %.critedge506, %.critedge509
  %i.dw = tail call i32 @wc_MlKemKey_Free(ptr noundef %i.a) #7 ; 0 uses
  %i.dx = tail call i32 @wc_MlKemKey_Free(ptr noundef %i.a) #7 ; 0 uses
  br i1 %.not.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge521.thread, %.critedge521
  %.24525 = phi i32 [ %.24.ph, %.critedge521.thread ], [ 0, %.critedge521 ]
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.a) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge521
  %.24526 = phi i32 [ %.24525, %bb.g ], [ 0, %.critedge521 ]
  ret i32 %.24526
}

declare i32 @wc_MlKemKey_DecodePrivateKey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_MlKemKey_Decapsulate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_wc_mlkem_decapsulate_pubonly_fails() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.WC_RNG, align 8             ; 10 uses
  %i.a = alloca [1568 x i8], align 16             ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 3 uses
  %i.c = alloca [32 x i8], align 16               ; 3 uses
  %i.d = alloca [1568 x i8], align 16             ; 4 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store i32 0, ptr %i.e, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store i32 0, ptr %i.f, align 4, !tbaa !12
  %i.g = tail call ptr @wolfSSL_Malloc(i64 noundef 5048) #7 ; 9 uses
  %.not.not = icmp eq ptr %i.g, null              ; 2 uses
  br i1 %.not.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3905) ; 0 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.i) ; 0 uses
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.50) ; 0 uses
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite433 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.k) ; 0 uses
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51) ; 0 uses
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite434 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.m) ; 0 uses
  %i.n = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.o = tail call i32 @fflush(ptr noundef %i.n)  ; 0 uses
  %i.p = tail call ptr @wolfSSL_Malloc(i64 noundef 5048) #7
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.q = tail call ptr @wolfSSL_Malloc(i64 noundef 5048) #7 ; 16 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3908) ; 0 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite435 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.s) ; 0 uses
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.52) ; 0 uses
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite436 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.u) ; 0 uses
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite437 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.w) ; 0 uses
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.y = tail call i32 @fflush(ptr noundef %i.x)  ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.z = call i32 @wc_InitRng(ptr noundef nonnull %0) #7 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.critedge476, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3911) ; 0 uses
  %i.ac = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite438 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ac) ; 0 uses
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.10) ; 0 uses
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite439 = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.ae) ; 0 uses
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.z, i32 noundef 0) ; 0 uses
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite440 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.ag) ; 0 uses
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ai = call i32 @fflush(ptr noundef %i.ah)     ; 0 uses
  br label %.critedge495

.critedge:                                        ; preds = %.thread, %bb.c
  %i.aj = phi ptr [ %i.p, %.thread ], [ null, %bb.c ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %.critedge495

.critedge476:                                     ; preds = %bb.d
  %i.ak = call i32 @wc_MlKemKey_Init(ptr noundef nonnull %i.g, i32 noundef 1, ptr noundef null, i32 noundef -2) #7 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.critedge480, label %bb.f

bb.f:                                             ; preds = %.critedge476
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3915) ; 0 uses
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite441 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.an) ; 0 uses
  %i.ao = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.10) ; 0 uses
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite442 = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.ap) ; 0 uses
  %i.aq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.ak, i32 noundef 0) ; 0 uses
  %i.ar = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite443 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.ar) ; 0 uses
  %i.as = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.at = call i32 @fflush(ptr noundef %i.as)     ; 0 uses
  br label %.critedge495

.critedge480:                                     ; preds = %.critedge476
  %i.au = call i32 @wc_MlKemKey_Init(ptr noundef nonnull %i.q, i32 noundef 1, ptr noundef null, i32 noundef -2) #7 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.critedge482, label %.critedge478

.critedge478:                                     ; preds = %.critedge480
  %i.aw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3917) ; 0 uses
  %i.ax = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite444 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ax) ; 0 uses
  %i.ay = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.10) ; 0 uses
  %i.az = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite445 = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.az) ; 0 uses
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.au, i32 noundef 0) ; 0 uses
  %i.bb = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite446 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.bb) ; 0 uses
  %i.bc = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.bd = call i32 @fflush(ptr noundef %i.bc)     ; 0 uses
  br label %.critedge495

.critedge482:                                     ; preds = %.critedge480
  %i.be = call i32 @wc_MlKemKey_PublicKeySize(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e) #7 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.critedge484, label %.critedge481

.critedge481:                                     ; preds = %.critedge482
  %i.bg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3931) ; 0 uses
  %i.bh = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite447 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bh) ; 0 uses
  %i.bi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.10) ; 0 uses
  %i.bj = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite448 = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.bj) ; 0 uses
  %i.bk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.be, i32 noundef 0) ; 0 uses
  %i.bl = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite449 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.bl) ; 0 uses
  %i.bm = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.bn = call i32 @fflush(ptr noundef %i.bm)     ; 0 uses
  br label %.critedge495

.critedge484:                                     ; preds = %.critedge482
  %i.bo = call i32 @wc_MlKemKey_CipherTextSize(ptr noundef nonnull %i.g, ptr noundef nonnull %i.f) #7 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.critedge486, label %.critedge483

.critedge483:                                     ; preds = %.critedge484
  %i.bq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3932) ; 0 uses
  %i.br = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite450 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.br) ; 0 uses
  %i.bs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.10) ; 0 uses
  %i.bt = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite451 = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.bt) ; 0 uses
  %i.bu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.bo, i32 noundef 0) ; 0 uses
  %i.bv = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite452 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.bv) ; 0 uses
  %i.bw = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.bx = call i32 @fflush(ptr noundef %i.bw)     ; 0 uses
  br label %.critedge495

.critedge486:                                     ; preds = %.critedge484
  %i.by = call i32 @wc_MlKemKey_MakeKey(ptr noundef nonnull %i.g, ptr noundef nonnull %0) #7 ; 2 uses
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %.critedge488, label %.critedge485

.critedge485:                                     ; preds = %.critedge486
  %i.ca = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3935) ; 0 uses
  %i.cb = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite453 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.cb) ; 0 uses
  %i.cc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.10) ; 0 uses
  %i.cd = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite454 = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.cd) ; 0 uses
  %i.ce = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.by, i32 noundef 0) ; 0 uses
  %i.cf = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite455 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.cf) ; 0 uses
  %i.cg = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ch = call i32 @fflush(ptr noundef %i.cg)     ; 0 uses
  br label %.critedge495

.critedge488:                                     ; preds = %.critedge486
  %i.ci = call i32 @wc_MlKemKey_Encapsulate(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %0) #7 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %.critedge490, label %.critedge487

.critedge487:                                     ; preds = %.critedge488
  %i.ck = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3938) ; 0 uses
  %i.cl = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite456 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.cl) ; 0 uses
  %i.cm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.10) ; 0 uses
  %i.cn = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite457 = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.cn) ; 0 uses
  %i.co = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.ci, i32 noundef 0) ; 0 uses
  %i.cp = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite458 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.cp) ; 0 uses
  %i.cq = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.cr = call i32 @fflush(ptr noundef %i.cq)     ; 0 uses
  br label %.critedge495

.critedge490:                                     ; preds = %.critedge488
  %i.cs = load i32, ptr %i.e, align 4, !tbaa !12
  %i.ct = call i32 @wc_MlKemKey_EncodePublicKey(ptr noundef nonnull %i.g, ptr noundef nonnull %i.d, i32 noundef %i.cs) #7 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %.critedge492, label %.critedge489

.critedge489:                                     ; preds = %.critedge490
  %i.cv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3941) ; 0 uses
  %i.cw = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite459 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.cw) ; 0 uses
  %i.cx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.10) ; 0 uses
  %i.cy = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite460 = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.cy) ; 0 uses
  %i.cz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.ct, i32 noundef 0) ; 0 uses
  %i.da = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite461 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.da) ; 0 uses
  %i.db = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.dc = call i32 @fflush(ptr noundef %i.db)     ; 0 uses
  br label %.critedge495

.critedge492:                                     ; preds = %.critedge490
  %i.dd = load i32, ptr %i.e, align 4, !tbaa !12
  %i.de = call i32 @wc_MlKemKey_DecodePublicKey(ptr noundef nonnull %i.q, ptr noundef nonnull %i.d, i32 noundef %i.dd) #7 ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %.critedge494, label %.critedge491

.critedge491:                                     ; preds = %.critedge492
  %i.dg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3942) ; 0 uses
  %i.dh = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite462 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.dh) ; 0 uses
  %i.di = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.10) ; 0 uses
  %i.dj = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite463 = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.dj) ; 0 uses
  %i.dk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.de, i32 noundef 0) ; 0 uses
  %i.dl = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite464 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.dl) ; 0 uses
  %i.dm = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.dn = call i32 @fflush(ptr noundef %i.dm)     ; 0 uses
  br label %.critedge495

.critedge494:                                     ; preds = %.critedge492
  %i.do = load i32, ptr %i.f, align 4, !tbaa !12
  %i.dp = call i32 @wc_MlKemKey_Decapsulate(ptr noundef nonnull %i.q, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i32 noundef %i.do) #7 ; 2 uses
  %i.dq = icmp eq i32 %i.dp, -192
  br i1 %i.dq, label %bb.g, label %.critedge493

.critedge493:                                     ; preds = %.critedge494
  %i.dr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3947) ; 0 uses
  %i.ds = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite465 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ds) ; 0 uses
  %i.dt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64) ; 0 uses
  %i.du = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite466 = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.du) ; 0 uses
  %i.dv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.dp, i32 noundef -192) ; 0 uses
  %i.dw = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite467 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.dw) ; 0 uses
  %i.dx = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.dy = call i32 @fflush(ptr noundef %i.dx)     ; 0 uses
  %i.dz = call i32 @wc_FreeRng(ptr noundef nonnull %0) #7 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %.critedge494
  %i.ea = call i32 @wc_FreeRng(ptr noundef nonnull %0) #7 ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ec = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3950) ; 0 uses
  %i.ed = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite468 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ed) ; 0 uses
  %i.ee = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.10) ; 0 uses
  %i.ef = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite469 = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.ef) ; 0 uses
  %i.eg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.ea, i32 noundef 0) ; 0 uses
  %i.eh = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite470 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.eh) ; 0 uses
  %i.ei = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ej = call i32 @fflush(ptr noundef %i.ei)     ; 0 uses
  br label %bb.i

.critedge495:                                     ; preds = %.critedge491, %.critedge489, %.critedge487, %.critedge485, %.critedge483, %.critedge481, %.critedge478, %bb.f, %bb.e, %.critedge
  %i.ek = phi ptr [ %i.q, %.critedge491 ], [ %i.q, %.critedge489 ], [ %i.q, %.critedge487 ], [ %i.q, %.critedge485 ], [ %i.q, %.critedge483 ], [ %i.q, %.critedge481 ], [ %i.q, %.critedge478 ], [ %i.q, %bb.f ], [ %i.q, %bb.e ], [ %i.aj, %.critedge ]
  %i.el = call i32 @wc_FreeRng(ptr noundef nonnull %0) #7 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.critedge493, %bb.h, %.critedge495, %bb.g
  %i.em = phi ptr [ %i.q, %bb.h ], [ %i.ek, %.critedge495 ], [ %i.q, %.critedge493 ], [ %i.q, %bb.g ] ; 3 uses
  %.22 = phi i32 [ 0, %bb.h ], [ 0, %.critedge495 ], [ 0, %.critedge493 ], [ 1, %bb.g ]
  %i.en = call i32 @wc_MlKemKey_Free(ptr noundef %i.em) #7 ; 0 uses
  %i.eo = call i32 @wc_MlKemKey_Free(ptr noundef %i.g) #7 ; 0 uses
  %.not471 = icmp eq ptr %i.em, null
  br i1 %.not471, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @wolfSSL_Free(ptr noundef nonnull %i.em) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.not.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @wolfSSL_Free(ptr noundef nonnull %i.g) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #7
  ret i32 %.22
}

declare i32 @wc_InitRng(ptr noundef) local_unnamed_addr #2

declare i32 @wc_MlKemKey_PublicKeySize(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_MlKemKey_CipherTextSize(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_MlKemKey_MakeKey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_MlKemKey_Encapsulate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_FreeRng(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_wc_mlkem_decap_fo_reject() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.WC_RNG, align 8             ; 10 uses
  %i.a = alloca [1568 x i8], align 16             ; 10 uses
  %i.b = alloca [1568 x i8], align 16             ; 17 uses
  %i.c = alloca [32 x i8], align 16               ; 7 uses
  %i.d = alloca [32 x i8], align 16               ; 7 uses
  %i.e = alloca [32 x i8], align 16               ; 9 uses
  %i.f = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store i32 0, ptr %i.f, align 4, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1568) %i.a, i8 0, i64 1568, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1568) %i.b, i8 0, i64 1568, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.g = tail call ptr @wolfSSL_Malloc(i64 noundef 5048) #7 ; 11 uses
  %.not.not = icmp eq ptr %i.g, null              ; 2 uses
  br i1 %.not.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3984) ; 0 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.i) ; 0 uses
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.4) ; 0 uses
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite406 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.k) ; 0 uses
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite407 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.m) ; 0 uses
  %i.n = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.o = tail call i32 @fflush(ptr noundef %i.n)  ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %.critedge452

.critedge:                                        ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.p = call i32 @wc_InitRng(ptr noundef nonnull %0) #7 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.critedge445, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3987) ; 0 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite408 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.s) ; 0 uses
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.10) ; 0 uses
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite409 = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.u) ; 0 uses
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.p, i32 noundef 0) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite410 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.w) ; 0 uses
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.y = call i32 @fflush(ptr noundef %i.x)       ; 0 uses
  br label %.critedge452

.critedge445:                                     ; preds = %.critedge
  %i.z = call i32 @wc_MlKemKey_Init(ptr noundef nonnull %i.g, i32 noundef 1, ptr noundef null, i32 noundef -2) #7 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.critedge447, label %.critedge443

.critedge443:                                     ; preds = %.critedge445
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3990) ; 0 uses
  %i.ac = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite411 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ac) ; 0 uses
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.10) ; 0 uses
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite412 = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.ae) ; 0 uses
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.z, i32 noundef 0) ; 0 uses
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite413 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.ag) ; 0 uses
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ai = call i32 @fflush(ptr noundef %i.ah)     ; 0 uses
  br label %.critedge452

.critedge447:                                     ; preds = %.critedge445
  %i.aj = call i32 @wc_MlKemKey_CipherTextSize(ptr noundef nonnull %i.g, ptr noundef nonnull %i.f) #7 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.critedge449, label %.critedge446

.critedge446:                                     ; preds = %.critedge447
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3997) ; 0 uses
  %i.am = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite414 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.am) ; 0 uses
  %i.an = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.10) ; 0 uses
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite415 = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.ao) ; 0 uses
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.aj, i32 noundef 0) ; 0 uses
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite416 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.aq) ; 0 uses
  %i.ar = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.as = call i32 @fflush(ptr noundef %i.ar)     ; 0 uses
  br label %.critedge452

.critedge449:                                     ; preds = %.critedge447
  %i.at = call i32 @wc_MlKemKey_MakeKey(ptr noundef nonnull %i.g, ptr noundef nonnull %0) #7 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.critedge451, label %.critedge448

.critedge448:                                     ; preds = %.critedge449
  %i.av = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3998) ; 0 uses
  %i.aw = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite417 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.aw) ; 0 uses
  %i.ax = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.10) ; 0 uses
  %i.ay = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite418 = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.ay) ; 0 uses
  %i.az = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.at, i32 noundef 0) ; 0 uses
  %i.ba = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite419 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.ba) ; 0 uses
  %i.bb = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.bc = call i32 @fflush(ptr noundef %i.bb)     ; 0 uses
  br label %.critedge452

.critedge451:                                     ; preds = %.critedge449
  %i.bd = call i32 @wc_MlKemKey_Encapsulate(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %0) #7 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.critedge453, label %.critedge450

.critedge450:                                     ; preds = %.critedge451
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3999) ; 0 uses
  %i.bg = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite420 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bg) ; 0 uses
  %i.bh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.10) ; 0 uses
  %i.bi = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite421 = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.bi) ; 0 uses
  %i.bj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.bd, i32 noundef 0) ; 0 uses
  %i.bk = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite422 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.bk) ; 0 uses
  %i.bl = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.bm = call i32 @fflush(ptr noundef %i.bl)     ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  br label %.critedge458

.critedge453:                                     ; preds = %.critedge451
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.bn = load i32, ptr %i.f, align 4, !tbaa !12
  %i.bo = call i32 @wc_MlKemKey_Decapsulate(ptr noundef nonnull %i.g, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef %i.bn) #7 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.critedge457, label %bb.d

bb.d:                                             ; preds = %.critedge453
  %i.bq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 4004) ; 0 uses
  %i.br = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite423 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.br) ; 0 uses
  %i.bs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.10) ; 0 uses
  %i.bt = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite424 = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.bt) ; 0 uses
  %i.bu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.bo, i32 noundef 0) ; 0 uses
  %i.bv = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite425 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.bv) ; 0 uses
  %i.bw = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.bx = call i32 @fflush(ptr noundef %i.bw)     ; 0 uses
  br label %.critedge458

.critedge452:                                     ; preds = %.critedge448, %.critedge446, %.critedge443, %bb.c, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  br label %.critedge458

.critedge457:                                     ; preds = %.critedge453
  %i.by = call i32 @memcmp(ptr noundef nonnull dereferenceable(32) %i.d, ptr noundef nonnull dereferenceable(32) %i.c, i64 noundef 32) #8 ; 2 uses
end_hunk_0

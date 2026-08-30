Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/test_aes?download=true
begin_hunk_0_@test_wc_AesGcmSetKey:bb.a
  %i.ct = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.cs) ; 0 uses
  %i.cu = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.cv = call i32 @fflush(ptr noundef %i.cu)     ; 0 uses
  br label %.critedge369

.critedge369:                                     ; preds = %.critedge369.sink.split, %.critedge370
  %.19 = phi i32 [ 1, %.critedge370 ], [ 0, %.critedge369.sink.split ]
  call void @wc_AesFree(ptr noundef nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  ret i32 %.19
}

declare i32 @wc_AesGcmSetKey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_wc_AesGcmEncryptDecrypt_Sizes() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x [16 x i8]], align 16        ; 4 uses
  %i.b = alloca [256 x i8], align 16              ; 5 uses
  %i.c = alloca [5 x [16 x i8]], align 16         ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %0 = alloca %struct.Aes, align 16               ; 10 uses
  %i.e = alloca [16 x i8], align 16               ; 10 uses
  %i.f = alloca [12 x i8], align 1                ; 7 uses
  %i.g = alloca [256 x i8], align 16              ; 9 uses
  %i.h = alloca [256 x i8], align 16              ; 10 uses
  %i.i = alloca [256 x i8], align 16              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, ptr noundef nonnull align 16 dereferenceable(256) @__const.test_wc_AesGcmEncryptDecrypt_Sizes.expTagShort, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, ptr noundef nonnull align 16 dereferenceable(256) @__const.test_wc_AesGcmEncryptDecrypt_Sizes.expected, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 16 dereferenceable(80) @__const.test_wc_AesGcmEncryptDecrypt_Sizes.expTagLong, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, ptr noundef nonnull align 16 dereferenceable(32) @__const.test_wc_GmacSetKey.key32, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.f, ptr noundef nonnull align 1 dereferenceable(12) @__const.test_wc_AesGcmEncryptDecrypt.iv, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(848) %0, i8 0, i64 848, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.g, i8 -91, i64 256, i1 false)
  %i.j = call i32 @wc_AesInit(ptr noundef nonnull %0, ptr noundef null, i32 noundef -2) #10 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.critedge, label %.sink.split

.critedge:                                        ; preds = %bb.a
  %i.l = call i32 @wc_AesGcmSetKey(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 32) #10 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.preheader487, label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.a
  %.sink482 = phi i32 [ 3258, %bb.a ], [ 3260, %.critedge ]
  %.str.9.sink = phi ptr [ @.str.9, %bb.a ], [ @.str.30, %.critedge ]
  %.sink = phi i32 [ %i.j, %bb.a ], [ %i.l, %.critedge ]
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef %.sink482) ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.p = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.o) ; 0 uses
  %i.q = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %.str.9.sink, ptr noundef nonnull @.str.10) ; 0 uses
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.s = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.r) ; 0 uses
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %.sink, i32 noundef 0) ; 0 uses
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.v = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.u) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.x = call i32 @fflush(ptr noundef %i.w)       ; 0 uses
  br label %.preheader487

.preheader487:                                    ; preds = %.sink.split, %.critedge
  %.4466.ph = phi i32 [ 1, %.critedge ], [ 0, %.sink.split ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader487, %.critedge452
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge452 ], [ 0, %.preheader487 ] ; 5 uses
  %.4466 = phi i32 [ %.14, %.critedge452 ], [ %.4466.ph, %.preheader487 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.h, i8 0, i64 256, i1 false)
  %i.y = icmp eq i32 %.4466, 1
  br i1 %i.y, label %bb.c, label %.critedge449

bb.c:                                             ; preds = %bb.b
  %i.z = trunc nuw nsw i64 %indvars.iv to i32     ; 4 uses
  %i.aa = call i32 @wc_AesGcmEncrypt(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, i32 noundef %i.z, ptr noundef nonnull %i.f, i32 noundef 12, ptr noundef nonnull %i.e, i32 noundef 16, ptr noundef null, i32 noundef 0) #10 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.critedge446, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3264) ; 0 uses
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ae = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ad) ; 0 uses
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.10) ; 0 uses
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ah = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ag) ; 0 uses
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.aa, i32 noundef 0) ; 0 uses
  br label %.critedge449.sink.split

.critedge446:                                     ; preds = %bb.c
  %bcmp440 = call i32 @bcmp(ptr nonnull %i.h, ptr nonnull %i.b, i64 %indvars.iv)
  %i.aj = icmp eq i32 %bcmp440, 0
  br i1 %i.aj, label %.critedge448, label %.critedge444

.critedge444:                                     ; preds = %.critedge446
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3265) ; 0 uses
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.am = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.al) ; 0 uses
  %i.an = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) ; 0 uses
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ap = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ao) ; 0 uses
  %i.aq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, i32 noundef %i.z) ; 0 uses
  br label %.critedge449.sink.split

.critedge448:                                     ; preds = %.critedge446
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.as = load i128, ptr %i.e, align 16
  %i.at = load i128, ptr %i.ar, align 1
  %i.au = icmp ne i128 %i.as, %i.at
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.critedge450, label %.critedge447

.critedge447:                                     ; preds = %.critedge448
  %i.ax = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3266) ; 0 uses
  %i.ay = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.az = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ay) ; 0 uses
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) ; 0 uses
  %i.bb = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bc = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bb) ; 0 uses
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ar, i32 noundef 16) ; 0 uses
  %i.be = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bf = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.be) ; 0 uses
  %i.bg = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bh = call i32 @fflush(ptr noundef %i.bg)     ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.i, i8 -1, i64 256, i1 false)
  br label %.critedge452

.critedge450:                                     ; preds = %.critedge448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.i, i8 -1, i64 256, i1 false)
  %i.bi = call i32 @wc_AesGcmDecrypt(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.h, i32 noundef %i.z, ptr noundef nonnull %i.f, i32 noundef 12, ptr noundef nonnull %i.e, i32 noundef 16, ptr noundef null, i32 noundef 0) #10 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.critedge454, label %bb.e

bb.e:                                             ; preds = %.critedge450
  %i.bk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3271) ; 0 uses
  %i.bl = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bm = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bl) ; 0 uses
  %i.bn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.10) ; 0 uses
  %i.bo = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bp = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bo) ; 0 uses
  %i.bq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bi, i32 noundef 0) ; 0 uses
  %i.br = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bs = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.br) ; 0 uses
  %i.bt = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bu = call i32 @fflush(ptr noundef %i.bt)     ; 0 uses
  br label %.critedge452

.critedge449.sink.split:                          ; preds = %bb.d, %.critedge444
  %i.bv = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bw = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bv) ; 0 uses
  %i.bx = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.by = call i32 @fflush(ptr noundef %i.bx)     ; 0 uses
  br label %.critedge449

.critedge449:                                     ; preds = %.critedge449.sink.split, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.i, i8 -1, i64 256, i1 false)
  br label %.critedge452

.critedge454:                                     ; preds = %.critedge450
  %bcmp442 = call i32 @bcmp(ptr nonnull %i.i, ptr nonnull %i.g, i64 %indvars.iv)
  %i.bz = icmp eq i32 %bcmp442, 0
  br i1 %i.bz, label %.critedge452, label %bb.f

bb.f:                                             ; preds = %.critedge454
  %i.ca = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3272) ; 0 uses
  %i.cb = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.cc = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.cb) ; 0 uses
  %i.cd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.40) ; 0 uses
  %i.ce = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.cf = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ce) ; 0 uses
  %i.cg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, i32 noundef %i.z) ; 0 uses
  %i.ch = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ci = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ch) ; 0 uses
  %i.cj = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ck = call i32 @fflush(ptr noundef %i.cj)     ; 0 uses
  br label %.critedge452

.critedge452:                                     ; preds = %bb.e, %.critedge447, %.critedge449, %.critedge454, %bb.f
  %.14 = phi i32 [ 1, %.critedge454 ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %.critedge447 ], [ 0, %.critedge449 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !20

.preheader:                                       ; preds = %.critedge452, %.critedge460
  %indvars.iv471 = phi i64 [ %indvars.iv.next472, %.critedge460 ], [ 0, %.critedge452 ] ; 2 uses
  %.15469 = phi i32 [ %.23, %.critedge460 ], [ %.14, %.critedge452 ]
  %.1431468 = phi i32 [ %i.em, %.critedge460 ], [ 16, %.critedge452 ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.h, i8 0, i64 256, i1 false)
  %i.cl = icmp eq i32 %.15469, 1
  br i1 %i.cl, label %bb.g, label %.critedge456.thread

bb.g:                                             ; preds = %.preheader
  %i.cm = call i32 @wc_AesGcmEncrypt(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, i32 noundef %.1431468, ptr noundef nonnull %i.f, i32 noundef 12, ptr noundef nonnull %i.e, i32 noundef 16, ptr noundef null, i32 noundef 0) #10 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.critedge458, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.co = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3280) ; 0 uses
  %i.cp = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.cq = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.cp) ; 0 uses
  %i.cr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.10) ; 0 uses
  %i.cs = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ct = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cs) ; 0 uses
  %i.cu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.cm, i32 noundef 0) ; 0 uses
  br label %.critedge456.thread.sink.split

.critedge458:                                     ; preds = %bb.g
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv471 ; 2 uses
  %i.cw = load i128, ptr %i.e, align 16
  %i.cx = load i128, ptr %i.cv, align 1
  %i.cy = icmp ne i128 %i.cw, %i.cx
  %i.cz = zext i1 %i.cy to i32
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge458
  %i.db = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3281) ; 0 uses
  %i.dc = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.dd = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.dc) ; 0 uses
  %i.de = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.43) ; 0 uses
  %i.df = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.dg = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.df) ; 0 uses
  %i.dh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull %i.e, ptr noundef nonnull %i.cv, i32 noundef 16) ; 0 uses
  br label %.critedge456.thread.sink.split

.critedge456.thread.sink.split:                   ; preds = %bb.i, %bb.h
  %i.di = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.dj = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.di) ; 0 uses
  %i.dk = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.dl = call i32 @fflush(ptr noundef %i.dk)     ; 0 uses
  br label %.critedge456.thread

.critedge456.thread:                              ; preds = %.critedge456.thread.sink.split, %.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.i, i8 -1, i64 256, i1 false)
  br label %.critedge460

bb.j:                                             ; preds = %.critedge458
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.i, i8 -1, i64 256, i1 false)
  %i.dm = call i32 @wc_AesGcmDecrypt(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.h, i32 noundef %.1431468, ptr noundef nonnull %i.f, i32 noundef 12, ptr noundef nonnull %i.e, i32 noundef 16, ptr noundef null, i32 noundef 0) #10 ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %.critedge462, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3287) ; 0 uses
  %i.dp = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.dq = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.dp) ; 0 uses
  %i.dr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.10) ; 0 uses
  %i.ds = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.dt = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ds) ; 0 uses
  %i.du = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.dm, i32 noundef 0) ; 0 uses
  %i.dv = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.dw = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.dv) ; 0 uses
  %i.dx = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.dy = call i32 @fflush(ptr noundef %i.dx)     ; 0 uses
  br label %.critedge460

.critedge462:                                     ; preds = %bb.j
  %i.dz = zext nneg i32 %.1431468 to i64
  %bcmp439 = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.g, i64 %i.dz)
  %i.ea = icmp eq i32 %bcmp439, 0
  br i1 %i.ea, label %.critedge460, label %bb.l

bb.l:                                             ; preds = %.critedge462
  %i.eb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3288) ; 0 uses
  %i.ec = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ed = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ec) ; 0 uses
  %i.ee = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.40) ; 0 uses
  %i.ef = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.eg = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ef) ; 0 uses
  %i.eh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, i32 noundef %.1431468) ; 0 uses
  %i.ei = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ej = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ei) ; 0 uses
  %i.ek = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.el = call i32 @fflush(ptr noundef %i.ek)     ; 0 uses
  br label %.critedge460

.critedge460:                                     ; preds = %.critedge456.thread, %bb.k, %.critedge462, %bb.l
  %.23 = phi i32 [ 1, %.critedge462 ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %.critedge456.thread ] ; 2 uses
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %i.em = shl nuw nsw i32 %.1431468, 1
  %exitcond474.not = icmp eq i64 %indvars.iv.next472, 5
  br i1 %exitcond474.not, label %bb.m, label %.preheader, !llvm.loop !21

bb.m:                                             ; preds = %.critedge460
  call void @wc_AesFree(ptr noundef nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.23
}

declare i32 @wc_AesGcmEncrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wc_AesGcmDecrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_wc_AesGcmEncryptDecrypt() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.Aes, align 16               ; 18 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 10 uses
  %i.c = alloca [20 x i8], align 16               ; 17 uses
  %i.d = alloca [12 x i8], align 1                ; 15 uses
  %i.e = alloca [21 x i8], align 16               ; 4 uses
  %i.f = alloca [24 x i8], align 16               ; 16 uses
  %i.g = alloca [16 x i8], align 16               ; 16 uses
  %i.h = alloca [24 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @__const.test_wc_GmacSetKey.key32, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) @__const.test_wc_AesGcmEncryptDecrypt.vector, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.c, ptr noundef nonnull align 16 dereferenceable(20) @__const.test_wc_AesGcmEncryptDecrypt.a, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.d, ptr noundef nonnull align 1 dereferenceable(12) @__const.test_wc_AesGcmEncryptDecrypt.iv, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %i.e, ptr noundef nonnull align 16 dereferenceable(21) @__const.test_wc_AesGcmEncryptDecrypt.longIV, i64 21, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(848) %0, i8 0, i64 848, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.i = call i32 @wc_AesInit(ptr noundef nonnull %0, ptr noundef null, i32 noundef -2) #10 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3340) ; 0 uses
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.m = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.l) ; 0 uses
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.p = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.o) ; 0 uses
  %i.q = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.i, i32 noundef 0) ; 0 uses
  br label %.critedge625.sink.split

.critedge:                                        ; preds = %bb.a
  %i.r = call i32 @wc_AesGcmSetKey(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 32) #10 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.critedge598, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3342) ; 0 uses
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.v = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.u) ; 0 uses
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.10) ; 0 uses
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.y = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.x) ; 0 uses
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.r, i32 noundef 0) ; 0 uses
  br label %.critedge625.sink.split

.critedge598:                                     ; preds = %.critedge
  %i.aa = call i32 @wc_AesGcmEncrypt(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, i32 noundef 24, ptr noundef nonnull %i.d, i32 noundef 12, ptr noundef nonnull %i.g, i32 noundef 16, ptr noundef nonnull %i.c, i32 noundef 20) #10 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.critedge600, label %.critedge596

.critedge596:                                     ; preds = %.critedge598
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3344) ; 0 uses
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ae = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ad) ; 0 uses
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.10) ; 0 uses
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ah = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ag) ; 0 uses
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.aa, i32 noundef 0) ; 0 uses
  br label %.critedge625.sink.split

.critedge600:                                     ; preds = %.critedge598
  %i.aj = call i32 @wc_AesGcmDecrypt(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, i32 noundef 24, ptr noundef nonnull %i.d, i32 noundef 12, ptr noundef nonnull %i.g, i32 noundef 16, ptr noundef nonnull %i.c, i32 noundef 20) #10 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.critedge602, label %.critedge599

.critedge599:                                     ; preds = %.critedge600
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3346) ; 0 uses
  %i.am = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.an = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.am) ; 0 uses
  %i.ao = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.10) ; 0 uses
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.aq = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ap) ; 0 uses
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.aj, i32 noundef 0) ; 0 uses
  br label %.critedge625.sink.split

.critedge602:                                     ; preds = %.critedge600
  %i.as = call i32 @memcmp(ptr noundef nonnull dereferenceable(24) %i.b, ptr noundef nonnull dereferenceable(24) %i.h, i64 noundef 24) #11 ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.critedge604, label %.critedge601

.critedge601:                                     ; preds = %.critedge602
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3347) ; 0 uses
  %i.av = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.aw = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.av) ; 0 uses
  %i.ax = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.10) ; 0 uses
  %i.ay = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.az = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ay) ; 0 uses
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.as, i32 noundef 0) ; 0 uses
  br label %.critedge625.sink.split

.critedge604:                                     ; preds = %.critedge602
  %i.bb = call i32 @wc_AesGcmEncrypt(ptr noundef null, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, i32 noundef 24, ptr noundef nonnull %i.d, i32 noundef 12, ptr noundef nonnull %i.g, i32 noundef 16, ptr noundef nonnull %i.c, i32 noundef 20) #10 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, -173
  br i1 %i.bc, label %.critedge606, label %.critedge603

.critedge603:                                     ; preds = %.critedge604
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3352) ; 0 uses
  %i.be = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bf = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.be) ; 0 uses
  %i.bg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.5) ; 0 uses
  %i.bh = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bi = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bh) ; 0 uses
  %i.bj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bb, i32 noundef -173) ; 0 uses
  br label %.critedge625.sink.split

.critedge606:                                     ; preds = %.critedge604
  %i.bk = call i32 @wc_AesGcmEncrypt(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, i32 noundef 24, ptr noundef nonnull %i.d, i32 noundef 12, ptr noundef nonnull %i.g, i32 noundef 17, ptr noundef nonnull %i.c, i32 noundef 20) #10 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, -173
  br i1 %i.bl, label %.critedge608, label %.critedge605

.critedge605:                                     ; preds = %.critedge606
  %i.bm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3355) ; 0 uses
  %i.bn = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bo = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bn) ; 0 uses
  %i.bp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.5) ; 0 uses
  %i.bq = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.br = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bq) ; 0 uses
  %i.bs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bk, i32 noundef -173) ; 0 uses
  br label %.critedge625.sink.split

.critedge608:                                     ; preds = %.critedge606
  %i.bt = call i32 @wc_AesGcmEncrypt(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, i32 noundef 24, ptr noundef nonnull %i.d, i32 noundef 12, ptr noundef nonnull %i.g, i32 noundef 11, ptr noundef nonnull %i.c, i32 noundef 20) #10 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, -173
  br i1 %i.bu, label %.critedge610, label %.critedge607

.critedge607:                                     ; preds = %.critedge608
  %i.bv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3358) ; 0 uses
  %i.bw = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bx = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bw) ; 0 uses
  %i.by = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5) ; 0 uses
  %i.bz = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ca = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bz) ; 0 uses
  %i.cb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bt, i32 noundef -173) ; 0 uses
  br label %.critedge625.sink.split

.critedge610:                                     ; preds = %.critedge608
  %i.cc = call i32 @wc_AesGcmEncrypt(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, i32 noundef 24, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %i.g, i32 noundef 16, ptr noundef nonnull %i.c, i32 noundef 20) #10 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, -173
  br i1 %i.cd, label %.critedge612, label %.critedge609

.critedge609:                                     ; preds = %.critedge610
  %i.ce = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3367) ; 0 uses
  %i.cf = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.cg = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.cf) ; 0 uses
  %i.ch = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.5) ; 0 uses
  %i.ci = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.cj = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ci) ; 0 uses
  %i.ck = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.cc, i32 noundef -173) ; 0 uses
  br label %.critedge625.sink.split

.critedge612:                                     ; preds = %.critedge610
  %i.cl = call i32 @wc_AesGcmEncrypt(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, i32 noundef 24, ptr noundef nonnull %i.e, i32 noundef 21, ptr noundef nonnull %i.g, i32 noundef 16, ptr noundef nonnull %i.c, i32 noundef 20) #10 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.critedge614, label %.critedge611

.critedge611:                                     ; preds = %.critedge612
  %i.cn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 3378) ; 0 uses
  %i.co = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.cp = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.co) ; 0 uses
  %i.cq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.10) ; 0 uses
  %i.cr = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.cs = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cr) ; 0 uses
  %i.ct = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.cl, i32 noundef 0) ; 0 uses
  br label %.critedge625.sink.split
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/test_certman?download=true
inline.NumInlined: 31
inline.NumDeleted: 6
begin_hunk_0_@test_wolfSSL_CertManagerAPI:bb.a
  %i.lz = call i32 @fflush(ptr noundef %i.ly)     ; 0 uses
  br label %.critedge1335

.critedge1317:                                    ; preds = %.critedge1315
  %i.ma = call i32 @wolfSSL_CertManagerDisableOCSP(ptr noundef null) #13 ; 2 uses
  %i.mb = icmp eq i32 %i.ma, -173
  br i1 %i.mb, label %.critedge1319, label %.critedge1316

.critedge1316:                                    ; preds = %.critedge1317
  %i.mc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 141) ; 0 uses
  %i.md = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.me = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.md) ; 0 uses
  %i.mf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.13) ; 0 uses
  %i.mg = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.mh = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.mg) ; 0 uses
  %i.mi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.ma, i32 noundef -173) ; 0 uses
  %i.mj = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.mk = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.mj) ; 0 uses
  %i.ml = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.mm = call i32 @fflush(ptr noundef %i.ml)     ; 0 uses
  br label %.critedge1335

.critedge1319:                                    ; preds = %.critedge1317
  %i.mn = call i32 @wolfSSL_CertManagerEnableOCSPStapling(ptr noundef null) #13 ; 2 uses
  %i.mo = icmp eq i32 %i.mn, -173
  br i1 %i.mo, label %.critedge1321, label %.critedge1318

.critedge1318:                                    ; preds = %.critedge1319
  %i.mp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 143) ; 0 uses
  %i.mq = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.mr = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.mq) ; 0 uses
  %i.ms = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.13) ; 0 uses
  %i.mt = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.mu = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.mt) ; 0 uses
  %i.mv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.mn, i32 noundef -173) ; 0 uses
  %i.mw = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.mx = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.mw) ; 0 uses
  %i.my = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.mz = call i32 @fflush(ptr noundef %i.my)     ; 0 uses
  br label %.critedge1335

.critedge1321:                                    ; preds = %.critedge1319
  %i.na = call i32 @wolfSSL_CertManagerDisableOCSPStapling(ptr noundef null) #13 ; 2 uses
  %i.nb = icmp eq i32 %i.na, -173
  br i1 %i.nb, label %.critedge1323, label %.critedge1320

.critedge1320:                                    ; preds = %.critedge1321
  %i.nc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 145) ; 0 uses
  %i.nd = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.ne = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.nd) ; 0 uses
  %i.nf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.13) ; 0 uses
  %i.ng = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.nh = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.ng) ; 0 uses
  %i.ni = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.na, i32 noundef -173) ; 0 uses
  %i.nj = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.nk = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.nj) ; 0 uses
  %i.nl = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.nm = call i32 @fflush(ptr noundef %i.nl)     ; 0 uses
  br label %.critedge1335

.critedge1323:                                    ; preds = %.critedge1321
  %i.nn = call i32 @wolfSSL_CertManagerEnableOCSPMustStaple(ptr noundef null) #13 ; 2 uses
  %i.no = icmp eq i32 %i.nn, -173
  br i1 %i.no, label %.critedge1325, label %.critedge1322

.critedge1322:                                    ; preds = %.critedge1323
  %i.np = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 147) ; 0 uses
  %i.nq = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.nr = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.nq) ; 0 uses
  %i.ns = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.13) ; 0 uses
  %i.nt = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.nu = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.nt) ; 0 uses
  %i.nv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.nn, i32 noundef -173) ; 0 uses
  %i.nw = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.nx = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.nw) ; 0 uses
  %i.ny = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.nz = call i32 @fflush(ptr noundef %i.ny)     ; 0 uses
  br label %.critedge1335

.critedge1325:                                    ; preds = %.critedge1323
  %i.oa = call i32 @wolfSSL_CertManagerDisableOCSPMustStaple(ptr noundef null) #13 ; 2 uses
  %i.ob = icmp eq i32 %i.oa, -173
  br i1 %i.ob, label %.critedge1327, label %.critedge1324

.critedge1324:                                    ; preds = %.critedge1325
  %i.oc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 149) ; 0 uses
  %i.od = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.oe = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.od) ; 0 uses
  %i.of = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.13) ; 0 uses
  %i.og = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.oh = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.og) ; 0 uses
  %i.oi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.oa, i32 noundef -173) ; 0 uses
  %i.oj = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.ok = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.oj) ; 0 uses
  %i.ol = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.om = call i32 @fflush(ptr noundef %i.ol)     ; 0 uses
  br label %.critedge1335

.critedge1327:                                    ; preds = %.critedge1325
  %i.on = call i32 @wolfSSL_CertManagerDisableOCSPStapling(ptr noundef nonnull %i.b) #13 ; 2 uses
  %i.oo = icmp eq i32 %i.on, -174
  br i1 %i.oo, label %.critedge1329, label %.critedge1326

.critedge1326:                                    ; preds = %.critedge1327
  %i.op = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 153) ; 0 uses
  %i.oq = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.or = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.oq) ; 0 uses
  %i.os = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.42) ; 0 uses
  %i.ot = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.ou = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.ot) ; 0 uses
  %i.ov = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.on, i32 noundef -174) ; 0 uses
  %i.ow = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.ox = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.ow) ; 0 uses
  %i.oy = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.oz = call i32 @fflush(ptr noundef %i.oy)     ; 0 uses
  br label %.critedge1335

.critedge1329:                                    ; preds = %.critedge1327
  %i.pa = call i32 @wolfSSL_CertManagerEnableOCSPMustStaple(ptr noundef nonnull %i.b) #13 ; 2 uses
  %i.pb = icmp eq i32 %i.pa, -174
  br i1 %i.pb, label %.critedge1331, label %.critedge1328

.critedge1328:                                    ; preds = %.critedge1329
  %i.pc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 155) ; 0 uses
  %i.pd = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.pe = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.pd) ; 0 uses
  %i.pf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.42) ; 0 uses
  %i.pg = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.ph = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.pg) ; 0 uses
  %i.pi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.pa, i32 noundef -174) ; 0 uses
  %i.pj = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.pk = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.pj) ; 0 uses
  %i.pl = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.pm = call i32 @fflush(ptr noundef %i.pl)     ; 0 uses
  br label %.critedge1335

.critedge1331:                                    ; preds = %.critedge1329
  %i.pn = call i32 @wolfSSL_CertManagerDisableOCSPMustStaple(ptr noundef nonnull %i.b) #13 ; 2 uses
  %i.po = icmp eq i32 %i.pn, -174
  br i1 %i.po, label %.critedge1333, label %.critedge1330

.critedge1330:                                    ; preds = %.critedge1331
  %i.pp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 157) ; 0 uses
  %i.pq = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.pr = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.pq) ; 0 uses
  %i.ps = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.42) ; 0 uses
  %i.pt = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.pu = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.pt) ; 0 uses
  %i.pv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.pn, i32 noundef -174) ; 0 uses
  %i.pw = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.px = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.pw) ; 0 uses
  %i.py = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.pz = call i32 @fflush(ptr noundef %i.py)     ; 0 uses
  br label %.critedge1335

.critedge1333:                                    ; preds = %.critedge1331
  %i.qa = call i32 @wolfSSL_CertManager_up_ref(ptr noundef nonnull %i.b) #13 ; 2 uses
  %i.qb = icmp eq i32 %i.qa, 1
  br i1 %i.qb, label %.critedge1336, label %.critedge1332

.critedge1332:                                    ; preds = %.critedge1333
  %i.qc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 201) ; 0 uses
  %i.qd = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.qe = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.qd) ; 0 uses
  %i.qf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.45) ; 0 uses
  %i.qg = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.qh = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.qg) ; 0 uses
  %i.qi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.qa, i32 noundef 1) ; 0 uses
  %i.qj = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.qk = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.qj) ; 0 uses
  %i.ql = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.qm = call i32 @fflush(ptr noundef %i.ql)     ; 0 uses
  br label %.critedge1335

.critedge1336:                                    ; preds = %.critedge1333
  call void @wolfSSL_CertManagerFree(ptr noundef nonnull %i.b) #13
  call void @wolfSSL_CertManagerFree(ptr noundef nonnull %i.b) #13
  %i.qn = call ptr @wolfSSL_CertManagerNew_ex(ptr noundef null) #13 ; 2 uses
  %.not = icmp eq ptr %i.qn, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge1336
  %i.qo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 208) ; 0 uses
  %i.qp = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.qq = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.qp) ; 0 uses
  %i.qr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.4) ; 0 uses
  %i.qs = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.qt = call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.qs) ; 0 uses
  %i.qu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.qv = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.qw = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.qv) ; 0 uses
  %i.qx = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.qy = call i32 @fflush(ptr noundef %i.qx)     ; 0 uses
  br label %bb.e

.critedge1335:                                    ; preds = %.thread, %.critedge1332, %.critedge1330, %.critedge1326, %.critedge1322, %.critedge1318, %.critedge1314, %.critedge1310, %.critedge1306, %.critedge1302, %.critedge1298, %.critedge1294, %.critedge1290, %.critedge1286, %.critedge1282, %.critedge1278, %.critedge1274, %.critedge1270, %bb.c, %.critedge, %.critedge1272, %.critedge1276, %.critedge1280, %.critedge1284, %.critedge1288, %.critedge1292, %.critedge1296, %.critedge1300, %.critedge1304, %.critedge1308, %.critedge1312, %.critedge1316, %.critedge1320, %.critedge1324, %.critedge1328
  call void @wolfSSL_CertManagerFree(ptr noundef %i.b) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge1335, %.critedge1336
  %.69 = phi i32 [ 0, %bb.d ], [ 0, %.critedge1335 ], [ 1, %.critedge1336 ]
  %.1 = phi ptr [ null, %bb.d ], [ null, %.critedge1335 ], [ %i.qn, %.critedge1336 ]
  call void @wolfSSL_CertManagerFree(ptr noundef %.1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.69
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @wolfSSL_CertManagerNew_ex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #3

declare void @wolfSSL_CertManagerFree(ptr noundef) local_unnamed_addr #2

declare i32 @wolfSSL_CertManager_up_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @wolfSSL_CertManagerUnloadCAs(ptr noundef) local_unnamed_addr #2

declare i32 @wolfSSL_CertManagerLoadCABuffer_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wolfSSL_CertManagerVerifyBuffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wolfSSL_CertManagerVerify(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wolfSSL_CertManagerLoadCA(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wolfSSL_CertManagerEnableCRL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wolfSSL_CertManagerDisableCRL(ptr noundef) local_unnamed_addr #2

declare i32 @wolfSSL_CertManagerEnableOCSP(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wolfSSL_CertManagerDisableOCSP(ptr noundef) local_unnamed_addr #2

declare i32 @wolfSSL_CertManagerEnableOCSPStapling(ptr noundef) local_unnamed_addr #2

declare i32 @wolfSSL_CertManagerDisableOCSPStapling(ptr noundef) local_unnamed_addr #2

declare i32 @wolfSSL_CertManagerEnableOCSPMustStaple(ptr noundef) local_unnamed_addr #2

declare i32 @wolfSSL_CertManagerDisableOCSPMustStaple(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_wolfSSL_CertManagerLoadCABuffer() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @test_cm_load_ca_file(ptr noundef nonnull @.str.25) ; 4 uses
  %i.b = icmp slt i32 %i.a, 2
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 390) ; 0 uses
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.d) ; 0 uses
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.45) ; 0 uses
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.h = tail call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.g) ; 0 uses
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i32 noundef %i.a, i32 noundef 1) ; 0 uses
  br label %.thread145.sink.split

.critedge:                                        ; preds = %bb.a
  %i.j = icmp eq i32 %i.a, 1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 396) ; 0 uses
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.m = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.l) ; 0 uses
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.p = tail call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.o) ; 0 uses
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.a, i32 noundef 1) ; 0 uses
  br label %.thread145.sink.split

bb.d:                                             ; preds = %.critedge
  %i.r = tail call fastcc i32 @test_cm_load_ca_file(ptr noundef nonnull @.str.56) ; 4 uses
  %i.s = icmp slt i32 %i.r, 2
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 399) ; 0 uses
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.v = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.u) ; 0 uses
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.45) ; 0 uses
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.y = tail call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.x) ; 0 uses
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i32 noundef %i.r, i32 noundef 1) ; 0 uses
  br label %.thread145.sink.split

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq i32 %i.r, -151
  br i1 %i.aa, label %.thread145, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 406) ; 0 uses
  %i.ac = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.ad = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ac) ; 0 uses
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.63) ; 0 uses
  %i.af = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.ag = tail call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr %i.af) ; 0 uses
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.r, i32 noundef -151) ; 0 uses
  br label %.thread145.sink.split

.thread145.sink.split:                            ; preds = %bb.g, %bb.e, %bb.b, %bb.c
  %i.ai = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.aj = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.ai) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.al = tail call i32 @fflush(ptr noundef %i.ak) ; 0 uses
  br label %.thread145

.thread145:                                       ; preds = %.thread145.sink.split, %bb.f
  %.7 = phi i32 [ 1, %bb.f ], [ 0, %.thread145.sink.split ]
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @test_cm_load_ca_file(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 0, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !17
  %i.d = call fastcc i32 @load_file(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !13  ; 4 uses
  br i1 %i.e, label %bb.b, label %test_cm_load_ca_buffer.exit17.thread

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.g = tail call ptr @wolfSSL_CertManagerNew() #13 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %test_cm_load_ca_buffer.exit.thread, label %test_cm_load_ca_buffer.exit

test_cm_load_ca_buffer.exit.thread:               ; preds = %bb.b
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.j = tail call i64 @fwrite(ptr nonnull @.str.102, i64 23, i64 1, ptr %i.i) #14 ; 0 uses
  br label %test_cm_load_ca_buffer.exit17.thread

test_cm_load_ca_buffer.exit:                      ; preds = %bb.b
  %sext.i = shl i64 %i.f, 32
  %i.k = ashr exact i64 %sext.i, 32               ; 2 uses
  %i.l = tail call i32 @wolfSSL_CertManagerLoadCABuffer(ptr noundef nonnull %i.g, ptr noundef %.pre, i64 noundef %i.k, i32 noundef 1) #13 ; 2 uses
  tail call void @wolfSSL_CertManagerFree(ptr noundef nonnull %i.g) #13
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.c, label %test_cm_load_ca_buffer.exit17.thread

bb.c:                                             ; preds = %test_cm_load_ca_buffer.exit
  %i.n = add i64 %i.f, 1                          ; 2 uses
  %i.o = tail call ptr @wolfSSL_Realloc(ptr noundef %.pre, i64 noundef %i.n) #13 ; 8 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %test_cm_load_ca_buffer.exit17.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store i8 0, ptr %i.q, align 1, !tbaa !9
  %i.r = tail call ptr @wolfSSL_CertManagerNew() #13 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %test_cm_load_ca_buffer.exit17

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.u = tail call i64 @fwrite(ptr nonnull @.str.102, i64 23, i64 1, ptr %i.t) #14 ; 0 uses
  br label %test_cm_load_ca_buffer.exit17.thread.thread

test_cm_load_ca_buffer.exit17:                    ; preds = %bb.d
  %sext.i15 = shl i64 %i.n, 32
  %i.v = ashr exact i64 %sext.i15, 32
  %i.w = tail call i32 @wolfSSL_CertManagerLoadCABuffer(ptr noundef nonnull %i.r, ptr noundef nonnull %i.o, i64 noundef %i.v, i32 noundef 1) #13 ; 2 uses
  tail call void @wolfSSL_CertManagerFree(ptr noundef nonnull %i.r) #13
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.f, label %test_cm_load_ca_buffer.exit17.thread.thread

bb.f:                                             ; preds = %test_cm_load_ca_buffer.exit17
  %i.y = call i32 @wc_PemToDer(ptr noundef nonnull %i.o, i64 noundef %i.k, i32 noundef 6, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null, ptr noundef null) #13 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.ab = icmp ne ptr %i.aa, null
  %or.cond = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.g, label %test_cm_load_ca_buffer.exit17.thread.thread

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !21
  %i.af = call ptr @wolfSSL_CertManagerNew() #13  ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !10
end_hunk_0

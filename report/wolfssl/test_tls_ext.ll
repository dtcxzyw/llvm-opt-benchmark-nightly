Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/test_tls_ext?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@test_tls_ems_resumption_server_downgrade:bb.a
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !13
  call void @wolfSSL_free(ptr noundef %i.aj) #8
  store ptr null, ptr %i.d, align 8, !tbaa !13
  call void @test_memio_clear_buffer(ptr noundef nonnull %0, i32 noundef 0) #8
  call void @test_memio_clear_buffer(ptr noundef nonnull %0, i32 noundef 1) #8
  %i.ak = call i32 @test_memio_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @wolfTLSv1_2_client_method, ptr noundef nonnull @wolfTLSv1_2_server_method) #8 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.critedge476.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 272) ; 0 uses
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite440.i = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.an) ; 0 uses
  %i.ao = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) ; 0 uses
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite441.i = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ap) ; 0 uses
  %i.aq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ak, i32 noundef 0) ; 0 uses
  %i.ar = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite442.i = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ar) ; 0 uses
  %i.as = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.at = call i32 @fflush(ptr noundef %i.as)     ; 0 uses
  br label %test_tls_ems_resumption_server_downgrade_ex.exit

.critedge472.i:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0495.i = phi ptr [ %i.v, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  %i.au = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite429.i = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.au) ; 0 uses
  %i.av = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.aw = call i32 @fflush(ptr noundef %i.av)     ; 0 uses
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !13
  call void @wolfSSL_free(ptr noundef %i.ax) #8
  store ptr null, ptr %i.c, align 8, !tbaa !13
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !13
  call void @wolfSSL_free(ptr noundef %i.ay) #8
  store ptr null, ptr %i.d, align 8, !tbaa !13
  call void @test_memio_clear_buffer(ptr noundef nonnull %0, i32 noundef 0) #8
  call void @test_memio_clear_buffer(ptr noundef nonnull %0, i32 noundef 1) #8
  br label %test_tls_ems_resumption_server_downgrade_ex.exit

.critedge476.i:                                   ; preds = %bb.f
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ba = call i32 @wolfSSL_set_session(ptr noundef %i.az, ptr noundef nonnull %i.v) #8 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %.critedge480.i, label %bb.h

bb.h:                                             ; preds = %.critedge476.i
  %i.bc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 273) ; 0 uses
  %i.bd = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite443.i = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bd) ; 0 uses
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) ; 0 uses
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite444.i = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bf) ; 0 uses
  %i.bg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ba, i32 noundef 1) ; 0 uses
  %i.bh = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite445.i = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bh) ; 0 uses
  %i.bi = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.bj = call i32 @fflush(ptr noundef %i.bi)     ; 0 uses
  br label %test_tls_ems_resumption_server_downgrade_ex.exit

.critedge480.i:                                   ; preds = %.critedge476.i
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.bl = call i32 @wolfSSL_connect(ptr noundef %i.bk) #8 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %.critedge482.i, label %.critedge478.i

.critedge478.i:                                   ; preds = %.critedge480.i
  %i.bn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 276) ; 0 uses
  %i.bo = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite446.i = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bo) ; 0 uses
  %i.bp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.87) ; 0 uses
  %i.bq = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite447.i = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bq) ; 0 uses
  %i.br = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bl, i32 noundef -1) ; 0 uses
  %i.bs = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite448.i = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bs) ; 0 uses
  %i.bt = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.bu = call i32 @fflush(ptr noundef %i.bt)     ; 0 uses
  br label %test_tls_ems_resumption_server_downgrade_ex.exit

.critedge482.i:                                   ; preds = %.critedge480.i
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.bw = call i32 @wolfSSL_get_error(ptr noundef %i.bv, i32 noundef -1) #8 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 2
  br i1 %i.bx, label %.critedge484.i, label %.critedge481.i

.critedge481.i:                                   ; preds = %.critedge482.i
  %i.by = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 277) ; 0 uses
  %i.bz = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite449.i = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bz) ; 0 uses
  %i.ca = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.36) ; 0 uses
  %i.cb = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite450.i = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cb) ; 0 uses
  %i.cc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bw, i32 noundef 2) ; 0 uses
  %i.cd = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite451.i = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.cd) ; 0 uses
  %i.ce = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.cf = call i32 @fflush(ptr noundef %i.ce)     ; 0 uses
  br label %test_tls_ems_resumption_server_downgrade_ex.exit

.critedge484.i:                                   ; preds = %.critedge482.i
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ch = call i32 @wolfSSL_accept(ptr noundef %i.cg) #8 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, -1
  br i1 %i.ci, label %.critedge486.i, label %.critedge483.i

.critedge483.i:                                   ; preds = %.critedge484.i
  %i.cj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 279) ; 0 uses
  %i.ck = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite452.i = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ck) ; 0 uses
  %i.cl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.87) ; 0 uses
  %i.cm = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite453.i = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cm) ; 0 uses
  %i.cn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ch, i32 noundef -1) ; 0 uses
  %i.co = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite454.i = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.co) ; 0 uses
  %i.cp = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.cq = call i32 @fflush(ptr noundef %i.cp)     ; 0 uses
  br label %test_tls_ems_resumption_server_downgrade_ex.exit

.critedge486.i:                                   ; preds = %.critedge484.i
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cs = call i32 @wolfSSL_get_error(ptr noundef %i.cr, i32 noundef -1) #8 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 2
  br i1 %i.ct, label %.critedge488.i, label %.critedge485.i

.critedge485.i:                                   ; preds = %.critedge486.i
  %i.cu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 280) ; 0 uses
  %i.cv = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite455.i = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.cv) ; 0 uses
  %i.cw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.36) ; 0 uses
  %i.cx = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite456.i = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cx) ; 0 uses
  %i.cy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.cs, i32 noundef 2) ; 0 uses
  %i.cz = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite457.i = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.cz) ; 0 uses
  %i.da = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.db = call i32 @fflush(ptr noundef %i.da)     ; 0 uses
  br label %test_tls_ems_resumption_server_downgrade_ex.exit

.critedge488.i:                                   ; preds = %.critedge486.i
  %i.dc = call fastcc i32 @StripEmsFromServerHello(ptr noundef %0)
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %.critedge490.i, label %.critedge487.i

.critedge487.i:                                   ; preds = %.critedge488.i
  %i.de = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 282) ; 0 uses
  %i.df = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite458.i = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.df) ; 0 uses
  %i.dg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.5) ; 0 uses
  %i.dh = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite459.i = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.dh) ; 0 uses
  %i.di = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.dj = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite460.i = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.dj) ; 0 uses
  %i.dk = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.dl = call i32 @fflush(ptr noundef %i.dk)     ; 0 uses
  br label %test_tls_ems_resumption_server_downgrade_ex.exit

.critedge490.i:                                   ; preds = %.critedge488.i
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.dn = call i32 @wolfSSL_connect(ptr noundef %i.dm) #8 ; 2 uses
  %i.do = icmp eq i32 %i.dn, -1
  br i1 %i.do, label %.critedge492.i, label %.critedge489.i

.critedge489.i:                                   ; preds = %.critedge490.i
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 284) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite461.i = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.dq) ; 0 uses
  %i.dr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.87) ; 0 uses
  %i.ds = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite462.i = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ds) ; 0 uses
  %i.dt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.dn, i32 noundef -1) ; 0 uses
  %i.du = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite463.i = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.du) ; 0 uses
  %i.dv = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.dw = call i32 @fflush(ptr noundef %i.dv)     ; 0 uses
  br label %test_tls_ems_resumption_server_downgrade_ex.exit

.critedge492.i:                                   ; preds = %.critedge490.i
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.dy = call i32 @wolfSSL_get_error(ptr noundef %i.dx, i32 noundef -1) #8 ; 2 uses
  %i.dz = icmp eq i32 %i.dy, -414
  br i1 %i.dz, label %test_tls_ems_resumption_server_downgrade_ex.exit, label %bb.i

bb.i:                                             ; preds = %.critedge492.i
  %i.ea = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 286) ; 0 uses
  %i.eb = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite464.i = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.eb) ; 0 uses
  %i.ec = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.19) ; 0 uses
  %i.ed = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite465.i = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ed) ; 0 uses
  %i.ee = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.dy, i32 noundef -414) ; 0 uses
  %i.ef = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite466.i = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ef) ; 0 uses
  %i.eg = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.eh = call i32 @fflush(ptr noundef %i.eg)     ; 0 uses
  br label %test_tls_ems_resumption_server_downgrade_ex.exit

test_tls_ems_resumption_server_downgrade_ex.exit: ; preds = %bb.g, %.critedge472.i, %bb.h, %.critedge478.i, %.critedge481.i, %.critedge483.i, %.critedge485.i, %.critedge487.i, %.critedge489.i, %.critedge492.i, %bb.i
  %.0494.i = phi ptr [ %i.v, %.critedge492.i ], [ %i.v, %.critedge489.i ], [ %i.v, %bb.i ], [ %i.v, %.critedge485.i ], [ %i.v, %.critedge481.i ], [ %i.v, %bb.h ], [ %i.v, %bb.g ], [ %.0495.i, %.critedge472.i ], [ %i.v, %.critedge478.i ], [ %i.v, %.critedge483.i ], [ %i.v, %.critedge487.i ]
  %.not = phi i1 [ false, %.critedge492.i ], [ true, %.critedge489.i ], [ true, %bb.i ], [ true, %.critedge485.i ], [ true, %.critedge481.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %.critedge472.i ], [ true, %.critedge478.i ], [ true, %.critedge483.i ], [ true, %.critedge487.i ]
  %.23.i = phi i32 [ 1, %.critedge492.i ], [ 0, %.critedge489.i ], [ 0, %bb.i ], [ 0, %.critedge485.i ], [ 0, %.critedge481.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %.critedge472.i ], [ 0, %.critedge478.i ], [ 0, %.critedge483.i ], [ 0, %.critedge487.i ]
  call void @wolfSSL_SESSION_free(ptr noundef %.0494.i) #8
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !13
  call void @wolfSSL_free(ptr noundef %i.ei) #8
  %i.ej = load ptr, ptr %i.d, align 8, !tbaa !13
  call void @wolfSSL_free(ptr noundef %i.ej) #8
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !11
  call void @wolfSSL_CTX_free(ptr noundef %i.ek) #8
  %i.el = load ptr, ptr %i.b, align 8, !tbaa !11
  call void @wolfSSL_CTX_free(ptr noundef %i.el) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %test_tls_ems_resumption_server_downgrade_ex.exit
  %i.em = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 307) ; 0 uses
  %i.en = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.en) ; 0 uses
  %i.eo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) ; 0 uses
  %i.ep = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite35 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ep) ; 0 uses
  %i.eq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %.23.i, i32 noundef 1) ; 0 uses
  %i.er = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite36 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.er) ; 0 uses
  %i.es = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.et = call i32 @fflush(ptr noundef %i.es)     ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %test_tls_ems_resumption_server_downgrade_ex.exit, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ 1, %test_tls_ems_resumption_server_downgrade_ex.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_tls12_chacha20_poly1305_bad_tag() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.test_memio_ctx, align 8     ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 12 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store ptr null, ptr %i.c, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store ptr null, ptr %i.d, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 1 dereferenceable(10) @__const.test_tls12_chacha20_poly1305_bad_tag.msg, i64 10, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131384) %0, i8 0, i64 131384, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 131096
  store ptr @.str.22, ptr %i.g, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 65544
  store ptr @.str.22, ptr %i.h, align 8, !tbaa !21
  %i.i = call i32 @test_memio_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @wolfTLSv1_2_client_method, ptr noundef nonnull @wolfTLSv1_2_server_method) #8 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.critedge, label %.critedge196.critedge

.critedge:                                        ; preds = %bb.a
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.m = call i32 @test_memio_do_handshake(ptr noundef %i.k, ptr noundef %i.l, i32 noundef 10, ptr noundef null) #8 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge194, label %.critedge196.critedge

.critedge194:                                     ; preds = %.critedge
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !13
  call void @wolfSSL_SSLSetIORecv(ptr noundef %i.o, ptr noundef nonnull @test_chacha_bad_tag_io_recv) #8
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.q = call i32 @wolfSSL_write(ptr noundef %i.p, ptr noundef nonnull %i.e, i32 noundef 9) #8 ; 2 uses
  %i.r = icmp eq i32 %i.q, 9
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge194
  %i.s = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 364) ; 0 uses
  %i.t = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite182 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.t) ; 0 uses
  %i.u = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) ; 0 uses
  %i.v = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite183 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.v) ; 0 uses
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.q, i32 noundef 9) ; 0 uses
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite184 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.x) ; 0 uses
  %i.y = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.z = call i32 @fflush(ptr noundef %i.y)       ; 0 uses
  store i1 true, ptr @test_chacha_bad_tag_trigger, align 4
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ab = call i32 @wolfSSL_read(ptr noundef %i.aa, ptr noundef nonnull %i.f, i32 noundef 32) #8 ; 0 uses
  br label %.critedge196

bb.c:                                             ; preds = %.critedge194
  store i1 true, ptr @test_chacha_bad_tag_trigger, align 4
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ad = call i32 @wolfSSL_read(ptr noundef %i.ac, ptr noundef nonnull %i.f, i32 noundef 32) #8 ; 3 uses
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %.critedge198, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 368) ; 0 uses
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite185 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ag) ; 0 uses
  %i.ah = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.5) ; 0 uses
  %i.ai = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite186 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ai) ; 0 uses
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.ad, i32 noundef 0) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite187 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ak) ; 0 uses
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.am = call i32 @fflush(ptr noundef %i.al)     ; 0 uses
  br label %.critedge196

.critedge198:                                     ; preds = %bb.c
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ao = call i32 @wolfSSL_get_error(ptr noundef %i.an, i32 noundef %i.ad) #8 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, -305
  br i1 %i.ap, label %.critedge196, label %bb.e

bb.e:                                             ; preds = %.critedge198
  %i.aq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 370) ; 0 uses
  %i.ar = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite188 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ar) ; 0 uses
  %i.as = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) ; 0 uses
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite189 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.at) ; 0 uses
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ao, i32 noundef -305) ; 0 uses
  %i.av = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite190 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.av) ; 0 uses
  %i.aw = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ax = call i32 @fflush(ptr noundef %i.aw)     ; 0 uses
  br label %.critedge196

.critedge196.critedge:                            ; preds = %.critedge, %bb.a
  %.sink206 = phi i32 [ 358, %bb.a ], [ 359, %.critedge ]
  %.str.9.sink = phi ptr [ @.str.4, %bb.a ], [ @.str.9, %.critedge ]
  %.sink = phi i32 [ %i.i, %bb.a ], [ %i.m, %.critedge ]
  %i.ay = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef %.sink206) ; 0 uses
  %i.az = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite179 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.az) ; 0 uses
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %.str.9.sink, ptr noundef nonnull @.str.5) ; 0 uses
  %i.bb = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite180 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bb) ; 0 uses
  %i.bc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %.sink, i32 noundef 0) ; 0 uses
  %i.bd = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite181 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bd) ; 0 uses
  %i.be = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.bf = call i32 @fflush(ptr noundef %i.be)     ; 0 uses
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !13
  call void @wolfSSL_SSLSetIORecv(ptr noundef %i.bg, ptr noundef nonnull @test_chacha_bad_tag_io_recv) #8
  store i1 true, ptr @test_chacha_bad_tag_trigger, align 4
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bi = call i32 @wolfSSL_read(ptr noundef %i.bh, ptr noundef nonnull %i.f, i32 noundef 32) #8 ; 0 uses
  br label %.critedge196

.critedge196:                                     ; preds = %bb.b, %bb.d, %.critedge196.critedge, %.critedge198, %bb.e
  %.9 = phi i32 [ 1, %.critedge198 ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %.critedge196.critedge ]
  store i1 false, ptr @test_chacha_bad_tag_trigger, align 4
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !13
  call void @wolfSSL_free(ptr noundef %i.bj) #8
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !13
  call void @wolfSSL_free(ptr noundef %i.bk) #8
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !11
  call void @wolfSSL_CTX_free(ptr noundef %i.bl) #8
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !11
  call void @wolfSSL_CTX_free(ptr noundef %i.bm) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  ret i32 %.9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @wolfSSL_SSLSetIORecv(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @test_chacha_bad_tag_io_recv(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
bb.a:
  %i.a = tail call i32 @test_memio_read_cb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #8 ; 3 uses
  %.b = load i1, ptr @test_chacha_bad_tag_trigger, align 4
  %i.b = icmp sgt i32 %i.a, 5
  %or.cond = select i1 %.b, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr i8, ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -1       ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !22
  %i.g = xor i8 %i.f, -1
  store i8 %i.g, ptr %i.e, align 1, !tbaa !22
  store i1 false, ptr @test_chacha_bad_tag_trigger, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.a
}

declare i32 @wolfSSL_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wolfSSL_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_tls13_null_cipher_bad_hmac() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_scr_verify_data_mismatch() local_unnamed_addr #0 {
bb.a:
  ret i32 3
end_hunk_0

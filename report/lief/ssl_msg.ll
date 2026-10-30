Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ssl_msg?download=true
inline.NumInlined: 166
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@mbedtls_ssl_encrypt_buf:bb.a
  %i.ch = call i32 @psa_mac_sign_finish(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef 48, ptr noundef nonnull %i.d) #19 ; 2 uses
  %.not270 = icmp eq i32 %i.ch, 0
  br i1 %.not270, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ci = load i64, ptr %i.u, align 8, !tbaa !40
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ci
  %i.ck = load i64, ptr %i.bs, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr nonnull align 16 %i.c, i64 %i.ck, i1 false)
  %i.cl = load i64, ptr %i.bs, align 8, !tbaa !53 ; 2 uses
  %i.cm = load i64, ptr %i.u, align 8, !tbaa !40
  %i.cn = add i64 %i.cm, %i.cl
  store i64 %i.cn, ptr %i.u, align 8, !tbaa !40
  %i.co = sub i64 %i.br, %i.cl
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.u
  %.0223 = phi i32 [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.t ], [ 1, %bb.u ]
  %.0221 = phi i64 [ %i.br, %bb.q ], [ %i.br, %bb.r ], [ %i.br, %bb.s ], [ %i.br, %bb.t ], [ %i.co, %bb.u ]
  %.0218 = phi i32 [ %i.cc, %bb.q ], [ %i.ce, %bb.r ], [ %i.cg, %bb.s ], [ %i.ch, %bb.t ], [ 0, %bb.u ]
  %i.cp = load i64, ptr %i.bs, align 8, !tbaa !53
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.c, i64 noundef %i.cp) #19
  %i.cq = call i32 @psa_status_to_mbedtls(i32 noundef %.0218, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #19 ; 2 uses
  %i.cr = call i32 @psa_mac_abort(ptr noundef nonnull %3) #19 ; 2 uses
  %i.cs = icmp eq i32 %i.cq, 0
  %i.ct = icmp ne i32 %i.cr, 0
  %or.cond8 = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %or.cond8, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cu = call i32 @psa_status_to_mbedtls(i32 noundef %i.cr, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0219 = phi i32 [ %i.cu, %bb.w ], [ %i.cq, %bb.v ] ; 2 uses
  %.not271 = icmp eq i32 %.0219, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br i1 %.not271, label %.thread, label %.critedge

bb.y:                                             ; preds = %bb.o
  %i.cv = icmp eq i32 %i.z, 3
  br i1 %i.cv, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.cw = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.cw, align 8, !tbaa !46 ; 2 uses
  %i.cx = getelementptr i8, ptr %1, i64 16
  %.val291 = load i64, ptr %i.cx, align 8, !tbaa !47 ; 2 uses
  %.not326 = icmp eq i64 %.val, %.val291
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !48 ; 2 uses
  %i.da = icmp ult i64 %i.br, %i.cz
  br i1 %i.da, label %.thread304, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.e, i8 0, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull readonly align 8 %i.db, i64 %.val291, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %.0.copyload.i11.i = load i64, ptr %i.dc, align 1
  %.0.copyload.i.i = load i64, ptr %2, align 8
  %i.dd = xor i64 %.0.copyload.i.i, %.0.copyload.i11.i
  store i64 %i.dd, ptr %i.dc, align 1
  %i.de = load i32, ptr %i.ai, align 8, !tbaa !49
  call fastcc void @ssl_extract_add_data_from_record(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %2, i32 noundef %i.de, i64 noundef %i.cz)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !60
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !51
  %i.dj = load i64, ptr %i.b, align 8, !tbaa !52
  %i.dk = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.dl = ptrtoint ptr %i.ac to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %.neg = sub i64 %i.bo, %i.dl
  %i.dn = add i64 %.neg, %i.dm
  %i.do = call i32 @psa_aead_encrypt(i32 noundef %i.dg, i32 noundef %i.di, ptr noundef nonnull %i.e, i64 noundef %.val, ptr noundef nonnull %i.a, i64 noundef %i.dj, ptr noundef %i.ac, i64 noundef %i.bn, ptr noundef %i.ac, i64 noundef %i.dn, ptr noundef nonnull %i.u) #19 ; 2 uses
  %.not284 = icmp eq i32 %i.do, 0
  br i1 %.not284, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dp = call i32 @psa_status_to_mbedtls(i32 noundef %i.do, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #19
  br label %.thread304

bb.ac:                                            ; preds = %bb.aa
  br i1 %.not326, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = load i64, ptr %i.q, align 8, !tbaa !39
  %i.dr = icmp ult i64 %i.dq, 8
  br i1 %i.dr, label %.thread304, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.dt = load i64, ptr %2, align 8
  store i64 %i.dt, ptr %i.ds, align 1
  %i.du = load <2 x i64>, ptr %i.q, align 8, !tbaa !52
  %i.dv = add <2 x i64> %i.du, <i64 -8, i64 8>
  store <2 x i64> %i.dv, ptr %i.q, align 8, !tbaa !52
  br label %bb.af

.thread304:                                       ; preds = %bb.ab, %bb.z, %bb.ad
  %.6235.ph = phi i32 [ -138, %bb.ad ], [ -138, %bb.z ], [ %i.dp, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %.critedge

bb.af:                                            ; preds = %bb.ac, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %.thread322

.thread:                                          ; preds = %bb.x, %bb.y
  %.1222303 = phi i64 [ %i.br, %bb.y ], [ %.0221, %bb.x ] ; 2 uses
  %.1224302 = phi i32 [ 0, %bb.y ], [ %.0223, %bb.x ]
  %i.dw = add i32 %i.z, -1
  %or.cond10 = icmp ult i32 %i.dw, 2
  br i1 %or.cond10, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, i8 0, i64 120, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !46 ; 2 uses
  %i.dz = load i64, ptr %i.u, align 8, !tbaa !40
  %i.ea = add i64 %i.dz, 1
  %i.eb = urem i64 %i.ea, %i.dy                   ; 2 uses
  %i.ec = sub nuw i64 %i.dy, %i.eb
  %i.ed = icmp eq i64 %i.eb, 0
  %spec.store.select = select i1 %i.ed, i64 0, i64 %i.ec ; 2 uses
  %i.ee = add i64 %spec.store.select, 1           ; 5 uses
  %i.ef = icmp ult i64 %.1222303, %i.ee
  br i1 %i.ef, label %.thread309, label %.preheader

.preheader:                                       ; preds = %bb.ag
  %i.eg = trunc i64 %spec.store.select to i8      ; 5 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.ee, i64 1) ; 2 uses
  %xtraiter = and i64 %umax, 3                    ; 3 uses
  %i.eh = icmp ult i64 %i.ee, 4
  br i1 %i.eh, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter = and i64 %umax, -4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.preheader.new
  %.0216331 = phi i64 [ 0, %.preheader.new ], [ %i.ex, %bb.ah ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.new ], [ %niter.next.3, %bb.ah ]
  %i.ei = load i64, ptr %i.u, align 8, !tbaa !40
  %i.ej = getelementptr i8, ptr %i.ac, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 %.0216331
  store i8 %i.eg, ptr %i.ek, align 1, !tbaa !34
  %i.el = load i64, ptr %i.u, align 8, !tbaa !40
  %i.em = getelementptr i8, ptr %i.ac, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 %.0216331
  %i.eo = getelementptr i8, ptr %i.en, i64 1
  store i8 %i.eg, ptr %i.eo, align 1, !tbaa !34
  %i.ep = load i64, ptr %i.u, align 8, !tbaa !40
  %i.eq = getelementptr i8, ptr %i.ac, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 %.0216331
  %i.es = getelementptr i8, ptr %i.er, i64 2
  store i8 %i.eg, ptr %i.es, align 1, !tbaa !34
  %i.et = load i64, ptr %i.u, align 8, !tbaa !40
  %i.eu = getelementptr i8, ptr %i.ac, i64 %i.et
  %i.ev = getelementptr i8, ptr %i.eu, i64 %.0216331
  %i.ew = getelementptr i8, ptr %i.ev, i64 3
  store i8 %i.eg, ptr %i.ew, align 1, !tbaa !34
  %i.ex = add nuw i64 %.0216331, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.ah, !llvm.loop !140

.unr-lcssa:                                       ; preds = %bb.ah
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %.0216331.epil.init = phi i64 [ 0, %.preheader ], [ %i.ex, %.unr-lcssa ]
  %lcmp.mod361 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod361)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader
  %.0216331.epil = phi i64 [ %.0216331.epil.init, %.epil.preheader ], [ %i.fb, %bb.ai ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ai ]
  %i.ey = load i64, ptr %i.u, align 8, !tbaa !40
  %i.ez = getelementptr i8, ptr %i.ac, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 %.0216331.epil
  store i8 %i.eg, ptr %i.fa, align 1, !tbaa !34
  %i.fb = add nuw i64 %.0216331.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ai, !llvm.loop !141

.epilog-lcssa:                                    ; preds = %bb.ai, %.unr-lcssa
  %i.fc = load i64, ptr %i.u, align 8, !tbaa !40
  %i.fd = add i64 %i.fc, %i.ee
  store i64 %i.fd, ptr %i.u, align 8, !tbaa !40
  %i.fe = sub i64 %.1222303, %i.ee
  %i.ff = load i64, ptr %i.q, align 8, !tbaa !39
  %i.fg = load i64, ptr %i.dx, align 8, !tbaa !46 ; 2 uses
  %i.fh = icmp ult i64 %i.ff, %i.fg
  br i1 %i.fh, label %.thread309, label %bb.aj

bb.aj:                                            ; preds = %.epilog-lcssa
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.fj = call i32 @psa_generate_random(ptr noundef nonnull %i.fi, i64 noundef %i.fg) #19 ; 2 uses
  %.not273 = icmp eq i32 %i.fj, 0
  br i1 %.not273, label %bb.ak, label %.thread309

bb.ak:                                            ; preds = %bb.aj
  %i.fk = load i64, ptr %i.dx, align 8, !tbaa !46 ; 2 uses
  %i.fl = sub i64 0, %i.fk
  %i.fm = getelementptr inbounds i8, ptr %i.ac, i64 %i.fl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fm, ptr nonnull align 8 %i.fi, i64 %i.fk, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !60
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !51
  %i.fr = call i32 @psa_cipher_encrypt_setup(ptr noundef nonnull %4, i32 noundef %i.fo, i32 noundef %i.fq) #19 ; 2 uses
  %.not274 = icmp eq i32 %i.fr, 0
  br i1 %.not274, label %bb.al, label %.thread309.sink.split

bb.al:                                            ; preds = %bb.ak
  %i.fs = load i64, ptr %i.dx, align 8, !tbaa !46
  %i.ft = call i32 @psa_cipher_set_iv(ptr noundef nonnull %4, ptr noundef nonnull %i.fi, i64 noundef %i.fs) #19 ; 2 uses
  %.not275 = icmp eq i32 %i.ft, 0
  br i1 %.not275, label %bb.am, label %.thread309.sink.split

bb.am:                                            ; preds = %bb.al
  %i.fu = load i64, ptr %i.u, align 8, !tbaa !40  ; 2 uses
  %i.fv = call i32 @psa_cipher_update(ptr noundef nonnull %4, ptr noundef nonnull %i.ac, i64 noundef %i.fu, ptr noundef nonnull %i.ac, i64 noundef %i.fu, ptr noundef nonnull %i.f) #19 ; 2 uses
  %.not276 = icmp eq i32 %i.fv, 0
  br i1 %.not276, label %bb.an, label %.thread309.sink.split

bb.an:                                            ; preds = %bb.am
  %i.fw = load i64, ptr %i.f, align 8, !tbaa !52  ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.fw
  %i.fy = load i64, ptr %i.u, align 8, !tbaa !40
  %i.fz = sub i64 %i.fy, %i.fw
  %i.ga = call i32 @psa_cipher_finish(ptr noundef nonnull %4, ptr noundef nonnull %i.fx, i64 noundef %i.fz, ptr noundef nonnull %i.g) #19 ; 2 uses
  %.not277 = icmp eq i32 %i.ga, 0
  br i1 %.not277, label %bb.ao, label %.thread309.sink.split

bb.ao:                                            ; preds = %bb.an
  %i.gb = load i64, ptr %i.g, align 8, !tbaa !52
  %i.gc = load i64, ptr %i.f, align 8, !tbaa !52
  %i.gd = add i64 %i.gc, %i.gb                    ; 3 uses
  store i64 %i.gd, ptr %i.f, align 8, !tbaa !52
  %i.ge = load i64, ptr %i.u, align 8, !tbaa !40
  %.not278 = icmp eq i64 %i.ge, %i.gd
  br i1 %.not278, label %bb.ap, label %.thread309

bb.ap:                                            ; preds = %bb.ao
  %i.gf = load i64, ptr %i.dx, align 8, !tbaa !46 ; 3 uses
  %i.gg = sub i64 0, %i.gf
  %i.gh = getelementptr inbounds i8, ptr %i.ac, i64 %i.gg ; 2 uses
  %i.gi = load i64, ptr %i.q, align 8, !tbaa !39
  %i.gj = sub i64 %i.gi, %i.gf
  store i64 %i.gj, ptr %i.q, align 8, !tbaa !39
  %i.gk = add i64 %i.gf, %i.gd
  store i64 %i.gk, ptr %i.u, align 8, !tbaa !40
  %i.gl = icmp eq i32 %.1224302, 0
  br i1 %i.gl, label %bb.aq, label %.thread313

.thread313:                                       ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br label %.thread322

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %5, i8 0, i64 400, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  store i64 0, ptr %i.i, align 8, !tbaa !52
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !53
  %i.go = icmp ult i64 %i.fe, %i.gn
  br i1 %i.go, label %.thread317, label %bb.ar

.thread317:                                       ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br label %.critedge

bb.ar:                                            ; preds = %bb.aq
  %i.gp = load i32, ptr %i.ai, align 8, !tbaa !49
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !48
  call fastcc void @ssl_extract_add_data_from_record(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %2, i32 noundef %i.gp, i64 noundef %i.gr)
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !59
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !55
  %i.gw = call i32 @psa_mac_sign_setup(ptr noundef nonnull %5, i32 noundef %i.gt, i32 noundef %i.gv) #19 ; 2 uses
  %.not279 = icmp eq i32 %i.gw, 0
  br i1 %.not279, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.gx = load i64, ptr %i.b, align 8, !tbaa !52
  %i.gy = call i32 @psa_mac_update(ptr noundef nonnull %5, ptr noundef nonnull %i.a, i64 noundef %i.gx) #19 ; 2 uses
  %.not280 = icmp eq i32 %i.gy, 0
  br i1 %.not280, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.gz = load i64, ptr %i.u, align 8, !tbaa !40
  %i.ha = call i32 @psa_mac_update(ptr noundef nonnull %5, ptr noundef nonnull %i.gh, i64 noundef %i.gz) #19 ; 2 uses
  %.not281 = icmp eq i32 %i.ha, 0
  br i1 %.not281, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.hb = call i32 @psa_mac_sign_finish(ptr noundef nonnull %5, ptr noundef nonnull %i.h, i64 noundef 48, ptr noundef nonnull %i.i) #19 ; 2 uses
  %.not282 = icmp eq i32 %i.hb, 0
  br i1 %.not282, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hc = load i64, ptr %i.u, align 8, !tbaa !40
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.hc
  %i.he = load i64, ptr %i.gm, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hd, ptr nonnull align 16 %i.h, i64 %i.he, i1 false)
  %i.hf = load i64, ptr %i.gm, align 8, !tbaa !53
  %i.hg = load i64, ptr %i.u, align 8, !tbaa !40
  %i.hh = add i64 %i.hg, %i.hf
  store i64 %i.hh, ptr %i.u, align 8, !tbaa !40
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.av
  %.not286.not = phi i1 [ true, %bb.ar ], [ true, %bb.as ], [ true, %bb.at ], [ true, %bb.au ], [ false, %bb.av ]
  %.0 = phi i32 [ %i.gw, %bb.ar ], [ %i.gy, %bb.as ], [ %i.ha, %bb.at ], [ %i.hb, %bb.au ], [ 0, %bb.av ]
  %i.hi = load i64, ptr %i.gm, align 8, !tbaa !53
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.h, i64 noundef %i.hi) #19
  %i.hj = call i32 @psa_status_to_mbedtls(i32 noundef %.0, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #19 ; 2 uses
  %i.hk = call i32 @psa_mac_abort(ptr noundef nonnull %5) #19 ; 2 uses
  %i.hl = icmp eq i32 %i.hj, 0
  %i.hm = icmp ne i32 %i.hk, 0
  %or.cond12 = select i1 %i.hl, i1 %i.hm, i1 false
  br i1 %or.cond12, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hn = call i32 @psa_status_to_mbedtls(i32 noundef %i.hk, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #19
  br label %bb.ay

.thread309.sink.split:                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %.sink = phi i32 [ %i.fv, %bb.am ], [ %i.fr, %bb.ak ], [ %i.ft, %bb.al ], [ %i.ga, %bb.an ]
  %i.ho = call i32 @psa_status_to_mbedtls(i32 noundef %.sink, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #19
  br label %.thread309

.thread309:                                       ; preds = %.thread309.sink.split, %bb.ag, %.epilog-lcssa, %bb.aj, %bb.ao
  %.9.ph = phi i32 [ -27648, %bb.ao ], [ %i.fj, %bb.aj ], [ -138, %.epilog-lcssa ], [ -138, %bb.ag ], [ %i.ho, %.thread309.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br label %.critedge

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.0217 = phi i32 [ %i.hn, %bb.ax ], [ %i.hj, %bb.aw ] ; 2 uses
  %.not283 = icmp ne i32 %.0217, 0                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  %brmerge = or i1 %.not286.not, %.not283
  %.0217.mux = select i1 %.not283, i32 %.0217, i32 -27648
  br i1 %brmerge, label %.critedge, label %.thread322

.thread322:                                       ; preds = %bb.ay, %.thread313, %bb.af
  br label %.critedge

.critedge:                                        ; preds = %bb.ay, %bb.m, %bb.l, %bb.i, %bb.h, %.thread322, %.thread317, %.thread309, %.thread304, %.thread, %bb.p, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.x
  %.10 = phi i32 [ -135, %bb.f ], [ -27648, %bb.a ], [ -27648, %bb.e ], [ -138, %bb.m ], [ -138, %.thread317 ], [ -27648, %.thread ], [ %.6235.ph, %.thread304 ], [ %.0217.mux, %bb.ay ], [ -138, %bb.p ], [ %.0219, %bb.x ], [ -27648, %bb.d ], [ -138, %bb.i ], [ -27648, %bb.b ], [ -27648, %bb.c ], [ %.9.ph, %.thread309 ], [ 0, %.thread322 ], [ -138, %bb.h ], [ -138, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.10
}

declare i32 @mbedtls_ssl_get_mode_from_transform(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ssl_extract_add_data_from_record(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3, i64 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = icmp eq i32 %3, 772
  br i1 %i.c, label %bb.b, label %bb.c

end_hunk_0

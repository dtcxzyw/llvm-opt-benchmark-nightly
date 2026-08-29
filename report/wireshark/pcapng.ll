Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/pcapng?download=true
inline.NumInlined: 157
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@pcapng_read_packet_block:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.af = load i32, ptr %i.ae, align 4
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 -13, ptr %6, align 4
  %i.ag = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef %3, i64 noundef 20)
  store ptr %i.ag, ptr %7, align 8
  br label %bb.aq

bb.j:                                             ; preds = %bb.h
  %i.ah = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef nonnull %9, i32 noundef 20, ptr noundef %6, ptr noundef %7)
  br i1 %i.ah, label %bb.k, label %bb.aq

bb.k:                                             ; preds = %bb.j
  %i.ai = load i8, ptr %4, align 8, !range !6, !noundef !7
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = load i16, ptr %9, align 4               ; 2 uses
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %rev = call i16 @llvm.bswap.i16(i16 %i.ak)
  %i.al = zext i16 %rev to i32
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.an = load i16, ptr %i.am, align 2
  %rev223 = call i16 @llvm.bswap.i16(i16 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ap) #17, !srcloc !43
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.as) #17, !srcloc !44
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.av) #17, !srcloc !45
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ay) #17, !srcloc !46
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ba = zext i16 %i.ak to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bk = load i32, ptr %i.bj, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.f, %bb.g, %bb.m
  %.sroa.0111.0 = phi i32 [ %i.be, %bb.m ], [ %i.z, %bb.g ], [ %i.aq, %bb.l ], [ %i.o, %bb.f ]
  %.sroa.7.0 = phi i32 [ %i.bg, %bb.m ], [ %i.ab, %bb.g ], [ %i.at, %bb.l ], [ %i.r, %bb.f ]
  %.sroa.12112.0 = phi i32 [ %i.bi, %bb.m ], [ %i.ad, %bb.g ], [ %i.aw, %bb.l ], [ %i.u, %bb.f ] ; 11 uses
  %.sroa.28.0 = phi i32 [ %i.bk, %bb.m ], [ %i.af, %bb.g ], [ %i.az, %bb.l ], [ %i.x, %bb.f ]
  %.sroa.33.0 = phi i32 [ %i.ba, %bb.m ], [ %i.k, %bb.g ], [ %i.al, %bb.l ], [ %i.l, %bb.f ] ; 4 uses
  %.sroa.41.0 = phi i16 [ %i.bc, %bb.m ], [ -1, %bb.g ], [ %rev223, %bb.l ], [ -1, %bb.f ] ; 2 uses
  %i.bl = getelementptr i8, ptr %4, i64 8         ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8
  %.not = icmp ult i32 %.sroa.33.0, %i.bo
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 -13, ptr %6, align 4
  %i.bp = load ptr, ptr %i.bl, align 8
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef %.sroa.33.0, i32 noundef %i.br)
  store ptr %i.bs, ptr %7, align 8
  br label %bb.aq

bb.p:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %i.bm, align 8
  %i.bu = zext i32 %.sroa.33.0 to i64
  %i.bv = getelementptr [40 x i8], ptr %i.bt, i64 %i.bu ; 6 uses
  %.sroa.0.0.copyload = load i32, ptr %i.bv, align 8 ; 5 uses
  %.sroa.8100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.8100.0.copyload = load i64, ptr %.sroa.8100.0..sroa_idx, align 8 ; 4 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %.sroa.13104.0.copyload = load i64, ptr %.sroa.13104.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %.sroa.14.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx, align 8 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 36
  %.sroa.15.0.copyload = load i8, ptr %.sroa.15.0..sroa_idx, align 4 ; 2 uses
  %i.bw = call i32 @wtap_max_snaplen_for_encap(i32 noundef %.sroa.0.0.copyload)
  %i.bx = icmp ugt i32 %.sroa.12112.0, %i.bw
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 -13, ptr %6, align 4
  %i.by = call i32 @wtap_max_snaplen_for_encap(i32 noundef %.sroa.0.0.copyload)
  %i.bz = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef %.sroa.12112.0, i32 noundef %i.by)
  store ptr %i.bz, ptr %7, align 8
  br label %bb.aq

bb.r:                                             ; preds = %bb.p
  %i.ca = sub i32 0, %.sroa.12112.0
  %i.cb = and i32 %i.ca, 3                        ; 4 uses
  %i.cc = zext i32 %3 to i64
  %i.cd = zext i32 %.sroa.12112.0 to i64
  %i.ce = add nuw nsw i64 %i.cd, 20
  %i.cf = zext nneg i32 %i.cb to i64
  %i.cg = add nuw nsw i64 %i.ce, %i.cf
  %i.ch = icmp samesign ugt i64 %i.cg, %i.cc      ; 2 uses
  br i1 %i.c, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  br i1 %i.ch, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  store i32 -13, ptr %6, align 4
  %i.ci = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef %3, i32 noundef %.sroa.12112.0)
  store ptr %i.ci, ptr %7, align 8
  br label %bb.aq

bb.u:                                             ; preds = %bb.r
  br i1 %i.ch, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 -13, ptr %6, align 4
  %i.cj = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef %3, i32 noundef %.sroa.12112.0)
  store ptr %i.cj, ptr %7, align 8
  br label %bb.aq

bb.w:                                             ; preds = %bb.s, %bb.u
  %i.ck = getelementptr i8, ptr %5, i64 16        ; 15 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  call void @wtap_setup_packet_rec(ptr noundef %i.cl, i32 noundef %.sroa.0.0.copyload)
  %i.cm = load ptr, ptr %i.ck, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 4
  store i32 7, ptr %i.cn, align 4
  %i.co = load ptr, ptr %i.ck, align 8
  %i.cp = getelementptr i8, ptr %i.co, i64 60
  store i32 %.sroa.33.0, ptr %i.cp, align 4
  %i.cq = load ptr, ptr %i.ck, align 8
  %i.cr = getelementptr i8, ptr %i.cq, i64 32
  store i32 %.sroa.12.0.copyload, ptr %i.cr, align 8
  %i.cs = load ptr, ptr %i.ck, align 8
  %i.ct = getelementptr i8, ptr %i.cs, i64 64
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(152) %i.ct, i8 noundef 0, i64 noundef 152, i1 noundef false) #18
  %i.cu = load ptr, ptr %i.ck, align 8
  %i.cv = call i32 @pcap_process_pseudo_header(ptr noundef %1, i1 noundef zeroext false, i32 noundef %.sroa.0.0.copyload, i32 noundef %.sroa.12112.0, ptr noundef %i.cu, ptr noundef %6, ptr noundef %7) ; 4 uses
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %bb.aq, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = load ptr, ptr %i.ck, align 8
  %i.cy = getelementptr i8, ptr %i.cx, i64 48
  %i.cz = zext i32 %.sroa.12112.0 to i33
  %i.da = zext nneg i32 %i.cv to i33              ; 2 uses
  %i.db = sub nsw i33 %i.cz, %i.da                ; 2 uses
  %i.dc = trunc i33 %i.db to i32
  %i.dd = icmp slt i33 %i.db, 0
  store i32 %i.dc, ptr %i.cy, align 8
  br i1 %i.dd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 -21, ptr %6, align 4
  %i.de = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef %i.cv, i32 noundef %.sroa.12112.0)
  store ptr %i.de, ptr %7, align 8
  br label %bb.aq

bb.z:                                             ; preds = %bb.x
  %i.df = load ptr, ptr %i.ck, align 8
  %i.dg = getelementptr i8, ptr %i.df, i64 52
  %i.dh = zext i32 %.sroa.28.0 to i33
  %i.di = sub nsw i33 %i.dh, %i.da                ; 2 uses
  %i.dj = trunc i33 %i.di to i32
  %i.dk = icmp slt i33 %i.di, 0
  store i32 %i.dj, ptr %i.dg, align 4
  br i1 %i.dk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dl = load ptr, ptr %i.ck, align 8
  %i.dm = getelementptr i8, ptr %i.dl, i64 52
  store i32 0, ptr %i.dm, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dn = zext i32 %.sroa.0111.0 to i64
  %i.do = shl nuw i64 %i.dn, 32
  %i.dp = zext i32 %.sroa.7.0 to i64
  %i.dq = or disjoint i64 %i.do, %i.dp            ; 2 uses
  %i.dr = udiv i64 %i.dq, %.sroa.8100.0.copyload
  %i.ds = load ptr, ptr %i.ck, align 8
  %i.dt = getelementptr i8, ptr %i.ds, i64 16
  store i64 %i.dr, ptr %i.dt, align 8
  %i.du = urem i64 %i.dq, %.sroa.8100.0.copyload  ; 5 uses
  %10 = icmp ugt i64 %i.du, 18446744073
  br i1 %10, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %.not251 = icmp eq i8 %.sroa.15.0.copyload, 0
  br i1 %.not251, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dv = udiv i64 %.sroa.8100.0.copyload, 1000000000
  %i.dw = udiv i64 %i.du, %i.dv
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.dx = and i64 %i.du, 4294967295
  %i.dy = mul nuw nsw i64 %i.dx, 1000000000
  %i.dz = lshr i64 %i.du, 32
  %i.ea = mul nuw nsw i64 %i.dz, 1000000000
  %i.eb = lshr i64 %i.dy, 32
  %i.ec = add nuw nsw i64 %i.eb, %i.ea
  %i.ed = add i8 %.sroa.15.0.copyload, -32
  %i.ee = zext nneg i8 %i.ed to i64
  %i.ef = lshr i64 %i.ec, %i.ee
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %11 = mul nuw i64 %i.du, 1000000000
  %i.eg = udiv i64 %11, %.sroa.8100.0.copyload
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.ae, %bb.af
  %.sink259 = phi i64 [ %i.dw, %bb.ad ], [ %i.ef, %bb.ae ], [ %i.eg, %bb.af ]
  %i.eh = trunc i64 %.sink259 to i32
  %i.ei = load ptr, ptr %i.ck, align 8
  %i.ej = getelementptr i8, ptr %i.ei, i64 24
  store i32 %i.eh, ptr %i.ej, align 8
  %i.ek = load ptr, ptr %i.ck, align 8
  %i.el = getelementptr i8, ptr %i.ek, i64 16     ; 2 uses
  %i.em = load i64, ptr %i.el, align 8
  %i.en = add i64 %i.em, %.sroa.13104.0.copyload
  store i64 %i.en, ptr %i.el, align 8
  %i.eo = load ptr, ptr %i.ck, align 8
  %i.ep = getelementptr i8, ptr %i.eo, i64 264
  %i.eq = sub i32 %.sroa.12112.0, %i.cv
  %i.er = call zeroext i1 @wtap_read_bytes_buffer(ptr noundef %1, ptr noundef %i.ep, i32 noundef %i.eq, ptr noundef %6, ptr noundef %7)
  br i1 %i.er, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %i.es = add i32 %.sroa.12112.0, 20              ; 2 uses
  %.not252 = icmp eq i32 %i.cb, 0
  br i1 %.not252, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.et = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef null, i32 noundef %i.cb, ptr noundef %6, ptr noundef %7)
  br i1 %i.et, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.eu = add i32 %i.es, %i.cb
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %.1209 = phi i32 [ %i.eu, %bb.aj ], [ %i.es, %bb.ah ]
  %i.ev = sub i32 %3, %.1209
  %i.ew = call zeroext i1 @pcapng_process_options(ptr noundef %1, ptr noundef %5, ptr noundef %4, i32 noundef %i.ev, ptr noundef nonnull @pcapng_process_packet_block_option, i32 noundef 0, ptr noundef %6, ptr noundef %7)
  br i1 %i.ew, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.ex = load ptr, ptr %i.e, align 8
  %i.ey = call i32 @wtap_block_get_uint32_option_value(ptr noundef %i.ex, i32 noundef 2, ptr noundef nonnull %i.a)
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fa = load i32, ptr %i.a, align 4
  %i.fb = lshr i32 %i.fa, 5
  %i.fc = and i32 %i.fb, 15                       ; 2 uses
  %.not253 = icmp eq i32 %i.fc, 0
  %i.fd = shl nuw nsw i32 %i.fc, 3
  %spec.select = select i1 %.not253, i32 %.sroa.14.0.copyload, i32 %i.fd
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0219 = phi i32 [ %.sroa.14.0.copyload, %bb.al ], [ %spec.select, %bb.am ]
  %i.fe = load ptr, ptr %i.e, align 8
  %i.ff = call i32 @wtap_block_get_uint64_option_value(ptr noundef %i.fe, i32 noundef 4, ptr noundef nonnull %i.b)
  %i.fg = icmp ne i32 %i.ff, 0
  %i.fh = icmp ne i16 %.sroa.41.0, -1
  %or.cond = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %or.cond, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fi = load ptr, ptr %i.e, align 8
  %i.fj = zext i16 %.sroa.41.0 to i64
  %i.fk = call i32 @wtap_block_add_uint64_option(ptr noundef %i.fi, i32 noundef 4, i64 noundef %i.fj) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fl = load ptr, ptr %i.ck, align 8
  %i.fm = load i8, ptr %4, align 8, !range !6, !noundef !7
  %i.fn = trunc nuw i8 %i.fm to i1
  call void @pcap_read_post_process(i1 noundef zeroext false, i32 noundef %.sroa.0.0.copyload, ptr noundef %i.fl, i1 noundef zeroext %i.fn, i32 noundef %.0219)
  %i.fo = getelementptr i8, ptr %5, i64 4
  store i8 0, ptr %i.fo, align 4
  %i.fp = load ptr, ptr %i.e, align 8
  %i.fq = load ptr, ptr %i.ck, align 8
  %i.fr = getelementptr i8, ptr %i.fq, i64 216
  store ptr %i.fp, ptr %i.fr, align 8
  store ptr null, ptr %i.e, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ag, %bb.ai, %bb.ak, %bb.w, %bb.j, %bb.d, %bb.y, %bb.v, %bb.t, %bb.q, %bb.o, %bb.i, %bb.c
  %.1 = phi i1 [ false, %bb.c ], [ false, %bb.o ], [ false, %bb.q ], [ false, %bb.t ], [ false, %bb.j ], [ false, %bb.y ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.d ], [ false, %bb.i ], [ true, %bb.ap ], [ false, %bb.ai ], [ false, %bb.ag ], [ false, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  ret i1 %.1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @pcapng_write_enhanced_packet_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.pcapng_block_header_s, align 4 ; 5 uses
  %5 = alloca %struct.compute_options_size_t, align 8 ; 6 uses
  %6 = alloca %struct.pcapng_enhanced_packet_block_s, align 4 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = getelementptr i8, ptr %1, i64 48         ; 5 uses
  %i.e = getelementptr i8, ptr %1, i64 64         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.f = load i32, ptr %i.d, align 8
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8
  %i.i = tail call i32 @wtap_max_snaplen_for_encap(i32 noundef %i.h)
  %i.j = icmp ugt i32 %i.f, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -22, ptr %2, align 4
  br label %pcapng_write_padding.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %1, i64 56         ; 5 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = tail call i32 @pcap_get_phdr_size(i32 noundef %i.l, ptr noundef %i.e) ; 3 uses
  %i.n = load i32, ptr %i.d, align 8
  %i.o = add i32 %i.m, %i.n
  %i.p = sub i32 0, %i.o
  %i.q = and i32 %i.p, 3                          ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 216        ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i32 0, ptr %5, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @compute_epb_option_size, ptr %i.t, align 8
  %i.u = call zeroext i1 @wtap_block_foreach_option(ptr noundef nonnull %i.s, ptr noundef nonnull @compute_block_option_size, ptr noundef nonnull %5) ; 0 uses
  %i.v = load i32, ptr %5, align 8                ; 2 uses
  %.not.i = icmp eq i32 %i.v, 0
  %i.w = add i32 %i.v, 4
  %spec.select.i = select i1 %.not.i, i32 0, i32 %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %spec.select.i, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = and i32 %i.y, 4
  %.not83 = icmp eq i32 %i.z, 0
  br i1 %.not83, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %0, i64 104       ; 4 uses
  store i32 0, ptr %6, align 4
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8
  %.not96 = icmp eq i32 %i.ad, 0
  br i1 %.not96, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ae = getelementptr i8, ptr %1, i64 32
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %1, i64 60
  %i.ag = load i32, ptr %i.af, align 4            ; 4 uses
  store i32 %i.ag, ptr %6, align 4
  %i.ah = and i32 %i.y, 8
  %.not85 = icmp eq i32 %i.ah, 0
  br i1 %.not85, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %0, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not86 = icmp eq ptr %i.aj, null
  br i1 %.not86, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %1, i64 8
  %i.am = load i32, ptr %i.al, align 8
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr [4 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = add i32 %i.ap, %i.ag                    ; 2 uses
  store i32 %i.aq, ptr %6, align 4
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %i.ar = phi ptr [ %i.ab, %.lr.ph ], [ %i.bi, %bb.l ]
  %i.as = phi i32 [ 0, %.lr.ph ], [ %i.bh, %bb.l ] ; 4 uses
  %i.at = load ptr, ptr %i.ar, align 8
  %i.au = zext i32 %i.as to i64
  %i.av = getelementptr [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  store ptr %i.aw, ptr %i.c, align 8
  %i.ax = call ptr @wtap_block_get_mandatory_data(ptr noundef %i.aw) ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = load i32, ptr %i.k, align 8
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.j, label %bb.l
end_hunk_0
begin_hunk_1_@pcapng_process_if_descr_block_option:bb.a
  %i.bg = load i8, ptr %i.be, align 1
  store i8 %i.bg, ptr %i.bf, align 1
  %i.bh = getelementptr i8, ptr %.0118141, i64 4
  %i.bi = getelementptr i8, ptr %i.aw, i64 4      ; 3 uses
  %i.bj = load i32, ptr %i.bh, align 1
  store i32 %i.bj, ptr %i.bi, align 1
  %i.bk = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bm = load i32, ptr %i.bi, align 4
  %i.bn = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bm) #17, !srcloc !105
  store i32 %i.bn, ptr %i.bi, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bo = getelementptr i8, ptr %.0118141, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.an
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !106

bb.u:                                             ; preds = %bb.a
  %i.bp = zext i16 %3 to i64
  %i.bq = tail call ptr @ws_utf8_make_valid(ptr noundef null, ptr noundef %4, i64 noundef %i.bp) ; 2 uses
  %i.br = getelementptr i8, ptr %0, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call i32 @wtap_block_add_string_option_owned(ptr noundef %i.bs, i32 noundef 12, ptr noundef %i.bq)
  %.not.i127 = icmp eq i32 %i.bt, 0
  br i1 %.not.i127, label %pcapng_process_unhandled_option.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @g_free(ptr noundef %i.bq)
  br label %pcapng_process_unhandled_option.exit

bb.w:                                             ; preds = %bb.a
  %i.bu = icmp eq i16 %3, 1
  br i1 %i.bu, label %bb.x, label %pcapng_process_unhandled_option.exit

bb.x:                                             ; preds = %bb.w
  %i.bv = getelementptr i8, ptr %0, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load i8, ptr %4, align 1
  %i.by = tail call i32 @wtap_block_add_uint8_option(ptr noundef %i.bw, i32 noundef 13, i8 noundef zeroext %i.bx) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.y:                                             ; preds = %bb.a
  %i.bz = icmp eq i16 %3, 8
  br i1 %i.bz, label %bb.z, label %pcapng_process_unhandled_option.exit

bb.z:                                             ; preds = %bb.y
  %i.ca = load i64, ptr %4, align 1               ; 2 uses
  %i.cb = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cd = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ca) #17, !srcloc !16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.032.i130 = phi i64 [ %i.cd, %bb.aa ], [ %i.ca, %bb.z ]
  %i.ce = getelementptr i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call i32 @wtap_block_add_int64_option(ptr noundef %i.cf, i32 noundef 14, i64 noundef %.032.i130) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.ac:                                            ; preds = %bb.a
  %i.ch = zext i16 %3 to i64
  %i.ci = tail call ptr @ws_utf8_make_valid(ptr noundef null, ptr noundef %4, i64 noundef %i.ch) ; 2 uses
  %i.cj = getelementptr i8, ptr %0, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = tail call i32 @wtap_block_add_string_option_owned(ptr noundef %i.ck, i32 noundef 15, ptr noundef %i.ci)
  %.not.i131 = icmp eq i32 %i.cl, 0
  br i1 %.not.i131, label %pcapng_process_unhandled_option.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @g_free(ptr noundef %i.ci)
  br label %pcapng_process_unhandled_option.exit

bb.ae:                                            ; preds = %bb.a
  %i.cm = icmp eq i16 %3, 8
  br i1 %i.cm, label %bb.af, label %pcapng_process_unhandled_option.exit

bb.af:                                            ; preds = %bb.ae
  %i.cn = load i64, ptr %4, align 1               ; 2 uses
  %i.co = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cq = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cn) #17, !srcloc !14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.032.i133 = phi i64 [ %i.cq, %bb.ag ], [ %i.cn, %bb.af ]
  %i.cr = getelementptr i8, ptr %0, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call i32 @wtap_block_add_uint64_option(ptr noundef %i.cs, i32 noundef 16, i64 noundef %.032.i133) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.ai:                                            ; preds = %bb.a
  %i.cu = icmp eq i16 %3, 8
  br i1 %i.cu, label %bb.aj, label %pcapng_process_unhandled_option.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cv = load i64, ptr %4, align 1               ; 2 uses
  %i.cw = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cy = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cv) #17, !srcloc !14
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.032.i135 = phi i64 [ %i.cy, %bb.ak ], [ %i.cv, %bb.aj ]
  %i.cz = getelementptr i8, ptr %0, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call i32 @wtap_block_add_uint64_option(ptr noundef %i.da, i32 noundef 17, i64 noundef %.032.i135) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.am:                                            ; preds = %bb.a
  %i.dc = zext i16 %3 to i64
  %i.dd = tail call ptr @ws_utf8_make_valid(ptr noundef null, ptr noundef %4, i64 noundef %i.dc) ; 2 uses
  %i.de = getelementptr i8, ptr %0, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = tail call i32 @wtap_block_add_string_option_owned(ptr noundef %i.df, i32 noundef 18, ptr noundef %i.dd)
  %.not.i137 = icmp eq i32 %i.dg, 0
  br i1 %.not.i137, label %pcapng_process_unhandled_option.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @g_free(ptr noundef %i.dd)
  br label %pcapng_process_unhandled_option.exit

bb.ao:                                            ; preds = %bb.a
  %i.dh = load i32, ptr %0, align 8
  %i.di = load ptr, ptr @block_handlers, align 8
  %i.dj = zext i32 %i.dh to i64
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = tail call ptr @g_hash_table_lookup(ptr noundef %i.di, ptr noundef %i.dk) ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %pcapng_process_unhandled_option.exit.thread, label %get_option_handlers.exit.i

get_option_handlers.exit.i:                       ; preds = %bb.ao
  %i.dn = getelementptr i8, ptr %i.dl, i64 40
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %.not.i139 = icmp eq ptr %i.do, null
  br i1 %.not.i139, label %pcapng_process_unhandled_option.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %get_option_handlers.exit.i
  %i.dp = zext i16 %2 to i64
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = tail call ptr @g_hash_table_lookup(ptr noundef nonnull %i.do, ptr noundef %i.dq) ; 2 uses
  %.not13.i = icmp eq ptr %i.dr, null
  br i1 %.not13.i, label %pcapng_process_unhandled_option.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr i8, ptr %0, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = zext i16 %3 to i32
  %i.dy = tail call zeroext i1 %i.ds(ptr noundef %i.du, i1 noundef zeroext %i.dw, i32 noundef %i.dx, ptr noundef %4, ptr noundef %5, ptr noundef %6), !inline_history !58
  br i1 %i.dy, label %pcapng_process_unhandled_option.exit.thread, label %pcapng_process_unhandled_option.exit

pcapng_process_unhandled_option.exit.thread:      ; preds = %bb.ao, %get_option_handlers.exit.i, %bb.ap, %bb.aq
  br label %pcapng_process_unhandled_option.exit

pcapng_process_unhandled_option.exit:             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %._crit_edge, %bb.o, %bb.n, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %bb.j, %bb.k, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.ah, %bb.ai, %bb.al, %bb.am, %bb.an, %pcapng_process_unhandled_option.exit.thread, %bb.aq, %bb.m
  %.0 = phi i1 [ false, %bb.aq ], [ false, %bb.m ], [ true, %pcapng_process_unhandled_option.exit.thread ], [ true, %bb.an ], [ true, %bb.am ], [ true, %bb.al ], [ true, %bb.ai ], [ true, %bb.ah ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %bb.ab ], [ true, %bb.y ], [ true, %bb.x ], [ true, %bb.w ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.n ], [ true, %bb.o ], [ true, %._crit_edge ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_get_uint8_option_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_if_filter_option(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wtap_add_idb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_get_int64_option_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare void @wtap_setup_packet_rec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @pcap_process_pseudo_header(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_read_bytes_buffer(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @pcapng_process_packet_block_option(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %7 = alloca %struct.packet_verdict_opt_s, align 8 ; 10 uses
  %8 = alloca %struct.packet_hash_opt_s, align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  switch i16 %2, label %bb.an [
    i16 2, label %bb.b
    i16 3, label %bb.f
    i16 4, label %bb.i
    i16 5, label %bb.m
    i16 6, label %bb.q
    i16 7, label %bb.u
    i16 8, label %bb.aj
  ]

bb.b:                                             ; preds = %bb.a
  %.not126 = icmp eq i16 %3, 4
  br i1 %.not126, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = zext i16 %3 to i32
  store i32 -13, ptr %5, align 4
  %i.b = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef %i.a)
  store ptr %i.b, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.d:                                             ; preds = %bb.b
  %i.c = load i32, ptr %4, align 1                ; 2 uses
  %i.d = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.e, label %pcapng_process_uint32_option.exit

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.c) #17, !srcloc !8
  br label %pcapng_process_uint32_option.exit

pcapng_process_uint32_option.exit:                ; preds = %bb.d, %bb.e
  %.024.i = phi i32 [ %i.f, %bb.e ], [ %i.c, %bb.d ]
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 @wtap_block_add_uint32_option(ptr noundef %i.h, i32 noundef 2, i32 noundef %.024.i) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.f:                                             ; preds = %bb.a
  %i.j = icmp eq i16 %3, 0
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 -13, ptr %5, align 4
  %i.k = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 0)
  store ptr %i.k, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.h:                                             ; preds = %bb.f
  %i.l = zext i16 %3 to i64
  %i.m = load i8, ptr %4, align 1
  store i8 %i.m, ptr %8, align 8
  %i.n = getelementptr i8, ptr %4, i64 1
  %i.o = add nuw nsw i64 %i.l, 4294967295
  %i.p = and i64 %i.o, 4294967295                 ; 2 uses
  %i.q = tail call ptr @g_memdup2(ptr noundef %i.n, i64 noundef %i.p) #22
  %i.r = tail call ptr @g_byte_array_new_take(ptr noundef %i.q, i64 noundef %i.p)
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call i32 @wtap_block_add_packet_hash_option(ptr noundef %i.u, i32 noundef 3, ptr noundef nonnull %8) ; 0 uses
  call void @wtap_packet_hash_free(ptr noundef nonnull %8)
  br label %pcapng_process_unhandled_option.exit

bb.i:                                             ; preds = %bb.a
  %.not125 = icmp eq i16 %3, 8
  br i1 %.not125, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = zext i16 %3 to i32
  store i32 -13, ptr %5, align 4
  %i.x = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef %i.w)
  store ptr %i.x, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.k:                                             ; preds = %bb.i
  %i.y = load i64, ptr %4, align 1                ; 2 uses
  %i.z = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.l, label %pcapng_process_uint64_option.exit

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.y) #17, !srcloc !14
  br label %pcapng_process_uint64_option.exit

pcapng_process_uint64_option.exit:                ; preds = %bb.k, %bb.l
  %.032.i = phi i64 [ %i.ab, %bb.l ], [ %i.y, %bb.k ]
  %i.ac = getelementptr i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i32 @wtap_block_add_uint64_option(ptr noundef %i.ad, i32 noundef 4, i64 noundef %.032.i) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.m:                                             ; preds = %bb.a
  %.not124 = icmp eq i16 %3, 8
  br i1 %.not124, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = zext i16 %3 to i32
  store i32 -13, ptr %5, align 4
  %i.ag = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef %i.af)
  store ptr %i.ag, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.o:                                             ; preds = %bb.m
  %i.ah = load i64, ptr %4, align 1               ; 2 uses
  %i.ai = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.p, label %pcapng_process_uint64_option.exit128

bb.p:                                             ; preds = %bb.o
  %i.ak = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ah) #17, !srcloc !14
  br label %pcapng_process_uint64_option.exit128

pcapng_process_uint64_option.exit128:             ; preds = %bb.o, %bb.p
  %.032.i127 = phi i64 [ %i.ak, %bb.p ], [ %i.ah, %bb.o ]
  %i.al = getelementptr i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i32 @wtap_block_add_uint64_option(ptr noundef %i.am, i32 noundef 5, i64 noundef %.032.i127) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.q:                                             ; preds = %bb.a
  %.not123 = icmp eq i16 %3, 4
  br i1 %.not123, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = zext i16 %3 to i32
  store i32 -13, ptr %5, align 4
  %i.ap = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef %i.ao)
  store ptr %i.ap, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.s:                                             ; preds = %bb.q
  %i.aq = load i32, ptr %4, align 1               ; 2 uses
  %i.ar = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.t, label %pcapng_process_uint32_option.exit130

bb.t:                                             ; preds = %bb.s
  %i.at = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.aq) #17, !srcloc !8
  br label %pcapng_process_uint32_option.exit130

pcapng_process_uint32_option.exit130:             ; preds = %bb.s, %bb.t
  %.024.i129 = phi i32 [ %i.at, %bb.t ], [ %i.aq, %bb.s ]
  %i.au = getelementptr i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call i32 @wtap_block_add_uint32_option(ptr noundef %i.av, i32 noundef 6, i32 noundef %.024.i129) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.u:                                             ; preds = %bb.a
  %i.ax = zext i16 %3 to i32                      ; 3 uses
  %i.ay = icmp eq i16 %3, 0
  br i1 %i.ay, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 -13, ptr %5, align 4
  %i.az = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 0)
  store ptr %i.az, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.w:                                             ; preds = %bb.u
  %i.ba = load i8, ptr %4, align 1
  switch i8 %i.ba, label %pcapng_process_unhandled_option.exit [
    i8 0, label %bb.x
    i8 1, label %bb.y
    i8 2, label %bb.ad
  ]

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %7, align 8
  %i.bb = getelementptr i8, ptr %4, i64 1
  %i.bc = add nsw i32 %i.ax, -1
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = tail call ptr @g_memdup2(ptr noundef %i.bb, i64 noundef %i.bd) #22
  %i.bf = tail call ptr @g_byte_array_new_take(ptr noundef %i.be, i64 noundef %i.bd)
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bf, ptr %i.bg, align 8
  br label %bb.ai

bb.y:                                             ; preds = %bb.w
  %.not122 = icmp eq i16 %3, 9
  br i1 %.not122, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 -13, ptr %5, align 4
  %i.bh = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef %i.ax)
  store ptr %i.bh, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.aa:                                            ; preds = %bb.y
  %i.bi = getelementptr i8, ptr %4, i64 1
  %i.bj = load i64, ptr %i.bi, align 1            ; 2 uses
  %i.bk = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bm = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bj) #17, !srcloc !107
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0137 = phi i64 [ %i.bj, %bb.aa ], [ %i.bm, %bb.ab ]
  store i32 1, ptr %7, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.0137, ptr %i.bn, align 8
  br label %bb.ai

bb.ad:                                            ; preds = %bb.w
  %.not121 = icmp eq i16 %3, 9
  br i1 %.not121, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 -13, ptr %5, align 4
  %i.bo = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef %i.ax)
  store ptr %i.bo, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.af:                                            ; preds = %bb.ad
  %i.bp = getelementptr i8, ptr %4, i64 1
  %i.bq = load i64, ptr %i.bp, align 1            ; 2 uses
  %i.br = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bt = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bq) #17, !srcloc !108
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.1 = phi i64 [ %i.bq, %bb.af ], [ %i.bt, %bb.ag ]
  store i32 2, ptr %7, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.1, ptr %i.bu, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ac, %bb.x
  %i.bv = getelementptr i8, ptr %0, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call i32 @wtap_block_add_packet_verdict_option(ptr noundef %i.bw, i32 noundef 7, ptr noundef nonnull %7) ; 0 uses
  call void @wtap_packet_verdict_free(ptr noundef nonnull %7)
  br label %pcapng_process_unhandled_option.exit

bb.aj:                                            ; preds = %bb.a
  %.not = icmp eq i16 %3, 8
  br i1 %.not, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.by = zext i16 %3 to i32
  store i32 -13, ptr %5, align 4
  %i.bz = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef %i.by)
  store ptr %i.bz, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.al:                                            ; preds = %bb.aj
  %i.ca = load i64, ptr %4, align 1               ; 2 uses
  %i.cb = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.am, label %pcapng_process_uint64_option.exit132

bb.am:                                            ; preds = %bb.al
  %i.cd = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ca) #17, !srcloc !14
  br label %pcapng_process_uint64_option.exit132

pcapng_process_uint64_option.exit132:             ; preds = %bb.al, %bb.am
  %.032.i131 = phi i64 [ %i.cd, %bb.am ], [ %i.ca, %bb.al ]
  %i.ce = getelementptr i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call i32 @wtap_block_add_uint64_option(ptr noundef %i.cf, i32 noundef 8, i64 noundef %.032.i131) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.an:                                            ; preds = %bb.a
  %i.ch = load i32, ptr %0, align 8
  %i.ci = load ptr, ptr @block_handlers, align 8
  %i.cj = zext i32 %i.ch to i64
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = tail call ptr @g_hash_table_lookup(ptr noundef %i.ci, ptr noundef %i.ck) ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %pcapng_process_unhandled_option.exit.thread, label %get_option_handlers.exit.i

get_option_handlers.exit.i:                       ; preds = %bb.an
  %i.cn = getelementptr i8, ptr %i.cl, i64 40
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %pcapng_process_unhandled_option.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %get_option_handlers.exit.i
  %i.cp = zext i16 %2 to i64
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = tail call ptr @g_hash_table_lookup(ptr noundef nonnull %i.co, ptr noundef %i.cq) ; 2 uses
  %.not13.i = icmp eq ptr %i.cr, null
  br i1 %.not13.i, label %pcapng_process_unhandled_option.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr i8, ptr %0, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = zext i16 %3 to i32
  %i.cy = tail call zeroext i1 %i.cs(ptr noundef %i.cu, i1 noundef zeroext %i.cw, i32 noundef %i.cx, ptr noundef %4, ptr noundef %5, ptr noundef %6), !inline_history !58
  br i1 %i.cy, label %pcapng_process_unhandled_option.exit.thread, label %pcapng_process_unhandled_option.exit

pcapng_process_unhandled_option.exit.thread:      ; preds = %bb.an, %get_option_handlers.exit.i, %bb.ao, %bb.ap
  br label %pcapng_process_unhandled_option.exit

pcapng_process_unhandled_option.exit:             ; preds = %pcapng_process_uint32_option.exit, %bb.h, %pcapng_process_uint64_option.exit, %pcapng_process_uint64_option.exit128, %pcapng_process_uint32_option.exit130, %bb.ai, %pcapng_process_uint64_option.exit132, %pcapng_process_unhandled_option.exit.thread, %bb.ap, %bb.w, %bb.ak, %bb.ae, %bb.z, %bb.v, %bb.r, %bb.n, %bb.j, %bb.g, %bb.c
  %.0 = phi i1 [ false, %bb.ap ], [ true, %bb.w ], [ false, %bb.c ], [ false, %bb.g ], [ false, %bb.j ], [ false, %bb.n ], [ false, %bb.r ], [ false, %bb.v ], [ false, %bb.ak ], [ false, %bb.z ], [ false, %bb.ae ], [ true, %pcapng_process_unhandled_option.exit.thread ], [ true, %pcapng_process_uint64_option.exit132 ], [ true, %bb.ai ], [ true, %pcapng_process_uint32_option.exit130 ], [ true, %pcapng_process_uint64_option.exit128 ], [ true, %pcapng_process_uint64_option.exit ], [ true, %bb.h ], [ true, %pcapng_process_uint32_option.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_get_uint32_option_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_get_uint64_option_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @pcap_read_post_process(i1 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @g_byte_array_new_take(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare ptr @g_memdup2(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_packet_hash_option(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wtap_packet_hash_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_packet_verdict_option(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wtap_packet_verdict_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @pcap_get_phdr_size(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_rec_generate_idb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @pcap_write_phdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @write_wtap_epb_option(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %7 = alloca %struct.pcapng_option_header, align 2 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %struct.pcapng_option_header, align 2 ; 12 uses
  %i.b = alloca i8, align 1                       ; 9 uses
  %9 = alloca %struct.pcapng_option_header, align 2 ; 6 uses
  %10 = alloca %struct.pcapng_option_header, align 2 ; 6 uses
  %11 = alloca %struct.pcapng_option_header, align 2 ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %12 = alloca %struct.pcapng_option_header, align 2 ; 6 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %13 = alloca %struct.pcapng_option_header, align 2 ; 6 uses
  switch i32 %2, label %bb.aa [
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 7, label %bb.m
    i32 8, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store i16 2, ptr %13, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 2
  store i16 4, ptr %i.e, align 2
  %i.f = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %13, i64 noundef 4, ptr noundef %5)
  br i1 %i.f, label %pcapng_write_uint32_option.exit, label %pcapng_write_uint32_option.exit.thread

pcapng_write_uint32_option.exit.thread:           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.ac

pcapng_write_uint32_option.exit:                  ; preds = %bb.b
  %i.g = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef %4, i64 noundef 4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br i1 %i.g, label %bb.ab, label %bb.ac

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.h = load i8, ptr %4, align 8                 ; 2 uses
  %switch.tableidx = add i8 %i.h, -2              ; 2 uses
  %i.i = icmp ult i8 %switch.tableidx, 4
  br i1 %i.i, label %switch.lookup, label %pcapng_compute_packet_hash_option_size.exit.i

pcapng_compute_packet_hash_option_size.exit.i:    ; preds = %bb.c
  %i.j = getelementptr i8, ptr %4, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = icmp ugt i32 %i.n, 65535
  br i1 %i.o, label %pcapng_write_packet_hash_option.exit, label %pcapng_compute_packet_hash_option_size.exit.thread.i

switch.lookup:                                    ; preds = %bb.c
  %i.p = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.write_wtap_epb_option, i64 %i.p
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %pcapng_compute_packet_hash_option_size.exit.thread.i

pcapng_compute_packet_hash_option_size.exit.thread.i: ; preds = %switch.lookup, %pcapng_compute_packet_hash_option_size.exit.i
  %.0.i22.i = phi i32 [ %i.n, %pcapng_compute_packet_hash_option_size.exit.i ], [ %switch.ext, %switch.lookup ] ; 3 uses
  %i.q = zext nneg i32 %.0.i22.i to i64           ; 2 uses
  %i.r = getelementptr i8, ptr %4, i64 8          ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = add i32 %i.u, 1
  %i.w = icmp ugt i32 %.0.i22.i, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %pcapng_compute_packet_hash_option_size.exit.thread.i
  store i32 -25, ptr %5, align 4
  br label %pcapng_write_packet_hash_option.exit.thread

bb.e:                                             ; preds = %pcapng_compute_packet_hash_option_size.exit.thread.i
  store i8 %i.h, ptr %i.d, align 1
  store i16 3, ptr %12, align 2
  %i.x = trunc nuw i32 %.0.i22.i to i16
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 2
  store i16 %i.x, ptr %i.y, align 2
  %i.z = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %12, i64 noundef 4, ptr noundef %5)
  br i1 %i.z, label %bb.f, label %pcapng_write_packet_hash_option.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aa = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef 1, ptr noundef %5)
  br i1 %i.aa, label %bb.g, label %pcapng_write_packet_hash_option.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.r, align 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = add nsw i64 %i.q, -1
  %i.ae = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef %i.ac, i64 noundef %i.ad, ptr noundef %5)
  br i1 %i.ae, label %bb.h, label %pcapng_write_packet_hash_option.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.af = sub nsw i64 0, %i.q
  %i.ag = and i64 %i.af, 3                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %pcapng_write_packet_hash_option.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4
  %i.ah = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef range(i64 0, 4) %i.ag, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br i1 %i.ah, label %pcapng_write_packet_hash_option.exit, label %pcapng_write_packet_hash_option.exit.thread

pcapng_write_packet_hash_option.exit.thread:      ; preds = %bb.d, %bb.g, %bb.f, %bb.e, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.ac

pcapng_write_packet_hash_option.exit:             ; preds = %bb.h, %bb.i, %pcapng_compute_packet_hash_option_size.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.ab

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store i16 4, ptr %11, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i16 8, ptr %i.ai, align 2
  %i.aj = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %11, i64 noundef 4, ptr noundef %5)
  br i1 %i.aj, label %pcapng_write_uint64_option.exit, label %pcapng_write_uint64_option.exit.thread

pcapng_write_uint64_option.exit.thread:           ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.ac

pcapng_write_uint64_option.exit:                  ; preds = %bb.j
  %i.ak = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef %4, i64 noundef 8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br i1 %i.ak, label %bb.ab, label %bb.ac

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store i16 5, ptr %10, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i16 8, ptr %i.al, align 2
  %i.am = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %10, i64 noundef 4, ptr noundef %5)
  br i1 %i.am, label %pcapng_write_uint64_option.exit32, label %pcapng_write_uint64_option.exit32.thread

pcapng_write_uint64_option.exit32.thread:         ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.ac

pcapng_write_uint64_option.exit32:                ; preds = %bb.k
  %i.an = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef %4, i64 noundef 8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br i1 %i.an, label %bb.ab, label %bb.ac

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i16 6, ptr %9, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i16 4, ptr %i.ao, align 2
  %i.ap = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %9, i64 noundef 4, ptr noundef %5)
  br i1 %i.ap, label %pcapng_write_uint32_option.exit34, label %pcapng_write_uint32_option.exit34.thread

pcapng_write_uint32_option.exit34.thread:         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.ac

pcapng_write_uint32_option.exit34:                ; preds = %bb.l
  %i.aq = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef %4, i64 noundef 4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br i1 %i.aq, label %bb.ab, label %bb.ac

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ar = load i32, ptr %4, align 8               ; 2 uses
end_hunk_1
begin_hunk_2_@pcapng_process_interface_statistics_block_option:bb.a
  %.049.i = phi i32 [ %i.h, %bb.d ], [ %i.d, %bb.c ]
  %i.i = zext i32 %.050.i to i64
  %i.j = shl nuw i64 %i.i, 32
  %i.k = zext i32 %.049.i to i64
  %i.l = or disjoint i64 %i.j, %i.k
  %i.m = getelementptr i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i32 @wtap_block_add_uint64_option(ptr noundef %i.n, i32 noundef 2, i64 noundef %i.l) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.f:                                             ; preds = %bb.a
  %i.p = icmp eq i16 %3, 8
  br i1 %i.p, label %bb.g, label %pcapng_process_unhandled_option.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %4, align 1                ; 2 uses
  %i.r = getelementptr i8, ptr %4, i64 4
  %i.s = load i32, ptr %i.r, align 1              ; 2 uses
  %i.t = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #17, !srcloc !10
  %i.w = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.s) #17, !srcloc !11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.050.i43 = phi i32 [ %i.v, %bb.h ], [ %i.q, %bb.g ]
  %.049.i44 = phi i32 [ %i.w, %bb.h ], [ %i.s, %bb.g ]
  %i.x = zext i32 %.050.i43 to i64
  %i.y = shl nuw i64 %i.x, 32
  %i.z = zext i32 %.049.i44 to i64
  %i.aa = or disjoint i64 %i.y, %i.z
  %i.ab = getelementptr i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i32 @wtap_block_add_uint64_option(ptr noundef %i.ac, i32 noundef 3, i64 noundef %i.aa) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp eq i16 %3, 8
  br i1 %i.ae, label %bb.k, label %pcapng_process_unhandled_option.exit

bb.k:                                             ; preds = %bb.j
  %i.af = load i64, ptr %4, align 1               ; 2 uses
  %i.ag = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.af) #17, !srcloc !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.032.i = phi i64 [ %i.ai, %bb.l ], [ %i.af, %bb.k ]
  %i.aj = getelementptr i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call i32 @wtap_block_add_uint64_option(ptr noundef %i.ak, i32 noundef 4, i64 noundef %.032.i) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.n:                                             ; preds = %bb.a
  %i.am = icmp eq i16 %3, 8
  br i1 %i.am, label %bb.o, label %pcapng_process_unhandled_option.exit

bb.o:                                             ; preds = %bb.n
  %i.an = load i64, ptr %4, align 1               ; 2 uses
  %i.ao = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aq = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.an) #17, !srcloc !14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.032.i47 = phi i64 [ %i.aq, %bb.p ], [ %i.an, %bb.o ]
  %i.ar = getelementptr i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call i32 @wtap_block_add_uint64_option(ptr noundef %i.as, i32 noundef 5, i64 noundef %.032.i47) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.r:                                             ; preds = %bb.a
  %i.au = icmp eq i16 %3, 8
  br i1 %i.au, label %bb.s, label %pcapng_process_unhandled_option.exit

bb.s:                                             ; preds = %bb.r
  %i.av = load i64, ptr %4, align 1               ; 2 uses
  %i.aw = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ay = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.av) #17, !srcloc !14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.032.i49 = phi i64 [ %i.ay, %bb.t ], [ %i.av, %bb.s ]
  %i.az = getelementptr i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call i32 @wtap_block_add_uint64_option(ptr noundef %i.ba, i32 noundef 6, i64 noundef %.032.i49) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.v:                                             ; preds = %bb.a
  %i.bc = icmp eq i16 %3, 8
  br i1 %i.bc, label %bb.w, label %pcapng_process_unhandled_option.exit

bb.w:                                             ; preds = %bb.v
  %i.bd = load i64, ptr %4, align 1               ; 2 uses
  %i.be = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bg = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bd) #17, !srcloc !14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.032.i51 = phi i64 [ %i.bg, %bb.x ], [ %i.bd, %bb.w ]
  %i.bh = getelementptr i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call i32 @wtap_block_add_uint64_option(ptr noundef %i.bi, i32 noundef 7, i64 noundef %.032.i51) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.z:                                             ; preds = %bb.a
  %i.bk = icmp eq i16 %3, 8
  br i1 %i.bk, label %bb.aa, label %pcapng_process_unhandled_option.exit

bb.aa:                                            ; preds = %bb.z
  %i.bl = load i64, ptr %4, align 1               ; 2 uses
  %i.bm = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bo = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bl) #17, !srcloc !14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.032.i53 = phi i64 [ %i.bo, %bb.ab ], [ %i.bl, %bb.aa ]
  %i.bp = getelementptr i8, ptr %0, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call i32 @wtap_block_add_uint64_option(ptr noundef %i.bq, i32 noundef 8, i64 noundef %.032.i53) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.ad:                                            ; preds = %bb.a
  %i.bs = load i32, ptr %0, align 8
  %i.bt = load ptr, ptr @block_handlers, align 8
  %i.bu = zext i32 %i.bs to i64
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = tail call ptr @g_hash_table_lookup(ptr noundef %i.bt, ptr noundef %i.bv) ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %pcapng_process_unhandled_option.exit.thread, label %get_option_handlers.exit.i

get_option_handlers.exit.i:                       ; preds = %bb.ad
  %i.by = getelementptr i8, ptr %i.bw, i64 40
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %pcapng_process_unhandled_option.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %get_option_handlers.exit.i
  %i.ca = zext i16 %2 to i64
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = tail call ptr @g_hash_table_lookup(ptr noundef nonnull %i.bz, ptr noundef %i.cb) ; 2 uses
  %.not13.i = icmp eq ptr %i.cc, null
  br i1 %.not13.i, label %pcapng_process_unhandled_option.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = load i8, ptr %1, align 8, !range !6, !noundef !7
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = zext i16 %3 to i32
  %i.cj = tail call zeroext i1 %i.cd(ptr noundef %i.cf, i1 noundef zeroext %i.ch, i32 noundef %i.ci, ptr noundef %4, ptr noundef %5, ptr noundef %6), !inline_history !58
  br i1 %i.cj, label %pcapng_process_unhandled_option.exit.thread, label %pcapng_process_unhandled_option.exit

pcapng_process_unhandled_option.exit.thread:      ; preds = %bb.ad, %get_option_handlers.exit.i, %bb.ae, %bb.af
  br label %pcapng_process_unhandled_option.exit

pcapng_process_unhandled_option.exit:             ; preds = %bb.b, %bb.e, %bb.f, %bb.i, %bb.j, %bb.m, %bb.n, %bb.q, %bb.r, %bb.u, %bb.v, %bb.y, %bb.z, %bb.ac, %pcapng_process_unhandled_option.exit.thread, %bb.af
  %.0 = phi i1 [ false, %bb.af ], [ true, %pcapng_process_unhandled_option.exit.thread ], [ true, %bb.ac ], [ true, %bb.z ], [ true, %bb.y ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @wtapng_process_dsb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wtap_setup_custom_block_rec(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtou64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wtap_setup_systemd_journal_export_rec(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { allocsize(0) }
attributes #17 = { nounwind memory(none) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { noreturn }
attributes #21 = { allocsize(0,1) }
attributes #22 = { allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = !{i64 2150674629}
!9 = !{i64 2150675293}
!10 = !{i64 2150675946}
!11 = !{i64 2150676542}
!12 = !{i64 2150677197}
!13 = !{i64 2150677850}
!14 = !{i64 2150678543}
!15 = !{i64 2150680155}
!16 = !{i64 2150681757}
!17 = !{i64 2150683365}
!18 = !{i64 2150685147}
!19 = !{i64 2150685803}
!20 = distinct !{null}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{i64 2150758642}
!24 = !{i64 2150774829}
!25 = distinct !{null}
!26 = distinct !{!26, !22}
!27 = !{i64 2150694222}
!28 = !{i64 2150697442}
!29 = distinct !{!29, !22}
!30 = !{i64 2150761108}
!31 = !{i64 2150761731}
!32 = !{i64 2150789416}
!33 = !{i64 2150792433}
!34 = !{i64 2150706856}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{i64 2150721930}
!39 = !{i64 2150722553}
!40 = !{i64 2150723177}
!41 = !{i64 2150723799}
!42 = !{i64 2150724418}
!43 = !{i64 2150727303}
!44 = !{i64 2150727925}
!45 = !{i64 2150728545}
!46 = !{i64 2150729162}
!47 = distinct !{!47, !22}
!48 = !{i64 2150738419}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22}
!51 = !{i64 2150748773}
!52 = !{i64 2150749396}
!53 = !{i64 2150750020}
!54 = !{i64 2150711522}
!55 = !{i64 2150712142}
!56 = !{i64 2150752357}
!57 = distinct !{!57, !22}
!58 = distinct !{null}
!59 = distinct !{!59, !22}
!60 = distinct !{!60, !22}
!61 = distinct !{!61, !22}
!62 = distinct !{!62, !22}
!63 = distinct !{!63, !22}
!64 = distinct !{!64, !22}
!65 = distinct !{!65, !22}
!66 = distinct !{!66, !22}
!67 = distinct !{!67, !22}
!68 = !{!69, !71}
!69 = distinct !{!69, !70, !"memcpy.inline: argument 0"}
!70 = distinct !{!70, !"memcpy.inline"}
!71 = distinct !{!71, !70, !"memcpy.inline: argument 1"}
!72 = !{!73, !75}
!73 = distinct !{!73, !74, !"memcpy.inline: argument 0"}
!74 = distinct !{!74, !"memcpy.inline"}
!75 = distinct !{!75, !74, !"memcpy.inline: argument 1"}
!76 = !{!77, !79}
!77 = distinct !{!77, !78, !"memcpy.inline: argument 0"}
!78 = distinct !{!78, !"memcpy.inline"}
!79 = distinct !{!79, !78, !"memcpy.inline: argument 1"}
!80 = !{!81, !83}
!81 = distinct !{!81, !82, !"memcpy.inline: argument 0"}
!82 = distinct !{!82, !"memcpy.inline"}
!83 = distinct !{!83, !82, !"memcpy.inline: argument 1"}
!84 = distinct !{!84, !22}
!85 = !{!86, !88}
!86 = distinct !{!86, !87, !"memcpy.inline: argument 0"}
!87 = distinct !{!87, !"memcpy.inline"}
!88 = distinct !{!88, !87, !"memcpy.inline: argument 1"}
!89 = !{!90, !92}
!90 = distinct !{!90, !91, !"memcpy.inline: argument 0"}
!91 = distinct !{!91, !"memcpy.inline"}
!92 = distinct !{!92, !91, !"memcpy.inline: argument 1"}
!93 = !{!94, !96}
!94 = distinct !{!94, !95, !"memcpy.inline: argument 0"}
!95 = distinct !{!95, !"memcpy.inline"}
!96 = distinct !{!96, !95, !"memcpy.inline: argument 1"}
!97 = !{!98, !100}
!98 = distinct !{!98, !99, !"memcpy.inline: argument 0"}
!99 = distinct !{!99, !"memcpy.inline"}
!100 = distinct !{!100, !99, !"memcpy.inline: argument 1"}
!101 = !{!102, !104}
!102 = distinct !{!102, !103, !"memcpy.inline: argument 0"}
!103 = distinct !{!103, !"memcpy.inline"}
!104 = distinct !{!104, !103, !"memcpy.inline: argument 1"}
!105 = !{i64 2150705129}
!106 = distinct !{!106, !22}
!107 = !{i64 2150716625}
!108 = !{i64 2150718305}
end_hunk_2

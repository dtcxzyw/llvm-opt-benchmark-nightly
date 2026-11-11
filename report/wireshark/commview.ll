Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/commview?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@commview_ncfx_read_packet:bb.a
bb.y:                                             ; preds = %bb.v
  %i.be = load i16, ptr %i.ab, align 2
  %i.bf = zext i16 %i.be to i32
  %i.bg = call i32 @ieee80211_chan_to_mhz(i32 noundef %i.bf, i1 noundef zeroext true) ; 3 uses
  %i.bh = getelementptr i8, ptr %1, i64 72        ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.bk = load i32, ptr %i.al, align 4
  switch i32 %i.bk, label %bb.ab [
    i32 330, label %bb.aa
    i32 220, label %bb.aa
    i32 110, label %bb.aa
    i32 55, label %bb.aa
    i32 20, label %bb.aa
    i32 10, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z
  store i32 4, ptr %i.bh, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  store i32 6, ptr %i.bh, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.ab, %bb.aa, %bb.w, %bb.x
  %.0 = phi i32 [ %i.bg, %bb.y ], [ %i.ba, %bb.x ], [ %i.ba, %bb.w ], [ %i.bg, %bb.aa ], [ %i.bg, %bb.ab ] ; 2 uses
  %.not110 = icmp eq i32 %.0, 0
  br i1 %.not110, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bl = getelementptr i8, ptr %1, i64 96        ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 8
  %i.bn = or i16 %i.bm, 2
  store i16 %i.bn, ptr %i.bl, align 8
  %i.bo = getelementptr i8, ptr %1, i64 100
  store i32 %.0, ptr %i.bo, align 4
  br label %.thread

.thread:                                          ; preds = %bb.v, %bb.ad, %bb.ac
  %i.bp = getelementptr i8, ptr %1, i64 96        ; 4 uses
  %i.bq = load i16, ptr %i.bp, align 8            ; 2 uses
  %i.br = load i16, ptr %i.ab, align 2
  %i.bs = getelementptr i8, ptr %1, i64 98
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = load i32, ptr %i.al, align 4
  %i.bu = udiv i32 %i.bt, 5
  %i.bv = trunc i32 %i.bu to i16
  %i.bw = getelementptr i8, ptr %1, i64 104
  store i16 %i.bv, ptr %i.bw, align 8
  %i.bx = or i16 %i.bq, 13                        ; 2 uses
  store i16 %i.bx, ptr %i.bp, align 8
  %i.by = load i8, ptr %i.ah, align 2
  %i.bz = getelementptr i8, ptr %1, i64 106
  store i8 %i.by, ptr %i.bz, align 2
  %i.ca = load i8, ptr %i.af, align 1             ; 2 uses
  %.not111 = icmp eq i8 %i.ca, 0
  br i1 %.not111, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.thread
  %i.cb = sub i8 0, %i.ca
  %i.cc = getelementptr i8, ptr %1, i64 108
  store i8 %i.cb, ptr %i.cc, align 4
  %i.cd = or i16 %i.bq, 45                        ; 2 uses
  store i16 %i.cd, ptr %i.bp, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread
  %i.ce = phi i16 [ %i.cd, %bb.ae ], [ %i.bx, %.thread ]
  %i.cf = load i8, ptr %i.ad, align 4             ; 2 uses
  %.not112 = icmp eq i8 %i.cf, 0
  br i1 %.not112, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cg = sub i8 0, %i.cf
  %i.ch = getelementptr i8, ptr %1, i64 109
  store i8 %i.cg, ptr %i.ch, align 1
  %i.ci = or i16 %i.ce, 64
  store i16 %i.ci, ptr %i.bp, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cj = load i32, ptr %i.an, align 4
  %i.ck = and i32 %i.cj, 1
  %.not113 = icmp eq i32 %i.ck, 0
  br i1 %.not113, label %bb.av, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cl = icmp ult i32 %i.v, 4
  br i1 %i.cl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 -13, ptr %2, align 4
  %i.cm = load i32, ptr %4, align 4
  %i.cn = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.3, i32 noundef %i.cm)
  store ptr %i.cn, ptr %3, align 8
  br label %commview_ncfx_read_rf_header.exit.thread

bb.ak:                                            ; preds = %bb.ai
  %i.co = add i32 %i.d, -44                       ; 9 uses
  %i.cp = call fastcc zeroext i1 @commview_ncfx_read_mcs_header(ptr noundef nonnull %7, ptr noundef %0, ptr noundef %2, ptr noundef %3)
  br i1 %i.cp, label %bb.al, label %commview_ncfx_read_rf_header.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.cq = getelementptr i8, ptr %1, i64 72
  %i.cr = load i32, ptr %i.cq, align 8
  switch i32 %i.cr, label %bb.av [
    i32 7, label %bb.am
    i32 8, label %bb.ap
    i32 11, label %bb.at
  ]

bb.am:                                            ; preds = %bb.al
  %i.cs = getelementptr i8, ptr %1, i64 76        ; 4 uses
  %i.ct = load i8, ptr %i.cs, align 4             ; 3 uses
  %i.cu = or i8 %i.ct, 1
  store i8 %i.cu, ptr %i.cs, align 4
  %i.cv = load i8, ptr %7, align 1
  %i.cw = zext i8 %i.cv to i16
  %i.cx = getelementptr i8, ptr %1, i64 78
  store i16 %i.cw, ptr %i.cx, align 2
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.cz = load i8, ptr %i.cy, align 1
  switch i8 %i.cz, label %bb.av [
    i8 0, label %bb.an
    i8 1, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.da = or i8 %i.ct, 3
  store i8 %i.da, ptr %i.cs, align 4
  %i.db = getelementptr i8, ptr %1, i64 80
  store i32 0, ptr %i.db, align 8
  br label %bb.av

bb.ao:                                            ; preds = %bb.am
  %i.dc = or i8 %i.ct, 3
  store i8 %i.dc, ptr %i.cs, align 4
  %i.dd = getelementptr i8, ptr %1, i64 80
  store i32 1, ptr %i.dd, align 8
  br label %bb.av

bb.ap:                                            ; preds = %bb.al
  %i.de = load i8, ptr %7, align 1
  %i.df = getelementptr i8, ptr %1, i64 76        ; 6 uses
  %i.dg = getelementptr i8, ptr %1, i64 79
  store i8 %i.de, ptr %i.dg, align 1
  %i.dh = getelementptr i8, ptr %1, i64 80
  store i8 0, ptr %i.dh, align 8
  %i.di = getelementptr i8, ptr %1, i64 81
  store i8 0, ptr %i.di, align 1
  %i.dj = getelementptr i8, ptr %1, i64 82
  store i8 0, ptr %i.dj, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = getelementptr i8, ptr %1, i64 83
  store i8 %i.dl, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.do = load i8, ptr %i.dn, align 1
  switch i8 %i.do, label %bb.av [
    i8 0, label %bb.aq
    i8 1, label %bb.ar
    i8 2, label %bb.as
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.dp = load i16, ptr %i.df, align 4
  %i.dq = or i16 %i.dp, 64
  store i16 %i.dq, ptr %i.df, align 4
  %i.dr = getelementptr i8, ptr %1, i64 78
  store i8 0, ptr %i.dr, align 2
  br label %bb.av

bb.ar:                                            ; preds = %bb.ap
  %i.ds = load i16, ptr %i.df, align 4
  %i.dt = or i16 %i.ds, 64
  store i16 %i.dt, ptr %i.df, align 4
  %i.du = getelementptr i8, ptr %1, i64 78
  store i8 1, ptr %i.du, align 2
  br label %bb.av

bb.as:                                            ; preds = %bb.ap
  %i.dv = load i16, ptr %i.df, align 4
  %i.dw = or i16 %i.dv, 64
  store i16 %i.dw, ptr %i.df, align 4
  %i.dx = getelementptr i8, ptr %1, i64 78
  store i8 4, ptr %i.dx, align 2
  br label %bb.av

bb.at:                                            ; preds = %bb.al
  %i.dy = getelementptr i8, ptr %1, i64 76        ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = load i8, ptr %7, align 1
  %i.eb = and i8 %i.ea, 15
  %i.ec = zext nneg i8 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 8
  %i.ee = and i32 %i.dz, -3962
  %i.ef = or disjoint i32 %i.ee, %i.ed
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = shl i8 %i.eh, 3
  %i.ej = and i8 %i.ei, 120
  %i.ek = zext nneg i8 %i.ej to i32
  %8 = or disjoint i32 %i.ef, %i.ek
  %i.el = or disjoint i32 %8, 1
  store i32 %i.el, ptr %i.dy, align 4
  br label %bb.av

bb.au:                                            ; preds = %bb.b
  store i32 -13, ptr %2, align 4
  %i.em = zext i8 %i.g to i32
  %i.en = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.4, i32 noundef %i.em)
  store ptr %i.en, ptr %3, align 8
  br label %commview_ncfx_read_rf_header.exit.thread

bb.av:                                            ; preds = %bb.ah, %bb.al, %bb.aq, %bb.ar, %bb.as, %bb.ap, %bb.an, %bb.ao, %bb.am, %bb.at, %bb.c
  %.0102 = phi i32 [ %i.e, %bb.c ], [ %i.co, %bb.al ], [ %i.co, %bb.am ], [ %i.co, %bb.an ], [ %i.co, %bb.ao ], [ %i.co, %bb.ap ], [ %i.co, %bb.aq ], [ %i.co, %bb.ar ], [ %i.co, %bb.as ], [ %i.co, %bb.at ], [ %i.v, %bb.ah ] ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ep = load i16, ptr %i.eo, align 4
  %i.eq = zext i16 %i.ep to i32
  %i.er = add nsw i32 %i.eq, -1900
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.er, ptr %i.es, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.eu = load i8, ptr %i.et, align 2
  %i.ev = zext i8 %i.eu to i32
  %i.ew = add nsw i32 %i.ev, -1
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.ew, ptr %i.ex, align 16
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 7
  %i.ez = load <4 x i8>, ptr %i.ey, align 1
  %i.fa = zext <4 x i8> %i.ez to <4 x i32>
  %i.fb = shufflevector <4 x i32> %i.fa, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.fb, ptr %5, align 16
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 -1, ptr %i.fc, align 16
  %i.fd = getelementptr i8, ptr %1, i64 4
  store i32 1, ptr %i.fd, align 4
  %i.fe = icmp ugt i32 %.0102, 262144
  br i1 %i.fe, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 -13, ptr %2, align 4
  %i.ff = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.5, i32 noundef %.0102, i32 noundef 262144)
  store ptr %i.ff, ptr %3, align 8
  br label %commview_ncfx_read_rf_header.exit.thread

bb.ax:                                            ; preds = %bb.av
  %i.fg = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %i.fh = getelementptr i8, ptr %1, i64 52
  store i32 %.0102, ptr %i.fh, align 4
  store i32 %.0102, ptr %i.fg, align 8
  %i.fi = call i64 @mktime(ptr noundef nonnull %5) #10
  %i.fj = getelementptr i8, ptr %1, i64 16
  store i64 %i.fi, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = mul i32 %i.fl, 1000
  %i.fn = getelementptr i8, ptr %1, i64 24
  store i32 %i.fm, ptr %i.fn, align 8
  %i.fo = getelementptr i8, ptr %1, i64 264
  %i.fp = load i32, ptr %i.fg, align 8
  %i.fq = call zeroext i1 @wtap_read_bytes_buffer(ptr noundef %0, ptr noundef %i.fo, i32 noundef %i.fp, ptr noundef %2, ptr noundef %3)
  %i.fr = zext i1 %i.fq to i32
  br label %commview_ncfx_read_rf_header.exit.thread

commview_ncfx_read_rf_header.exit.thread:         ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.ak, %commview_ncfx_read_rf_header.exit, %bb.a, %bb.ax, %bb.aw, %bb.au, %bb.aj, %bb.e
  %.0103 = phi i32 [ 0, %bb.au ], [ 0, %bb.aw ], [ %i.fr, %bb.ax ], [ 0, %bb.e ], [ 0, %bb.aj ], [ 0, %commview_ncfx_read_rf_header.exit ], [ 0, %bb.a ], [ 0, %bb.ak ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.0103
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @commview_ncfx_read_mcs_header(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef %0, i32 noundef 1, ptr noundef %2, ptr noundef %3)
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 1
  %i.c = tail call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef %i.b, i32 noundef 1, ptr noundef %2, ptr noundef %3)
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 2
  %i.e = tail call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef %i.d, i32 noundef 1, ptr noundef %2, ptr noundef %3)
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 3
  %i.g = tail call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef %i.f, i32 noundef 1, ptr noundef %2, ptr noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.c ], [ %i.g, %bb.d ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal range(i32 -8, 1) i32 @commview_ncf_dump_can_write_encap(i32 noundef %0) #4 {
bb.a:
  %switch.tableidx = add i32 %0, 1                ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 24
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.commview_ncf_dump_can_write_encap, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ -8, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @commview_ncf_dump_open(ptr nofree noundef writeonly captures(none) initializes((64, 72)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  store ptr @commview_ncf_dump, ptr %i.a, align 8
  ret i1 true
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @commview_ncf_dump(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.commview_ncf_header, align 4 ; 45 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = load i32, ptr %1, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -24, ptr %2, align 4
  %i.c = tail call ptr @wtap_unwritable_rec_type_err_string(ptr noundef %1)
  store ptr %i.c, ptr %3, align 8
  br label %bb.bf

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ugt i32 %i.e, 65535
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 -22, ptr %2, align 4
  br label %bb.bf

bb.e:                                             ; preds = %bb.c
  %i.g = trunc nuw i32 %i.e to i16                ; 2 uses
  store i16 %i.g, ptr %4, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  store i16 %i.g, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.j = getelementptr i8, ptr %1, i64 16
  %i.k = tail call ptr @localtime(ptr noundef %i.j) #10 ; 7 uses
  %.not81 = icmp eq ptr %i.k, null
  br i1 %.not81, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.k, i64 20
  %i.m = load i32, ptr %i.l, align 4
  %i.n = trunc i32 %i.m to i16
  %i.o = add i16 %i.n, 1900
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.o, ptr %i.p, align 2
  %i.q = getelementptr i8, ptr %i.k, i64 16
  %i.r = load i32, ptr %i.q, align 8
  %i.s = trunc i32 %i.r to i8
  %i.t = add i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %i.t, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %i.k, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 %i.x, ptr %i.y, align 1
  %i.z = getelementptr i8, ptr %i.k, i64 8
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i8 %i.ab, ptr %i.ac, align 2
  %i.ad = getelementptr i8, ptr %i.k, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = trunc i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 11
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = load i32, ptr %i.k, align 8
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = getelementptr i8, ptr %1, i64 24
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = sdiv i32 %i.ak, 1000
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 1969, ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <4 x i8> <i8 12, i8 31, i8 23, i8 59>, ptr %i.an, align 4
end_hunk_0

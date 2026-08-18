inline.NumInlined: 20
inline.NumDeleted: 3
begin_hunk_0_@nettl_read_rec:bb.a
bb.aa:                                            ; preds = %bb.g
  store i32 -1, ptr %i.q, align 8
  br label %.thread199.sink.split

.thread199.sink.split:                            ; preds = %bb.f, %bb.aa
  %.sink = phi i32 [ 71, %bb.aa ], [ 70, %bb.f ]
  %i.ce = getelementptr i8, ptr %2, i64 56
  store i32 %.sink, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = call i32 @llvm.bswap.i32(i32 %i.cg)
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = call i32 @llvm.bswap.i32(i32 %i.cj)
  br label %.thread199

.thread199:                                       ; preds = %.thread199.sink.split, %bb.x, %bb.y, %bb.o, %bb.p
  %.0175.ph = phi i1 [ false, %bb.x ], [ false, %bb.y ], [ false, %bb.o ], [ true, %bb.p ], [ false, %.thread199.sink.split ]
  %.0174.ph = phi i32 [ %i.bm, %bb.x ], [ %i.bm, %bb.y ], [ %i.ar, %bb.o ], [ %i.ar, %bb.p ], [ %i.ch, %.thread199.sink.split ]
  %.0173.ph = phi i32 [ %i.bs, %bb.x ], [ %i.bs, %bb.y ], [ %i.au, %bb.o ], [ %i.au, %bb.p ], [ %i.ck, %.thread199.sink.split ]
  %i.cl = getelementptr i8, ptr %2, i64 4
  store i32 3, ptr %i.cl, align 4
  %i.cm = getelementptr i8, ptr %2, i64 52
  store i32 %.0174.ph, ptr %i.cm, align 4
  br label %bb.af

bb.ab:                                            ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.z
  %.0174 = phi i32 [ %i.ar, %bb.t ], [ %i.ar, %bb.u ], [ %i.bz, %bb.z ], [ %i.ar, %bb.s ], [ %i.ar, %bb.v ] ; 3 uses
  %.0173 = phi i32 [ %i.au, %bb.t ], [ %i.au, %bb.u ], [ %i.cc, %bb.z ], [ %i.au, %bb.s ], [ %i.au, %bb.v ] ; 3 uses
  %.0172 = phi i32 [ 3, %bb.t ], [ 26, %bb.u ], [ 24, %bb.z ], [ %i.bb, %bb.s ], [ 8, %bb.v ] ; 6 uses
  %i.cn = icmp ult i32 %.0174, %.0172
  br i1 %i.cn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 -13, ptr %3, align 4
  %i.co = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef %.0174, i32 noundef %.0172)
  store ptr %i.co, ptr %4, align 8
  br label %bb.aq

bb.ad:                                            ; preds = %bb.ab
  %i.cp = getelementptr i8, ptr %2, i64 4
  store i32 3, ptr %i.cp, align 4
  %i.cq = sub nuw i32 %.0174, %.0172
  %i.cr = getelementptr i8, ptr %2, i64 52
  store i32 %i.cq, ptr %i.cr, align 4
  %i.cs = icmp ult i32 %.0173, %.0172
  br i1 %i.cs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 -13, ptr %3, align 4
  %i.ct = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef %.0173, i32 noundef %.0172)
  store ptr %i.ct, ptr %4, align 8
  br label %bb.aq

bb.af:                                            ; preds = %.thread199, %bb.ad
  %.0175195206 = phi i1 [ %.0175.ph, %.thread199 ], [ false, %bb.ad ]
  %.0173197205 = phi i32 [ %.0173.ph, %.thread199 ], [ %.0173, %bb.ad ]
  %.0172198204 = phi i32 [ 0, %.thread199 ], [ %.0172, %bb.ad ]
  %i.cu = sub nuw i32 %.0173197205, %.0172198204  ; 6 uses
  store i32 %i.cu, ptr %i.b, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cw = load i8, ptr %i.cv, align 4
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 24
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 41
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.db, 16
  %i.dd = or disjoint i64 %i.dc, %i.cy
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 42
  %i.df = load i8, ptr %i.de, align 2
  %i.dg = zext i8 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.dg, 8
  %i.di = or disjoint i64 %i.dd, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 43
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i64
  %i.dm = or disjoint i64 %i.di, %i.dl
  %i.dn = getelementptr i8, ptr %2, i64 16
  store i64 %i.dm, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.dp = load i8, ptr %i.do, align 4
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw i32 %i.dq, 24
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 45
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 16
  %i.dw = or disjoint i32 %i.dv, %i.dr
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 46
  %i.dy = load i8, ptr %i.dx, align 2
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 8
  %i.eb = or disjoint i32 %i.dw, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 47
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = zext i8 %i.ed to i32
  %i.ef = or disjoint i32 %i.eb, %i.ee
  %i.eg = mul i32 %i.ef, 1000
  %i.eh = getelementptr i8, ptr %2, i64 24
  store i32 %i.eg, ptr %i.eh, align 8
  store i16 %rev184, ptr %i.c, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ej = load i8, ptr %i.ei, align 4
  %i.ek = zext i8 %i.ej to i32
  %i.el = shl nuw i32 %i.ek, 24
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 16
  %i.eq = or disjoint i32 %i.ep, %i.el
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.es = load i8, ptr %i.er, align 2
  %i.et = zext i8 %i.es to i32
  %i.eu = shl nuw nsw i32 %i.et, 8
  %i.ev = or disjoint i32 %i.eq, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 7
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = zext i8 %i.ex to i32
  %i.ez = or disjoint i32 %i.ev, %i.ey
  %i.fa = getelementptr i8, ptr %2, i64 68
  store i32 %i.ez, ptr %i.fa, align 4
  %i.fb = load i8, ptr %i.u, align 4
  %i.fc = zext i8 %i.fb to i32
  %i.fd = shl nuw i32 %i.fc, 24
  %i.fe = load i8, ptr %i.y, align 1
  %i.ff = zext i8 %i.fe to i32
  %i.fg = shl nuw nsw i32 %i.ff, 16
  %i.fh = or disjoint i32 %i.fg, %i.fd
  %i.fi = load i8, ptr %i.ac, align 2
  %i.fj = zext i8 %i.fi to i32
  %i.fk = shl nuw nsw i32 %i.fj, 8
  %i.fl = or disjoint i32 %i.fh, %i.fk
  %i.fm = load i8, ptr %i.ag, align 1
  %i.fn = zext i8 %i.fm to i32
  %i.fo = or disjoint i32 %i.fl, %i.fn
  %i.fp = getelementptr i8, ptr %2, i64 72
  store i32 %i.fo, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fr = load i8, ptr %i.fq, align 4
  %i.fs = zext i8 %i.fr to i32
  %i.ft = shl nuw i32 %i.fs, 24
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 49
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = zext i8 %i.fv to i32
  %i.fx = shl nuw nsw i32 %i.fw, 16
  %i.fy = or disjoint i32 %i.fx, %i.ft
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 50
  %i.ga = load i8, ptr %i.fz, align 2
  %i.gb = zext i8 %i.ga to i32
  %i.gc = shl nuw nsw i32 %i.gb, 8
  %i.gd = or disjoint i32 %i.fy, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 51
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = zext i8 %i.gf to i32
  %i.gh = or disjoint i32 %i.gd, %i.gg
  %i.gi = getelementptr i8, ptr %2, i64 76
  store i32 %i.gh, ptr %i.gi, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.gk = load i8, ptr %i.gj, align 4
  %i.gl = zext i8 %i.gk to i32
  %i.gm = shl nuw i32 %i.gl, 24
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 61
  %i.go = load i8, ptr %i.gn, align 1
  %i.gp = zext i8 %i.go to i32
  %i.gq = shl nuw nsw i32 %i.gp, 16
  %i.gr = or disjoint i32 %i.gq, %i.gm
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 62
  %i.gt = load i8, ptr %i.gs, align 2
  %i.gu = zext i8 %i.gt to i32
  %i.gv = shl nuw nsw i32 %i.gu, 8
  %i.gw = or disjoint i32 %i.gr, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 63
  %i.gy = load i8, ptr %i.gx, align 1
  %i.gz = zext i8 %i.gy to i32
  %i.ha = or disjoint i32 %i.gw, %i.gz
  %i.hb = getelementptr i8, ptr %2, i64 80
  store i32 %i.ha, ptr %i.hb, align 8
  %i.hc = icmp ugt i32 %i.cu, 262144
  br i1 %i.hc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 -13, ptr %3, align 4
  %i.hd = load i32, ptr %i.b, align 8
  %i.he = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef %i.hd, i32 noundef 262144)
  store ptr %i.he, ptr %4, align 8
  br label %bb.aq

bb.ah:                                            ; preds = %bb.af
  %i.hf = getelementptr i8, ptr %2, i64 264       ; 5 uses
  %i.hg = zext nneg i32 %i.cu to i64
  call void @ws_buffer_assure_space(ptr noundef %i.hf, i64 noundef %i.hg)
  br i1 %.0175195206, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %spec.select = call i32 @llvm.umin.i32(i32 %i.cu, i32 15) ; 2 uses
  %i.hh = call zeroext i1 @wtap_read_bytes_buffer(ptr noundef %1, ptr noundef %i.hf, i32 noundef %spec.select, ptr noundef %3, ptr noundef %4)
  br i1 %i.hh, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.hi = sub nuw nsw i32 %i.cu, %spec.select     ; 4 uses
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val189 = load ptr, ptr %i.hf, align 8
  %i.hk = getelementptr i8, ptr %2, i64 280
  %.val190 = load i64, ptr %i.hk, align 8
  %i.hl = getelementptr i8, ptr %.val189, i64 %.val190
  %i.hm = getelementptr i8, ptr %i.hl, i64 13
  %i.hn = load i8, ptr %i.hm, align 1
  %i.ho = icmp eq i8 %i.hn, -86
  br i1 %i.ho, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %spec.select185 = call i32 @llvm.umin.i32(i32 %i.hi, i32 3) ; 2 uses
  %i.hp = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef null, i32 noundef %spec.select185, ptr noundef %3, ptr noundef %4)
  br i1 %i.hp, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.hq = sub nsw i32 %i.hi, %spec.select185      ; 2 uses
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.0171 = phi i32 [ %i.hq, %bb.am ], [ %i.hi, %bb.ak ]
  %i.hs = call zeroext i1 @wtap_read_bytes_buffer(ptr noundef %1, ptr noundef %i.hf, i32 noundef %.0171, ptr noundef %3, ptr noundef %4)
  br i1 %i.hs, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.ah
  %i.ht = call zeroext i1 @wtap_read_bytes_buffer(ptr noundef %1, ptr noundef %i.hf, i32 noundef %i.cu, ptr noundef %3, ptr noundef %4)
  br i1 %i.ht, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.z, %bb.y, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %bb.e, %bb.d, %bb.a, %bb.ap, %bb.ag, %bb.ae, %bb.ac, %bb.c
  %.0176 = phi i1 [ false, %bb.c ], [ false, %bb.ac ], [ false, %bb.ae ], [ false, %bb.ag ], [ false, %bb.ai ], [ false, %bb.al ], [ true, %bb.ap ], [ true, %bb.am ], [ true, %bb.aj ], [ false, %bb.z ], [ false, %bb.an ], [ false, %bb.q ], [ false, %bb.e ], [ false, %bb.r ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.y ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret i1 %.0176
}

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wtap_setup_packet_rec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_block_create(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_assure_space(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_read_bytes_buffer(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal range(i32 -8, 1) i32 @nettl_dump_can_write_encap(i32 noundef %0) #4 {
bb.a:
  %switch.tableidx = add i32 %0, 1                ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 96
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.nettl_dump_can_write_encap, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ -8, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @nettl_dump_open(ptr noundef initializes((64, 72)) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.nettl_file_hdr, align 2     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = getelementptr i8, ptr %0, i64 64
  store ptr @nettl_dump, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(116) %i.b, i8 0, i64 116, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %3, ptr noundef nonnull align 1 dereferenceable(12) @nettl_magic_hpux10, i64 noundef 12, i1 noundef false) #7
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.d = call i64 @g_strlcpy(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.10, i64 noundef 56) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.f = call i64 @g_strlcpy(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.11, i64 noundef 20) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.h = call i64 @g_strlcpy(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.12, i64 noundef 9) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 97
  %i.j = call i64 @g_strlcpy(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.13, i64 noundef 9) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 106
  store i8 85, ptr %i.k, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 115
  %i.m = call i64 @g_strlcpy(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.14, i64 noundef 11) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 126
  store i16 1540, ptr %i.n, align 2
  %i.o = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 128, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i1 %i.o
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @nettl_dump(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.nettlrec_hdr, align 4       ; 18 uses
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.d = load i32, ptr %1, align 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -24, ptr %2, align 4
  %i.e = tail call ptr @wtap_unwritable_rec_type_err_string(ptr noundef %1)
  store ptr %i.e, ptr %3, align 8
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 8              ; 4 uses
  %i.g = icmp ugt i32 %i.f, 262144
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 -22, ptr %2, align 4
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 noundef 0, i64 noundef 60, i1 noundef false) #7
  store i16 17408, ptr %4, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 32, ptr %i.h, align 4
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %or.cond = icmp ugt i64 %i.j, 2147483647
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 -27, ptr %2, align 4
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.k) #9, !srcloc !8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8
  %i.p = sdiv i32 %i.o, 1000
  %i.q = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.p) #9, !srcloc !9
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 %i.q, ptr %i.r, align 4
  %i.s = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.f) #9, !srcloc !10
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %1, i64 52
  %i.v = load i32, ptr %i.u, align 4              ; 3 uses
  %i.w = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.v) #9, !srcloc !11
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 3 uses
  store i32 %i.w, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 -1, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i32 -1, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  store i32 -1, ptr %i.aa, align 4
  %i.ab = getelementptr i8, ptr %1, i64 56        ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  switch i32 %i.ac, label %bb.n [
    i32 73, label %bb.h
    i32 71, label %bb.i
    i32 72, label %bb.i
    i32 70, label %bb.i
    i32 64, label %bb.i
    i32 65, label %bb.i
    i32 94, label %bb.i
    i32 74, label %bb.i
    i32 7, label %bb.j
    i32 1, label %bb.k
    i32 6, label %bb.l
    i32 2, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.ad = add nuw nsw i32 %i.f, 3
  %i.ae = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ad) #9, !srcloc !12
  store i32 %i.ae, ptr %i.t, align 4
  %i.af = add i32 %i.v, 3
  %i.ag = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.af) #9, !srcloc !13
  store i32 %i.ag, ptr %i.x, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.ah = load i16, ptr %i.c, align 8
  %rev = tail call i16 @llvm.bswap.i16(i16 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %rev, ptr %i.ai, align 2
  %i.aj = getelementptr i8, ptr %1, i64 68
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ak) #9, !srcloc !14
  store i32 %i.al, ptr %i.y, align 4
  %i.am = getelementptr i8, ptr %1, i64 72
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.an) #9, !srcloc !15
  store i32 %i.ao, ptr %i.h, align 4
  %i.ap = getelementptr i8, ptr %1, i64 76
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.aq) #9, !srcloc !16
  store i32 %i.ar, ptr %i.z, align 4
  %i.as = getelementptr i8, ptr %1, i64 80
  %i.at = load i32, ptr %i.as, align 8
  %trunc159 = trunc i32 %i.at to i16
  %rev160 = tail call i16 @llvm.bswap.i16(i16 %trunc159)
  %i.au = zext i16 %rev160 to i32
  store i32 %i.au, ptr %i.aa, align 4
  br label %bb.o

bb.j:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 2304, ptr %i.av, align 2
  br label %bb.o

bb.k:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 -11776, ptr %i.aw, align 2
  br label %bb.o

bb.l:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 -20480, ptr %i.ax, align 2
  %i.ay = add nuw nsw i32 %i.f, 3
  %i.az = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ay) #9, !srcloc !17
  store i32 %i.az, ptr %i.t, align 4
  %i.ba = add i32 %i.v, 3
  %i.bb = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ba) #9, !srcloc !18
  store i32 %i.bb, ptr %i.x, align 4
  br label %bb.o

bb.m:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 -17664, ptr %i.bc, align 2
  br label %bb.o

bb.n:                                             ; preds = %bb.g
  store i32 -8, ptr %2, align 4
  br label %bb.t

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.bd = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %4, i64 noundef 64, ptr noundef %2)
  br i1 %i.bd, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 noundef 0, i64 noundef 24, i1 noundef false) #7
  %i.be = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4, ptr noundef %2)
  br i1 %i.be, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bf = load i32, ptr %i.ab, align 8
  switch i32 %i.bf, label %bb.s [
    i32 6, label %bb.r
    i32 73, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.bg = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 3, ptr noundef %2)
  br i1 %i.bg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bh = getelementptr i8, ptr %1, i64 264
  %.val = load ptr, ptr %i.bh, align 8
  %i.bi = getelementptr i8, ptr %1, i64 280
  %.val161 = load i64, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %.val, i64 %.val161
  %i.bk = load i32, ptr %i.b, align 8
  %i.bl = zext i32 %i.bk to i64
  %i.bm = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef %i.bj, i64 noundef %i.bl, ptr noundef %2)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.f, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.n ], [ false, %bb.r ], [ %i.bm, %bb.s ], [ false, %bb.p ], [ false, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_dump_file_write(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_unwritable_rec_type_err_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { allocsize(0) }
attributes #9 = { nounwind memory(none) }

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
!8 = !{i64 2150372009}
!9 = !{i64 2150372725}
!10 = !{i64 2150373491}
!11 = !{i64 2150374266}
!12 = !{i64 2150375062}
!13 = !{i64 2150375853}
!14 = !{i64 2150376949}
!15 = !{i64 2150377690}
!16 = !{i64 2150378427}
!17 = !{i64 2150380122}
!18 = !{i64 2150380913}
end_hunk_0

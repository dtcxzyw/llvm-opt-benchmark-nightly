inline.NumInlined: 69
inline.NumDeleted: 11
begin_hunk_0_@mz_zip_close:bb.a
  %i.v = call i32 @mz_stream_get_prop_int64(ptr noundef %i.u, i32 noundef 7, ptr noundef nonnull %i.b) #23
  %i.w = icmp eq i32 %i.v, 0
  %i.x = load i64, ptr %i.b, align 8
  %i.y = icmp sgt i64 %i.x, 0
  %or.cond.i = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !20
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.ad = call i32 @mz_stream_set_prop_int64(ptr noundef %i.ac, i32 noundef 8, i64 noundef -1) #23 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 7 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !20
  %.not.i33 = icmp eq i32 %i.af, 0
  br i1 %.not.i33, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.k, align 8, !tbaa !42
  %i.ah = and i32 %i.ag, 4
  %.not108.i = icmp eq i32 %i.ah, 0
  br i1 %.not108.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.aj = call i32 @mz_stream_seek(ptr noundef %i.ai, i64 noundef 0, i32 noundef 0) #23 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.al = call i64 @mz_stream_tell(ptr noundef %i.ak) #23
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.ap = call i32 @mz_stream_seek(ptr noundef %i.ao, i64 noundef 0, i32 noundef 2) #23 ; 0 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.ar = call i64 @mz_stream_tell(ptr noundef %i.aq) #23
  %i.as = and i64 %i.ar, 4294967295
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 5 uses
  store i64 %i.as, ptr %i.at, align 8, !tbaa !23
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.av = call i32 @mz_stream_seek(ptr noundef %i.au, i64 noundef 0, i32 noundef 0) #23 ; 0 uses
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !23
  %i.az = trunc i64 %i.ay to i32
  %i.ba = call i32 @mz_stream_copy(ptr noundef %i.aw, ptr noundef %i.ax, i32 noundef %i.az) #23
  %i.bb = load i64, ptr %i.at, align 8, !tbaa !23
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !21
  %.not109.i = icmp eq i64 %i.be, 0
  br i1 %.not109.i, label %bb.m, label %mz_zip_write_cd.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bf = load i64, ptr %i.am, align 8, !tbaa !24
  %i.bg = icmp sgt i64 %i.bf, 4294967294
  br i1 %i.bg, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !21
  %i.bj = icmp ugt i64 %i.bi, 65534
  br i1 %i.bj, label %bb.o, label %bb.ac

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bk = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.bl = call i64 @mz_stream_tell(ptr noundef %i.bk) #23
  %i.bm = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.bn = call i32 @mz_stream_write_uint32(ptr noundef %i.bm, i32 noundef 101075792) #23 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.p, label %.thread164.i

bb.p:                                             ; preds = %bb.o
  %i.bp = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.bq = call i32 @mz_stream_write_uint64(ptr noundef %i.bp, i64 noundef 44) #23 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.q, label %.thread164.i

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bu = load i16, ptr %i.bt, align 8, !tbaa !44
  %i.bv = call i32 @mz_stream_write_uint16(ptr noundef %i.bs, i16 noundef zeroext %i.bu) #23 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %.thread164.i

bb.r:                                             ; preds = %bb.q
  %i.bx = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.by = call i32 @mz_stream_write_uint16(ptr noundef %i.bx, i16 noundef zeroext 45) #23 ; 2 uses
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.s, label %.thread164.i

bb.s:                                             ; preds = %bb.r
  %i.ca = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.cb = load i32, ptr %i.ae, align 8, !tbaa !20
  %i.cc = call i32 @mz_stream_write_uint32(ptr noundef %i.ca, i32 noundef %i.cb) #23 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.t, label %.thread164.i

bb.t:                                             ; preds = %bb.s
  %i.ce = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.cf = load i32, ptr %i.ae, align 8, !tbaa !20
  %i.cg = call i32 @mz_stream_write_uint32(ptr noundef %i.ce, i32 noundef %i.cf) #23 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.u, label %.thread164.i

bb.u:                                             ; preds = %bb.t
  %i.ci = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !21
  %i.cl = call i32 @mz_stream_write_uint64(ptr noundef %i.ci, i64 noundef %i.ck) #23 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.v, label %.thread164.i

bb.v:                                             ; preds = %bb.u
  %i.cn = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.co = load i64, ptr %i.cj, align 8, !tbaa !21
  %i.cp = call i32 @mz_stream_write_uint64(ptr noundef %i.cn, i64 noundef %i.co) #23 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.w, label %.thread164.i

bb.w:                                             ; preds = %bb.v
  %i.cr = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.cs = load i64, ptr %i.at, align 8, !tbaa !23
  %i.ct = call i32 @mz_stream_write_int64(ptr noundef %i.cr, i64 noundef %i.cs) #23 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.x, label %.thread164.i

bb.x:                                             ; preds = %bb.w
  %i.cv = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.cw = load i64, ptr %i.am, align 8, !tbaa !24
  %i.cx = call i32 @mz_stream_write_int64(ptr noundef %i.cv, i64 noundef %i.cw) #23 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.y, label %.thread164.i

bb.y:                                             ; preds = %bb.x
  %i.cz = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.da = call i32 @mz_stream_write_uint32(ptr noundef %i.cz, i32 noundef 117853008) #23 ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.z, label %.thread164.i

bb.z:                                             ; preds = %bb.y
  %i.dc = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.dd = load i32, ptr %i.ae, align 8, !tbaa !20
  %i.de = call i32 @mz_stream_write_uint32(ptr noundef %i.dc, i32 noundef %i.dd) #23 ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.aa, label %.thread164.i

bb.aa:                                            ; preds = %bb.z
  %i.dg = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.dh = call i32 @mz_stream_write_int64(ptr noundef %i.dg, i64 noundef %i.bl) #23 ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.ab, label %.thread164.i

bb.ab:                                            ; preds = %bb.aa
  %i.dj = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.dk = load i32, ptr %i.ae, align 8, !tbaa !20
  %i.dl = add i32 %i.dk, 1
  %i.dm = call i32 @mz_stream_write_uint32(ptr noundef %i.dj, i32 noundef %i.dl) #23
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.n
  %.12.i = phi i32 [ %i.dm, %bb.ab ], [ %i.ba, %bb.n ] ; 2 uses
  %i.dn = icmp eq i32 %.12.i, 0
  br i1 %i.dn, label %bb.ad, label %.thread164.i

bb.ad:                                            ; preds = %bb.ac
  %i.do = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.dp = call i32 @mz_stream_write_uint32(ptr noundef %i.do, i32 noundef 101010256) #23 ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.ae, label %.thread164.i

bb.ae:                                            ; preds = %bb.ad
  %i.dr = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.ds = load i32, ptr %i.ae, align 8, !tbaa !20
  %i.dt = trunc i32 %i.ds to i16
  %i.du = call i32 @mz_stream_write_uint16(ptr noundef %i.dr, i16 noundef zeroext %i.dt) #23 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.af, label %.thread164.i

bb.af:                                            ; preds = %bb.ae
  %i.dw = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.dx = load i32, ptr %i.ae, align 8, !tbaa !20
  %i.dy = trunc i32 %i.dx to i16
  %i.dz = call i32 @mz_stream_write_uint16(ptr noundef %i.dw, i16 noundef zeroext %i.dy) #23 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.ag, label %.thread164.i

bb.ag:                                            ; preds = %bb.af
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !21
  %i.ed = load ptr, ptr %i.n, align 8, !tbaa !15
  %.sink191.i = call i64 @llvm.umin.i64(i64 %i.ec, i64 65535)
  %.sink.i = trunc nuw i64 %.sink191.i to i16
  %i.ee = call i32 @mz_stream_write_uint16(ptr noundef %i.ed, i16 noundef zeroext %.sink.i) #23 ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.ah, label %.thread164.i

bb.ah:                                            ; preds = %bb.ag
  %i.eg = load i64, ptr %i.eb, align 8, !tbaa !21
  %i.eh = load ptr, ptr %i.n, align 8, !tbaa !15
  %.sink189192.i = call i64 @llvm.umin.i64(i64 %i.eg, i64 65535)
  %.sink189.i = trunc nuw i64 %.sink189192.i to i16
  %i.ei = call i32 @mz_stream_write_uint16(ptr noundef %i.eh, i16 noundef zeroext %.sink189.i) #23 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ai, label %.thread164.i

bb.ai:                                            ; preds = %bb.ah
  %i.ek = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.el = load i64, ptr %i.at, align 8, !tbaa !23
  %i.em = trunc i64 %i.el to i32
  %i.en = call i32 @mz_stream_write_uint32(ptr noundef %i.ek, i32 noundef %i.em) #23 ; 2 uses
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %.thread164.sink.split.i, label %.thread164.i

.thread164.sink.split.i:                          ; preds = %bb.ai
  %i.ep = load i64, ptr %i.am, align 8, !tbaa !24
  %i.eq = load ptr, ptr %i.n, align 8, !tbaa !15
  %.sink190193.i = call i64 @llvm.smin.i64(i64 %i.ep, i64 4294967295)
  %.sink190.i = trunc i64 %.sink190193.i to i32
  %i.er = call i32 @mz_stream_write_uint32(ptr noundef %i.eq, i32 noundef %.sink190.i) #23
  br label %.thread164.i

.thread164.i:                                     ; preds = %.thread164.sink.split.i, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.19.i = phi i32 [ %i.bq, %bb.p ], [ %i.bn, %bb.o ], [ %i.en, %bb.ai ], [ %i.ei, %bb.ah ], [ %i.ee, %bb.ag ], [ %i.dz, %bb.af ], [ %i.du, %bb.ae ], [ %i.dp, %bb.ad ], [ %.12.i, %bb.ac ], [ %i.dh, %bb.aa ], [ %i.de, %bb.z ], [ %i.da, %bb.y ], [ %i.cx, %bb.x ], [ %i.ct, %bb.w ], [ %i.cp, %bb.v ], [ %i.cl, %bb.u ], [ %i.cg, %bb.t ], [ %i.cc, %bb.s ], [ %i.by, %bb.r ], [ %i.bv, %bb.q ], [ %i.er, %.thread164.sink.split.i ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !25 ; 2 uses
  %.not110.i = icmp eq ptr %i.et, null
  br i1 %.not110.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.thread164.i
  %i.eu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.et) #25
  %i.ev = trunc i64 %i.eu to i32
  %spec.store.select.i = call i32 @llvm.smin.i32(i32 %i.ev, i32 65535)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.thread164.i
  %.0100.i = phi i32 [ %spec.store.select.i, %bb.aj ], [ 0, %.thread164.i ] ; 3 uses
  %i.ew = icmp eq i32 %.19.i, 0
  br i1 %i.ew, label %bb.al, label %mz_zip_write_cd.exit

bb.al:                                            ; preds = %bb.ak
  %i.ex = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.ey = trunc i32 %.0100.i to i16
  %i.ez = call i32 @mz_stream_write_uint16(ptr noundef %i.ex, i16 noundef zeroext %i.ey) #23 ; 2 uses
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.am, label %mz_zip_write_cd.exit

bb.am:                                            ; preds = %bb.al
  %i.fb = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.fc = load ptr, ptr %i.es, align 8, !tbaa !25
  %i.fd = call i32 @mz_stream_write(ptr noundef %i.fb, ptr noundef %i.fc, i32 noundef %.0100.i) #23
  %.not111.i = icmp eq i32 %i.fd, %.0100.i
  %spec.select.i = select i1 %.not111.i, i32 0, i32 -115
  br label %mz_zip_write_cd.exit

mz_zip_write_cd.exit:                             ; preds = %bb.l, %bb.ak, %bb.al, %bb.am
  %.0101.i = phi i32 [ -103, %bb.l ], [ %i.ez, %bb.al ], [ %spec.select.i, %bb.am ], [ %.19.i, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %mz_zip_entry_close.exit.thread35

mz_zip_entry_close.exit.thread35:                 ; preds = %mz_zip_write_cd.exit, %mz_zip_entry_close.exit.thread, %mz_zip_entry_close.exit
  %.1 = phi i32 [ %.0101.i, %mz_zip_write_cd.exit ], [ 0, %mz_zip_entry_close.exit.thread ], [ %.0, %mz_zip_entry_close.exit ]
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !16 ; 2 uses
  %.not29 = icmp eq ptr %i.ff, null
  br i1 %.not29, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %mz_zip_entry_close.exit.thread35
  %i.fg = call i32 @mz_stream_close(ptr noundef nonnull %i.ff) #23 ; 0 uses
  call void @mz_stream_delete(ptr noundef nonnull %i.fe) #23
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %mz_zip_entry_close.exit.thread35
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !40 ; 2 uses
  %.not30 = icmp eq ptr %i.fi, null
  br i1 %.not30, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = call i32 @mz_stream_mem_close(ptr noundef nonnull %i.fi) #23 ; 0 uses
  call void @mz_stream_mem_delete(ptr noundef nonnull %i.fh) #23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !41 ; 2 uses
  %.not31 = icmp eq ptr %i.fl, null
  br i1 %.not31, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fm = call i32 @mz_stream_mem_close(ptr noundef nonnull %i.fl) #23 ; 0 uses
  call void @mz_stream_mem_delete(ptr noundef nonnull %i.fk) #23
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !25 ; 2 uses
  %.not32 = icmp eq ptr %i.fo, null
  br i1 %.not32, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @free(ptr noundef nonnull %i.fo) #23
  store ptr null, ptr %i.fn, align 8, !tbaa !25
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i8 0, i64 16, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %bb.a, %bb.au
  %.022 = phi i32 [ %.1, %bb.au ], [ -102, %bb.a ]
  ret i32 %.022
}

declare void @mz_stream_delete(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -107, 1) i32 @mz_zip_entry_is_open(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 373
  %i.b = load i8, ptr %i.a, align 1, !tbaa !43
  %i.c = icmp eq i8 %i.b, 0
  %. = select i1 %i.c, i32 -107, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ -102, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mz_zip_entry_close(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %mz_zip_entry_close_raw.exit, label %mz_zip_entry_is_open.exit.i

mz_zip_entry_is_open.exit.i:                      ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 373
  %i.b = load i8, ptr %i.a, align 1, !tbaa !43
  %.not13.i = icmp eq i8 %i.b, 0
  br i1 %.not13.i, label %mz_zip_entry_close_raw.exit, label %bb.b

bb.b:                                             ; preds = %mz_zip_entry_is_open.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42
  %i.e = and i32 %i.d, 2
  %.not12.i = icmp eq i32 %i.e, 0
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @mz_zip_entry_write_close(ptr noundef nonnull %0, i32 noundef 0, i64 noundef -1, i64 noundef -1)
  br label %mz_zip_entry_close_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 @mz_zip_entry_read_close(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %mz_zip_entry_close_raw.exit

mz_zip_entry_close_raw.exit:                      ; preds = %bb.a, %mz_zip_entry_is_open.exit.i, %bb.c, %bb.d
  %.09.i = phi i32 [ -102, %bb.a ], [ -102, %mz_zip_entry_is_open.exit.i ], [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  ret i32 %.09.i
}

declare i32 @mz_stream_close(ptr noundef) local_unnamed_addr #6

declare i32 @mz_stream_mem_close(ptr noundef) local_unnamed_addr #6

declare void @mz_stream_mem_delete(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -107, 1) i32 @mz_zip_get_comment(ptr noundef readonly captures(address_is_null) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %1, align 8, !tbaa !45
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -102, %bb.a ], [ -107, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 -102, 1) i32 @mz_zip_set_comment(ptr noundef captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.d) #23
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25 ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = icmp sgt i32 %i.f, 65535
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = shl i64 %i.e, 32                         ; 2 uses
  %sext = add i64 %i.h, 4294967296
  %i.i = ashr exact i64 %sext, 32
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 1) #22 ; 3 uses
end_hunk_0
begin_hunk_1_@mz_zip_entry_write_header:bb.a
  %i.dq = shl nuw nsw i32 %i.do, 16
  %i.dr = add nuw i32 %i.dq, %i.dp
  %i.ds = lshr i32 %.sroa.0.01028.i, 1
  %i.dt = shl nuw nsw i32 %.sroa.5.01127.i, 5
  %i.du = or disjoint i32 %i.dt, %i.ds
  %i.dv = shl nuw nsw i32 %.sroa.6.01226.i, 11
  %i.dw = or disjoint i32 %i.du, %i.dv
  %i.dx = or disjoint i32 %i.dr, %i.dw
  br label %bb.ap

bb.ap:                                            ; preds = %bb.al, %bb.an, %bb.ao
  %.0232 = phi i32 [ 0, %bb.al ], [ %i.dx, %bb.ao ], [ 0, %bb.an ]
  %i.dy = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.0232) #23 ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.aq, label %mz_zip_entry_write_crc_sizes.exit

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not288, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !34
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sink.i305 = phi i32 [ %i.eb, %bb.ar ], [ 0, %bb.aq ]
  %i.ec = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.sink.i305) #23 ; 2 uses
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.at, label %mz_zip_entry_write_crc_sizes.exit

bb.at:                                            ; preds = %bb.as
  br i1 %.not278331, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !35
  %i.eg = trunc i64 %i.ef to i32
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sink19.i = phi i32 [ %i.eg, %bb.au ], [ -1, %bb.at ]
  %i.eh = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.sink19.i) #23 ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.aw, label %mz_zip_entry_write_crc_sizes.exit

bb.aw:                                            ; preds = %bb.av
  %brmerge.not.i = icmp eq i8 %.1.ph329, 0
  %.mux.i = sext i1 %.not288 to i32
  br i1 %brmerge.not.i, label %bb.ax, label %.thread.sink.split.i

bb.ax:                                            ; preds = %bb.aw
  %i.ej = load i64, ptr %i.j, align 8, !tbaa !36
  %i.ek = trunc i64 %i.ej to i32
  br label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %bb.ax, %bb.aw
  %.sink20.i = phi i32 [ %.mux.i, %bb.aw ], [ %i.ek, %bb.ax ]
  %i.el = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.sink20.i) #23
  br label %mz_zip_entry_write_crc_sizes.exit

mz_zip_entry_write_crc_sizes.exit:                ; preds = %bb.af, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %.thread.sink.split.i, %bb.av, %bb.as, %bb.ap
  %.5 = phi i32 [ %i.el, %.thread.sink.split.i ], [ %i.dy, %bb.ap ], [ %i.ec, %bb.as ], [ %i.eh, %bb.av ], [ %i.dc, %bb.ak ], [ %i.cy, %bb.aj ], [ %i.cu, %bb.ai ], [ %.0237, %bb.ah ], [ %i.cm, %bb.af ] ; 2 uses
  br i1 %.not288, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %mz_zip_entry_write_crc_sizes.exit
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.en = load i32, ptr %i.em, align 8, !tbaa !30
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !29
  %i.eq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 64, ptr noundef nonnull @.str.8, i32 noundef %i.en, i64 noundef %i.ep) #23 ; 0 uses
  br label %bb.ba

bb.az:                                            ; preds = %mz_zip_entry_write_crc_sizes.exit
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !63
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0233 = phi ptr [ %i.d, %bb.ay ], [ %i.es, %bb.az ] ; 3 uses
  %i.et = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0233) #25 ; 3 uses
  %i.eu = trunc i64 %i.et to i16                  ; 5 uses
  %i.ev = trunc i64 %i.et to i32
  %i.ew = and i32 %i.ev, 65535                    ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !79 ; 5 uses
  %i.ez = load i16, ptr %2, align 8, !tbaa !80
  %i.fa = lshr i16 %i.ez, 8
  %i.fb = trunc nuw i16 %i.fa to i8
  switch i8 %i.fb, label %mz_zip_attrib_is_dir.exit [
    i8 10, label %bb.bb
    i8 0, label %bb.bb
    i8 19, label %bb.bc
    i8 13, label %bb.bc
    i8 3, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba
  %i.fc = and i32 %i.ey, 1
  %i.fd = icmp eq i32 %i.fc, 0
  %spec.select.i.i.i308 = select i1 %i.fd, i32 438, i32 292
  %i.fe = and i32 %i.ey, 1024
  %.not10.i.i.i = icmp eq i32 %i.fe, 0
  %i.ff = and i32 %i.ey, 16
  %.not11.i.i.i = icmp eq i32 %i.ff, 0
  %..i.i.i = select i1 %.not11.i.i.i, i32 32768, i32 16457
  %.sink13.i.i.i = select i1 %.not10.i.i.i, i32 %..i.i.i, i32 40960
  %i.fg = or disjoint i32 %.sink13.i.i.i, %spec.select.i.i.i308
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba, %bb.ba, %bb.ba
  %i.fh = lshr i32 %i.ey, 16                      ; 2 uses
  %.not59.i.i = icmp eq i32 %i.fh, 0
  %spec.select.i.i = select i1 %.not59.i.i, i32 %i.ey, i32 %i.fh
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.05.ph.i = phi i32 [ %spec.select.i.i, %bb.bc ], [ %i.fg, %bb.bb ]
  %i.fi = and i32 %.05.ph.i, 61440
  %i.fj = icmp eq i32 %i.fi, 16384
  br i1 %i.fj, label %bb.be, label %mz_zip_attrib_is_dir.exit

bb.be:                                            ; preds = %bb.bd
  %i.fk = and i64 %i.et, 65535
  %i.fl = getelementptr i8, ptr %.0233, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 -1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !26
  switch i8 %i.fn, label %bb.bf [
    i8 47, label %mz_zip_attrib_is_dir.exit
    i8 92, label %mz_zip_attrib_is_dir.exit
  ]

bb.bf:                                            ; preds = %bb.be
  %i.fo = add i16 %i.eu, 1
  br label %mz_zip_attrib_is_dir.exit

mz_zip_attrib_is_dir.exit:                        ; preds = %bb.bd, %bb.ba, %bb.be, %bb.be, %bb.bf
  %.0244 = phi i16 [ %i.fo, %bb.bf ], [ %i.eu, %bb.be ], [ %i.eu, %bb.be ], [ %i.eu, %bb.ba ], [ %i.eu, %bb.bd ]
  %i.fp = phi i1 [ true, %bb.bf ], [ false, %bb.be ], [ false, %bb.be ], [ false, %bb.ba ], [ false, %bb.bd ] ; 2 uses
  %i.fq = icmp eq i32 %.5, 0
  br i1 %i.fq, label %bb.bg, label %.thread350

bb.bg:                                            ; preds = %mz_zip_attrib_is_dir.exit
  %i.fr = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.0244) #23 ; 2 uses
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.bh, label %.thread350

bb.bh:                                            ; preds = %bb.bg
  %i.ft = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.5251) #23
  br label %.thread350

.thread350:                                       ; preds = %mz_zip_attrib_is_dir.exit, %bb.bh, %bb.bg
  %.7 = phi i32 [ %i.ft, %bb.bh ], [ %i.fr, %bb.bg ], [ %.5, %mz_zip_attrib_is_dir.exit ] ; 3 uses
  br i1 %.not.i, label %bb.bp, label %bb.bi

bb.bi:                                            ; preds = %.thread350
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !64 ; 2 uses
  %.not291 = icmp eq ptr %i.fv, null
  br i1 %.not291, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #25
  %i.fx = trunc i64 %i.fw to i32
  %spec.store.select10 = call i32 @llvm.smin.i32(i32 %i.fx, i32 65535)
  %i.fy = trunc i32 %spec.store.select10 to i16
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0241 = phi i16 [ %i.fy, %bb.bj ], [ 0, %bb.bi ]
  %i.fz = icmp eq i32 %.7, 0
  br i1 %i.fz, label %bb.bl, label %.thread402

bb.bl:                                            ; preds = %bb.bk
  %i.ga = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.0241) #23 ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.bm, label %.thread402

bb.bm:                                            ; preds = %bb.bl
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !30
  %i.ge = trunc i32 %i.gd to i16
  %i.gf = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %i.ge) #23 ; 2 uses
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.bn, label %.thread402

bb.bn:                                            ; preds = %bb.bm
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.gi = load i16, ptr %i.gh, align 8, !tbaa !85
  %i.gj = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %i.gi) #23 ; 2 uses
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.bo, label %.thread402

bb.bo:                                            ; preds = %bb.bn
  %i.gl = load i32, ptr %i.ex, align 4, !tbaa !79
  %i.gm = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %i.gl) #23 ; 2 uses
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %.sink.split, label %.thread402

.sink.split:                                      ; preds = %bb.bo
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !29
  %.sink471 = call i64 @llvm.smin.i64(i64 %i.gp, i64 4294967295)
  %i.gq = trunc i64 %.sink471 to i32
  %i.gr = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %i.gq) #23
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split, %.thread350
  %.12 = phi i32 [ %.7, %.thread350 ], [ %i.gr, %.sink.split ] ; 2 uses
  %i.gs = icmp eq i32 %.12, 0
  br i1 %i.gs, label %bb.bq, label %.thread402

bb.bq:                                            ; preds = %bb.bp
  %.not292 = icmp eq i32 %i.ew, 0
  br i1 %.not292, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gt = call i32 @mz_stream_write(ptr noundef %0, ptr noundef nonnull %.0233, i32 noundef %i.ew) #23
  %.not293 = icmp eq i32 %i.gt, %i.ew             ; 2 uses
  %spec.select299 = and i1 %i.fp, %.not293
  %spec.select300 = select i1 %.not293, i32 0, i32 -116
  br i1 %spec.select299, label %bb.bt, label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  br i1 %i.fp, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.gu = call i32 @mz_stream_write_uint8(ptr noundef %0, i8 noundef zeroext 47) #23
  br label %bb.bu

bb.bu:                                            ; preds = %bb.br, %bb.bs, %bb.bt
  %.15 = phi i32 [ %spec.select300, %bb.br ], [ %i.gu, %bb.bt ], [ 0, %bb.bs ] ; 2 uses
  %i.gv = icmp eq i32 %.15, 0
  %or.cond18 = and i1 %i.av, %i.gv
  br i1 %or.cond18, label %bb.bv, label %bb.cf

bb.bv:                                            ; preds = %bb.bu
  %i.gw = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext 1) #23 ; 2 uses
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %mz_zip_extrafield_write.exit, label %.thread402

mz_zip_extrafield_write.exit:                     ; preds = %bb.bv
  %i.gy = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.1254) #23 ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.bw, label %.thread402

bb.bw:                                            ; preds = %mz_zip_extrafield_write.exit
  br i1 %.not288, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ha = load i64, ptr %i.j, align 8, !tbaa !36
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %.sink470 = phi i64 [ %i.ha, %bb.bx ], [ 0, %bb.bw ]
  %i.hb = call i32 @mz_stream_write_int64(ptr noundef %0, i64 noundef %.sink470) #23 ; 2 uses
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.bz, label %.thread402

bb.bz:                                            ; preds = %bb.by
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !35
  %i.hf = call i32 @mz_stream_write_int64(ptr noundef %0, i64 noundef %i.he) #23 ; 2 uses
  %i.hg = icmp ne i32 %i.hf, 0
  %or.cond20 = or i1 %.not.i, %i.hg
  br i1 %or.cond20, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !29 ; 2 uses
  %i.hj = icmp sgt i64 %i.hi, 4294967294
  br i1 %i.hj, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.hk = call i32 @mz_stream_write_int64(ptr noundef %0, i64 noundef %i.hi) #23
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz
  %.18 = phi i32 [ %i.hf, %bb.bz ], [ %i.hk, %bb.cb ], [ 0, %bb.ca ] ; 2 uses
  %i.hl = icmp ne i32 %.18, 0
  %or.cond22 = or i1 %.not.i, %i.hl
  br i1 %or.cond22, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !30 ; 2 uses
  %i.ho = icmp ugt i32 %i.hn, 65534
  br i1 %i.ho, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.hp = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %i.hn) #23
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cc, %bb.cd, %bb.ce, %bb.bu
  %.19 = phi i32 [ %.18, %bb.cc ], [ %i.hp, %bb.ce ], [ 0, %bb.cd ], [ %.15, %bb.bu ] ; 2 uses
  %i.hq = icmp eq i32 %.19, 0
  %or.cond25 = and i1 %i.ca, %i.hq
  br i1 %or.cond25, label %bb.cg, label %bb.cn

bb.cg:                                            ; preds = %bb.cf
  %i.hr = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext 10) #23 ; 2 uses
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %mz_zip_extrafield_write.exit311, label %.thread402

mz_zip_extrafield_write.exit311:                  ; preds = %bb.cg
  %i.ht = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.0252) #23 ; 2 uses
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.ch, label %.thread402

bb.ch:                                            ; preds = %mz_zip_extrafield_write.exit311
  %i.hv = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef 0) #23 ; 2 uses
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.ci, label %.thread402

bb.ci:                                            ; preds = %bb.ch
  %i.hx = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext 1) #23 ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.cj, label %.thread402

bb.cj:                                            ; preds = %bb.ci
  %i.hz = add nsw i16 %.0252, -8
  %i.ia = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %i.hz) #23 ; 2 uses
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.ck, label %.thread402

bb.ck:                                            ; preds = %bb.cj
  %i.ic = load i64, ptr %i.bs, align 8, !tbaa !57
  %i.id = mul i64 %i.ic, 10000000
  %i.ie = add i64 %i.id, 116444736000000000
  %i.if = call i32 @mz_stream_write_uint64(ptr noundef %0, i64 noundef %i.ie) #23 ; 2 uses
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.cl, label %.thread402

bb.cl:                                            ; preds = %bb.ck
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !61
  %i.ij = mul i64 %i.ii, 10000000
  %i.ik = add i64 %i.ij, 116444736000000000
  %i.il = call i32 @mz_stream_write_uint64(ptr noundef %0, i64 noundef %i.ik) #23 ; 2 uses
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.cm, label %.thread402

bb.cm:                                            ; preds = %bb.cl
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.io = load i64, ptr %i.in, align 8, !tbaa !82
  %i.ip = mul i64 %i.io, 10000000
  %i.iq = add i64 %i.ip, 116444736000000000
  %i.ir = call i32 @mz_stream_write_uint64(ptr noundef %0, i64 noundef %i.iq) #23
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cf
  %.25 = phi i32 [ %i.ir, %bb.cm ], [ %.19, %bb.cf ] ; 2 uses
  %i.is = icmp eq i32 %.25, 0
  %i.it = icmp ne i16 %.0245, 0
  %or.cond28 = select i1 %i.is, i1 %i.it, i1 false
  br i1 %or.cond28, label %bb.co, label %.thread402

bb.co:                                            ; preds = %bb.cn
  %i.iu = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext 13) #23 ; 2 uses
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %mz_zip_extrafield_write.exit313, label %.thread402

mz_zip_extrafield_write.exit313:                  ; preds = %bb.co
  %i.iw = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.0245) #23 ; 2 uses
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.cp, label %.thread402

bb.cp:                                            ; preds = %mz_zip_extrafield_write.exit313
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !61
  %i.ja = trunc i64 %i.iz to i32
  %i.jb = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %i.ja) #23 ; 2 uses
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %bb.cq, label %.thread402

bb.cq:                                            ; preds = %bb.cp
  %i.jd = load i64, ptr %i.bs, align 8, !tbaa !57
  %i.je = trunc i64 %i.jd to i32
  %i.jf = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %i.je) #23 ; 2 uses
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.cr, label %.thread402

bb.cr:                                            ; preds = %bb.cq
  %i.jh = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext 0) #23 ; 2 uses
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.cs, label %.thread402

bb.cs:                                            ; preds = %bb.cr
  %i.jj = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext 0) #23 ; 2 uses
  %i.jk = icmp eq i32 %i.jj, 0
  %i.jl = icmp ne i32 %.0243, 0
  %or.cond31 = select i1 %i.jk, i1 %i.jl, i1 false
  br i1 %or.cond31, label %bb.ct, label %.thread402

bb.ct:                                            ; preds = %bb.cs
  %i.jm = load ptr, ptr %i.cb, align 8, !tbaa !65
  %i.jn = call i32 @mz_stream_write(ptr noundef %0, ptr noundef %i.jm, i32 noundef %.0243) #23
  %.not294 = icmp eq i32 %i.jn, %.0243
  %spec.select301 = select i1 %.not294, i32 0, i32 -116
  br label %.thread402

.thread402:                                       ; preds = %bb.co, %mz_zip_extrafield_write.exit313, %bb.cp, %bb.cq, %bb.cr, %bb.cg, %mz_zip_extrafield_write.exit311, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.by, %mz_zip_extrafield_write.exit, %bb.bv, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.cl, %bb.ct, %bb.cs, %bb.cn
  %.30 = phi i32 [ %.25, %bb.cn ], [ %spec.select301, %bb.ct ], [ %i.jj, %bb.cs ], [ %i.hr, %bb.cg ], [ %i.gw, %bb.bv ], [ %i.il, %bb.cl ], [ %.7, %bb.bk ], [ %.12, %bb.bp ], [ %i.gm, %bb.bo ], [ %i.gj, %bb.bn ], [ %i.gf, %bb.bm ], [ %i.ga, %bb.bl ], [ %i.hb, %bb.by ], [ %i.gy, %mz_zip_extrafield_write.exit ], [ %i.if, %bb.ck ], [ %i.ia, %bb.cj ], [ %i.hx, %bb.ci ], [ %i.hv, %bb.ch ], [ %i.ht, %mz_zip_extrafield_write.exit311 ], [ %i.jh, %bb.cr ], [ %i.jf, %bb.cq ], [ %i.jb, %bb.cp ], [ %i.iw, %mz_zip_extrafield_write.exit313 ], [ %i.iu, %bb.co ] ; 3 uses
  %i.jo = load i16, ptr %i.aw, align 2, !tbaa !33
  %.not295 = icmp eq i16 %i.jo, 0
end_hunk_1
begin_hunk_2_@mz_zip_time_t_to_dos_date:bb.a
  %i.c = icmp sgt i32 %.sroa.9.0.copyload.fr, 1979
  %i.d = icmp sgt i32 %.sroa.9.0.copyload.fr, 79
  %. = select i1 %i.d, i32 -80, i32 20
  %spec.select = select i1 %i.c, i32 -1980, i32 %.
  %i.e = add nsw i32 %spec.select, %.sroa.9.0.copyload.fr
  br label %bb.b

bb.b:                                             ; preds = %mz_zip_time_t_to_tm.exit, %.thread
  %.sroa.0.01028 = phi i32 [ 0, %.thread ], [ %.sroa.0.0.copyload, %mz_zip_time_t_to_tm.exit ] ; 2 uses
  %.sroa.5.01127 = phi i32 [ 0, %.thread ], [ %.sroa.5.0.copyload, %mz_zip_time_t_to_tm.exit ] ; 2 uses
  %.sroa.6.01226 = phi i32 [ 0, %.thread ], [ %.sroa.6.0.copyload, %mz_zip_time_t_to_tm.exit ] ; 2 uses
  %.sroa.7.01325 = phi i32 [ 0, %.thread ], [ %.sroa.7.0.copyload, %mz_zip_time_t_to_tm.exit ] ; 2 uses
  %.sroa.8.01424 = phi i32 [ 0, %.thread ], [ %.sroa.8.0.copyload, %mz_zip_time_t_to_tm.exit ] ; 2 uses
  %i.f = phi i32 [ 20, %.thread ], [ %i.e, %mz_zip_time_t_to_tm.exit ] ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.f, 208
  %or.cond17.i.i = icmp ult i32 %.sroa.8.01424, 12
  %or.cond.i = select i1 %or.cond.i.i, i1 %or.cond17.i.i, i1 false
  %i.g = add i32 %.sroa.7.01325, -1
  %or.cond18.i.i = icmp ult i32 %i.g, 31
  %or.cond10.i = select i1 %or.cond.i, i1 %or.cond18.i.i, i1 false
  %or.cond19.i.i = icmp ult i32 %.sroa.6.01226, 24
  %or.cond11.i = select i1 %or.cond10.i, i1 %or.cond19.i.i, i1 false
  %or.cond20.i.i = icmp ult i32 %.sroa.5.01127, 60
  %or.cond12.i = select i1 %or.cond11.i, i1 %or.cond20.i.i, i1 false
  %narrow.i.i = icmp ult i32 %.sroa.0.01028, 60
  %or.cond13.i = select i1 %or.cond12.i, i1 %narrow.i.i, i1 false
  br i1 %or.cond13.i, label %bb.c, label %mz_zip_tm_to_dosdate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw nsw i32 %.sroa.8.01424, 5
  %i.i = add nuw nsw i32 %i.h, 32
  %i.j = or disjoint i32 %i.i, %.sroa.7.01325
  %i.k = shl i32 %i.f, 25
  %i.l = shl nuw nsw i32 %i.j, 16
  %i.m = add nuw i32 %i.k, %i.l
  %i.n = lshr i32 %.sroa.0.01028, 1
  %i.o = shl nuw nsw i32 %.sroa.5.01127, 5
  %i.p = or disjoint i32 %i.o, %i.n
  %i.q = shl nuw nsw i32 %.sroa.6.01226, 11
  %i.r = or disjoint i32 %i.p, %i.q
  %i.s = or disjoint i32 %i.m, %i.r
  br label %mz_zip_tm_to_dosdate.exit

mz_zip_tm_to_dosdate.exit:                        ; preds = %bb.b, %bb.c
  %.0.i1 = phi i32 [ %i.s, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0.i1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, -6291456) i32 @mz_zip_tm_to_dosdate(ptr noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 4 ; 3 uses
  %i.a = icmp sgt i32 %.sroa.13.0.copyload, 1979
  %i.b = icmp sgt i32 %.sroa.13.0.copyload, 79
  %. = select i1 %i.b, i32 -80, i32 20
  %.sink = select i1 %i.a, i32 -1980, i32 %.
  %i.c = add nsw i32 %.sroa.13.0.copyload, %.sink ; 2 uses
  %or.cond.i = icmp ult i32 %i.c, 208
  %or.cond17.i = icmp ult i32 %.sroa.11.0.copyload, 12
  %or.cond = select i1 %or.cond.i, i1 %or.cond17.i, i1 false
  %i.d = add i32 %.sroa.9.0.copyload, -1
  %or.cond18.i = icmp ult i32 %i.d, 31
  %or.cond10 = select i1 %or.cond, i1 %or.cond18.i, i1 false
  %or.cond19.i = icmp ult i32 %.sroa.7.0.copyload, 24
  %or.cond11 = select i1 %or.cond10, i1 %or.cond19.i, i1 false
  %or.cond20.i = icmp ult i32 %.sroa.5.0.copyload, 60
  %or.cond12 = select i1 %or.cond11, i1 %or.cond20.i, i1 false
  %narrow.i = icmp ult i32 %.sroa.0.0.copyload, 60
  %or.cond13 = select i1 %or.cond12, i1 %narrow.i, i1 false
  br i1 %or.cond13, label %bb.b, label %mz_zip_invalid_date.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i32 %.sroa.11.0.copyload, 5
  %i.f = add nuw nsw i32 %i.e, 32
  %i.g = or disjoint i32 %i.f, %.sroa.9.0.copyload
  %i.h = shl i32 %i.c, 25
  %i.i = shl nuw nsw i32 %i.g, 16
  %i.j = add nuw i32 %i.h, %i.i
  %i.k = lshr i32 %.sroa.0.0.copyload, 1
  %i.l = shl nuw nsw i32 %.sroa.5.0.copyload, 5
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = shl nuw nsw i32 %.sroa.7.0.copyload, 11
  %i.o = or disjoint i32 %i.m, %i.n
  %i.p = or disjoint i32 %i.j, %i.o
  br label %mz_zip_invalid_date.exit.thread

mz_zip_invalid_date.exit.thread:                  ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.p, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @mz_zip_ntfs_to_unix_time(i64 noundef %0, ptr noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = add i64 %0, -116444736000000000
  %i.b = udiv i64 %i.a, 10000000
  store i64 %i.b, ptr %1, align 8, !tbaa !18
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @mz_zip_unix_to_ntfs_time(i64 noundef %0, ptr noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = mul i64 %0, 10000000
  %i.b = add i64 %i.a, 116444736000000000
  store i64 %i.b, ptr %1, align 8, !tbaa !18
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @mz_zip_get_compression_method_string(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.b
    i32 8, label %bb.c
    i32 12, label %bb.d
    i32 14, label %bb.e
    i32 95, label %bb.f
    i32 93, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ @.str, %bb.a ], [ @.str.1, %bb.b ], [ @.str.2, %bb.c ], [ @.str.3, %bb.d ], [ @.str.4, %bb.e ], [ @.str.5, %bb.f ], [ @.str.6, %bb.g ]
  ret ptr %.0
}

declare i32 @mz_stream_read_uint32(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

declare i32 @mz_stream_read_uint64(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @mz_stream_read_int64(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @mz_stream_find_reverse(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @mz_stream_is_open(ptr noundef) local_unnamed_addr #6

declare i32 @mz_stream_find(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare void @mz_stream_mem_set_buffer_limit(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @mz_stream_write_uint32(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @mz_stream_write_int64(ptr noundef, i64 noundef) local_unnamed_addr #6

declare i32 @mz_stream_mem_get_buffer(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @mz_stream_raw_create() local_unnamed_addr #6

declare i32 @mz_stream_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @mz_stream_zlib_create() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #20

declare i32 @mz_stream_mem_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !5, i64 317}
!8 = !{!"mz_zip_s", !9, i64 0, !9, i64 128, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !4, i64 312, !5, i64 316, !5, i64 317, !4, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !4, i64 368, !5, i64 372, !5, i64 373, !5, i64 374, !4, i64 376, !11, i64 384, !10, i64 392, !12, i64 400}
!9 = !{!"mz_zip_file_s", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !11, i64 8, !11, i64 16, !11, i64 24, !4, i64 32, !11, i64 40, !11, i64 48, !10, i64 56, !10, i64 58, !10, i64 60, !4, i64 64, !11, i64 72, !10, i64 80, !4, i64 84, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !10, i64 120, !10, i64 122, !5, i64 124, !10, i64 126}
!10 = !{!"short", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!8, !13, i64 256}
!16 = !{!8, !13, i64 272}
!17 = !{!8, !13, i64 264}
!18 = !{!11, !11, i64 0}
!19 = !{!10, !10, i64 0}
!20 = !{!8, !4, i64 320}
!21 = !{!8, !11, i64 384}
!22 = !{!8, !5, i64 316}
!23 = !{!8, !11, i64 360}
!24 = !{!8, !11, i64 352}
!25 = !{!8, !12, i64 400}
!26 = !{!5, !5, i64 0}
!27 = !{!8, !4, i64 368}
!28 = !{!8, !11, i64 328}
!29 = !{!9, !11, i64 72}
!30 = !{!9, !4, i64 64}
!31 = !{!9, !10, i64 4}
!32 = !{!9, !12, i64 96}
!33 = !{!9, !10, i64 58}
!34 = !{!9, !4, i64 32}
!35 = !{!9, !11, i64 40}
!36 = !{!9, !11, i64 48}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!8, !11, i64 336}
!40 = !{!8, !13, i64 296}
!41 = !{!8, !13, i64 304}
!42 = !{!8, !4, i64 312}
!43 = !{!8, !5, i64 373}
!44 = !{!8, !10, i64 392}
!45 = !{!12, !12, i64 0}
!46 = !{!8, !5, i64 372}
!47 = !{!8, !4, i64 64}
!48 = !{!8, !11, i64 72}
!49 = !{!50, !4, i64 12}
!50 = !{!"tm", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !11, i64 40, !12, i64 48}
!51 = !{!50, !4, i64 16}
!52 = !{!50, !4, i64 20}
!53 = !{!50, !4, i64 8}
!54 = !{!50, !4, i64 4}
!55 = !{!50, !4, i64 0}
!56 = !{!50, !4, i64 32}
!57 = !{!9, !11, i64 8}
!58 = !{!9, !10, i64 56}
!59 = !{!9, !10, i64 60}
!60 = distinct !{!60, !38}
!61 = !{!9, !11, i64 16}
!62 = distinct !{!62, !38}
!63 = !{!9, !12, i64 88}
!64 = !{!9, !12, i64 104}
!65 = !{!9, !12, i64 112}
!66 = !{!8, !10, i64 6}
!67 = !{!8, !10, i64 122}
!68 = !{!8, !5, i64 374}
!69 = !{!8, !13, i64 288}
!70 = !{!8, !13, i64 280}
!71 = !{!8, !10, i64 4}
!72 = !{!8, !11, i64 40}
!73 = !{!8, !11, i64 48}
!74 = !{!8, !4, i64 376}
!75 = !{!8, !4, i64 84}
!76 = !{!8, !10, i64 0}
!77 = !{!8, !4, i64 32}
!78 = !{!9, !10, i64 120}
!79 = !{!9, !4, i64 84}
!80 = !{!9, !10, i64 0}
!81 = distinct !{!81, !38}
!82 = !{!9, !11, i64 24}
!83 = !{!9, !10, i64 2}
!84 = !{!9, !10, i64 6}
!85 = !{!9, !10, i64 80}
!86 = distinct !{!86, !38}
!87 = !{!8, !12, i64 224}
!88 = !{!8, !10, i64 186}
!89 = !{!8, !10, i64 184}
!90 = distinct !{!90, !38}
!91 = !{!8, !10, i64 56}
!92 = !{!8, !12, i64 88}
!93 = !{!94, !94, i64 0}
!94 = !{!"p1 _ZTS13mz_zip_file_s", !13, i64 0}
!95 = !{!8, !12, i64 96}
!96 = !{!8, !10, i64 58}
!97 = !{!8, !11, i64 344}
!98 = !{!8, !10, i64 60}
!99 = distinct !{!99, !38}
!100 = distinct !{!100, !38}
!101 = !{!102, !102, i64 0}
!102 = !{!"p1 int", !13, i64 0}
!103 = distinct !{!103, !38}
end_hunk_2

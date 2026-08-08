inline.NumInlined: 42
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@av_exif_parse_buffer:bb.a
  %i.at = sub i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32
  %..i65 = call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.au)
  %i.av = sext i32 %..i65 to i64
  %i.aw = getelementptr inbounds i8, ptr %i.aq, i64 %i.av
  store ptr %i.aw, ptr %5, align 8, !tbaa !58
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.w
  %.081 = phi i32 [ 65532, %bb.r ], [ %i.bt, %bb.w ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !48
  %i.ay = call fastcc i32 @exif_parse_ifd_list(ptr noundef %0, ptr noundef %5, i32 noundef %i.ax, i32 noundef 0, ptr noundef nonnull %6, i32 noundef 1) ; 4 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @av_exif_free(ptr noundef nonnull %6)
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.7, i32 noundef %.081, i32 noundef %i.ay) #14
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !61
  %i.bb = load ptr, ptr %i.ap, align 8, !tbaa !60 ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.be to i32
  %..i67 = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bf)
  %i.bg = sext i32 %..i67 to i64
  %i.bh = getelementptr inbounds i8, ptr %i.bb, i64 %i.bg
  store ptr %i.bh, ptr %5, align 8, !tbaa !58
  %i.bi = trunc i32 %.081 to i16
  %i.bj = call i32 @av_exif_set_entry(ptr poison, ptr noundef %3, i16 noundef zeroext %i.bi, i32 noundef 13, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef nonnull %6)
  call void @av_exif_free(ptr noundef nonnull %6)
  %i.bk = icmp sgt i32 %i.bj, -1
  %i.bl = icmp ne i32 %i.ay, 0
  %or.cond = and i1 %i.bl, %i.bk
  br i1 %or.cond, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.bm = load ptr, ptr %i.an, align 8, !tbaa !61
  %i.bn = load ptr, ptr %5, align 8, !tbaa !58
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32
  %i.bs = icmp slt i32 %i.br, 1
  br i1 %i.bs, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.bt = add nsw i32 %.081, -1
  %i.bu = icmp sgt i32 %.081, 65517
  br i1 %i.bu, label %bb.s, label %.loopexit, !llvm.loop !62

.critedge:                                        ; preds = %bb.u, %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %.critedge, %bb.q
  %i.bv = load ptr, ptr %5, align 8, !tbaa !58
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !60
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = add i32 %.2, %i.cb
  br label %bb.x

bb.x:                                             ; preds = %.thread76, %bb.p, %.loopexit, %bb.c, %bb.d, %bb.b, %bb.a
  %.253 = phi i32 [ -22, %bb.a ], [ -1094995529, %bb.d ], [ %.051.ph, %.thread76 ], [ -1094995529, %bb.c ], [ %i.ak, %bb.p ], [ %i.cc, %.loopexit ], [ -22, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.253
}

declare i32 @ff_tdecode_header(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @exif_parse_ifd_list(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef range(i32 0, 5) %3, ptr noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load ptr, ptr %1, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.16, i32 noundef %i.h) #14
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.k = load ptr, ptr %1, align 8, !tbaa !58
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = icmp slt i32 %i.o, 2
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not61 = icmp eq i32 %5, 0
  %i.q = select i1 %.not61, i32 16, i32 48
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef %i.q, ptr noundef nonnull @.str.17) #14
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.r = tail call i32 @ff_tget_short(ptr noundef nonnull %1, i32 noundef %2) #14 ; 8 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.t = load ptr, ptr %1, align 8, !tbaa !58
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = mul i32 %i.r, 12
  %i.z = icmp ugt i32 %i.y, %i.x
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not60 = icmp eq i32 %5, 0
  %i.aa = select i1 %.not60, i32 16, i32 48
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef %i.aa, ptr noundef nonnull @.str.18, i32 noundef %i.r) #14
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.ab = icmp ugt i32 %i.r, 4096
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not59 = icmp eq i32 %5, 0
  %i.ac = select i1 %.not59, i32 16, i32 48
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef %i.ac, ptr noundef nonnull @.str.19, i32 noundef %i.r) #14
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.r, ptr %i.ad, align 8, !tbaa !21
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.20, i32 noundef %i.r) #14
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !21 ; 2 uses
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = zext i32 %i.ae to i64
  %i.ag = call i32 @av_size_mult(i64 noundef %i.af, i64 noundef 40, ptr noundef nonnull %i.a) #14
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %4, align 8, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !53
  %i.al = call ptr @av_fast_realloc(ptr noundef %i.ai, ptr noundef nonnull %i.aj, i64 noundef %i.ak) #14 ; 3 uses
  %.not58 = icmp eq ptr %i.al, null
  br i1 %.not58, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @av_freep(ptr noundef nonnull %4) #14
  br label %.sink.split

bb.k:                                             ; preds = %bb.i
  store ptr %i.al, ptr %4, align 8, !tbaa !17
  %i.am = load i64, ptr %i.a, align 8, !tbaa !53
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.al, i8 0, i64 %i.am, i1 false)
  %.not104 = icmp eq i32 %i.r, 0
  br i1 %.not104, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.an = icmp samesign ugt i32 %3, 3
  %i.ao = add nuw nsw i32 %3, 1
  br i1 %i.an, label %.sink.split, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.r to i64
  %.pre = load ptr, ptr %1, align 8, !tbaa !58
  %.pre112 = load ptr, ptr %i.c, align 8, !tbaa !60
  br label %.lr.ph.split

bb.l:                                             ; preds = %exif_decode_tag.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !63

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.l
  %i.ap = phi ptr [ %.pre112, %.lr.ph.split.preheader ], [ %i.li, %bb.l ]
  %i.aq = phi ptr [ %.pre, %.lr.ph.split.preheader ], [ %i.lp, %bb.l ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !17
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %indvars.iv ; 25 uses
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = trunc i64 %i.av to i32                  ; 4 uses
  %i.ax = call i32 @ff_tget_short(ptr noundef nonnull %1, i32 noundef %2) #14, !inline_history !64
  %i.ay = trunc i32 %i.ax to i16
  store i16 %i.ay, ptr %i.as, align 8, !tbaa !44
  %i.az = call i32 @ff_tget_short(ptr noundef nonnull %1, i32 noundef %2) #14, !inline_history !64 ; 6 uses
  %i.ba = call i32 @ff_tget_long(ptr noundef nonnull %1, i32 noundef %2) #14, !inline_history !64 ; 5 uses
  %i.bb = call i32 @ff_tget_long(ptr noundef nonnull %1, i32 noundef %2) #14, !inline_history !64 ; 5 uses
  %i.bc = load i16, ptr %i.as, align 8, !tbaa !44
  %i.bd = zext i16 %i.bc to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.21, i32 noundef %i.bd, i32 noundef %i.az, i32 noundef %i.ba, i32 noundef %i.aw, i32 noundef %i.bb) #14, !inline_history !64
  %.not.i = icmp eq i32 %i.az, 0
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.split
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.22) #14, !inline_history !64
  br label %exif_decode_tag.exit

bb.n:                                             ; preds = %.lr.ph.split
  %i.be = icmp ugt i32 %i.az, 13
  %i.bf = icmp ugt i32 %i.ba, 268435454
  %or.cond.i = select i1 %i.be, i1 true, i1 %i.bf
  br i1 %or.cond.i, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp eq i32 %i.az, 13                   ; 2 uses
  br i1 %i.bg, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = load i16, ptr %i.as, align 8, !tbaa !44
  %i.bi = zext i16 %i.bh to i32
  %i.bj = call i32 @ff_tis_ifd(i32 noundef %i.bi) #14, !inline_history !64
  %.not86.i = icmp eq i32 %i.bj, 0
  br i1 %.not86.i, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bk = load i16, ptr %i.as, align 8, !tbaa !44
  %i.bl = icmp eq i16 %i.bk, -28036
  br i1 %i.bl, label %.thread, label %.thread66

.thread:                                          ; preds = %bb.o, %bb.p, %bb.q
  %.not87.i = icmp eq i32 %i.bb, 0
  br i1 %.not87.i, label %exif_decode_tag.exit, label %bb.r

bb.r:                                             ; preds = %.thread
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !60  ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32
  %i.bs = icmp slt i32 %i.bb, 0
  %..i.i = call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.br)
  %.0.i.i = select i1 %i.bs, i32 0, i32 %..i.i
  %i.bt = sext i32 %.0.i.i to i64
  %i.bu = getelementptr inbounds i8, ptr %i.bn, i64 %i.bt ; 19 uses
  store ptr %i.bu, ptr %1, align 8, !tbaa !58
  %.pr = load i16, ptr %i.as, align 8, !tbaa !44
  %i.bv = icmp eq i16 %.pr, -28036
  br i1 %i.bv, label %bb.s, label %.thread80

.thread80:                                        ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 13, ptr %i.bw, align 4, !tbaa !22
  %i.bx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 1, ptr %i.bx, align 8, !tbaa !52
  %i.by = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !51
  br label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.bz = ptrtoint ptr %i.bu to i64
  %i.ca = sub i64 %i.bo, %i.bz
  %i.cb = trunc i64 %i.ca to i32                  ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 12
  br i1 %i.cc, label %.thread66, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.s
  %i.cd = load i32, ptr %i.bu, align 1
  %i.ce = icmp ne i32 %i.cd, 4411201
  %i.cf = zext i1 %i.ce to i32
  %.not.i64 = icmp eq i32 %i.cf, 0
  br i1 %.not.i64, label %exif_get_makernote_offset.exit, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.cg = load i32, ptr %i.bu, align 1
  %i.ch = xor i32 %i.cg, 4413009
  %i.ci = getelementptr i8, ptr %i.bu, i64 4
  %i.cj = load i16, ptr %i.ci, align 1
  %i.ck = zext i16 %i.cj to i32
  %i.cl = or i32 %i.ch, %i.ck
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %.not.1.i = icmp eq i32 %i.cn, 0
  br i1 %.not.1.i, label %exif_get_makernote_offset.exit, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.co = load i64, ptr %i.bu, align 1
  %i.cp = icmp ne i64 %i.co, 86102372667206
  %i.cq = zext i1 %i.cp to i32
  %.not.2.i = icmp eq i32 %i.cq, 0
  br i1 %.not.2.i, label %exif_get_makernote_offset.exit, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.cr = load i32, ptr %i.bu, align 1
  %i.cs = icmp ne i32 %i.cr, 1229608262
  %i.ct = zext i1 %i.cs to i32
  %.not.3.i = icmp eq i32 %i.ct, 0
  br i1 %.not.3.i, label %exif_get_makernote_offset.exit, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.cu = load i32, ptr %i.bu, align 1
  %i.cv = xor i32 %i.cu, 1297697871
  %i.cw = getelementptr i8, ptr %i.bu, i64 4
  %i.cx = load i16, ptr %i.cw, align 1
  %i.cy = zext i16 %i.cx to i32
  %i.cz = xor i32 %i.cy, 80
  %i.da = or i32 %i.cv, %i.cz
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = zext i1 %i.db to i32
  %.not.4.i = icmp eq i32 %i.dc, 0
  br i1 %.not.4.i, label %exif_get_makernote_offset.exit, label %.preheader.5.i

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.dd = load i64, ptr %i.bu, align 1
  %i.de = xor i64 %i.dd, 23456226450426959
  %i.df = getelementptr i8, ptr %i.bu, i64 8
  %i.dg = load i16, ptr %i.df, align 1
  %i.dh = zext i16 %i.dg to i64
  %i.di = xor i64 %i.dh, 18761
  %i.dj = or i64 %i.de, %i.di
  %i.dk = icmp ne i64 %i.dj, 0
  %i.dl = zext i1 %i.dk to i32
  %.not.5.i = icmp eq i32 %i.dl, 0
  br i1 %.not.5.i, label %exif_get_makernote_offset.exit, label %.preheader.6.i

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.dm = load i64, ptr %i.bu, align 1
  %i.dn = xor i64 %i.dm, 7597132162767151440
  %i.do = getelementptr i8, ptr %i.bu, i64 8
  %i.dp = load i32, ptr %i.do, align 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = xor i64 %i.dq, 99
  %i.ds = or i64 %i.dn, %i.dr
  %i.dt = icmp ne i64 %i.ds, 0
  %i.du = zext i1 %i.dt to i32
  %.not.6.i = icmp eq i32 %i.du, 0
  br i1 %.not.6.i, label %exif_get_makernote_offset.exit, label %.preheader.7.i

.preheader.7.i:                                   ; preds = %.preheader.6.i
  %i.dv = load i64, ptr %i.bu, align 1
  %i.dw = icmp ne i64 %i.dv, 280469391699
  %i.dx = zext i1 %i.dw to i32
  %.not.7.i = icmp eq i32 %i.dx, 0
  br i1 %.not.7.i, label %exif_get_makernote_offset.exit, label %.preheader.8.i

.preheader.8.i:                                   ; preds = %.preheader.7.i
  %i.dy = load i64, ptr %i.bu, align 1
  %i.dz = xor i64 %i.dy, 4851296129336102739
  %i.ea = getelementptr i8, ptr %i.bu, i64 8
  %i.eb = load i32, ptr %i.ea, align 1
  %i.ec = zext i32 %i.eb to i64
  %i.ed = xor i64 %i.ec, 32
  %i.ee = or i64 %i.dz, %i.ed
  %i.ef = icmp ne i64 %i.ee, 0
  %i.eg = zext i1 %i.ef to i32
  %.not.8.i = icmp eq i32 %i.eg, 0
  br i1 %.not.8.i, label %exif_get_makernote_offset.exit, label %bb.t

bb.t:                                             ; preds = %.preheader.8.i
  %i.eh = load i32, ptr %i.bu, align 1
  %i.ei = xor i32 %i.eh, 1869310286
  %i.ej = getelementptr i8, ptr %i.bu, i64 4
  %i.ek = load i16, ptr %i.ej, align 1
  %i.el = zext i16 %i.ek to i32
  %i.em = xor i32 %i.el, 110
  %i.en = or i32 %i.ei, %i.em
  %i.eo = icmp ne i32 %i.en, 0
  %i.ep = zext i1 %i.eo to i32
  %.not17.i = icmp eq i32 %i.ep, 0
  br i1 %.not17.i, label %bb.u, label %exif_get_makernote_offset.exit.thread72.thread

exif_get_makernote_offset.exit.thread72.thread:   ; preds = %bb.t
  %i.eq = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 13, ptr %i.eq, align 4, !tbaa !22
  %i.er = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 1, ptr %i.er, align 8, !tbaa !52
  %i.es = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.es, align 4, !tbaa !51
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.et = icmp samesign ult i32 %i.cb, 14
  br i1 %i.et, label %.thread66, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bu, i64 10
  %i.ev = load i32, ptr %i.eu, align 1, !tbaa !37
  switch i32 %i.ev, label %exif_get_makernote_offset.exit.thread72.thread94 [
    i32 704662861, label %.thread66
    i32 2771273, label %.thread66
  ]

exif_get_makernote_offset.exit.thread72.thread94: ; preds = %bb.v
  %i.ew = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 13, ptr %i.ew, align 4, !tbaa !22
  %i.ex = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 1, ptr %i.ex, align 8, !tbaa !52
  %i.ey = getelementptr inbounds nuw i8, ptr %i.as, i64 12 ; 2 uses
  store i32 8, ptr %i.ey, align 4, !tbaa !51
  br label %bb.w

exif_get_makernote_offset.exit:                   ; preds = %.preheader.preheader.i, %.preheader.1.i, %.preheader.2.i, %.preheader.3.i, %.preheader.4.i, %.preheader.5.i, %.preheader.6.i, %.preheader.7.i, %.preheader.8.i
  %.lcssa.i = phi ptr [ @makernote_data, %.preheader.preheader.i ], [ getelementptr inbounds nuw (i8, ptr @makernote_data, i64 24), %.preheader.1.i ], [ getelementptr inbounds nuw (i8, ptr @makernote_data, i64 48), %.preheader.2.i ], [ getelementptr inbounds nuw (i8, ptr @makernote_data, i64 72), %.preheader.3.i ], [ getelementptr inbounds nuw (i8, ptr @makernote_data, i64 96), %.preheader.4.i ], [ getelementptr inbounds nuw (i8, ptr @makernote_data, i64 120), %.preheader.5.i ], [ getelementptr inbounds nuw (i8, ptr @makernote_data, i64 144), %.preheader.6.i ], [ getelementptr inbounds nuw (i8, ptr @makernote_data, i64 168), %.preheader.7.i ], [ getelementptr inbounds nuw (i8, ptr @makernote_data, i64 192), %.preheader.8.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !65
  %.fr = freeze i32 %i.fa                         ; 4 uses
  %i.fb = icmp slt i32 %.fr, 0
  br i1 %i.fb, label %.thread66, label %exif_get_makernote_offset.exit.thread72

exif_get_makernote_offset.exit.thread72:          ; preds = %exif_get_makernote_offset.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 13, ptr %i.fc, align 4, !tbaa !22
  %i.fd = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 1, ptr %i.fd, align 8, !tbaa !52
  %i.fe = getelementptr inbounds nuw i8, ptr %i.as, i64 12 ; 2 uses
  store i32 %.fr, ptr %i.fe, align 4, !tbaa !51
  %.not88.i = icmp eq i32 %.fr, 0
  br i1 %.not88.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %exif_get_makernote_offset.exit.thread72.thread94, %exif_get_makernote_offset.exit.thread72
  %i.ff = phi ptr [ %i.ey, %exif_get_makernote_offset.exit.thread72.thread94 ], [ %i.fe, %exif_get_makernote_offset.exit.thread72 ]
  %i.fg = phi i32 [ 8, %exif_get_makernote_offset.exit.thread72.thread94 ], [ %.fr, %exif_get_makernote_offset.exit.thread72 ]
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = call noalias ptr @av_malloc(i64 noundef %i.fh) #14, !inline_history !64 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !56
  %.not89.i = icmp eq ptr %i.fi, null
  br i1 %.not89.i, label %.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fk = load i32, ptr %i.ff, align 4, !tbaa !51
  %i.fl = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.fm = load ptr, ptr %1, align 8, !tbaa !58    ; 3 uses
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = zext i32 %i.fk to i64
  %i.fr = call i64 @llvm.smin.i64(i64 %i.fp, i64 %i.fq)
  %i.fs = and i64 %i.fr, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fi, ptr align 1 %i.fm, i64 %i.fs, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fs
  store ptr %i.ft, ptr %1, align 8, !tbaa !58
  %.pre113 = load i16, ptr %i.as, align 8, !tbaa !44
  %i.fu = icmp eq i16 %.pre113, -28036
  %i.fv = zext i1 %i.fu to i32
  br label %bb.y

bb.y:                                             ; preds = %exif_get_makernote_offset.exit.thread72.thread, %.thread80, %bb.x, %exif_get_makernote_offset.exit.thread72
  %i.fw = phi i32 [ 1, %exif_get_makernote_offset.exit.thread72.thread ], [ 0, %.thread80 ], [ %i.fv, %bb.x ], [ 1, %exif_get_makernote_offset.exit.thread72 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.fy = call fastcc i32 @exif_parse_ifd_list(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.ao, ptr noundef nonnull %i.fx, i32 noundef %i.fw), !inline_history !64 ; 3 uses
  %i.fz = icmp slt i32 %i.fy, 0
  br i1 %i.fz, label %bb.z, label %exif_decode_tag.exit

bb.z:                                             ; preds = %bb.y
  %i.ga = load i16, ptr %i.as, align 8, !tbaa !44
  %i.gb = icmp eq i16 %i.ga, -28036
  br i1 %i.gb, label %bb.aa, label %exif_decode_tag.exit

bb.aa:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.23) #14, !inline_history !64
  br label %.thread66

.thread66:                                        ; preds = %bb.v, %bb.v, %exif_get_makernote_offset.exit, %bb.u, %bb.s, %bb.q, %bb.aa
  %i.gc = select i1 %i.bg, i32 7, i32 %i.az       ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !22
  %i.ge = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 18 uses
  store i32 %i.ba, ptr %i.ge, align 8, !tbaa !52
  %i.gf = zext nneg i32 %i.ba to i64              ; 8 uses
  %i.gg = zext nneg i32 %i.az to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr @exif_sizes, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !53
  %i.gj = mul i64 %i.gi, %i.gf
  %i.gk = icmp ugt i64 %i.gj, 4
  %i.gl = add nsw i32 %i.aw, 8
  %i.gm = select i1 %i.gk, i32 %i.bb, i32 %i.gl   ; 2 uses
  %i.gn = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.go = load ptr, ptr %i.c, align 8, !tbaa !60  ; 2 uses
  %i.gp = ptrtoint ptr %i.gn to i64               ; 2 uses
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = trunc i64 %i.gr to i32
  %i.gt = icmp slt i32 %i.gm, 0
  %..i91.i = call i32 @llvm.smin.i32(i32 %i.gm, i32 %i.gs)
  %.0.i92.i = select i1 %i.gt, i32 0, i32 %..i91.i
  %i.gu = sext i32 %.0.i92.i to i64
  %i.gv = getelementptr inbounds i8, ptr %i.go, i64 %i.gu ; 2 uses
  store ptr %i.gv, ptr %1, align 8, !tbaa !58
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = zext nneg i32 %i.gc to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr @exif_sizes, i64 %i.gx
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !53
  %i.ha = mul i64 %i.gz, %i.gf
  %i.hb = sub i64 %i.gp, %i.gw
  %sext97.i = shl i64 %i.hb, 32
  %i.hc = ashr exact i64 %sext97.i, 32
  %i.hd = icmp ugt i64 %i.ha, %i.hc
  br i1 %i.hd, label %exif_decode_tag.exit, label %bb.ab

bb.ab:                                            ; preds = %.thread66
  switch i32 %i.gc, label %default.unreachable [
    i32 3, label %bb.ac
    i32 4, label %bb.ac
    i32 8, label %bb.ad
    i32 9, label %bb.ad
    i32 12, label %bb.ae
    i32 11, label %bb.ae
    i32 5, label %bb.af
    i32 10, label %bb.af
    i32 7, label %bb.ag
    i32 1, label %bb.ag
    i32 6, label %bb.ah
    i32 2, label %bb.ai
  ]

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %i.he = call noalias ptr @av_calloc(i64 noundef %i.gf, i64 noundef 8) #14
  br label %bb.aj

bb.ad:                                            ; preds = %bb.ab, %bb.ab
  %i.hf = call noalias ptr @av_calloc(i64 noundef %i.gf, i64 noundef 8) #14
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ab, %bb.ab
  %i.hg = call noalias ptr @av_calloc(i64 noundef %i.gf, i64 noundef 8) #14
  br label %bb.aj

bb.af:                                            ; preds = %bb.ab, %bb.ab
  %i.hh = call noalias ptr @av_calloc(i64 noundef %i.gf, i64 noundef 8) #14
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ab, %bb.ab
  %i.hi = call noalias ptr @av_mallocz(i64 noundef %i.gf) #14
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ab
  %i.hj = call noalias ptr @av_mallocz(i64 noundef %i.gf) #14
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ab
  %i.hk = add nuw nsw i32 %i.ba, 1
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = call noalias ptr @av_mallocz(i64 noundef %i.hl) #14
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.sink = phi ptr [ %i.hm, %bb.ai ], [ %i.hj, %bb.ah ], [ %i.hi, %bb.ag ], [ %i.hh, %bb.af ], [ %i.hg, %bb.ae ], [ %i.hf, %bb.ad ], [ %i.he, %bb.ac ] ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %.sink, ptr %i.hn, align 8, !tbaa !37
  %i.ho = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 7 uses
  %.not.i63 = icmp eq ptr %.sink, null
  br i1 %.not.i63, label %exif_decode_tag.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hp = load i32, ptr %i.gd, align 4, !tbaa !22
  switch i32 %i.hp, label %exif_decode_tag.exit [
    i32 3, label %.preheader.i
    i32 4, label %.preheader98.i
    i32 8, label %.preheader100.i
    i32 9, label %.preheader102.i
    i32 12, label %.preheader104.i
    i32 11, label %.preheader106.i
    i32 5, label %bb.al
    i32 10, label %bb.al
    i32 7, label %bb.am
    i32 1, label %bb.am
    i32 6, label %bb.an
    i32 2, label %bb.ao
  ]

.preheader106.i:                                  ; preds = %bb.ak
  %i.hq = load i32, ptr %i.ge, align 8, !tbaa !52
  %.not123.i = icmp eq i32 %i.hq, 0
  br i1 %.not123.i, label %exif_decode_tag.exit, label %.lr.ph111.i

.preheader104.i:                                  ; preds = %bb.ak
  %i.hr = load i32, ptr %i.ge, align 8, !tbaa !52
  %.not124.i = icmp eq i32 %i.hr, 0
  br i1 %.not124.i, label %exif_decode_tag.exit, label %.lr.ph113.i

.preheader102.i:                                  ; preds = %bb.ak
  %i.hs = load i32, ptr %i.ge, align 8, !tbaa !52
  %.not125.i = icmp eq i32 %i.hs, 0
  br i1 %.not125.i, label %exif_decode_tag.exit, label %.lr.ph115.i

.preheader100.i:                                  ; preds = %bb.ak
  %i.ht = load i32, ptr %i.ge, align 8, !tbaa !52
  %.not126.i = icmp eq i32 %i.ht, 0
  br i1 %.not126.i, label %exif_decode_tag.exit, label %.lr.ph117.i

.preheader98.i:                                   ; preds = %bb.ak
  %i.hu = load i32, ptr %i.ge, align 8, !tbaa !52
  %.not127.i = icmp eq i32 %i.hu, 0
  br i1 %.not127.i, label %exif_decode_tag.exit, label %.lr.ph119.i

.preheader.i:                                     ; preds = %bb.ak
  %i.hv = load i32, ptr %i.ge, align 8, !tbaa !52
  %.not128.i = icmp eq i32 %i.hv, 0
  br i1 %.not128.i, label %exif_decode_tag.exit, label %.lr.ph121.i

.lr.ph121.i:                                      ; preds = %.preheader.i, %.lr.ph121.i
  %.087120.i = phi i64 [ %i.ia, %.lr.ph121.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.hw = call i32 @ff_tget_short(ptr noundef nonnull %1, i32 noundef %2) #14
  %i.hx = zext i32 %i.hw to i64
  %i.hy = load ptr, ptr %i.ho, align 8, !tbaa !37
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %.087120.i
  store i64 %i.hx, ptr %i.hz, align 8, !tbaa !53
  %i.ia = add nuw nsw i64 %.087120.i, 1           ; 2 uses
  %i.ib = load i32, ptr %i.ge, align 8, !tbaa !52
  %i.ic = zext i32 %i.ib to i64
  %i.id = icmp samesign ult i64 %i.ia, %i.ic
  br i1 %i.id, label %.lr.ph121.i, label %exif_decode_tag.exit, !llvm.loop !67

.lr.ph119.i:                                      ; preds = %.preheader98.i, %.lr.ph119.i
  %.088118.i = phi i64 [ %i.ii, %.lr.ph119.i ], [ 0, %.preheader98.i ] ; 2 uses
  %i.ie = call i32 @ff_tget_long(ptr noundef nonnull %1, i32 noundef %2) #14
  %i.if = zext i32 %i.ie to i64
  %i.ig = load ptr, ptr %i.ho, align 8, !tbaa !37
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.088118.i
  store i64 %i.if, ptr %i.ih, align 8, !tbaa !53
  %i.ii = add nuw nsw i64 %.088118.i, 1           ; 2 uses
  %i.ij = load i32, ptr %i.ge, align 8, !tbaa !52
  %i.ik = zext i32 %i.ij to i64
  %i.il = icmp samesign ult i64 %i.ii, %i.ik
  br i1 %i.il, label %.lr.ph119.i, label %exif_decode_tag.exit, !llvm.loop !68

.lr.ph117.i:                                      ; preds = %.preheader100.i, %.lr.ph117.i
  %.090116.i = phi i64 [ %i.ir, %.lr.ph117.i ], [ 0, %.preheader100.i ] ; 2 uses
  %i.im = call i32 @ff_tget_short(ptr noundef nonnull %1, i32 noundef %2) #14
  %i.in = zext i32 %i.im to i64
  %sext.i = shl i64 %i.in, 48
  %i.io = ashr exact i64 %sext.i, 48
  %i.ip = load ptr, ptr %i.ho, align 8, !tbaa !37
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %.090116.i
  store i64 %i.io, ptr %i.iq, align 8, !tbaa !53
  %i.ir = add nuw nsw i64 %.090116.i, 1           ; 2 uses
  %i.is = load i32, ptr %i.ge, align 8, !tbaa !52
  %i.it = zext i32 %i.is to i64
  %i.iu = icmp samesign ult i64 %i.ir, %i.it
  br i1 %i.iu, label %.lr.ph117.i, label %exif_decode_tag.exit, !llvm.loop !69

.lr.ph115.i:                                      ; preds = %.preheader102.i, %.lr.ph115.i
  %.093114.i = phi i64 [ %i.iz, %.lr.ph115.i ], [ 0, %.preheader102.i ] ; 2 uses
  %i.iv = call i32 @ff_tget_long(ptr noundef nonnull %1, i32 noundef %2) #14
  %i.iw = sext i32 %i.iv to i64
  %i.ix = load ptr, ptr %i.ho, align 8, !tbaa !37
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %.093114.i
  store i64 %i.iw, ptr %i.iy, align 8, !tbaa !53
  %i.iz = add nuw nsw i64 %.093114.i, 1           ; 2 uses
  %i.ja = load i32, ptr %i.ge, align 8, !tbaa !52
  %i.jb = zext i32 %i.ja to i64
  %i.jc = icmp samesign ult i64 %i.iz, %i.jb
  br i1 %i.jc, label %.lr.ph115.i, label %exif_decode_tag.exit, !llvm.loop !70

.lr.ph113.i:                                      ; preds = %.preheader104.i, %.lr.ph113.i
  %.092112.i = phi i64 [ %i.jg, %.lr.ph113.i ], [ 0, %.preheader104.i ] ; 2 uses
  %i.jd = call nsz double @ff_tget_double(ptr noundef nonnull %1, i32 noundef %2) #14
  %i.je = load ptr, ptr %i.ho, align 8, !tbaa !37
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %.092112.i
  store double %i.jd, ptr %i.jf, align 8, !tbaa !71
  %i.jg = add nuw nsw i64 %.092112.i, 1           ; 2 uses
  %i.jh = load i32, ptr %i.ge, align 8, !tbaa !52
  %i.ji = zext i32 %i.jh to i64
  %i.jj = icmp samesign ult i64 %i.jg, %i.ji
  br i1 %i.jj, label %.lr.ph113.i, label %exif_decode_tag.exit, !llvm.loop !73

.lr.ph111.i:                                      ; preds = %.preheader106.i, %.lr.ph111.i
  %.091110.i = phi i64 [ %i.jp, %.lr.ph111.i ], [ 0, %.preheader106.i ] ; 2 uses
  %i.jk = call i32 @ff_tget_long(ptr noundef nonnull %1, i32 noundef %2) #14
  %i.jl = bitcast i32 %i.jk to float
  %i.jm = fpext nsz float %i.jl to double
  %i.jn = load ptr, ptr %i.ho, align 8, !tbaa !37
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %.091110.i
  store double %i.jm, ptr %i.jo, align 8, !tbaa !71
  %i.jp = add nuw nsw i64 %.091110.i, 1           ; 2 uses
  %i.jq = load i32, ptr %i.ge, align 8, !tbaa !52
  %i.jr = zext i32 %i.jq to i64
  %i.js = icmp samesign ult i64 %i.jp, %i.jr
  br i1 %i.js, label %.lr.ph111.i, label %exif_decode_tag.exit, !llvm.loop !74

bb.al:                                            ; preds = %bb.ak, %bb.ak
  %i.jt = load i32, ptr %i.ge, align 8, !tbaa !52
  %.not122.i = icmp eq i32 %i.jt, 0
  br i1 %.not122.i, label %exif_decode_tag.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.al, %.lr.ph.i
  %.089109.i = phi i64 [ %i.jy, %.lr.ph.i ], [ 0, %bb.al ] ; 2 uses
  %i.ju = call i32 @ff_tget_long(ptr noundef nonnull %1, i32 noundef %2) #14
  %i.jv = call i32 @ff_tget_long(ptr noundef nonnull %1, i32 noundef %2) #14
  %i.jw = load ptr, ptr %i.ho, align 8, !tbaa !37
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.089109.i
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.jv to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ju to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.jx, align 4
  %i.jy = add nuw nsw i64 %.089109.i, 1           ; 2 uses
  %i.jz = load i32, ptr %i.ge, align 8, !tbaa !52
  %i.ka = zext i32 %i.jz to i64
  %i.kb = icmp samesign ult i64 %i.jy, %i.ka
  br i1 %i.kb, label %.lr.ph.i, label %exif_decode_tag.exit, !llvm.loop !75

bb.am:                                            ; preds = %bb.ak, %bb.ak
  %i.kc = load i32, ptr %i.ge, align 8, !tbaa !52
  %i.kd = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.ke = load ptr, ptr %1, align 8, !tbaa !58    ; 3 uses
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = zext i32 %i.kc to i64
  %i.kj = call i64 @llvm.smin.i64(i64 %i.kh, i64 %i.ki)
  %i.kk = and i64 %i.kj, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr align 1 %i.ke, i64 %i.kk, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kk
  store ptr %i.kl, ptr %1, align 8, !tbaa !58
  br label %exif_decode_tag.exit

bb.an:                                            ; preds = %bb.ak
  %i.km = load i32, ptr %i.ge, align 8, !tbaa !52
  %i.kn = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.ko = load ptr, ptr %1, align 8, !tbaa !58    ; 3 uses
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = sub i64 %i.kp, %i.kq
  %i.ks = zext i32 %i.km to i64
  %i.kt = call i64 @llvm.smin.i64(i64 %i.kr, i64 %i.ks)
  %i.ku = and i64 %i.kt, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr align 1 %i.ko, i64 %i.ku, i1 false)
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.ku
  store ptr %i.kv, ptr %1, align 8, !tbaa !58
  br label %exif_decode_tag.exit

end_hunk_0

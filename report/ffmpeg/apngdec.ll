Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/apngdec?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@apng_probe:bb.a
  br i1 %cond, label %bb.k, label %bytestream2_get_le32.exit.bytestream2_get_le32.exit.thread_crit_edge

bytestream2_get_le32.exit.bytestream2_get_le32.exit.thread_crit_edge: ; preds = %bytestream2_get_le32.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.662, i64 4 ; 2 uses
  %.pre76 = ptrtoint ptr %i.w to i64
  br label %bytestream2_get_le32.exit.thread

bytestream2_get_le32.exit.thread:                 ; preds = %bytestream2_get_le32.exit.bytestream2_get_le32.exit.thread_crit_edge, %bytestream2_get_be32.exit26.thread
  %.pre-phi77 = phi i64 [ %.pre76, %bytestream2_get_le32.exit.bytestream2_get_le32.exit.thread_crit_edge ], [ %i.i, %bytestream2_get_be32.exit26.thread ]
  %.0.i2768 = phi i32 [ %i.v, %bytestream2_get_le32.exit.bytestream2_get_le32.exit.thread_crit_edge ], [ 0, %bytestream2_get_be32.exit26.thread ]
  %.sroa.0.767 = phi ptr [ %i.w, %bytestream2_get_le32.exit.bytestream2_get_le32.exit.thread_crit_edge ], [ %i.h, %bytestream2_get_be32.exit26.thread ] ; 5 uses
  %i.x = add nuw i32 %.0.i2563, 4                 ; 2 uses
  %i.y = sub i64 %i.i, %.pre-phi77                ; 4 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = icmp ugt i32 %i.x, %i.z
  br i1 %i.aa, label %bytestream2_get_be64.exit.thread, label %bb.c

bb.c:                                             ; preds = %bytestream2_get_le32.exit.thread
  switch i32 %.0.i2768, label %bb.l [
    i32 1380206665, label %bb.d
    i32 1280598881, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %.not18 = icmp eq i32 %.0.i2563, 13
  br i1 %.not18, label %bb.e, label %bytestream2_get_be64.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp slt i64 %i.y, 4
  br i1 %i.ab, label %bytestream2_get_be32.exit24, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.767, i64 4 ; 2 uses
  %i.ad = load i32, ptr %.sroa.0.767, align 1, !tbaa !11
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  %.pre = ptrtoint ptr %i.ac to i64
  br label %bytestream2_get_be32.exit24

bytestream2_get_be32.exit24:                      ; preds = %bb.e, %bb.f
  %.pre-phi = phi i64 [ %i.i, %bb.e ], [ %.pre, %bb.f ]
  %.sroa.0.5 = phi ptr [ %i.h, %bb.e ], [ %i.ac, %bb.f ] ; 2 uses
  %.0.i23 = phi i32 [ 0, %bb.e ], [ %i.ae, %bb.f ]
  %i.af = sub i64 %i.i, %.pre-phi
  %i.ag = icmp slt i64 %i.af, 4
  br i1 %i.ag, label %bytestream2_get_be32.exit22, label %bb.g

bb.g:                                             ; preds = %bytestream2_get_be32.exit24
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.5, i64 4
  %i.ai = load i32, ptr %.sroa.0.5, align 1, !tbaa !11
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  br label %bytestream2_get_be32.exit22

bytestream2_get_be32.exit22:                      ; preds = %bytestream2_get_be32.exit24, %bb.g
  %.sroa.0.4 = phi ptr [ %i.ah, %bb.g ], [ %i.h, %bytestream2_get_be32.exit24 ] ; 2 uses
  %.0.i21 = phi i32 [ %i.aj, %bb.g ], [ 0, %bytestream2_get_be32.exit24 ]
  %i.ak = tail call i32 @av_image_check_size(i32 noundef %.0.i23, i32 noundef %.0.i21, i32 noundef 0, ptr noundef null) #6
  %.not19 = icmp eq i32 %i.ak, 0
  br i1 %.not19, label %bb.h, label %bytestream2_get_be64.exit.thread

bb.h:                                             ; preds = %bytestream2_get_be32.exit22
  %i.al = ptrtoint ptr %.sroa.0.4 to i64
  %i.am = sub i64 %i.i, %i.al
  %..i29 = tail call i64 @llvm.smin.i64(i64 %i.am, i64 9)
  %i.an = getelementptr inbounds i8, ptr %.sroa.0.4, i64 %..i29
  %i.ao = add nsw i32 %.0.ph, 1
  br label %.preheader.outer.backedge

.preheader.outer.backedge:                        ; preds = %bb.h, %bb.j
  %.sroa.0.0.ph.be = phi ptr [ %i.ax, %bb.j ], [ %i.an, %bb.h ]
  %.0.ph.be = phi i32 [ 2, %bb.j ], [ %i.ao, %bb.h ]
  br label %.preheader.outer

bb.i:                                             ; preds = %bb.c
  %i.ap = icmp ne i32 %.0.ph, 1
  %i.aq = icmp ne i32 %.0.i2563, 8
  %or.cond = or i1 %i.ap, %i.aq
  %i.ar = icmp slt i64 %i.y, 4
  %or.cond71 = or i1 %or.cond, %i.ar
  br i1 %or.cond71, label %bytestream2_get_be64.exit.thread, label %bytestream2_get_be32.exit

bytestream2_get_be32.exit:                        ; preds = %bb.i
  %i.as = load i32, ptr %.sroa.0.767, align 1, !tbaa !11
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bytestream2_get_be64.exit.thread, label %bb.j

bb.j:                                             ; preds = %bytestream2_get_be32.exit
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.767, i64 4 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.i, %i.av
  %..i28 = tail call i64 @llvm.smin.i64(i64 %i.aw, i64 8)
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 %..i28
  br label %.preheader.outer.backedge

bb.k:                                             ; preds = %bytestream2_get_le32.exit
  %.not17 = icmp eq i32 %.0.ph, 2
  %. = select i1 %.not17, i32 100, i32 0
  br label %bytestream2_get_be64.exit.thread

bb.l:                                             ; preds = %bb.c
  %i.ay = zext i32 %i.x to i64
  %..i = tail call i64 @llvm.smin.i64(i64 %i.y, i64 %i.ay)
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.767, i64 %..i
  br label %.preheader

bytestream2_get_be64.exit.thread:                 ; preds = %bytestream2_get_le32.exit.thread, %bytestream2_get_be32.exit26, %bb.i, %bytestream2_get_be32.exit, %bytestream2_get_be32.exit22, %bb.d, %bytestream2_init.exit, %bb.k, %bytestream2_get_be64.exit
  %.014 = phi i32 [ 0, %bytestream2_init.exit ], [ 0, %bytestream2_get_be64.exit ], [ %., %bb.k ], [ 0, %bb.d ], [ 0, %bytestream2_get_be32.exit22 ], [ 0, %bytestream2_get_be32.exit ], [ 0, %bb.i ], [ 0, %bytestream2_get_be32.exit26 ], [ 0, %bytestream2_get_le32.exit.thread ]
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal i32 @apng_read_header(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 17 uses
  %i.e = tail call i64 @avio_rb64(ptr noundef %i.d) #6
  %.not = icmp eq i64 %i.e, -8552249625308161526
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @avio_rb32(ptr noundef %i.d) #6
  %i.g = tail call i32 @avio_rl32(ptr noundef %i.d) #6
  %i.h = icmp ne i32 %i.f, 13
  %i.i = icmp ne i32 %i.g, 1380206665
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @avformat_new_stream(ptr noundef nonnull %0, ptr noundef null) #6 ; 3 uses
  %.not99 = icmp eq ptr %i.j, null
  br i1 %.not99, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @avpriv_set_pts_info(ptr noundef nonnull %i.j, i32 noundef 64, i32 noundef 1, i32 noundef 100000) #6
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 12 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 207, ptr %i.m, align 4, !tbaa !46
  %i.n = tail call i32 @avio_rb32(ptr noundef %i.d) #6
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store i32 %i.n, ptr %i.p, align 8, !tbaa !37
  %i.q = tail call i32 @avio_rb32(ptr noundef %i.d) #6 ; 2 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 76
  store i32 %i.q, ptr %i.s, align 4, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !37
  %i.v = tail call i32 @av_image_check_size(i32 noundef %i.u, i32 noundef %i.q, i32 noundef 0, ptr noundef nonnull %0) #6 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.y = tail call i32 @ff_alloc_extradata(ptr noundef %i.x, i32 noundef 25) #6 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  store i32 218103808, ptr %i.ac, align 1, !tbaa !11
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 1380206665, ptr %i.ag, align 1, !tbaa !11
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !34  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !37
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %i.ak, ptr %i.an, align 1, !tbaa !11
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !34  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 76
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !38
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 %i.ar, ptr %i.au, align 1, !tbaa !11
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = tail call i32 @ffio_read_size(ptr noundef %i.d, ptr noundef nonnull %i.ay, i32 noundef 9) #6 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  br label %.outer

.outer:                                           ; preds = %bb.r, %.preheader
  %.not108 = phi i1 [ false, %bb.r ], [ true, %.preheader ]
  %.084.ph = phi i1 [ true, %bb.r ], [ false, %.preheader ]
  br label %bb.g

bb.g:                                             ; preds = %.outer, %append_extradata.exit104
  br i1 %.084.ph, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bd = load i32, ptr %i.bb, align 8, !tbaa !40
  %.not100 = icmp eq i32 %i.bd, 1
  br i1 %.not100, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = tail call i64 @avio_size(ptr noundef %i.d) #6 ; 2 uses
  %i.bf = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #6 ; 2 uses
  %i.bg = icmp slt i64 %i.be, 0
  %i.bh = icmp slt i64 %i.bf, 0
  %or.cond3 = select i1 %i.bg, i1 true, i1 %i.bh
  br i1 %or.cond3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = sub nsw i64 %i.be, %i.bf
  %i.bj = tail call i32 @ffio_ensure_seekback(ptr noundef %i.d, i64 noundef %i.bi) #6
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.14) #6
  store i32 1, ptr %i.bb, align 8, !tbaa !40
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %.pre = load i32, ptr %i.bb, align 8, !tbaa !40
  %i.bl = icmp eq i32 %.pre, 1
  br i1 %i.bl, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.h, %bb.k, %bb.g, %bb.l
  %i.bm = tail call i32 @ffio_ensure_seekback(ptr noundef %i.d, i64 noundef 8) #6 ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread
  %i.bo = tail call i32 @avio_rb32(ptr noundef %i.d) #6 ; 4 uses
  %i.bp = icmp ugt i32 %i.bo, 2147483635
  br i1 %i.bp, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = tail call i32 @avio_rl32(ptr noundef %i.d) #6
  switch i32 %i.bq, label %bb.u [
    i32 1280598881, label %bb.o
    i32 1280598886, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %i.br = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef -8, i32 noundef 1) #6 ; 2 uses
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %append_extradata.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = load ptr, ptr %i.k, align 8, !tbaa !34  ; 2 uses
  %i.bu = add nuw nsw i32 %i.bo, 12               ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !41 ; 4 uses
  %i.bx = sub nsw i32 2147483583, %i.bw
  %i.by = icmp sgt i32 %i.bu, %i.bx
  br i1 %i.by, label %append_extradata.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = add nsw i32 %i.bw, %i.bu                ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !47
  %i.cc = add nsw i32 %i.bz, 64
  %i.cd = sext i32 %i.cc to i64
  %i.ce = tail call ptr @av_realloc(ptr noundef %i.cb, i64 noundef %i.cd) #6 ; 4 uses
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %append_extradata.exit.thread, label %append_extradata.exit

append_extradata.exit:                            ; preds = %bb.q
  %i.cf = sext i32 %i.bz to i64
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 %i.cf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cg, i8 0, i64 64, i1 false)
  store ptr %i.ce, ptr %i.ca, align 8, !tbaa !47
  store i32 %i.bz, ptr %i.bv, align 8, !tbaa !41
  %i.ch = sext i32 %i.bw to i64
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  %i.cj = tail call i32 @ffio_read_size(ptr noundef %i.d, ptr noundef nonnull %i.ci, i32 noundef range(i32 12, -2147483648) %i.bu) #6 ; 2 uses
  %i.ck = icmp slt i32 %i.cj, 0
  %..i = select i1 %i.ck, i32 %i.cj, i32 %i.bw    ; 2 uses
  %i.cl = sext i32 %..i to i64                    ; 2 uses
  %i.cm = icmp slt i32 %..i, 0
  br i1 %i.cm, label %append_extradata.exit.thread, label %bb.r

append_extradata.exit.thread:                     ; preds = %bb.q, %bb.p, %append_extradata.exit, %bb.o
  %.0 = phi i64 [ %i.br, %bb.o ], [ %i.cl, %append_extradata.exit ], [ -12, %bb.q ], [ -1094995529, %bb.p ]
  %i.cn = trunc i64 %.0 to i32
  br label %.loopexit

bb.r:                                             ; preds = %append_extradata.exit
  %i.co = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !47
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cl ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %i.cs, align 1, !tbaa !11
  %i.cu = tail call i32 @llvm.bswap.i32(i32 %i.ct) ; 2 uses
  store i32 %i.cu, ptr %i.bc, align 4, !tbaa !48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.cw = load i32, ptr %i.cv, align 1, !tbaa !11
  %i.cx = tail call i32 @llvm.bswap.i32(i32 %i.cw) ; 2 uses
  store i32 %i.cx, ptr %i.bb, align 8, !tbaa !40
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.15, i32 noundef %i.cu, i32 noundef %i.cx) #6
  br label %.outer

bb.s:                                             ; preds = %bb.n
  %i.cy = icmp ne i32 %i.bo, 26
  %or.cond7 = or i1 %.not108, %i.cy
  br i1 %or.cond7, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef -8, i32 noundef 1) #6
  %spec.select110 = tail call i64 @llvm.smin.i64(i64 %i.cz, i64 0)
  %spec.select = trunc i64 %spec.select110 to i32
  br label %.loopexit

bb.u:                                             ; preds = %bb.n
  %i.da = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef -8, i32 noundef 1) #6 ; 2 uses
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %append_extradata.exit104.thread.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.k, align 8, !tbaa !34  ; 2 uses
  %i.dd = add nuw nsw i32 %i.bo, 12               ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 24 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !41 ; 4 uses
  %i.dg = sub nsw i32 2147483583, %i.df
  %i.dh = icmp sgt i32 %i.dd, %i.dg
  br i1 %i.dh, label %append_extradata.exit104.thread.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = add nsw i32 %i.df, %i.dd                ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !47
  %i.dl = add nsw i32 %i.di, 64
  %i.dm = sext i32 %i.dl to i64
  %i.dn = tail call ptr @av_realloc(ptr noundef %i.dk, i64 noundef %i.dm) #6 ; 4 uses
  %.not.i101 = icmp eq ptr %i.dn, null
  br i1 %.not.i101, label %append_extradata.exit104.thread.loopexit, label %append_extradata.exit104

append_extradata.exit104:                         ; preds = %bb.w
  %i.do = sext i32 %i.di to i64
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 %i.do
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.dp, i8 0, i64 64, i1 false)
  store ptr %i.dn, ptr %i.dj, align 8, !tbaa !47
  store i32 %i.di, ptr %i.de, align 8, !tbaa !41
  %i.dq = sext i32 %i.df to i64
  %i.dr = getelementptr inbounds i8, ptr %i.dn, i64 %i.dq
  %i.ds = tail call i32 @ffio_read_size(ptr noundef %i.d, ptr noundef nonnull %i.dr, i32 noundef range(i32 12, -2147483648) %i.dd) #6 ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 0
  %..i102 = select i1 %i.dt, i32 %i.ds, i32 %i.df ; 2 uses
  %i.du = icmp slt i32 %..i102, 0
  br i1 %i.du, label %.loopexit, label %bb.g

append_extradata.exit104.thread.loopexit:         ; preds = %bb.w, %bb.v, %bb.u
  %.1.ph = phi i64 [ %i.da, %bb.u ], [ -1094995529, %bb.v ], [ -12, %bb.w ]
  %i.dv = trunc i64 %.1.ph to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.thread, %append_extradata.exit104, %append_extradata.exit104.thread.loopexit, %bb.t, %bb.s, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %append_extradata.exit.thread
  %.086 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.a ], [ -12, %bb.c ], [ %i.v, %bb.d ], [ %i.y, %bb.e ], [ -1094995529, %bb.s ], [ %i.dv, %append_extradata.exit104.thread.loopexit ], [ %i.cn, %append_extradata.exit.thread ], [ %i.az, %bb.f ], [ %spec.select, %bb.t ], [ -1094995529, %bb.m ], [ %i.bm, %.thread ], [ %..i102, %append_extradata.exit104 ]
  ret i32 %.086
}

; Function Attrs: nounwind uwtable
define internal i32 @apng_read_packet(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27   ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !40
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @ffio_ensure_seekback(ptr noundef %i.e, i64 noundef 46) #6 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %decode_fctl_chunk.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = tail call i32 @avio_rb32(ptr noundef %i.e) #6 ; 3 uses
  %i.l = tail call i32 @avio_rl32(ptr noundef %i.e) #6 ; 3 uses
  %i.m = tail call i32 @avio_feof(ptr noundef %i.e) #6
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %decode_fctl_chunk.exit.thread

bb.d:                                             ; preds = %bb.c
  switch i32 %i.l, label %bb.al [
    i32 1280598886, label %bb.e
    i32 1145980233, label %bb.ah
  ]

bb.e:                                             ; preds = %bb.d
  %.not87 = icmp eq i32 %i.k, 26
  br i1 %.not87, label %bb.f, label %decode_fctl_chunk.exit.thread
end_hunk_0

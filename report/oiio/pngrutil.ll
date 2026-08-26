Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/pngrutil?download=true
inline.NumInlined: 112
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_handle_sCAL:bb.a

bb.g:                                             ; preds = %bb.a, %bb.e
  %i.o = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #13
  br label %bb.t

png_crc_read.exit:                                ; preds = %bb.f, %bb.c
  %.021.i = phi ptr [ %i.f, %bb.c ], [ %i.m, %bb.f ] ; 10 uses
  %i.p = zext i32 %2 to i64                       ; 7 uses
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.p) #13
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.p) #13
  %i.q = getelementptr inbounds nuw i8, ptr %.021.i, i64 %i.p
  store i8 0, ptr %i.q, align 1, !tbaa !7
  %i.r = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.h, label %bb.t

bb.h:                                             ; preds = %png_crc_read.exit
  %i.s = load i8, ptr %.021.i, align 1, !tbaa !7
  %.off = add i8 %i.s, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.44) #13
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  store i64 1, ptr %i.a, align 8, !tbaa !186
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.t = call i32 @png_check_fp_number(ptr noundef nonnull %.021.i, i64 noundef %i.p, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load i64, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not39 = icmp ult i64 %i.v, %i.p
  br i1 %.not39, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  store i64 %i.w, ptr %i.a, align 8, !tbaa !186
  %i.x = getelementptr inbounds nuw i8, ptr %.021.i, i64 %i.v
  %i.y = load i8, ptr %i.x, align 1, !tbaa !7
  %.not40 = icmp eq i8 %i.y, 0
  br i1 %.not40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.45) #13
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.z = load i32, ptr %i.b, align 4, !tbaa !3
  %i.aa = and i32 %i.z, 392
  %.not41 = icmp eq i32 %i.aa, 264
  br i1 %.not41, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #13
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.ab = call i32 @png_check_fp_number(ptr noundef nonnull %.021.i, i64 noundef %i.p, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = load i64, ptr %i.a, align 8
  %.not42 = icmp eq i64 %i.ad, %i.p
  %or.cond = select i1 %i.ac, i1 %.not42, i1 false
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.47) #13
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !3
  %i.af = and i32 %i.ae, 392
  %.not43 = icmp eq i32 %i.af, 264
  br i1 %.not43, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.48) #13
  br label %bb.t

.critedge:                                        ; preds = %bb.r
  %i.ag = load i8, ptr %.021.i, align 1, !tbaa !7
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %.021.i, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.021.i, i64 %i.w
  call void @png_set_sCAL_s(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.ah, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %bb.o, %bb.q, %bb.s, %.critedge, %png_crc_read.exit, %bb.i, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ 3, %.critedge ], [ 0, %bb.i ], [ 0, %png_crc_read.exit ], [ 0, %bb.s ], [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_sPLT(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.png_sPLT_struct, align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46   ; 2 uses
  switch i32 %i.b, label %bb.c [
    i32 0, label %bb.e
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -1                         ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !46
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.49) #13
  %i.f = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  br label %bb.r

bb.e:                                             ; preds = %bb.a, %bb.c
  %i.g = add i32 %2, 1
  %i.h = zext i32 %i.g to i64                     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !122, !alias.scope !221 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48, !alias.scope !221
  %i.m = icmp ult i64 %i.l, %i.h
  br i1 %i.m, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.o = load i64, ptr %i.n, align 8, !tbaa !126, !alias.scope !221
  %i.p = icmp ult i64 %i.o, %i.h
  br i1 %i.p, label %bb.h, label %png_crc_read.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !alias.scope !221
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.j) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.q = tail call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %i.h) #13 ; 4 uses
  %.not27.i = icmp eq ptr %i.q, null
  br i1 %.not27.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 range(i64 0, 4294967296) %i.h, i1 false)
  store ptr %i.q, ptr %i.i, align 8, !tbaa !122, !alias.scope !221
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i64 %i.h, ptr %i.r, align 8, !tbaa !126, !alias.scope !221
  br label %png_crc_read.exit

bb.k:                                             ; preds = %bb.e, %bb.i
  %i.s = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #13
  br label %bb.r

png_crc_read.exit:                                ; preds = %bb.j, %bb.g
  %.021.i = phi ptr [ %i.j, %bb.g ], [ %i.q, %bb.j ] ; 7 uses
  %i.t = zext i32 %2 to i64                       ; 3 uses
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.t) #13
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.t) #13
  %i.u = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %.not87 = icmp eq i32 %i.u, 0
  br i1 %.not87, label %bb.l, label %bb.r

bb.l:                                             ; preds = %png_crc_read.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.021.i, i64 %i.t
  store i8 0, ptr %i.v, align 1, !tbaa !7
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.021.i) ; 2 uses
  %scevgep = getelementptr i8, ptr %.021.i, i64 %strlen ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %scevgep, i64 1 ; 2 uses
  %i.x = icmp ult i32 %2, 2
  %i.y = add i32 %2, -2
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.021.i, i64 %i.z
  %i.ab = icmp ugt ptr %i.w, %i.aa
  %or.cond = select i1 %i.x, i1 true, i1 %i.ab
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.50) #13
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %scevgep, i64 2 ; 2 uses
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !7    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %i.ad, ptr %i.ae, align 8, !tbaa !224
  %i.af = icmp eq i8 %i.ad, 8                     ; 3 uses
  %i.ag = trunc i64 %strlen to i32
  %reass.sub = sub i32 %2, %i.ag
  %i.ah = add i32 %reass.sub, -2                  ; 4 uses
  %4 = urem i32 %i.ah, 6
  %5 = udiv i32 %i.ah, 6
  %i.ai = urem i32 %i.ah, 10
  %i.aj = udiv i32 %i.ah, 10
  %6 = select i1 %i.af, i32 %4, i32 %i.ai
  %.not90 = icmp eq i32 %6, 0
  br i1 %.not90, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.51) #13
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %7 = select i1 %i.af, i32 %5, i32 %i.aj         ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %7, ptr %i.ak, align 8, !tbaa !227
  %i.al = zext nneg i32 %7 to i64                 ; 3 uses
  %i.am = mul nuw nsw i64 %i.al, 10
  %i.an = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %i.am) #13 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !228
  %i.ap = icmp eq ptr %i.an, null
  br i1 %i.ap, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.p
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br i1 %i.af, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %.196.us = phi ptr [ %i.bo, %.lr.ph.split.us ], [ %i.ac, %.lr.ph ] ; 7 uses
  %i.aq = getelementptr inbounds nuw [10 x i8], ptr %i.an, i64 %indvars.iv99 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.196.us, i64 1
  %i.as = load i8, ptr %.196.us, align 1, !tbaa !7
  %i.at = zext i8 %i.as to i16
  store i16 %i.at, ptr %i.aq, align 2, !tbaa !229
  %i.au = getelementptr inbounds nuw i8, ptr %.196.us, i64 2
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !7
  %i.aw = zext i8 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !231
  %i.ay = getelementptr inbounds nuw i8, ptr %.196.us, i64 3
  %i.az = load i8, ptr %i.au, align 1, !tbaa !7
  %i.ba = zext i8 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !232
  %i.bc = getelementptr inbounds nuw i8, ptr %.196.us, i64 4
  %i.bd = load i8, ptr %i.ay, align 1, !tbaa !7
  %i.be = zext i8 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 6
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !233
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !7
  %i.bh = zext i8 %i.bg to i16
  %i.bi = shl nuw i16 %i.bh, 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.196.us, i64 5
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !7
  %i.bl = zext i8 %i.bk to i16
  %i.bm = or disjoint i16 %i.bi, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !234
  %i.bo = getelementptr inbounds nuw i8, ptr %.196.us, i64 6
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %i.al
  br i1 %exitcond103.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !235

bb.q:                                             ; preds = %bb.p
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.53) #13
  br label %bb.r

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %.196 = phi ptr [ %i.dh, %.lr.ph.split ], [ %i.ac, %.lr.ph ] ; 11 uses
  %i.bp = getelementptr inbounds nuw [10 x i8], ptr %i.an, i64 %indvars.iv ; 5 uses
  %i.bq = load i8, ptr %.196, align 1, !tbaa !7
  %i.br = zext i8 %i.bq to i16
  %i.bs = shl nuw i16 %i.br, 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.196, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !7
  %i.bv = zext i8 %i.bu to i16
  %i.bw = or disjoint i16 %i.bs, %i.bv
  store i16 %i.bw, ptr %i.bp, align 2, !tbaa !229
  %i.bx = getelementptr inbounds nuw i8, ptr %.196, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !7
  %i.bz = zext i8 %i.by to i16
  %i.ca = shl nuw i16 %i.bz, 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.196, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !7
  %i.cd = zext i8 %i.cc to i16
  %i.ce = or disjoint i16 %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !231
  %i.cg = getelementptr inbounds nuw i8, ptr %.196, i64 4
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !7
  %i.ci = zext i8 %i.ch to i16
  %i.cj = shl nuw i16 %i.ci, 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.196, i64 5
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !7
  %i.cm = zext i8 %i.cl to i16
  %i.cn = or disjoint i16 %i.cj, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i16 %i.cn, ptr %i.co, align 2, !tbaa !232
  %i.cp = getelementptr inbounds nuw i8, ptr %.196, i64 6
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !7
  %i.cr = zext i8 %i.cq to i16
  %i.cs = shl nuw i16 %i.cr, 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.196, i64 7
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !7
  %i.cv = zext i8 %i.cu to i16
  %i.cw = or disjoint i16 %i.cs, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bp, i64 6
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !233
  %i.cy = getelementptr inbounds nuw i8, ptr %.196, i64 8
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !7
  %i.da = zext i8 %i.cz to i16
  %i.db = shl nuw i16 %i.da, 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.196, i64 9
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !7
  %i.de = zext i8 %i.dd to i16
  %i.df = or disjoint i16 %i.db, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i16 %i.df, ptr %i.dg, align 2, !tbaa !234
  %i.dh = getelementptr inbounds nuw i8, ptr %.196, i64 10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !235

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %.preheader
  store ptr %.021.i, ptr %3, align 8, !tbaa !236
  call void @png_set_sPLT(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1) #13
  %i.di = load ptr, ptr %i.ao, align 8, !tbaa !228
  call void @png_free(ptr noundef nonnull %0, ptr noundef %i.di) #13
  br label %bb.r

bb.r:                                             ; preds = %png_crc_read.exit, %._crit_edge, %bb.q, %bb.o, %bb.m, %bb.k, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.k ], [ 0, %bb.q ], [ 0, %bb.m ], [ 0, %bb.o ], [ 3, %._crit_edge ], [ 0, %png_crc_read.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_sRGB(ptr noalias noundef %0, ptr noalias noundef %1, i32 %2) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %png_crc_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #13
  br label %png_crc_read.exit

png_crc_read.exit:                                ; preds = %bb.a, %bb.b
  %i.c = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %png_crc_read.exit
  %i.d = load i8, ptr %i.a, align 1, !tbaa !7     ; 2 uses
  %i.e = icmp ugt i8 %i.d, 3
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull @.str.30) #13
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.f = zext nneg i8 %i.d to i32
  call void @png_set_sRGB(ptr noundef %0, ptr noundef %1, i32 noundef %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.h = load i32, ptr %i.g, align 8, !tbaa !51
  %i.i = and i32 %i.h, 128
  %.not9 = icmp eq i32 %i.i, 0
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.k = load i32, ptr %i.j, align 4, !tbaa !182
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 724
  store i32 45455, ptr %i.m, align 4, !tbaa !182
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %png_crc_read.exit, %bb.d
  %.0 = phi i32 [ 0, %png_crc_read.exit ], [ 0, %bb.d ], [ 3, %bb.g ], [ 3, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_tEXt(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.png_text_struct, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46   ; 2 uses
  switch i32 %i.b, label %bb.c [
    i32 0, label %bb.e
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -1                         ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !46
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #13
  br label %bb.n

bb.e:                                             ; preds = %bb.a, %bb.c
  %i.g = add i32 %2, 1
  %i.h = zext i32 %i.g to i64                     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
end_hunk_0

inline.NumInlined: 112
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_read_IDAT_data:bb.a

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge = phi i32 [ 1024, %bb.w ], [ %spec.select83, %bb.v ]
  %.2 = phi i64 [ %.171, %bb.w ], [ %i.cs, %bb.v ] ; 2 uses
  store i32 %storemerge, ptr %i.f, align 8, !tbaa !104
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.ct = load i8, ptr %i.y, align 8, !tbaa !40, !alias.scope !127
  %.not.i85 = icmp eq i8 %i.ct, 0
  %brmerge = select i1 %.not.i85, i1 true, i1 %.not7.i
  br i1 %brmerge, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !42, !alias.scope !127
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !7, !noalias !127
  %i.cw = icmp slt i8 %i.cv, 0
  br i1 %i.cw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store ptr @.str.5, ptr %i.z, align 8, !tbaa !43, !alias.scope !127
  br label %png_zlib_inflate.exit

bb.aa:                                            ; preds = %bb.y
  store i8 0, ptr %i.y, align 8, !tbaa !40, !alias.scope !127
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.aa
  %i.cx = call i32 @inflate(ptr noundef nonnull %i.d, i32 noundef 0) #13
  br label %png_zlib_inflate.exit

png_zlib_inflate.exit:                            ; preds = %bb.z, %bb.ab
  %.0.i = phi i32 [ -3, %bb.z ], [ %i.cx, %bb.ab ] ; 2 uses
  %i.cy = load i32, ptr %i.f, align 8, !tbaa !104
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = add i64 %.2, %i.cz
  %reass.sub = add i64 %.2, 1024
  %i.db = sub i64 %reass.sub, %i.cz
  %.3 = select i1 %i.g, i64 %i.db, i64 %i.da      ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !104
  switch i32 %.0.i, label %bb.af [
    i32 1, label %bb.ac
    i32 0, label %bb.ai
  ]

bb.ac:                                            ; preds = %png_zlib_inflate.exit
  store ptr null, ptr %i.e, align 8, !tbaa !103
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.dd = load <2 x i32>, ptr %i.dc, align 4, !tbaa !3
  %i.de = or <2 x i32> %i.dd, splat (i32 8)
  store <2 x i32> %i.de, ptr %i.dc, align 4, !tbaa !3
  %i.df = load i32, ptr %i.h, align 8, !tbaa !41
  %.not77 = icmp eq i32 %i.df, 0
  br i1 %.not77, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dg = load i32, ptr %i.i, align 8, !tbaa !105
  %.not78 = icmp eq i32 %i.dg, 0
  br i1 %.not78, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #13
  br label %bb.aj

bb.af:                                            ; preds = %png_zlib_inflate.exit
  call void @png_zstream_error(ptr noundef nonnull %0, i32 noundef %.0.i) #13
  %i.dh = load ptr, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  br i1 %i.g, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef %i.dh) #12
  unreachable

bb.ah:                                            ; preds = %bb.af
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef %i.dh) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.loopexit

bb.ai:                                            ; preds = %png_zlib_inflate.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %cond = icmp eq i64 %.3, 0
  br i1 %cond, label %.loopexit, label %bb.b

bb.aj:                                            ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %.not80 = icmp eq i64 %.3, 0
  br i1 %.not80, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.g, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #12
  unreachable

bb.am:                                            ; preds = %bb.ak
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.24) #13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ai, %bb.ah, %bb.am, %bb.aj
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @png_read_buffer(ptr noalias noundef %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !48
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.g = load i64, ptr %i.f, align 8, !tbaa !126
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.i = tail call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef %1) #13 ; 4 uses
  %.not27 = icmp eq ptr %i.i, null
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %1, i1 false)
  store ptr %i.i, ptr %i.a, align 8, !tbaa !122
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i64 %1, ptr %i.j, align 8, !tbaa !126
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.a
  %.021 = phi ptr [ null, %bb.a ], [ %i.i, %bb.f ], [ null, %bb.e ], [ %i.b, %bb.c ]
  ret ptr %.021
}

declare void @png_zstream_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @png_read_finish_IDAT(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = and i32 %i.b, 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @png_read_IDAT_data(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr null, ptr %i.e, align 8, !tbaa !103
  %i.f = load i32, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.g = and i32 %i.f, 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !26
  %i.k = or i32 %i.j, 8
  store i32 %i.k, ptr %i.i, align 4, !tbaa !26
  %i.l = or disjoint i32 %i.f, 8
  store i32 %i.l, ptr %i.a, align 8, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !130
  %i.o = icmp eq i32 %i.n, 1229209940
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr null, ptr %i.p, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 0, ptr %i.q, align 8, !tbaa !41
  store i32 0, ptr %i.m, align 8, !tbaa !130
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.s = load i32, ptr %i.r, align 8, !tbaa !105
  %i.t = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %i.s, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_read_finish_row(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !131
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !131
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 8 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !132
  %i.f = icmp ult i32 %i.c, %i.e
  br i1 %i.f, label %png_read_finish_IDAT.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.h = load i8, ptr %i.g, align 4, !tbaa !60
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 4, !tbaa !131
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.l = load i64, ptr %i.k, align 8, !tbaa !134
  %i.m = add i64 %i.l, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.j, i8 0, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 621 ; 3 uses
  %.promoted = load i8, ptr %i.n, align 1, !tbaa !57 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 7 uses
  %1 = add i8 %.promoted, 1                       ; 6 uses
  %i.s = icmp ugt i8 %1, 6
  br i1 %i.s, label %.loopexit, label %.lr.ph

.critedge.a:                                      ; preds = %bb.j
  %2 = add i8 %.promoted, 2                       ; 5 uses
  %i.t = icmp eq i8 %1, 6
  br i1 %i.t, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.critedge.a
  %i.u = load i32, ptr %i.o, align 4, !tbaa !56
  %3 = zext nneg i8 %2 to i64                     ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr @png_pass_inc, i64 %3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !7
  %i.x = zext i8 %i.w to i32                      ; 3 uses
  %i.y = add i32 %i.u, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr @png_pass_start, i64 %3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !7
  %i.ab = zext i8 %i.aa to i32
  %i.ac = xor i32 %i.ab, -1
  %i.ad = add i32 %i.y, %i.ac                     ; 2 uses
  %i.ae = udiv i32 %i.ad, %i.x
  store i32 %i.ae, ptr %i.p, align 8, !tbaa !135
  %i.af = load i32, ptr %i.q, align 4, !tbaa !59
  %i.ag = and i32 %i.af, 2
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %png_read_finish_IDAT.exit.loopexit

bb.d:                                             ; preds = %.lr.ph.1
  %i.ai = load i32, ptr %i.r, align 8, !tbaa !136
  %i.aj = getelementptr inbounds nuw i8, ptr @png_pass_yinc, i64 %3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !7
  %i.al = zext i8 %i.ak to i32                    ; 3 uses
  %i.am = add i32 %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr @png_pass_ystart, i64 %3
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !7
  %i.ap = zext i8 %i.ao to i32
  %i.aq = xor i32 %i.ap, -1
  %i.ar = add i32 %i.am, %i.aq                    ; 2 uses
  %i.as = udiv i32 %i.ar, %i.al
  store i32 %i.as, ptr %i.d, align 4, !tbaa !132
  %i.at = icmp ult i32 %i.ar, %i.al
  %i.au = icmp ult i32 %i.ad, %i.x
  %or.cond.1.a = select i1 %i.at, i1 true, i1 %i.au
  br i1 %or.cond.1.a, label %.critedge.1.a, label %png_read_finish_IDAT.exit.loopexit, !llvm.loop !137

.critedge.1.a:                                    ; preds = %bb.d
  %4 = add i8 %.promoted, 3                       ; 5 uses
  %i.av = icmp ugt i8 %2, 5
  br i1 %i.av, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.critedge.1.a
  %i.aw = load i32, ptr %i.o, align 4, !tbaa !56
  %5 = zext nneg i8 %4 to i64                     ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr @png_pass_inc, i64 %5
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !7
  %i.az = zext i8 %i.ay to i32                    ; 3 uses
  %i.ba = add i32 %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr @png_pass_start, i64 %5
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !7
  %i.bd = zext i8 %i.bc to i32
  %i.be = xor i32 %i.bd, -1
  %i.bf = add i32 %i.ba, %i.be                    ; 2 uses
  %i.bg = udiv i32 %i.bf, %i.az
  store i32 %i.bg, ptr %i.p, align 8, !tbaa !135
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !59
  %i.bi = and i32 %i.bh, 2
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.e, label %png_read_finish_IDAT.exit.loopexit

bb.e:                                             ; preds = %.lr.ph.2
  %i.bk = load i32, ptr %i.r, align 8, !tbaa !136
  %i.bl = getelementptr inbounds nuw i8, ptr @png_pass_yinc, i64 %5
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !7
  %i.bn = zext i8 %i.bm to i32                    ; 3 uses
  %i.bo = add i32 %i.bk, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr @png_pass_ystart, i64 %5
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !7
  %i.br = zext i8 %i.bq to i32
  %i.bs = xor i32 %i.br, -1
  %i.bt = add i32 %i.bo, %i.bs                    ; 2 uses
  %i.bu = udiv i32 %i.bt, %i.bn
  store i32 %i.bu, ptr %i.d, align 4, !tbaa !132
  %i.bv = icmp ult i32 %i.bt, %i.bn
  %i.bw = icmp ult i32 %i.bf, %i.az
  %or.cond.2 = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %or.cond.2, label %.critedge.2, label %png_read_finish_IDAT.exit.loopexit, !llvm.loop !137

.critedge.2:                                      ; preds = %bb.e
  %6 = add i8 %.promoted, 4                       ; 5 uses
  %i.bx = icmp ugt i8 %4, 5
  br i1 %i.bx, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.critedge.2
  %i.by = load i32, ptr %i.o, align 4, !tbaa !56
  %7 = zext nneg i8 %6 to i64                     ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr @png_pass_inc, i64 %7
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !7
  %i.cb = zext i8 %i.ca to i32                    ; 3 uses
  %i.cc = add i32 %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr @png_pass_start, i64 %7
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !7
  %i.cf = zext i8 %i.ce to i32
  %i.cg = xor i32 %i.cf, -1
  %i.ch = add i32 %i.cc, %i.cg                    ; 2 uses
  %i.ci = udiv i32 %i.ch, %i.cb
  store i32 %i.ci, ptr %i.p, align 8, !tbaa !135
  %i.cj = load i32, ptr %i.q, align 4, !tbaa !59
  %i.ck = and i32 %i.cj, 2
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.f, label %png_read_finish_IDAT.exit.loopexit

bb.f:                                             ; preds = %.lr.ph.3
  %i.cm = load i32, ptr %i.r, align 8, !tbaa !136
  %i.cn = getelementptr inbounds nuw i8, ptr @png_pass_yinc, i64 %7
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !7
  %i.cp = zext i8 %i.co to i32                    ; 3 uses
  %i.cq = add i32 %i.cm, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr @png_pass_ystart, i64 %7
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !7
  %i.ct = zext i8 %i.cs to i32
  %i.cu = xor i32 %i.ct, -1
  %i.cv = add i32 %i.cq, %i.cu                    ; 2 uses
  %i.cw = udiv i32 %i.cv, %i.cp
  store i32 %i.cw, ptr %i.d, align 4, !tbaa !132
  %i.cx = icmp ult i32 %i.cv, %i.cp
  %i.cy = icmp ult i32 %i.ch, %i.cb
  %or.cond.3 = select i1 %i.cx, i1 true, i1 %i.cy
  br i1 %or.cond.3, label %.critedge.3, label %png_read_finish_IDAT.exit.loopexit, !llvm.loop !137

.critedge.3:                                      ; preds = %bb.f
  %8 = add i8 %.promoted, 5                       ; 5 uses
  %i.cz = icmp ugt i8 %6, 5
  br i1 %i.cz, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.critedge.3
  %i.da = load i32, ptr %i.o, align 4, !tbaa !56
  %9 = zext nneg i8 %8 to i64                     ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr @png_pass_inc, i64 %9
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !7
  %i.dd = zext i8 %i.dc to i32                    ; 3 uses
  %i.de = add i32 %i.da, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr @png_pass_start, i64 %9
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !7
  %i.dh = zext i8 %i.dg to i32
  %i.di = xor i32 %i.dh, -1
  %i.dj = add i32 %i.de, %i.di                    ; 2 uses
  %i.dk = udiv i32 %i.dj, %i.dd
  store i32 %i.dk, ptr %i.p, align 8, !tbaa !135
  %i.dl = load i32, ptr %i.q, align 4, !tbaa !59
  %i.dm = and i32 %i.dl, 2
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.g, label %png_read_finish_IDAT.exit.loopexit

bb.g:                                             ; preds = %.lr.ph.4
  %i.do = load i32, ptr %i.r, align 8, !tbaa !136
  %i.dp = getelementptr inbounds nuw i8, ptr @png_pass_yinc, i64 %9
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !7
  %i.dr = zext i8 %i.dq to i32                    ; 3 uses
  %i.ds = add i32 %i.do, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr @png_pass_ystart, i64 %9
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !7
  %i.dv = zext i8 %i.du to i32
  %i.dw = xor i32 %i.dv, -1
  %i.dx = add i32 %i.ds, %i.dw                    ; 2 uses
  %i.dy = udiv i32 %i.dx, %i.dr
  store i32 %i.dy, ptr %i.d, align 4, !tbaa !132
  %i.dz = icmp ult i32 %i.dx, %i.dr
  %i.ea = icmp ult i32 %i.dj, %i.dd
  %or.cond.4 = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond.4, label %.critedge.4, label %png_read_finish_IDAT.exit.loopexit, !llvm.loop !137

.critedge.4:                                      ; preds = %bb.g
  %10 = add i8 %.promoted, 6                      ; 4 uses
  %i.eb = icmp ugt i8 %8, 5
  br i1 %i.eb, label %.loopexit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.critedge.4
  %i.ec = load i32, ptr %i.o, align 4, !tbaa !56
  %11 = zext nneg i8 %10 to i64                   ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr @png_pass_inc, i64 %11
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !7
  %i.ef = zext i8 %i.ee to i32                    ; 3 uses
  %i.eg = add i32 %i.ec, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr @png_pass_start, i64 %11
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !7
  %i.ej = zext i8 %i.ei to i32
  %i.ek = xor i32 %i.ej, -1
  %i.el = add i32 %i.eg, %i.ek                    ; 2 uses
  %i.em = udiv i32 %i.el, %i.ef
  store i32 %i.em, ptr %i.p, align 8, !tbaa !135
  %i.en = load i32, ptr %i.q, align 4, !tbaa !59
  %i.eo = and i32 %i.en, 2
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.h, label %png_read_finish_IDAT.exit.loopexit

bb.h:                                             ; preds = %.lr.ph.5
  %i.eq = load i32, ptr %i.r, align 8, !tbaa !136
  %i.er = getelementptr inbounds nuw i8, ptr @png_pass_yinc, i64 %11
  %i.es = load i8, ptr %i.er, align 1, !tbaa !7
  %i.et = zext i8 %i.es to i32                    ; 3 uses
  %i.eu = add i32 %i.eq, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr @png_pass_ystart, i64 %11
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !7
  %i.ex = zext i8 %i.ew to i32
  %i.ey = xor i32 %i.ex, -1
  %i.ez = add i32 %i.eu, %i.ey                    ; 2 uses
  %i.fa = udiv i32 %i.ez, %i.et
  store i32 %i.fa, ptr %i.d, align 4, !tbaa !132
  %i.fb = icmp ult i32 %i.ez, %i.et
  %i.fc = icmp ult i32 %i.el, %i.ef
  %or.cond.5 = select i1 %i.fb, i1 true, i1 %i.fc
  br i1 %or.cond.5, label %.critedge.5, label %png_read_finish_IDAT.exit.loopexit, !llvm.loop !137

.critedge.5:                                      ; preds = %bb.h
  %i.fd = add i8 %.promoted, 7                    ; 4 uses
  %12 = icmp ult i8 %.promoted, -6
  br i1 %12, label %.loopexit, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.critedge.5
  %i.fe = load i32, ptr %i.o, align 4, !tbaa !56
  %13 = zext nneg i8 %i.fd to i64                 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr @png_pass_inc, i64 %13
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !7
  %i.fh = zext i8 %i.fg to i32                    ; 3 uses
  %i.fi = add i32 %i.fe, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr @png_pass_start, i64 %13
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !7
  %i.fl = zext i8 %i.fk to i32
  %i.fm = xor i32 %i.fl, -1
  %i.fn = add i32 %i.fi, %i.fm                    ; 2 uses
  %i.fo = udiv i32 %i.fn, %i.fh
  store i32 %i.fo, ptr %i.p, align 8, !tbaa !135
  %i.fp = load i32, ptr %i.q, align 4, !tbaa !59
  %i.fq = and i32 %i.fp, 2
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.i, label %png_read_finish_IDAT.exit.loopexit

bb.i:                                             ; preds = %.lr.ph.6
  %i.fs = load i32, ptr %i.r, align 8, !tbaa !136
  %i.ft = getelementptr inbounds nuw i8, ptr @png_pass_yinc, i64 %13
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !7
  %i.fv = zext i8 %i.fu to i32                    ; 3 uses
  %i.fw = add i32 %i.fs, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr @png_pass_ystart, i64 %13
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !7
  %i.fz = zext i8 %i.fy to i32
  %i.ga = xor i32 %i.fz, -1
  %i.gb = add i32 %i.fw, %i.ga                    ; 2 uses
  %i.gc = udiv i32 %i.gb, %i.fv
  store i32 %i.gc, ptr %i.d, align 4, !tbaa !132
  %i.gd = icmp ult i32 %i.gb, %i.fv
  %i.ge = icmp ult i32 %i.fn, %i.fh
  %or.cond.6 = select i1 %i.gd, i1 true, i1 %i.ge
  br i1 %or.cond.6, label %.critedge.6, label %png_read_finish_IDAT.exit.loopexit, !llvm.loop !137

.critedge.6:                                      ; preds = %bb.i
  %i.gf = add nsw i8 %.promoted, 8
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.gg = load i32, ptr %i.o, align 4, !tbaa !56
  %14 = zext nneg i8 %1 to i64                    ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr @png_pass_inc, i64 %14
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !7
  %i.gj = zext i8 %i.gi to i32                    ; 3 uses
  %i.gk = add i32 %i.gg, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr @png_pass_start, i64 %14
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !7
  %i.gn = zext i8 %i.gm to i32
  %i.go = xor i32 %i.gn, -1
  %i.gp = add i32 %i.gk, %i.go                    ; 2 uses
  %i.gq = udiv i32 %i.gp, %i.gj
  store i32 %i.gq, ptr %i.p, align 8, !tbaa !135
  %i.gr = load i32, ptr %i.q, align 4, !tbaa !59
  %i.gs = and i32 %i.gr, 2
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.j, label %png_read_finish_IDAT.exit.loopexit

bb.j:                                             ; preds = %.lr.ph
  %i.gu = load i32, ptr %i.r, align 8, !tbaa !136
  %i.gv = getelementptr inbounds nuw i8, ptr @png_pass_yinc, i64 %14
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !7
  %i.gx = zext i8 %i.gw to i32                    ; 3 uses
  %i.gy = add i32 %i.gu, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr @png_pass_ystart, i64 %14
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !7
  %i.hb = zext i8 %i.ha to i32
  %i.hc = xor i32 %i.hb, -1
  %i.hd = add i32 %i.gy, %i.hc                    ; 2 uses
  %i.he = udiv i32 %i.hd, %i.gx
  store i32 %i.he, ptr %i.d, align 4, !tbaa !132
  %i.hf = icmp ult i32 %i.hd, %i.gx
  %i.hg = icmp ult i32 %i.gp, %i.gj
  %or.cond = select i1 %i.hf, i1 true, i1 %i.hg
  br i1 %or.cond, label %.critedge.a, label %png_read_finish_IDAT.exit.loopexit, !llvm.loop !137

.loopexit:                                        ; preds = %.critedge.a, %.critedge.1.a, %.critedge.2, %.critedge.3, %.critedge.4, %.critedge.5, %.critedge.6, %bb.c
  %.lcssa = phi i8 [ %1, %bb.c ], [ %2, %.critedge.a ], [ %4, %.critedge.1.a ], [ %6, %.critedge.2 ], [ %8, %.critedge.3 ], [ %10, %.critedge.4 ], [ %i.fd, %.critedge.5 ], [ %i.gf, %.critedge.6 ]
  store i8 %.lcssa, ptr %i.n, align 1, !tbaa !57
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.b
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !33, !alias.scope !138
  %i.hj = and i32 %i.hi, 8
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  tail call void @png_read_IDAT_data(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0)
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr null, ptr %i.hl, align 8, !tbaa !103, !alias.scope !138
  %i.hm = load i32, ptr %i.hh, align 8, !tbaa !33, !alias.scope !138 ; 2 uses
  %i.hn = and i32 %i.hm, 8
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !26, !alias.scope !138
  %i.hr = or i32 %i.hq, 8
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !26, !alias.scope !138
  %i.hs = or disjoint i32 %i.hm, 8
  store i32 %i.hs, ptr %i.hh, align 8, !tbaa !33, !alias.scope !138
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !130, !alias.scope !138
  %i.hv = icmp eq i32 %i.hu, 1229209940
  br i1 %i.hv, label %bb.o, label %png_read_finish_IDAT.exit

bb.o:                                             ; preds = %bb.n
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr null, ptr %i.hw, align 8, !tbaa !42, !alias.scope !138
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 0, ptr %i.hx, align 8, !tbaa !41, !alias.scope !138
  store i32 0, ptr %i.ht, align 8, !tbaa !130, !alias.scope !138
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !105, !alias.scope !138
  %i.ia = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %i.hz, i32 noundef 0) ; 0 uses
  br label %png_read_finish_IDAT.exit

png_read_finish_IDAT.exit.loopexit:               ; preds = %bb.i, %.lr.ph.6, %bb.h, %.lr.ph.5, %bb.g, %.lr.ph.4, %bb.f, %.lr.ph.3, %bb.e, %.lr.ph.2, %bb.d, %.lr.ph.1, %.lr.ph, %bb.j
  %.lcssa28 = phi i8 [ %1, %.lr.ph ], [ %1, %bb.j ], [ %2, %.lr.ph.1 ], [ %2, %bb.d ], [ %4, %.lr.ph.2 ], [ %4, %bb.e ], [ %6, %.lr.ph.3 ], [ %6, %bb.f ], [ %8, %.lr.ph.4 ], [ %8, %bb.g ], [ %10, %.lr.ph.5 ], [ %10, %bb.h ], [ %i.fd, %.lr.ph.6 ], [ %i.fd, %bb.i ]
  store i8 %.lcssa28, ptr %i.n, align 1, !tbaa !57
  br label %png_read_finish_IDAT.exit

png_read_finish_IDAT.exit:                        ; preds = %png_read_finish_IDAT.exit.loopexit, %bb.o, %bb.n, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define void @png_read_start_row(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @png_init_read_transformations(ptr noundef %0) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 620 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !60
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.d = load i32, ptr %i.c, align 4, !tbaa !59   ; 2 uses
  %i.e = and i32 %i.d, 2
  %i.f = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.h = load i32, ptr %i.g, align 8, !tbaa !136  ; 2 uses
  %i.i = add i32 %i.h, 7
  %i.j = lshr i32 %i.i, 3
  %.sink = select i1 %i.f, i32 %i.j, i32 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 %.sink, ptr %i.k, align 4, !tbaa !132
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.m = load i32, ptr %i.l, align 4, !tbaa !56   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 621
  %i.o = load i8, ptr %i.n, align 1, !tbaa !57
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr @png_pass_inc, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !7
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = add i32 %i.m, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr @png_pass_start, i64 %i.p
  %i.v = load i8, ptr %i.u, align 1, !tbaa !7
  %i.w = zext i8 %i.v to i32
  %i.x = xor i32 %i.w, -1
  %i.y = add i32 %i.t, %i.x
  %i.z = udiv i32 %i.y, %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !135
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !136
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !132
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !135
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 308
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ah = phi i32 [ %i.af, %bb.c ], [ %i.m, %bb.b ]
  %i.ai = phi i32 [ %.pre, %bb.c ], [ %i.d, %bb.b ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 626
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !99  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.am = and i32 %i.ai, 4
  %.not114 = icmp eq i32 %i.am, 0
  br i1 %.not114, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !141
  %i.ap = icmp ult i8 %i.ao, 8
  %spec.select = select i1 %i.ap, i8 8, i8 %i.ak
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.shrunk = phi i8 [ %i.ak, %bb.d ], [ %spec.select, %bb.e ] ; 2 uses
  %.0 = zext i8 %.0.shrunk to i32                 ; 5 uses
  %i.aq = and i32 %i.ai, 4096
  %.not115 = icmp eq i32 %i.aq, 0
  br i1 %.not115, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !142
  switch i8 %i.as, label %bb.l [
    i8 3, label %bb.h
    i8 0, label %bb.i
    i8 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.au = load i16, ptr %i.at, align 8, !tbaa !143
  %.not118 = icmp eq i16 %i.au, 0
  %. = select i1 %.not118, i32 24, i32 32
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %.0, i32 8)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !143
  %.not117 = icmp ne i16 %i.aw, 0
  %i.ax = zext i1 %.not117 to i32
  %spec.select130 = shl nuw nsw i32 %spec.store.select, %i.ax
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !143
  %.not116 = icmp eq i16 %i.az, 0
  br i1 %.not116, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.0.tr = zext i8 %.0.shrunk to i16
  %.lhs.trunc = shl nuw nsw i16 %.0.tr, 2
  %i.ba = udiv i16 %.lhs.trunc, 3
  %.zext = zext nneg i16 %i.ba to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.g, %bb.h, %bb.k, %bb.j
  %.1 = phi i32 [ %., %bb.h ], [ %.0, %bb.j ], [ %.0, %bb.g ], [ %spec.select130, %bb.i ], [ %.zext, %bb.k ] ; 2 uses
  %i.bb = and i32 %i.ai, 512
  %.not119 = icmp eq i32 %i.bb, 0
  br i1 %.not119, label %bb.n, label %bb.m

.thread:                                          ; preds = %bb.f
  %i.bc = and i32 %i.ai, 512
  %.not119139 = icmp eq i32 %i.bc, 0
  br i1 %.not119139, label %bb.n, label %.thread141

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !141
  %i.bf = icmp ult i8 %i.be, 16
  %i.bg = zext i1 %i.bf to i32
  %spec.select131 = shl nuw nsw i32 %.1, %i.bg
  br label %bb.n

.thread141:                                       ; preds = %.thread
  %i.bh = and i32 %i.ai, -4609
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !59
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m, %.thread141, %bb.l
  %.2 = phi i32 [ %.1, %bb.l ], [ %spec.select131, %bb.m ], [ %.0, %.thread141 ], [ %.0, %.thread ] ; 4 uses
  %i.bi = load i32, ptr %i.al, align 4, !tbaa !59 ; 4 uses
  %i.bj = and i32 %i.bi, 32768
  %.not121 = icmp ne i32 %i.bj, 0                 ; 2 uses
  br i1 %.not121, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !142
  switch i8 %i.bl, label %bb.r [
    i8 0, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.bm = icmp samesign ult i32 %.2, 9
  %.132 = select i1 %i.bm, i32 16, i32 32
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.o
  %.inv = icmp samesign ugt i32 %.2, 32
  %.133 = select i1 %.inv, i32 64, i32 32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.p, %bb.n
  %.3 = phi i32 [ %.132, %bb.p ], [ %.2, %bb.n ], [ %.133, %bb.q ], [ %.2, %bb.o ] ; 3 uses
  %i.bn = and i32 %i.bi, 16384
  %.not122 = icmp eq i32 %i.bn, 0
  br i1 %.not122, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !143
  %.not123 = icmp ne i16 %i.bp, 0
  %i.bq = and i32 %i.bi, 4096
  %.not124 = icmp ne i32 %i.bq, 0
  %or.cond.not144 = and i1 %.not124, %.not123
  %brmerge = or i1 %.not121, %or.cond.not144
  br i1 %brmerge, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !142 ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 4
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bu = icmp samesign ult i32 %.3, 17
  %.134 = select i1 %i.bu, i32 32, i32 64
  br label %bb.y
end_hunk_0

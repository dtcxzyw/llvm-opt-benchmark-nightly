Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_cab?download=true
inline.NumInlined: 94
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@cab_minimum_consume_cfdata:bb.a
  br i1 %.not28.i, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %cab_checksum_cfdata.exit43.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 88
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !89
  %i.hm = add nsw i32 %i.hl, -1
  %i.hn = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.ho = load i16, ptr %i.hn, align 4, !tbaa !96
  %i.hp = zext i16 %i.ho to i32
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.26, i32 noundef %i.hm, i32 noundef %i.da, i32 noundef %.2.i37.i, i32 noundef %i.hp) #17
  br label %.thread

.thread:                                          ; preds = %cab_checksum_cfdata.exit43.i, %bb.p, %bb.d, %bb.ab, %bb.e, %cab_checksum_update.exit
  %.047 = phi i64 [ %i.ac, %bb.e ], [ %.165, %cab_checksum_update.exit ], [ %.0, %bb.d ], [ -25, %bb.ab ], [ %.165, %bb.p ], [ %.165, %cab_checksum_cfdata.exit43.i ]
  ret i64 %.047
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @cab_read_ahead_cfdata(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lzx_br, align 8             ; 21 uses
  %i.a = alloca [18 x i32], align 16              ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 9 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = tail call fastcc i32 @cab_next_cfdata(ptr noundef %0) ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sext i32 %i.i to i64
  store i64 %i.k, ptr %1, align 8, !tbaa !11
  br label %cab_read_ahead_cfdata_none.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.o = load i16, ptr %i.n, align 2, !tbaa !53
  switch i16 %i.o, label %bb.if [
    i16 0, label %bb.d
    i16 1, label %bb.i
    i16 3, label %bb.bh
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65   ; 5 uses
  %i.t = tail call ptr @__archive_read_ahead(ptr noundef nonnull %0, i64 noundef 1, ptr noundef nonnull %1) #17 ; 2 uses
  %i.u = load i64, ptr %1, align 8, !tbaa !11     ; 3 uses
  %i.v = icmp slt i64 %i.u, 1
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.18) #17
  store i64 -30, ptr %1, align 8, !tbaa !11
  br label %cab_read_ahead_cfdata_none.exit

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  %i.x = load i16, ptr %i.w, align 2, !tbaa !88
  %i.y = zext i16 %i.x to i64                     ; 3 uses
  %i.z = icmp samesign ugt i64 %i.u, %i.y
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %i.y, ptr %1, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = phi i64 [ %i.y, %bb.g ], [ %i.u, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !74
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i16 %i.ac, ptr %i.ad, align 4, !tbaa !100
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.aa, ptr %i.ae, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store ptr %i.t, ptr %i.af, align 8, !tbaa !92
  br label %cab_read_ahead_cfdata_none.exit

bb.i:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !32 ; 15 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !65 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 160 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !87 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  store i64 32768, ptr %i.an, align 8, !tbaa !187
  %i.ao = tail call noalias dereferenceable_or_null(32768) ptr @malloc(i64 noundef 32768) #21 ; 3 uses
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !87
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.28) #17
  store i64 -30, ptr %1, align 8, !tbaa !11
  br label %cab_read_ahead_cfdata_none.exit

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.aq = phi ptr [ %i.ao, %bb.j ], [ %i.al, %bb.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 4, !tbaa !100 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.au = load i16, ptr %i.at, align 8, !tbaa !74
  %i.av = icmp eq i16 %i.as, %i.au
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = zext i16 %i.as to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !101
  %i.az = zext i16 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.az
  %i.bb = sub nsw i64 %i.aw, %i.az
  store i64 %i.bb, ptr %1, align 8, !tbaa !11
  br label %cab_read_ahead_cfdata_none.exit

bb.n:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 92
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !56
  %.not.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 272 ; 3 uses
  store ptr null, ptr %i.bg, align 8, !tbaa !188
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 280
  store i32 0, ptr %i.bh, align 8, !tbaa !189
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 288
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 312
  store i64 0, ptr %i.bj, align 8, !tbaa !190
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 384 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bi, i8 0, i64 20, i1 false)
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !76
  %.not156.i = icmp eq i8 %i.bl, 0
  br i1 %.not156.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = tail call i32 @cm_zlib_inflateReset(ptr noundef nonnull %i.bg) #17
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bn = tail call i32 @cm_zlib_inflateInit2_(ptr noundef nonnull %i.bg, i32 noundef -15, ptr noundef nonnull @.str.29, i32 noundef 112) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0138.i = phi i32 [ %i.bm, %bb.p ], [ %i.bn, %bb.q ]
  %.not157.i = icmp eq i32 %.0138.i, 0
  br i1 %.not157.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.30) #17
  store i64 -30, ptr %1, align 8, !tbaa !11
  br label %cab_read_ahead_cfdata_none.exit

bb.t:                                             ; preds = %bb.r
  store i8 1, ptr %i.bk, align 8, !tbaa !76
  %i.bo = load ptr, ptr %i.bc, align 8, !tbaa !64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 92
  store i8 1, ptr %i.bp, align 4, !tbaa !56
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aj, i64 6 ; 4 uses
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !97
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.bt = load i16, ptr %i.bs, align 4, !tbaa !96
  %i.bu = icmp eq i16 %i.br, %i.bt
  %..i = select i1 %i.bu, i32 2, i32 0
  %i.bv = zext i16 %i.as to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 272 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ah, i64 312 ; 3 uses
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !190
  %i.by = getelementptr inbounds nuw i8, ptr %i.ah, i64 296
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 304
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ah, i64 280 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ah, i64 288 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aj, i64 56 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.ar, %bb.u
  %.1136188.i = phi i32 [ %..i, %bb.u ], [ %.3.i, %bb.ar ] ; 7 uses
  %i.ce = load i64, ptr %i.bx, align 8, !tbaa !190 ; 4 uses
  %i.cf = load i16, ptr %i.at, align 8, !tbaa !74 ; 3 uses
  %i.cg = zext i16 %i.cf to i64
  %i.ch = icmp ult i64 %i.ce, %i.cg
  br i1 %i.ch, label %bb.w, label %.critedge.i

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.ci = load ptr, ptr %i.ak, align 8, !tbaa !87
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ce
  store ptr %i.cj, ptr %i.by, align 8, !tbaa !191
  %3 = zext i16 %i.cf to i32
  %i.ck = trunc nuw nsw i64 %i.ce to i32
  %4 = sub nuw nsw i32 %3, %i.ck
  store i32 %4, ptr %i.bz, align 8, !tbaa !192
  %i.cl = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %i.d) #17 ; 9 uses
  %i.cm = load i64, ptr %i.d, align 8, !tbaa !11  ; 3 uses
  %i.cn = icmp slt i64 %i.cm, 1
  br i1 %i.cn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.18) #17
  br label %.thread177.i

bb.y:                                             ; preds = %bb.w
  %i.co = load i16, ptr %i.bq, align 2, !tbaa !97
  %i.cp = zext i16 %i.co to i64                   ; 3 uses
  %i.cq = icmp samesign ugt i64 %i.cm, %i.cp
  br i1 %i.cq, label %bb.z, label %thread-pre-split.i

bb.z:                                             ; preds = %bb.y
  store i64 %i.cp, ptr %i.d, align 8, !tbaa !11
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.z, %bb.y
  %i.cr = phi i64 [ %i.cp, %bb.z ], [ %i.cm, %bb.y ] ; 6 uses
  store ptr %i.cl, ptr %i.bw, align 8, !tbaa !188
  %i.cs = trunc nuw nsw i64 %i.cr to i32          ; 2 uses
  store i32 %i.cs, ptr %i.ca, align 8, !tbaa !189
  store i64 0, ptr %i.cb, align 8, !tbaa !193
  %i.ct = icmp sgt i32 %.1136188.i, 0
  br i1 %i.ct, label %bb.aa, label %bb.ao

bb.aa:                                            ; preds = %thread-pre-split.i
  %i.cu = icmp eq i64 %i.cr, 0
  br i1 %i.cu, label %bb.bg, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = zext nneg i32 %.1136188.i to i64        ; 3 uses
  %.not159.i = icmp samesign ugt i64 %i.cr, %i.cv
  br i1 %.not159.i, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cw = icmp eq i32 %.1136188.i, 2
  %i.cx = load i8, ptr %i.cl, align 1, !tbaa !9   ; 2 uses
  br i1 %i.cw, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not164.i = icmp eq i8 %i.cx, 67
  br i1 %.not164.i, label %bb.ae, label %bb.bg

bb.ae:                                            ; preds = %bb.ad
  %.not165.i = icmp eq i64 %i.cr, 1
  br i1 %.not165.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !9
  %.not166.i = icmp eq i8 %i.cz, 75
  br i1 %.not166.i, label %bb.ah, label %bb.bg

bb.ag:                                            ; preds = %bb.ac
  %.not163.i = icmp eq i8 %i.cx, 75
  br i1 %.not163.i, label %bb.ah, label %bb.bg

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  store i64 %i.cr, ptr %i.cc, align 8, !tbaa !75
  store ptr %i.cl, ptr %i.cd, align 8, !tbaa !92
  %i.da = call fastcc i64 @cab_minimum_consume_cfdata(ptr noundef %0, i64 noundef %i.cr)
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %.thread177.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dc = load i64, ptr %i.d, align 8, !tbaa !11
  %i.dd = trunc i64 %i.dc to i32
  %i.de = sub nsw i32 %.1136188.i, %i.dd
  br label %bb.ar, !llvm.loop !173

bb.aj:                                            ; preds = %bb.ab
  switch i32 %.1136188.i, label %bb.an [
    i32 1, label %bb.ak
    i32 2, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.df = load i8, ptr %i.cl, align 1, !tbaa !9
  %.not160.i = icmp eq i8 %i.df, 75
  br i1 %.not160.i, label %bb.an, label %bb.bg

bb.al:                                            ; preds = %bb.aj
  %i.dg = load i8, ptr %i.cl, align 1, !tbaa !9
  %.not161.i = icmp eq i8 %i.dg, 67
  br i1 %.not161.i, label %bb.am, label %bb.bg

bb.am:                                            ; preds = %bb.al
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !9
  %.not162.i = icmp eq i8 %i.di, 75
  br i1 %.not162.i, label %bb.an, label %bb.bg

bb.an:                                            ; preds = %bb.am, %bb.ak, %bb.aj
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cv
  store ptr %i.dj, ptr %i.bw, align 8, !tbaa !188
  %i.dk = sub nuw nsw i32 %i.cs, %.1136188.i
  store i32 %i.dk, ptr %i.ca, align 8, !tbaa !189
  store i64 %i.cv, ptr %i.cb, align 8, !tbaa !193
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %thread-pre-split.i
  %.2137.i = phi i32 [ 0, %bb.an ], [ %.1136188.i, %thread-pre-split.i ]
  %i.dl = call i32 @cm_zlib_inflate(ptr noundef nonnull %i.bw, i32 noundef 0) #17 ; 2 uses
  switch i32 %i.dl, label %.thread182.i [
    i32 0, label %bb.aq
    i32 1, label %bb.ap
  ]

.thread182.i:                                     ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.bc

bb.ap:                                            ; preds = %bb.ao
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.1134.i = phi i8 [ 0, %bb.ao ], [ 1, %bb.ap ]
  %i.dm = load i64, ptr %i.cb, align 8, !tbaa !193 ; 2 uses
  store i64 %i.dm, ptr %i.cc, align 8, !tbaa !75
  store ptr %i.cl, ptr %i.cd, align 8, !tbaa !92
  %i.dn = call fastcc i64 @cab_minimum_consume_cfdata(ptr noundef %0, i64 noundef %i.dm)
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %.thread177.i, label %bb.ar

.thread177.i:                                     ; preds = %bb.aq, %bb.ah, %bb.x
  store i64 -30, ptr %1, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %cab_read_ahead_cfdata_none.exit

bb.ar:                                            ; preds = %bb.aq, %bb.ai
  %.3.i = phi i32 [ %.2137.i, %bb.aq ], [ %i.de, %bb.ai ]
  %.2.i = phi i8 [ %.1134.i, %bb.aq ], [ 0, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %.not158.i = icmp eq i8 %.2.i, 0
  br i1 %.not158.i, label %bb.v, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.ar
  %.pre.i = load i64, ptr %i.bx, align 8, !tbaa !190
  %.pre190.i = load i16, ptr %i.at, align 8, !tbaa !74
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.v, %..critedge_crit_edge.i
  %i.dp = phi i16 [ %.pre190.i, %..critedge_crit_edge.i ], [ %i.cf, %bb.v ]
  %i.dq = phi i64 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.ce, %bb.v ] ; 2 uses
  %i.dr = trunc i64 %i.dq to i16
  %i.ds = trunc i64 %i.dq to i32
  %i.dt = and i32 %i.ds, 65535                    ; 3 uses
  %i.du = zext i16 %i.dp to i32                   ; 2 uses
  %i.dv = icmp samesign ult i32 %i.dt, %i.du
  br i1 %i.dv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge.i
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.31, i32 noundef %i.dt, i32 noundef %i.du) #17
  store i64 -30, ptr %1, align 8, !tbaa !11
  br label %cab_read_ahead_cfdata_none.exit

bb.at:                                            ; preds = %.critedge.i
  %i.dw = load i16, ptr %i.bq, align 2, !tbaa !97 ; 2 uses
  %.not167.i = icmp eq i16 %i.dw, 0
  br i1 %.not167.i, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.dx = zext i16 %i.dw to i64
  %i.dy = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef %i.dx, ptr noundef nonnull %i.e) #17
  %i.dz = load i64, ptr %i.e, align 8, !tbaa !11
  %i.ea = icmp slt i64 %i.dz, 1
  br i1 %i.ea, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.18) #17
  br label %.critedge171.i

bb.aw:                                            ; preds = %bb.au
  %i.eb = load i16, ptr %i.bq, align 2, !tbaa !97
  %i.ec = zext i16 %i.eb to i64                   ; 2 uses
  store i64 %i.ec, ptr %i.cc, align 8, !tbaa !75
  store ptr %i.dy, ptr %i.cd, align 8, !tbaa !92
  %i.ed = call fastcc i64 @cab_minimum_consume_cfdata(ptr noundef %0, i64 noundef %i.ec)
  %i.ee = icmp slt i64 %i.ed, 0
  br i1 %i.ee, label %.critedge171.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.at
  %i.ef = load ptr, ptr %i.bc, align 8, !tbaa !64 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 88
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !89
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.ej = load i16, ptr %i.ei, align 4, !tbaa !52
  %i.ek = zext i16 %i.ej to i32
  %i.el = icmp slt i32 %i.eh, %i.ek
  br i1 %i.el, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
end_hunk_0

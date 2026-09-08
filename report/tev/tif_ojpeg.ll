Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tif_ojpeg?download=true
inline.NumInlined: 64
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@TIFFInitOJPEG:bb.a
  store ptr @OJPEGPostEncode, ptr %i.q, align 8, !tbaa !140
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr @OJPEGEncode, ptr %i.r, align 8, !tbaa !141
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr @OJPEGEncode, ptr %i.s, align 8, !tbaa !142
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr @OJPEGEncode, ptr %i.t, align 8, !tbaa !143
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store ptr @OJPEGCleanup, ptr %i.u, align 8, !tbaa !144
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.b, ptr %i.v, align 8, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !57
  store ptr @OJPEGVGetField, ptr %i.x, align 8, !tbaa !145
  %i.aa = shufflevector <2 x ptr> %i.z, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.aa, ptr %i.y, align 8, !tbaa !57
  store ptr @OJPEGVSetField, ptr %i.w, align 8, !tbaa !146
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !59
  store ptr @OJPEGPrintDir, ptr %i.ab, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !60
  %i.ag = or i32 %i.af, 131072
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.e ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @_TIFFMergeFields(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @TIFFErrorExtR(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @_TIFFmallocExt(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_TIFFmemset(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @OJPEGFixupTags(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @OJPEGSetupDecode(ptr noundef %0) #0 {
bb.a:
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef %0, ptr noundef nonnull @OJPEGSetupDecode.module, ptr noundef nonnull @.str.45) #13
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @OJPEGPreDecode(ptr noundef %0, i16 noundef zeroext %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 290
  %i.d = load i8, ptr %i.c, align 2, !tbaa !61
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @OJPEGSubsamplingCorrect(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 600
  %i.g = load i8, ptr %i.f, align 8, !tbaa !150
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !56   ; 24 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i32, ptr %i.j, align 8, !tbaa !151  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  store i32 %i.k, ptr %i.l, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.n = load i32, ptr %i.m, align 4, !tbaa !152  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 252
  store i32 %i.n, ptr %i.o, align 4, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !60
  %i.r = and i32 %i.q, 1024
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.t = load i32, ptr %i.s, align 4, !tbaa !153
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load i32, ptr %i.u, align 8, !tbaa !154  ; 3 uses
  %i.w = add i32 %i.v, %i.n
  %.fr73.i = freeze i32 %i.w
  %i.x = add i32 %.fr73.i, -1                     ; 2 uses
  %i.y = urem i32 %i.x, %i.v
  %i.z = sub nuw i32 %i.x, %i.y
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !155 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, -1
  %spec.store.select.i = select i1 %i.ac, i32 %i.n, i32 %i.ab
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = phi i32 [ %i.k, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %i.ae = phi i32 [ %spec.store.select.i, %bb.f ], [ %i.v, %bb.e ] ; 4 uses
  %.sink.i = phi i32 [ %i.n, %bb.f ], [ %i.z, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  store i32 %i.ad, ptr %i.af, align 8, !tbaa !64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 260
  store i32 %i.ae, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 264
  store i32 %.sink.i, ptr %i.ah, align 8, !tbaa !65
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 268 ; 3 uses
  switch i16 %i.aj, label %bb.i [
    i16 1, label %bb.h
    i16 3, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.ak, align 4, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 269
  store i8 0, ptr %i.al, align 1, !tbaa !68
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 270
  store i8 1, ptr %i.am, align 2, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 292
  store i8 1, ptr %i.an, align 4, !tbaa !40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 293
  store i8 1, ptr %i.ao, align 1, !tbaa !41
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.ap = load i8, ptr %i.ak, align 4, !tbaa !67
  %i.aq = zext i8 %i.ap to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfo.module, ptr noundef nonnull @.str.46, i32 noundef %i.aq) #13
  br label %OJPEGReadHeaderInfo.exit.thread

bb.j:                                             ; preds = %bb.g
  store i8 3, ptr %i.ak, align 4, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 269
  store i8 0, ptr %i.ar, align 1, !tbaa !68
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.at = load i16, ptr %i.as, align 2, !tbaa !156
  %i.au = icmp eq i16 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 270 ; 2 uses
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 3, ptr %i.av, align 2, !tbaa !69
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i8 1, ptr %i.av, align 2, !tbaa !69
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h
  %i.aw = icmp ult i32 %i.ae, %i.n
  br i1 %i.aw, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 292
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !40  ; 2 uses
  switch i8 %i.ay, label %bb.p [
    i8 1, label %bb.o
    i8 2, label %bb.o
    i8 4, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 293
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !41  ; 2 uses
  switch i8 %i.ba, label %bb.p [
    i8 1, label %bb.q
    i8 2, label %bb.q
    i8 4, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfo.module, ptr noundef nonnull @.str.47) #13
  br label %OJPEGReadHeaderInfo.exit.thread

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 3                ; 2 uses
  %i.bd = urem i32 %i.ae, %i.bc
  %i.be = udiv i32 %i.ae, %i.bc
  %.not81.i = icmp eq i32 %i.bd, 0
  br i1 %.not81.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfo.module, ptr noundef nonnull @.str.48) #13
  br label %OJPEGReadHeaderInfo.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.bf = zext nneg i8 %i.ay to i32
  %i.bg = shl nuw nsw i32 %i.bf, 3                ; 2 uses
  %i.bh = add i32 %i.ad, -1
  %i.bi = add i32 %i.bh, %i.bg
  %i.bj = udiv i32 %i.bi, %i.bg
  %i.bk = mul i32 %i.be, %i.bj
  %i.bl = trunc i32 %i.bk to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 472
  store i16 %i.bl, ptr %i.bm, align 8, !tbaa !70
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %i.bn = tail call fastcc i32 @OJPEGReadHeaderInfoSec(ptr noundef nonnull %0)
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %OJPEGReadHeaderInfo.exit.thread, label %OJPEGReadHeaderInfo.exit

OJPEGReadHeaderInfo.exit:                         ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 504
  store i8 1, ptr %i.bp, align 8, !tbaa !158
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 1592
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 508
  %i.bs = load <2 x i32>, ptr %i.bq, align 8, !tbaa !71
  store <2 x i32> %i.bs, ptr %i.br, align 4, !tbaa !71
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 1608
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !72
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 1632
  %i.bw = load i16, ptr %i.bv, align 8, !tbaa !73
  %i.bx = zext i16 %i.bw to i64                   ; 2 uses
  %i.by = sub i64 %i.bu, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 520
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !159
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 1624
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !74
  %i.cc = add i64 %i.cb, %i.bx
  %i.cd = getelementptr inbounds nuw i8, ptr %i.i, i64 528
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !160
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 600
  store i8 1, ptr %i.ce, align 8, !tbaa !150
  br label %bb.u

bb.u:                                             ; preds = %OJPEGReadHeaderInfo.exit, %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.cg = zext i16 %1 to i64
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %i.cg ; 5 uses
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !158
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.v, label %OJPEGReadSecondarySos.exit

bb.v:                                             ; preds = %bb.u
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !56  ; 10 uses
  %i.cl = trunc i16 %1 to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 504 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %storemerge.in.i = phi i8 [ %i.cl, %bb.v ], [ %storemerge.i, %bb.w ]
  %storemerge.i = add i8 %storemerge.in.i, -1     ; 4 uses
  %i.cn = zext i8 %storemerge.i to i64
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %i.cn ; 4 uses
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !158
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.w, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 269 ; 4 uses
  store i8 %storemerge.i, ptr %i.cr, align 1, !tbaa !68
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 1592 ; 2 uses
  %i.cu = load <2 x i32>, ptr %i.cs, align 4, !tbaa !71
  store <2 x i32> %i.cu, ptr %i.ct, align 8, !tbaa !71
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !159
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ck, i64 1608 ; 2 uses
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !72
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 1616
  store i8 0, ptr %i.cy, align 8, !tbaa !75
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !160
  %i.db = getelementptr inbounds nuw i8, ptr %i.ck, i64 1624 ; 2 uses
  store i64 %i.da, ptr %i.db, align 8, !tbaa !74
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ck, i64 1632 ; 6 uses
  store i16 0, ptr %i.dc, align 8, !tbaa !73
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ck, i64 1640 ; 5 uses
  store ptr null, ptr %i.dd, align 8, !tbaa !76
  %i.de = zext i8 %storemerge.i to i16
  %i.df = icmp ugt i16 %1, %i.de
  br i1 %i.df, label %.preheader52.i, label %OJPEGReadSecondarySos.exit

.preheader52.i:                                   ; preds = %bb.x, %.preheader52.i.backedge
  %i.dg = phi i16 [ %.be, %.preheader52.i.backedge ], [ 0, %bb.x ] ; 2 uses
  %i.dh = icmp eq i16 %i.dg, 0
  br i1 %i.dh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.preheader52.i
  %i.di = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.ck)
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %OJPEGReadHeaderInfo.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.y
  %.pre.i = load i16, ptr %i.dc, align 8, !tbaa !73
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i, %.preheader52.i
  %i.dk = phi i16 [ %.pre.i, %._crit_edge.i ], [ %i.dg, %.preheader52.i ]
  %i.dl = load ptr, ptr %i.dd, align 8, !tbaa !76 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !77
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 1 ; 2 uses
  store ptr %i.dn, ptr %i.dd, align 8, !tbaa !76
  %i.do = add i16 %i.dk, -1                       ; 3 uses
  store i16 %i.do, ptr %i.dc, align 8, !tbaa !73
  %i.dp = icmp eq i8 %i.dm, -1
  br i1 %i.dp, label %.preheader.i, label %.preheader52.i.backedge

.preheader.i:                                     ; preds = %bb.z, %bb.ab
  %i.dq = phi ptr [ %i.dy, %bb.ab ], [ %i.dn, %bb.z ]
  %i.dr = phi i16 [ %i.dz, %bb.ab ], [ %i.do, %bb.z ] ; 2 uses
  %i.ds = icmp eq i16 %i.dr, 0
  br i1 %i.ds, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.preheader.i
  %i.dt = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.ck)
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %OJPEGReadHeaderInfo.exit.thread, label %._crit_edge60.i

._crit_edge60.i:                                  ; preds = %bb.aa
  %.pre61.i = load ptr, ptr %i.dd, align 8, !tbaa !76
  %.pre62.i = load i16, ptr %i.dc, align 8, !tbaa !73
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge60.i, %.preheader.i
  %i.dv = phi i16 [ %.pre62.i, %._crit_edge60.i ], [ %i.dr, %.preheader.i ]
  %i.dw = phi ptr [ %.pre61.i, %._crit_edge60.i ], [ %i.dq, %.preheader.i ] ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !77
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 2 uses
  store ptr %i.dy, ptr %i.dd, align 8, !tbaa !76
  %i.dz = add i16 %i.dv, -1                       ; 3 uses
  store i16 %i.dz, ptr %i.dc, align 8, !tbaa !73
  switch i8 %i.dx, label %.preheader52.i.backedge [
    i8 -1, label %.preheader.i
    i8 -38, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ea = load i8, ptr %i.cr, align 1, !tbaa !68
  %i.eb = add i8 %i.ea, 1
  store i8 %i.eb, ptr %i.cr, align 1, !tbaa !68
  %i.ec = tail call fastcc i32 @OJPEGReadHeaderInfoSecStreamSos(ptr noundef %0)
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %OJPEGReadHeaderInfo.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ee = load i8, ptr %i.cr, align 1, !tbaa !68  ; 2 uses
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %i.ef ; 4 uses
  store i8 1, ptr %i.eg, align 8, !tbaa !158
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ei = load <2 x i32>, ptr %i.ct, align 8, !tbaa !71
  store <2 x i32> %i.ei, ptr %i.eh, align 4, !tbaa !71
  %i.ej = load i64, ptr %i.cx, align 8, !tbaa !72
  %i.ek = load i16, ptr %i.dc, align 8, !tbaa !73 ; 2 uses
  %i.el = zext i16 %i.ek to i64                   ; 2 uses
  %i.em = sub i64 %i.ej, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i64 %i.em, ptr %i.en, align 8, !tbaa !159
  %i.eo = load i64, ptr %i.db, align 8, !tbaa !74
  %i.ep = add i64 %i.eo, %i.el
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !160
  %i.er = zext i8 %i.ee to i16
  %i.es = icmp ugt i16 %1, %i.er
  br i1 %i.es, label %.preheader52.i.backedge, label %OJPEGReadSecondarySos.exit

.preheader52.i.backedge:                          ; preds = %bb.ab, %bb.ad, %bb.z
  %.be = phi i16 [ %i.do, %bb.z ], [ %i.ek, %bb.ad ], [ %i.dz, %bb.ab ]
  br label %.preheader52.i

OJPEGReadSecondarySos.exit:                       ; preds = %bb.ad, %bb.x, %bb.u
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !60
  %i.ev = and i32 %i.eu, 1024
  %.not = icmp eq i32 %i.ev, 0
  %.0.in.v = select i1 %.not, i64 856, i64 908
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v
  %.0 = load i32, ptr %.0.in, align 4, !tbaa !71  ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 601 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !78
  %.not58 = icmp eq i8 %i.ex, 0
  br i1 %.not58, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %OJPEGReadSecondarySos.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 602
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !161
end_hunk_0
begin_hunk_1_@OJPEGReadHeaderInfoSec:bb.a
  %i.if = getelementptr inbounds nuw i8, ptr %i.gr, i64 1616
  store i8 0, ptr %i.if, align 8, !tbaa !75
  br label %thread-pre-split

bb.bq:                                            ; preds = %bb.bn
  %i.ig = zext i16 %i.ho to i32
  %i.ih = add nuw nsw i32 %i.ig, 6                ; 2 uses
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.ii) #13 ; 13 uses
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamDht.module, ptr noundef nonnull @.str.19) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.bs:                                            ; preds = %bb.bq
  store i32 %i.ih, ptr %i.ij, align 4, !tbaa !71
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  store i8 -1, ptr %i.il, align 4, !tbaa !77
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 5
  store i8 -60, ptr %i.im, align 1, !tbaa !77
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 6
  store i8 %i.ha, ptr %i.in, align 2, !tbaa !77
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 7
  store i8 %i.hk, ptr %i.io, align 1, !tbaa !77
  %i.ip = add i16 %i.ho, -2
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 2 uses
  %.pre.i59.i = load i16, ptr %i.gs, align 8, !tbaa !73
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %bb.bs
  %i.ir = phi i16 [ %.pre.i59.i, %bb.bs ], [ %i.jb, %bb.bv ] ; 2 uses
  %.021.i.i101 = phi i16 [ %i.ip, %bb.bs ], [ %i.jc, %bb.bv ] ; 2 uses
  %.020.i.i102 = phi ptr [ %i.iq, %bb.bs ], [ %i.jd, %bb.bv ] ; 2 uses
  %i.is = icmp eq i16 %i.ir, 0
  br i1 %i.is, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.it = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.gr)
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %bb.bw, label %._crit_edge.i61.i

._crit_edge.i61.i:                                ; preds = %bb.bu
  %.pre23.i.i105 = load i16, ptr %i.gs, align 8, !tbaa !73
  br label %bb.bv

bb.bv:                                            ; preds = %._crit_edge.i61.i, %bb.bt
  %i.iv = phi i16 [ %.pre23.i.i105, %._crit_edge.i61.i ], [ %i.ir, %bb.bt ]
  %spec.select.i60.i = tail call i16 @llvm.umin.i16(i16 %.021.i.i101, i16 %i.iv) ; 3 uses
  %i.iw = load ptr, ptr %i.gy, align 8, !tbaa !76
  %i.ix = zext i16 %spec.select.i60.i to i64      ; 3 uses
  tail call void @_TIFFmemcpy(ptr noundef %.020.i.i102, ptr noundef %i.iw, i64 noundef %i.ix) #13
  %i.iy = load ptr, ptr %i.gy, align 8, !tbaa !76
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.ix
  store ptr %i.iz, ptr %i.gy, align 8, !tbaa !76
  %i.ja = load i16, ptr %i.gs, align 8, !tbaa !73
  %i.jb = sub i16 %i.ja, %spec.select.i60.i       ; 2 uses
  store i16 %i.jb, ptr %i.gs, align 8, !tbaa !73
  %i.jc = sub nuw i16 %.021.i.i101, %spec.select.i60.i ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.020.i.i102, i64 %i.ix
  %.not.i.i103 = icmp eq i16 %i.jc, 0
  br i1 %.not.i.i103, label %OJPEGReadBlock.exit.i104, label %bb.bt

bb.bw:                                            ; preds = %bb.bu
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ij) #13
  br label %OJPEGReadBytePeek.exit.thread

OJPEGReadBlock.exit.i104:                         ; preds = %bb.bv
  %i.je = load i8, ptr %i.iq, align 4, !tbaa !77  ; 4 uses
  %i.jf = and i8 %i.je, -16
  switch i8 %i.jf, label %bb.cc [
    i8 0, label %bb.bx
    i8 16, label %bb.cd
  ]

bb.bx:                                            ; preds = %OJPEGReadBlock.exit.i104
  %i.jg = icmp ugt i8 %i.je, 3
  br i1 %i.jg, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamDht.module, ptr noundef nonnull @.str.20) #13
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ij) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.bz:                                            ; preds = %bb.bx
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gr, i64 408
  %i.ji = zext nneg i8 %i.je to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.ji ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !95 ; 2 uses
  %.not58.i = icmp eq ptr %i.jk, null
  br i1 %.not58.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.jk) #13
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  store ptr %i.ij, ptr %i.jj, align 8, !tbaa !95
  br label %thread-pre-split

bb.cc:                                            ; preds = %OJPEGReadBlock.exit.i104
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamDht.module, ptr noundef nonnull @.str.20) #13
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ij) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.cd:                                            ; preds = %OJPEGReadBlock.exit.i104
  %i.jl = and i8 %i.je, 15                        ; 2 uses
  %i.jm = icmp samesign ugt i8 %i.jl, 3
  br i1 %i.jm, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamDht.module, ptr noundef nonnull @.str.20) #13
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ij) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.cf:                                            ; preds = %bb.cd
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gr, i64 440
  %i.jo = zext nneg i8 %i.jl to i64
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jo ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !95 ; 2 uses
  %.not57.i = icmp eq ptr %i.jq, null
  br i1 %.not57.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.jq) #13
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  store ptr %i.ij, ptr %i.jp, align 8, !tbaa !95
  br label %thread-pre-split

bb.ci:                                            ; preds = %bb.n, %bb.n, %bb.n
  %i.jr = load ptr, ptr %i.d, align 8, !tbaa !56  ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 475 ; 2 uses
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !118
  %.not.i111 = icmp eq i8 %i.jt, 0
  br i1 %.not.i111, label %bb.cj, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split

bb.cj:                                            ; preds = %bb.ci
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 289 ; 12 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !112
  %i.jw = icmp eq i8 %i.jv, 0
  br i1 %i.jw, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 476
  store i8 %i.az, ptr %i.jx, align 4, !tbaa !119
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jr, i64 1632 ; 7 uses
  %i.jz = load i16, ptr %i.jy, align 8, !tbaa !73 ; 2 uses
  %i.ka = icmp eq i16 %i.jz, 0
  br i1 %i.ka, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.kb = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.jr)
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %._crit_edge.i.i117

._crit_edge.i.i117:                               ; preds = %bb.cm
  %.pre.i.i118 = load i16, ptr %i.jy, align 8, !tbaa !73
  br label %bb.cn

bb.cn:                                            ; preds = %._crit_edge.i.i117, %bb.cl
  %i.kd = phi i16 [ %.pre.i.i118, %._crit_edge.i.i117 ], [ %i.jz, %bb.cl ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jr, i64 1640 ; 6 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !76 ; 2 uses
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !77
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 1 ; 2 uses
  store ptr %i.kh, ptr %i.ke, align 8, !tbaa !76
  %i.ki = add i16 %i.kd, -1                       ; 3 uses
  store i16 %i.ki, ptr %i.jy, align 8, !tbaa !73
  %i.kj = zext i8 %i.kg to i16
  %i.kk = shl nuw i16 %i.kj, 8
  %i.kl = icmp eq i16 %i.ki, 0
  br i1 %i.kl, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.km = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.jr)
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %._crit_edge12.i.i114

._crit_edge12.i.i114:                             ; preds = %bb.co
  %.pre13.i.i115 = load ptr, ptr %i.ke, align 8, !tbaa !76
  %.pre14.i.i116 = load i16, ptr %i.jy, align 8, !tbaa !73
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge12.i.i114, %bb.cn
  %i.ko = phi i16 [ %.pre14.i.i116, %._crit_edge12.i.i114 ], [ %i.ki, %bb.cn ]
  %i.kp = phi ptr [ %.pre13.i.i115, %._crit_edge12.i.i114 ], [ %i.kh, %bb.cn ] ; 2 uses
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !77
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 1 ; 2 uses
  store ptr %i.kr, ptr %i.ke, align 8, !tbaa !76
  %i.ks = add i16 %i.ko, -1                       ; 3 uses
  store i16 %i.ks, ptr %i.jy, align 8, !tbaa !73
  %i.kt = zext i8 %i.kq to i16
  %i.ku = or disjoint i16 %i.kk, %i.kt            ; 3 uses
  %i.kv = icmp ult i16 %i.ku, 11
  br i1 %i.kv, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.kw = load i8, ptr %i.ju, align 1, !tbaa !112
  %i.kx = icmp eq i8 %i.kw, 0
  br i1 %i.kx, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread

bb.cr:                                            ; preds = %bb.cp
  %i.ky = add i16 %i.ku, -8                       ; 2 uses
  %i.kz = urem i16 %i.ky, 3
  %i.la = udiv i16 %i.ky, 3                       ; 3 uses
  %.not79.i = icmp eq i16 %i.kz, 0
  br i1 %.not79.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lb = load i8, ptr %i.ju, align 1, !tbaa !112
  %i.lc = icmp eq i8 %i.lb, 0
  br i1 %i.lc, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread

bb.ct:                                            ; preds = %bb.cr
  %i.ld = load i8, ptr %i.ju, align 1, !tbaa !112 ; 2 uses
  %i.le = icmp eq i8 %i.ld, 0
  br i1 %i.le, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jr, i64 268
  %i.lg = load i8, ptr %i.lf, align 4, !tbaa !67
  %i.lh = zext i8 %i.lg to i16
  %.not80.i = icmp eq i16 %i.la, %i.lh
  br i1 %.not80.i, label %bb.cv, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.li = icmp eq i16 %i.ks, 0
  br i1 %i.li, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.lj = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.jr)
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %._crit_edge105.i

._crit_edge105.i:                                 ; preds = %bb.cw
  %.pre.i113 = load ptr, ptr %i.ke, align 8, !tbaa !76
  %.pre106.i = load i16, ptr %i.jy, align 8, !tbaa !73
  %.pre317 = load i8, ptr %i.ju, align 1, !tbaa !112
  br label %bb.cx

bb.cx:                                            ; preds = %._crit_edge105.i, %bb.cv
  %i.ll = phi i8 [ %.pre317, %._crit_edge105.i ], [ %i.ld, %bb.cv ]
  %i.lm = phi i16 [ %.pre106.i, %._crit_edge105.i ], [ %i.ks, %bb.cv ]
  %i.ln = phi ptr [ %.pre.i113, %._crit_edge105.i ], [ %i.kr, %bb.cv ] ; 2 uses
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !77  ; 2 uses
  store i8 %i.lo, ptr %i.b, align 1, !tbaa !77
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 1
  store ptr %i.lp, ptr %i.ke, align 8, !tbaa !76
  %i.lq = add i16 %i.lm, -1
  store i16 %i.lq, ptr %i.jy, align 8, !tbaa !73
  %.not81.i = icmp eq i8 %i.lo, 8
  %.not82.i = icmp eq i8 %i.ll, 0                 ; 2 uses
  br i1 %.not81.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  br i1 %.not82.i, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread

bb.cz:                                            ; preds = %bb.cx
  br i1 %.not82.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call fastcc void @OJPEGReadSkip(ptr noundef nonnull %i.jr, i16 noundef zeroext 4)
  br label %bb.dh

bb.db:                                            ; preds = %bb.cz
  %i.lr = call fastcc i32 @OJPEGReadWord(ptr noundef nonnull %i.jr, ptr noundef %i.c)
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.lt = load i16, ptr %i.c, align 2, !tbaa !107
  %i.lu = zext i16 %i.lt to i32                   ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.jr, i64 252
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !63
  %i.lx = icmp ugt i32 %i.lw, %i.lu
  br i1 %i.lx, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.ly = getelementptr inbounds nuw i8, ptr %i.jr, i64 264
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !65
  %i.ma = icmp ugt i32 %i.lz, %i.lu
  br i1 %i.ma, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split, label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.mb = getelementptr inbounds nuw i8, ptr %i.jr, i64 484
  store i32 %i.lu, ptr %i.mb, align 4, !tbaa !120
  %i.mc = call fastcc i32 @OJPEGReadWord(ptr noundef nonnull %i.jr, ptr noundef %i.c)
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.me = load i16, ptr %i.c, align 2, !tbaa !107
  %i.mf = zext i16 %i.me to i32                   ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.jr, i64 248
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !62
  %i.mi = icmp ugt i32 %i.mh, %i.mf
  %i.mj = getelementptr inbounds nuw i8, ptr %i.jr, i64 256
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !64 ; 2 uses
  %i.ml = icmp ugt i32 %i.mk, %i.mf
  %or.cond.i = select i1 %i.mi, i1 %i.ml, i1 false
  br i1 %or.cond.i, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split, label %._crit_edge107.i

._crit_edge107.i:                                 ; preds = %bb.df
  %i.mm = icmp ult i32 %i.mk, %i.mf
  br i1 %i.mm, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split, label %bb.dg

bb.dg:                                            ; preds = %._crit_edge107.i
  %i.mn = getelementptr inbounds nuw i8, ptr %i.jr, i64 480
  store i32 %i.mf, ptr %i.mn, align 8, !tbaa !121
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.da
  %i.mo = call fastcc i32 @OJPEGReadByte(ptr noundef nonnull %i.jr, ptr noundef %i.b)
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.mq = load i8, ptr %i.b, align 1, !tbaa !77
  %i.mr = zext i8 %i.mq to i16
  %.not83.i = icmp eq i16 %i.la, %i.mr
  br i1 %.not83.i, label %.lr.ph.i, label %bb.dw

.lr.ph.i:                                         ; preds = %bb.di
  %i.ms = getelementptr inbounds nuw i8, ptr %i.jr, i64 488 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.jr, i64 294 ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.jr, i64 292 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.jr, i64 293 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.jr, i64 491 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.jr, i64 494 ; 2 uses
  %wide.trip.count.i = zext nneg i16 %i.la to i64
  %i.my = call fastcc i32 @OJPEGReadByte(ptr noundef nonnull %i.jr, ptr noundef %i.b)
  %i.mz = icmp eq i32 %i.my, 0
  br i1 %i.mz, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph.i
  %i.na = load i8, ptr %i.ju, align 1, !tbaa !112
  %i.nb = icmp eq i8 %i.na, 0
  br i1 %i.nb, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.nc = load i8, ptr %i.b, align 1, !tbaa !77
  store i8 %i.nc, ptr %i.ms, align 8, !tbaa !77
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.nd = call fastcc i32 @OJPEGReadByte(ptr noundef nonnull %i.jr, ptr noundef %i.b)
  %i.ne = icmp eq i32 %i.nd, 0
  br i1 %i.ne, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.nf = load i8, ptr %i.ju, align 1, !tbaa !112
  %.not84.peel.i = icmp eq i8 %i.nf, 0
  %i.ng = load i8, ptr %i.b, align 1, !tbaa !77   ; 4 uses
  br i1 %.not84.peel.i, label %bb.dq, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nh = lshr i8 %i.ng, 4                        ; 2 uses
  store i8 %i.nh, ptr %i.mu, align 4, !tbaa !40
  %i.ni = and i8 %i.ng, 15                        ; 2 uses
  store i8 %i.ni, ptr %i.mv, align 1, !tbaa !41
  switch i8 %i.nh, label %bb.dp [
    i8 1, label %bb.do
    i8 2, label %bb.do
    i8 4, label %bb.do
  ]

bb.do:                                            ; preds = %bb.dn, %bb.dn, %bb.dn
  switch i8 %i.ni, label %bb.dp [
    i8 1, label %bb.ds
    i8 2, label %bb.ds
    i8 4, label %bb.ds
  ]

bb.dp:                                            ; preds = %bb.do, %bb.dn
  store i8 1, ptr %i.mt, align 2, !tbaa !85
  br label %bb.ds

bb.dq:                                            ; preds = %bb.dm
  store i8 %i.ng, ptr %i.mw, align 1, !tbaa !77
  %i.nj = load i8, ptr %i.mt, align 2, !tbaa !85
  %i.nk = icmp eq i8 %i.nj, 0
  br i1 %i.nk, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.nl = zext i8 %i.ng to i32
  %i.nm = load i8, ptr %i.mu, align 4, !tbaa !40
  %i.nn = zext i8 %i.nm to i32
  %i.no = shl nuw nsw i32 %i.nn, 4
  %i.np = load i8, ptr %i.mv, align 1, !tbaa !41
  %i.nq = zext i8 %i.np to i32
  %i.nr = or i32 %i.no, %i.nq
  %.not86.peel.i = icmp eq i32 %i.nr, %i.nl
  br i1 %.not86.peel.i, label %bb.ds, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split

bb.ds:                                            ; preds = %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.do, %bb.do
  %i.ns = call fastcc i32 @OJPEGReadByte(ptr noundef nonnull %i.jr, ptr noundef %i.b)
  %i.nt = icmp eq i32 %i.ns, 0
  br i1 %i.nt, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.nu = load i8, ptr %i.ju, align 1, !tbaa !112 ; 2 uses
  %i.nv = icmp eq i8 %i.nu, 0
  br i1 %i.nv, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.nw = load i8, ptr %i.b, align 1, !tbaa !77
  store i8 %i.nw, ptr %i.mx, align 2, !tbaa !77
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.nx = icmp ult i16 %i.ku, 14
  br i1 %i.nx, label %._crit_edge.i112, label %.peel.next.i

bb.dw:                                            ; preds = %bb.di
  %i.ny = load i8, ptr %i.ju, align 1, !tbaa !112
  %i.nz = icmp eq i8 %i.ny, 0
  br i1 %i.nz, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread

.peel.next.i:                                     ; preds = %bb.dv, %bb.eh
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.eh ], [ 1, %bb.dv ] ; 4 uses
  %i.oa = call fastcc i32 @OJPEGReadByte(ptr noundef nonnull %i.jr, ptr noundef %i.b)
  %i.ob = icmp eq i32 %i.oa, 0
  br i1 %i.ob, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.dx

bb.dx:                                            ; preds = %.peel.next.i
  %i.oc = load i8, ptr %i.ju, align 1, !tbaa !112
  %i.od = icmp eq i8 %i.oc, 0
  br i1 %i.od, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.oe = load i8, ptr %i.b, align 1, !tbaa !77
  %i.of = getelementptr inbounds nuw i8, ptr %i.ms, i64 %indvars.iv.i
  store i8 %i.oe, ptr %i.of, align 1, !tbaa !77
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.og = call fastcc i32 @OJPEGReadByte(ptr noundef nonnull %i.jr, ptr noundef %i.b)
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.oi = load i8, ptr %i.ju, align 1, !tbaa !112
  %.not84.i = icmp eq i8 %i.oi, 0
  %i.oj = load i8, ptr %i.b, align 1, !tbaa !77   ; 3 uses
  br i1 %.not84.i, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.not87.i = icmp eq i8 %i.oj, 17
  br i1 %.not87.i, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  store i8 1, ptr %i.mt, align 2, !tbaa !85
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ea
  %i.ok = getelementptr inbounds nuw i8, ptr %i.mw, i64 %indvars.iv.i
  store i8 %i.oj, ptr %i.ok, align 1, !tbaa !77
  %i.ol = load i8, ptr %i.mt, align 2, !tbaa !85
  %i.om = icmp ne i8 %i.ol, 0
  %.not85.i = icmp eq i8 %i.oj, 17
  %or.cond124.i = select i1 %i.om, i1 true, i1 %.not85.i
  br i1 %or.cond124.i, label %bb.ee, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.eb
  %i.on = call fastcc i32 @OJPEGReadByte(ptr noundef nonnull %i.jr, ptr noundef %i.b)
  %i.oo = icmp eq i32 %i.on, 0
  br i1 %i.oo, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.op = load i8, ptr %i.ju, align 1, !tbaa !112 ; 2 uses
  %i.oq = icmp eq i8 %i.op, 0
  br i1 %i.oq, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.or = load i8, ptr %i.b, align 1, !tbaa !77
  %i.os = getelementptr inbounds nuw i8, ptr %i.mx, i64 %indvars.iv.i
  store i8 %i.or, ptr %i.os, align 1, !tbaa !77
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i112, label %.peel.next.i, !llvm.loop !200

._crit_edge.i112:                                 ; preds = %bb.eh, %bb.dv
  %i.ot = phi i8 [ %i.nu, %bb.dv ], [ %i.op, %bb.eh ]
  %i.ou = icmp eq i8 %i.ot, 0
  br i1 %i.ou, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %._crit_edge.i112
  store i8 1, ptr %i.js, align 1, !tbaa !118
  br label %bb.ej

OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split: ; preds = %bb.dr, %._crit_edge107.i, %bb.df, %bb.dd, %bb.cu, %bb.ci, %bb.ed, %bb.dw, %bb.cy, %bb.cs, %bb.cq
  %.str.15.sink = phi ptr [ @.str.23, %bb.cy ], [ @.str.21, %bb.cq ], [ @.str.21, %bb.cs ], [ @.str.21, %bb.dw ], [ @.str.27, %bb.ed ], [ @.str.25, %bb.df ], [ @.str.27, %bb.dr ], [ @.str.24, %bb.dd ], [ @.str.15, %bb.ci ], [ @.str.22, %bb.cu ], [ @.str.26, %._crit_edge107.i ]
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamSof.module, ptr noundef nonnull %.str.15.sink) #13
  br label %OJPEGReadHeaderInfoSecStreamSof.exit.thread

OJPEGReadHeaderInfoSecStreamSof.exit.thread:      ; preds = %bb.co, %bb.de, %bb.dh, %bb.cm, %bb.cw, %bb.db, %bb.ds, %bb.dl, %.lr.ph.i, %.peel.next.i, %bb.dz, %bb.ee, %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split, %bb.cq, %bb.cs, %bb.dw, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.ej:                                            ; preds = %bb.ei, %._crit_edge.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.ov = load i8, ptr %i.ag, align 1, !tbaa !112
  %.not80 = icmp eq i8 %i.ov, 0
  br i1 %.not80, label %OJPEGReadSkip.exit, label %OJPEGReadBytePeek.exit.thread

bb.ek:                                            ; preds = %bb.n
  %i.ow = load i8, ptr %i.ag, align 1, !tbaa !112
  %.not79 = icmp eq i8 %i.ow, 0
  br i1 %.not79, label %bb.el, label %OJPEGReadBytePeek.exit.thread

bb.el:                                            ; preds = %bb.ek
  %i.ox = tail call fastcc i32 @OJPEGReadHeaderInfoSecStreamSos(ptr noundef %0)
  %i.oy = icmp eq i32 %i.ox, 0
  br i1 %i.oy, label %OJPEGReadBytePeek.exit.thread, label %OJPEGReadSkip.exit.thread162

bb.em:                                            ; preds = %bb.n
  %i.oz = zext i8 %i.az to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @OJPEGReadHeaderInfoSec.module, ptr noundef nonnull @.str.16, i32 noundef %i.oz) #13
  br label %OJPEGReadBytePeek.exit.thread

OJPEGReadSkip.exit:                               ; preds = %bb.ej
  %.not82 = icmp eq i8 %i.az, -38
  br i1 %.not82, label %OJPEGReadSkip.exit.thread162.thread, label %thread-pre-split

OJPEGReadSkip.exit.thread162:                     ; preds = %bb.k, %bb.el
  %.pr369 = load i8, ptr %i.ag, align 1, !tbaa !112
  %.not83 = icmp eq i8 %.pr369, 0
  br i1 %.not83, label %OJPEGReadSkip.exit.thread162.thread, label %OJPEGReadBytePeek.exit.thread

OJPEGReadSkip.exit.thread162.thread:              ; preds = %OJPEGReadSkip.exit, %OJPEGReadSkip.exit.thread162
  %i.pa = getelementptr inbounds nuw i8, ptr %i.e, i64 475 ; 2 uses
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !118
  %i.pc = icmp eq i8 %i.pb, 0
  br i1 %i.pc, label %bb.en, label %OJPEGReadBytePeek.exit.thread

bb.en:                                            ; preds = %OJPEGReadSkip.exit.thread162.thread
  %i.pd = load ptr, ptr %i.d, align 8, !tbaa !56  ; 5 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 304 ; 3 uses
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !105
  %i.pg = icmp eq i64 %i.pf, 0
  br i1 %i.pg, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecTablesQTable.module, ptr noundef nonnull @.str.29) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.ep:                                            ; preds = %bb.en
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 1616
  store i8 0, ptr %i.ph, align 8, !tbaa !75
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pd, i64 268 ; 2 uses
  %i.pj = load i8, ptr %i.pi, align 4, !tbaa !67  ; 2 uses
  %.not74.i = icmp eq i8 %i.pj, 0
  br i1 %.not74.i, label %OJPEGReadHeaderInfoSecTablesQTable.exit, label %.lr.ph73.i

.lr.ph73.i:                                       ; preds = %bb.ep
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pd, i64 376
  %i.po = getelementptr inbounds nuw i8, ptr %i.pd, i64 494 ; 2 uses
  br label %bb.eq

bb.eq:                                            ; preds = %bb.fd, %.lr.ph73.i
  %indvars.iv297 = phi i32 [ %indvars.iv.next298, %bb.fd ], [ -1, %.lr.ph73.i ] ; 2 uses
  %i.pp = phi i8 [ %i.qu, %bb.fd ], [ %i.pj, %.lr.ph73.i ]
  %indvars.iv.i119 = phi i64 [ %indvars.iv.next.i124, %bb.fd ], [ 0, %.lr.ph73.i ] ; 7 uses
  %i.pq = phi i32 [ %i.qv, %bb.fd ], [ 0, %.lr.ph73.i ]
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv.i119 ; 3 uses
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !105 ; 3 uses
  %.not.i120 = icmp eq i64 %i.ps, 0
  br i1 %.not.i120, label %bb.fc, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.pt = icmp eq i64 %indvars.iv.i119, 0
  br i1 %i.pt, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.pu = getelementptr i8, ptr %i.pr, i64 -8
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !105
  %.not65.i = icmp eq i64 %i.ps, %i.pv
  br i1 %.not65.i, label %bb.fc, label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.pw = icmp samesign ugt i32 %i.pq, 1
  br i1 %i.pw, label %.lr.ph.i125.preheader, label %._crit_edge.i121

.lr.ph.i125.preheader:                            ; preds = %bb.et
  %wide.trip.count = zext i32 %indvars.iv297 to i64
  br label %.lr.ph.i125

bb.eu:                                            ; preds = %.lr.ph.i125
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.i121, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader, %bb.eu
  %indvars.iv = phi i64 [ 0, %.lr.ph.i125.preheader ], [ %indvars.iv.next, %bb.eu ] ; 2 uses
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv
  %i.py = load i64, ptr %i.px, align 8, !tbaa !105
  %i.pz = icmp eq i64 %i.ps, %i.py
  br i1 %i.pz, label %bb.ev, label %bb.eu

bb.ev:                                            ; preds = %.lr.ph.i125
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecTablesQTable.module, ptr noundef nonnull @.str.30) #13
  br label %OJPEGReadBytePeek.exit.thread

end_hunk_1

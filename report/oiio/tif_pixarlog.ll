inline.NumInlined: 19
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PixarLogSetupDecode:bb.a
bb.l:                                             ; preds = %bb.g
  %switch.selectcmp.case122.i = icmp ne i16 %.val50, 4
  %switch.selectcmp.case223.i = icmp ne i16 %.val50, 1
  %switch.selectcmp24.not.i = and i1 %switch.selectcmp.case122.i, %switch.selectcmp.case223.i
  %i.au = sext i1 %switch.selectcmp24.not.i to i32
  store i32 %i.au, ptr %i.an, align 8, !tbaa !32
  switch i16 %.val50, label %.thread55 [
    i16 4, label %.thread
    i16 1, label %.thread
  ]

.thread55:                                        ; preds = %bb.j, %bb.h, %bb.g, %bb.i, %bb.k, %bb.l
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.aj) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.av = load i16, ptr %i.aq, align 4, !tbaa !83
  %i.aw = zext i16 %i.av to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogSetupDecode.module, ptr noundef nonnull @.str.3, i32 noundef %i.aw) #7
  br label %bb.o

.thread:                                          ; preds = %bb.l, %bb.l, %bb.f, %.thread58
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ay = tail call i32 @inflateInit_(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.4, i32 noundef 112) #7
  %.not47 = icmp eq i32 %i.ay, 0
  br i1 %.not47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread
  %i.az = load ptr, ptr %i.ak, align 8, !tbaa !81
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef %i.az) #7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !85 ; 2 uses
  %.not48 = icmp eq ptr %i.bb, null
  %spec.select49 = select i1 %.not48, ptr @.str.6, ptr %i.bb
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogSetupDecode.module, ptr noundef nonnull @.str.5, ptr noundef nonnull %spec.select49) #7
  br label %bb.o

bb.n:                                             ; preds = %.thread
  %i.bc = load i32, ptr %i.c, align 4, !tbaa !51
  %i.bd = or i32 %i.bc, 1
  store i32 %i.bd, ptr %i.c, align 4, !tbaa !51
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.n, %bb.m, %.thread55
  %.042 = phi i32 [ 1, %bb.n ], [ 1, %bb.a ], [ 0, %bb.d ], [ 0, %.thread55 ], [ 0, %bb.m ], [ 0, %bb.e ]
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PixarLogPreDecode(ptr noundef %0, i16 zeroext %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.g = load i64, ptr %i.f, align 8, !tbaa !88   ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 %i.h, ptr %i.i, align 8, !tbaa !89
  %.not = icmp ult i64 %i.g, 4294967296
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogPreDecode.module, ptr noundef nonnull @.str.7) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i32 @inflateReset(ptr noundef nonnull %i.e) #7
  %i.k = icmp eq i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.l, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PixarLogDecode(ptr noundef %0, ptr nofree noundef writeonly %1, i64 noundef %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  switch i32 %i.d, label %bb.d [
    i32 5, label %bb.b
    i32 4, label %bb.c
    i32 3, label %bb.c
    i32 2, label %bb.c
    i32 0, label %bb.e
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %2, 2
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.f = lshr i64 %2, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.h = load i16, ptr %i.g, align 4, !tbaa !83
  %i.i = zext i16 %i.h to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogDecode.module, ptr noundef nonnull @.str.8, i32 noundef %i.i) #7
  br label %.thread.sink.split

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.c, %bb.b
  %.0125 = phi i64 [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %2, %bb.a ], [ %2, %bb.a ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 7 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !79
  %i.l = zext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load i32, ptr %i.m, align 8, !tbaa !80
  %i.o = mul i32 %i.n, %i.l                       ; 28 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !88
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  store i32 %i.u, ptr %i.v, align 8, !tbaa !89
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr %i.x, ptr %i.y, align 8, !tbaa !91
  %i.z = shl i64 %.0125, 1                        ; 3 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 3 uses
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !92
  %.not = icmp ult i64 %i.z, 4294967296
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogDecode.module, ptr noundef nonnull @.str.7) #7
  br label %.thread.sink.split

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !82
  %i.ae = icmp sgt i64 %i.z, %i.ad
  br i1 %i.ae, label %bb.h, label %.preheader

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogDecode.module, ptr noundef nonnull @.str.9) #7
  br label %.thread.sink.split

.preheader:                                       ; preds = %bb.g, %bb.k
  %i.af = tail call i32 @inflate(ptr noundef nonnull %i.r, i32 noundef 1) #7
  switch i32 %i.af, label %bb.j [
    i32 1, label %bb.l
    i32 -3, label %bb.i
    i32 0, label %bb.k
  ]

bb.i:                                             ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !93
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !85 ; 2 uses
  %.not136 = icmp eq ptr %i.aj, null
  %spec.select = select i1 %.not136, ptr @.str.6, ptr %i.aj
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @PixarLogDecode.module, ptr noundef nonnull @.str.10, i32 noundef %i.ah, ptr noundef nonnull %spec.select) #7
  br label %.thread.sink.split

bb.j:                                             ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !85 ; 2 uses
  %.not135 = icmp eq ptr %i.al, null
  %spec.select141 = select i1 %.not135, ptr @.str.6, ptr %i.al
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @PixarLogDecode.module, ptr noundef nonnull @.str.11, ptr noundef nonnull %spec.select141) #7
  br label %.thread.sink.split

bb.k:                                             ; preds = %.preheader
  %i.am = load i32, ptr %i.ab, align 8, !tbaa !92
  %.not137 = icmp eq i32 %i.am, 0
  br i1 %.not137, label %.thread218, label %.preheader

bb.l:                                             ; preds = %.preheader
  %.pr = load i32, ptr %i.ab, align 8, !tbaa !92  ; 2 uses
  %.not138 = icmp eq i32 %.pr, 0
  br i1 %.not138, label %.thread218, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !93
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @PixarLogDecode.module, ptr noundef nonnull @.str.12, i32 noundef %i.ao, i32 noundef %.pr) #7
  br label %.thread.sink.split

.thread218:                                       ; preds = %bb.k, %bb.l
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !87
  store ptr %i.ap, ptr %i.p, align 8, !tbaa !90
  %i.aq = load i32, ptr %i.v, align 8, !tbaa !89
  %i.ar = zext i32 %i.aq to i64
  store i64 %i.ar, ptr %i.s, align 8, !tbaa !88
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !81  ; 3 uses
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !94
  %i.aw = and i32 %i.av, 128
  %.not139 = icmp eq i32 %i.aw, 0
  br i1 %.not139, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread218
  tail call void @TIFFSwabArrayOfShort(ptr noundef %i.as, i64 noundef %.0125) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread218
  %i.ax = sext i32 %i.o to i64                    ; 20 uses
  %i.ay = srem i64 %.0125, %i.ax                  ; 2 uses
  %.not140 = icmp eq i64 %i.ay, 0
  br i1 %.not140, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogDecode.module, ptr noundef nonnull @.str.13, i32 noundef %i.o, i64 noundef %.0125) #7
  %i.az = sub nsw i64 %.0125, %i.ay
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1126 = phi i64 [ %i.az, %bb.p ], [ %.0125, %bb.o ] ; 2 uses
  %i.ba = icmp sgt i64 %.1126, 0
  br i1 %i.ba, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 2 uses
  %i.bc = icmp samesign ugt i32 %i.o, 4           ; 6 uses
  %i.bd = icmp samesign ugt i32 %i.o, 3           ; 6 uses
  %i.be = shl nsw i64 %i.ax, 1                    ; 21 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.bh = shl nsw i64 %i.ax, 2                    ; 7 uses
  %i.bi = mul nsw i64 %i.ax, -2
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %horizontalAccumulateF.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %horizontalAccumulateF.exit ] ; 2 uses
  %.0122258 = phi ptr [ %i.as, %.lr.ph ], [ %i.ahx, %horizontalAccumulateF.exit ] ; 59 uses
  %.0123257 = phi ptr [ %1, %.lr.ph ], [ %i.ahv, %horizontalAccumulateF.exit ] ; 65 uses
  %.0127256 = phi i64 [ 0, %.lr.ph ], [ %i.ahw, %horizontalAccumulateF.exit ]
  %.0123257401 = ptrtoaddr ptr %.0123257 to i64
  %i.bj = mul i64 %i.bi, %indvar
  %4 = sub i64 %i.bj, %i.at
  %i.bk = load i32, ptr %i.c, align 8, !tbaa !32
  switch i32 %i.bk, label %bb.av [
    i32 5, label %bb.s
    i32 4, label %bb.x
    i32 3, label %bb.ac
    i32 2, label %bb.ah
    i32 0, label %bb.al
    i32 1, label %bb.aq
  ]

bb.s:                                             ; preds = %bb.r
  %i.bl = load i16, ptr %i.j, align 8, !tbaa !79  ; 3 uses
  %i.bm = zext i16 %i.bl to i32                   ; 5 uses
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !68 ; 16 uses
  %.not.i = icmp slt i32 %i.o, %i.bm
  br i1 %.not.i, label %horizontalAccumulateF.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  switch i16 %i.bl, label %.preheader137.i [
    i16 3, label %bb.u
    i16 4, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bo = load i16, ptr %.0122258, align 2, !tbaa !59
  %i.bp = and i16 %i.bo, 2047                     ; 2 uses
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !52
  %i.bt = getelementptr inbounds nuw i8, ptr %.0122258, i64 2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !59
  %i.bv = and i16 %i.bu, 2047                     ; 2 uses
  %i.bw = zext nneg i16 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !52
  %i.bz = getelementptr inbounds nuw i8, ptr %.0122258, i64 4
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !59
  %i.cb = and i16 %i.ca, 2047                     ; 2 uses
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !52
  store float %i.bs, ptr %.0123257, align 4, !tbaa !52
  %i.cf = getelementptr inbounds nuw i8, ptr %.0123257, i64 4
  store float %i.by, ptr %i.cf, align 4, !tbaa !52
  %i.cg = getelementptr inbounds nuw i8, ptr %.0123257, i64 8
  store float %i.ce, ptr %i.cg, align 4, !tbaa !52
  br i1 %i.bd, label %.lr.ph156.preheader.i, label %horizontalAccumulateF.exit

.lr.ph156.preheader.i:                            ; preds = %bb.u
  %i.ch = zext nneg i16 %i.cb to i32
  %i.ci = zext nneg i16 %i.bv to i32
  %i.cj = zext nneg i16 %i.bp to i32
  br label %.lr.ph156.i

.lr.ph156.i:                                      ; preds = %.lr.ph156.i, %.lr.ph156.preheader.i
  %.0117155.i = phi ptr [ %i.ck, %.lr.ph156.i ], [ %.0122258, %.lr.ph156.preheader.i ] ; 3 uses
  %.0119154.i = phi i32 [ %i.de, %.lr.ph156.i ], [ %i.ch, %.lr.ph156.preheader.i ]
  %.0121153.i = phi i32 [ %i.cw, %.lr.ph156.i ], [ %i.ci, %.lr.ph156.preheader.i ]
  %.0123152.i = phi i32 [ %i.co, %.lr.ph156.i ], [ %i.cj, %.lr.ph156.preheader.i ]
  %.0125.in151.i = phi i32 [ %.0125.i, %.lr.ph156.i ], [ %i.o, %.lr.ph156.preheader.i ] ; 2 uses
  %.0128150.i = phi ptr [ %i.cl, %.lr.ph156.i ], [ %.0123257, %.lr.ph156.preheader.i ] ; 3 uses
  %.0125.i = add nsw i32 %.0125.in151.i, -3
  %i.ck = getelementptr inbounds nuw i8, ptr %.0117155.i, i64 6 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0128150.i, i64 12 ; 2 uses
  %i.cm = load i16, ptr %i.ck, align 2, !tbaa !59
  %i.cn = zext i16 %i.cm to i32
  %i.co = add i32 %.0123152.i, %i.cn              ; 2 uses
  %i.cp = and i32 %i.co, 2047
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !52
  %i.ct = getelementptr inbounds nuw i8, ptr %.0117155.i, i64 8
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !59
  %i.cv = zext i16 %i.cu to i32
  %i.cw = add i32 %.0121153.i, %i.cv              ; 2 uses
  %i.cx = and i32 %i.cw, 2047
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !52
  %i.db = getelementptr inbounds nuw i8, ptr %.0117155.i, i64 10
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !59
  %i.dd = zext i16 %i.dc to i32
  %i.de = add i32 %.0119154.i, %i.dd              ; 2 uses
  %i.df = and i32 %i.de, 2047
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !52
  store float %i.cs, ptr %i.cl, align 4, !tbaa !52
  %i.dj = getelementptr inbounds nuw i8, ptr %.0128150.i, i64 16
  store float %i.da, ptr %i.dj, align 4, !tbaa !52
  %i.dk = getelementptr inbounds nuw i8, ptr %.0128150.i, i64 20
  store float %i.di, ptr %i.dk, align 4, !tbaa !52
  %i.dl = icmp samesign ugt i32 %.0125.in151.i, 6
  br i1 %i.dl, label %.lr.ph156.i, label %horizontalAccumulateF.exit

bb.v:                                             ; preds = %bb.t
  %i.dm = load <4 x i16>, ptr %.0122258, align 2, !tbaa !59
  %i.dn = and <4 x i16> %i.dm, splat (i16 2047)   ; 5 uses
  %i.do = extractelement <4 x i16> %i.dn, i64 0
  %i.dp = zext nneg i16 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !52
  %i.ds = extractelement <4 x i16> %i.dn, i64 1
  %i.dt = zext nneg i16 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.dt
  %i.dv = load float, ptr %i.du, align 4, !tbaa !52
  %i.dw = extractelement <4 x i16> %i.dn, i64 2
  %i.dx = zext nneg i16 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.dx
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !52
  %i.ea = extractelement <4 x i16> %i.dn, i64 3
  %i.eb = zext nneg i16 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !52
  store float %i.dr, ptr %.0123257, align 4, !tbaa !52
  %i.ee = getelementptr inbounds nuw i8, ptr %.0123257, i64 4
  store float %i.dv, ptr %i.ee, align 4, !tbaa !52
  %i.ef = getelementptr inbounds nuw i8, ptr %.0123257, i64 8
  store float %i.dz, ptr %i.ef, align 4, !tbaa !52
  %i.eg = getelementptr inbounds nuw i8, ptr %.0123257, i64 12
  store float %i.ed, ptr %i.eg, align 4, !tbaa !52
  br i1 %i.bc, label %.lr.ph.preheader.i, label %horizontalAccumulateF.exit

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.eh = zext nneg <4 x i16> %i.dn to <4 x i32>
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.1149.i = phi ptr [ %i.ej, %.lr.ph.i ], [ %.0122258, %.lr.ph.preheader.i ]
  %.1126.in144.i = phi i32 [ %.1126.i, %.lr.ph.i ], [ %i.o, %.lr.ph.preheader.i ] ; 2 uses
  %.1129143.i = phi ptr [ %i.ek, %.lr.ph.i ], [ %.0123257, %.lr.ph.preheader.i ] ; 4 uses
  %i.ei = phi <4 x i32> [ %i.en, %.lr.ph.i ], [ %i.eh, %.lr.ph.preheader.i ]
  %.1126.i = add nsw i32 %.1126.in144.i, -4
  %i.ej = getelementptr inbounds nuw i8, ptr %.1149.i, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.1129143.i, i64 16 ; 2 uses
  %i.el = load <4 x i16>, ptr %i.ej, align 2, !tbaa !59
  %i.em = zext <4 x i16> %i.el to <4 x i32>
  %i.en = add <4 x i32> %i.ei, %i.em              ; 5 uses
  %i.eo = extractelement <4 x i32> %i.en, i64 0
  %i.ep = and i32 %i.eo, 2047
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.eq
  %i.es = load float, ptr %i.er, align 4, !tbaa !52
  %i.et = extractelement <4 x i32> %i.en, i64 1
  %i.eu = and i32 %i.et, 2047
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ev
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !52
  %i.ey = extractelement <4 x i32> %i.en, i64 2
  %i.ez = and i32 %i.ey, 2047
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.fa
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !52
  %i.fd = extractelement <4 x i32> %i.en, i64 3
  %i.fe = and i32 %i.fd, 2047
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !52
  store float %i.es, ptr %i.ek, align 4, !tbaa !52
  %i.fi = getelementptr inbounds nuw i8, ptr %.1129143.i, i64 20
  store float %i.ex, ptr %i.fi, align 4, !tbaa !52
  %i.fj = getelementptr inbounds nuw i8, ptr %.1129143.i, i64 24
  store float %i.fc, ptr %i.fj, align 4, !tbaa !52
  %i.fk = getelementptr inbounds nuw i8, ptr %.1129143.i, i64 28
  store float %i.fh, ptr %i.fk, align 4, !tbaa !52
  %i.fl = icmp samesign ugt i32 %.1126.in144.i, 8
  br i1 %i.fl, label %.lr.ph.i, label %horizontalAccumulateF.exit

.preheader137.i:                                  ; preds = %bb.t, %.preheader137.i
  %.2130.i = phi ptr [ %i.ft, %.preheader137.i ], [ %.0123257, %bb.t ] ; 2 uses
  %.2.i = phi ptr [ %i.fs, %.preheader137.i ], [ %.0122258, %bb.t ] ; 2 uses
  %.0116.i = phi i32 [ %i.fm, %.preheader137.i ], [ %i.bm, %bb.t ] ; 2 uses
  %i.fm = add nsw i32 %.0116.i, -1
  %i.fn = load i16, ptr %.2.i, align 2, !tbaa !59
  %i.fo = and i16 %i.fn, 2047
  %i.fp = zext nneg i16 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !52
  store float %i.fr, ptr %.2130.i, align 4, !tbaa !52
  %i.fs = getelementptr inbounds nuw i8, ptr %.2.i, i64 2 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.2130.i, i64 4 ; 2 uses
  %i.fu = icmp samesign ugt i32 %.0116.i, 1
  br i1 %i.fu, label %.preheader137.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %.preheader137.i
  %.2127157.i = sub nsw i32 %i.o, %i.bm           ; 2 uses
  %i.fv = icmp sgt i32 %.2127157.i, 0
  br i1 %i.fv, label %.preheader.lr.ph.i, label %horizontalAccumulateF.exit

.preheader.lr.ph.i:                               ; preds = %.preheader135.i
  %i.fw = zext i16 %i.bl to i64
  br label %.preheader.i

.loopexit.i:                                      ; preds = %bb.w
  %.2127.i = sub nsw i32 %.2127160.i, %i.bm       ; 2 uses
  %i.fx = icmp sgt i32 %.2127.i, 0
  br i1 %i.fx, label %.preheader.i, label %horizontalAccumulateF.exit

.preheader.i:                                     ; preds = %.loopexit.i, %.preheader.lr.ph.i
  %.2127160.i = phi i32 [ %.2127157.i, %.preheader.lr.ph.i ], [ %.2127.i, %.loopexit.i ]
end_hunk_0
begin_hunk_1_@PixarLogDecode:bb.a
  %i.nm = add i32 %.0142171.i, %i.nl              ; 2 uses
  %i.nn = and i32 %i.nm, 2047
  %i.no = zext nneg i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.no
  %i.nq = load float, ptr %i.np, align 4, !tbaa !52
  %i.nr = getelementptr inbounds nuw i8, ptr %.0136174.i, i64 8
  %i.ns = load i16, ptr %i.nr, align 2, !tbaa !59
  %i.nt = zext i16 %i.ns to i32
  %i.nu = add i32 %.0140172.i, %i.nt              ; 2 uses
  %i.nv = and i32 %i.nu, 2047
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.nw
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !52
  %i.nz = getelementptr inbounds nuw i8, ptr %.0136174.i, i64 10
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !59
  %i.ob = zext i16 %i.oa to i32
  %i.oc = add i32 %.0138173.i, %i.ob              ; 2 uses
  %i.od = and i32 %i.oc, 2047
  %i.oe = zext nneg i32 %i.od to i64
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.oe
  %i.og = load float, ptr %i.of, align 4, !tbaa !52
  %i.oh = fmul float %i.og, 2.048000e+03          ; 2 uses
  %i.oi = insertelement <2 x float> poison, float %i.nq, i64 0
  %i.oj = insertelement <2 x float> %i.oi, float %i.ny, i64 1
  %i.ok = fmul <2 x float> %i.oj, splat (float 2.048000e+03) ; 2 uses
  %i.ol = fcmp olt <2 x float> %i.ok, splat (float 3.071000e+03)
  %i.om = select <2 x i1> %i.ol, <2 x float> %i.ok, <2 x float> splat (float 3.071000e+03)
  %i.on = fptoui <2 x float> %i.om to <2 x i16>
  store <2 x i16> %i.on, ptr %i.nj, align 2, !tbaa !59
  %i.oo = fcmp olt float %i.oh, 3.071000e+03
  %i.op = select i1 %i.oo, float %i.oh, float 3.071000e+03
  %i.oq = fptoui float %i.op to i16
  %i.or = getelementptr inbounds nuw i8, ptr %.0147169.i, i64 10
  store i16 %i.oq, ptr %i.or, align 2, !tbaa !59
  %i.os = icmp samesign ugt i32 %.0144.in170.i, 6
  br i1 %i.os, label %.lr.ph175.i, label %horizontalAccumulateF.exit

bb.af:                                            ; preds = %bb.ad
  %i.ot = load <4 x i16>, ptr %.0122258, align 2, !tbaa !59
  %i.ou = and <4 x i16> %i.ot, splat (i16 2047)   ; 5 uses
  %i.ov = extractelement <4 x i16> %i.ou, i64 0
  %i.ow = zext nneg i16 %i.ov to i64
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.ow
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !52
  %i.oz = extractelement <4 x i16> %i.ou, i64 1
  %i.pa = zext nneg i16 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.pa
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !52
  %i.pd = extractelement <4 x i16> %i.ou, i64 2
  %i.pe = zext nneg i16 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.pe
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !52
  %i.ph = extractelement <4 x i16> %i.ou, i64 3
  %i.pi = zext nneg i16 %i.ph to i64
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.pi
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !52
  %i.pl = insertelement <4 x float> poison, float %i.oy, i64 0
  %i.pm = insertelement <4 x float> %i.pl, float %i.pc, i64 1
  %i.pn = insertelement <4 x float> %i.pm, float %i.pg, i64 2
  %i.po = insertelement <4 x float> %i.pn, float %i.pk, i64 3
  %i.pp = fmul <4 x float> %i.po, splat (float 2.048000e+03) ; 2 uses
  %i.pq = fcmp olt <4 x float> %i.pp, splat (float 3.071000e+03)
  %i.pr = select <4 x i1> %i.pq, <4 x float> %i.pp, <4 x float> splat (float 3.071000e+03)
  %i.ps = fptoui <4 x float> %i.pr to <4 x i16>
  store <4 x i16> %i.ps, ptr %.0123257, align 2, !tbaa !59
  br i1 %i.bc, label %.lr.ph.preheader.i152, label %horizontalAccumulateF.exit

.lr.ph.preheader.i152:                            ; preds = %bb.af
  %i.pt = zext nneg <4 x i16> %i.ou to <4 x i32>
  br label %.lr.ph.i153

.lr.ph.i153:                                      ; preds = %.lr.ph.i153, %.lr.ph.preheader.i152
  %.1168.i = phi ptr [ %i.pv, %.lr.ph.i153 ], [ %.0122258, %.lr.ph.preheader.i152 ]
  %.1145.in163.i = phi i32 [ %.1145.i, %.lr.ph.i153 ], [ %i.o, %.lr.ph.preheader.i152 ] ; 2 uses
  %.1148162.i = phi ptr [ %i.pw, %.lr.ph.i153 ], [ %.0123257, %.lr.ph.preheader.i152 ]
  %i.pu = phi <4 x i32> [ %i.pz, %.lr.ph.i153 ], [ %i.pt, %.lr.ph.preheader.i152 ]
  %.1145.i = add nsw i32 %.1145.in163.i, -4
  %i.pv = getelementptr inbounds nuw i8, ptr %.1168.i, i64 8 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.1148162.i, i64 8 ; 2 uses
  %i.px = load <4 x i16>, ptr %i.pv, align 2, !tbaa !59
  %i.py = zext <4 x i16> %i.px to <4 x i32>
  %i.pz = add <4 x i32> %i.pu, %i.py              ; 5 uses
  %i.qa = extractelement <4 x i32> %i.pz, i64 0
  %i.qb = and i32 %i.qa, 2047
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.qc
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !52
  %i.qf = extractelement <4 x i32> %i.pz, i64 1
  %i.qg = and i32 %i.qf, 2047
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.qh
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !52
  %i.qk = extractelement <4 x i32> %i.pz, i64 2
  %i.ql = and i32 %i.qk, 2047
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.qm
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !52
  %i.qp = extractelement <4 x i32> %i.pz, i64 3
  %i.qq = and i32 %i.qp, 2047
  %i.qr = zext nneg i32 %i.qq to i64
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.qr
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !52
  %i.qu = insertelement <4 x float> poison, float %i.qe, i64 0
  %i.qv = insertelement <4 x float> %i.qu, float %i.qj, i64 1
  %i.qw = insertelement <4 x float> %i.qv, float %i.qo, i64 2
  %i.qx = insertelement <4 x float> %i.qw, float %i.qt, i64 3
  %i.qy = fmul <4 x float> %i.qx, splat (float 2.048000e+03) ; 2 uses
  %i.qz = fcmp olt <4 x float> %i.qy, splat (float 3.071000e+03)
  %i.ra = select <4 x i1> %i.qz, <4 x float> %i.qy, <4 x float> splat (float 3.071000e+03)
  %i.rb = fptoui <4 x float> %i.ra to <4 x i16>
  store <4 x i16> %i.rb, ptr %i.pw, align 2, !tbaa !59
  %i.rc = icmp samesign ugt i32 %.1145.in163.i, 8
  br i1 %i.rc, label %.lr.ph.i153, label %horizontalAccumulateF.exit

.preheader156.i:                                  ; preds = %bb.ad, %.preheader156.i
  %.2149.i = phi ptr [ %i.ro, %.preheader156.i ], [ %.0123257, %bb.ad ] ; 2 uses
  %.2.i154 = phi ptr [ %i.rn, %.preheader156.i ], [ %.0122258, %bb.ad ] ; 2 uses
  %.0135.i = phi i32 [ %i.rd, %.preheader156.i ], [ %i.mb, %bb.ad ] ; 2 uses
  %i.rd = add nsw i32 %.0135.i, -1
  %i.re = load i16, ptr %.2.i154, align 2, !tbaa !59
  %i.rf = and i16 %i.re, 2047
  %i.rg = zext nneg i16 %i.rf to i64
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.rg
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !52
  %i.rj = fmul float %i.ri, 2.048000e+03          ; 2 uses
  %i.rk = fcmp olt float %i.rj, 3.071000e+03
  %i.rl = select i1 %i.rk, float %i.rj, float 3.071000e+03
  %i.rm = fptoui float %i.rl to i16
  store i16 %i.rm, ptr %.2149.i, align 2, !tbaa !59
  %i.rn = getelementptr inbounds nuw i8, ptr %.2.i154, i64 2 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.2149.i, i64 2 ; 2 uses
  %i.rp = icmp samesign ugt i32 %.0135.i, 1
  br i1 %i.rp, label %.preheader156.i, label %.preheader154.i

.preheader154.i:                                  ; preds = %.preheader156.i
  %.2146176.i = sub nsw i32 %i.o, %i.mb           ; 2 uses
  %i.rq = icmp sgt i32 %.2146176.i, 0
  br i1 %i.rq, label %.preheader.lr.ph.i155, label %horizontalAccumulateF.exit

.preheader.lr.ph.i155:                            ; preds = %.preheader154.i
  %i.rr = zext i16 %i.ma to i64
  br label %.preheader.i156

.loopexit.i159:                                   ; preds = %bb.ag
  %.2146.i = sub nsw i32 %.2146179.i, %i.mb       ; 2 uses
  %i.rs = icmp sgt i32 %.2146.i, 0
  br i1 %i.rs, label %.preheader.i156, label %horizontalAccumulateF.exit

.preheader.i156:                                  ; preds = %.loopexit.i159, %.preheader.lr.ph.i155
  %.2146179.i = phi i32 [ %.2146176.i, %.preheader.lr.ph.i155 ], [ %.2146.i, %.loopexit.i159 ]
  %.3178.i = phi ptr [ %i.rn, %.preheader.lr.ph.i155 ], [ %i.sg, %.loopexit.i159 ]
  %.3150177.i = phi ptr [ %i.ro, %.preheader.lr.ph.i155 ], [ %i.sh, %.loopexit.i159 ]
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.preheader.i156
  %.4151.i = phi ptr [ %i.sh, %bb.ag ], [ %.3150177.i, %.preheader.i156 ] ; 2 uses
  %.4.i157 = phi ptr [ %i.sg, %bb.ag ], [ %.3178.i, %.preheader.i156 ] ; 3 uses
  %.0.i158 = phi i32 [ %i.rt, %bb.ag ], [ %i.mb, %.preheader.i156 ] ; 2 uses
  %i.rt = add nsw i32 %.0.i158, -1
  %i.ru = load i16, ptr %.4.i157, align 2, !tbaa !59
  %i.rv = getelementptr inbounds nuw [2 x i8], ptr %.4.i157, i64 %i.rr ; 2 uses
  %i.rw = load i16, ptr %i.rv, align 2, !tbaa !59
  %i.rx = add i16 %i.rw, %i.ru                    ; 2 uses
  store i16 %i.rx, ptr %i.rv, align 2, !tbaa !59
  %i.ry = and i16 %i.rx, 2047
  %i.rz = zext nneg i16 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.rz
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !52
  %i.sc = fmul float %i.sb, 2.048000e+03          ; 2 uses
  %i.sd = fcmp olt float %i.sc, 3.071000e+03
  %i.se = select i1 %i.sd, float %i.sc, float 3.071000e+03
  %i.sf = fptoui float %i.se to i16
  store i16 %i.sf, ptr %.4151.i, align 2, !tbaa !59
  %i.sg = getelementptr inbounds nuw i8, ptr %.4.i157, i64 2 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.4151.i, i64 2 ; 2 uses
  %i.si = icmp sgt i32 %.0.i158, 1
  br i1 %i.si, label %bb.ag, label %.loopexit.i159

bb.ah:                                            ; preds = %bb.r
  %i.sj = load i16, ptr %i.j, align 8, !tbaa !79  ; 4 uses
  %i.sk = zext i16 %i.sj to i32                   ; 15 uses
  %.not.i160 = icmp slt i32 %i.o, %i.sk
  br i1 %.not.i160, label %horizontalAccumulateF.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  switch i16 %i.sj, label %iter.check [
    i16 3, label %bb.aj
    i16 4, label %bb.ak
  ]

iter.check:                                       ; preds = %bb.ai
  %i.sl = icmp ne i16 %i.sj, 0
  %umin.neg = sext i1 %i.sl to i32
  %i.sm = add nsw i32 %umin.neg, %i.sk            ; 3 uses
  %i.sn = zext i32 %i.sm to i64
  %i.so = add nuw nsw i64 %i.sn, 1                ; 5 uses
  %min.iters.check403 = icmp ult i32 %i.sm, 3
  br i1 %min.iters.check403, label %.preheader107.i.preheader, label %vector.memcheck400

vector.memcheck400:                               ; preds = %iter.check
  %i.sp = add i64 %4, %.0123257401
  %i.sq = add i64 %i.sp, -1
  %diff.check = icmp ult i64 %i.sq, 31
  br i1 %diff.check, label %.preheader107.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck400
  %min.iters.check404 = icmp ult i32 %i.sm, 15
  br i1 %min.iters.check404, label %vec.epilog.ph, label %vector.ph405

vector.ph405:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf406 = and i64 %i.so, 12
  %n.vec407 = and i64 %i.so, 8589934576           ; 5 uses
  %i.sr = shl nuw nsw i64 %n.vec407, 1            ; 2 uses
  %i.ss = getelementptr i8, ptr %.0123257, i64 %i.sr ; 2 uses
  %i.st = getelementptr i8, ptr %.0122258, i64 %i.sr ; 2 uses
  %i.su = trunc i64 %n.vec407 to i32
  %i.sv = sub i32 %i.sk, %i.su
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph405
  %index409 = phi i64 [ 0, %vector.ph405 ], [ %index.next414, %vector.body408 ] ; 2 uses
  %i.sw = shl i64 %index409, 1                    ; 2 uses
  %next.gep410 = getelementptr i8, ptr %.0123257, i64 %i.sw ; 2 uses
  %next.gep411 = getelementptr i8, ptr %.0122258, i64 %i.sw ; 2 uses
  %i.sx = getelementptr i8, ptr %next.gep411, i64 16
  %wide.load412 = load <8 x i16>, ptr %next.gep411, align 2, !tbaa !59
  %wide.load413 = load <8 x i16>, ptr %i.sx, align 2, !tbaa !59
  %i.sy = and <8 x i16> %wide.load412, splat (i16 2047)
  %i.sz = and <8 x i16> %wide.load413, splat (i16 2047)
  %i.ta = getelementptr i8, ptr %next.gep410, i64 16
  store <8 x i16> %i.sy, ptr %next.gep410, align 2, !tbaa !59
  store <8 x i16> %i.sz, ptr %i.ta, align 2, !tbaa !59
  %index.next414 = add nuw i64 %index409, 16      ; 2 uses
  %i.tb = icmp eq i64 %index.next414, %n.vec407
  br i1 %i.tb, label %middle.block415, label %vector.body408, !llvm.loop !95

middle.block415:                                  ; preds = %vector.body408
  %cmp.n416 = icmp eq i64 %i.so, %n.vec407
  br i1 %cmp.n416, label %.preheader105.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block415
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf406, 0
  br i1 %min.epilog.iters.check, label %.preheader107.i.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec407, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec421 = and i64 %i.so, 8589934588           ; 4 uses
  %i.tc = shl nuw nsw i64 %n.vec421, 1            ; 2 uses
  %i.td = getelementptr i8, ptr %.0123257, i64 %i.tc ; 2 uses
  %i.te = getelementptr i8, ptr %.0122258, i64 %i.tc ; 2 uses
  %i.tf = trunc i64 %n.vec421 to i32
  %i.tg = sub i32 %i.sk, %i.tf
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index422 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next426, %vec.epilog.vector.body ] ; 2 uses
  %i.th = shl i64 %index422, 1                    ; 2 uses
  %next.gep423 = getelementptr i8, ptr %.0123257, i64 %i.th
  %next.gep424 = getelementptr i8, ptr %.0122258, i64 %i.th
  %wide.load425 = load <4 x i16>, ptr %next.gep424, align 2, !tbaa !59
  %i.ti = and <4 x i16> %wide.load425, splat (i16 2047)
  store <4 x i16> %i.ti, ptr %next.gep423, align 2, !tbaa !59
  %index.next426 = add nuw i64 %index422, 4       ; 2 uses
  %i.tj = icmp eq i64 %index.next426, %n.vec421
  br i1 %i.tj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !97

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n427 = icmp eq i64 %i.so, %n.vec421
  br i1 %cmp.n427, label %.preheader105.i, label %.preheader107.i.preheader

.preheader107.i.preheader:                        ; preds = %vector.memcheck400, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.297.i.ph = phi ptr [ %.0123257, %iter.check ], [ %.0123257, %vector.memcheck400 ], [ %i.ss, %vec.epilog.iter.check ], [ %i.td, %vec.epilog.middle.block ]
  %.2.i163.ph = phi ptr [ %.0122258, %iter.check ], [ %.0122258, %vector.memcheck400 ], [ %i.st, %vec.epilog.iter.check ], [ %i.te, %vec.epilog.middle.block ]
  %.086.i.ph = phi i32 [ %i.sk, %iter.check ], [ %i.sk, %vector.memcheck400 ], [ %i.sv, %vec.epilog.iter.check ], [ %i.tg, %vec.epilog.middle.block ]
  br label %.preheader107.i

bb.aj:                                            ; preds = %bb.ai
  %i.tk = load i16, ptr %.0122258, align 2, !tbaa !59
  store i16 %i.tk, ptr %.0123257, align 2, !tbaa !59
  %i.tl = getelementptr inbounds nuw i8, ptr %.0122258, i64 2 ; 2 uses
  %i.tm = load i16, ptr %i.tl, align 2, !tbaa !59
  %i.tn = getelementptr inbounds nuw i8, ptr %.0123257, i64 2
  store i16 %i.tm, ptr %i.tn, align 2, !tbaa !59
  %i.to = getelementptr inbounds nuw i8, ptr %.0122258, i64 4
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !59 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.0123257, i64 4
  store i16 %i.tp, ptr %i.tq, align 2, !tbaa !59
  br i1 %i.bd, label %.lr.ph126.preheader.i, label %horizontalAccumulateF.exit

.lr.ph126.preheader.i:                            ; preds = %bb.aj
  %i.tr = load i16, ptr %i.tl, align 2, !tbaa !59
  %i.ts = load i16, ptr %.0122258, align 2, !tbaa !59
  br label %.lr.ph126.i

.lr.ph126.i:                                      ; preds = %.lr.ph126.i, %.lr.ph126.preheader.i
  %.087125.i = phi ptr [ %i.tt, %.lr.ph126.i ], [ %.0122258, %.lr.ph126.preheader.i ] ; 3 uses
  %.089124.i = phi i16 [ %i.uf, %.lr.ph126.i ], [ %i.tp, %.lr.ph126.preheader.i ]
  %.091123.i = phi i16 [ %i.ua, %.lr.ph126.i ], [ %i.tr, %.lr.ph126.preheader.i ]
  %.093122.i = phi i16 [ %i.tw, %.lr.ph126.i ], [ %i.ts, %.lr.ph126.preheader.i ]
  %.095121.i = phi ptr [ %i.tu, %.lr.ph126.i ], [ %.0123257, %.lr.ph126.preheader.i ] ; 3 uses
  %.0100.in120.i = phi i32 [ %.0100.i, %.lr.ph126.i ], [ %i.o, %.lr.ph126.preheader.i ] ; 2 uses
  %.0100.i = add nsw i32 %.0100.in120.i, -3
  %i.tt = getelementptr inbounds nuw i8, ptr %.087125.i, i64 6 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.095121.i, i64 6 ; 2 uses
  %i.tv = load i16, ptr %i.tt, align 2, !tbaa !59
  %i.tw = add i16 %i.tv, %.093122.i               ; 2 uses
  %i.tx = and i16 %i.tw, 2047
  store i16 %i.tx, ptr %i.tu, align 2, !tbaa !59
  %i.ty = getelementptr inbounds nuw i8, ptr %.087125.i, i64 8
  %i.tz = load i16, ptr %i.ty, align 2, !tbaa !59
  %i.ua = add i16 %i.tz, %.091123.i               ; 2 uses
  %i.ub = and i16 %i.ua, 2047
  %i.uc = getelementptr inbounds nuw i8, ptr %.095121.i, i64 8
  store i16 %i.ub, ptr %i.uc, align 2, !tbaa !59
  %i.ud = getelementptr inbounds nuw i8, ptr %.087125.i, i64 10
  %i.ue = load i16, ptr %i.ud, align 2, !tbaa !59
  %i.uf = add i16 %i.ue, %.089124.i               ; 2 uses
  %i.ug = and i16 %i.uf, 2047
  %i.uh = getelementptr inbounds nuw i8, ptr %.095121.i, i64 10
  store i16 %i.ug, ptr %i.uh, align 2, !tbaa !59
  %i.ui = icmp samesign ugt i32 %.0100.in120.i, 6
  br i1 %i.ui, label %.lr.ph126.i, label %horizontalAccumulateF.exit

bb.ak:                                            ; preds = %bb.ai
  %i.uj = load i16, ptr %.0122258, align 2, !tbaa !59
  store i16 %i.uj, ptr %.0123257, align 2, !tbaa !59
  %i.uk = getelementptr inbounds nuw i8, ptr %.0122258, i64 2 ; 2 uses
  %i.ul = load i16, ptr %i.uk, align 2, !tbaa !59
  %i.um = getelementptr inbounds nuw i8, ptr %.0123257, i64 2
  store i16 %i.ul, ptr %i.um, align 2, !tbaa !59
  %i.un = getelementptr inbounds nuw i8, ptr %.0122258, i64 4 ; 2 uses
  %i.uo = load i16, ptr %i.un, align 2, !tbaa !59
  %i.up = getelementptr inbounds nuw i8, ptr %.0123257, i64 4
  store i16 %i.uo, ptr %i.up, align 2, !tbaa !59
  %i.uq = getelementptr inbounds nuw i8, ptr %.0122258, i64 6
  %i.ur = load i16, ptr %i.uq, align 2, !tbaa !59 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.0123257, i64 6
  store i16 %i.ur, ptr %i.us, align 2, !tbaa !59
  br i1 %i.bc, label %.lr.ph.preheader.i161, label %horizontalAccumulateF.exit

.lr.ph.preheader.i161:                            ; preds = %bb.ak
  %i.ut = load i16, ptr %i.un, align 2, !tbaa !59
  %i.uu = load i16, ptr %i.uk, align 2, !tbaa !59
  %i.uv = load i16, ptr %.0122258, align 2, !tbaa !59
  br label %.lr.ph.i162

.lr.ph.i162:                                      ; preds = %.lr.ph.i162, %.lr.ph.preheader.i161
  %.1119.i = phi ptr [ %i.uw, %.lr.ph.i162 ], [ %.0122258, %.lr.ph.preheader.i161 ] ; 4 uses
  %.088118.i = phi i16 [ %i.vn, %.lr.ph.i162 ], [ %i.ur, %.lr.ph.preheader.i161 ]
  %.190117.i = phi i16 [ %i.vi, %.lr.ph.i162 ], [ %i.ut, %.lr.ph.preheader.i161 ]
  %.192116.i = phi i16 [ %i.vd, %.lr.ph.i162 ], [ %i.uu, %.lr.ph.preheader.i161 ]
  %.194115.i = phi i16 [ %i.uz, %.lr.ph.i162 ], [ %i.uv, %.lr.ph.preheader.i161 ]
  %.196114.i = phi ptr [ %i.ux, %.lr.ph.i162 ], [ %.0123257, %.lr.ph.preheader.i161 ] ; 4 uses
  %.1101.in113.i = phi i32 [ %.1101.i, %.lr.ph.i162 ], [ %i.o, %.lr.ph.preheader.i161 ] ; 2 uses
  %.1101.i = add nsw i32 %.1101.in113.i, -4
  %i.uw = getelementptr inbounds nuw i8, ptr %.1119.i, i64 8 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.196114.i, i64 8 ; 2 uses
  %i.uy = load i16, ptr %i.uw, align 2, !tbaa !59
  %i.uz = add i16 %i.uy, %.194115.i               ; 2 uses
  %i.va = and i16 %i.uz, 2047
  store i16 %i.va, ptr %i.ux, align 2, !tbaa !59
  %i.vb = getelementptr inbounds nuw i8, ptr %.1119.i, i64 10
  %i.vc = load i16, ptr %i.vb, align 2, !tbaa !59
  %i.vd = add i16 %i.vc, %.192116.i               ; 2 uses
  %i.ve = and i16 %i.vd, 2047
  %i.vf = getelementptr inbounds nuw i8, ptr %.196114.i, i64 10
  store i16 %i.ve, ptr %i.vf, align 2, !tbaa !59
  %i.vg = getelementptr inbounds nuw i8, ptr %.1119.i, i64 12
  %i.vh = load i16, ptr %i.vg, align 2, !tbaa !59
  %i.vi = add i16 %i.vh, %.190117.i               ; 2 uses
  %i.vj = and i16 %i.vi, 2047
  %i.vk = getelementptr inbounds nuw i8, ptr %.196114.i, i64 12
  store i16 %i.vj, ptr %i.vk, align 2, !tbaa !59
  %i.vl = getelementptr inbounds nuw i8, ptr %.1119.i, i64 14
  %i.vm = load i16, ptr %i.vl, align 2, !tbaa !59
  %i.vn = add i16 %i.vm, %.088118.i               ; 2 uses
  %i.vo = and i16 %i.vn, 2047
  %i.vp = getelementptr inbounds nuw i8, ptr %.196114.i, i64 14
  store i16 %i.vo, ptr %i.vp, align 2, !tbaa !59
  %i.vq = icmp samesign ugt i32 %.1101.in113.i, 8
  br i1 %i.vq, label %.lr.ph.i162, label %horizontalAccumulateF.exit

.preheader107.i:                                  ; preds = %.preheader107.i.preheader, %.preheader107.i
  %.297.i = phi ptr [ %i.vv, %.preheader107.i ], [ %.297.i.ph, %.preheader107.i.preheader ] ; 2 uses
  %.2.i163 = phi ptr [ %i.vu, %.preheader107.i ], [ %.2.i163.ph, %.preheader107.i.preheader ] ; 2 uses
  %.086.i = phi i32 [ %i.vr, %.preheader107.i ], [ %.086.i.ph, %.preheader107.i.preheader ] ; 2 uses
  %i.vr = add nsw i32 %.086.i, -1
  %i.vs = load i16, ptr %.2.i163, align 2, !tbaa !59
  %i.vt = and i16 %i.vs, 2047
  store i16 %i.vt, ptr %.297.i, align 2, !tbaa !59
  %i.vu = getelementptr inbounds nuw i8, ptr %.2.i163, i64 2 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.297.i, i64 2 ; 2 uses
  %i.vw = icmp samesign ugt i32 %.086.i, 1
  br i1 %i.vw, label %.preheader107.i, label %.preheader105.i, !llvm.loop !98

.preheader105.i:                                  ; preds = %.preheader107.i, %vec.epilog.middle.block, %middle.block415
  %.lcssa367 = phi ptr [ %i.te, %vec.epilog.middle.block ], [ %i.st, %middle.block415 ], [ %i.vu, %.preheader107.i ]
  %.lcssa366 = phi ptr [ %i.td, %vec.epilog.middle.block ], [ %i.ss, %middle.block415 ], [ %i.vv, %.preheader107.i ]
  %.2102127.i = sub nsw i32 %i.o, %i.sk           ; 2 uses
  %i.vx = icmp sgt i32 %.2102127.i, 0
  br i1 %i.vx, label %.preheader.lr.ph.i164, label %horizontalAccumulateF.exit

.preheader.lr.ph.i164:                            ; preds = %.preheader105.i
  %i.vy = zext i16 %i.sj to i64                   ; 3 uses
  %i.vz = shl nuw nsw i64 %i.vy, 1                ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.sk, i32 1)
  %i.wa = sub nsw i32 %i.sk, %smin
  %i.wb = shl nuw nsw i32 %i.wa, 1
  %i.wc = zext nneg i32 %i.wb to i64              ; 3 uses
  %i.wd = tail call i32 @llvm.smin.i32(i32 %i.sk, i32 1)
  %i.we = sub nsw i32 %i.sk, %i.wd                ; 2 uses
  %narrow = add nuw nsw i32 %i.we, 1
  %i.wf = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check = icmp ult i32 %i.we, 7
  %n.vec = and i64 %i.wf, 2147483640              ; 4 uses
  %i.wg = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.wh = trunc nuw nsw i64 %n.vec to i32
  %i.wi = sub nsw i32 %i.sk, %i.wh
  %cmp.n = icmp eq i64 %n.vec, %i.wf
  br label %.preheader.i165

.loopexit.i168:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa369 = phi ptr [ %i.wl, %middle.block ], [ %i.wy, %scalar.ph ]
  %.lcssa368 = phi ptr [ %i.wk, %middle.block ], [ %i.wz, %scalar.ph ]
  %.2102.i = sub nsw i32 %.2102130.i, %i.sk       ; 2 uses
  %i.wj = icmp sgt i32 %.2102.i, 0
  br i1 %i.wj, label %.preheader.i165, label %horizontalAccumulateF.exit

.preheader.i165:                                  ; preds = %.loopexit.i168, %.preheader.lr.ph.i164
  %.2102130.i = phi i32 [ %.2102127.i, %.preheader.lr.ph.i164 ], [ %.2102.i, %.loopexit.i168 ]
  %.3129.i = phi ptr [ %.lcssa367, %.preheader.lr.ph.i164 ], [ %.lcssa369, %.loopexit.i168 ] ; 8 uses
  %.398128.i = phi ptr [ %.lcssa366, %.preheader.lr.ph.i164 ], [ %.lcssa368, %.loopexit.i168 ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i165
  %scevgep = getelementptr nuw i8, ptr %.3129.i, i64 %i.vz ; 2 uses
  %scevgep383 = getelementptr i8, ptr %.3129.i, i64 2 ; 2 uses
  %5 = getelementptr i8, ptr %scevgep383, i64 %i.vz
  %scevgep384 = getelementptr i8, ptr %5, i64 %i.wc ; 2 uses
  %scevgep385 = getelementptr i8, ptr %.398128.i, i64 2
  %scevgep386 = getelementptr i8, ptr %scevgep385, i64 %i.wc ; 2 uses
  %scevgep387 = getelementptr i8, ptr %scevgep383, i64 %i.wc ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep386
  %bound1 = icmp ult ptr %.398128.i, %scevgep384
  %found.conflict = and i1 %bound0, %bound1
  %bound0388 = icmp ult ptr %scevgep, %scevgep387
  %bound1389 = icmp ult ptr %.3129.i, %scevgep384
  %found.conflict390 = and i1 %bound0388, %bound1389
  %conflict.rdx = or i1 %found.conflict, %found.conflict390
  %bound0391 = icmp ult ptr %.398128.i, %scevgep387
  %bound1392 = icmp ult ptr %.3129.i, %scevgep386
  %found.conflict393 = and i1 %bound0391, %bound1392
  %conflict.rdx394 = or i1 %conflict.rdx, %found.conflict393
  br i1 %conflict.rdx394, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.wk = getelementptr i8, ptr %.398128.i, i64 %i.wg ; 2 uses
  %i.wl = getelementptr i8, ptr %.3129.i, i64 %i.wg ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.wm = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.398128.i, i64 %i.wm
  %next.gep395 = getelementptr i8, ptr %.3129.i, i64 %i.wm ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep395, align 2, !tbaa !59, !alias.scope !99 ; 2 uses
  %i.wn = getelementptr inbounds nuw [2 x i8], ptr %next.gep395, i64 %i.vy ; 2 uses
  %wide.load396 = load <8 x i16>, ptr %i.wn, align 2, !tbaa !59, !alias.scope !102, !noalias !104
  %i.wo = add <8 x i16> %wide.load396, %wide.load
  store <8 x i16> %i.wo, ptr %i.wn, align 2, !tbaa !59, !alias.scope !102, !noalias !104
  %i.wp = and <8 x i16> %wide.load, splat (i16 2047)
  store <8 x i16> %i.wp, ptr %next.gep, align 2, !tbaa !59, !alias.scope !106, !noalias !99
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.wq = icmp eq i64 %index.next, %n.vec
  br i1 %i.wq, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i168, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.i165, %middle.block
  %.499.i.ph = phi ptr [ %.398128.i, %vector.memcheck ], [ %.398128.i, %.preheader.i165 ], [ %i.wk, %middle.block ]
  %.4.i166.ph = phi ptr [ %.3129.i, %vector.memcheck ], [ %.3129.i, %.preheader.i165 ], [ %i.wl, %middle.block ]
  %.0.i167.ph = phi i32 [ %i.sk, %vector.memcheck ], [ %i.sk, %.preheader.i165 ], [ %i.wi, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.499.i = phi ptr [ %i.wz, %scalar.ph ], [ %.499.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.4.i166 = phi ptr [ %i.wy, %scalar.ph ], [ %.4.i166.ph, %scalar.ph.preheader ] ; 4 uses
  %.0.i167 = phi i32 [ %i.wr, %scalar.ph ], [ %.0.i167.ph, %scalar.ph.preheader ] ; 2 uses
  %i.wr = add nsw i32 %.0.i167, -1
  %i.ws = load i16, ptr %.4.i166, align 2, !tbaa !59
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %.4.i166, i64 %i.vy ; 2 uses
  %i.wu = load i16, ptr %i.wt, align 2, !tbaa !59
  %i.wv = add i16 %i.wu, %i.ws
  store i16 %i.wv, ptr %i.wt, align 2, !tbaa !59
  %i.ww = load i16, ptr %.4.i166, align 2, !tbaa !59
  %i.wx = and i16 %i.ww, 2047
  store i16 %i.wx, ptr %.499.i, align 2, !tbaa !59
  %i.wy = getelementptr inbounds nuw i8, ptr %.4.i166, i64 2 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.499.i, i64 2 ; 2 uses
  %i.xa = icmp sgt i32 %.0.i167, 1
  br i1 %i.xa, label %scalar.ph, label %.loopexit.i168, !llvm.loop !108

bb.al:                                            ; preds = %bb.r
  %i.xb = load i16, ptr %i.j, align 8, !tbaa !79  ; 3 uses
  %i.xc = zext i16 %i.xb to i32                   ; 5 uses
  %i.xd = load ptr, ptr %i.bb, align 8, !tbaa !70 ; 16 uses
  %.not.i169 = icmp slt i32 %i.o, %i.xc
  br i1 %.not.i169, label %horizontalAccumulateF.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  switch i16 %i.xb, label %.preheader123.i189 [
    i16 3, label %bb.an
    i16 4, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.xe = load i16, ptr %.0122258, align 2, !tbaa !59
  %i.xf = and i16 %i.xe, 2047                     ; 2 uses
  %i.xg = zext nneg i16 %i.xf to i64
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.xg
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !64
  store i8 %i.xi, ptr %.0123257, align 1, !tbaa !64
  %i.xj = getelementptr inbounds nuw i8, ptr %.0122258, i64 2
  %i.xk = load i16, ptr %i.xj, align 2, !tbaa !59
  %i.xl = and i16 %i.xk, 2047                     ; 2 uses
  %i.xm = zext nneg i16 %i.xl to i64
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.xm
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !64
  %i.xp = getelementptr inbounds nuw i8, ptr %.0123257, i64 1
  store i8 %i.xo, ptr %i.xp, align 1, !tbaa !64
  %i.xq = getelementptr inbounds nuw i8, ptr %.0122258, i64 4
  %i.xr = load i16, ptr %i.xq, align 2, !tbaa !59
  %i.xs = and i16 %i.xr, 2047                     ; 2 uses
  %i.xt = zext nneg i16 %i.xs to i64
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.xt
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !64
  %i.xw = getelementptr inbounds nuw i8, ptr %.0123257, i64 2
  store i8 %i.xv, ptr %i.xw, align 1, !tbaa !64
  br i1 %i.bd, label %.lr.ph142.preheader.i180, label %horizontalAccumulateF.exit

.lr.ph142.preheader.i180:                         ; preds = %bb.an
  %i.xx = zext nneg i16 %i.xs to i32
  %i.xy = zext nneg i16 %i.xl to i32
  %i.xz = zext nneg i16 %i.xf to i32
  br label %.lr.ph142.i181

.lr.ph142.i181:                                   ; preds = %.lr.ph142.i181, %.lr.ph142.preheader.i180
  %.0103141.i182 = phi ptr [ %i.ya, %.lr.ph142.i181 ], [ %.0122258, %.lr.ph142.preheader.i180 ] ; 3 uses
  %.0105140.i183 = phi i32 [ %i.yv, %.lr.ph142.i181 ], [ %i.xx, %.lr.ph142.preheader.i180 ]
  %.0107139.i184 = phi i32 [ %i.ym, %.lr.ph142.i181 ], [ %i.xy, %.lr.ph142.preheader.i180 ]
  %.0109138.i185 = phi i32 [ %i.ye, %.lr.ph142.i181 ], [ %i.xz, %.lr.ph142.preheader.i180 ]
  %.0111.in137.i186 = phi i32 [ %.0111.i188, %.lr.ph142.i181 ], [ %i.o, %.lr.ph142.preheader.i180 ] ; 2 uses
  %.0114136.i187 = phi ptr [ %i.yb, %.lr.ph142.i181 ], [ %.0123257, %.lr.ph142.preheader.i180 ] ; 3 uses
  %.0111.i188 = add nsw i32 %.0111.in137.i186, -3
  %i.ya = getelementptr inbounds nuw i8, ptr %.0103141.i182, i64 6 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %.0114136.i187, i64 3 ; 2 uses
  %i.yc = load i16, ptr %i.ya, align 2, !tbaa !59
  %i.yd = zext i16 %i.yc to i32
  %i.ye = add i32 %.0109138.i185, %i.yd           ; 2 uses
  %i.yf = and i32 %i.ye, 2047
  %i.yg = zext nneg i32 %i.yf to i64
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.yg
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !64
  store i8 %i.yi, ptr %i.yb, align 1, !tbaa !64
  %i.yj = getelementptr inbounds nuw i8, ptr %.0103141.i182, i64 8
  %i.yk = load i16, ptr %i.yj, align 2, !tbaa !59
  %i.yl = zext i16 %i.yk to i32
  %i.ym = add i32 %.0107139.i184, %i.yl           ; 2 uses
  %i.yn = and i32 %i.ym, 2047
  %i.yo = zext nneg i32 %i.yn to i64
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.yo
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !64
  %i.yr = getelementptr inbounds nuw i8, ptr %.0114136.i187, i64 4
  store i8 %i.yq, ptr %i.yr, align 1, !tbaa !64
  %i.ys = getelementptr inbounds nuw i8, ptr %.0103141.i182, i64 10
  %i.yt = load i16, ptr %i.ys, align 2, !tbaa !59
  %i.yu = zext i16 %i.yt to i32
  %i.yv = add i32 %.0105140.i183, %i.yu           ; 2 uses
  %i.yw = and i32 %i.yv, 2047
  %i.yx = zext nneg i32 %i.yw to i64
  %i.yy = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.yx
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !64
  %i.za = getelementptr inbounds nuw i8, ptr %.0114136.i187, i64 5
  store i8 %i.yz, ptr %i.za, align 1, !tbaa !64
  %i.zb = icmp samesign ugt i32 %.0111.in137.i186, 6
  br i1 %i.zb, label %.lr.ph142.i181, label %horizontalAccumulateF.exit

bb.ao:                                            ; preds = %bb.am
  %i.zc = load i16, ptr %.0122258, align 2, !tbaa !59
  %i.zd = and i16 %i.zc, 2047                     ; 2 uses
  %i.ze = zext nneg i16 %i.zd to i64
  %i.zf = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.ze
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !64
  store i8 %i.zg, ptr %.0123257, align 1, !tbaa !64
  %i.zh = getelementptr inbounds nuw i8, ptr %.0122258, i64 2
  %i.zi = load i16, ptr %i.zh, align 2, !tbaa !59
  %i.zj = and i16 %i.zi, 2047                     ; 2 uses
  %i.zk = zext nneg i16 %i.zj to i64
  %i.zl = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.zk
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !64
  %i.zn = getelementptr inbounds nuw i8, ptr %.0123257, i64 1
  store i8 %i.zm, ptr %i.zn, align 1, !tbaa !64
  %i.zo = getelementptr inbounds nuw i8, ptr %.0122258, i64 4
  %i.zp = load i16, ptr %i.zo, align 2, !tbaa !59
  %i.zq = and i16 %i.zp, 2047                     ; 2 uses
  %i.zr = zext nneg i16 %i.zq to i64
  %i.zs = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.zr
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !64
  %i.zu = getelementptr inbounds nuw i8, ptr %.0123257, i64 2
  store i8 %i.zt, ptr %i.zu, align 1, !tbaa !64
  %i.zv = getelementptr inbounds nuw i8, ptr %.0122258, i64 6
  %i.zw = load i16, ptr %i.zv, align 2, !tbaa !59
  %i.zx = and i16 %i.zw, 2047                     ; 2 uses
  %i.zy = zext nneg i16 %i.zx to i64
  %i.zz = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.zy
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !64
  %i.aab = getelementptr inbounds nuw i8, ptr %.0123257, i64 3
  store i8 %i.aaa, ptr %i.aab, align 1, !tbaa !64
  br i1 %i.bc, label %.lr.ph.preheader.i170, label %horizontalAccumulateF.exit

.lr.ph.preheader.i170:                            ; preds = %bb.ao
  %i.aac = zext nneg i16 %i.zx to i32
  %i.aad = zext nneg i16 %i.zq to i32
  %i.aae = zext nneg i16 %i.zj to i32
  %i.aaf = zext nneg i16 %i.zd to i32
  br label %.lr.ph.i171

.lr.ph.i171:                                      ; preds = %.lr.ph.i171, %.lr.ph.preheader.i170
  %.1135.i172 = phi ptr [ %i.aag, %.lr.ph.i171 ], [ %.0122258, %.lr.ph.preheader.i170 ] ; 4 uses
  %.0104134.i173 = phi i32 [ %i.abk, %.lr.ph.i171 ], [ %i.aac, %.lr.ph.preheader.i170 ]
  %.1106133.i174 = phi i32 [ %i.abb, %.lr.ph.i171 ], [ %i.aad, %.lr.ph.preheader.i170 ]
  %.1108132.i175 = phi i32 [ %i.aas, %.lr.ph.i171 ], [ %i.aae, %.lr.ph.preheader.i170 ]
  %.1110131.i176 = phi i32 [ %i.aak, %.lr.ph.i171 ], [ %i.aaf, %.lr.ph.preheader.i170 ]
  %.1112.in130.i177 = phi i32 [ %.1112.i179, %.lr.ph.i171 ], [ %i.o, %.lr.ph.preheader.i170 ] ; 2 uses
  %.1115129.i178 = phi ptr [ %i.aah, %.lr.ph.i171 ], [ %.0123257, %.lr.ph.preheader.i170 ] ; 4 uses
  %.1112.i179 = add nsw i32 %.1112.in130.i177, -4
  %i.aag = getelementptr inbounds nuw i8, ptr %.1135.i172, i64 8 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.1115129.i178, i64 4 ; 2 uses
  %i.aai = load i16, ptr %i.aag, align 2, !tbaa !59
  %i.aaj = zext i16 %i.aai to i32
  %i.aak = add i32 %.1110131.i176, %i.aaj         ; 2 uses
  %i.aal = and i32 %i.aak, 2047
  %i.aam = zext nneg i32 %i.aal to i64
  %i.aan = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.aam
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !64
  store i8 %i.aao, ptr %i.aah, align 1, !tbaa !64
  %i.aap = getelementptr inbounds nuw i8, ptr %.1135.i172, i64 10
  %i.aaq = load i16, ptr %i.aap, align 2, !tbaa !59
  %i.aar = zext i16 %i.aaq to i32
  %i.aas = add i32 %.1108132.i175, %i.aar         ; 2 uses
  %i.aat = and i32 %i.aas, 2047
  %i.aau = zext nneg i32 %i.aat to i64
  %i.aav = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.aau
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !64
  %i.aax = getelementptr inbounds nuw i8, ptr %.1115129.i178, i64 5
  store i8 %i.aaw, ptr %i.aax, align 1, !tbaa !64
  %i.aay = getelementptr inbounds nuw i8, ptr %.1135.i172, i64 12
  %i.aaz = load i16, ptr %i.aay, align 2, !tbaa !59
  %i.aba = zext i16 %i.aaz to i32
  %i.abb = add i32 %.1106133.i174, %i.aba         ; 2 uses
  %i.abc = and i32 %i.abb, 2047
  %i.abd = zext nneg i32 %i.abc to i64
  %i.abe = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.abd
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !64
  %i.abg = getelementptr inbounds nuw i8, ptr %.1115129.i178, i64 6
  store i8 %i.abf, ptr %i.abg, align 1, !tbaa !64
  %i.abh = getelementptr inbounds nuw i8, ptr %.1135.i172, i64 14
  %i.abi = load i16, ptr %i.abh, align 2, !tbaa !59
  %i.abj = zext i16 %i.abi to i32
  %i.abk = add i32 %.0104134.i173, %i.abj         ; 2 uses
  %i.abl = and i32 %i.abk, 2047
  %i.abm = zext nneg i32 %i.abl to i64
  %i.abn = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.abm
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !64
  %i.abp = getelementptr inbounds nuw i8, ptr %.1115129.i178, i64 7
  store i8 %i.abo, ptr %i.abp, align 1, !tbaa !64
  %i.abq = icmp samesign ugt i32 %.1112.in130.i177, 8
  br i1 %i.abq, label %.lr.ph.i171, label %horizontalAccumulateF.exit

.preheader123.i189:                               ; preds = %bb.am, %.preheader123.i189
  %.2116.i190 = phi ptr [ %i.aby, %.preheader123.i189 ], [ %.0123257, %bb.am ] ; 2 uses
  %.2.i191 = phi ptr [ %i.abx, %.preheader123.i189 ], [ %.0122258, %bb.am ] ; 2 uses
  %.0102.i192 = phi i32 [ %i.abr, %.preheader123.i189 ], [ %i.xc, %bb.am ] ; 2 uses
  %i.abr = add nsw i32 %.0102.i192, -1
  %i.abs = load i16, ptr %.2.i191, align 2, !tbaa !59
  %i.abt = and i16 %i.abs, 2047
  %i.abu = zext nneg i16 %i.abt to i64
  %i.abv = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.abu
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !64
  store i8 %i.abw, ptr %.2116.i190, align 1, !tbaa !64
  %i.abx = getelementptr inbounds nuw i8, ptr %.2.i191, i64 2 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %.2116.i190, i64 1 ; 2 uses
  %i.abz = icmp samesign ugt i32 %.0102.i192, 1
  br i1 %i.abz, label %.preheader123.i189, label %.preheader121.i193

.preheader121.i193:                               ; preds = %.preheader123.i189
  %.2113143.i194 = sub nsw i32 %i.o, %i.xc        ; 2 uses
  %i.aca = icmp sgt i32 %.2113143.i194, 0
  br i1 %i.aca, label %.preheader.lr.ph.i195, label %horizontalAccumulateF.exit
end_hunk_1

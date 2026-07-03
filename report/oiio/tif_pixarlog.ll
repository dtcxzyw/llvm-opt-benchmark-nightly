inline.NumInlined: 19
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PixarLogSetupDecode:bb.a

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
  %.0122258 = phi ptr [ %i.as, %.lr.ph ], [ %i.ahw, %horizontalAccumulateF.exit ] ; 58 uses
  %.0123257 = phi ptr [ %1, %.lr.ph ], [ %i.ahu, %horizontalAccumulateF.exit ] ; 64 uses
  %.0127256 = phi i64 [ 0, %.lr.ph ], [ %i.ahv, %horizontalAccumulateF.exit ]
  %.0123257402 = ptrtoaddr ptr %.0123257 to i64
  %i.bj = mul i64 %i.bi, %indvar
  %i.bk = sub i64 %i.bj, %i.at
  %i.bl = load i32, ptr %i.c, align 8, !tbaa !32
  switch i32 %i.bl, label %bb.av [
    i32 5, label %bb.s
    i32 4, label %bb.x
    i32 3, label %bb.ac
    i32 2, label %bb.ah
    i32 0, label %bb.al
    i32 1, label %bb.aq
  ]

bb.s:                                             ; preds = %bb.r
  %i.bm = load i16, ptr %i.j, align 8, !tbaa !79  ; 3 uses
  %i.bn = zext i16 %i.bm to i32                   ; 5 uses
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !68 ; 16 uses
  %.not.i = icmp slt i32 %i.o, %i.bn
  br i1 %.not.i, label %horizontalAccumulateF.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  switch i16 %i.bm, label %.preheader137.i [
    i16 3, label %bb.u
    i16 4, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bp = load i16, ptr %.0122258, align 2, !tbaa !59
  %i.bq = and i16 %i.bp, 2047                     ; 2 uses
  %i.br = zext nneg i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !52
  %i.bu = getelementptr inbounds nuw i8, ptr %.0122258, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !59
  %i.bw = and i16 %i.bv, 2047                     ; 2 uses
  %i.bx = zext nneg i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4, !tbaa !52
  %i.ca = getelementptr inbounds nuw i8, ptr %.0122258, i64 4
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !59
  %i.cc = and i16 %i.cb, 2047                     ; 2 uses
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !52
  store float %i.bt, ptr %.0123257, align 4, !tbaa !52
  %i.cg = getelementptr inbounds nuw i8, ptr %.0123257, i64 4
  store float %i.bz, ptr %i.cg, align 4, !tbaa !52
  %i.ch = getelementptr inbounds nuw i8, ptr %.0123257, i64 8
  store float %i.cf, ptr %i.ch, align 4, !tbaa !52
  br i1 %i.bd, label %.lr.ph156.preheader.i, label %horizontalAccumulateF.exit

.lr.ph156.preheader.i:                            ; preds = %bb.u
  %i.ci = zext nneg i16 %i.cc to i32
  %i.cj = zext nneg i16 %i.bw to i32
  %i.ck = zext nneg i16 %i.bq to i32
  br label %.lr.ph156.i

.lr.ph156.i:                                      ; preds = %.lr.ph156.i, %.lr.ph156.preheader.i
  %.0117155.i = phi ptr [ %i.cl, %.lr.ph156.i ], [ %.0122258, %.lr.ph156.preheader.i ] ; 3 uses
  %.0119154.i = phi i32 [ %i.df, %.lr.ph156.i ], [ %i.ci, %.lr.ph156.preheader.i ]
  %.0121153.i = phi i32 [ %i.cx, %.lr.ph156.i ], [ %i.cj, %.lr.ph156.preheader.i ]
  %.0123152.i = phi i32 [ %i.cp, %.lr.ph156.i ], [ %i.ck, %.lr.ph156.preheader.i ]
  %.0125.in151.i = phi i32 [ %.0125.i, %.lr.ph156.i ], [ %i.o, %.lr.ph156.preheader.i ] ; 2 uses
  %.0128150.i = phi ptr [ %i.cm, %.lr.ph156.i ], [ %.0123257, %.lr.ph156.preheader.i ] ; 3 uses
  %.0125.i = add nsw i32 %.0125.in151.i, -3
  %i.cl = getelementptr inbounds nuw i8, ptr %.0117155.i, i64 6 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0128150.i, i64 12 ; 2 uses
  %i.cn = load i16, ptr %i.cl, align 2, !tbaa !59
  %i.co = zext i16 %i.cn to i32
  %i.cp = add i32 %.0123152.i, %i.co              ; 2 uses
  %i.cq = and i32 %i.cp, 2047
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !52
  %i.cu = getelementptr inbounds nuw i8, ptr %.0117155.i, i64 8
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !59
  %i.cw = zext i16 %i.cv to i32
  %i.cx = add i32 %.0121153.i, %i.cw              ; 2 uses
  %i.cy = and i32 %i.cx, 2047
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !52
  %i.dc = getelementptr inbounds nuw i8, ptr %.0117155.i, i64 10
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !59
  %i.de = zext i16 %i.dd to i32
  %i.df = add i32 %.0119154.i, %i.de              ; 2 uses
  %i.dg = and i32 %i.df, 2047
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !52
  store float %i.ct, ptr %i.cm, align 4, !tbaa !52
  %i.dk = getelementptr inbounds nuw i8, ptr %.0128150.i, i64 16
  store float %i.db, ptr %i.dk, align 4, !tbaa !52
  %i.dl = getelementptr inbounds nuw i8, ptr %.0128150.i, i64 20
  store float %i.dj, ptr %i.dl, align 4, !tbaa !52
  %i.dm = icmp samesign ugt i32 %.0125.in151.i, 6
  br i1 %i.dm, label %.lr.ph156.i, label %horizontalAccumulateF.exit

bb.v:                                             ; preds = %bb.t
  %i.dn = load <4 x i16>, ptr %.0122258, align 2, !tbaa !59
  %i.do = and <4 x i16> %i.dn, splat (i16 2047)   ; 5 uses
  %i.dp = extractelement <4 x i16> %i.do, i64 0
  %i.dq = zext nneg i16 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !52
  %i.dt = extractelement <4 x i16> %i.do, i64 1
  %i.du = zext nneg i16 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !52
  %i.dx = extractelement <4 x i16> %i.do, i64 2
  %i.dy = zext nneg i16 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !52
  %i.eb = extractelement <4 x i16> %i.do, i64 3
  %i.ec = zext nneg i16 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ec
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !52
  store float %i.ds, ptr %.0123257, align 4, !tbaa !52
  %i.ef = getelementptr inbounds nuw i8, ptr %.0123257, i64 4
  store float %i.dw, ptr %i.ef, align 4, !tbaa !52
  %i.eg = getelementptr inbounds nuw i8, ptr %.0123257, i64 8
  store float %i.ea, ptr %i.eg, align 4, !tbaa !52
  %i.eh = getelementptr inbounds nuw i8, ptr %.0123257, i64 12
  store float %i.ee, ptr %i.eh, align 4, !tbaa !52
  br i1 %i.bc, label %.lr.ph.preheader.i, label %horizontalAccumulateF.exit

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.ei = zext nneg <4 x i16> %i.do to <4 x i32>
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.1149.i = phi ptr [ %i.ek, %.lr.ph.i ], [ %.0122258, %.lr.ph.preheader.i ]
  %.1126.in144.i = phi i32 [ %.1126.i, %.lr.ph.i ], [ %i.o, %.lr.ph.preheader.i ] ; 2 uses
  %.1129143.i = phi ptr [ %i.el, %.lr.ph.i ], [ %.0123257, %.lr.ph.preheader.i ] ; 4 uses
  %i.ej = phi <4 x i32> [ %i.eo, %.lr.ph.i ], [ %i.ei, %.lr.ph.preheader.i ]
  %.1126.i = add nsw i32 %.1126.in144.i, -4
  %i.ek = getelementptr inbounds nuw i8, ptr %.1149.i, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.1129143.i, i64 16 ; 2 uses
  %i.em = load <4 x i16>, ptr %i.ek, align 2, !tbaa !59
  %i.en = zext <4 x i16> %i.em to <4 x i32>
  %i.eo = add <4 x i32> %i.ej, %i.en              ; 5 uses
  %i.ep = extractelement <4 x i32> %i.eo, i64 0
  %i.eq = and i32 %i.ep, 2047
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.er
  %i.et = load float, ptr %i.es, align 4, !tbaa !52
  %i.eu = extractelement <4 x i32> %i.eo, i64 1
  %i.ev = and i32 %i.eu, 2047
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !52
  %i.ez = extractelement <4 x i32> %i.eo, i64 2
  %i.fa = and i32 %i.ez, 2047
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.fb
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !52
  %i.fe = extractelement <4 x i32> %i.eo, i64 3
  %i.ff = and i32 %i.fe, 2047
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !52
  store float %i.et, ptr %i.el, align 4, !tbaa !52
  %i.fj = getelementptr inbounds nuw i8, ptr %.1129143.i, i64 20
  store float %i.ey, ptr %i.fj, align 4, !tbaa !52
  %i.fk = getelementptr inbounds nuw i8, ptr %.1129143.i, i64 24
  store float %i.fd, ptr %i.fk, align 4, !tbaa !52
  %i.fl = getelementptr inbounds nuw i8, ptr %.1129143.i, i64 28
  store float %i.fi, ptr %i.fl, align 4, !tbaa !52
  %i.fm = icmp samesign ugt i32 %.1126.in144.i, 8
  br i1 %i.fm, label %.lr.ph.i, label %horizontalAccumulateF.exit

.preheader137.i:                                  ; preds = %bb.t, %.preheader137.i
  %.2130.i = phi ptr [ %i.fu, %.preheader137.i ], [ %.0123257, %bb.t ] ; 2 uses
  %.2.i = phi ptr [ %i.ft, %.preheader137.i ], [ %.0122258, %bb.t ] ; 2 uses
  %.0116.i = phi i32 [ %i.fn, %.preheader137.i ], [ %i.bn, %bb.t ] ; 2 uses
  %i.fn = add nsw i32 %.0116.i, -1
  %i.fo = load i16, ptr %.2.i, align 2, !tbaa !59
  %i.fp = and i16 %i.fo, 2047
  %i.fq = zext nneg i16 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !52
  store float %i.fs, ptr %.2130.i, align 4, !tbaa !52
  %i.ft = getelementptr inbounds nuw i8, ptr %.2.i, i64 2 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.2130.i, i64 4 ; 2 uses
  %i.fv = icmp samesign ugt i32 %.0116.i, 1
  br i1 %i.fv, label %.preheader137.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %.preheader137.i
  %.2127157.i = sub nsw i32 %i.o, %i.bn           ; 2 uses
  %i.fw = icmp sgt i32 %.2127157.i, 0
  br i1 %i.fw, label %.preheader.lr.ph.i, label %horizontalAccumulateF.exit

.preheader.lr.ph.i:                               ; preds = %.preheader135.i
  %i.fx = zext i16 %i.bm to i64
  br label %.preheader.i

.loopexit.i:                                      ; preds = %bb.w
  %.2127.i = sub nsw i32 %.2127160.i, %i.bn       ; 2 uses
  %i.fy = icmp sgt i32 %.2127.i, 0
end_hunk_0
begin_hunk_1_@PixarLogDecode:bb.a
  br i1 %i.bd, label %.lr.ph175.preheader.i, label %horizontalAccumulateF.exit

.lr.ph175.preheader.i:                            ; preds = %bb.ae
  %i.ng = zext nneg i16 %i.mr to i32
  %i.nh = zext nneg i16 %i.ml to i32
  %i.ni = zext nneg i16 %i.mf to i32
  br label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %.lr.ph175.i, %.lr.ph175.preheader.i
  %.0136174.i = phi ptr [ %i.nj, %.lr.ph175.i ], [ %.0122258, %.lr.ph175.preheader.i ] ; 3 uses
  %.0138173.i = phi i32 [ %i.od, %.lr.ph175.i ], [ %i.ng, %.lr.ph175.preheader.i ]
  %.0140172.i = phi i32 [ %i.nv, %.lr.ph175.i ], [ %i.nh, %.lr.ph175.preheader.i ]
  %.0142171.i = phi i32 [ %i.nn, %.lr.ph175.i ], [ %i.ni, %.lr.ph175.preheader.i ]
  %.0144.in170.i = phi i32 [ %.0144.i, %.lr.ph175.i ], [ %i.o, %.lr.ph175.preheader.i ] ; 2 uses
  %.0147169.i = phi ptr [ %i.nk, %.lr.ph175.i ], [ %.0123257, %.lr.ph175.preheader.i ] ; 2 uses
  %.0144.i = add nsw i32 %.0144.in170.i, -3
  %i.nj = getelementptr inbounds nuw i8, ptr %.0136174.i, i64 6 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.0147169.i, i64 6 ; 2 uses
  %i.nl = load i16, ptr %i.nj, align 2, !tbaa !59
  %i.nm = zext i16 %i.nl to i32
  %i.nn = add i32 %.0142171.i, %i.nm              ; 2 uses
  %i.no = and i32 %i.nn, 2047
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.np
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !52
  %i.ns = getelementptr inbounds nuw i8, ptr %.0136174.i, i64 8
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !59
  %i.nu = zext i16 %i.nt to i32
  %i.nv = add i32 %.0140172.i, %i.nu              ; 2 uses
  %i.nw = and i32 %i.nv, 2047
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.nx
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !52
  %i.oa = getelementptr inbounds nuw i8, ptr %.0136174.i, i64 10
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !59
  %i.oc = zext i16 %i.ob to i32
  %i.od = add i32 %.0138173.i, %i.oc              ; 2 uses
  %i.oe = and i32 %i.od, 2047
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.of
  %i.oh = load float, ptr %i.og, align 4, !tbaa !52
  %i.oi = fmul float %i.oh, 2.048000e+03          ; 2 uses
  %i.oj = insertelement <2 x float> poison, float %i.nr, i64 0
  %i.ok = insertelement <2 x float> %i.oj, float %i.nz, i64 1
  %i.ol = fmul <2 x float> %i.ok, splat (float 2.048000e+03) ; 2 uses
  %i.om = fcmp olt <2 x float> %i.ol, splat (float 3.071000e+03)
  %i.on = select <2 x i1> %i.om, <2 x float> %i.ol, <2 x float> splat (float 3.071000e+03)
  %i.oo = fptoui <2 x float> %i.on to <2 x i16>
  store <2 x i16> %i.oo, ptr %i.nk, align 2, !tbaa !59
  %i.op = fcmp olt float %i.oi, 3.071000e+03
  %i.oq = select i1 %i.op, float %i.oi, float 3.071000e+03
  %i.or = fptoui float %i.oq to i16
  %i.os = getelementptr inbounds nuw i8, ptr %.0147169.i, i64 10
  store i16 %i.or, ptr %i.os, align 2, !tbaa !59
  %i.ot = icmp samesign ugt i32 %.0144.in170.i, 6
  br i1 %i.ot, label %.lr.ph175.i, label %horizontalAccumulateF.exit

bb.af:                                            ; preds = %bb.ad
  %i.ou = load <4 x i16>, ptr %.0122258, align 2, !tbaa !59
  %i.ov = and <4 x i16> %i.ou, splat (i16 2047)   ; 5 uses
  %i.ow = extractelement <4 x i16> %i.ov, i64 0
  %i.ox = zext nneg i16 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.ox
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !52
  %i.pa = extractelement <4 x i16> %i.ov, i64 1
  %i.pb = zext nneg i16 %i.pa to i64
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.pb
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !52
  %i.pe = extractelement <4 x i16> %i.ov, i64 2
  %i.pf = zext nneg i16 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.pf
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !52
  %i.pi = extractelement <4 x i16> %i.ov, i64 3
  %i.pj = zext nneg i16 %i.pi to i64
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.pj
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !52
  %i.pm = insertelement <4 x float> poison, float %i.oz, i64 0
  %i.pn = insertelement <4 x float> %i.pm, float %i.pd, i64 1
  %i.po = insertelement <4 x float> %i.pn, float %i.ph, i64 2
  %i.pp = insertelement <4 x float> %i.po, float %i.pl, i64 3
  %i.pq = fmul <4 x float> %i.pp, splat (float 2.048000e+03) ; 2 uses
  %i.pr = fcmp olt <4 x float> %i.pq, splat (float 3.071000e+03)
  %i.ps = select <4 x i1> %i.pr, <4 x float> %i.pq, <4 x float> splat (float 3.071000e+03)
  %i.pt = fptoui <4 x float> %i.ps to <4 x i16>
  store <4 x i16> %i.pt, ptr %.0123257, align 2, !tbaa !59
  br i1 %i.bc, label %.lr.ph.preheader.i152, label %horizontalAccumulateF.exit

.lr.ph.preheader.i152:                            ; preds = %bb.af
  %i.pu = zext nneg <4 x i16> %i.ov to <4 x i32>
  br label %.lr.ph.i153

.lr.ph.i153:                                      ; preds = %.lr.ph.i153, %.lr.ph.preheader.i152
  %.1168.i = phi ptr [ %i.pw, %.lr.ph.i153 ], [ %.0122258, %.lr.ph.preheader.i152 ]
  %.1145.in163.i = phi i32 [ %.1145.i, %.lr.ph.i153 ], [ %i.o, %.lr.ph.preheader.i152 ] ; 2 uses
  %.1148162.i = phi ptr [ %i.px, %.lr.ph.i153 ], [ %.0123257, %.lr.ph.preheader.i152 ]
  %i.pv = phi <4 x i32> [ %i.qa, %.lr.ph.i153 ], [ %i.pu, %.lr.ph.preheader.i152 ]
  %.1145.i = add nsw i32 %.1145.in163.i, -4
  %i.pw = getelementptr inbounds nuw i8, ptr %.1168.i, i64 8 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.1148162.i, i64 8 ; 2 uses
  %i.py = load <4 x i16>, ptr %i.pw, align 2, !tbaa !59
  %i.pz = zext <4 x i16> %i.py to <4 x i32>
  %i.qa = add <4 x i32> %i.pv, %i.pz              ; 5 uses
  %i.qb = extractelement <4 x i32> %i.qa, i64 0
  %i.qc = and i32 %i.qb, 2047
  %i.qd = zext nneg i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.qd
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !52
  %i.qg = extractelement <4 x i32> %i.qa, i64 1
  %i.qh = and i32 %i.qg, 2047
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.qi
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !52
  %i.ql = extractelement <4 x i32> %i.qa, i64 2
  %i.qm = and i32 %i.ql, 2047
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.qn
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !52
  %i.qq = extractelement <4 x i32> %i.qa, i64 3
  %i.qr = and i32 %i.qq, 2047
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.qs
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !52
  %i.qv = insertelement <4 x float> poison, float %i.qf, i64 0
  %i.qw = insertelement <4 x float> %i.qv, float %i.qk, i64 1
  %i.qx = insertelement <4 x float> %i.qw, float %i.qp, i64 2
  %i.qy = insertelement <4 x float> %i.qx, float %i.qu, i64 3
  %i.qz = fmul <4 x float> %i.qy, splat (float 2.048000e+03) ; 2 uses
  %i.ra = fcmp olt <4 x float> %i.qz, splat (float 3.071000e+03)
  %i.rb = select <4 x i1> %i.ra, <4 x float> %i.qz, <4 x float> splat (float 3.071000e+03)
  %i.rc = fptoui <4 x float> %i.rb to <4 x i16>
  store <4 x i16> %i.rc, ptr %i.px, align 2, !tbaa !59
  %i.rd = icmp samesign ugt i32 %.1145.in163.i, 8
  br i1 %i.rd, label %.lr.ph.i153, label %horizontalAccumulateF.exit

.preheader156.i:                                  ; preds = %bb.ad, %.preheader156.i
  %.2149.i = phi ptr [ %i.rp, %.preheader156.i ], [ %.0123257, %bb.ad ] ; 2 uses
  %.2.i154 = phi ptr [ %i.ro, %.preheader156.i ], [ %.0122258, %bb.ad ] ; 2 uses
  %.0135.i = phi i32 [ %i.re, %.preheader156.i ], [ %i.mc, %bb.ad ] ; 2 uses
  %i.re = add nsw i32 %.0135.i, -1
  %i.rf = load i16, ptr %.2.i154, align 2, !tbaa !59
  %i.rg = and i16 %i.rf, 2047
  %i.rh = zext nneg i16 %i.rg to i64
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.rh
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !52
  %i.rk = fmul float %i.rj, 2.048000e+03          ; 2 uses
  %i.rl = fcmp olt float %i.rk, 3.071000e+03
  %i.rm = select i1 %i.rl, float %i.rk, float 3.071000e+03
  %i.rn = fptoui float %i.rm to i16
  store i16 %i.rn, ptr %.2149.i, align 2, !tbaa !59
  %i.ro = getelementptr inbounds nuw i8, ptr %.2.i154, i64 2 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.2149.i, i64 2 ; 2 uses
  %i.rq = icmp samesign ugt i32 %.0135.i, 1
  br i1 %i.rq, label %.preheader156.i, label %.preheader154.i

.preheader154.i:                                  ; preds = %.preheader156.i
  %.2146176.i = sub nsw i32 %i.o, %i.mc           ; 2 uses
  %i.rr = icmp sgt i32 %.2146176.i, 0
  br i1 %i.rr, label %.preheader.lr.ph.i155, label %horizontalAccumulateF.exit

.preheader.lr.ph.i155:                            ; preds = %.preheader154.i
  %i.rs = zext i16 %i.mb to i64
  br label %.preheader.i156

.loopexit.i159:                                   ; preds = %bb.ag
  %.2146.i = sub nsw i32 %.2146179.i, %i.mc       ; 2 uses
  %i.rt = icmp sgt i32 %.2146.i, 0
  br i1 %i.rt, label %.preheader.i156, label %horizontalAccumulateF.exit

.preheader.i156:                                  ; preds = %.loopexit.i159, %.preheader.lr.ph.i155
  %.2146179.i = phi i32 [ %.2146176.i, %.preheader.lr.ph.i155 ], [ %.2146.i, %.loopexit.i159 ]
  %.3178.i = phi ptr [ %i.ro, %.preheader.lr.ph.i155 ], [ %i.sh, %.loopexit.i159 ]
  %.3150177.i = phi ptr [ %i.rp, %.preheader.lr.ph.i155 ], [ %i.si, %.loopexit.i159 ]
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.preheader.i156
  %.4151.i = phi ptr [ %i.si, %bb.ag ], [ %.3150177.i, %.preheader.i156 ] ; 2 uses
  %.4.i157 = phi ptr [ %i.sh, %bb.ag ], [ %.3178.i, %.preheader.i156 ] ; 3 uses
  %.0.i158 = phi i32 [ %i.ru, %bb.ag ], [ %i.mc, %.preheader.i156 ] ; 2 uses
  %i.ru = add nsw i32 %.0.i158, -1
  %i.rv = load i16, ptr %.4.i157, align 2, !tbaa !59
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %.4.i157, i64 %i.rs ; 2 uses
  %i.rx = load i16, ptr %i.rw, align 2, !tbaa !59
  %i.ry = add i16 %i.rx, %i.rv                    ; 2 uses
  store i16 %i.ry, ptr %i.rw, align 2, !tbaa !59
  %i.rz = and i16 %i.ry, 2047
  %i.sa = zext nneg i16 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.sa
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !52
  %i.sd = fmul float %i.sc, 2.048000e+03          ; 2 uses
  %i.se = fcmp olt float %i.sd, 3.071000e+03
  %i.sf = select i1 %i.se, float %i.sd, float 3.071000e+03
  %i.sg = fptoui float %i.sf to i16
  store i16 %i.sg, ptr %.4151.i, align 2, !tbaa !59
  %i.sh = getelementptr inbounds nuw i8, ptr %.4.i157, i64 2 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.4151.i, i64 2 ; 2 uses
  %i.sj = icmp sgt i32 %.0.i158, 1
  br i1 %i.sj, label %bb.ag, label %.loopexit.i159

bb.ah:                                            ; preds = %bb.r
  %i.sk = load i16, ptr %i.j, align 8, !tbaa !79  ; 4 uses
  %i.sl = zext i16 %i.sk to i32                   ; 14 uses
  %.not.i160 = icmp slt i32 %i.o, %i.sl
  br i1 %.not.i160, label %horizontalAccumulateF.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  switch i16 %i.sk, label %iter.check [
    i16 3, label %bb.aj
    i16 4, label %bb.ak
  ]

iter.check:                                       ; preds = %bb.ai
  %i.sm = icmp ne i16 %i.sk, 0
  %umin.neg = sext i1 %i.sm to i32
  %i.sn = add nsw i32 %umin.neg, %i.sl            ; 3 uses
  %i.so = zext i32 %i.sn to i64
  %4 = add nuw nsw i64 %i.so, 1                   ; 5 uses
  %min.iters.check404 = icmp ult i32 %i.sn, 3
  %i.sp = add i64 %i.bk, %.0123257402
  %diff.check.a = icmp ult i64 %i.sp, 32
  %or.cond = select i1 %min.iters.check404, i1 true, i1 %diff.check.a
  br i1 %or.cond, label %.preheader107.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check405 = icmp ult i32 %i.sn, 15
  br i1 %min.iters.check405, label %vec.epilog.ph, label %vector.ph406

vector.ph406:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf407 = and i64 %4, 12
  %n.vec408 = and i64 %4, 8589934576              ; 5 uses
  %i.sq = shl nuw nsw i64 %n.vec408, 1            ; 2 uses
  %i.sr = getelementptr i8, ptr %.0123257, i64 %i.sq ; 2 uses
  %i.ss = getelementptr i8, ptr %.0122258, i64 %i.sq ; 2 uses
  %i.st = trunc i64 %n.vec408 to i32
  %i.su = sub i32 %i.sl, %i.st
  br label %vector.body409

vector.body409:                                   ; preds = %vector.body409, %vector.ph406
  %index410 = phi i64 [ 0, %vector.ph406 ], [ %index.next415, %vector.body409 ] ; 2 uses
  %i.sv = shl i64 %index410, 1                    ; 2 uses
  %next.gep411 = getelementptr i8, ptr %.0123257, i64 %i.sv ; 2 uses
  %next.gep412 = getelementptr i8, ptr %.0122258, i64 %i.sv ; 2 uses
  %i.sw = getelementptr i8, ptr %next.gep412, i64 16
  %wide.load413 = load <8 x i16>, ptr %next.gep412, align 2, !tbaa !59
  %wide.load414 = load <8 x i16>, ptr %i.sw, align 2, !tbaa !59
  %i.sx = and <8 x i16> %wide.load413, splat (i16 2047)
  %i.sy = and <8 x i16> %wide.load414, splat (i16 2047)
  %i.sz = getelementptr i8, ptr %next.gep411, i64 16
  store <8 x i16> %i.sx, ptr %next.gep411, align 2, !tbaa !59
  store <8 x i16> %i.sy, ptr %i.sz, align 2, !tbaa !59
  %index.next415 = add nuw i64 %index410, 16      ; 2 uses
  %i.ta = icmp eq i64 %index.next415, %n.vec408
  br i1 %i.ta, label %middle.block416, label %vector.body409, !llvm.loop !95

middle.block416:                                  ; preds = %vector.body409
  %cmp.n417 = icmp eq i64 %4, %n.vec408
  br i1 %cmp.n417, label %.preheader105.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block416
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf407, 0
  br i1 %min.epilog.iters.check, label %.preheader107.i.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec408, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec422 = and i64 %4, 8589934588              ; 4 uses
  %i.tb = shl nuw nsw i64 %n.vec422, 1            ; 2 uses
  %i.tc = getelementptr i8, ptr %.0123257, i64 %i.tb ; 2 uses
  %i.td = getelementptr i8, ptr %.0122258, i64 %i.tb ; 2 uses
  %i.te = trunc i64 %n.vec422 to i32
  %i.tf = sub i32 %i.sl, %i.te
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index423 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next427, %vec.epilog.vector.body ] ; 2 uses
  %i.tg = shl i64 %index423, 1                    ; 2 uses
  %next.gep424 = getelementptr i8, ptr %.0123257, i64 %i.tg
  %next.gep425 = getelementptr i8, ptr %.0122258, i64 %i.tg
  %wide.load426 = load <4 x i16>, ptr %next.gep425, align 2, !tbaa !59
  %i.th = and <4 x i16> %wide.load426, splat (i16 2047)
  store <4 x i16> %i.th, ptr %next.gep424, align 2, !tbaa !59
  %index.next427 = add nuw i64 %index423, 4       ; 2 uses
  %i.ti = icmp eq i64 %index.next427, %n.vec422
  br i1 %i.ti, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !97

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n428 = icmp eq i64 %4, %n.vec422
  br i1 %cmp.n428, label %.preheader105.i, label %.preheader107.i.preheader

.preheader107.i.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.297.i.ph = phi ptr [ %.0123257, %iter.check ], [ %i.sr, %vec.epilog.iter.check ], [ %i.tc, %vec.epilog.middle.block ]
  %.2.i163.ph = phi ptr [ %.0122258, %iter.check ], [ %i.ss, %vec.epilog.iter.check ], [ %i.td, %vec.epilog.middle.block ]
  %.086.i.ph = phi i32 [ %i.sl, %iter.check ], [ %i.su, %vec.epilog.iter.check ], [ %i.tf, %vec.epilog.middle.block ]
  br label %.preheader107.i

bb.aj:                                            ; preds = %bb.ai
  %i.tj = load i16, ptr %.0122258, align 2, !tbaa !59
  store i16 %i.tj, ptr %.0123257, align 2, !tbaa !59
  %i.tk = getelementptr inbounds nuw i8, ptr %.0122258, i64 2 ; 2 uses
  %i.tl = load i16, ptr %i.tk, align 2, !tbaa !59
  %i.tm = getelementptr inbounds nuw i8, ptr %.0123257, i64 2
  store i16 %i.tl, ptr %i.tm, align 2, !tbaa !59
  %i.tn = getelementptr inbounds nuw i8, ptr %.0122258, i64 4
  %i.to = load i16, ptr %i.tn, align 2, !tbaa !59 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.0123257, i64 4
  store i16 %i.to, ptr %i.tp, align 2, !tbaa !59
  br i1 %i.bd, label %.lr.ph126.preheader.i, label %horizontalAccumulateF.exit

.lr.ph126.preheader.i:                            ; preds = %bb.aj
  %i.tq = load i16, ptr %i.tk, align 2, !tbaa !59
  %i.tr = load i16, ptr %.0122258, align 2, !tbaa !59
  br label %.lr.ph126.i

.lr.ph126.i:                                      ; preds = %.lr.ph126.i, %.lr.ph126.preheader.i
  %.087125.i = phi ptr [ %i.ts, %.lr.ph126.i ], [ %.0122258, %.lr.ph126.preheader.i ] ; 3 uses
  %.089124.i = phi i16 [ %i.ue, %.lr.ph126.i ], [ %i.to, %.lr.ph126.preheader.i ]
  %.091123.i = phi i16 [ %i.tz, %.lr.ph126.i ], [ %i.tq, %.lr.ph126.preheader.i ]
  %.093122.i = phi i16 [ %i.tv, %.lr.ph126.i ], [ %i.tr, %.lr.ph126.preheader.i ]
  %.095121.i = phi ptr [ %i.tt, %.lr.ph126.i ], [ %.0123257, %.lr.ph126.preheader.i ] ; 3 uses
  %.0100.in120.i = phi i32 [ %.0100.i, %.lr.ph126.i ], [ %i.o, %.lr.ph126.preheader.i ] ; 2 uses
  %.0100.i = add nsw i32 %.0100.in120.i, -3
  %i.ts = getelementptr inbounds nuw i8, ptr %.087125.i, i64 6 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.095121.i, i64 6 ; 2 uses
  %i.tu = load i16, ptr %i.ts, align 2, !tbaa !59
  %i.tv = add i16 %i.tu, %.093122.i               ; 2 uses
  %i.tw = and i16 %i.tv, 2047
  store i16 %i.tw, ptr %i.tt, align 2, !tbaa !59
  %i.tx = getelementptr inbounds nuw i8, ptr %.087125.i, i64 8
  %i.ty = load i16, ptr %i.tx, align 2, !tbaa !59
  %i.tz = add i16 %i.ty, %.091123.i               ; 2 uses
  %i.ua = and i16 %i.tz, 2047
  %i.ub = getelementptr inbounds nuw i8, ptr %.095121.i, i64 8
  store i16 %i.ua, ptr %i.ub, align 2, !tbaa !59
  %i.uc = getelementptr inbounds nuw i8, ptr %.087125.i, i64 10
  %i.ud = load i16, ptr %i.uc, align 2, !tbaa !59
  %i.ue = add i16 %i.ud, %.089124.i               ; 2 uses
  %i.uf = and i16 %i.ue, 2047
  %i.ug = getelementptr inbounds nuw i8, ptr %.095121.i, i64 10
  store i16 %i.uf, ptr %i.ug, align 2, !tbaa !59
  %i.uh = icmp samesign ugt i32 %.0100.in120.i, 6
  br i1 %i.uh, label %.lr.ph126.i, label %horizontalAccumulateF.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ui = load i16, ptr %.0122258, align 2, !tbaa !59
  store i16 %i.ui, ptr %.0123257, align 2, !tbaa !59
  %i.uj = getelementptr inbounds nuw i8, ptr %.0122258, i64 2 ; 2 uses
  %i.uk = load i16, ptr %i.uj, align 2, !tbaa !59
  %i.ul = getelementptr inbounds nuw i8, ptr %.0123257, i64 2
  store i16 %i.uk, ptr %i.ul, align 2, !tbaa !59
  %i.um = getelementptr inbounds nuw i8, ptr %.0122258, i64 4 ; 2 uses
  %i.un = load i16, ptr %i.um, align 2, !tbaa !59
  %i.uo = getelementptr inbounds nuw i8, ptr %.0123257, i64 4
  store i16 %i.un, ptr %i.uo, align 2, !tbaa !59
  %i.up = getelementptr inbounds nuw i8, ptr %.0122258, i64 6
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !59 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.0123257, i64 6
  store i16 %i.uq, ptr %i.ur, align 2, !tbaa !59
  br i1 %i.bc, label %.lr.ph.preheader.i161, label %horizontalAccumulateF.exit

.lr.ph.preheader.i161:                            ; preds = %bb.ak
  %i.us = load i16, ptr %i.um, align 2, !tbaa !59
  %i.ut = load i16, ptr %i.uj, align 2, !tbaa !59
  %i.uu = load i16, ptr %.0122258, align 2, !tbaa !59
  br label %.lr.ph.i162

.lr.ph.i162:                                      ; preds = %.lr.ph.i162, %.lr.ph.preheader.i161
  %.1119.i = phi ptr [ %i.uv, %.lr.ph.i162 ], [ %.0122258, %.lr.ph.preheader.i161 ] ; 4 uses
  %.088118.i = phi i16 [ %i.vm, %.lr.ph.i162 ], [ %i.uq, %.lr.ph.preheader.i161 ]
  %.190117.i = phi i16 [ %i.vh, %.lr.ph.i162 ], [ %i.us, %.lr.ph.preheader.i161 ]
  %.192116.i = phi i16 [ %i.vc, %.lr.ph.i162 ], [ %i.ut, %.lr.ph.preheader.i161 ]
  %.194115.i = phi i16 [ %i.uy, %.lr.ph.i162 ], [ %i.uu, %.lr.ph.preheader.i161 ]
  %.196114.i = phi ptr [ %i.uw, %.lr.ph.i162 ], [ %.0123257, %.lr.ph.preheader.i161 ] ; 4 uses
  %.1101.in113.i = phi i32 [ %.1101.i, %.lr.ph.i162 ], [ %i.o, %.lr.ph.preheader.i161 ] ; 2 uses
  %.1101.i = add nsw i32 %.1101.in113.i, -4
  %i.uv = getelementptr inbounds nuw i8, ptr %.1119.i, i64 8 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.196114.i, i64 8 ; 2 uses
  %i.ux = load i16, ptr %i.uv, align 2, !tbaa !59
  %i.uy = add i16 %i.ux, %.194115.i               ; 2 uses
  %i.uz = and i16 %i.uy, 2047
  store i16 %i.uz, ptr %i.uw, align 2, !tbaa !59
  %i.va = getelementptr inbounds nuw i8, ptr %.1119.i, i64 10
  %i.vb = load i16, ptr %i.va, align 2, !tbaa !59
  %i.vc = add i16 %i.vb, %.192116.i               ; 2 uses
  %i.vd = and i16 %i.vc, 2047
  %i.ve = getelementptr inbounds nuw i8, ptr %.196114.i, i64 10
  store i16 %i.vd, ptr %i.ve, align 2, !tbaa !59
  %i.vf = getelementptr inbounds nuw i8, ptr %.1119.i, i64 12
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !59
  %i.vh = add i16 %i.vg, %.190117.i               ; 2 uses
  %i.vi = and i16 %i.vh, 2047
  %i.vj = getelementptr inbounds nuw i8, ptr %.196114.i, i64 12
  store i16 %i.vi, ptr %i.vj, align 2, !tbaa !59
  %i.vk = getelementptr inbounds nuw i8, ptr %.1119.i, i64 14
  %i.vl = load i16, ptr %i.vk, align 2, !tbaa !59
  %i.vm = add i16 %i.vl, %.088118.i               ; 2 uses
  %i.vn = and i16 %i.vm, 2047
  %i.vo = getelementptr inbounds nuw i8, ptr %.196114.i, i64 14
  store i16 %i.vn, ptr %i.vo, align 2, !tbaa !59
  %i.vp = icmp samesign ugt i32 %.1101.in113.i, 8
  br i1 %i.vp, label %.lr.ph.i162, label %horizontalAccumulateF.exit

.preheader107.i:                                  ; preds = %.preheader107.i.preheader, %.preheader107.i
  %.297.i = phi ptr [ %i.vu, %.preheader107.i ], [ %.297.i.ph, %.preheader107.i.preheader ] ; 2 uses
  %.2.i163 = phi ptr [ %i.vt, %.preheader107.i ], [ %.2.i163.ph, %.preheader107.i.preheader ] ; 2 uses
  %.086.i = phi i32 [ %i.vq, %.preheader107.i ], [ %.086.i.ph, %.preheader107.i.preheader ] ; 2 uses
  %i.vq = add nsw i32 %.086.i, -1
  %i.vr = load i16, ptr %.2.i163, align 2, !tbaa !59
  %i.vs = and i16 %i.vr, 2047
  store i16 %i.vs, ptr %.297.i, align 2, !tbaa !59
  %i.vt = getelementptr inbounds nuw i8, ptr %.2.i163, i64 2 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.297.i, i64 2 ; 2 uses
  %i.vv = icmp samesign ugt i32 %.086.i, 1
  br i1 %i.vv, label %.preheader107.i, label %.preheader105.i, !llvm.loop !98

.preheader105.i:                                  ; preds = %.preheader107.i, %vec.epilog.middle.block, %middle.block416
  %.lcssa367 = phi ptr [ %i.td, %vec.epilog.middle.block ], [ %i.ss, %middle.block416 ], [ %i.vt, %.preheader107.i ]
  %.lcssa366 = phi ptr [ %i.tc, %vec.epilog.middle.block ], [ %i.sr, %middle.block416 ], [ %i.vu, %.preheader107.i ]
  %.2102127.i = sub nsw i32 %i.o, %i.sl           ; 2 uses
  %i.vw = icmp sgt i32 %.2102127.i, 0
  br i1 %i.vw, label %.preheader.lr.ph.i164, label %horizontalAccumulateF.exit

.preheader.lr.ph.i164:                            ; preds = %.preheader105.i
  %i.vx = zext i16 %i.sk to i64                   ; 3 uses
  %i.vy = shl nuw nsw i64 %i.vx, 1                ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.sl, i32 1)
  %i.vz = sub nsw i32 %i.sl, %smin
  %i.wa = shl nuw nsw i32 %i.vz, 1
  %i.wb = zext nneg i32 %i.wa to i64              ; 3 uses
  %smin395 = tail call i32 @llvm.smin.i32(i32 %i.sl, i32 1)
  %i.wc = sub nsw i32 %i.sl, %smin395             ; 2 uses
  %narrow = add nuw nsw i32 %i.wc, 1
  %i.wd = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check = icmp ult i32 %i.wc, 7
  %n.vec = and i64 %i.wd, 2147483640              ; 4 uses
  %i.we = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.wf = trunc nuw nsw i64 %n.vec to i32
  %i.wg = sub nsw i32 %i.sl, %i.wf
  %cmp.n = icmp eq i64 %n.vec, %i.wd
  br label %.preheader.i165

.loopexit.i168:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa369 = phi ptr [ %i.wk, %middle.block ], [ %i.wx, %scalar.ph ]
  %.lcssa368 = phi ptr [ %i.wj, %middle.block ], [ %i.wy, %scalar.ph ]
  %.2102.i = sub nsw i32 %.2102130.i, %i.sl       ; 2 uses
  %i.wh = icmp sgt i32 %.2102.i, 0
  br i1 %i.wh, label %.preheader.i165, label %horizontalAccumulateF.exit

.preheader.i165:                                  ; preds = %.loopexit.i168, %.preheader.lr.ph.i164
  %.2102130.i = phi i32 [ %.2102127.i, %.preheader.lr.ph.i164 ], [ %.2102.i, %.loopexit.i168 ]
  %.3129.i = phi ptr [ %.lcssa367, %.preheader.lr.ph.i164 ], [ %.lcssa369, %.loopexit.i168 ] ; 8 uses
  %.398128.i = phi ptr [ %.lcssa366, %.preheader.lr.ph.i164 ], [ %.lcssa368, %.loopexit.i168 ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i165
  %scevgep = getelementptr nuw i8, ptr %.3129.i, i64 %i.vy ; 2 uses
  %scevgep383 = getelementptr i8, ptr %.3129.i, i64 2 ; 2 uses
  %i.wi = getelementptr i8, ptr %scevgep383, i64 %i.vy
  %scevgep384 = getelementptr i8, ptr %i.wi, i64 %i.wb ; 2 uses
  %scevgep385 = getelementptr i8, ptr %.398128.i, i64 2
  %scevgep386 = getelementptr i8, ptr %scevgep385, i64 %i.wb ; 2 uses
  %scevgep387 = getelementptr i8, ptr %scevgep383, i64 %i.wb ; 2 uses
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
  %i.wj = getelementptr i8, ptr %.398128.i, i64 %i.we ; 2 uses
  %i.wk = getelementptr i8, ptr %.3129.i, i64 %i.we ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.wl = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.398128.i, i64 %i.wl
  %next.gep396 = getelementptr i8, ptr %.3129.i, i64 %i.wl ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep396, align 2, !tbaa !59, !alias.scope !99 ; 2 uses
  %i.wm = getelementptr inbounds nuw [2 x i8], ptr %next.gep396, i64 %i.vx ; 2 uses
  %wide.load397 = load <8 x i16>, ptr %i.wm, align 2, !tbaa !59, !alias.scope !102, !noalias !104
  %i.wn = add <8 x i16> %wide.load397, %wide.load
  store <8 x i16> %i.wn, ptr %i.wm, align 2, !tbaa !59, !alias.scope !102, !noalias !104
  %i.wo = and <8 x i16> %wide.load, splat (i16 2047)
  store <8 x i16> %i.wo, ptr %next.gep, align 2, !tbaa !59, !alias.scope !106, !noalias !99
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.wp = icmp eq i64 %index.next, %n.vec
end_hunk_1

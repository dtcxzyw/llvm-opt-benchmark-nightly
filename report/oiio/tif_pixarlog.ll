inline.NumInlined: 19
inline.NumDeleted: 13
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
define internal range(i32 0, 2) i32 @PixarLogDecode(ptr noundef %0, ptr noundef writeonly %1, i64 noundef %2, i16 zeroext %3) #0 {
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
  %.0122258 = phi ptr [ %i.as, %.lr.ph ], [ %i.ahq, %horizontalAccumulateF.exit ] ; 58 uses
  %.0123257 = phi ptr [ %1, %.lr.ph ], [ %i.aho, %horizontalAccumulateF.exit ] ; 63 uses
  %.0127256 = phi i64 [ 0, %.lr.ph ], [ %i.ahp, %horizontalAccumulateF.exit ]
  %.0123257419 = ptrtoaddr ptr %.0123257 to i64
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
  %i.hx = add i32 %.0107139.i, %i.hw              ; 2 uses
  %i.hy = and i32 %i.hx, 2047
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.hz
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !59
  %i.ic = getelementptr inbounds nuw i8, ptr %.0114136.i, i64 8
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !59
  %i.id = getelementptr inbounds nuw i8, ptr %.0103141.i, i64 10
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !59
  %i.if = zext i16 %i.ie to i32
  %i.ig = add i32 %.0105140.i, %i.if              ; 2 uses
  %i.ih = and i32 %i.ig, 2047
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.ii
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !59
  %i.il = getelementptr inbounds nuw i8, ptr %.0114136.i, i64 10
  store i16 %i.ik, ptr %i.il, align 2, !tbaa !59
  %i.im = icmp samesign ugt i32 %.0111.in137.i, 6
  br i1 %i.im, label %.lr.ph142.i, label %horizontalAccumulateF.exit

bb.aa:                                            ; preds = %bb.y
  %i.in = load i16, ptr %.0122258, align 2, !tbaa !59
  %i.io = and i16 %i.in, 2047                     ; 2 uses
  %i.ip = zext nneg i16 %i.io to i64
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.ip
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !59
  store i16 %i.ir, ptr %.0123257, align 2, !tbaa !59
  %i.is = getelementptr inbounds nuw i8, ptr %.0122258, i64 2
  %i.it = load i16, ptr %i.is, align 2, !tbaa !59
  %i.iu = and i16 %i.it, 2047                     ; 2 uses
  %i.iv = zext nneg i16 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.iv
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !59
  %i.iy = getelementptr inbounds nuw i8, ptr %.0123257, i64 2
  store i16 %i.ix, ptr %i.iy, align 2, !tbaa !59
  %i.iz = getelementptr inbounds nuw i8, ptr %.0122258, i64 4
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !59
  %i.jb = and i16 %i.ja, 2047                     ; 2 uses
  %i.jc = zext nneg i16 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.jc
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !59
  %i.jf = getelementptr inbounds nuw i8, ptr %.0123257, i64 4
  store i16 %i.je, ptr %i.jf, align 2, !tbaa !59
  %i.jg = getelementptr inbounds nuw i8, ptr %.0122258, i64 6
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !59
  %i.ji = and i16 %i.jh, 2047                     ; 2 uses
  %i.jj = zext nneg i16 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !59
  %i.jm = getelementptr inbounds nuw i8, ptr %.0123257, i64 6
  store i16 %i.jl, ptr %i.jm, align 2, !tbaa !59
  br i1 %i.bc, label %.lr.ph.preheader.i143, label %horizontalAccumulateF.exit

.lr.ph.preheader.i143:                            ; preds = %bb.aa
  %i.jn = zext nneg i16 %i.ji to i32
  %i.jo = zext nneg i16 %i.jb to i32
  %i.jp = zext nneg i16 %i.iu to i32
  %i.jq = zext nneg i16 %i.io to i32
  br label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %.lr.ph.i144, %.lr.ph.preheader.i143
  %.1135.i = phi ptr [ %i.jr, %.lr.ph.i144 ], [ %.0122258, %.lr.ph.preheader.i143 ] ; 4 uses
  %.0104134.i = phi i32 [ %i.kv, %.lr.ph.i144 ], [ %i.jn, %.lr.ph.preheader.i143 ]
  %.1106133.i = phi i32 [ %i.km, %.lr.ph.i144 ], [ %i.jo, %.lr.ph.preheader.i143 ]
  %.1108132.i = phi i32 [ %i.kd, %.lr.ph.i144 ], [ %i.jp, %.lr.ph.preheader.i143 ]
  %.1110131.i = phi i32 [ %i.jv, %.lr.ph.i144 ], [ %i.jq, %.lr.ph.preheader.i143 ]
  %.1112.in130.i = phi i32 [ %.1112.i, %.lr.ph.i144 ], [ %i.o, %.lr.ph.preheader.i143 ] ; 2 uses
  %.1115129.i = phi ptr [ %i.js, %.lr.ph.i144 ], [ %.0123257, %.lr.ph.preheader.i143 ] ; 4 uses
  %.1112.i = add nsw i32 %.1112.in130.i, -4
  %i.jr = getelementptr inbounds nuw i8, ptr %.1135.i, i64 8 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.1115129.i, i64 8 ; 2 uses
  %i.jt = load i16, ptr %i.jr, align 2, !tbaa !59
  %i.ju = zext i16 %i.jt to i32
  %i.jv = add i32 %.1110131.i, %i.ju              ; 2 uses
  %i.jw = and i32 %i.jv, 2047
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.jx
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !59
  store i16 %i.jz, ptr %i.js, align 2, !tbaa !59
  %i.ka = getelementptr inbounds nuw i8, ptr %.1135.i, i64 10
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !59
  %i.kc = zext i16 %i.kb to i32
  %i.kd = add i32 %.1108132.i, %i.kc              ; 2 uses
  %i.ke = and i32 %i.kd, 2047
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.kf
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !59
  %i.ki = getelementptr inbounds nuw i8, ptr %.1115129.i, i64 10
  store i16 %i.kh, ptr %i.ki, align 2, !tbaa !59
  %i.kj = getelementptr inbounds nuw i8, ptr %.1135.i, i64 12
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !59
  %i.kl = zext i16 %i.kk to i32
  %i.km = add i32 %.1106133.i, %i.kl              ; 2 uses
  %i.kn = and i32 %i.km, 2047
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.ko
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !59
  %i.kr = getelementptr inbounds nuw i8, ptr %.1115129.i, i64 12
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !59
  %i.ks = getelementptr inbounds nuw i8, ptr %.1135.i, i64 14
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !59
  %i.ku = zext i16 %i.kt to i32
  %i.kv = add i32 %.0104134.i, %i.ku              ; 2 uses
  %i.kw = and i32 %i.kv, 2047
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.kx
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !59
  %i.la = getelementptr inbounds nuw i8, ptr %.1115129.i, i64 14
  store i16 %i.kz, ptr %i.la, align 2, !tbaa !59
  %i.lb = icmp samesign ugt i32 %.1112.in130.i, 8
  br i1 %i.lb, label %.lr.ph.i144, label %horizontalAccumulateF.exit

.preheader123.i:                                  ; preds = %bb.y, %.preheader123.i
  %.2116.i = phi ptr [ %i.lj, %.preheader123.i ], [ %.0123257, %bb.y ] ; 2 uses
  %.2.i145 = phi ptr [ %i.li, %.preheader123.i ], [ %.0122258, %bb.y ] ; 2 uses
  %.0102.i = phi i32 [ %i.lc, %.preheader123.i ], [ %i.gn, %bb.y ] ; 2 uses
  %i.lc = add nsw i32 %.0102.i, -1
  %i.ld = load i16, ptr %.2.i145, align 2, !tbaa !59
  %i.le = and i16 %i.ld, 2047
  %i.lf = zext nneg i16 %i.le to i64
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.lf
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !59
  store i16 %i.lh, ptr %.2116.i, align 2, !tbaa !59
  %i.li = getelementptr inbounds nuw i8, ptr %.2.i145, i64 2 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.2116.i, i64 2 ; 2 uses
  %i.lk = icmp samesign ugt i32 %.0102.i, 1
  br i1 %i.lk, label %.preheader123.i, label %.preheader121.i

.preheader121.i:                                  ; preds = %.preheader123.i
  %.2113143.i = sub nsw i32 %i.o, %i.gn           ; 2 uses
  %i.ll = icmp sgt i32 %.2113143.i, 0
  br i1 %i.ll, label %.preheader.lr.ph.i146, label %horizontalAccumulateF.exit

.preheader.lr.ph.i146:                            ; preds = %.preheader121.i
  %i.lm = zext i16 %i.gm to i64
  br label %.preheader.i147

.loopexit.i150:                                   ; preds = %bb.ab
  %.2113.i = sub nsw i32 %.2113146.i, %i.gn       ; 2 uses
  %i.ln = icmp sgt i32 %.2113.i, 0
  br i1 %i.ln, label %.preheader.i147, label %horizontalAccumulateF.exit

.preheader.i147:                                  ; preds = %.loopexit.i150, %.preheader.lr.ph.i146
  %.2113146.i = phi i32 [ %.2113143.i, %.preheader.lr.ph.i146 ], [ %.2113.i, %.loopexit.i150 ]
  %.3145.i = phi ptr [ %i.li, %.preheader.lr.ph.i146 ], [ %i.ly, %.loopexit.i150 ]
  %.3117144.i = phi ptr [ %i.lj, %.preheader.lr.ph.i146 ], [ %i.lz, %.loopexit.i150 ]
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.preheader.i147
  %.4118.i = phi ptr [ %i.lz, %bb.ab ], [ %.3117144.i, %.preheader.i147 ] ; 2 uses
  %.4.i148 = phi ptr [ %i.ly, %bb.ab ], [ %.3145.i, %.preheader.i147 ] ; 4 uses
  %.0.i149 = phi i32 [ %i.lo, %bb.ab ], [ %i.gn, %.preheader.i147 ] ; 2 uses
  %i.lo = add nsw i32 %.0.i149, -1
  %i.lp = load i16, ptr %.4.i148, align 2, !tbaa !59
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %.4.i148, i64 %i.lm ; 2 uses
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !59
  %i.ls = add i16 %i.lr, %i.lp
  store i16 %i.ls, ptr %i.lq, align 2, !tbaa !59
  %i.lt = load i16, ptr %.4.i148, align 2, !tbaa !59
  %i.lu = and i16 %i.lt, 2047
  %i.lv = zext nneg i16 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.lv
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !59
  store i16 %i.lx, ptr %.4118.i, align 2, !tbaa !59
  %i.ly = getelementptr inbounds nuw i8, ptr %.4.i148, i64 2 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.4118.i, i64 2 ; 2 uses
  %i.ma = icmp sgt i32 %.0.i149, 1
  br i1 %i.ma, label %bb.ab, label %.loopexit.i150

bb.ac:                                            ; preds = %bb.r
  %i.mb = load i16, ptr %i.j, align 8, !tbaa !79  ; 3 uses
  %i.mc = zext i16 %i.mb to i32                   ; 5 uses
  %i.md = load ptr, ptr %i.bf, align 8, !tbaa !68 ; 16 uses
  %.not.i151 = icmp slt i32 %i.o, %i.mc
  br i1 %.not.i151, label %horizontalAccumulateF.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  switch i16 %i.mb, label %.preheader156.i [
    i16 3, label %bb.ae
    i16 4, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.me = load i16, ptr %.0122258, align 2, !tbaa !59
  %i.mf = and i16 %i.me, 2047                     ; 2 uses
  %i.mg = zext nneg i16 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.mg
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !52
  %i.mj = getelementptr inbounds nuw i8, ptr %.0122258, i64 2
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !59
  %i.ml = and i16 %i.mk, 2047                     ; 2 uses
  %i.mm = zext nneg i16 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.mm
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !52
  %i.mp = getelementptr inbounds nuw i8, ptr %.0122258, i64 4
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !59
  %i.mr = and i16 %i.mq, 2047                     ; 2 uses
  %i.ms = zext nneg i16 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.ms
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !52
  %4 = insertelement <3 x float> poison, float %i.mi, i64 0
  %5 = insertelement <3 x float> %4, float %i.mo, i64 1
  %6 = insertelement <3 x float> %5, float %i.mu, i64 2
  %7 = fmul <3 x float> %6, splat (float 2.048000e+03) ; 2 uses
  %8 = fcmp olt <3 x float> %7, splat (float 3.071000e+03)
  %9 = select <3 x i1> %8, <3 x float> %7, <3 x float> splat (float 3.071000e+03)
  %10 = fptoui <3 x float> %9 to <3 x i16>
  store <3 x i16> %10, ptr %.0123257, align 2, !tbaa !59
  br i1 %i.bd, label %.lr.ph175.preheader.i, label %horizontalAccumulateF.exit

.lr.ph175.preheader.i:                            ; preds = %bb.ae
  %i.mv = zext nneg i16 %i.mr to i32
  %i.mw = zext nneg i16 %i.ml to i32
  %i.mx = zext nneg i16 %i.mf to i32
  br label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %.lr.ph175.i, %.lr.ph175.preheader.i
  %.0136174.i = phi ptr [ %i.my, %.lr.ph175.i ], [ %.0122258, %.lr.ph175.preheader.i ] ; 3 uses
  %.0138173.i = phi i32 [ %i.ns, %.lr.ph175.i ], [ %i.mv, %.lr.ph175.preheader.i ]
  %.0140172.i = phi i32 [ %i.nk, %.lr.ph175.i ], [ %i.mw, %.lr.ph175.preheader.i ]
  %.0142171.i = phi i32 [ %i.nc, %.lr.ph175.i ], [ %i.mx, %.lr.ph175.preheader.i ]
  %.0144.in170.i = phi i32 [ %.0144.i, %.lr.ph175.i ], [ %i.o, %.lr.ph175.preheader.i ] ; 2 uses
  %.0147169.i = phi ptr [ %i.mz, %.lr.ph175.i ], [ %.0123257, %.lr.ph175.preheader.i ]
  %.0144.i = add nsw i32 %.0144.in170.i, -3
  %i.my = getelementptr inbounds nuw i8, ptr %.0136174.i, i64 6 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.0147169.i, i64 6 ; 2 uses
  %i.na = load i16, ptr %i.my, align 2, !tbaa !59
  %i.nb = zext i16 %i.na to i32
  %i.nc = add i32 %.0142171.i, %i.nb              ; 2 uses
  %i.nd = and i32 %i.nc, 2047
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.ne
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !52
  %i.nh = getelementptr inbounds nuw i8, ptr %.0136174.i, i64 8
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !59
  %i.nj = zext i16 %i.ni to i32
  %i.nk = add i32 %.0140172.i, %i.nj              ; 2 uses
  %i.nl = and i32 %i.nk, 2047
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.nm
  %i.no = load float, ptr %i.nn, align 4, !tbaa !52
  %i.np = getelementptr inbounds nuw i8, ptr %.0136174.i, i64 10
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !59
  %i.nr = zext i16 %i.nq to i32
  %i.ns = add i32 %.0138173.i, %i.nr              ; 2 uses
  %i.nt = and i32 %i.ns, 2047
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.nu
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !52
  %11 = insertelement <3 x float> poison, float %i.ng, i64 0
  %12 = insertelement <3 x float> %11, float %i.no, i64 1
  %13 = insertelement <3 x float> %12, float %i.nw, i64 2
  %14 = fmul <3 x float> %13, splat (float 2.048000e+03) ; 2 uses
  %15 = fcmp olt <3 x float> %14, splat (float 3.071000e+03)
  %16 = select <3 x i1> %15, <3 x float> %14, <3 x float> splat (float 3.071000e+03)
  %17 = fptoui <3 x float> %16 to <3 x i16>
  store <3 x i16> %17, ptr %i.mz, align 2, !tbaa !59
  %i.nx = icmp samesign ugt i32 %.0144.in170.i, 6
  br i1 %i.nx, label %.lr.ph175.i, label %horizontalAccumulateF.exit

bb.af:                                            ; preds = %bb.ad
  %i.ny = load <4 x i16>, ptr %.0122258, align 2, !tbaa !59
  %i.nz = and <4 x i16> %i.ny, splat (i16 2047)   ; 5 uses
  %i.oa = extractelement <4 x i16> %i.nz, i64 0
  %i.ob = zext nneg i16 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.ob
  %i.od = load float, ptr %i.oc, align 4, !tbaa !52
  %i.oe = extractelement <4 x i16> %i.nz, i64 1
  %i.of = zext nneg i16 %i.oe to i64
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.of
  %i.oh = load float, ptr %i.og, align 4, !tbaa !52
  %i.oi = extractelement <4 x i16> %i.nz, i64 2
  %i.oj = zext nneg i16 %i.oi to i64
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.oj
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !52
  %i.om = extractelement <4 x i16> %i.nz, i64 3
  %i.on = zext nneg i16 %i.om to i64
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.on
  %i.op = load float, ptr %i.oo, align 4, !tbaa !52
  %i.oq = insertelement <4 x float> poison, float %i.od, i64 0
  %i.or = insertelement <4 x float> %i.oq, float %i.oh, i64 1
  %i.os = insertelement <4 x float> %i.or, float %i.ol, i64 2
  %i.ot = insertelement <4 x float> %i.os, float %i.op, i64 3
  %i.ou = fmul <4 x float> %i.ot, splat (float 2.048000e+03) ; 2 uses
  %i.ov = fcmp olt <4 x float> %i.ou, splat (float 3.071000e+03)
  %i.ow = select <4 x i1> %i.ov, <4 x float> %i.ou, <4 x float> splat (float 3.071000e+03)
  %i.ox = fptoui <4 x float> %i.ow to <4 x i16>
  store <4 x i16> %i.ox, ptr %.0123257, align 2, !tbaa !59
  br i1 %i.bc, label %.lr.ph.preheader.i152, label %horizontalAccumulateF.exit

.lr.ph.preheader.i152:                            ; preds = %bb.af
  %i.oy = zext nneg <4 x i16> %i.nz to <4 x i32>
  br label %.lr.ph.i153

.lr.ph.i153:                                      ; preds = %.lr.ph.i153, %.lr.ph.preheader.i152
  %.1168.i = phi ptr [ %i.pa, %.lr.ph.i153 ], [ %.0122258, %.lr.ph.preheader.i152 ]
  %.1145.in163.i = phi i32 [ %.1145.i, %.lr.ph.i153 ], [ %i.o, %.lr.ph.preheader.i152 ] ; 2 uses
  %.1148162.i = phi ptr [ %i.pb, %.lr.ph.i153 ], [ %.0123257, %.lr.ph.preheader.i152 ]
  %i.oz = phi <4 x i32> [ %i.pe, %.lr.ph.i153 ], [ %i.oy, %.lr.ph.preheader.i152 ]
  %.1145.i = add nsw i32 %.1145.in163.i, -4
  %i.pa = getelementptr inbounds nuw i8, ptr %.1168.i, i64 8 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.1148162.i, i64 8 ; 2 uses
  %i.pc = load <4 x i16>, ptr %i.pa, align 2, !tbaa !59
  %i.pd = zext <4 x i16> %i.pc to <4 x i32>
  %i.pe = add <4 x i32> %i.oz, %i.pd              ; 5 uses
  %i.pf = extractelement <4 x i32> %i.pe, i64 0
  %i.pg = and i32 %i.pf, 2047
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.ph
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !52
  %i.pk = extractelement <4 x i32> %i.pe, i64 1
  %i.pl = and i32 %i.pk, 2047
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.pm
  %i.po = load float, ptr %i.pn, align 4, !tbaa !52
  %i.pp = extractelement <4 x i32> %i.pe, i64 2
  %i.pq = and i32 %i.pp, 2047
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.pr
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !52
  %i.pu = extractelement <4 x i32> %i.pe, i64 3
  %i.pv = and i32 %i.pu, 2047
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.pw
  %i.py = load float, ptr %i.px, align 4, !tbaa !52
  %i.pz = insertelement <4 x float> poison, float %i.pj, i64 0
  %i.qa = insertelement <4 x float> %i.pz, float %i.po, i64 1
  %i.qb = insertelement <4 x float> %i.qa, float %i.pt, i64 2
  %i.qc = insertelement <4 x float> %i.qb, float %i.py, i64 3
  %i.qd = fmul <4 x float> %i.qc, splat (float 2.048000e+03) ; 2 uses
  %i.qe = fcmp olt <4 x float> %i.qd, splat (float 3.071000e+03)
  %i.qf = select <4 x i1> %i.qe, <4 x float> %i.qd, <4 x float> splat (float 3.071000e+03)
  %i.qg = fptoui <4 x float> %i.qf to <4 x i16>
  store <4 x i16> %i.qg, ptr %i.pb, align 2, !tbaa !59
  %i.qh = icmp samesign ugt i32 %.1145.in163.i, 8
  br i1 %i.qh, label %.lr.ph.i153, label %horizontalAccumulateF.exit

.preheader156.i:                                  ; preds = %bb.ad, %.preheader156.i
  %.2149.i = phi ptr [ %i.qt, %.preheader156.i ], [ %.0123257, %bb.ad ] ; 2 uses
  %.2.i154 = phi ptr [ %i.qs, %.preheader156.i ], [ %.0122258, %bb.ad ] ; 2 uses
  %.0135.i = phi i32 [ %i.qi, %.preheader156.i ], [ %i.mc, %bb.ad ] ; 2 uses
  %i.qi = add nsw i32 %.0135.i, -1
  %i.qj = load i16, ptr %.2.i154, align 2, !tbaa !59
  %i.qk = and i16 %i.qj, 2047
  %i.ql = zext nneg i16 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.ql
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !52
  %i.qo = fmul float %i.qn, 2.048000e+03          ; 2 uses
  %i.qp = fcmp olt float %i.qo, 3.071000e+03
  %i.qq = select i1 %i.qp, float %i.qo, float 3.071000e+03
  %i.qr = fptoui float %i.qq to i16
  store i16 %i.qr, ptr %.2149.i, align 2, !tbaa !59
  %i.qs = getelementptr inbounds nuw i8, ptr %.2.i154, i64 2 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.2149.i, i64 2 ; 2 uses
  %i.qu = icmp samesign ugt i32 %.0135.i, 1
  br i1 %i.qu, label %.preheader156.i, label %.preheader154.i

.preheader154.i:                                  ; preds = %.preheader156.i
  %.2146176.i = sub nsw i32 %i.o, %i.mc           ; 2 uses
  %i.qv = icmp sgt i32 %.2146176.i, 0
  br i1 %i.qv, label %.preheader.lr.ph.i155, label %horizontalAccumulateF.exit

.preheader.lr.ph.i155:                            ; preds = %.preheader154.i
  %i.qw = zext i16 %i.mb to i64
  br label %.preheader.i156

.loopexit.i159:                                   ; preds = %bb.ag
  %.2146.i = sub nsw i32 %.2146179.i, %i.mc       ; 2 uses
  %i.qx = icmp sgt i32 %.2146.i, 0
  br i1 %i.qx, label %.preheader.i156, label %horizontalAccumulateF.exit

.preheader.i156:                                  ; preds = %.loopexit.i159, %.preheader.lr.ph.i155
  %.2146179.i = phi i32 [ %.2146176.i, %.preheader.lr.ph.i155 ], [ %.2146.i, %.loopexit.i159 ]
  %.3178.i = phi ptr [ %i.qs, %.preheader.lr.ph.i155 ], [ %i.rl, %.loopexit.i159 ]
  %.3150177.i = phi ptr [ %i.qt, %.preheader.lr.ph.i155 ], [ %i.rm, %.loopexit.i159 ]
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.preheader.i156
  %.4151.i = phi ptr [ %i.rm, %bb.ag ], [ %.3150177.i, %.preheader.i156 ] ; 2 uses
  %.4.i157 = phi ptr [ %i.rl, %bb.ag ], [ %.3178.i, %.preheader.i156 ] ; 3 uses
  %.0.i158 = phi i32 [ %i.qy, %bb.ag ], [ %i.mc, %.preheader.i156 ] ; 2 uses
  %i.qy = add nsw i32 %.0.i158, -1
  %i.qz = load i16, ptr %.4.i157, align 2, !tbaa !59
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %.4.i157, i64 %i.qw ; 2 uses
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !59
  %i.rc = add i16 %i.rb, %i.qz                    ; 2 uses
  store i16 %i.rc, ptr %i.ra, align 2, !tbaa !59
  %i.rd = and i16 %i.rc, 2047
  %i.re = zext nneg i16 %i.rd to i64
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.re
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !52
  %i.rh = fmul float %i.rg, 2.048000e+03          ; 2 uses
  %i.ri = fcmp olt float %i.rh, 3.071000e+03
  %i.rj = select i1 %i.ri, float %i.rh, float 3.071000e+03
  %i.rk = fptoui float %i.rj to i16
  store i16 %i.rk, ptr %.4151.i, align 2, !tbaa !59
  %i.rl = getelementptr inbounds nuw i8, ptr %.4.i157, i64 2 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.4151.i, i64 2 ; 2 uses
  %i.rn = icmp sgt i32 %.0.i158, 1
  br i1 %i.rn, label %bb.ag, label %.loopexit.i159

bb.ah:                                            ; preds = %bb.r
  %i.ro = load i16, ptr %i.j, align 8, !tbaa !79  ; 4 uses
  %i.rp = zext i16 %i.ro to i32                   ; 15 uses
  %.not.i160 = icmp slt i32 %i.o, %i.rp
  br i1 %.not.i160, label %horizontalAccumulateF.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  switch i16 %i.ro, label %iter.check438 [
    i16 3, label %bb.aj
    i16 4, label %bb.ak
  ]

iter.check438:                                    ; preds = %bb.ai
  %i.rq = icmp ne i16 %i.ro, 0
  %umin.neg = sext i1 %i.rq to i32
  %i.rr = add nsw i32 %umin.neg, %i.rp            ; 3 uses
  %i.rs = zext i32 %i.rr to i64
  %i.rt = add nuw nsw i64 %i.rs, 1                ; 5 uses
  %min.iters.check420 = icmp ult i32 %i.rr, 3
  %i.ru = add i64 %i.bk, %.0123257419
  %diff.check = icmp ult i64 %i.ru, 32
  %or.cond = select i1 %min.iters.check420, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader107.i.preheader, label %vector.main.loop.iter.check421

vector.main.loop.iter.check421:                   ; preds = %iter.check438
  %min.iters.check422 = icmp ult i32 %i.rr, 15
  br i1 %min.iters.check422, label %vec.epilog.ph442, label %vector.ph423

vector.ph423:                                     ; preds = %vector.main.loop.iter.check421
  %n.mod.vf424 = and i64 %i.rt, 12
  %n.vec425 = and i64 %i.rt, 8589934576           ; 5 uses
  %i.rv = shl nuw nsw i64 %n.vec425, 1            ; 2 uses
  %i.rw = getelementptr i8, ptr %.0123257, i64 %i.rv ; 2 uses
  %i.rx = getelementptr i8, ptr %.0122258, i64 %i.rv ; 2 uses
  %i.ry = trunc i64 %n.vec425 to i32
  %i.rz = sub i32 %i.rp, %i.ry
  br label %vector.body426

vector.body426:                                   ; preds = %vector.body426, %vector.ph423
  %index427 = phi i64 [ 0, %vector.ph423 ], [ %index.next432, %vector.body426 ] ; 2 uses
  %i.sa = shl i64 %index427, 1                    ; 2 uses
  %next.gep428 = getelementptr i8, ptr %.0123257, i64 %i.sa ; 2 uses
  %next.gep429 = getelementptr i8, ptr %.0122258, i64 %i.sa ; 2 uses
  %i.sb = getelementptr i8, ptr %next.gep429, i64 16
  %wide.load430 = load <8 x i16>, ptr %next.gep429, align 2, !tbaa !59
  %wide.load431 = load <8 x i16>, ptr %i.sb, align 2, !tbaa !59
  %i.sc = and <8 x i16> %wide.load430, splat (i16 2047)
  %i.sd = and <8 x i16> %wide.load431, splat (i16 2047)
  %i.se = getelementptr i8, ptr %next.gep428, i64 16
  store <8 x i16> %i.sc, ptr %next.gep428, align 2, !tbaa !59
  store <8 x i16> %i.sd, ptr %i.se, align 2, !tbaa !59
  %index.next432 = add nuw i64 %index427, 16      ; 2 uses
  %i.sf = icmp eq i64 %index.next432, %n.vec425
  br i1 %i.sf, label %middle.block433, label %vector.body426, !llvm.loop !95

middle.block433:                                  ; preds = %vector.body426
end_hunk_1

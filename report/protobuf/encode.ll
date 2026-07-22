inline.NumInlined: 202
inline.NumDeleted: 88
begin_hunk_0_@encode_msgset_item:bb.a
  %.not.i.i21 = icmp eq ptr %.0.i17, %i.w
  br i1 %.not.i.i21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %encode_varint.exit19
  %i.x = getelementptr inbounds i8, ptr %.0.i17, i64 -1 ; 2 uses
  store i8 26, ptr %i.x, align 1, !tbaa !15
  br label %encode_tag.exit23

bb.j:                                             ; preds = %encode_varint.exit19
  %i.y = tail call fastcc ptr @encode_longvarint(ptr noundef nonnull %.0.i17, ptr noundef nonnull %1, i64 noundef 26)
  br label %encode_tag.exit23

encode_tag.exit23:                                ; preds = %bb.i, %bb.j
  %.0.i.i22 = phi ptr [ %i.x, %bb.i ], [ %i.y, %bb.j ] ; 3 uses
  %.val = load i32, ptr %2, align 8, !tbaa !70    ; 3 uses
  %i.z = zext i32 %.val to i64
  %i.aa = icmp ult i32 %.val, 128
  br i1 %i.aa, label %bb.k, label %bb.m

bb.k:                                             ; preds = %encode_tag.exit23
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !14
  %.not.i = icmp eq ptr %.0.i.i22, %i.ab
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds i8, ptr %.0.i.i22, i64 -1 ; 2 uses
  %i.ad = trunc nuw nsw i32 %.val to i8
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !15
  br label %encode_varint.exit

bb.m:                                             ; preds = %bb.k, %encode_tag.exit23
  %i.ae = tail call fastcc ptr @encode_longvarint(ptr noundef nonnull %.0.i.i22, ptr noundef nonnull %1, i64 noundef %i.z)
  br label %encode_varint.exit

encode_varint.exit:                               ; preds = %bb.l, %bb.m
  %.0.i = phi ptr [ %i.ac, %bb.l ], [ %i.ae, %bb.m ] ; 3 uses
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !14
  %.not.i.i24 = icmp eq ptr %.0.i, %i.af
  br i1 %.not.i.i24, label %bb.o, label %bb.n

bb.n:                                             ; preds = %encode_varint.exit
  %i.ag = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 2 uses
  store i8 16, ptr %i.ag, align 1, !tbaa !15
  br label %encode_tag.exit26

bb.o:                                             ; preds = %encode_varint.exit
  %i.ah = tail call fastcc ptr @encode_longvarint(ptr noundef nonnull %.0.i, ptr noundef nonnull %1, i64 noundef 16)
  br label %encode_tag.exit26

encode_tag.exit26:                                ; preds = %bb.n, %bb.o
  %.0.i.i25 = phi ptr [ %i.ag, %bb.n ], [ %i.ah, %bb.o ] ; 3 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !14
  %.not.i.i27 = icmp eq ptr %.0.i.i25, %i.ai
  br i1 %.not.i.i27, label %bb.q, label %bb.p

bb.p:                                             ; preds = %encode_tag.exit26
  %i.aj = getelementptr inbounds i8, ptr %.0.i.i25, i64 -1 ; 2 uses
  store i8 11, ptr %i.aj, align 1, !tbaa !15
  br label %encode_tag.exit29

bb.q:                                             ; preds = %encode_tag.exit26
  %i.ak = tail call fastcc ptr @encode_longvarint(ptr noundef nonnull %.0.i.i25, ptr noundef nonnull %1, i64 noundef 11)
  br label %encode_tag.exit29

encode_tag.exit29:                                ; preds = %bb.p, %bb.q
  %.0.i.i28 = phi ptr [ %i.aj, %bb.p ], [ %i.ak, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.0.i.i28
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @encode_array(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load i16, ptr %i.c, align 4, !tbaa !55
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73   ; 15 uses
  %i.h = getelementptr i8, ptr %3, i64 11
  %.val274 = load i8, ptr %i.h, align 1, !tbaa !39
  %i.i = and i8 %.val274, 4
  %.not314 = icmp eq i8 %i.i, 0                   ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %0 to i64
  %.neg = sub i64 %i.m, %i.l
  %i.n = icmp eq ptr %i.g, null
  br i1 %i.n, label %encode_tag.exit310, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.g, i64 8
  %.val273 = load i64, ptr %i.o, align 8, !tbaa !47 ; 14 uses
  %i.p = icmp eq i64 %.val273, 0
  br i1 %i.p, label %encode_tag.exit310, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.r = load i8, ptr %i.q, align 2, !tbaa !69
  switch i8 %i.r, label %.loopexit [
    i8 1, label %bb.d
    i8 2, label %bb.g
    i8 16, label %bb.j
    i8 6, label %bb.j
    i8 7, label %bb.m
    i8 15, label %bb.m
    i8 3, label %bb.p
    i8 4, label %bb.p
    i8 13, label %bb.aa
    i8 5, label %bb.al
    i8 14, label %bb.al
    i8 8, label %bb.aw
    i8 17, label %bb.bg
    i8 18, label %bb.br
    i8 9, label %bb.cc
    i8 12, label %bb.cc
    i8 10, label %bb.cm
    i8 11, label %bb.cw
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %.not314, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %3, align 4, !tbaa !66
  %i.t = shl i32 %i.s, 3
  %i.u = or disjoint i32 %i.t, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.v = phi i32 [ %i.u, %bb.e ], [ 0, %bb.d ]
  %.val290 = load i64, ptr %i.g, align 8, !tbaa !75
  %i.w = tail call fastcc ptr @encode_fixedarray(ptr noundef %0, ptr noundef %1, i64 %.val290, i64 %.val273, i64 noundef 8, i32 noundef %i.v)
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  br i1 %.not314, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %3, align 4, !tbaa !66
  %i.y = shl i32 %i.x, 3
  %i.z = or disjoint i32 %i.y, 5
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aa = phi i32 [ %i.z, %bb.h ], [ 0, %bb.g ]
  %.val288 = load i64, ptr %i.g, align 8, !tbaa !75
  %i.ab = tail call fastcc ptr @encode_fixedarray(ptr noundef %0, ptr noundef %1, i64 %.val288, i64 %.val273, i64 noundef 4, i32 noundef %i.aa)
  br label %.loopexit

bb.j:                                             ; preds = %bb.c, %bb.c
  br i1 %.not314, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr %3, align 4, !tbaa !66
  %i.ad = shl i32 %i.ac, 3
  %i.ae = or disjoint i32 %i.ad, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.af = phi i32 [ %i.ae, %bb.k ], [ 0, %bb.j ]
  %.val286 = load i64, ptr %i.g, align 8, !tbaa !75
  %i.ag = tail call fastcc ptr @encode_fixedarray(ptr noundef %0, ptr noundef %1, i64 %.val286, i64 %.val273, i64 noundef 8, i32 noundef %i.af)
  br label %.loopexit

bb.m:                                             ; preds = %bb.c, %bb.c
  br i1 %.not314, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = load i32, ptr %3, align 4, !tbaa !66
  %i.ai = shl i32 %i.ah, 3
  %i.aj = or disjoint i32 %i.ai, 5
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ak = phi i32 [ %i.aj, %bb.n ], [ 0, %bb.m ]
  %.val284 = load i64, ptr %i.g, align 8, !tbaa !75
  %i.al = tail call fastcc ptr @encode_fixedarray(ptr noundef %0, ptr noundef %1, i64 %.val284, i64 %.val273, i64 noundef 4, i32 noundef %i.ak)
  br label %.loopexit

bb.p:                                             ; preds = %bb.c, %bb.c
  %.val283 = load i64, ptr %i.g, align 8, !tbaa !75
  %i.am = and i64 %.val283, -8
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.val273
  br i1 %.not314, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ap = load i32, ptr %3, align 4, !tbaa !66
  %i.aq = shl i32 %i.ap, 3
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ar = phi i32 [ %i.aq, %bb.q ], [ 0, %bb.p ]  ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %.not222 = icmp eq i32 %i.ar, 0
  %i.at = zext i32 %i.ar to i64
  %i.au = icmp ult i32 %i.ar, 128
  %i.av = trunc nuw i32 %i.ar to i8
  br label %bb.s

bb.s:                                             ; preds = %encode_varint.exit261, %bb.r
  %.0190 = phi ptr [ %i.ao, %bb.r ], [ %i.aw, %encode_varint.exit261 ]
  %.0188 = phi ptr [ %0, %bb.r ], [ %.1, %encode_varint.exit261 ] ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.0190, i64 -8 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !27 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 128
  br i1 %i.ay, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !14
  %.not.i263 = icmp eq ptr %.0188, %i.az
  br i1 %.not.i263, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = getelementptr inbounds i8, ptr %.0188, i64 -1 ; 2 uses
  %i.bb = trunc nuw nsw i64 %i.ax to i8
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !15
  br label %encode_varint.exit264

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bc = tail call fastcc ptr @encode_longvarint(ptr noundef %.0188, ptr noundef nonnull %1, i64 noundef %i.ax)
  br label %encode_varint.exit264

encode_varint.exit264:                            ; preds = %bb.u, %bb.v
  %.0.i262 = phi ptr [ %i.ba, %bb.u ], [ %i.bc, %bb.v ] ; 4 uses
  br i1 %.not222, label %encode_varint.exit261, label %bb.w

bb.w:                                             ; preds = %encode_varint.exit264
  br i1 %i.au, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !14
  %.not.i260 = icmp eq ptr %.0.i262, %i.bd
  br i1 %.not.i260, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = getelementptr inbounds i8, ptr %.0.i262, i64 -1 ; 2 uses
  store i8 %i.av, ptr %i.be, align 1, !tbaa !15
  br label %encode_varint.exit261

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.bf = tail call fastcc ptr @encode_longvarint(ptr noundef nonnull %.0.i262, ptr noundef nonnull %1, i64 noundef %i.at)
  br label %encode_varint.exit261

encode_varint.exit261:                            ; preds = %bb.z, %bb.y, %encode_varint.exit264
  %.1 = phi ptr [ %.0.i262, %encode_varint.exit264 ], [ %i.be, %bb.y ], [ %i.bf, %bb.z ] ; 2 uses
  %.not223 = icmp eq ptr %i.aw, %i.an
  br i1 %.not223, label %.loopexit, label %bb.s, !llvm.loop !76

bb.aa:                                            ; preds = %bb.c
  %.val282 = load i64, ptr %i.g, align 8, !tbaa !75
  %i.bg = and i64 %.val282, -8
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.val273
  br i1 %.not314, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bj = load i32, ptr %3, align 4, !tbaa !66
  %i.bk = shl i32 %i.bj, 3
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.bl = phi i32 [ %i.bk, %bb.ab ], [ 0, %bb.aa ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %.not220 = icmp eq i32 %i.bl, 0
  %i.bn = zext i32 %i.bl to i64
  %i.bo = icmp ult i32 %i.bl, 128
  %i.bp = trunc nuw i32 %i.bl to i8
  br label %bb.ad

bb.ad:                                            ; preds = %encode_varint.exit255, %bb.ac
  %.0192 = phi ptr [ %i.bi, %bb.ac ], [ %i.bq, %encode_varint.exit255 ]
  %.2 = phi ptr [ %0, %bb.ac ], [ %.3, %encode_varint.exit255 ] ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %.0192, i64 -4 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3  ; 3 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = icmp ult i32 %i.br, 128
  br i1 %i.bt, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bu = load ptr, ptr %i.bm, align 8, !tbaa !14
  %.not.i257 = icmp eq ptr %.2, %i.bu
  br i1 %.not.i257, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bv = getelementptr inbounds i8, ptr %.2, i64 -1 ; 2 uses
  %i.bw = trunc nuw nsw i32 %i.br to i8
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !15
  br label %encode_varint.exit258

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.bx = tail call fastcc ptr @encode_longvarint(ptr noundef %.2, ptr noundef nonnull %1, i64 noundef %i.bs)
  br label %encode_varint.exit258

encode_varint.exit258:                            ; preds = %bb.af, %bb.ag
  %.0.i256 = phi ptr [ %i.bv, %bb.af ], [ %i.bx, %bb.ag ] ; 4 uses
  br i1 %.not220, label %encode_varint.exit255, label %bb.ah

bb.ah:                                            ; preds = %encode_varint.exit258
  br i1 %i.bo, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !14
  %.not.i254 = icmp eq ptr %.0.i256, %i.by
  br i1 %.not.i254, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bz = getelementptr inbounds i8, ptr %.0.i256, i64 -1 ; 2 uses
  store i8 %i.bp, ptr %i.bz, align 1, !tbaa !15
  br label %encode_varint.exit255

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.ca = tail call fastcc ptr @encode_longvarint(ptr noundef nonnull %.0.i256, ptr noundef nonnull %1, i64 noundef %i.bn)
  br label %encode_varint.exit255

encode_varint.exit255:                            ; preds = %bb.ak, %bb.aj, %encode_varint.exit258
  %.3 = phi ptr [ %.0.i256, %encode_varint.exit258 ], [ %i.bz, %bb.aj ], [ %i.ca, %bb.ak ] ; 2 uses
  %.not221 = icmp eq ptr %i.bq, %i.bh
  br i1 %.not221, label %.loopexit, label %bb.ad, !llvm.loop !77

bb.al:                                            ; preds = %bb.c, %bb.c
  %.val281 = load i64, ptr %i.g, align 8, !tbaa !75
  %i.cb = and i64 %.val281, -8
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.val273
  br i1 %.not314, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ce = load i32, ptr %3, align 4, !tbaa !66
  %i.cf = shl i32 %i.ce, 3
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.cg = phi i32 [ %i.cf, %bb.am ], [ 0, %bb.al ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %.not218 = icmp eq i32 %i.cg, 0
  %i.ci = zext i32 %i.cg to i64
  %i.cj = icmp ult i32 %i.cg, 128
  %i.ck = trunc nuw i32 %i.cg to i8
  br label %bb.ao

bb.ao:                                            ; preds = %encode_varint.exit249, %bb.an
  %.0193 = phi ptr [ %i.cd, %bb.an ], [ %i.cl, %encode_varint.exit249 ]
  %.4 = phi ptr [ %0, %bb.an ], [ %.5, %encode_varint.exit249 ] ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.0193, i64 -4 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3  ; 3 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp ult i32 %i.cm, 128
  br i1 %i.co, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.cp = load ptr, ptr %i.ch, align 8, !tbaa !14
  %.not.i251 = icmp eq ptr %.4, %i.cp
  br i1 %.not.i251, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cq = getelementptr inbounds i8, ptr %.4, i64 -1 ; 2 uses
  %i.cr = trunc nuw nsw i32 %i.cm to i8
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !15
  br label %encode_varint.exit252

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %i.cs = tail call fastcc ptr @encode_longvarint(ptr noundef %.4, ptr noundef nonnull %1, i64 noundef %i.cn)
  br label %encode_varint.exit252

encode_varint.exit252:                            ; preds = %bb.aq, %bb.ar
  %.0.i250 = phi ptr [ %i.cq, %bb.aq ], [ %i.cs, %bb.ar ] ; 4 uses
  br i1 %.not218, label %encode_varint.exit249, label %bb.as

bb.as:                                            ; preds = %encode_varint.exit252
  br i1 %i.cj, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ct = load ptr, ptr %i.ch, align 8, !tbaa !14
  %.not.i248 = icmp eq ptr %.0.i250, %i.ct
  br i1 %.not.i248, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cu = getelementptr inbounds i8, ptr %.0.i250, i64 -1 ; 2 uses
  store i8 %i.ck, ptr %i.cu, align 1, !tbaa !15
  br label %encode_varint.exit249

bb.av:                                            ; preds = %bb.at, %bb.as
  %i.cv = tail call fastcc ptr @encode_longvarint(ptr noundef nonnull %.0.i250, ptr noundef nonnull %1, i64 noundef %i.ci)
  br label %encode_varint.exit249

encode_varint.exit249:                            ; preds = %bb.av, %bb.au, %encode_varint.exit252
  %.5 = phi ptr [ %.0.i250, %encode_varint.exit252 ], [ %i.cu, %bb.au ], [ %i.cv, %bb.av ] ; 2 uses
  %.not219 = icmp eq ptr %i.cl, %i.cc
  br i1 %.not219, label %.loopexit, label %bb.ao, !llvm.loop !78

bb.aw:                                            ; preds = %bb.c
  %.val280 = load i64, ptr %i.g, align 8, !tbaa !75
  %i.cw = and i64 %.val280, -8
  %i.cx = inttoptr i64 %i.cw to ptr               ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.val273
  br i1 %.not314, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.cz = load i32, ptr %3, align 4, !tbaa !66
  %i.da = shl i32 %i.cz, 3
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.db = phi i32 [ %i.da, %bb.ax ], [ 0, %bb.aw ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %.not216 = icmp eq i32 %i.db, 0
  %i.dd = zext i32 %i.db to i64
  %i.de = icmp ult i32 %i.db, 128
  %i.df = trunc nuw i32 %i.db to i8
  br label %bb.az

bb.az:                                            ; preds = %encode_varint.exit243, %bb.ay
  %.0195 = phi ptr [ %i.cy, %bb.ay ], [ %i.dg, %encode_varint.exit243 ]
  %.6 = phi ptr [ %0, %bb.ay ], [ %.7, %encode_varint.exit243 ] ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.0195, i64 -1 ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !79, !range !45, !noundef !46 ; 2 uses
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !14
  %.not.i245 = icmp eq ptr %.6, %i.di
  br i1 %.not.i245, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dj = getelementptr inbounds i8, ptr %.6, i64 -1 ; 2 uses
  store i8 %i.dh, ptr %i.dj, align 1, !tbaa !15
  br label %encode_varint.exit246

bb.bb:                                            ; preds = %bb.az
  %i.dk = zext nneg i8 %i.dh to i64
  %i.dl = tail call fastcc ptr @encode_longvarint(ptr noundef %.6, ptr noundef nonnull %1, i64 noundef %i.dk)
  br label %encode_varint.exit246

encode_varint.exit246:                            ; preds = %bb.ba, %bb.bb
  %.0.i244 = phi ptr [ %i.dj, %bb.ba ], [ %i.dl, %bb.bb ] ; 4 uses
  br i1 %.not216, label %encode_varint.exit243, label %bb.bc

bb.bc:                                            ; preds = %encode_varint.exit246
  br i1 %i.de, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.dm = load ptr, ptr %i.dc, align 8, !tbaa !14
  %.not.i242 = icmp eq ptr %.0.i244, %i.dm
  br i1 %.not.i242, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dn = getelementptr inbounds i8, ptr %.0.i244, i64 -1 ; 2 uses
  store i8 %i.df, ptr %i.dn, align 1, !tbaa !15
  br label %encode_varint.exit243

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %i.do = tail call fastcc ptr @encode_longvarint(ptr noundef nonnull %.0.i244, ptr noundef nonnull %1, i64 noundef %i.dd)
  br label %encode_varint.exit243

encode_varint.exit243:                            ; preds = %bb.bf, %bb.be, %encode_varint.exit246
  %.7 = phi ptr [ %.0.i244, %encode_varint.exit246 ], [ %i.dn, %bb.be ], [ %i.do, %bb.bf ] ; 2 uses
  %.not217 = icmp eq ptr %i.dg, %i.cx
  br i1 %.not217, label %.loopexit, label %bb.az, !llvm.loop !80

bb.bg:                                            ; preds = %bb.c
  %.val279 = load i64, ptr %i.g, align 8, !tbaa !75
  %i.dp = and i64 %.val279, -8
  %i.dq = inttoptr i64 %i.dp to ptr               ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.val273
  br i1 %.not314, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ds = load i32, ptr %3, align 4, !tbaa !66
  %i.dt = shl i32 %i.ds, 3
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.du = phi i32 [ %i.dt, %bb.bh ], [ 0, %bb.bg ] ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %.not214 = icmp eq i32 %i.du, 0
  %i.dw = zext i32 %i.du to i64
  %i.dx = icmp ult i32 %i.du, 128
  %i.dy = trunc nuw i32 %i.du to i8
  br label %bb.bj

bb.bj:                                            ; preds = %encode_varint.exit237, %bb.bi
  %.0196 = phi ptr [ %i.dr, %bb.bi ], [ %i.dz, %encode_varint.exit237 ]
  %.8 = phi ptr [ %0, %bb.bi ], [ %.9, %encode_varint.exit237 ] ; 3 uses
  %i.dz = getelementptr inbounds i8, ptr %.0196, i64 -4 ; 3 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3  ; 2 uses
  %i.eb = shl i32 %i.ea, 1
  %i.ec = ashr i32 %i.ea, 31
  %i.ed = xor i32 %i.eb, %i.ec                    ; 3 uses
  %i.ee = zext i32 %i.ed to i64
  %i.ef = icmp ult i32 %i.ed, 128
  br i1 %i.ef, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.eg = load ptr, ptr %i.dv, align 8, !tbaa !14
  %.not.i239 = icmp eq ptr %.8, %i.eg
  br i1 %.not.i239, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.eh = getelementptr inbounds i8, ptr %.8, i64 -1 ; 2 uses
  %i.ei = trunc nuw nsw i32 %i.ed to i8
  store i8 %i.ei, ptr %i.eh, align 1, !tbaa !15
  br label %encode_varint.exit240

bb.bm:                                            ; preds = %bb.bk, %bb.bj
  %i.ej = tail call fastcc ptr @encode_longvarint(ptr noundef %.8, ptr noundef nonnull %1, i64 noundef %i.ee)
  br label %encode_varint.exit240

encode_varint.exit240:                            ; preds = %bb.bl, %bb.bm
  %.0.i238 = phi ptr [ %i.eh, %bb.bl ], [ %i.ej, %bb.bm ] ; 4 uses
  br i1 %.not214, label %encode_varint.exit237, label %bb.bn

bb.bn:                                            ; preds = %encode_varint.exit240
  br i1 %i.dx, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.ek = load ptr, ptr %i.dv, align 8, !tbaa !14
  %.not.i236 = icmp eq ptr %.0.i238, %i.ek
  br i1 %.not.i236, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.el = getelementptr inbounds i8, ptr %.0.i238, i64 -1 ; 2 uses
  store i8 %i.dy, ptr %i.el, align 1, !tbaa !15
  br label %encode_varint.exit237

bb.bq:                                            ; preds = %bb.bo, %bb.bn
  %i.em = tail call fastcc ptr @encode_longvarint(ptr noundef nonnull %.0.i238, ptr noundef nonnull %1, i64 noundef %i.dw)
  br label %encode_varint.exit237

encode_varint.exit237:                            ; preds = %bb.bq, %bb.bp, %encode_varint.exit240
  %.9 = phi ptr [ %.0.i238, %encode_varint.exit240 ], [ %i.el, %bb.bp ], [ %i.em, %bb.bq ] ; 2 uses
  %.not215 = icmp eq ptr %i.dz, %i.dq
  br i1 %.not215, label %.loopexit, label %bb.bj, !llvm.loop !81

bb.br:                                            ; preds = %bb.c
  %.val278 = load i64, ptr %i.g, align 8, !tbaa !75
  %i.en = and i64 %.val278, -8
  %i.eo = inttoptr i64 %i.en to ptr               ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.val273
  br i1 %.not314, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.eq = load i32, ptr %3, align 4, !tbaa !66
  %i.er = shl i32 %i.eq, 3
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.es = phi i32 [ %i.er, %bb.bs ], [ 0, %bb.br ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %.not212 = icmp eq i32 %i.es, 0
  %i.eu = zext i32 %i.es to i64
  %i.ev = icmp ult i32 %i.es, 128
  %i.ew = trunc nuw i32 %i.es to i8
  br label %bb.bu

bb.bu:                                            ; preds = %encode_varint.exit, %bb.bt
  %.0194 = phi ptr [ %i.ep, %bb.bt ], [ %i.ex, %encode_varint.exit ]
  %.10 = phi ptr [ %0, %bb.bt ], [ %.11, %encode_varint.exit ] ; 3 uses
  %i.ex = getelementptr inbounds i8, ptr %.0194, i64 -8 ; 3 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !27 ; 2 uses
  %i.ez = shl i64 %i.ey, 1
  %i.fa = ashr i64 %i.ey, 63
  %i.fb = xor i64 %i.ez, %i.fa                    ; 3 uses
  %i.fc = icmp ult i64 %i.fb, 128
  br i1 %i.fc, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.fd = load ptr, ptr %i.et, align 8, !tbaa !14
  %.not.i233 = icmp eq ptr %.10, %i.fd
  br i1 %.not.i233, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fe = getelementptr inbounds i8, ptr %.10, i64 -1 ; 2 uses
  %i.ff = trunc nuw nsw i64 %i.fb to i8
  store i8 %i.ff, ptr %i.fe, align 1, !tbaa !15
  br label %encode_varint.exit234

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %i.fg = tail call fastcc ptr @encode_longvarint(ptr noundef %.10, ptr noundef nonnull %1, i64 noundef %i.fb)
  br label %encode_varint.exit234

encode_varint.exit234:                            ; preds = %bb.bw, %bb.bx
  %.0.i232 = phi ptr [ %i.fe, %bb.bw ], [ %i.fg, %bb.bx ] ; 4 uses
  br i1 %.not212, label %encode_varint.exit, label %bb.by

bb.by:                                            ; preds = %encode_varint.exit234
  br i1 %i.ev, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.fh = load ptr, ptr %i.et, align 8, !tbaa !14
  %.not.i231 = icmp eq ptr %.0.i232, %i.fh
  br i1 %.not.i231, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fi = getelementptr inbounds i8, ptr %.0.i232, i64 -1 ; 2 uses
  store i8 %i.ew, ptr %i.fi, align 1, !tbaa !15
  br label %encode_varint.exit

bb.cb:                                            ; preds = %bb.bz, %bb.by
  %i.fj = tail call fastcc ptr @encode_longvarint(ptr noundef nonnull %.0.i232, ptr noundef nonnull %1, i64 noundef %i.eu)
  br label %encode_varint.exit

encode_varint.exit:                               ; preds = %bb.cb, %bb.ca, %encode_varint.exit234
  %.11 = phi ptr [ %.0.i232, %encode_varint.exit234 ], [ %i.fi, %bb.ca ], [ %i.fj, %bb.cb ] ; 2 uses
  %.not213 = icmp eq ptr %i.ex, %i.eo
  br i1 %.not213, label %.loopexit, label %bb.bu, !llvm.loop !82

bb.cc:                                            ; preds = %bb.c, %bb.c
  %.val277 = load i64, ptr %i.g, align 8, !tbaa !75
  %i.fk = and i64 %.val277, -8
  %i.fl = inttoptr i64 %i.fk to ptr               ; 2 uses
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %.val273
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  br label %bb.cd

bb.cd:                                            ; preds = %encode_tag.exit, %bb.cc
  %.0191 = phi ptr [ %i.fm, %bb.cc ], [ %i.fo, %encode_tag.exit ] ; 2 uses
  %.12 = phi ptr [ %0, %bb.cc ], [ %.0.i.i298, %encode_tag.exit ] ; 4 uses
  %i.fo = getelementptr inbounds i8, ptr %.0191, i64 -16 ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !83
  %i.fq = getelementptr inbounds i8, ptr %.0191, i64 -8 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !64 ; 5 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %encode_bytes.exit.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ft = load ptr, ptr %i.fn, align 8, !tbaa !14
  %i.fu = ptrtoint ptr %.12 to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = icmp ult i64 %i.fw, %i.fr
  br i1 %i.fx, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.fy = tail call fastcc ptr @encode_growbuffer(ptr noundef %.12, ptr noundef nonnull %1, i64 noundef %i.fr)
  br label %encode_bytes.exit

bb.cg:                                            ; preds = %bb.ce
  %i.fz = sub i64 0, %i.fr
  %i.ga = getelementptr inbounds i8, ptr %.12, i64 %i.fz
  br label %encode_bytes.exit

encode_bytes.exit:                                ; preds = %bb.cf, %bb.cg
  %.0.i.i = phi ptr [ %i.fy, %bb.cf ], [ %i.ga, %bb.cg ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr readonly align 1 %i.fp, i64 %i.fr, i1 false)
  %.pr = load i64, ptr %i.fq, align 8, !tbaa !64  ; 3 uses
  %i.gb = icmp ult i64 %.pr, 128
  br i1 %i.gb, label %encode_bytes.exit.thread, label %bb.ci

encode_bytes.exit.thread:                         ; preds = %bb.cd, %encode_bytes.exit
  %.0.i297312 = phi ptr [ %.0.i.i, %encode_bytes.exit ], [ %.12, %bb.cd ] ; 3 uses
  %i.gc = phi i64 [ %.pr, %encode_bytes.exit ], [ 0, %bb.cd ] ; 2 uses
  %i.gd = load ptr, ptr %i.fn, align 8, !tbaa !14
  %.not.i228 = icmp eq ptr %.0.i297312, %i.gd
  br i1 %.not.i228, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %encode_bytes.exit.thread
  %i.ge = getelementptr inbounds i8, ptr %.0.i297312, i64 -1 ; 2 uses
  %i.gf = trunc nuw nsw i64 %i.gc to i8
  store i8 %i.gf, ptr %i.ge, align 1, !tbaa !15
  br label %encode_length.exit229

bb.ci:                                            ; preds = %encode_bytes.exit.thread, %encode_bytes.exit
  %.0.i297313 = phi ptr [ %.0.i297312, %encode_bytes.exit.thread ], [ %.0.i.i, %encode_bytes.exit ]
  %i.gg = phi i64 [ %i.gc, %encode_bytes.exit.thread ], [ %.pr, %encode_bytes.exit ]
  %i.gh = tail call ptr @encode_longlength(ptr noundef %.0.i297313, ptr noundef nonnull %1, i64 noundef %i.gg)
  br label %encode_length.exit229

encode_length.exit229:                            ; preds = %bb.ch, %bb.ci
  %.0.i227 = phi ptr [ %i.ge, %bb.ch ], [ %i.gh, %bb.ci ] ; 3 uses
  %.val296 = load i32, ptr %3, align 4, !tbaa !66
  %i.gi = shl i32 %.val296, 3                     ; 2 uses
  %i.gj = or disjoint i32 %i.gi, 2                ; 2 uses
  %i.gk = zext i32 %i.gj to i64
  %i.gl = icmp ult i32 %i.gi, 128
  br i1 %i.gl, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %encode_length.exit229
  %i.gm = load ptr, ptr %i.fn, align 8, !tbaa !14
  %.not.i.i = icmp eq ptr %.0.i227, %i.gm
  br i1 %.not.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gn = getelementptr inbounds i8, ptr %.0.i227, i64 -1 ; 2 uses
  %i.go = trunc nuw i32 %i.gj to i8
  store i8 %i.go, ptr %i.gn, align 1, !tbaa !15
  br label %encode_tag.exit

bb.cl:                                            ; preds = %bb.cj, %encode_length.exit229
  %i.gp = tail call fastcc ptr @encode_longvarint(ptr noundef nonnull %.0.i227, ptr noundef nonnull %1, i64 noundef %i.gk)
  br label %encode_tag.exit

encode_tag.exit:                                  ; preds = %bb.ck, %bb.cl
  %.0.i.i298 = phi ptr [ %i.gn, %bb.ck ], [ %i.gp, %bb.cl ] ; 2 uses
  %.not211 = icmp eq ptr %i.fo, %i.fl
  br i1 %.not211, label %encode_tag.exit310, label %bb.cd, !llvm.loop !84

bb.cm:                                            ; preds = %bb.c
  %.val276 = load i64, ptr %i.g, align 8, !tbaa !75
  %i.gq = and i64 %.val276, -8
  %i.gr = inttoptr i64 %i.gq to ptr               ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gt = load i16, ptr %i.gs, align 4, !tbaa !85
  %i.gu = zext i16 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 2
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !15
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 236 ; 4 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !20
  %i.ha = add nsw i32 %i.gz, -1                   ; 2 uses
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !20
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.cn, label %.preheader

.preheader:                                       ; preds = %bb.cm
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %.val273
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  br label %bb.co

bb.cn:                                            ; preds = %bb.cm
  tail call fastcc void @encode_err(ptr noundef nonnull %1, i32 noundef 2) #11
  unreachable

bb.co:                                            ; preds = %.preheader, %encode_tag.exit304
  %.0189 = phi ptr [ %i.he, %encode_tag.exit304 ], [ %i.hc, %.preheader ]
  %.13 = phi ptr [ %.0.i.i302, %encode_tag.exit304 ], [ %0, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.he = getelementptr inbounds i8, ptr %.0189, i64 -8 ; 3 uses
  %.val295 = load i32, ptr %3, align 4, !tbaa !66
  %i.hf = shl i32 %.val295, 3                     ; 2 uses
  %i.hg = or disjoint i32 %i.hf, 4                ; 2 uses
  %i.hh = zext i32 %i.hg to i64
  %i.hi = icmp ult i32 %i.hf, 128
  br i1 %i.hi, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.hj = load ptr, ptr %i.hd, align 8, !tbaa !14
  %.not.i.i300 = icmp eq ptr %.13, %i.hj
  br i1 %.not.i.i300, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hk = getelementptr inbounds i8, ptr %.13, i64 -1 ; 2 uses
  %i.hl = trunc nuw i32 %i.hg to i8
  store i8 %i.hl, ptr %i.hk, align 1, !tbaa !15
  br label %encode_tag.exit301

bb.cr:                                            ; preds = %bb.cp, %bb.co
  %i.hm = tail call fastcc ptr @encode_longvarint(ptr noundef %.13, ptr noundef nonnull %1, i64 noundef %i.hh)
  br label %encode_tag.exit301

encode_tag.exit301:                               ; preds = %bb.cq, %bb.cr
  %.0.i.i299 = phi ptr [ %i.hk, %bb.cq ], [ %i.hm, %bb.cr ]
  %i.hn = load ptr, ptr %i.he, align 8, !tbaa !86
end_hunk_0

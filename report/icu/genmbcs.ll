inline.NumInlined: 21
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZL9MBCSWriteP12NewConverterPK20UConverterStaticDataP14UNewDataMemoryi:bb.a
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %wide.trip.count132
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !89

vector.ph141:                                     ; preds = %._crit_edge
  %i.bh = trunc nuw nsw i32 %. to i16
  %broadcast.splatinsert143 = insertelement <8 x i16> poison, i16 %i.bh, i64 0
  %broadcast.splat144 = shufflevector <8 x i16> %broadcast.splatinsert143, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph141
  %index146 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body145 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %index146 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %wide.load147 = load <8 x i16>, ptr %i.bi, align 2, !tbaa !42
  %wide.load148 = load <8 x i16>, ptr %i.bj, align 2, !tbaa !42
  %i.bk = add <8 x i16> %wide.load147, %broadcast.splat144
  %i.bl = add <8 x i16> %wide.load148, %broadcast.splat144
  store <8 x i16> %i.bk, ptr %i.bi, align 2, !tbaa !42
  store <8 x i16> %i.bl, ptr %i.bj, align 2, !tbaa !42
  %index.next149 = add nuw i64 %index146, 16      ; 2 uses
  %i.bm = icmp eq i64 %index.next149, %wide.trip.count132
  br i1 %i.bm, label %middle.block150, label %vector.body145, !llvm.loop !90

middle.block150:                                  ; preds = %vector.body145
  %i.bn = shl i32 %.0100, 1                       ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 454468 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !52
  %i.bq = shl i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !52
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 456522
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !9
  %.not113 = icmp eq i8 %i.bs, 0
  br i1 %.not113, label %bb.i, label %.sink.split

middle.block:                                     ; preds = %vector.body
  %i.bt = shl i32 %.0100, 2                       ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 456522
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !9
  %.not112 = icmp eq i8 %i.bv, 0
  br i1 %.not112, label %bb.i, label %bb.h

bb.h:                                             ; preds = %middle.block
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 456520
  %i.bx = load i16, ptr %i.bw, align 8, !tbaa !19 ; 2 uses
  %i.by = zext i16 %i.bx to i32
  %i.bz = add nuw nsw i32 %i.by, 1
  %i.ca = lshr i32 %i.bz, 6
  %i.cb = lshr i16 %i.bx, 8
  %i.cc = trunc nuw i16 %i.cb to i8
  br label %.sink.split

.sink.split:                                      ; preds = %middle.block150, %bb.h
  %.sink136 = phi i8 [ %i.cc, %bb.h ], [ 31, %middle.block150 ]
  %.1101.ph = phi i32 [ %i.bt, %bb.h ], [ %i.bn, %middle.block150 ]
  %.098.ph = phi i32 [ %i.ca, %bb.h ], [ 0, %middle.block150 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %.sink136, ptr %i.cd, align 2, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %middle.block, %middle.block150
  %.1101 = phi i32 [ %i.bt, %middle.block ], [ %i.bn, %middle.block150 ], [ %.1101.ph, %.sink.split ] ; 2 uses
  %.098 = phi i32 [ 0, %middle.block ], [ 0, %middle.block150 ], [ %.098.ph, %.sink.split ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 454468 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !52
  %i.cg = add i32 %i.cf, 3
  %i.ch = and i32 %i.cg, -4                       ; 3 uses
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !52
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.cj = select i1 %.not, i32 %i.ch, i32 0
  %.sink = select i1 %.not, i8 4, i8 5
  %.094 = select i1 %.not, i32 8, i32 10          ; 2 uses
  store i8 %.sink, ptr %4, align 4, !tbaa !17
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 4, ptr %i.ck, align 1, !tbaa !17
  %i.cl = or disjoint i32 %.094, %i.aq
  store i32 %i.cl, ptr %i.ci, align 4, !tbaa !86
  %i.cm = getelementptr inbounds nuw i8, ptr %i.av, i64 132112
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !91 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !92
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 65576 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !64 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !93
  %i.cs = shl nuw nsw i32 %.094, 2                ; 2 uses
  %i.ct = shl nsw i32 %i.cn, 10
  %i.cu = or disjoint i32 %i.ct, %i.cs
  %i.cv = shl i32 %i.cq, 3
  %i.cw = add i32 %i.cu, %i.cv                    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !94
  %i.cy = getelementptr inbounds nuw i8, ptr %i.av, i64 132124
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !41
  %i.da = shl nsw i32 %i.cz, 1
  %i.db = add i32 %i.da, %i.cw                    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !95
  %i.dd = shl nuw nsw i32 %., 1                   ; 2 uses
  %i.de = add i32 %.1101, %i.dd
  %i.df = add i32 %i.de, %i.db                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !96
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 %i.ch, ptr %i.dh, align 4, !tbaa !97
  %i.di = shl nuw nsw i32 %.098, 1                ; 2 uses
  %i.dj = add i32 %i.cj, %i.di
  %spec.select = add i32 %i.dj, %i.df             ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.av, i64 132129
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !66
  %i.dm = zext i8 %i.dl to i32                    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !98
  %i.do = and i32 %3, 2
  %.not117 = icmp eq i32 %i.do, 0
  br i1 %.not117, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dp = icmp ugt i32 %spec.select, 16777215
  br i1 %i.dp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dq = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.dr = zext i32 %spec.select to i64
  %i.ds = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dq, ptr noundef nonnull @.str.36, i64 noundef %i.dr) #16 ; 0 uses
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.dt = shl nuw i32 %spec.select, 8
  %i.du = or disjoint i32 %i.dt, %i.dm
  store i32 %i.du, ptr %i.dn, align 4, !tbaa !98
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  call void @udata_writeBlock(ptr noundef %2, ptr noundef nonnull %4, i32 noundef %i.cs)
  %i.dv = load ptr, ptr %i.au, align 8, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i32, ptr %i.co, align 4, !tbaa !92
  %i.dy = shl i32 %i.dx, 10
  call void @udata_writeBlock(ptr noundef %2, ptr noundef nonnull %i.dw, i32 noundef %i.dy)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ea = load i32, ptr %i.cp, align 8, !tbaa !64
  %i.eb = shl i32 %i.ea, 3
  call void @udata_writeBlock(ptr noundef %2, ptr noundef nonnull %i.dz, i32 noundef %i.eb)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 65584
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !25
  %i.ee = load ptr, ptr %i.au, align 8, !tbaa !20
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 132124
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !41
  %i.eh = shl nsw i32 %i.eg, 1
  call void @udata_writeBlock(ptr noundef %2, ptr noundef %i.ed, i32 noundef %i.eh)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 65592
  call void @udata_writeBlock(ptr noundef %2, ptr noundef nonnull %i.ei, i32 noundef %i.dd)
  %i.ej = load ptr, ptr %i.au, align 8, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 132120
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !36
  %i.em = icmp eq i32 %i.el, 1
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 196664
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %.1103
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 67768
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %.1103
  %.sink138 = select i1 %i.em, ptr %i.eq, ptr %i.eo
  call void @udata_writeBlock(ptr noundef %2, ptr noundef nonnull %.sink138, i32 noundef %.1101)
  %i.er = load i32, ptr %i.ci, align 4, !tbaa !86
  %i.es = and i32 %i.er, 64
  %.not118 = icmp eq i32 %i.es, 0
  br i1 %.not118, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 454456
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !26
  %i.ev = load i32, ptr %i.ce, align 4, !tbaa !52
  call void @udata_writeBlock(ptr noundef %2, ptr noundef %i.eu, i32 noundef %i.ev)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not119 = icmp eq i32 %.098, 0
  br i1 %.not119, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 454472
  call void @udata_writeBlock(ptr noundef %2, ptr noundef nonnull %i.ew, i32 noundef %i.di)
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.k
  %.0104 = phi i32 [ 0, %bb.k ], [ %spec.select, %bb.p ], [ %spec.select, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %.0104
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #8

declare i32 @ucm_countChars(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZL16MBCSAddToUnicodeP8MBCSDataPKhiia(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -128, 128) %2, i32 noundef %3, i8 noundef signext %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 132112
  %i.e = load i32, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.h = tail call i64 @fwrite(ptr nonnull @.str.7, i64 38, i64 1, ptr %i.g) #15 ; 0 uses
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %2, 2
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 132129
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66
  %i.l = icmp eq i8 %i.k, 12
  %spec.select = zext i1 %i.l to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0150 = phi i8 [ 0, %bb.c ], [ %spec.select, %bb.d ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.n = zext nneg i8 %.0150 to i64               ; 2 uses
  %i.o = getelementptr inbounds nuw [1024 x i8], ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %1, align 1, !tbaa !17
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51   ; 3 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.u = zext i32 %2 to i64
  %i.v = zext nneg i8 %.0150 to i32
  %i.w = icmp eq i32 %2, 1
  br i1 %i.w, label %.lr.ph._crit_edge, label %.lr.ph245

.lr.ph:                                           ; preds = %.lr.ph245
  %i.x = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %i.x, label %.lr.ph._crit_edge, label %.lr.ph245, !llvm.loop !99

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.1202.lcssa = phi i32 [ %i.v, %.lr.ph.preheader ], [ %i.bw, %.lr.ph ]
  %5 = load ptr, ptr @stderr, align 8, !tbaa !33
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %.lr.ph.i, label %_ZL10printBytesPcmPKhi.exit

.lr.ph.i:                                         ; preds = %.lr.ph._crit_edge
  %i.y = load i8, ptr %1, align 1, !tbaa !17      ; 3 uses
  %i.z = lshr i8 %i.y, 4                          ; 2 uses
  %i.aa = icmp ult i8 %i.y, -96
  %i.ab = or disjoint i8 %i.z, 48
  %narrow.i.i = add nuw nsw i8 %i.z, 87
  %i.ac = select i1 %i.aa, i8 %i.ab, i8 %narrow.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ac, ptr %i.a, align 1, !tbaa !17
  %i.ae = and i8 %i.y, 15                         ; 3 uses
  %i.af = icmp samesign ult i8 %i.ae, 10
  %i.ag = or disjoint i8 %i.ae, 48
  %narrow.i17.i = add nuw nsw i8 %i.ae, 87
  %i.ah = select i1 %i.af, i8 %i.ag, i8 %narrow.i17.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.ah, ptr %i.ad, align 1, !tbaa !17
  %.not259 = icmp eq i32 %2, 1
  br i1 %.not259, label %_ZL10printBytesPcmPKhi.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17  ; 3 uses
  %i.al = lshr i8 %i.ak, 4                        ; 2 uses
  %i.am = icmp ult i8 %i.ak, -96
  %i.an = or disjoint i8 %i.al, 48
  %narrow.i.i.1 = add nuw nsw i8 %i.al, 87
  %i.ao = select i1 %i.am, i8 %i.an, i8 %narrow.i.i.1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ao, ptr %i.ai, align 1, !tbaa !17
  %i.aq = and i8 %i.ak, 15                        ; 3 uses
  %i.ar = icmp samesign ult i8 %i.aq, 10
  %i.as = or disjoint i8 %i.aq, 48
  %narrow.i17.i.1 = add nuw nsw i8 %i.aq, 87
  %i.at = select i1 %i.ar, i8 %i.as, i8 %narrow.i17.i.1
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %i.at, ptr %i.ap, align 1, !tbaa !17
  %i.av = icmp sgt i32 %2, 2
  br i1 %i.av, label %.lr.ph.i.2, label %_ZL10printBytesPcmPKhi.exit

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !17  ; 3 uses
  %i.ay = lshr i8 %i.ax, 4                        ; 2 uses
  %i.az = icmp ult i8 %i.ax, -96
  %i.ba = or disjoint i8 %i.ay, 48
  %narrow.i.i.2 = add nuw nsw i8 %i.ay, 87
  %i.bb = select i1 %i.az, i8 %i.ba, i8 %narrow.i.i.2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.bb, ptr %i.au, align 1, !tbaa !17
  %i.bd = and i8 %i.ax, 15                        ; 3 uses
  %i.be = icmp samesign ult i8 %i.bd, 10
  %i.bf = or disjoint i8 %i.bd, 48
  %narrow.i17.i.2 = add nuw nsw i8 %i.bd, 87
  %i.bg = select i1 %i.be, i8 %i.bf, i8 %narrow.i17.i.2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 %i.bg, ptr %i.bc, align 1, !tbaa !17
  %.not260 = icmp eq i32 %2, 3
  br i1 %.not260, label %_ZL10printBytesPcmPKhi.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !17  ; 3 uses
  %i.bk = lshr i8 %i.bj, 4                        ; 2 uses
  %i.bl = icmp ult i8 %i.bj, -96
  %i.bm = or disjoint i8 %i.bk, 48
  %narrow.i.i.3 = add nuw nsw i8 %i.bk, 87
  %i.bn = select i1 %i.bl, i8 %i.bm, i8 %narrow.i.i.3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.bn, ptr %i.bh, align 1, !tbaa !17
  %i.bp = and i8 %i.bj, 15                        ; 3 uses
  %i.bq = icmp samesign ult i8 %i.bp, 10
  %i.br = or disjoint i8 %i.bp, 48
  %narrow.i17.i.3 = add nuw nsw i8 %i.bp, 87
  %i.bs = select i1 %i.bq, i8 %i.br, i8 %narrow.i17.i.3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.bs, ptr %i.bo, align 1, !tbaa !17
  br label %_ZL10printBytesPcmPKhi.exit

_ZL10printBytesPcmPKhi.exit:                      ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph._crit_edge
  %.0.lcssa.i = phi ptr [ %i.a, %.lr.ph._crit_edge ], [ %i.ai, %.lr.ph.i ], [ %i.au, %.lr.ph.i.1 ], [ %i.bh, %.lr.ph.i.2 ], [ %i.bt, %.lr.ph.i.3 ]
  store i8 0, ptr %.0.lcssa.i, align 1, !tbaa !17
  %i.bu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %.1202.lcssa, ptr noundef nonnull %i.a, i32 noundef %3) #16 ; 0 uses
  br label %_ZL11setFallbackP8MBCSDataji.exit

.lr.ph245:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.0155201244 = phi i32 [ %i.by, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bv = phi i32 [ %i.cf, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv243 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %i.bw = lshr i32 %i.bv, 24                      ; 3 uses
  %i.bx = and i32 %i.bv, 16777215
  %i.by = add i32 %i.bx, %.0155201244             ; 2 uses
  %i.bz = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.ca = getelementptr inbounds nuw [1024 x i8], ptr %i.m, i64 %i.bz
  %indvars.iv.next = add nuw nsw i64 %indvars.iv243, 1 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv243
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !17
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !51 ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, -1
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !99

._crit_edge.loopexit:                             ; preds = %.lr.ph245
  %i.ch = trunc nuw nsw i32 %i.bw to i8
  %i.ci = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.lcssa200 = phi i64 [ 0, %bb.e ], [ %indvars.iv243, %._crit_edge.loopexit ]
  %.0155.lcssa = phi i32 [ 0, %bb.e ], [ %i.by, %._crit_edge.loopexit ] ; 2 uses
  %.1.lcssa = phi i8 [ %.0150, %bb.e ], [ %i.ch, %._crit_edge.loopexit ]
  %.lcssa196 = phi i64 [ %i.n, %bb.e ], [ %i.bz, %._crit_edge.loopexit ]
  %.lcssa194 = phi i32 [ 1, %bb.e ], [ %i.ci, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa190 = phi i32 [ %i.s, %bb.e ], [ %i.cf, %._crit_edge.loopexit ] ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa200
  %i.ck = icmp slt i32 %.lcssa194, %2
  br i1 %i.ck, label %7, label %bb.f

7:                                                ; preds = %._crit_edge
  %8 = load ptr, ptr @stderr, align 8, !tbaa !33
  %9 = sub nsw i32 %2, %.lcssa194
  %10 = zext nneg i8 %.1.lcssa to i32
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %.lr.ph.i177, label %_ZL10printBytesPcmPKhi.exit184

.lr.ph.i177:                                      ; preds = %7
  %i.cl = load i8, ptr %1, align 1, !tbaa !17     ; 3 uses
  %i.cm = lshr i8 %i.cl, 4                        ; 2 uses
  %i.cn = icmp ult i8 %i.cl, -96
  %i.co = or disjoint i8 %i.cm, 48
  %narrow.i.i181 = add nuw nsw i8 %i.cm, 87
  %i.cp = select i1 %i.cn, i8 %i.co, i8 %narrow.i.i181
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.cp, ptr %i.a, align 1, !tbaa !17
  %i.cr = and i8 %i.cl, 15                        ; 3 uses
  %i.cs = icmp samesign ult i8 %i.cr, 10
  %i.ct = or disjoint i8 %i.cr, 48
  %narrow.i17.i182 = add nuw nsw i8 %i.cr, 87
  %i.cu = select i1 %i.cs, i8 %i.ct, i8 %narrow.i17.i182
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.cu, ptr %i.cq, align 1, !tbaa !17
  %.not257 = icmp eq i32 %2, 1
  br i1 %.not257, label %_ZL10printBytesPcmPKhi.exit184, label %.lr.ph.i177.1

.lr.ph.i177.1:                                    ; preds = %.lr.ph.i177
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !17  ; 3 uses
  %i.cy = lshr i8 %i.cx, 4                        ; 2 uses
  %i.cz = icmp ult i8 %i.cx, -96
  %i.da = or disjoint i8 %i.cy, 48
  %narrow.i.i181.1 = add nuw nsw i8 %i.cy, 87
  %i.db = select i1 %i.cz, i8 %i.da, i8 %narrow.i.i181.1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.db, ptr %i.cv, align 1, !tbaa !17
  %i.dd = and i8 %i.cx, 15                        ; 3 uses
  %i.de = icmp samesign ult i8 %i.dd, 10
  %i.df = or disjoint i8 %i.dd, 48
  %narrow.i17.i182.1 = add nuw nsw i8 %i.dd, 87
  %i.dg = select i1 %i.de, i8 %i.df, i8 %narrow.i17.i182.1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %i.dg, ptr %i.dc, align 1, !tbaa !17
  %i.di = icmp sgt i32 %2, 2
  br i1 %i.di, label %.lr.ph.i177.2, label %_ZL10printBytesPcmPKhi.exit184

.lr.ph.i177.2:                                    ; preds = %.lr.ph.i177.1
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !17  ; 3 uses
  %i.dl = lshr i8 %i.dk, 4                        ; 2 uses
  %i.dm = icmp ult i8 %i.dk, -96
  %i.dn = or disjoint i8 %i.dl, 48
  %narrow.i.i181.2 = add nuw nsw i8 %i.dl, 87
  %i.do = select i1 %i.dm, i8 %i.dn, i8 %narrow.i.i181.2
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.do, ptr %i.dh, align 1, !tbaa !17
  %i.dq = and i8 %i.dk, 15                        ; 3 uses
  %i.dr = icmp samesign ult i8 %i.dq, 10
  %i.ds = or disjoint i8 %i.dq, 48
  %narrow.i17.i182.2 = add nuw nsw i8 %i.dq, 87
  %i.dt = select i1 %i.dr, i8 %i.ds, i8 %narrow.i17.i182.2
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 %i.dt, ptr %i.dp, align 1, !tbaa !17
  %.not258 = icmp eq i32 %2, 3
  br i1 %.not258, label %_ZL10printBytesPcmPKhi.exit184, label %.lr.ph.i177.3

.lr.ph.i177.3:                                    ; preds = %.lr.ph.i177.2
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !17  ; 3 uses
  %i.dx = lshr i8 %i.dw, 4                        ; 2 uses
  %i.dy = icmp ult i8 %i.dw, -96
  %i.dz = or disjoint i8 %i.dx, 48
  %narrow.i.i181.3 = add nuw nsw i8 %i.dx, 87
  %i.ea = select i1 %i.dy, i8 %i.dz, i8 %narrow.i.i181.3
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.ea, ptr %i.du, align 1, !tbaa !17
  %i.ec = and i8 %i.dw, 15                        ; 3 uses
  %i.ed = icmp samesign ult i8 %i.ec, 10
  %i.ee = or disjoint i8 %i.ec, 48
  %narrow.i17.i182.3 = add nuw nsw i8 %i.ec, 87
  %i.ef = select i1 %i.ed, i8 %i.ee, i8 %narrow.i17.i182.3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ef, ptr %i.eb, align 1, !tbaa !17
  br label %_ZL10printBytesPcmPKhi.exit184

_ZL10printBytesPcmPKhi.exit184:                   ; preds = %.lr.ph.i177, %.lr.ph.i177.1, %.lr.ph.i177.2, %.lr.ph.i177.3, %7
  %.0.lcssa.i176 = phi ptr [ %i.a, %7 ], [ %i.cv, %.lr.ph.i177 ], [ %i.dh, %.lr.ph.i177.1 ], [ %i.du, %.lr.ph.i177.2 ], [ %i.eg, %.lr.ph.i177.3 ]
  store i8 0, ptr %.0.lcssa.i176, align 1, !tbaa !17
  %i.eh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef %9, i32 noundef %10, ptr noundef nonnull %i.a, i32 noundef %3) #16 ; 0 uses
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.f:                                             ; preds = %._crit_edge
  %i.ei = lshr i32 %.lcssa190, 20
  %i.ej = and i32 %i.ei, 15                       ; 2 uses
  switch i32 %i.ej, label %bb.ax [
    i32 7, label %bb.g
    i32 8, label %bb.h
    i32 6, label %bb.i
    i32 2, label %bb.j
    i32 0, label %bb.j
    i32 3, label %bb.j
    i32 1, label %bb.j
    i32 4, label %bb.r
    i32 5, label %bb.ag
  ]

bb.g:                                             ; preds = %bb.f
  %i.ek = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.el = call fastcc noundef ptr @_ZL10printBytesPcmPKhi(ptr noundef %i.a, ptr noundef nonnull %1, i32 noundef %2) ; 0 uses
  %i.em = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ek, ptr noundef nonnull @.str.10, i32 noundef %3, ptr noundef nonnull %i.a) #16 ; 0 uses
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.h:                                             ; preds = %bb.f
  %i.en = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.eo = call fastcc noundef ptr @_ZL10printBytesPcmPKhi(ptr noundef %i.a, ptr noundef nonnull %1, i32 noundef %2) ; 0 uses
  %i.ep = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.en, ptr noundef nonnull @.str.11, i32 noundef %3, ptr noundef nonnull %i.a) #16 ; 0 uses
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.i:                                             ; preds = %bb.f
  %i.eq = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.er = call fastcc noundef ptr @_ZL10printBytesPcmPKhi(ptr noundef %i.a, ptr noundef nonnull %1, i32 noundef %2) ; 0 uses
  %i.es = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eq, ptr noundef nonnull @.str.12, i32 noundef %3, ptr noundef nonnull %i.a) #16 ; 0 uses
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.j:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.et = and i32 %.lcssa190, -2130706433
  %.not174 = icmp eq i32 %i.et, -2147418114
  br i1 %.not174, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eu = and i32 %.lcssa190, 1048575             ; 3 uses
  switch i32 %i.ej, label %bb.l [
    i32 0, label %bb.m
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ev = add nuw nsw i32 %i.eu, 65536
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.l
  %.0151 = phi i32 [ %i.ev, %bb.l ], [ %i.eu, %bb.k ], [ %i.eu, %bb.k ] ; 2 uses
  %i.ew = icmp sgt i8 %4, -1
  br i1 %i.ew, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ex = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.ey = call fastcc noundef ptr @_ZL10printBytesPcmPKhi(ptr noundef %i.a, ptr noundef nonnull %1, i32 noundef %2) ; 0 uses
  %i.ez = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ex, ptr noundef nonnull @.str.13, i32 noundef %3, ptr noundef nonnull %i.a, i32 noundef %.0151) #16 ; 0 uses
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.o:                                             ; preds = %bb.m
  %i.fa = load i8, ptr @VERBOSE, align 1, !tbaa !17
  %.not175 = icmp eq i8 %i.fa, 0
  br i1 %.not175, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fb = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.fc = call fastcc noundef ptr @_ZL10printBytesPcmPKhi(ptr noundef %i.a, ptr noundef nonnull %1, i32 noundef %2) ; 0 uses
  %i.fd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fb, ptr noundef nonnull @.str.14, i32 noundef %3, ptr noundef nonnull %i.a, i32 noundef %.0151) #16 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.j
  %i.fe = and i32 %.lcssa190, -16777216
  %i.ff = icmp eq i8 %4, 3
  %i.fg = select i1 %i.ff, i32 2, i32 0
  %i.fh = icmp sgt i32 %3, 65535
  %i.fi = zext i1 %i.fh to i32
  %i.fj = or disjoint i32 %i.fg, %i.fi
  %i.fk = shl nuw nsw i32 %i.fj, 20
  %i.fl = or disjoint i32 %i.fe, %i.fk
  %i.fm = icmp slt i32 %3, 65536
  %i.fn = add nsw i32 %3, -65536
  %.sink = select i1 %i.fm, i32 %3, i32 %i.fn
  %i.fo = or i32 %i.fl, %.sink
  %i.fp = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = getelementptr inbounds nuw [1024 x i8], ptr %i.fq, i64 %.lcssa196
  %i.fs = load i8, ptr %i.cj, align 1, !tbaa !17
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.ft
  store i32 %i.fo, ptr %i.fu, align 4, !tbaa !51
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.r:                                             ; preds = %bb.f
  %i.fv = and i32 %.lcssa190, 65535
  %i.fw = add i32 %i.fv, %.0155.lcssa             ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 65584 ; 3 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !25
  %i.fz = zext i32 %i.fw to i64                   ; 3 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !42 ; 2 uses
  %i.gc = zext i16 %i.gb to i32
  %.not171 = icmp eq i16 %i.gb, -2
  br i1 %.not171, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 65576 ; 3 uses
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !64
  %i.gg = tail call i32 @ucm_findFallback(ptr noundef nonnull %i.gd, i32 noundef %i.gf, i32 noundef %i.fw) ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, -1
  br i1 %i.gh, label %_ZL14removeFallbackP8MBCSDataj.exit, label %_ZL14removeFallbackP8MBCSDataj.exit.thread

_ZL14removeFallbackP8MBCSDataj.exit:              ; preds = %bb.s
  %i.gi = load i32, ptr %i.ge, align 8, !tbaa !64
  %i.gj = zext nneg i32 %i.gg to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !100 ; 2 uses
  %i.gn = add nsw i32 %i.gi, -1                   ; 2 uses
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.go
  %i.gq = load <2 x i32>, ptr %i.gp, align 4, !tbaa !51
  store <2 x i32> %i.gq, ptr %i.gk, align 4, !tbaa !51
  store i32 %i.gn, ptr %i.ge, align 8, !tbaa !64
  %.not172 = icmp eq i32 %i.gm, -1
  br i1 %.not172, label %_ZL14removeFallbackP8MBCSDataj.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZL14removeFallbackP8MBCSDataj.exit, %bb.r
  %.1152 = phi i32 [ %i.gc, %bb.r ], [ %i.gm, %_ZL14removeFallbackP8MBCSDataj.exit ] ; 2 uses
  %i.gr = icmp sgt i8 %4, -1
  br i1 %i.gr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.gt = call fastcc noundef ptr @_ZL10printBytesPcmPKhi(ptr noundef %i.a, ptr noundef nonnull %1, i32 noundef %2) ; 0 uses
  %i.gu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gs, ptr noundef nonnull @.str.13, i32 noundef %3, ptr noundef nonnull %i.a, i32 noundef %.1152) #16 ; 0 uses
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.v:                                             ; preds = %bb.t
  %i.gv = load i8, ptr @VERBOSE, align 1, !tbaa !17
  %.not173 = icmp eq i8 %i.gv, 0
  br i1 %.not173, label %_ZL14removeFallbackP8MBCSDataj.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gw = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.gx = call fastcc noundef ptr @_ZL10printBytesPcmPKhi(ptr noundef %i.a, ptr noundef nonnull %1, i32 noundef %2) ; 0 uses
  %i.gy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gw, ptr noundef nonnull @.str.14, i32 noundef %3, ptr noundef nonnull %i.a, i32 noundef %.1152) #16 ; 0 uses
  br label %_ZL14removeFallbackP8MBCSDataj.exit.thread

_ZL14removeFallbackP8MBCSDataj.exit.thread:       ; preds = %bb.s, %bb.w, %bb.v, %_ZL14removeFallbackP8MBCSDataj.exit
  %i.gz = icmp sgt i32 %3, 65535
  br i1 %i.gz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZL14removeFallbackP8MBCSDataj.exit.thread
  %i.ha = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.hb = call fastcc noundef ptr @_ZL10printBytesPcmPKhi(ptr noundef %i.a, ptr noundef nonnull %1, i32 noundef %2) ; 0 uses
  %i.hc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ha, ptr noundef nonnull @.str.15, i32 noundef %3, ptr noundef nonnull %i.a) #16 ; 0 uses
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.y:                                             ; preds = %_ZL14removeFallbackP8MBCSDataj.exit.thread
  %i.hd = icmp sgt i8 %4, 0
  br i1 %i.hd, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.he = load ptr, ptr %i.fx, align 8, !tbaa !25
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.he, i64 %i.fz
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !42
  %i.hh = icmp eq i16 %i.hg, -2
  br i1 %i.hh, label %bb.aa, label %_ZL11setFallbackP8MBCSDataji.exit

bb.aa:                                            ; preds = %bb.z
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 65576 ; 3 uses
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !64
  %i.hl = call i32 @ucm_findFallback(ptr noundef nonnull %i.hi, i32 noundef %i.hk, i32 noundef %i.fw) ; 2 uses
  %i.hm = icmp sgt i32 %i.hl, -1
  br i1 %i.hm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hn = zext nneg i32 %i.hl to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  store i32 %3, ptr %i.hp, align 4, !tbaa !100
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.ac:                                            ; preds = %bb.aa
  %i.hq = load i32, ptr %i.hj, align 8, !tbaa !64 ; 3 uses
  %i.hr = icmp sgt i32 %i.hq, 8191
  br i1 %i.hr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hs = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.ht = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hs, ptr noundef nonnull @.str.17, i32 noundef range(i32 -2147483648, 65536) %3) #16 ; 0 uses
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.ae:                                            ; preds = %bb.ac
  %i.hu = sext i32 %i.hq to i64
end_hunk_0

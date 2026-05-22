inline.NumInlined: 47
inline.NumDeleted: 20
begin_hunk_0_@uprv_getCharNameCharacters_78:bb.a
  br i1 %exitcond.not.i.1, label %bb.e, label %.preheader.i, !llvm.loop !45

bb.e:                                             ; preds = %bb.d
  call void @u_charsToUChars_78(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef %.1.i.1) #12
  %i.y = icmp sgt i32 %.1.i.1, 0
  br i1 %i.y, label %.lr.ph.i, label %_ZL13charSetToUSetPjPK9USetAdder.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count.i = zext nneg i32 %.1.i.1 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.ab = load i16, ptr %i.aa, align 2            ; 2 uses
  %.not17.i = icmp eq i16 %i.ab, 0
  br i1 %.not17.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = load ptr, ptr %i.z, align 8
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = zext i16 %i.ab to i32
  call void %i.af(ptr noundef %i.ag, i32 noundef %i.ah) #12, !inline_history !46
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond6.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond6.not.i, label %_ZL13charSetToUSetPjPK9USetAdder.exit, label %bb.f, !llvm.loop !47

_ZL13charSetToUSetPjPK9USetAdder.exit:            ; preds = %bb.i, %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @uchar_swapNames_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i16], align 16             ; 8 uses
  %i.b = alloca [256 x i8], align 16              ; 6 uses
  %i.c = alloca [256 x i8], align 16              ; 6 uses
  %i.d = alloca [33 x i16], align 16              ; 4 uses
  %i.e = alloca [33 x i16], align 16              ; 4 uses
  %i.f = tail call i32 @udata_swapDataHeader_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #12 ; 3 uses
  %i.g = icmp eq ptr %4, null
  br i1 %i.g, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %4, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.ai

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i8, ptr %i.j, align 2               ; 2 uses
  %i.l = icmp eq i8 %i.k, 117
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %i.o = icmp eq i8 %i.n, 110
  %or.cond = select i1 %i.l, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.d, label %._crit_edge381

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.q = load i8, ptr %i.p, align 2
  %i.r = icmp eq i8 %i.q, 97
  br i1 %i.r, label %bb.e, label %._crit_edge381

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 109
  br i1 %i.u, label %bb.f, label %._crit_edge381

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i8, ptr %i.v, align 2
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %bb.g, label %._crit_edge381

._crit_edge381:                                   ; preds = %bb.c, %bb.f, %bb.e, %bb.d
  %i.y = phi i8 [ %i.n, %bb.c ], [ 110, %bb.f ], [ 110, %bb.e ], [ 110, %bb.d ]
  %i.z = zext i8 %i.k to i32
  %i.aa = zext i8 %i.y to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ac = load i8, ptr %i.ab, align 2
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i8, ptr %i.ah, align 2
  %i.aj = zext i8 %i.ai to i32
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.z, i32 noundef %i.aa, i32 noundef %i.ad, i32 noundef %i.ag, i32 noundef %i.aj) #12
  store i32 16, ptr %4, align 4
  br label %bb.ai

bb.g:                                             ; preds = %bb.f
  %i.ak = sext i32 %i.f to i64                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak ; 17 uses
  %i.am = icmp eq ptr %3, null
  %i.an = getelementptr inbounds i8, ptr %3, i64 %i.ak ; 6 uses
  %i.ao = select i1 %i.am, ptr null, ptr %i.an    ; 5 uses
  %i.ap = icmp slt i32 %2, 0
  br i1 %i.ap, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = sub nsw i32 %2, %i.f                    ; 6 uses
  %i.ar = icmp slt i32 %i.aq, 20
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = tail call noundef i32 %i.at(i32 noundef %i.av) #12 ; 4 uses
  %i.ax = icmp ult i32 %i.aq, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %i.aq) #12
  store i32 8, ptr %4, align 4
  br label %bb.ai

bb.k:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = tail call noundef i32 %i.az(i32 noundef %i.bb) #12 ; 2 uses
  %i.bd = load ptr, ptr %i.ay, align 8
  %i.be = zext i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = tail call noundef i32 %i.bd(i32 noundef %i.bg) #12 ; 2 uses
  %i.bi = add i32 %i.bc, 4                        ; 2 uses
  %.not350.a = icmp eq i32 %i.bh, 0
  br i1 %.not350.a, label %.loopexit, label %.lr.ph346

.lr.ph346:                                        ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph346, %bb.l
  %.0266344 = phi i32 [ %i.bi, %.lr.ph346 ], [ %i.br, %bb.l ] ; 2 uses
  %.0269343 = phi i32 [ 0, %.lr.ph346 ], [ %i.bs, %bb.l ]
  %i.bk = zext i32 %.0266344 to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bk
  %i.bm = load ptr, ptr %i.bj, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 10
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = tail call noundef zeroext i16 %i.bm(i16 noundef zeroext %i.bo) #12
  %i.bq = zext i16 %i.bp to i32
  %i.br = add i32 %.0266344, %i.bq                ; 2 uses
  %i.bs = add nuw i32 %.0269343, 1                ; 2 uses
  %exitcond380.not.a = icmp eq i32 %i.bs, %i.bh
  br i1 %exitcond380.not.a, label %.loopexit, label %bb.l, !llvm.loop !48

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %.not287 = icmp eq ptr %i.al, %i.ao
  br i1 %.not287, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = zext nneg i32 %i.aq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr nonnull align 1 %i.al, i64 %i.bt, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bu = load ptr, ptr %i.as, align 8
  %i.bv = load i32, ptr %i.al, align 4
  %i.bw = tail call noundef i32 %i.bu(i32 noundef %i.bv) #12 ; 2 uses
  %i.bx = load ptr, ptr %i.as, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = tail call noundef i32 %i.bx(i32 noundef %i.bz) #12 ; 2 uses
  %i.cb = load ptr, ptr %i.as, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = tail call noundef i32 %i.cb(i32 noundef %i.cd) #12 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = tail call noundef i32 %i.cg(ptr noundef nonnull %0, ptr noundef nonnull %i.al, i32 noundef 16, ptr noundef %i.ao, ptr noundef nonnull %4) #12 ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load i16, ptr %i.ci, align 4
  %i.cn = tail call noundef zeroext i16 %i.cl(i16 noundef zeroext %i.cm) #12 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call noundef i32 %i.cp(ptr noundef nonnull %0, ptr noundef nonnull %i.ci, i32 noundef 2, ptr noundef nonnull %i.cj, ptr noundef nonnull %4) #12 ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.al, i64 18 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.an, i64 18
  %i.ct = zext i16 %i.cn to i32                   ; 4 uses
  %.302 = tail call i16 @llvm.umin.i16(i16 %i.cn, i16 512) ; 2 uses
  %. = zext nneg i16 %.302 to i32
  %.not = icmp eq i16 %i.cn, 0                    ; 2 uses
  br i1 %.not, label %.lr.ph316.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %wide.trip.count = zext nneg i16 %.302 to i64
  br label %.lr.ph

.preheader306.a:                                  ; preds = %.lr.ph
  %i.cu = icmp ult i16 %i.cn, 512
  br i1 %i.cu, label %.lr.ph316.preheader, label %._crit_edge

.lr.ph316.preheader:                              ; preds = %bb.o, %.preheader306.a
  %.1270.lcssa397 = phi i32 [ %., %.preheader306.a ], [ 0, %bb.o ] ; 2 uses
  %i.cv = shl nuw nsw i32 %.1270.lcssa397, 1
  %i.cw = zext nneg i32 %i.cv to i64
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.cw
  %i.cx = shl nuw nsw i32 %.1270.lcssa397, 1
  %narrow = sub nuw nsw i32 1024, %i.cx
  %i.cy = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep, i8 0, i64 %i.cy, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %indvars.iv
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = tail call signext i16 @udata_readInt16_78(ptr noundef nonnull %0, i16 noundef signext %i.da) #12
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %i.db, ptr %i.dc, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader306.a, label %.lr.ph, !llvm.loop !49

._crit_edge:                                      ; preds = %.lr.ph316.preheader, %.preheader306.a
  call fastcc void @_ZL12makeTokenMapPK12UDataSwapperPstPhP10UErrorCode(ptr noundef nonnull %0, ptr noundef %i.a, i16 noundef zeroext %i.cn, ptr noundef %i.b, ptr noundef %4)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.de = tail call i16 @llvm.usub.sat.i16(i16 %i.cn, i16 256)
  call fastcc void @_ZL12makeTokenMapPK12UDataSwapperPstPhP10UErrorCode(ptr noundef nonnull %0, ptr noundef %i.dd, i16 noundef zeroext %i.de, ptr noundef %i.c, ptr noundef %4)
  %i.df = load i32, ptr %4, align 4
  %i.dg = icmp slt i32 %i.df, 1
  br i1 %i.dg, label %bb.p, label %.thread299

bb.p:                                             ; preds = %._crit_edge
  %i.dh = shl nuw nsw i32 %i.ct, 1
  %i.di = zext nneg i32 %i.dh to i64              ; 2 uses
  %i.dj = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.di) #14 ; 5 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.q, label %.preheader305

.preheader305:                                    ; preds = %bb.p
  %invariant.umin = tail call i32 @llvm.umin.i32(i32 %i.ct, i32 256) ; 2 uses
  br i1 %.not, label %.preheader, label %.lr.ph318.preheader

.lr.ph318.preheader:                              ; preds = %.preheader305
  %wide.trip.count369 = zext nneg i32 %invariant.umin to i64
  br label %.lr.ph318

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %i.ct) #12
  store i32 7, ptr %4, align 4
  br label %.thread299

.preheader:                                       ; preds = %.lr.ph318, %.preheader305
  %.3272.lcssa = phi i32 [ 0, %.preheader305 ], [ %invariant.umin, %.lr.ph318 ] ; 2 uses
  %i.dl = icmp samesign ult i32 %.3272.lcssa, %i.ct
  br i1 %i.dl, label %.lr.ph321.preheader, label %._crit_edge322

.lr.ph321.preheader:                              ; preds = %.preheader
  %i.dm = zext nneg i32 %.3272.lcssa to i64
  %wide.trip.count374 = zext i16 %i.cn to i64
  br label %.lr.ph321

.lr.ph318:                                        ; preds = %.lr.ph318.preheader, %.lr.ph318
  %indvars.iv366 = phi i64 [ 0, %.lr.ph318.preheader ], [ %indvars.iv.next367, %.lr.ph318 ] ; 3 uses
  %i.dn = load ptr, ptr %i.co, align 8
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %indvars.iv366
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv366
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.dr
  %i.dt = tail call noundef i32 %i.dn(ptr noundef nonnull %0, ptr noundef nonnull %i.do, i32 noundef 2, ptr noundef nonnull %i.ds, ptr noundef nonnull %4) #12 ; 0 uses
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %.preheader, label %.lr.ph318, !llvm.loop !50

.lr.ph321:                                        ; preds = %.lr.ph321.preheader, %.lr.ph321
  %indvars.iv371 = phi i64 [ %i.dm, %.lr.ph321.preheader ], [ %indvars.iv.next372, %.lr.ph321 ] ; 4 uses
  %i.du = load ptr, ptr %i.co, align 8
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %indvars.iv371
  %i.dw = and i64 %indvars.iv371, 2147483392
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.dw
  %i.dy = and i64 %indvars.iv371, 255
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %i.eb
  %i.ed = tail call noundef i32 %i.du(ptr noundef nonnull %0, ptr noundef nonnull %i.dv, i32 noundef 2, ptr noundef nonnull %i.ec, ptr noundef nonnull %4) #12 ; 0 uses
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next372, %wide.trip.count374
  br i1 %exitcond375.not, label %._crit_edge322, label %.lr.ph321, !llvm.loop !51

._crit_edge322:                                   ; preds = %.lr.ph321, %.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.cs, ptr nonnull align 2 %i.dj, i64 %i.di, i1 false)
  tail call void @uprv_free_78(ptr noundef nonnull %i.dj) #12
  %i.ee = zext i32 %i.bw to i64                   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ee
  %i.eg = sub i32 %i.ca, %i.bw
  %i.eh = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ee
  %i.ei = tail call i32 @udata_swapInvStringBlock_78(ptr noundef nonnull %0, ptr noundef nonnull %i.ef, i32 noundef %i.eg, ptr noundef %i.eh, ptr noundef nonnull %4) #12 ; 0 uses
  %i.ej = load i32, ptr %4, align 4
  %i.ek = icmp slt i32 %i.ej, 1
  br i1 %i.ek, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge322
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #12
  br label %.thread299

bb.s:                                             ; preds = %._crit_edge322
  %i.el = load ptr, ptr %i.ck, align 8
  %i.em = zext i32 %i.ca to i64                   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.em ; 2 uses
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = tail call noundef zeroext i16 %i.el(i16 noundef zeroext %i.eo) #12
  %i.eq = zext i16 %i.ep to i32
  %i.er = load ptr, ptr %i.co, align 8
  %i.es = mul nuw nsw i32 %i.eq, 6
  %i.et = add nuw nsw i32 %i.es, 2
  %i.eu = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.em
  %i.ev = tail call noundef i32 %i.er(ptr noundef nonnull %0, ptr noundef nonnull %i.en, i32 noundef %i.et, ptr noundef %i.eu, ptr noundef nonnull %4) #12 ; 0 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ez = load i8, ptr %i.ey, align 1
  %.not290 = icmp eq i8 %i.ex, %i.ez
  br i1 %.not290, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.fa = sub i32 %i.aw, %i.ce                    ; 2 uses
  %i.fb = icmp ugt i32 %i.fa, 32
  br i1 %i.fb, label %.lr.ph335, label %._crit_edge336

.lr.ph335:                                        ; preds = %bb.t
  %i.fc = zext i32 %i.ce to i64                   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.fc
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 62
  %i.fg = getelementptr inbounds nuw i8, ptr %i.e, i64 62
  br label %bb.u

.loopexit304:                                     ; preds = %bb.w, %bb.u
  %.1264.lcssa = phi ptr [ %i.fi, %bb.u ], [ %.2265, %bb.w ]
  %.1261.lcssa = phi ptr [ %i.fn, %bb.u ], [ %.2, %bb.w ]
  %i.fh = icmp ugt i32 %i.fu, 32
  br i1 %i.fh, label %bb.u, label %._crit_edge336, !llvm.loop !52

bb.u:                                             ; preds = %.lr.ph335, %.loopexit304
  %.0260333 = phi ptr [ %i.fd, %.lr.ph335 ], [ %.1261.lcssa, %.loopexit304 ]
  %.0263332 = phi ptr [ %i.fe, %.lr.ph335 ], [ %.1264.lcssa, %.loopexit304 ] ; 2 uses
  %.0277331 = phi i32 [ %i.fa, %.lr.ph335 ], [ %i.fu, %.loopexit304 ]
  %i.fi = call fastcc noundef ptr @_ZN6icu_78L18expandGroupLengthsEPKhPtS2_(ptr noundef %.0263332, ptr noundef %i.d, ptr noundef %i.e) ; 3 uses
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %.0263332 to i64
  %i.fl = sub i64 %i.fj, %i.fk                    ; 2 uses
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = getelementptr inbounds i8, ptr %.0260333, i64 %i.fl ; 2 uses
  %i.fo = load i16, ptr %i.ff, align 2
  %i.fp = zext i16 %i.fo to i32
  %i.fq = load i16, ptr %i.fg, align 2
  %i.fr = zext i16 %i.fq to i32
  %i.fs = add nuw nsw i32 %i.fr, %i.fp            ; 3 uses
  %i.ft = add i32 %i.fs, %i.fm
  %i.fu = sub i32 %.0277331, %i.ft                ; 2 uses
  %.not294323 = icmp eq i32 %i.fs, 0
  br i1 %.not294323, label %.loopexit304, label %.lr.ph328

.lr.ph328:                                        ; preds = %bb.u, %bb.w
  %.1261326 = phi ptr [ %.2, %bb.w ], [ %i.fn, %bb.u ] ; 3 uses
  %.1264325 = phi ptr [ %.2265, %bb.w ], [ %i.fi, %bb.u ] ; 3 uses
  %.1275324 = phi i32 [ %i.gj, %bb.w ], [ %i.fs, %bb.u ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.1264325, i64 1 ; 2 uses
  %i.fw = load i8, ptr %.1264325, align 1
  %i.fx = zext i8 %i.fw to i64                    ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = getelementptr inbounds nuw i8, ptr %.1261326, i64 1 ; 2 uses
  store i8 %i.fz, ptr %.1261326, align 1
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.fx
  %i.gc = load i16, ptr %i.gb, align 2
  %.not295 = icmp eq i16 %i.gc, -2
  br i1 %.not295, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph328
  %i.gd = getelementptr inbounds nuw i8, ptr %.1264325, i64 2
  %i.ge = load i8, ptr %i.fv, align 1
  %i.gf = zext i8 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = getelementptr inbounds nuw i8, ptr %.1261326, i64 2
  store i8 %i.gh, ptr %i.ga, align 1
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph328, %bb.v
  %.sink = phi i32 [ -2, %bb.v ], [ -1, %.lr.ph328 ]
  %.2265 = phi ptr [ %i.gd, %bb.v ], [ %i.fv, %.lr.ph328 ] ; 2 uses
  %.2 = phi ptr [ %i.gi, %bb.v ], [ %i.ga, %.lr.ph328 ] ; 2 uses
  %i.gj = add i32 %.1275324, %.sink               ; 2 uses
  %.not294 = icmp eq i32 %i.gj, 0
  br i1 %.not294, label %.loopexit304, label %.lr.ph328, !llvm.loop !53

._crit_edge336:                                   ; preds = %.loopexit304, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge336, %bb.s
  %i.gk = load ptr, ptr %i.as, align 8
  %i.gl = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.gl ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = tail call noundef i32 %i.gk(i32 noundef %i.gn) #12 ; 2 uses
  %i.gp = load ptr, ptr %i.cf, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.gl
  %i.gr = tail call noundef i32 %i.gp(ptr noundef nonnull %0, ptr noundef nonnull %i.gm, i32 noundef 4, ptr noundef %i.gq, ptr noundef nonnull %4) #12 ; 0 uses
  %i.gs = add nuw i32 %i.aw, 4                    ; 2 uses
  %.not349 = icmp eq i32 %i.go, 0
  br i1 %.not349, label %._crit_edge341, label %.lr.ph340

.lr.ph340:                                        ; preds = %bb.x
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph340, %bb.ah
  %.1267338 = phi i32 [ %i.gs, %.lr.ph340 ], [ %i.hd, %bb.ah ] ; 3 uses
  %.5337 = phi i32 [ 0, %.lr.ph340 ], [ %i.iq, %bb.ah ] ; 4 uses
  %i.gu = icmp ugt i32 %.1267338, %i.aq
  br i1 %i.gu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i32 noundef %i.aq, i32 noundef %.5337) #12
  store i32 8, ptr %4, align 4
  br label %.thread299

bb.aa:                                            ; preds = %bb.y
  %i.gv = zext nneg i32 %.1267338 to i64          ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.gv ; 6 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.gv ; 4 uses
  %i.gy = load ptr, ptr %i.ck, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 10 ; 2 uses
  %i.ha = load i16, ptr %i.gz, align 2
  %i.hb = tail call noundef zeroext i16 %i.gy(i16 noundef zeroext %i.ha) #12
end_hunk_0

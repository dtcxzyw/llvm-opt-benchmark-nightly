inline.NumInlined: 6973
inline.NumDeleted: 2254
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN9rapidjson8internal6Grisu2EdPcPiS2_:bb.a
  %i.ar = and i64 %i.ah, 4294967295               ; 6 uses
  %i.as = mul nuw i64 %i.aq, %i.ao
  %i.at = mul nuw i64 %i.aq, %i.ap                ; 2 uses
  %i.au = mul nuw i64 %i.ar, %i.ao                ; 2 uses
  %i.av = mul nuw i64 %i.ar, %i.ap
  %i.aw = lshr i64 %i.av, 32
  %i.ax = and i64 %i.au, 4294967295
  %i.ay = and i64 %i.at, 4294967294
  %i.az = add nuw nsw i64 %i.ax, 2147483648
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  %i.bb = add nuw nsw i64 %i.ba, %i.ay
  %i.bc = lshr i64 %i.au, 32
  %i.bd = add nuw i64 %i.bc, %i.as
  %i.be = lshr i64 %i.at, 32
  %i.bf = add nuw i64 %i.bd, %i.be
  %i.bg = lshr i64 %i.bb, 32
  %i.bh = add nuw i64 %i.bf, %i.bg
  %i.bi = add nsw i32 %.sink.i, 64
  %i.bj = sub nsw i32 %i.bi, %i.am
  %i.bk = add nsw i32 %i.bj, %i.ak
  store i64 %i.bh, ptr %4, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bk, ptr %.sroa.210.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bl = lshr i64 %i.n, 32                       ; 2 uses
  %i.bm = and i64 %i.n, 4294966272                ; 2 uses
  %i.bn = mul nuw i64 %i.aq, %i.bl
  %i.bo = mul nuw i64 %i.aq, %i.bm                ; 2 uses
  %i.bp = mul nuw i64 %i.ar, %i.bl                ; 2 uses
  %i.bq = mul nuw i64 %i.ar, %i.bm
  %i.br = lshr i64 %i.bq, 32
  %i.bs = and i64 %i.bp, 4294967295
  %i.bt = and i64 %i.bo, 4294966272
  %i.bu = add nuw nsw i64 %i.bs, 2147483648
  %i.bv = add nuw nsw i64 %i.bu, %i.br
  %i.bw = add nuw nsw i64 %i.bv, %i.bt
  %i.bx = lshr i64 %i.bp, 32
  %i.by = add nuw i64 %i.bx, %i.bn
  %i.bz = lshr i64 %i.bo, 32
  %i.ca = add nuw i64 %i.by, %i.bz
  %i.cb = lshr i64 %i.bw, 32
  %i.cc = add nuw i64 %i.ca, %i.cb
  %i.cd = add i32 %.sroa.7.0.lcssa.i.i, 54
  %i.ce = add i32 %i.cd, %i.ak
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ce, ptr %.sroa.26.0..sroa_idx, align 8
  %i.cf = lshr i64 %i.t, 32                       ; 2 uses
  %i.cg = and i64 %i.t, 4294967295                ; 2 uses
  %i.ch = mul nuw i64 %i.cf, %i.aq
  %i.ci = mul nuw i64 %i.cg, %i.aq                ; 2 uses
  %i.cj = mul nuw i64 %i.cf, %i.ar                ; 2 uses
  %i.ck = mul nuw i64 %i.cg, %i.ar
  %i.cl = lshr i64 %i.ck, 32
  %i.cm = and i64 %i.cj, 4294967295
  %i.cn = and i64 %i.ci, 4294967295
  %i.co = add nuw nsw i64 %i.cm, 2147483648
  %i.cp = add nuw nsw i64 %i.co, %i.cl
  %i.cq = add nuw nsw i64 %i.cp, %i.cn
  %i.cr = lshr i64 %i.cj, 32
  %i.cs = add nuw i64 %i.cr, %i.ch
  %i.ct = lshr i64 %i.ci, 32
  %i.cu = add nuw i64 %i.cs, %i.ct
  %i.cv = lshr i64 %i.cq, 32
  %i.cw = add i64 %i.cu, %i.cv
  %.neg = xor i64 %i.cw, -1
  %i.cx = add i64 %i.cc, -1                       ; 2 uses
  store i64 %i.cx, ptr %5, align 8
  %i.cy = add i64 %i.cx, %.neg
  call void @_ZN9rapidjson8internal8DigitGenERKNS0_5DiyFpES3_mPcPiS5_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 noundef %i.cy, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN9rapidjson8internal8PrettifyEPciii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = add i32 %2, %1                           ; 13 uses
  %i.b = icmp sgt i32 %2, -1
  %i.c = icmp slt i32 %i.a, 22
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not146 = icmp eq i32 %2, 0
  br i1 %.not146, label %._crit_edge129, label %.lr.ph128.preheader

.lr.ph128.preheader:                              ; preds = %.preheader
  %i.d = sext i32 %1 to i64
  %scevgep133 = getelementptr i8, ptr %0, i64 %i.d
  %i.e = add i32 %1, 1
  %smax134 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 %i.e)
  %i.f = xor i32 %1, -1
  %i.g = add i32 %smax134, %i.f
  %i.h = zext i32 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep133, i8 48, i64 %i.i, i1 false)
  br label %._crit_edge129

._crit_edge129:                                   ; preds = %.lr.ph128.preheader, %.preheader
  %i.j = sext i32 %i.a to i64
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j ; 3 uses
  store i8 46, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %i.k, i64 1
  store i8 48, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %i.k, i64 2
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.b:                                             ; preds = %bb.a
  %i.n = add i32 %i.a, -1                         ; 5 uses
  %or.cond4 = icmp ult i32 %i.n, 21
  br i1 %or.cond4, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = add nuw nsw i32 %i.a, 1                  ; 2 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.r = zext nneg i32 %i.a to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r ; 3 uses
  %i.t = sub i32 0, %2
  %i.u = sext i32 %i.t to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.s, i64 %i.u, i1 false)
  store i8 46, ptr %i.s, align 1
  %i.v = add nsw i32 %3, %2
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not108122 = icmp sgt i32 %3, 1
  br i1 %.not108122, label %.lr.ph125.preheader, label %._crit_edge126

.lr.ph125.preheader:                              ; preds = %bb.d
  %i.x = add nuw nsw i32 %i.a, %3
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %bb.e
  %.097123 = phi i32 [ %i.ae, %bb.e ], [ %i.x, %.lr.ph125.preheader ] ; 3 uses
  %i.y = zext nneg i32 %.097123 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %.not107 = icmp eq i8 %i.aa, 48
  br i1 %.not107, label %bb.e, label %.thread

.thread:                                          ; preds = %.lr.ph125
  %i.ab = sext i32 %.097123 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.e:                                             ; preds = %.lr.ph125
  %i.ae = add nsw i32 %.097123, -1                ; 2 uses
  %.not108 = icmp sgt i32 %i.ae, %i.o
  br i1 %.not108, label %.lr.ph125, label %._crit_edge126, !llvm.loop !224

._crit_edge126:                                   ; preds = %bb.e, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.f:                                             ; preds = %bb.c
  %i.ag = sext i32 %1 to i64
  %i.ah = getelementptr i8, ptr %0, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.g:                                             ; preds = %bb.b
  %i.aj = add i32 %i.a, 5
  %or.cond6 = icmp ult i32 %i.aj, 6
  br i1 %or.cond6, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ak = sub nsw i32 2, %i.a                     ; 3 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.an = sext i32 %1 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %0, i64 %i.an, i1 false)
  store i8 48, ptr %0, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 46, ptr %i.ao, align 1
  %i.ap = icmp slt i32 %i.a, 0
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %scevgep = getelementptr i8, ptr %0, i64 2
  %i.aq = tail call i32 @llvm.umax.i32(i32 %i.ak, i32 3)
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = add nsw i64 %i.ar, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %i.as, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.h
  %i.at = sub i32 0, %2
  %i.au = icmp slt i32 %3, %i.at
  br i1 %i.au, label %bb.i, label %bb.k

bb.i:                                             ; preds = %._crit_edge
  %i.av = icmp slt i32 %3, 2
  br i1 %i.av, label %.loopexit142, label %.lr.ph121.preheader

.lr.ph121.preheader:                              ; preds = %bb.i
  %i.aw = add nuw nsw i32 %3, 1
  %4 = zext nneg i32 %i.aw to i64
  br label %.lr.ph121

bb.j:                                             ; preds = %.lr.ph121
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %5 = trunc nuw i64 %indvars.iv to i32
  %i.ax = icmp slt i32 %5, 4
  br i1 %i.ax, label %.loopexit142, label %.lr.ph121, !llvm.loop !225

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %bb.j
  %indvars.iv = phi i64 [ %4, %.lr.ph121.preheader ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.az = load i8, ptr %i.ay, align 1
  %.not = icmp eq i8 %i.az, 48
  br i1 %.not, label %bb.j, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph121
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

.loopexit142:                                     ; preds = %bb.j, %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.k:                                             ; preds = %._crit_edge
  %i.bd = add nsw i32 %i.ak, %1
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %0, i64 %i.be
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.l:                                             ; preds = %bb.g
  %i.bg = sub nsw i32 0, %3
  %i.bh = icmp slt i32 %i.a, %i.bg
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 48, ptr %0, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 46, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 48, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 3
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.n:                                             ; preds = %bb.l
  %i.bl = icmp eq i32 %1, 1
  br i1 %i.bl, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 101, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.bo = icmp slt i32 %i.n, 0
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 45, ptr %i.bn, align 1
  %i.bq = sub i32 1, %i.a
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.020.i = phi ptr [ %i.bp, %bb.p ], [ %i.bn, %bb.o ] ; 9 uses
  %.0.i = phi i32 [ %i.bq, %bb.p ], [ %i.n, %bb.o ] ; 6 uses
  %i.br = icmp samesign ugt i32 %.0.i, 99
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bs = udiv i32 %.0.i, 100
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = add i8 %i.bt, 48
  %i.bv = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  store i8 %i.bu, ptr %.020.i, align 1
  %i.bw = urem i32 %.0.i, 100
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 2
  %i.cb = getelementptr inbounds nuw i8, ptr %.020.i, i64 2
  store i8 %i.ca, ptr %i.bv, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.020.i, i64 3
  store i8 %i.cd, ptr %i.cb, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.s:                                             ; preds = %bb.q
  %i.cf = icmp samesign ugt i32 %.0.i, 9
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = shl nuw nsw i32 %.0.i, 1
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.ch ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  store i8 %i.cj, ptr %.020.i, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.020.i, i64 2
  store i8 %i.cm, ptr %i.ck, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.u:                                             ; preds = %bb.s
  %i.co = trunc nuw nsw i32 %.0.i to i8
  %i.cp = or disjoint i8 %i.co, 48
  %i.cq = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  store i8 %i.cp, ptr %.020.i, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.v:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ct = add nsw i32 %1, -1
  %i.cu = sext i32 %i.ct to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull align 1 %i.cs, i64 %i.cu, i1 false)
  store i8 46, ptr %i.cs, align 1
  %i.cv = sext i32 %1 to i64
  %i.cw = getelementptr i8, ptr %0, i64 %i.cv     ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 1
  store i8 101, ptr %i.cx, align 1
  %i.cy = getelementptr i8, ptr %i.cw, i64 2      ; 2 uses
  %i.cz = icmp slt i32 %i.n, 0
  br i1 %i.cz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr i8, ptr %i.cw, i64 3
  store i8 45, ptr %i.cy, align 1
  %i.db = sub i32 1, %i.a
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.020.i109 = phi ptr [ %i.da, %bb.w ], [ %i.cy, %bb.v ] ; 9 uses
  %.0.i110 = phi i32 [ %i.db, %bb.w ], [ %i.n, %bb.v ] ; 6 uses
  %i.dc = icmp samesign ugt i32 %.0.i110, 99
  br i1 %i.dc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dd = udiv i32 %.0.i110, 100
  %i.de = trunc i32 %i.dd to i8
  %i.df = add i8 %i.de, 48
  %i.dg = getelementptr inbounds nuw i8, ptr %.020.i109, i64 1
  store i8 %i.df, ptr %.020.i109, align 1
  %i.dh = urem i32 %.0.i110, 100
  %i.di = shl nuw nsw i32 %i.dh, 1
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.dj ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.020.i109, i64 2
  store i8 %i.dl, ptr %i.dg, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.020.i109, i64 3
  store i8 %i.do, ptr %i.dm, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.z:                                             ; preds = %bb.x
  %i.dq = icmp samesign ugt i32 %.0.i110, 9
  br i1 %i.dq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dr = shl nuw nsw i32 %.0.i110, 1
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.020.i109, i64 1
  store i8 %i.du, ptr %.020.i109, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.020.i109, i64 2
  store i8 %i.dx, ptr %i.dv, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.ab:                                            ; preds = %bb.z
  %i.dz = trunc nuw nsw i32 %.0.i110 to i8
  %i.ea = or disjoint i8 %i.dz, 48
  %i.eb = getelementptr inbounds nuw i8, ptr %.020.i109, i64 1
  store i8 %i.ea, ptr %.020.i109, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

_ZN9rapidjson8internal13WriteExponentEiPc.exit:   ; preds = %.loopexit142, %.loopexit, %bb.ab, %bb.aa, %bb.y, %bb.u, %bb.t, %bb.r, %.thread, %bb.k, %bb.m, %bb.f, %._crit_edge126, %._crit_edge129
  %.3 = phi ptr [ %i.m, %._crit_edge129 ], [ %i.af, %._crit_edge126 ], [ %i.ad, %.thread ], [ %i.ai, %bb.f ], [ %i.cq, %bb.u ], [ %i.bk, %bb.m ], [ %i.eb, %bb.ab ], [ %i.bf, %bb.k ], [ %i.ce, %bb.r ], [ %i.cn, %bb.t ], [ %i.dp, %bb.y ], [ %i.dy, %bb.aa ], [ %i.bc, %.loopexit142 ], [ %i.bb, %.loopexit ]
  ret ptr %.3
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson8internal8DigitGenERKNS0_5DiyFpES3_mPcPiS5_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = sub nsw i32 0, %i.b
  %i.d = zext nneg i32 %i.c to i64                ; 5 uses
  %i.e = shl nuw i64 1, %i.d                      ; 4 uses
  %i.f = load i64, ptr %1, align 8                ; 3 uses
  %i.g = load i64, ptr %0, align 8
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = lshr i64 %i.f, %i.d
  %i.j = trunc i64 %i.i to i32                    ; 9 uses
  %i.k = add i64 %i.e, -1                         ; 2 uses
  %i.l = and i64 %i.k, %i.f                       ; 2 uses
  %i.m = icmp ult i32 %i.j, 10
  br i1 %i.m, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ult i32 %i.j, 100
  br i1 %i.n, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult i32 %i.j, 1000
  br i1 %i.o, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ult i32 %i.j, 10000
  br i1 %i.p, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ult i32 %i.j, 100000
end_hunk_0

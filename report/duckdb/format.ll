inline.NumInlined: 5790
inline.NumDeleted: 1347
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 176
begin_hunk_0_@_ZN10duckdb_fmt2v68internal14snprintf_floatIeEEiT_iNS1_11float_specsERNS1_6bufferIcEE:bb.a
  %.lcssa = phi i32 [ %i.cq, %.unr-lcssa ], [ %i.cw, %bb.ab ] ; 2 uses
  %i.cx = icmp eq i8 %i.bo, 45
  %i.cy = sub nsw i32 0, %.lcssa
  %spec.select = select i1 %i.cx, i32 %i.cy, i32 %.lcssa
  %i.cz = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.not115 = icmp eq i64 %.094.add, 1
  br i1 %.not115, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %.epilog-lcssa, %.preheader
  %.ptr.pn = phi ptr [ %.0, %.preheader ], [ %.ptr.le, %.epilog-lcssa ]
  %.0 = getelementptr inbounds i8, ptr %.ptr.pn, i64 -1 ; 3 uses
  %i.da = load i8, ptr %.0, align 1, !tbaa !18
  %i.db = icmp eq i8 %i.da, 48
  br i1 %i.db, label %.preheader, label %bb.ac, !llvm.loop !83

bb.ac:                                            ; preds = %.preheader
  %i.dc = ptrtoint ptr %.0 to i64
  %i.dd = ptrtoint ptr %i.y to i64
  %i.de = xor i64 %i.dd, -1
  %i.df = add i64 %i.dc, %i.de                    ; 2 uses
  %i.dg = trunc i64 %i.df to i32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %sext = shl i64 %i.df, 32
  %i.di = ashr exact i64 %sext, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull align 1 %i.dh, i64 %i.di, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.epilog-lcssa
  %.089 = phi i32 [ %i.dg, %bb.ac ], [ 0, %.epilog-lcssa ] ; 2 uses
  %i.dj = sext i32 %.089 to i64
  %i.dk = add i64 %i.w, %i.dj                     ; 3 uses
  %i.dl = load i64, ptr %i.v, align 8, !tbaa !13
  %i.dm = icmp ugt i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.ae, label %_ZN10duckdb_fmt2v68internal6bufferIcE6resizeEm.exit121

bb.ae:                                            ; preds = %bb.ad
  %i.dn = load ptr, ptr %3, align 8, !tbaa !14
  %i.do = load ptr, ptr %i.dn, align 8
  tail call void %i.do(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.dk), !inline_history !37
  br label %_ZN10duckdb_fmt2v68internal6bufferIcE6resizeEm.exit121

_ZN10duckdb_fmt2v68internal6bufferIcE6resizeEm.exit121: ; preds = %bb.ad, %bb.ae
  store i64 %i.dk, ptr %i.s, align 8, !tbaa !10
  %i.dp = sub nsw i32 %spec.select, %.089
  br label %bb.af

_ZN10duckdb_fmt2v68internal6bufferIcE7reserveEm.exit.sink.split: ; preds = %bb.o, %bb.m
  %.sink = phi i64 [ %i.ag, %bb.m ], [ %i.ai, %bb.o ]
  %i.dq = load ptr, ptr %3, align 8, !tbaa !14
  %i.dr = load ptr, ptr %i.dq, align 8
  tail call void %i.dr(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %.sink)
  br label %_ZN10duckdb_fmt2v68internal6bufferIcE7reserveEm.exit.backedge

_ZN10duckdb_fmt2v68internal6bufferIcE7reserveEm.exit.backedge: ; preds = %_ZN10duckdb_fmt2v68internal6bufferIcE7reserveEm.exit.sink.split, %bb.o, %bb.l
  br label %_ZN10duckdb_fmt2v68internal6bufferIcE7reserveEm.exit, !llvm.loop !78

bb.af:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bufferIcE6resizeEm.exit121, %_ZN10duckdb_fmt2v68internal6bufferIcE6resizeEm.exit120, %_ZN10duckdb_fmt2v68internal6bufferIcE6resizeEm.exit119, %_ZN10duckdb_fmt2v68internal6bufferIcE6resizeEm.exit
  %.3.ph = phi i32 [ %i.dp, %_ZN10duckdb_fmt2v68internal6bufferIcE6resizeEm.exit121 ], [ 0, %_ZN10duckdb_fmt2v68internal6bufferIcE6resizeEm.exit120 ], [ %i.bh, %_ZN10duckdb_fmt2v68internal6bufferIcE6resizeEm.exit119 ], [ 0, %_ZN10duckdb_fmt2v68internal6bufferIcE6resizeEm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.3.ph
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZN10duckdb_fmt2v68internal12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE(double noundef %0, i32 noundef %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #9 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.sroa.4117.0.extract.shift = lshr i64 %2, 32
  %.sroa.4117.0.extract.trunc = trunc nuw i64 %.sroa.4117.0.extract.shift to i32 ; 2 uses
  %i.b = and i64 %2, 1095216660480
  %i.c = icmp eq i64 %i.b, 8589934592             ; 3 uses
  %i.d = fcmp ugt double %0, 0.000000e+00
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %1, 0
  %or.cond = select i1 %i.e, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !10   ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZN10duckdb_fmt2v68internal6bufferIcE9push_backERKc.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %3, align 8, !tbaa !14
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.h), !inline_history !84
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !10 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN10duckdb_fmt2v68internal6bufferIcE9push_backERKc.exit

_ZN10duckdb_fmt2v68internal6bufferIcE9push_backERKc.exit: ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i64 [ %i.h, %bb.c ], [ %.pre2.i, %bb.d ]
  %i.n = phi i64 [ %i.g, %bb.c ], [ %.pre.i, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  store i64 %.pre-phi.i, ptr %i.f, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 48, ptr %i.q, align 1, !tbaa !18
  br label %bb.bx

bb.e:                                             ; preds = %bb.b
  %i.r = zext nneg i32 %1 to i64                  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %bb.f, label %_ZSt20uninitialized_fill_nIPcicET_S1_T0_RKT1_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %3, align 8, !tbaa !14
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.r), !inline_history !37
  br label %_ZSt20uninitialized_fill_nIPcicET_S1_T0_RKT1_.exit

_ZSt20uninitialized_fill_nIPcicET_S1_T0_RKT1_.exit: ; preds = %bb.e, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.r, ptr %i.x, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.z, i8 48, i64 %i.r, i1 false)
  %i.aa = sub nsw i32 0, %1
  br label %bb.bx

bb.g:                                             ; preds = %bb.a
  %i.ab = and i32 %.sroa.4117.0.extract.trunc, 268435456
  %.not139 = icmp eq i32 %i.ab, 0
  br i1 %.not139, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call noundef i32 @_ZN10duckdb_fmt2v68internal14snprintf_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE(double noundef %0, i32 noundef %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %bb.bx

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %.not140 = icmp eq i32 %1, -1
  br i1 %.not140, label %bb.au, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp sgt i32 %1, 17
  br i1 %i.ad, label %bb.k, label %_ZN10duckdb_fmt2v68internal2fpC2IdEET_.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call noundef i32 @_ZN10duckdb_fmt2v68internal14snprintf_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE(double noundef %0, i32 noundef %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %bb.bw

_ZN10duckdb_fmt2v68internal2fpC2IdEET_.exit:      ; preds = %bb.j
  %i.af = bitcast double %0 to i64                ; 2 uses
  %i.ag = and i64 %i.af, 4503599627370495         ; 2 uses
  %i.ah = lshr i64 %i.af, 52
  %i.ai = and i64 %i.ah, 2047                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.ai, 0
  %i.aj = or disjoint i64 %i.ag, 4503599627370496
  %i.ak = trunc nuw nsw i64 %i.ai to i32
  %i.al = add nsw i32 %i.ak, -1075
  br i1 %.not.i.i, label %.lr.ph.i, label %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit

.lr.ph.i:                                         ; preds = %_ZN10duckdb_fmt2v68internal2fpC2IdEET_.exit, %.lr.ph.i
  %.sroa.7.06.i = phi i32 [ %i.an, %.lr.ph.i ], [ -1074, %_ZN10duckdb_fmt2v68internal2fpC2IdEET_.exit ]
  %.sroa.0.05.i = phi i64 [ %i.am, %.lr.ph.i ], [ %i.ag, %_ZN10duckdb_fmt2v68internal2fpC2IdEET_.exit ] ; 2 uses
  %i.am = shl i64 %.sroa.0.05.i, 1                ; 2 uses
  %i.an = add nsw i32 %.sroa.7.06.i, -1           ; 2 uses
  %i.ao = and i64 %.sroa.0.05.i, 2251799813685248
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i, label %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit, !llvm.loop !85

_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit: ; preds = %.lr.ph.i, %_ZN10duckdb_fmt2v68internal2fpC2IdEET_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %i.aj, %_ZN10duckdb_fmt2v68internal2fpC2IdEET_.exit ], [ %i.am, %.lr.ph.i ]
  %.sroa.7.0.lcssa.i = phi i32 [ %i.al, %_ZN10duckdb_fmt2v68internal2fpC2IdEET_.exit ], [ %i.an, %.lr.ph.i ] ; 2 uses
  %i.aq = shl i64 %.sroa.0.0.lcssa.i, 11
  %i.ar = sub i32 -50, %.sroa.7.0.lcssa.i
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.as, 1292913986
  %i.au = add nsw i64 %i.at, 4294967294
  %i.av = lshr i64 %i.au, 32
  %i.aw = trunc nuw i64 %i.av to i32
  %i.ax = add nsw i32 %i.aw, 347
  %i.ay = sdiv i32 %i.ax, 8
  %i.az = add nsw i32 %i.ay, 1                    ; 2 uses
  %i.ba = shl nsw i32 %i.az, 3                    ; 3 uses
  %i.bb = sext i32 %i.az to i64                   ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE18pow10_significandsE, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !31
  %i.be = getelementptr inbounds [2 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE15pow10_exponentsE, i64 %i.bb
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !32
  %i.bg = sext i16 %i.bf to i32
  %i.bh = zext i64 %i.aq to i128
  %i.bi = zext i64 %i.bd to i128
  %i.bj = mul nuw i128 %i.bi, %i.bh               ; 2 uses
  %i.bk = lshr i128 %i.bj, 64
  %i.bl = trunc nuw i128 %i.bk to i64
  %i.bm = trunc i128 %i.bj to i64
  %i.bn = lshr i64 %i.bm, 63
  %i.bo = add nuw i64 %i.bn, %i.bl                ; 4 uses
  %i.bp = add i32 %.sroa.7.0.lcssa.i, %i.bg
  %.neg421 = sub i32 -53, %i.bp
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !17 ; 15 uses
  %i.bs = zext nneg i32 %.neg421 to i64           ; 6 uses
  %i.bt = shl nuw i64 1, %i.bs                    ; 6 uses
  %i.bu = lshr i64 %i.bo, %i.bs
  %i.bv = trunc i64 %i.bu to i32                  ; 3 uses
  %i.bw = add i64 %i.bt, -1                       ; 2 uses
  %i.bx = and i64 %i.bw, %i.bo                    ; 2 uses
  %i.by = or i32 %i.bv, 1
  %i.bz = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.by, i1 true)
  %i.ca = sub nuw nsw i32 32, %i.bz
  %i.cb = mul nuw nsw i32 %i.ca, 1233
  %i.cc = lshr i32 %i.cb, 12                      ; 2 uses
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE23zero_or_powers_of_10_32E, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = icmp ule i32 %i.cf, %i.bv
  %i.ch = zext i1 %i.cg to i32
  %i.ci = add nuw nsw i32 %i.cc, %i.ch            ; 5 uses
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr [8 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE15powers_of_10_64E, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = shl i64 %i.cm, %i.bs                    ; 3 uses
  %i.co = udiv i64 %i.bo, 10                      ; 4 uses
  br i1 %i.c, label %bb.l, label %_ZN10duckdb_fmt2v68internal13fixed_handler8on_startEmmmRi.exit

bb.l:                                             ; preds = %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit
  %reass.sub = add nsw i32 %1, 348
  %i.cp = sub i32 %reass.sub, %i.ba
  %i.cq = add i32 %i.cp, %i.ci                    ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %_ZN10duckdb_fmt2v68internal13fixed_handler8on_startEmmmRi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = icmp slt i32 %i.cq, 0
  br i1 %i.cs, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = sub i64 %i.cn, %i.co
  %.not.i.i159 = icmp ugt i64 %i.co, %i.ct
  br i1 %.not.i.i159, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cu = shl nuw nsw i64 %i.co, 1
  %i.cv = sub i64 %i.cn, %i.cu
  %.not16.i.i = icmp ult i64 %i.cv, 20
  br i1 %.not16.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not17.i.i = icmp ult i64 %i.bo, 100
  br i1 %.not17.i.i, label %.thread398, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = add nsw i64 %i.co, -10                  ; 2 uses
  %i.cx = sub i64 %i.cn, %i.cw
  %.not18.i.i = icmp ult i64 %i.cw, %i.cx
  br i1 %.not18.i.i, label %.thread398, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.cy = phi i8 [ 48, %bb.o ], [ 49, %bb.q ]
  store i8 %i.cy, ptr %i.br, align 1, !tbaa !18
  br label %.critedge

_ZN10duckdb_fmt2v68internal13fixed_handler8on_startEmmmRi.exit: ; preds = %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit, %bb.l
  %.sroa.32.0 = phi i32 [ %i.cq, %bb.l ], [ %1, %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit ] ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.sroa.32.0, i32 1) ; 2 uses
  %i.cz = add nsw i32 %smax, -1                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.cz to i64
  br label %bb.s

bb.s:                                             ; preds = %_ZN10duckdb_fmt2v68internal13fixed_handler8on_startEmmmRi.exit, %bb.aj
  %indvars.iv519 = phi i64 [ 1, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_startEmmmRi.exit ], [ %indvars.iv.next520, %bb.aj ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_startEmmmRi.exit ], [ %indvars.iv.next, %bb.aj ] ; 4 uses
  %i.da = phi i32 [ %i.ci, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_startEmmmRi.exit ], [ %i.dt, %bb.aj ] ; 3 uses
  %.0382 = phi i32 [ %i.bv, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_startEmmmRi.exit ], [ %.1383, %bb.aj ] ; 20 uses
  switch i32 %i.da, label %bb.ad [
    i32 10, label %bb.t
    i32 9, label %bb.u
    i32 8, label %bb.v
    i32 7, label %bb.w
    i32 6, label %bb.x
    i32 5, label %bb.y
    i32 4, label %bb.z
    i32 3, label %bb.aa
    i32 2, label %bb.ab
    i32 1, label %bb.ac
  ]

bb.t:                                             ; preds = %bb.s
  %i.db = udiv i32 %.0382, 1000000000
  %i.dc = urem i32 %.0382, 1000000000
  br label %bb.ad

bb.u:                                             ; preds = %bb.s
  %i.dd = udiv i32 %.0382, 100000000
  %i.de = urem i32 %.0382, 100000000
  br label %bb.ad

bb.v:                                             ; preds = %bb.s
  %i.df = udiv i32 %.0382, 10000000
  %i.dg = urem i32 %.0382, 10000000
  br label %bb.ad

bb.w:                                             ; preds = %bb.s
  %i.dh = udiv i32 %.0382, 1000000
  %i.di = urem i32 %.0382, 1000000
  br label %bb.ad

bb.x:                                             ; preds = %bb.s
  %i.dj = udiv i32 %.0382, 100000
  %i.dk = urem i32 %.0382, 100000
  br label %bb.ad

bb.y:                                             ; preds = %bb.s
  %i.dl = udiv i32 %.0382, 10000
  %i.dm = urem i32 %.0382, 10000
  br label %bb.ad

bb.z:                                             ; preds = %bb.s
  %i.dn = udiv i32 %.0382, 1000
  %i.do = urem i32 %.0382, 1000
  br label %bb.ad

bb.aa:                                            ; preds = %bb.s
  %i.dp = udiv i32 %.0382, 100
  %i.dq = urem i32 %.0382, 100
  br label %bb.ad

bb.ab:                                            ; preds = %bb.s
  %i.dr = udiv i32 %.0382, 10
  %i.ds = urem i32 %.0382, 10
  br label %bb.ad

bb.ac:                                            ; preds = %bb.s
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %.0384 = phi i32 [ 0, %bb.s ], [ %i.db, %bb.t ], [ %i.dd, %bb.u ], [ %i.df, %bb.v ], [ %i.dh, %bb.w ], [ %i.dj, %bb.x ], [ %i.dl, %bb.y ], [ %i.dn, %bb.z ], [ %i.dp, %bb.aa ], [ %i.dr, %bb.ab ], [ %.0382, %bb.ac ]
  %.1383 = phi i32 [ %.0382, %bb.s ], [ %i.dc, %bb.t ], [ %i.de, %bb.u ], [ %i.dg, %bb.v ], [ %i.di, %bb.w ], [ %i.dk, %bb.x ], [ %i.dm, %bb.y ], [ %i.do, %bb.z ], [ %i.dq, %bb.aa ], [ %i.ds, %bb.ab ], [ 0, %bb.ac ] ; 2 uses
  %i.dt = add nsw i32 %i.da, -1                   ; 6 uses
  %i.du = trunc i32 %.0384 to i8                  ; 2 uses
  %i.dv = add i8 %i.du, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !18
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.dx = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %i.dy = zext i32 %.1383 to i64
  %i.dz = shl i64 %i.dy, %i.bs
  %i.ea = add i64 %i.dz, %i.bx                    ; 5 uses
  %i.eb = sext i32 %i.dt to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE15powers_of_10_64E, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !31
  %i.ee = shl i64 %i.ed, %i.bs                    ; 3 uses
  %i.ef = sub i64 %i.ee, %i.ea
  %.not.i.i160 = icmp ugt i64 %i.ea, %i.ef
  br i1 %.not.i.i160, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eg = shl i64 %i.ea, 1
  %i.eh = sub i64 %i.ee, %i.eg
  %.not16.i.i161 = icmp ult i64 %i.eh, 2
  br i1 %.not16.i.i161, label %bb.ag, label %bb.ar

bb.ag:                                            ; preds = %bb.af
  %.not17.i.i163 = icmp eq i64 %i.ea, 0
  br i1 %.not17.i.i163, label %.thread398, label %.thread

.thread:                                          ; preds = %bb.ae, %bb.ag
  %i.ei = add i64 %i.ea, -1                       ; 2 uses
  %i.ej = sub i64 %i.ee, %i.ei
  %.not18.i.i164 = icmp ult i64 %i.ei, %i.ej
  br i1 %.not18.i.i164, label %.thread398, label %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i

_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i: ; preds = %.thread
  %i.ek = getelementptr i8, ptr %i.br, i64 %indvars.iv.next
  %i.el = getelementptr i8, ptr %i.br, i64 %indvars.iv
  %i.em = add i8 %i.du, 49
  store i8 %i.em, ptr %i.el, align 1, !tbaa !18
  %.not = icmp eq i32 %i.cz, 0
  br i1 %.not, label %.critedge.i, label %.lr.ph.i165

.lr.ph.i165:                                      ; preds = %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i, %bb.ah
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ah ], [ %indvars.iv.next, %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv.next.i ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !18
  %i.ep = icmp sgt i8 %i.eo, 57
  br i1 %i.ep, label %bb.ah, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ah, %.lr.ph.i165, %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i
  %i.eq = load i8, ptr %i.br, align 1, !tbaa !18
  %i.er = icmp sgt i8 %i.eq, 57
  br i1 %i.er, label %bb.ai, label %bb.ar

bb.ah:                                            ; preds = %.lr.ph.i165
  store i8 48, ptr %i.en, align 1, !tbaa !18
  %i.es = getelementptr i8, ptr %i.br, i64 %indvars.iv.i
  %i.et = getelementptr i8, ptr %i.es, i64 -2     ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !18
  %i.ev = add i8 %i.eu, 1
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !18
  %i.ew = icmp samesign ugt i64 %indvars.iv.i, 2
  br i1 %i.ew, label %.lr.ph.i165, label %.critedge.i, !llvm.loop !86

bb.ai:                                            ; preds = %.critedge.i
  store i8 49, ptr %i.br, align 1, !tbaa !18
  %i.ex = add nuw nsw i32 %smax, 1
  store i8 48, ptr %i.ek, align 1, !tbaa !18
  br label %bb.ar

bb.aj:                                            ; preds = %bb.ad
  %i.ey = icmp samesign ugt i32 %i.da, 1
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1
  br i1 %i.ey, label %bb.s, label %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178, !llvm.loop !87

_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178: ; preds = %bb.aj, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178
  %i.ez = phi i32 [ %i.fg, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178 ], [ %i.dt, %bb.aj ]
  %indvars.iv522 = phi i64 [ %indvars.iv.next523, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178 ], [ %indvars.iv519, %bb.aj ] ; 4 uses
  %.039.i = phi i64 [ %i.ff, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178 ], [ %i.bx, %bb.aj ]
  %.036.i = phi i64 [ %i.fb, %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178 ], [ 1, %bb.aj ] ; 2 uses
  %i.fa = mul i64 %.039.i, 10                     ; 2 uses
  %i.fb = mul i64 %.036.i, 10                     ; 6 uses
  %i.fc = lshr i64 %i.fa, %i.bs
  %i.fd = trunc i64 %i.fc to i8                   ; 2 uses
  %i.fe = add i8 %i.fd, 48
  %i.ff = and i64 %i.fa, %i.bw                    ; 6 uses
  %i.fg = add nsw i32 %i.ez, -1                   ; 4 uses
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv522
  store i8 %i.fe, ptr %i.fh, align 1, !tbaa !18
  %i.fi = trunc nuw i64 %indvars.iv.next523 to i32 ; 3 uses
  %i.fj = icmp sgt i32 %.sroa.32.0, %i.fi
  br i1 %i.fj, label %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178, label %bb.ak, !llvm.loop !88

bb.ak:                                            ; preds = %_ZN10duckdb_fmt2v68internal13fixed_handler8on_digitEcmmmib.exit178
  %i.fk = trunc nuw nsw i64 %indvars.iv522 to i32
  %.not.i166 = icmp ult i64 %i.fb, %i.bt
  %i.fl = sub nuw i64 %i.bt, %i.fb
  %.not22.i = icmp ult i64 %i.fb, %i.fl
  %or.cond.i = select i1 %.not.i166, i1 %.not22.i, i1 false
  br i1 %or.cond.i, label %bb.al, label %.thread398

bb.al:                                            ; preds = %bb.ak
  %i.fm = sub i64 %i.bt, %i.ff
  %.not.i.i168 = icmp ugt i64 %i.ff, %i.fm
  br i1 %.not.i.i168, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fn = mul i64 %.036.i, 20
  %i.fo = shl nuw i64 %i.ff, 1
  %i.fp = sub i64 %i.bt, %i.fo
  %.not16.i.i169 = icmp ugt i64 %i.fn, %i.fp
  br i1 %.not16.i.i169, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am, %bb.al
  %.not17.i.i170 = icmp ult i64 %i.ff, %i.fb
  br i1 %.not17.i.i170, label %.thread398, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fq = sub nuw nsw i64 %i.ff, %i.fb            ; 2 uses
  %i.fr = sub i64 %i.bt, %i.fq
  %.not18.i.i171 = icmp ult i64 %i.fq, %i.fr
  br i1 %.not18.i.i171, label %.thread398, label %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i172

_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i172: ; preds = %bb.ao
  %i.fs = getelementptr i8, ptr %i.br, i64 %indvars.iv.next523
  %i.ft = getelementptr i8, ptr %i.br, i64 %indvars.iv522
  %i.fu = add i8 %i.fd, 49
  store i8 %i.fu, ptr %i.ft, align 1, !tbaa !18
  br label %.lr.ph.i175

.lr.ph.i175:                                      ; preds = %bb.ap, %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i172
  %indvars.iv.i176 = phi i64 [ %indvars.iv.next523, %_ZN10duckdb_fmt2v68internal19get_round_directionEmmm.exit.i172 ], [ %indvars.iv.next.i177, %bb.ap ] ; 3 uses
  %indvars.iv.next.i177 = add nsw i64 %indvars.iv.i176, -1 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv.next.i177 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !18
  %i.fx = icmp sgt i8 %i.fw, 57
  br i1 %i.fx, label %bb.ap, label %.critedge.i173

.critedge.i173:                                   ; preds = %bb.ap, %.lr.ph.i175
  %i.fy = load i8, ptr %i.br, align 1, !tbaa !18
  %i.fz = icmp sgt i8 %i.fy, 57
  br i1 %i.fz, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %.lr.ph.i175
  store i8 48, ptr %i.fv, align 1, !tbaa !18
  %i.ga = getelementptr i8, ptr %i.br, i64 %indvars.iv.i176
  %i.gb = getelementptr i8, ptr %i.ga, i64 -2     ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !18
  %i.gd = add i8 %i.gc, 1
  store i8 %i.gd, ptr %i.gb, align 1, !tbaa !18
  %i.ge = icmp samesign ugt i64 %indvars.iv.i176, 2
  br i1 %i.ge, label %.lr.ph.i175, label %.critedge.i173, !llvm.loop !86

bb.aq:                                            ; preds = %.critedge.i173
  store i8 49, ptr %i.br, align 1, !tbaa !18
  %i.gf = add nuw nsw i32 %i.fk, 2
  store i8 48, ptr %i.fs, align 1, !tbaa !18
  br label %bb.ar

.thread398:                                       ; preds = %bb.an, %bb.ao, %bb.ak, %bb.ag, %.thread, %bb.q, %bb.p
  %i.gg = tail call noundef i32 @_ZN10duckdb_fmt2v68internal14snprintf_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE(double noundef %0, i32 noundef %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %bb.bw

bb.ar:                                            ; preds = %bb.af, %bb.ai, %.critedge.i, %bb.am, %bb.aq, %.critedge.i173
  %.promoted = phi i32 [ %i.fg, %bb.aq ], [ %i.fg, %.critedge.i173 ], [ %i.fg, %bb.am ], [ %i.dt, %bb.ai ], [ %i.dt, %.critedge.i ], [ %i.dt, %bb.af ] ; 2 uses
  %.sroa.16272.2.ph = phi i32 [ %i.gf, %bb.aq ], [ %i.fi, %.critedge.i173 ], [ %i.fi, %bb.am ], [ %i.ex, %bb.ai ], [ %i.dx, %.critedge.i ], [ %i.dx, %bb.af ] ; 2 uses
  br i1 %i.c, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.ar
  %i.gh = load ptr, ptr %i.bq, align 8, !tbaa !17
  %i.gi = zext i32 %.sroa.16272.2.ph to i64
  br label %bb.as

bb.as:                                            ; preds = %.preheader, %bb.at
  %indvars.iv525 = phi i64 [ %i.gi, %.preheader ], [ %indvars.iv.next526, %bb.at ] ; 3 uses
  %i.gj = phi i32 [ %.promoted, %.preheader ], [ %i.go, %bb.at ] ; 2 uses
  %indvars.iv.next526 = add nsw i64 %indvars.iv525, -1 ; 2 uses
  %i.gk = and i64 %indvars.iv.next526, 4294967295
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !18
  %i.gn = icmp eq i8 %i.gm, 48
  br i1 %i.gn, label %bb.at, label %.critedge.loopexit.split.loop.exit612

bb.at:                                            ; preds = %bb.as
  %i.go = add nsw i32 %i.gj, 1                    ; 2 uses
  %.old3 = icmp samesign ugt i64 %indvars.iv525, 1
  br i1 %.old3, label %bb.as, label %.critedge

.critedge.loopexit.split.loop.exit612:            ; preds = %bb.as
  %i.gp = trunc nuw i64 %indvars.iv525 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.at, %.critedge.loopexit.split.loop.exit612, %bb.r, %bb.m, %bb.ar
  %i.gq = phi i32 [ %i.ci, %bb.m ], [ %i.ci, %bb.r ], [ %.promoted, %bb.ar ], [ %i.gj, %.critedge.loopexit.split.loop.exit612 ], [ %i.go, %bb.at ] ; 2 uses
  %.1132 = phi i32 [ 0, %bb.m ], [ 1, %bb.r ], [ %.sroa.16272.2.ph, %bb.ar ], [ %i.gp, %.critedge.loopexit.split.loop.exit612 ], [ 0, %bb.at ]
  %i.gr = zext i32 %.1132 to i64                  ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !13
  %i.gu = icmp ult i64 %i.gt, %i.gr
  br i1 %i.gu, label %.sink.split, label %bb.bv

bb.au:                                            ; preds = %bb.i
  %i.gv = and i32 %.sroa.4117.0.extract.trunc, 134217728
  %.not141 = icmp eq i32 %i.gv, 0
  %i.gw = bitcast double %0 to i64                ; 2 uses
  %i.gx = and i64 %i.gw, 4503599627370495         ; 5 uses
  %i.gy = lshr i64 %i.gw, 52
  %i.gz = and i64 %i.gy, 2047                     ; 6 uses
  %.not.i.i184 = icmp eq i64 %i.gz, 0             ; 2 uses
  br i1 %.not141, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %.not.i.i184, label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i, label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i

_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i: ; preds = %bb.av
  %i.ha = or disjoint i64 %i.gx, 4503599627370496
  %i.hb = trunc nuw nsw i64 %i.gz to i32
  %i.hc = add nsw i32 %i.hb, -1075
  %i.hd = icmp samesign ult i64 %i.gz, 897
  %i.he = sub nsw i64 897, %i.gz
  %i.hf = and i64 %i.he, 4294967295
  %i.hg = shl i64 268435456, %i.hf
  %spec.select.i = select i1 %i.hd, i64 %i.hg, i64 268435456
  br label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i

_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i: ; preds = %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i, %bb.av
  %.sroa.0254.1 = phi i64 [ %i.gx, %bb.av ], [ %i.ha, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i ] ; 4 uses
  %.sink.i = phi i32 [ -1074, %bb.av ], [ %i.hc, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i ] ; 5 uses
  %i.hh = phi i64 [ poison, %bb.av ], [ %spec.select.i, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i ] ; 2 uses
  %i.hi = add i64 %i.hh, %.sroa.0254.1            ; 3 uses
  %i.hj = and i64 %i.hi, 4503599627370496
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %.lr.ph.i.i, label %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit

.lr.ph.i.i:                                       ; preds = %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i, %.lr.ph.i.i
  %.sroa.7.06.i.i = phi i32 [ %i.hm, %.lr.ph.i.i ], [ %.sink.i, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i ]
  %.sroa.0.05.i.i = phi i64 [ %i.hl, %.lr.ph.i.i ], [ %i.hi, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i ] ; 2 uses
  %i.hl = shl i64 %.sroa.0.05.i.i, 1              ; 2 uses
  %i.hm = add nsw i32 %.sroa.7.06.i.i, -1         ; 2 uses
  %i.hn = and i64 %.sroa.0.05.i.i, 2251799813685248
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %.lr.ph.i.i, label %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit, !llvm.loop !85

_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit: ; preds = %.lr.ph.i.i, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %i.hi, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i ], [ %i.hl, %.lr.ph.i.i ]
  %.sroa.7.0.lcssa.i.i = phi i32 [ %.sink.i, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i ], [ %i.hm, %.lr.ph.i.i ]
  %i.hp = shl i64 %.sroa.0.0.lcssa.i.i, 11
  %i.hq = icmp eq i64 %.sroa.0254.1, 4503599627370496
  %i.hr = icmp sgt i32 %.sink.i, -178
  %narrow.i = select i1 %i.hq, i1 %i.hr, i1 false
  %i.hs = zext i1 %narrow.i to i64
  %i.ht = lshr exact i64 %i.hh, %i.hs
  %i.hu = sub i64 %.sroa.0254.1, %i.ht
  %.neg.i181 = add nsw i32 %.sink.i, 11
  %i.hv = sub i32 %.neg.i181, %.sroa.7.0.lcssa.i.i
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  br i1 %.not.i.i184, label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194, label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185

_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185: ; preds = %bb.aw
  %i.hw = or disjoint i64 %i.gx, 4503599627370496
  %i.hx = trunc nuw nsw i64 %i.gz to i32          ; 3 uses
  %i.hy = add nsw i32 %i.hx, -1075                ; 2 uses
  %i.hz = icmp eq i64 %i.gx, 0
  %i.ia = icmp ne i64 %i.gz, 1
  %i.ib = and i1 %i.hz, %i.ia
  br i1 %i.ib, label %.thread.i, label %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194

.thread.i:                                        ; preds = %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185
  %i.ic = add nsw i32 %i.hx, -1077
  %.pre11.i = add nsw i32 %i.hx, -1076
  br label %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit

_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194: ; preds = %bb.aw, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185
  %.sroa.0254.2 = phi i64 [ %i.hw, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185 ], [ %i.gx, %bb.aw ] ; 4 uses
  %.sroa.12.1 = phi i32 [ %i.hy, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.i185 ], [ -1074, %bb.aw ] ; 3 uses
  %i.id = shl nuw nsw i64 %.sroa.0254.2, 1        ; 2 uses
  %i.ie = add nsw i32 %.sroa.12.1, -1             ; 4 uses
  %i.if = or disjoint i64 %i.id, 1                ; 2 uses
  %i.ig = and i64 %.sroa.0254.2, 4503599627370496
  %i.ih = icmp eq i64 %i.ig, 0
  %i.ii = add nsw i64 %i.id, -1                   ; 2 uses
  br i1 %i.ih, label %.lr.ph.i.i191, label %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit

.lr.ph.i.i191:                                    ; preds = %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194, %.lr.ph.i.i191
  %.sroa.7.06.i.i192 = phi i32 [ %i.ik, %.lr.ph.i.i191 ], [ %i.ie, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ]
  %.sroa.0.05.i.i193 = phi i64 [ %i.ij, %.lr.ph.i.i191 ], [ %i.if, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ] ; 2 uses
  %i.ij = shl i64 %.sroa.0.05.i.i193, 1           ; 2 uses
  %i.ik = add nsw i32 %.sroa.7.06.i.i192, -1      ; 2 uses
  %i.il = and i64 %.sroa.0.05.i.i193, 4503599627370496
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %.lr.ph.i.i191, label %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit, !llvm.loop !89

_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit: ; preds = %.lr.ph.i.i191, %.thread.i, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194
  %.sroa.0254.3 = phi i64 [ 4503599627370496, %.thread.i ], [ %.sroa.0254.2, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %.sroa.0254.2, %.lr.ph.i.i191 ]
  %.sroa.12.2 = phi i32 [ %i.hy, %.thread.i ], [ %.sroa.12.1, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %.sroa.12.1, %.lr.ph.i.i191 ]
  %.sroa.6.018.i = phi i32 [ %i.ic, %.thread.i ], [ %i.ie, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %i.ie, %.lr.ph.i.i191 ]
  %.sroa.05.0.in17.i = phi i64 [ 18014398509481983, %.thread.i ], [ %i.ii, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %i.ii, %.lr.ph.i.i191 ]
  %.sroa.0.0.lcssa.i.i186 = phi i64 [ 9007199254740993, %.thread.i ], [ %i.if, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %i.ij, %.lr.ph.i.i191 ]
  %.sroa.7.0.lcssa.i.i187 = phi i32 [ %.pre11.i, %.thread.i ], [ %i.ie, %_ZN10duckdb_fmt2v68internal2fp6assignIdTnNSt9enable_ifIXeqstT_Lm8EEiE4typeELi0EEEbS5_.exit.thread.i194 ], [ %i.ik, %.lr.ph.i.i191 ]
  %i.in = shl i64 %.sroa.0.0.lcssa.i.i186, 10
  %.neg.i188 = add nsw i32 %.sroa.6.018.i, 10
  %i.io = sub i32 %.neg.i188, %.sroa.7.0.lcssa.i.i187
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit
  %.sink615 = phi i32 [ %i.io, %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit ], [ %i.hv, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit ]
  %.sroa.05.0.in17.i.sink = phi i64 [ %.sroa.05.0.in17.i, %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit ], [ %i.hu, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit ]
  %.sroa.0254.0 = phi i64 [ %.sroa.0254.3, %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit ], [ %.sroa.0254.1, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit ] ; 3 uses
  %.sroa.12.0 = phi i32 [ %.sroa.12.2, %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit ], [ %.sink.i, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit ] ; 2 uses
  %.pn422 = phi i64 [ %i.in, %_ZN10duckdb_fmt2v68internal2fp22assign_with_boundariesIdEENS1_10boundariesET_.exit ], [ %i.hp, %_ZN10duckdb_fmt2v68internal2fp28assign_float_with_boundariesIdEENS1_10boundariesET_.exit ]
  %i.ip = zext nneg i32 %.sink615 to i64
  %i.iq = shl i64 %.sroa.05.0.in17.i.sink, %i.ip
  %i.ir = and i64 %.sroa.0254.0, 4503599627370496
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %.lr.ph.i199, label %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202

.lr.ph.i199:                                      ; preds = %bb.ax, %.lr.ph.i199
  %.sroa.7.06.i200 = phi i32 [ %i.iu, %.lr.ph.i199 ], [ %.sroa.12.0, %bb.ax ]
  %.sroa.0.05.i201 = phi i64 [ %i.it, %.lr.ph.i199 ], [ %.sroa.0254.0, %bb.ax ] ; 2 uses
  %i.it = shl i64 %.sroa.0.05.i201, 1             ; 2 uses
  %i.iu = add nsw i32 %.sroa.7.06.i200, -1        ; 2 uses
  %i.iv = and i64 %.sroa.0.05.i201, 2251799813685248
  %i.iw = icmp eq i64 %i.iv, 0
  br i1 %i.iw, label %.lr.ph.i199, label %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202, !llvm.loop !85

_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202: ; preds = %.lr.ph.i199, %bb.ax
  %.sroa.0.0.lcssa.i195 = phi i64 [ %.sroa.0254.0, %bb.ax ], [ %i.it, %.lr.ph.i199 ]
  %.sroa.7.0.lcssa.i196 = phi i32 [ %.sroa.12.0, %bb.ax ], [ %i.iu, %.lr.ph.i199 ] ; 2 uses
  %i.ix = shl i64 %.sroa.0.0.lcssa.i195, 11
  %i.iy = sub i32 -50, %.sroa.7.0.lcssa.i196
  %i.iz = sext i32 %i.iy to i64
  %i.ja = mul nsw i64 %i.iz, 1292913986
  %i.jb = add nsw i64 %i.ja, 4294967294
  %i.jc = lshr i64 %i.jb, 32
  %i.jd = trunc nuw i64 %i.jc to i32
  %i.je = add nsw i32 %i.jd, 347
  %i.jf = sdiv i32 %i.je, 8
  %i.jg = add nsw i32 %i.jf, 1                    ; 2 uses
  %i.jh = shl nsw i32 %i.jg, 3                    ; 3 uses
  %i.ji = sext i32 %i.jg to i64                   ; 2 uses
  %i.jj = getelementptr inbounds [8 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE18pow10_significandsE, i64 %i.ji
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !31
  %i.jl = getelementptr inbounds [2 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE15pow10_exponentsE, i64 %i.ji
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !32
  %i.jn = sext i16 %i.jm to i32
  %i.jo = zext i64 %i.ix to i128
  %i.jp = zext i64 %i.jk to i128                  ; 3 uses
  %i.jq = mul nuw i128 %i.jp, %i.jo               ; 2 uses
  %i.jr = lshr i128 %i.jq, 64
  %i.js = trunc nuw i128 %i.jr to i64
  %i.jt = trunc i128 %i.jq to i64
  %.neg = ashr i64 %i.jt, 63
  %i.ju = add i32 %.sroa.7.0.lcssa.i196, %i.jn
  %.neg425 = sub i32 -53, %i.ju
  %i.jv = zext i64 %i.iq to i128
  %i.jw = mul nuw i128 %i.jp, %i.jv               ; 2 uses
  %i.jx = lshr i128 %i.jw, 64
  %i.jy = trunc nuw i128 %i.jx to i64
  %i.jz = trunc i128 %i.jw to i64
  %.neg482 = ashr i64 %i.jz, 63
  %i.ka = zext i64 %.pn422 to i128
  %i.kb = mul nuw i128 %i.jp, %i.ka               ; 2 uses
  %i.kc = lshr i128 %i.kb, 64
  %i.kd = trunc nuw i128 %i.kc to i64
  %i.ke = trunc i128 %i.kb to i64
  %i.kf = lshr i64 %i.ke, 63
  %i.kg = add nuw i64 %i.kd, 1
  %i.kh = add nuw i64 %i.kg, %i.kf                ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !17 ; 4 uses
  %.neg433 = sub i64 %.neg, %i.js
  %i.kk = add i64 %.neg433, %i.kh                 ; 4 uses
  %reass.sub483 = sub i64 %.neg482, %i.jy
  %.neg437 = add i64 %reass.sub483, 1
  %i.kl = add i64 %.neg437, %i.kh                 ; 6 uses
  %i.km = zext nneg i32 %.neg425 to i64           ; 5 uses
  %i.kn = shl nuw i64 1, %i.km                    ; 6 uses
  %i.ko = lshr i64 %i.kh, %i.km
  %i.kp = trunc i64 %i.ko to i32                  ; 3 uses
  %i.kq = add i64 %i.kn, -1                       ; 2 uses
  %i.kr = and i64 %i.kh, %i.kq                    ; 2 uses
  %i.ks = or i32 %i.kp, 1
  %i.kt = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ks, i1 true)
  %i.ku = sub nuw nsw i32 32, %i.kt
  %i.kv = mul nuw nsw i32 %i.ku, 1233
  %i.kw = lshr i32 %i.kv, 12                      ; 2 uses
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE23zero_or_powers_of_10_32E, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !3
  %i.la = icmp ule i32 %i.kz, %i.kp
  %i.lb = zext i1 %i.la to i32
  %i.lc = add nuw nsw i32 %i.kw, %i.lb
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202, %bb.bp
  %indvars.iv532 = phi i64 [ 1, %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202 ], [ %indvars.iv.next533, %bb.bp ] ; 2 uses
  %indvars.iv528 = phi i64 [ 0, %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202 ], [ %indvars.iv.next529, %bb.bp ] ; 3 uses
  %i.ld = phi i32 [ %i.lc, %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202 ], [ %i.lw, %bb.bp ] ; 3 uses
  %.0379 = phi i32 [ %i.kp, %_ZN10duckdb_fmt2v68internal9normalizeILi0EEENS1_2fpES3_.exit202 ], [ %.1380, %bb.bp ] ; 20 uses
  switch i32 %i.ld, label %bb.bj [
    i32 10, label %bb.az
    i32 9, label %bb.ba
    i32 8, label %bb.bb
    i32 7, label %bb.bc
    i32 6, label %bb.bd
    i32 5, label %bb.be
    i32 4, label %bb.bf
    i32 3, label %bb.bg
    i32 2, label %bb.bh
    i32 1, label %bb.bi
  ]

bb.az:                                            ; preds = %bb.ay
  %i.le = udiv i32 %.0379, 1000000000
  %i.lf = urem i32 %.0379, 1000000000
  br label %bb.bj

bb.ba:                                            ; preds = %bb.ay
  %i.lg = udiv i32 %.0379, 100000000
  %i.lh = urem i32 %.0379, 100000000
  br label %bb.bj

bb.bb:                                            ; preds = %bb.ay
  %i.li = udiv i32 %.0379, 10000000
  %i.lj = urem i32 %.0379, 10000000
  br label %bb.bj

bb.bc:                                            ; preds = %bb.ay
  %i.lk = udiv i32 %.0379, 1000000
  %i.ll = urem i32 %.0379, 1000000
  br label %bb.bj

bb.bd:                                            ; preds = %bb.ay
  %i.lm = udiv i32 %.0379, 100000
  %i.ln = urem i32 %.0379, 100000
  br label %bb.bj

bb.be:                                            ; preds = %bb.ay
  %i.lo = udiv i32 %.0379, 10000
  %i.lp = urem i32 %.0379, 10000
  br label %bb.bj

bb.bf:                                            ; preds = %bb.ay
  %i.lq = udiv i32 %.0379, 1000
  %i.lr = urem i32 %.0379, 1000
  br label %bb.bj

bb.bg:                                            ; preds = %bb.ay
  %i.ls = udiv i32 %.0379, 100
  %i.lt = urem i32 %.0379, 100
  br label %bb.bj

bb.bh:                                            ; preds = %bb.ay
  %i.lu = udiv i32 %.0379, 10
  %i.lv = urem i32 %.0379, 10
  br label %bb.bj

bb.bi:                                            ; preds = %bb.ay
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.0381 = phi i32 [ 0, %bb.ay ], [ %i.le, %bb.az ], [ %i.lg, %bb.ba ], [ %i.li, %bb.bb ], [ %i.lk, %bb.bc ], [ %i.lm, %bb.bd ], [ %i.lo, %bb.be ], [ %i.lq, %bb.bf ], [ %i.ls, %bb.bg ], [ %i.lu, %bb.bh ], [ %.0379, %bb.bi ]
  %.1380 = phi i32 [ %.0379, %bb.ay ], [ %i.lf, %bb.az ], [ %i.lh, %bb.ba ], [ %i.lj, %bb.bb ], [ %i.ll, %bb.bc ], [ %i.ln, %bb.bd ], [ %i.lp, %bb.be ], [ %i.lr, %bb.bf ], [ %i.lt, %bb.bg ], [ %i.lv, %bb.bh ], [ 0, %bb.bi ] ; 2 uses
  %i.lw = add nsw i32 %i.ld, -1                   ; 7 uses
  %i.lx = zext i32 %.1380 to i64
  %i.ly = shl i64 %i.lx, %i.km
  %i.lz = add i64 %i.ly, %i.kr                    ; 5 uses
  %i.ma = trunc i32 %.0381 to i8
  %i.mb = add i8 %i.ma, 48                        ; 2 uses
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, 1 ; 5 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kj, i64 %indvars.iv528
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !18
  %.not.i208 = icmp ult i64 %i.lz, %i.kl
  br i1 %.not.i208, label %bb.bk, label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  %i.md = sext i32 %i.lw to i64
  %i.me = getelementptr inbounds [8 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE15powers_of_10_64E, i64 %i.md
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !31
  %i.mg = shl i64 %i.mf, %i.km                    ; 5 uses
  %i.mh = add i64 %i.kk, -1                       ; 5 uses
  %i.mi = icmp uge i64 %i.lz, %i.mh
  %i.mj = sub nuw i64 %i.kl, %i.lz                ; 2 uses
  %.not21.i.i = icmp ult i64 %i.mj, %i.mg
  %or.cond22.i.i = or i1 %i.mi, %.not21.i.i
  br i1 %or.cond22.i.i, label %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i, label %.lr.ph.i.i210.preheader

.lr.ph.i.i210.preheader:                          ; preds = %bb.bk
  %i.mk = getelementptr i8, ptr %i.kj, i64 %indvars.iv528
  br label %.lr.ph.i.i210

.lr.ph.i.i210:                                    ; preds = %.lr.ph.i.i210.preheader, %.critedge2.i.i
  %4 = phi i8 [ %i.mp, %.critedge2.i.i ], [ %i.mb, %.lr.ph.i.i210.preheader ]
  %.0.i211 = phi i64 [ %i.ml, %.critedge2.i.i ], [ %i.lz, %.lr.ph.i.i210.preheader ] ; 4 uses
  %i.ml = add i64 %.0.i211, %i.mg                 ; 6 uses
  %i.mm = icmp ult i64 %i.ml, %i.mh
  br i1 %i.mm, label %.critedge2.i.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i210
  %i.mn = sub i64 %i.mh, %.0.i211
  %i.mo = sub nuw i64 %i.ml, %i.mh
  %.not20.i.i = icmp ult i64 %i.mn, %i.mo
  br i1 %.not20.i.i, label %._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i, label %.critedge2.i.i

._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i: ; preds = %bb.bl
  %.pre36.i = sub i64 %i.kl, %.0.i211
  br label %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i

.critedge2.i.i:                                   ; preds = %bb.bl, %.lr.ph.i.i210
  %i.mp = add i8 %4, -1                           ; 2 uses
  store i8 %i.mp, ptr %i.mk, align 1, !tbaa !18
  %i.mq = icmp uge i64 %i.ml, %i.mh
  %i.mr = sub i64 %i.kl, %i.ml                    ; 2 uses
  %.not.i.i212 = icmp ult i64 %i.mr, %i.mg
  %or.cond.i.i = or i1 %i.mq, %.not.i.i212
  br i1 %or.cond.i.i, label %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i, label %.lr.ph.i.i210, !llvm.loop !90

_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i: ; preds = %.critedge2.i.i, %._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i, %bb.bk
  %.pre-phi.i214 = phi i64 [ %i.mj, %bb.bk ], [ %.pre36.i, %._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i ], [ %i.mr, %.critedge2.i.i ]
  %.134.i = phi i64 [ %i.lz, %bb.bk ], [ %.0.i211, %._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i ], [ %i.ml, %.critedge2.i.i ] ; 5 uses
  %i.ms = add i64 %i.kk, 1                        ; 4 uses
  %i.mt = icmp uge i64 %.134.i, %i.ms
  %.not27.i = icmp ult i64 %.pre-phi.i214, %i.mg
  %or.cond.i215 = or i1 %.not27.i, %i.mt
  br i1 %or.cond.i215, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i
  %i.mu = add i64 %.134.i, %i.mg                  ; 2 uses
  %i.mv = icmp ult i64 %i.mu, %i.ms
  br i1 %i.mv, label %.thread406, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mw = sub i64 %i.ms, %.134.i
  %i.mx = sub nuw i64 %i.mu, %i.ms
  %i.my = icmp ugt i64 %i.mw, %i.mx
  br i1 %i.my, label %.thread406, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i
  %.not28.i = icmp ult i64 %.134.i, 2
  %i.mz = add i64 %i.kl, -4
  %.not29.i = icmp ugt i64 %.134.i, %i.mz
  %i.na = or i1 %.not28.i, %.not29.i
  br i1 %i.na, label %.thread406, label %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit

bb.bp:                                            ; preds = %bb.bj
  %i.nb = icmp samesign ugt i32 %i.ld, 1
  %indvars.iv.next533 = add nuw i64 %indvars.iv532, 1
  br i1 %i.nb, label %bb.ay, label %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit239, !llvm.loop !91

_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit239: ; preds = %bb.bp, %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit239
  %i.nc = phi i32 [ %i.nj, %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit239 ], [ %i.lw, %bb.bp ] ; 2 uses
  %indvars.iv535 = phi i64 [ %indvars.iv.next536, %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit239 ], [ %indvars.iv532, %bb.bp ] ; 3 uses
  %.039.i150 = phi i64 [ %i.ni, %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit239 ], [ %i.kr, %bb.bp ]
  %.036.i151 = phi i64 [ %i.ne, %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit239 ], [ %i.kl, %bb.bp ]
  %i.nd = mul i64 %.039.i150, 10                  ; 2 uses
  %i.ne = mul i64 %.036.i151, 10                  ; 6 uses
  %i.nf = lshr i64 %i.nd, %i.km
  %i.ng = trunc i64 %i.nf to i8
  %i.nh = add i8 %i.ng, 48                        ; 2 uses
  %i.ni = and i64 %i.nd, %i.kq                    ; 6 uses
  %i.nj = add nsw i32 %i.nc, -1                   ; 5 uses
  %indvars.iv.next536 = add nuw nsw i64 %indvars.iv535, 1 ; 5 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.kj, i64 %indvars.iv535
  store i8 %i.nh, ptr %i.nk, align 1, !tbaa !18
  %.not.i216 = icmp ult i64 %i.ni, %i.ne
  br i1 %.not.i216, label %bb.bq, label %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit239, !llvm.loop !92

bb.bq:                                            ; preds = %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler8on_digitEcmmmib.exit239
  %i.nl = sub nsw i32 1, %i.nc
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE15powers_of_10_64E, i64 %i.nm
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !31 ; 4 uses
  %i.np = add i64 %i.kk, -1
  %i.nq = mul i64 %i.no, %i.np                    ; 5 uses
  %i.nr = icmp uge i64 %i.ni, %i.nq
  %i.ns = sub nuw i64 %i.ne, %i.ni                ; 2 uses
  %.not21.i.i218 = icmp ult i64 %i.ns, %i.kn
  %or.cond22.i.i219 = or i1 %.not21.i.i218, %i.nr
  br i1 %or.cond22.i.i219, label %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i230, label %.lr.ph.i.i220.preheader

.lr.ph.i.i220.preheader:                          ; preds = %bb.bq
  %i.nt = getelementptr i8, ptr %i.kj, i64 %indvars.iv535
  br label %.lr.ph.i.i220

.lr.ph.i.i220:                                    ; preds = %.lr.ph.i.i220.preheader, %.critedge2.i.i223
  %5 = phi i8 [ %i.ny, %.critedge2.i.i223 ], [ %i.nh, %.lr.ph.i.i220.preheader ]
  %.0.i221 = phi i64 [ %i.nu, %.critedge2.i.i223 ], [ %i.ni, %.lr.ph.i.i220.preheader ] ; 4 uses
  %i.nu = add i64 %.0.i221, %i.kn                 ; 6 uses
  %i.nv = icmp ult i64 %i.nu, %i.nq
  br i1 %i.nv, label %.critedge2.i.i223, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i.i220
  %i.nw = sub i64 %i.nq, %.0.i221
  %i.nx = sub nuw i64 %i.nu, %i.nq
  %.not20.i.i222 = icmp ult i64 %i.nw, %i.nx
  br i1 %.not20.i.i222, label %._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i237, label %.critedge2.i.i223

._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i237: ; preds = %bb.br
  %.pre36.i238 = sub i64 %i.ne, %.0.i221
  br label %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i230

.critedge2.i.i223:                                ; preds = %bb.br, %.lr.ph.i.i220
  %i.ny = add i8 %5, -1                           ; 2 uses
  store i8 %i.ny, ptr %i.nt, align 1, !tbaa !18
  %i.nz = icmp uge i64 %i.nu, %i.nq
  %i.oa = sub i64 %i.ne, %i.nu                    ; 2 uses
  %.not.i.i224 = icmp ult i64 %i.oa, %i.kn
  %or.cond.i.i225 = or i1 %i.nz, %.not.i.i224
  br i1 %or.cond.i.i225, label %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i230, label %.lr.ph.i.i220, !llvm.loop !90

_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i230: ; preds = %.critedge2.i.i223, %._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i237, %bb.bq
  %.pre-phi.i231 = phi i64 [ %i.ns, %bb.bq ], [ %.pre36.i238, %._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i237 ], [ %i.oa, %.critedge2.i.i223 ]
  %.134.i232 = phi i64 [ %i.ni, %bb.bq ], [ %.0.i221, %._ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.loopexit_crit_edge.i237 ], [ %i.nu, %.critedge2.i.i223 ] ; 5 uses
  %i.ob = add i64 %i.kk, 1
  %i.oc = mul i64 %i.no, %i.ob                    ; 4 uses
  %i.od = icmp uge i64 %.134.i232, %i.oc
  %.not27.i233 = icmp ult i64 %.pre-phi.i231, %i.kn
  %or.cond.i234 = or i1 %.not27.i233, %i.od
  br i1 %or.cond.i234, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i230
  %i.oe = add i64 %.134.i232, %i.kn               ; 2 uses
  %i.of = icmp ult i64 %i.oe, %i.oc
  br i1 %i.of, label %.thread406, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.og = sub i64 %i.oc, %.134.i232
  %i.oh = sub nuw i64 %i.oe, %i.oc
  %i.oi = icmp ugt i64 %i.og, %i.oh
  br i1 %i.oi, label %.thread406, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZN10duckdb_fmt2v68internal22grisu_shortest_handler5roundEmmRmm.exit.i230
  %i.oj = shl i64 %i.no, 1
  %.not28.i235 = icmp ugt i64 %i.oj, %.134.i232
  %i.ok = shl i64 %i.no, 2
  %i.ol = sub i64 %i.ne, %i.ok
  %.not29.i236 = icmp ugt i64 %.134.i232, %i.ol
  %i.om = or i1 %.not28.i235, %.not29.i236
  br i1 %i.om, label %.thread406, label %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit

.thread406:                                       ; preds = %bb.bu, %bb.bo, %bb.bt, %bb.bs, %bb.bn, %bb.bm
  %i.on = phi i32 [ %i.lw, %bb.bo ], [ %i.lw, %bb.bm ], [ %i.nj, %bb.bs ], [ %i.nj, %bb.bt ], [ %i.lw, %bb.bn ], [ %i.nj, %bb.bu ]
  %.sroa.7.2.ph.in = phi i64 [ %indvars.iv.next529, %bb.bo ], [ %indvars.iv.next529, %bb.bm ], [ %indvars.iv.next536, %bb.bs ], [ %indvars.iv.next536, %bb.bt ], [ %indvars.iv.next529, %bb.bn ], [ %indvars.iv.next536, %bb.bu ]
  %.sroa.7.2.ph = trunc i64 %.sroa.7.2.ph.in to i32
  %reass.sub485 = sub i32 %.sroa.7.2.ph, %i.jh
  %i.oo = add i32 %reass.sub485, 347
  %i.op = add nsw i32 %i.oo, %i.on
  store i32 %i.op, ptr %i.a, align 4, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal15fallback_formatIdEEvT_RNS1_6bufferIcEERi(double noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.oq = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.bw

_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit: ; preds = %bb.bo, %bb.bu
  %i.or = phi i32 [ %i.nj, %bb.bu ], [ %i.lw, %bb.bo ] ; 2 uses
  %.sroa.7.2 = phi i64 [ %indvars.iv.next536, %bb.bu ], [ %indvars.iv.next529, %bb.bo ] ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !13
  %i.ou = icmp ult i64 %i.ot, %.sroa.7.2
  br i1 %i.ou, label %.sink.split, label %bb.bv

.sink.split:                                      ; preds = %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit, %.critedge
  %.sink617 = phi i64 [ %i.gr, %.critedge ], [ %.sroa.7.2, %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit ] ; 2 uses
  %.ph = phi i32 [ %i.gq, %.critedge ], [ %i.or, %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit ]
  %.0337.in.ph = phi i32 [ %i.ba, %.critedge ], [ %i.jh, %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit ]
  %i.ov = load ptr, ptr %3, align 8, !tbaa !14
  %i.ow = load ptr, ptr %i.ov, align 8
  tail call void %i.ow(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %.sink617)
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split, %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit, %.critedge
  %.sink = phi i64 [ %i.gr, %.critedge ], [ %.sroa.7.2, %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit ], [ %.sink617, %.sink.split ]
  %i.ox = phi i32 [ %i.gq, %.critedge ], [ %i.or, %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit ], [ %.ph, %.sink.split ]
  %.0337.in = phi i32 [ %i.ba, %.critedge ], [ %i.jh, %_ZN10duckdb_fmt2v68internal16grisu_gen_digitsINS1_22grisu_shortest_handlerEEENS1_6digits6resultENS1_2fpEmRiRT_.exit ], [ %.0337.in.ph, %.sink.split ]
  %i.oy = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sink, ptr %i.oy, align 8, !tbaa !10
  %reass.sub484 = sub i32 %i.ox, %.0337.in
  %i.oz = add i32 %reass.sub484, 348
  br label %bb.bw

bb.bw:                                            ; preds = %.thread406, %.thread398, %bb.bv, %bb.k
  %.2 = phi i32 [ %i.ae, %bb.k ], [ %i.oz, %bb.bv ], [ %i.gg, %.thread398 ], [ %i.oq, %.thread406 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.h, %_ZSt20uninitialized_fill_nIPcicET_S1_T0_RKT1_.exit, %_ZN10duckdb_fmt2v68internal6bufferIcE9push_backERKc.exit
  %.3 = phi i32 [ %i.aa, %_ZSt20uninitialized_fill_nIPcicET_S1_T0_RKT1_.exit ], [ 0, %_ZN10duckdb_fmt2v68internal6bufferIcE9push_backERKc.exit ], [ %.2, %bb.bw ], [ %i.ac, %bb.h ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal15fallback_formatIdEEvT_RNS1_6bufferIcEERi(double noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb_fmt::v6::internal::bigint", align 8 ; 21 uses
  %4 = alloca %"class.duckdb_fmt::v6::internal::bigint", align 8 ; 22 uses
  %5 = alloca %"class.duckdb_fmt::v6::internal::bigint", align 8 ; 19 uses
  %6 = alloca %"class.duckdb_fmt::v6::internal::bigint", align 8 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 16 uses
  store i64 0, ptr %i.c, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %3, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 8 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !93
  store i64 32, ptr %i.b, align 8, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 7 uses
  store i32 0, ptr %i.e, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store i64 0, ptr %i.h, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %4, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !93
  store i64 32, ptr %i.g, align 8, !tbaa !96
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 6 uses
  store i32 0, ptr %i.j, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  store i64 0, ptr %i.m, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %5, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 8 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !93
  store i64 32, ptr %i.l, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 7 uses
  store i32 0, ptr %i.o, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store i64 0, ptr %i.r, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %6, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.s, ptr %i.p, align 8, !tbaa !93
  store i64 32, ptr %i.q, align 8, !tbaa !96
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 4 uses
  store i32 0, ptr %i.t, align 8, !tbaa !97
  %i.u = bitcast double %0 to i64                 ; 2 uses
  %i.v = and i64 %i.u, 4503599627370495           ; 4 uses
  %i.w = lshr i64 %i.u, 52
  %i.x = and i64 %i.w, 2047                       ; 4 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.y = shl nuw nsw i64 %i.v, 1
  br label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.z = or disjoint i64 %i.v, 4503599627370496   ; 5 uses
  %i.aa = trunc nuw nsw i64 %i.x to i32           ; 2 uses
  %i.ab = add nsw i32 %i.aa, -1075                ; 3 uses
  %i.ac = icmp eq i64 %i.v, 0
  %i.ad = icmp ne i64 %i.x, 1
  %i.ae = and i1 %i.ac, %i.ad                     ; 3 uses
  %i.af = select i1 %i.ae, i32 2, i32 1           ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.z, %i.ag             ; 3 uses
  %i.ai = icmp samesign ugt i64 %i.x, 1074
  br i1 %i.ai, label %.preheader323, label %bb.p

.preheader323:                                    ; preds = %bb.b
  %i.aj = trunc i64 %i.ah to i32
  store i32 %i.aj, ptr %i.d, align 8, !tbaa !3
  %i.ak = lshr i64 %i.ah, 32                      ; 2 uses
  %.not.i68 = icmp eq i64 %i.ak, 0
  br i1 %.not.i68, label %bb.c, label %.preheader323.1

.preheader323.1:                                  ; preds = %.preheader323
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.al, ptr %i.am, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %.preheader323, %.preheader323.1
  %exitcond.not.i = phi i1 [ true, %.preheader323 ], [ false, %.preheader323.1 ]
  %exitcond.not.i.1 = phi i1 [ false, %.preheader323 ], [ true, %.preheader323.1 ]
  %indvars.iv.i.lcssa = phi i64 [ 2, %.preheader323 ], [ 3, %.preheader323.1 ]
  %indvars.iv.next.i.lcssa = phi i64 [ 1, %.preheader323 ], [ 2, %.preheader323.1 ] ; 2 uses
  store i64 %indvars.iv.next.i.lcssa, ptr %i.c, align 8, !tbaa !100
  %i.an = lshr i32 %i.ab, 5
  %.zext311 = and i32 %i.an, 2047                 ; 3 uses
  store i32 %.zext311, ptr %i.e, align 8, !tbaa !97
  %.zext313 = and i32 %i.ab, 31                   ; 6 uses
  %i.ao = icmp eq i32 %.zext313, 0
  br i1 %i.ao, label %.thread689, label %.lr.ph.i

.thread689:                                       ; preds = %bb.c
  store i32 1, ptr %i.n, align 8, !tbaa !3
  store i64 1, ptr %i.m, align 8, !tbaa !100
  store i32 %.zext311, ptr %i.o, align 8, !tbaa !97
  br label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit89

.lr.ph.i:                                         ; preds = %bb.c
  %i.ap = sub nuw nsw i32 32, %.zext313           ; 4 uses
  %i.aq = load i32, ptr %i.d, align 4, !tbaa !3   ; 2 uses
  %i.ar = lshr i32 %i.aq, %i.ap                   ; 2 uses
  %i.as = shl i32 %i.aq, %.zext313
  store i32 %i.as, ptr %i.d, align 4, !tbaa !3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.e, %bb.d, %.lr.ph.i
  %.lcssa1103 = phi i32 [ %i.ar, %.lr.ph.i ], [ %i.av, %bb.d ], [ %i.ba, %bb.e ] ; 2 uses
  %.not.i69 = icmp eq i32 %.lcssa1103, 0
  br i1 %.not.i69, label %.lr.ph.i78.sink.split.sink.split967, label %.lr.ph.i78.sink.split.sink.split967.sink.split

bb.d:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 2 uses
  %i.av = lshr i32 %i.au, %i.ap                   ; 2 uses
  %i.aw = shl i32 %i.au, %.zext313
  %i.ax = or disjoint i32 %i.aw, %i.ar
  store i32 %i.ax, ptr %i.at, align 4, !tbaa !3
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3  ; 2 uses
  %i.ba = lshr i32 %i.az, %i.ap
  %i.bb = shl i32 %i.az, %.zext313
  %i.bc = or disjoint i32 %i.bb, %i.av
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !3
  br label %._crit_edge.i

.lr.ph.i78.sink.split.sink.split967.sink.split:   ; preds = %._crit_edge.i
  store i64 %indvars.iv.i.lcssa, ptr %i.c, align 8, !tbaa !100
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i.lcssa
  store i32 %.lcssa1103, ptr %i.bd, align 4, !tbaa !3
  br label %.lr.ph.i78.sink.split.sink.split967

.lr.ph.i78.sink.split.sink.split967:              ; preds = %._crit_edge.i, %.lr.ph.i78.sink.split.sink.split967.sink.split
  store i32 1, ptr %i.n, align 8, !tbaa !3
  store i64 1, ptr %i.m, align 8, !tbaa !100
  store i32 %.zext311, ptr %i.o, align 8, !tbaa !97
  %.pre841 = load i32, ptr %i.n, align 4, !tbaa !3 ; 2 uses
  %i.be = lshr i32 %.pre841, %i.ap                ; 2 uses
  %i.bf = shl i32 %.pre841, %.zext313
  store i32 %i.bf, ptr %i.n, align 4, !tbaa !3
  %.not.i83 = icmp eq i32 %i.be, 0
  br i1 %.not.i83, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit89, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i78.sink.split.sink.split967
  %i.bg = load i64, ptr %i.l, align 8, !tbaa !96
  %i.bh = icmp ult i64 %i.bg, 2
  br i1 %i.bh, label %bb.g, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i84

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr %5, align 8, !tbaa !14
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(164) %5, i64 noundef 2)
          to label %.noexc88 unwind label %.loopexit.split-lp, !inline_history !101

.noexc88:                                         ; preds = %bb.g
  %.pre.i.i86 = load i64, ptr %i.m, align 8, !tbaa !100 ; 2 uses
  %.pre2.i.i87 = add i64 %.pre.i.i86, 1
  %.pre377 = load ptr, ptr %i.k, align 8, !tbaa !93
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i84

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i84: ; preds = %.noexc88, %bb.f
  %i.bk = phi ptr [ %i.n, %bb.f ], [ %.pre377, %.noexc88 ]
  %.pre-phi.i.i85 = phi i64 [ 2, %bb.f ], [ %.pre2.i.i87, %.noexc88 ]
  %i.bl = phi i64 [ 1, %bb.f ], [ %.pre.i.i86, %.noexc88 ]
  store i64 %.pre-phi.i.i85, ptr %i.m, align 8, !tbaa !100
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl
  store i32 %i.be, ptr %i.bm, align 4, !tbaa !3
  br label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit89

_ZN10duckdb_fmt2v68internal6bigintlSEi.exit89:    ; preds = %.thread689, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i84, %.lr.ph.i78.sink.split.sink.split967
  br i1 %i.ae, label %bb.h, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit108

bb.h:                                             ; preds = %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit89
  %i.bn = load ptr, ptr %i.p, align 8, !tbaa !93
  store i32 1, ptr %i.bn, align 4, !tbaa !3
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !96
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr %6, align 8, !tbaa !14
  %i.br = load ptr, ptr %i.bq, align 8
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(164) %6, i64 noundef 1)
          to label %bb.j unwind label %.loopexit.split-lp, !inline_history !102

bb.j:                                             ; preds = %bb.h, %bb.i
  store i64 1, ptr %i.r, align 8, !tbaa !100
  %i.bs = add nsw i32 %i.aa, -1074                ; 2 uses
  %i.bt = lshr i32 %i.bs, 5
  store i32 %i.bt, ptr %i.t, align 8, !tbaa !97
  %.zext317 = and i32 %i.bs, 31                   ; 3 uses
  %i.bu = icmp eq i32 %.zext317, 0
  br i1 %i.bu, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit108, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %bb.j
  %i.bv = load ptr, ptr %i.p, align 8, !tbaa !93  ; 3 uses
  %i.bw = sub nuw nsw i32 32, %.zext317
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !3  ; 2 uses
  %i.by = lshr i32 %i.bx, %i.bw                   ; 2 uses
  %i.bz = shl i32 %i.bx, %.zext317
  store i32 %i.bz, ptr %i.bv, align 4, !tbaa !3
  %.not.i102 = icmp eq i32 %i.by, 0
  br i1 %.not.i102, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit108, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i97
  %i.ca = load i64, ptr %i.q, align 8, !tbaa !96
  %i.cb = icmp ult i64 %i.ca, 2
  br i1 %i.cb, label %bb.l, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i103

bb.l:                                             ; preds = %bb.k
  %i.cc = load ptr, ptr %6, align 8, !tbaa !14
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(164) %6, i64 noundef 2)
          to label %.noexc107 unwind label %.loopexit.split-lp, !inline_history !101

.noexc107:                                        ; preds = %bb.l
  %.pre.i.i105 = load i64, ptr %i.r, align 8, !tbaa !100 ; 2 uses
  %.pre2.i.i106 = add i64 %.pre.i.i105, 1
  %.pre378 = load ptr, ptr %i.p, align 8, !tbaa !93
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i103

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i103: ; preds = %.noexc107, %bb.k
  %i.ce = phi ptr [ %i.bv, %bb.k ], [ %.pre378, %.noexc107 ]
  %.pre-phi.i.i104 = phi i64 [ 2, %bb.k ], [ %.pre2.i.i106, %.noexc107 ]
  %i.cf = phi i64 [ 1, %bb.k ], [ %.pre.i.i105, %.noexc107 ]
  store i64 %.pre-phi.i.i104, ptr %i.r, align 8, !tbaa !100
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cf
  store i32 %i.by, ptr %i.cg, align 4, !tbaa !3
  br label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit108

.loopexit:                                        ; preds = %bb.ag
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit.split-lp:                               ; preds = %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit108, %bb.q, %bb.al, %bb.g, %bb.i, %bb.l, %bb.o, %bb.s, %bb.y, %bb.ae, %bb.ah, %bb.ak, %bb.ap, %bb.aq, %bb.at
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

_ZN10duckdb_fmt2v68internal6bigintlSEi.exit108:   ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i103, %.lr.ph.i97, %bb.j, %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit89
  %.051 = phi ptr [ null, %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit89 ], [ %6, %bb.j ], [ %6, %.lr.ph.i97 ], [ %6, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i103 ] ; 3 uses
  %i.ch = load i32, ptr %2, align 4, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(164) %4, i32 noundef %i.ch)
          to label %bb.m unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit108
  %i.ci = load i64, ptr %i.h, align 8, !tbaa !100 ; 7 uses
  %.not18.i109 = icmp eq i64 %i.ci, 0
  br i1 %.not18.i109, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit121, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %bb.m
  %i.cj = load ptr, ptr %i.f, align 8, !tbaa !93  ; 3 uses
  %min.iters.check = icmp ult i64 %i.ci, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i110
  %n.vec = and i64 %i.ci, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.cn, %vector.body ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ck, align 4, !tbaa !3 ; 2 uses
  %wide.load1019 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !3 ; 3 uses
  %i.cm = lshr <4 x i32> %wide.load, splat (i32 31) ; 2 uses
  %i.cn = lshr <4 x i32> %wide.load1019, splat (i32 31) ; 3 uses
  %i.co = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.cm, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cp = shufflevector <4 x i32> %i.cm, <4 x i32> %i.cn, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cq = shl <4 x i32> %wide.load, splat (i32 1)
  %i.cr = shl <4 x i32> %wide.load1019, splat (i32 1)
  %i.cs = or disjoint <4 x i32> %i.cq, %i.co
  %i.ct = or disjoint <4 x i32> %i.cr, %i.cp
  store <4 x i32> %i.cs, ptr %i.ck, align 4, !tbaa !3
  store <4 x i32> %i.ct, ptr %i.cl, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.cn, i64 3 ; 2 uses
  %i.cv = extractelement <4 x i32> %wide.load1019, i64 3
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %._crit_edge.i114, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i110, %middle.block
  %.01317.i111.ph = phi i64 [ 0, %.lr.ph.i110 ], [ %n.vec, %middle.block ]
  %.016.i112.ph = phi i32 [ 0, %.lr.ph.i110 ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i114:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa1012 = phi i32 [ %i.cv, %middle.block ], [ %i.cx, %scalar.ph ]
  %.lcssa1011 = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.cy, %scalar.ph ]
  %.not.i115 = icmp sgt i32 %.lcssa1012, -1
  br i1 %.not.i115, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit121, label %bb.n

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01317.i111 = phi i64 [ %i.db, %scalar.ph ], [ %.01317.i111.ph, %scalar.ph.preheader ] ; 2 uses
  %.016.i112 = phi i32 [ %i.cy, %scalar.ph ], [ %.016.i112.ph, %scalar.ph.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.01317.i111 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3  ; 3 uses
  %i.cy = lshr i32 %i.cx, 31                      ; 2 uses
  %i.cz = shl i32 %i.cx, 1
  %i.da = or disjoint i32 %i.cz, %.016.i112
  store i32 %i.da, ptr %i.cw, align 4, !tbaa !3
  %i.db = add nuw i64 %.01317.i111, 1             ; 2 uses
  %exitcond.not.i113 = icmp eq i64 %i.db, %i.ci
  br i1 %exitcond.not.i113, label %._crit_edge.i114, label %scalar.ph, !llvm.loop !104

bb.n:                                             ; preds = %._crit_edge.i114
  %i.dc = add i64 %i.ci, 1                        ; 3 uses
  %i.dd = load i64, ptr %i.g, align 8, !tbaa !96
  %i.de = icmp ugt i64 %i.dc, %i.dd
  br i1 %i.de, label %bb.o, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i116

bb.o:                                             ; preds = %bb.n
  %i.df = load ptr, ptr %4, align 8, !tbaa !14
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(164) %4, i64 noundef %i.dc)
          to label %.noexc120 unwind label %.loopexit.split-lp, !inline_history !101

.noexc120:                                        ; preds = %bb.o
  %.pre.i.i118 = load i64, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %.pre2.i.i119 = add i64 %.pre.i.i118, 1
  %.pre379 = load ptr, ptr %i.f, align 8, !tbaa !93
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i116

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i116: ; preds = %.noexc120, %bb.n
  %i.dh = phi ptr [ %i.cj, %bb.n ], [ %.pre379, %.noexc120 ]
  %.pre-phi.i.i117 = phi i64 [ %i.dc, %bb.n ], [ %.pre2.i.i119, %.noexc120 ]
  %i.di = phi i64 [ %i.ci, %bb.n ], [ %.pre.i.i118, %.noexc120 ]
  store i64 %.pre-phi.i.i117, ptr %i.h, align 8, !tbaa !100
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.di
  store i32 %.lcssa1011, ptr %i.dj, align 4, !tbaa !3
  br label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit121

bb.p:                                             ; preds = %.thread, %bb.b
  %i.dk = phi i64 [ %i.y, %.thread ], [ %i.ah, %bb.b ] ; 4 uses
  %i.dl = phi i32 [ 1, %.thread ], [ %i.af, %bb.b ] ; 2 uses
  %i.dm = phi i1 [ false, %.thread ], [ %i.ae, %bb.b ] ; 2 uses
  %.0.i300 = phi i32 [ -1074, %.thread ], [ %i.ab, %bb.b ] ; 2 uses
  %.sroa.0.0299 = phi i64 [ %i.v, %.thread ], [ %i.z, %bb.b ] ; 5 uses
  %i.dn = load i32, ptr %2, align 4, !tbaa !3     ; 3 uses
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %bb.q, label %.preheader

bb.q:                                             ; preds = %bb.p
  %i.dp = sub nsw i32 0, %i.dn
  invoke void @_ZN10duckdb_fmt2v68internal6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(164) %3, i32 noundef %i.dp)
          to label %bb.r unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.dq = load i64, ptr %i.c, align 8, !tbaa !100 ; 4 uses
  %i.dr = load i64, ptr %i.l, align 8, !tbaa !96
  %i.ds = icmp ugt i64 %i.dq, %i.dr
  br i1 %i.ds, label %bb.s, label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i

bb.s:                                             ; preds = %bb.r
  %i.dt = load ptr, ptr %5, align 8, !tbaa !14
  %i.du = load ptr, ptr %i.dt, align 8
  invoke void %i.du(ptr noundef nonnull align 8 dereferenceable(164) %5, i64 noundef %i.dq)
          to label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.ithread-pre-split unwind label %.loopexit.split-lp, !inline_history !105

_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.ithread-pre-split: ; preds = %bb.s
  %.pr = load i64, ptr %i.c, align 8, !tbaa !100
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i

_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i: ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.ithread-pre-split, %bb.r
  %i.dv = phi i64 [ %.pr, %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.ithread-pre-split ], [ %i.dq, %bb.r ] ; 3 uses
  store i64 %i.dq, ptr %i.m, align 8, !tbaa !100
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !93  ; 2 uses
  %i.dx = load ptr, ptr %i.k, align 8, !tbaa !93  ; 2 uses
  %i.dy = icmp ugt i64 %i.dv, 1
  br i1 %i.dy, label %bb.t, label %bb.u, !prof !46

bb.t:                                             ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i
  %.idx.i = shl nuw nsw i64 %i.dv, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.dx, ptr align 4 %i.dw, i64 %.idx.i, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i
  %i.dz = icmp eq i64 %i.dv, 1
  br i1 %i.dz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ea = load i32, ptr %i.dw, align 4, !tbaa !3
  store i32 %i.ea, ptr %i.dx, align 4, !tbaa !3
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.eb = load i32, ptr %i.e, align 8, !tbaa !97
  store i32 %i.eb, ptr %i.o, align 8, !tbaa !97
  br i1 %i.dm, label %bb.x, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit139

bb.x:                                             ; preds = %bb.w
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !100 ; 6 uses
  %i.ed = load i64, ptr %i.q, align 8, !tbaa !96
  %i.ee = icmp ugt i64 %i.ec, %i.ed
  br i1 %i.ee, label %bb.y, label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i123

bb.y:                                             ; preds = %bb.x
  %i.ef = load ptr, ptr %6, align 8, !tbaa !14
  %i.eg = load ptr, ptr %i.ef, align 8
  invoke void %i.eg(ptr noundef nonnull align 8 dereferenceable(164) %6, i64 noundef %i.ec)
          to label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i123thread-pre-split unwind label %.loopexit.split-lp, !inline_history !105

_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i123thread-pre-split: ; preds = %bb.y
  %.pr301 = load i64, ptr %i.c, align 8, !tbaa !100
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i123

_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i123: ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i123thread-pre-split, %bb.x
  %i.eh = phi i64 [ %.pr301, %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i123thread-pre-split ], [ %i.ec, %bb.x ] ; 3 uses
  store i64 %i.ec, ptr %i.r, align 8, !tbaa !100
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !93  ; 2 uses
  %i.ej = load ptr, ptr %i.p, align 8, !tbaa !93  ; 2 uses
  %i.ek = icmp ugt i64 %i.eh, 1
  br i1 %i.ek, label %bb.z, label %bb.aa, !prof !46

bb.z:                                             ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i123
  %.idx.i124 = shl nuw nsw i64 %i.eh, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ej, ptr align 4 %i.ei, i64 %.idx.i124, i1 false)
  %.pre382.a = load i64, ptr %i.r, align 8, !tbaa !100
  br label %bb.ac

bb.aa:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.i123
  %i.el = icmp eq i64 %i.eh, 1
  br i1 %i.el, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.em = load i32, ptr %i.ei, align 4, !tbaa !3
  store i32 %i.em, ptr %i.ej, align 4, !tbaa !3
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.en = phi i64 [ %i.ec, %bb.ab ], [ %i.ec, %bb.aa ], [ %.pre382.a, %bb.z ] ; 7 uses
  %i.eo = load i32, ptr %i.e, align 8, !tbaa !97
  store i32 %i.eo, ptr %i.t, align 8, !tbaa !97
  %.not18.i127 = icmp eq i64 %i.en, 0
  br i1 %.not18.i127, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit139, label %.lr.ph.i128

end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v68internal15fallback_formatIdEEvT_RNS1_6bufferIcEERi:bb.a

.lr.ph.i149:                                      ; preds = %bb.ai
  %i.ic = load ptr, ptr %i.f, align 8, !tbaa !93  ; 3 uses
  %i.id = sub nsw i32 32, %i.ia
  %i.ie = load i32, ptr %i.ic, align 4, !tbaa !3  ; 2 uses
  %i.if = lshr i32 %i.ie, %i.id                   ; 2 uses
  %i.ig = shl i32 %i.ie, %i.ia
  store i32 %i.ig, ptr %i.ic, align 4, !tbaa !3
  %.not.i154 = icmp eq i32 %i.if, 0
  br i1 %.not.i154, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit121, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i149
  %i.ih = load i64, ptr %i.g, align 8, !tbaa !96
  %i.ii = icmp ult i64 %i.ih, 2
  br i1 %i.ii, label %bb.ak, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i155

bb.ak:                                            ; preds = %bb.aj
  %i.ij = load ptr, ptr %4, align 8, !tbaa !14
  %i.ik = load ptr, ptr %i.ij, align 8
  invoke void %i.ik(ptr noundef nonnull align 8 dereferenceable(164) %4, i64 noundef 2)
          to label %.noexc159 unwind label %.loopexit.split-lp, !inline_history !101

.noexc159:                                        ; preds = %bb.ak
  %.pre.i.i157 = load i64, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %.pre2.i.i158 = add i64 %.pre.i.i157, 1
  %.pre384 = load ptr, ptr %i.f, align 8, !tbaa !93
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i155

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i155: ; preds = %.noexc159, %bb.aj
  %i.il = phi ptr [ %i.ic, %bb.aj ], [ %.pre384, %.noexc159 ]
  %.pre-phi.i.i156 = phi i64 [ 2, %bb.aj ], [ %.pre2.i.i158, %.noexc159 ]
  %i.im = phi i64 [ 1, %bb.aj ], [ %.pre.i.i157, %.noexc159 ]
  store i64 %.pre-phi.i.i156, ptr %i.h, align 8, !tbaa !100
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.im
  store i32 %i.if, ptr %i.in, align 4, !tbaa !3
  br label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit121

.preheader:                                       ; preds = %bb.p
  %i.io = trunc i64 %i.dk to i32
  store i32 %i.io, ptr %i.d, align 8, !tbaa !3
  %i.ip = lshr i64 %i.dk, 32                      ; 2 uses
  %.not.i164 = icmp eq i64 %i.ip, 0
  br i1 %.not.i164, label %bb.al, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.iq = trunc nuw i64 %i.ip to i32
  %i.ir = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !3
  br label %bb.al

bb.al:                                            ; preds = %.preheader, %.preheader.1
  %indvars.iv.next.i163.lcssa = phi i64 [ 1, %.preheader ], [ 2, %.preheader.1 ]
  store i64 %indvars.iv.next.i163.lcssa, ptr %i.c, align 8, !tbaa !100
  store i32 0, ptr %i.e, align 8, !tbaa !97
  invoke void @_ZN10duckdb_fmt2v68internal6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(164) %4, i32 noundef %i.dn)
          to label %bb.am unwind label %.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  %i.is = sub nsw i32 %i.dl, %.0.i300             ; 2 uses
  %i.it = lshr i32 %i.is, 5
  %.zext = and i32 %i.it, 2047
  %i.iu = load i32, ptr %i.j, align 8, !tbaa !97
  %i.iv = add nsw i32 %i.iu, %.zext
  store i32 %i.iv, ptr %i.j, align 8, !tbaa !97
  %.zext309 = and i32 %i.is, 31                   ; 4 uses
  %i.iw = icmp eq i32 %.zext309, 0
  br i1 %i.iw, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit180, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ix = load i64, ptr %i.h, align 8, !tbaa !100 ; 7 uses
  %.not18.i168 = icmp eq i64 %i.ix, 0
  br i1 %.not18.i168, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit180, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %bb.an
  %i.iy = load ptr, ptr %i.f, align 8, !tbaa !93  ; 3 uses
  %i.iz = sub nuw nsw i32 32, %.zext309           ; 2 uses
  %min.iters.check1021 = icmp ult i64 %i.ix, 8
  br i1 %min.iters.check1021, label %scalar.ph1020.preheader, label %vector.ph1022

vector.ph1022:                                    ; preds = %.lr.ph.i169
  %n.vec1024 = and i64 %i.ix, -8                  ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.iz, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1025 = insertelement <4 x i32> poison, i32 %.zext309, i64 0
  %broadcast.splat1026 = shufflevector <4 x i32> %broadcast.splatinsert1025, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1027

vector.body1027:                                  ; preds = %vector.body1027, %vector.ph1022
  %index1028 = phi i64 [ 0, %vector.ph1022 ], [ %index.next1032, %vector.body1027 ] ; 2 uses
  %vector.recur1029 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1022 ], [ %i.jd, %vector.body1027 ]
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %index1028 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16 ; 2 uses
  %wide.load1030 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !3 ; 2 uses
  %wide.load1031 = load <4 x i32>, ptr %i.jb, align 4, !tbaa !3 ; 2 uses
  %i.jc = lshr <4 x i32> %wide.load1030, %broadcast.splat ; 2 uses
  %i.jd = lshr <4 x i32> %wide.load1031, %broadcast.splat ; 3 uses
  %i.je = shufflevector <4 x i32> %vector.recur1029, <4 x i32> %i.jc, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.jf = shufflevector <4 x i32> %i.jc, <4 x i32> %i.jd, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.jg = shl <4 x i32> %wide.load1030, %broadcast.splat1026
  %i.jh = shl <4 x i32> %wide.load1031, %broadcast.splat1026
  %i.ji = add <4 x i32> %i.jg, %i.je
  %i.jj = add <4 x i32> %i.jh, %i.jf
  store <4 x i32> %i.ji, ptr %i.ja, align 4, !tbaa !3
  store <4 x i32> %i.jj, ptr %i.jb, align 4, !tbaa !3
  %index.next1032 = add nuw i64 %index1028, 8     ; 2 uses
  %i.jk = icmp eq i64 %index.next1032, %n.vec1024
  br i1 %i.jk, label %middle.block1033, label %vector.body1027, !llvm.loop !111

middle.block1033:                                 ; preds = %vector.body1027
  %vector.recur.extract1034 = extractelement <4 x i32> %i.jd, i64 3 ; 2 uses
  %cmp.n1035 = icmp eq i64 %i.ix, %n.vec1024
  br i1 %cmp.n1035, label %._crit_edge.i173, label %scalar.ph1020.preheader

scalar.ph1020.preheader:                          ; preds = %.lr.ph.i169, %middle.block1033
  %.01317.i170.ph = phi i64 [ 0, %.lr.ph.i169 ], [ %n.vec1024, %middle.block1033 ]
  %.016.i171.ph = phi i32 [ 0, %.lr.ph.i169 ], [ %vector.recur.extract1034, %middle.block1033 ]
  br label %scalar.ph1020

._crit_edge.i173:                                 ; preds = %scalar.ph1020, %middle.block1033
  %.lcssa1010 = phi i32 [ %vector.recur.extract1034, %middle.block1033 ], [ %i.jn, %scalar.ph1020 ] ; 2 uses
  %.not.i174 = icmp eq i32 %.lcssa1010, 0
  br i1 %.not.i174, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit180, label %bb.ao

scalar.ph1020:                                    ; preds = %scalar.ph1020.preheader, %scalar.ph1020
  %.01317.i170 = phi i64 [ %i.jq, %scalar.ph1020 ], [ %.01317.i170.ph, %scalar.ph1020.preheader ] ; 2 uses
  %.016.i171 = phi i32 [ %i.jn, %scalar.ph1020 ], [ %.016.i171.ph, %scalar.ph1020.preheader ]
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %.01317.i170 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !3  ; 2 uses
  %i.jn = lshr i32 %i.jm, %i.iz                   ; 2 uses
  %i.jo = shl i32 %i.jm, %.zext309
  %i.jp = add i32 %i.jo, %.016.i171
  store i32 %i.jp, ptr %i.jl, align 4, !tbaa !3
  %i.jq = add nuw i64 %.01317.i170, 1             ; 2 uses
  %exitcond.not.i172 = icmp eq i64 %i.jq, %i.ix
  br i1 %exitcond.not.i172, label %._crit_edge.i173, label %scalar.ph1020, !llvm.loop !112

bb.ao:                                            ; preds = %._crit_edge.i173
  %i.jr = add i64 %i.ix, 1                        ; 3 uses
  %i.js = load i64, ptr %i.g, align 8, !tbaa !96
  %i.jt = icmp ugt i64 %i.jr, %i.js
  br i1 %i.jt, label %bb.ap, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i175

bb.ap:                                            ; preds = %bb.ao
  %i.ju = load ptr, ptr %4, align 8, !tbaa !14
  %i.jv = load ptr, ptr %i.ju, align 8
  invoke void %i.jv(ptr noundef nonnull align 8 dereferenceable(164) %4, i64 noundef %i.jr)
          to label %.noexc179 unwind label %.loopexit.split-lp, !inline_history !101

.noexc179:                                        ; preds = %bb.ap
  %.pre.i.i177 = load i64, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %.pre2.i.i178 = add i64 %.pre.i.i177, 1
  %.pre381 = load ptr, ptr %i.f, align 8, !tbaa !93
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i175

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i175: ; preds = %.noexc179, %bb.ao
  %i.jw = phi ptr [ %i.iy, %bb.ao ], [ %.pre381, %.noexc179 ]
  %.pre-phi.i.i176 = phi i64 [ %i.jr, %bb.ao ], [ %.pre2.i.i178, %.noexc179 ]
  %i.jx = phi i64 [ %i.ix, %bb.ao ], [ %.pre.i.i177, %.noexc179 ]
  store i64 %.pre-phi.i.i176, ptr %i.h, align 8, !tbaa !100
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.jx
  store i32 %.lcssa1010, ptr %i.jy, align 4, !tbaa !3
  br label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit180

_ZN10duckdb_fmt2v68internal6bigintlSEi.exit180:   ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i175, %._crit_edge.i173, %bb.an, %bb.am
  %i.jz = load ptr, ptr %i.k, align 8, !tbaa !93
  store i32 1, ptr %i.jz, align 4, !tbaa !3
  %i.ka = load i64, ptr %i.l, align 8, !tbaa !96
  %i.kb = icmp eq i64 %i.ka, 0
  br i1 %i.kb, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit180
  %i.kc = load ptr, ptr %5, align 8, !tbaa !14
  %i.kd = load ptr, ptr %i.kc, align 8
  invoke void %i.kd(ptr noundef nonnull align 8 dereferenceable(164) %5, i64 noundef 1)
          to label %bb.ar unwind label %.loopexit.split-lp, !inline_history !102

bb.ar:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit180, %bb.aq
  store i64 1, ptr %i.m, align 8, !tbaa !100
  store i32 0, ptr %i.o, align 8, !tbaa !97
  br i1 %i.dm, label %bb.as, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit121

bb.as:                                            ; preds = %bb.ar
  %i.ke = load ptr, ptr %i.p, align 8, !tbaa !93
  store i32 2, ptr %i.ke, align 4, !tbaa !3
  %i.kf = load i64, ptr %i.q, align 8, !tbaa !96
  %i.kg = icmp eq i64 %i.kf, 0
  br i1 %i.kg, label %bb.at, label %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit194

bb.at:                                            ; preds = %bb.as
  %i.kh = load ptr, ptr %6, align 8, !tbaa !14
  %i.ki = load ptr, ptr %i.kh, align 8
  invoke void %i.ki(ptr noundef nonnull align 8 dereferenceable(164) %6, i64 noundef 1)
          to label %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit194 unwind label %.loopexit.split-lp, !inline_history !102

_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit194: ; preds = %bb.at, %bb.as
  store i64 1, ptr %i.r, align 8, !tbaa !100
  store i32 0, ptr %i.t, align 8, !tbaa !97
  br label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit121

_ZN10duckdb_fmt2v68internal6bigintlSEi.exit121:   ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i155, %.lr.ph.i149, %bb.ai, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i116, %._crit_edge.i114, %bb.m, %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit194, %bb.ar
  %.sroa.0.0298 = phi i64 [ %.sroa.0.0299, %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit194 ], [ %i.z, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i116 ], [ %.sroa.0.0299, %bb.ar ], [ %i.z, %bb.m ], [ %i.z, %._crit_edge.i114 ], [ %.sroa.0.0299, %bb.ai ], [ %.sroa.0.0299, %.lr.ph.i149 ], [ %.sroa.0.0299, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i155 ]
  %.253 = phi ptr [ %6, %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit194 ], [ %.051, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i116 ], [ null, %bb.ar ], [ %.051, %bb.m ], [ %.051, %._crit_edge.i114 ], [ %.152, %bb.ai ], [ %.152, %.lr.ph.i149 ], [ %.152, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i155 ] ; 7 uses
  %.not = icmp eq ptr %.253, null                 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !17 ; 3 uses
  %i.kl = trunc i64 %.sroa.0.0298 to i32
  %i.km = and i32 %i.kl, 1                        ; 2 uses
  %i.kn = xor i32 %i.km, 1
  %.253.sroa.gep = getelementptr inbounds nuw i8, ptr %.253, i64 16 ; 4 uses
  %spec.store.select.sroa.sel = select i1 %.not, ptr %i.m, ptr %.253.sroa.gep
  %.253.sroa.gep282 = getelementptr inbounds nuw i8, ptr %.253, i64 160
  %spec.store.select.sroa.sel283 = select i1 %.not, ptr %i.o, ptr %.253.sroa.gep282
  %.253.sroa.gep285 = getelementptr inbounds nuw i8, ptr %.253, i64 8 ; 3 uses
  %spec.store.select.sroa.sel286 = select i1 %.not, ptr %i.k, ptr %.253.sroa.gep285
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.253.sroa.gep294 = getelementptr inbounds nuw i8, ptr %.253, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit121
  %indvars.iv = phi i64 [ 0, %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit121 ], [ %indvars.iv.next, %.backedge.backedge ] ; 7 uses
  %i.kq = invoke noundef i32 @_ZN10duckdb_fmt2v68internal6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %3, ptr noundef nonnull align 8 dereferenceable(164) %4)
          to label %bb.au unwind label %bb.bi     ; 3 uses

bb.au:                                            ; preds = %.backedge
  %i.kr = load i64, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %i.ks = trunc i64 %i.kr to i32                  ; 2 uses
  %i.kt = load i32, ptr %i.e, align 8, !tbaa !97  ; 3 uses
  %i.ku = add nsw i32 %i.kt, %i.ks                ; 4 uses
  %i.kv = load i64, ptr %i.m, align 8, !tbaa !100 ; 2 uses
  %i.kw = trunc i64 %i.kv to i32                  ; 2 uses
  %i.kx = load i32, ptr %i.o, align 8, !tbaa !97
  %i.ky = add nsw i32 %i.kx, %i.kw                ; 2 uses
  %.not.i195 = icmp eq i32 %i.ku, %i.ky
  br i1 %.not.i195, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kz = icmp sgt i32 %i.ku, %i.ky
  %i.la = select i1 %i.kz, i32 1, i32 -1
  br label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit

bb.aw:                                            ; preds = %bb.au
  %i.lb = sub nsw i32 %i.ks, %i.kw
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.lb, i32 0)
  %i.lc = load ptr, ptr %i.a, align 8
  %i.ld = load ptr, ptr %i.k, align 8
  %sext.i = shl i64 %i.kr, 32
  %i.le = ashr exact i64 %sext.i, 32              ; 3 uses
  %i.lf = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.kv, 32
  %i.lg = ashr exact i64 %sext55.i, 32            ; 2 uses
  %smin = call i64 @llvm.smin.i64(i64 %i.le, i64 %i.lf) ; 2 uses
  %.not35.not.i1014 = icmp sgt i64 %i.le, %i.lf
  br i1 %.not35.not.i1014, label %.lr.ph, label %._crit_edge1018

bb.ax:                                            ; preds = %.lr.ph
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i197, %i.lf
  br i1 %.not35.not.i, label %.lr.ph, label %._crit_edge1018, !llvm.loop !113

.lr.ph:                                           ; preds = %bb.aw, %bb.ax
  %indvars.iv.i1961016 = phi i64 [ %indvars.iv.next.i197, %bb.ax ], [ %i.le, %bb.aw ]
  %indvars.iv45.i1015 = phi i64 [ %indvars.iv.next46.i, %bb.ax ], [ %i.lg, %bb.aw ]
  %indvars.iv.next.i197 = add nsw i64 %indvars.iv.i1961016, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i1015, -1 ; 3 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv.next.i197
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !3  ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.next46.i
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !3  ; 2 uses
  %.not37.i = icmp eq i32 %i.li, %i.lk
  br i1 %.not37.i, label %bb.ax, label %.loopexit.i, !llvm.loop !113

._crit_edge1018:                                  ; preds = %bb.ax, %bb.aw
  %indvars.iv45.i.lcssa = phi i64 [ %i.lg, %bb.aw ], [ %indvars.iv.next46.i, %bb.ax ] ; 2 uses
  %.not36.i = icmp eq i64 %smin, %indvars.iv45.i.lcssa
  br i1 %.not36.i, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge1018
  %i.ll = icmp sgt i64 %smin, %indvars.iv45.i.lcssa
  %i.lm = select i1 %i.ll, i32 1, i32 -1
  br label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit

.loopexit.i:                                      ; preds = %.lr.ph
  %i.ln = icmp ugt i32 %i.li, %i.lk
  %i.lo = select i1 %i.ln, i32 1, i32 -1
  br label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit

_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit: ; preds = %.loopexit.i, %bb.ay, %._crit_edge1018, %bb.av
  %.3.i = phi i32 [ %i.la, %bb.av ], [ 0, %._crit_edge1018 ], [ %i.lm, %bb.ay ], [ %i.lo, %.loopexit.i ]
  %i.lp = icmp sge i32 %.3.i, %i.kn               ; 3 uses
  %i.lq = load i64, ptr %spec.store.select.sroa.sel, align 8, !tbaa !100
  %i.lr = trunc i64 %i.lq to i32
  %i.ls = load i32, ptr %spec.store.select.sroa.sel283, align 8, !tbaa !97 ; 3 uses
  %i.lt = add nsw i32 %i.ls, %i.lr                ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.ku, i32 %i.lt) ; 2 uses
  %i.lu = load i64, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %i.lv = trunc i64 %i.lu to i32
  %i.lw = load i32, ptr %i.j, align 8, !tbaa !97  ; 3 uses
  %i.lx = add nsw i32 %i.lw, %i.lv                ; 4 uses
  %i.ly = add nsw i32 %.sroa.speculated.i, 1
  %i.lz = icmp slt i32 %i.ly, %i.lx
  br i1 %i.lz, label %_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.az

bb.az:                                            ; preds = %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit
  %i.ma = icmp sgt i32 %.sroa.speculated.i, %i.lx
  br i1 %i.ma, label %.thread462, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mb = call i32 @llvm.smin.i32(i32 %i.ls, i32 %i.kt)
  %i.mc = call i32 @llvm.smin.i32(i32 %i.lw, i32 %i.mb) ; 2 uses
  %.not.not.not60.i = icmp sgt i32 %i.lx, %i.mc
  br i1 %.not.not.not60.i, label %.lr.ph.i198, label %_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit

.lr.ph.i198:                                      ; preds = %bb.ba
  %i.md = sext i32 %i.lw to i64                   ; 3 uses
  %sext.i199 = shl i64 %i.lu, 32
  %i.me = ashr exact i64 %sext.i199, 32
  %i.mf = add nsw i64 %i.me, %i.md
  %i.mg = sext i32 %i.lx to i64
  %i.mh = sext i32 %i.lt to i64
  %i.mi = sext i32 %i.ls to i64                   ; 2 uses
  %i.mj = sext i32 %i.ku to i64
  %i.mk = sext i32 %i.kt to i64                   ; 2 uses
  %i.ml = sext i32 %i.mc to i64
  %i.mm = load ptr, ptr %i.a, align 8
  %i.mn = load ptr, ptr %i.f, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bg, %.lr.ph.i198
  %indvars.iv.i200 = phi i64 [ %i.mf, %.lr.ph.i198 ], [ %indvars.iv.next.i201, %bb.bg ] ; 7 uses
  %.03561.i = phi i64 [ 0, %.lr.ph.i198 ], [ %i.nm, %bb.bg ] ; 2 uses
  %indvars.iv.next.i201 = add nsw i64 %indvars.iv.i200, -1 ; 5 uses
  %.not.i.i202 = icmp sgt i64 %indvars.iv.i200, %i.mk
  %i.mo = icmp sle i64 %indvars.iv.i200, %i.mj
  %or.cond.i = and i1 %.not.i.i202, %i.mo
  br i1 %or.cond.i, label %bb.bc, label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.mp = sub nsw i64 %indvars.iv.next.i201, %i.mk
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.mp
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !3
  %i.ms = zext i32 %i.mr to i64
  br label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i

_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i: ; preds = %bb.bc, %bb.bb
  %i.mt = phi i64 [ %i.ms, %bb.bc ], [ 0, %bb.bb ]
  %.not.i45.i = icmp sgt i64 %indvars.iv.i200, %i.mi
  %i.mu = icmp sle i64 %indvars.iv.i200, %i.mh
  %or.cond55.i = and i1 %.not.i45.i, %i.mu
  br i1 %or.cond55.i, label %bb.bd, label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i

bb.bd:                                            ; preds = %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i
  %i.mv = sub nsw i64 %indvars.iv.next.i201, %i.mi
  %i.mw = load ptr, ptr %spec.store.select.sroa.sel286, align 8, !tbaa !93
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %i.mv
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !3
  %i.mz = zext i32 %i.my to i64
  br label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i

_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i: ; preds = %bb.bd, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i
  %i.na = phi i64 [ %i.mz, %bb.bd ], [ 0, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i ]
  %i.nb = add nuw nsw i64 %i.na, %i.mt            ; 3 uses
  %.not.i47.i = icmp sgt i64 %indvars.iv.i200, %i.md
  %i.nc = icmp sle i64 %indvars.iv.i200, %i.mg
  %or.cond56.i = and i1 %.not.i47.i, %i.nc
  br i1 %or.cond56.i, label %bb.be, label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i

bb.be:                                            ; preds = %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i
  %i.nd = sub nsw i64 %indvars.iv.next.i201, %i.md
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.nd
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !3
  %i.ng = zext i32 %i.nf to i64
  %i.nh = or disjoint i64 %.03561.i, %i.ng
  br label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i

_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i: ; preds = %bb.be, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i
  %i.ni = phi i64 [ %i.nh, %bb.be ], [ %.03561.i, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i ] ; 3 uses
  %i.nj = icmp ugt i64 %i.nb, %i.ni
  br i1 %i.nj, label %.thread462, label %bb.bf

bb.bf:                                            ; preds = %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i
  %i.nk = sub nuw nsw i64 %i.ni, %i.nb            ; 2 uses
  %i.nl = icmp ugt i64 %i.nk, 1
  br i1 %i.nl, label %_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nm = shl nuw nsw i64 %i.nk, 32
  %.not.not.not.i = icmp sgt i64 %indvars.iv.next.i201, %i.ml
  br i1 %.not.not.not.i, label %bb.bb, label %.thread.loopexit.i, !llvm.loop !114

.thread.loopexit.i:                               ; preds = %bb.bg
  %i.nn = icmp ne i64 %i.ni, %i.nb
  %i.no = sext i1 %i.nn to i32
  br label %_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit

_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit: ; preds = %bb.bf, %.thread.loopexit.i, %bb.ba, %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit
  %.4.i = phi i32 [ %i.no, %.thread.loopexit.i ], [ -1, %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit ], [ 0, %bb.ba ], [ -1, %bb.bf ]
  %i.np = icmp slt i32 %.4.i, %i.km               ; 2 uses
  %i.nq = trunc i32 %i.kq to i8                   ; 3 uses
  %i.nr = add i8 %i.nq, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.kk, i64 %indvars.iv
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !18
end_hunk_1
begin_hunk_2_@_ZN10duckdb_fmt2v68internal6bigint13divmod_assignERKS2_:bb.a
  %i.ac = add nsw i32 %i.aa, %i.c
  %i.ad = sext i32 %i.ac to i64                   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !96
  %i.ag = icmp ult i64 %i.af, %i.ad
  br i1 %i.ag, label %bb.f, label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %0, align 8, !tbaa !14
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ad), !inline_history !1316
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit

_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit: ; preds = %bb.e, %bb.f
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !100
  %i.aj = icmp sgt i32 %i.c, 0
  br i1 %i.aj, label %.lr.ph, label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.._crit_edge_crit_edge

_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.._crit_edge_crit_edge: ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit
  %i.ak = add nsw i32 %i.c, -1                    ; 2 uses
  %i.al = add i32 %i.aa, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !93 ; 15 uses
  %i.ao = sext i32 %i.al to i64                   ; 5 uses
  %i.ap = zext i32 %i.ak to i64                   ; 5 uses
  %i.aq = and i64 %i.b, 2147483647                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aq, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ar = sub nsw i64 %i.ap, %i.ao
  %i.as = shl nsw i64 %i.ar, 2
  %i.at = add nsw i64 %i.as, -1
  %diff.check = icmp ult i64 %i.at, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483640               ; 4 uses
  %i.au = sub nsw i64 %i.ap, %n.vec
  %i.av = sub nsw i64 %i.ao, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = sub i64 %i.ap, %index
  %i.ax = sub i64 %i.ao, %index
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.aw ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -12
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -28
  %wide.load = load <4 x i32>, ptr %i.az, align 4, !tbaa !3
  %wide.load129 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ax ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -12
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -28
  store <4 x i32> %wide.load, ptr %i.bc, align 4, !tbaa !3
  store <4 x i32> %wide.load129, ptr %i.bd, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1317

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv73.ph = phi i64 [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph ], [ %i.au, %middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph ], [ %i.av, %middle.block ] ; 2 uses
  %i.bf = add nsw i64 %indvars.iv73.ph, 1
  %xtraiter = and i64 %i.bf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv73.prol = phi i64 [ %indvars.iv.next74.prol, %scalar.ph.prol ], [ %indvars.iv73.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv73.prol
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.prol
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !3
  %indvars.iv.next74.prol = add nsw i64 %indvars.iv73.prol, -1 ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1318

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv73.unr = phi i64 [ %indvars.iv73.ph, %scalar.ph.preheader ], [ %indvars.iv.next74.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bj = icmp ult i64 %indvars.iv73.ph, 3
  br i1 %i.bj, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.._crit_edge_crit_edge
  %i.bk = phi ptr [ %.pre, %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.._crit_edge_crit_edge ], [ %i.an, %middle.block ], [ %i.an, %scalar.ph ], [ %i.an, %scalar.ph.prol.loopexit ]
  %i.bl = zext nneg i32 %i.aa to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bl, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bk, i8 0, i64 %.idx.i.i.i.i, i1 false), !tbaa !3
  %i.bm = load i32, ptr %i.d, align 8, !tbaa !97
  %i.bn = sub nsw i32 %i.bm, %i.aa                ; 2 uses
  store i32 %i.bn, ptr %i.d, align 8, !tbaa !97
  %.pre79.pre = load i64, ptr %i.g, align 8, !tbaa !100
  br label %bb.g

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv73 = phi i64 [ %indvars.iv.next74.3, %scalar.ph ], [ %indvars.iv73.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv73
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !3
  %i.br = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv73
  %i.bs = getelementptr i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !3
  %i.bw = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv73
  %i.bx = getelementptr i8, ptr %i.bw, i64 -8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.ca = getelementptr i8, ptr %i.bz, i64 -8
  store i32 %i.by, ptr %i.ca, align 4, !tbaa !3
  %indvars.iv.next74.2 = add nsw i64 %indvars.iv73, -3 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next74.2
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.ce = getelementptr i8, ptr %i.cd, i64 -12
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !3
  %indvars.iv.next74.3 = add nsw i64 %indvars.iv73, -4
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not.3 = icmp eq i64 %indvars.iv.next74.2, 0
  br i1 %.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1319

bb.g:                                             ; preds = %._crit_edge, %select.unfold
  %.pre79 = phi i64 [ %.pre79.pre, %._crit_edge ], [ %i.h, %select.unfold ]
  %i.cf = phi i64 [ %i.ad, %._crit_edge ], [ %i.b, %select.unfold ]
  %i.cg = phi i32 [ %i.bn, %._crit_edge ], [ %i.e, %select.unfold ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41

_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41: ; preds = %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge, %bb.g
  %i.ck = phi i64 [ %i.cf, %bb.g ], [ %i.er, %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge ] ; 3 uses
  %i.cl = phi i32 [ %i.cg, %bb.g ], [ %i.ex, %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge ]
  %i.cm = phi i64 [ %.pre79, %bb.g ], [ %i.ez, %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge ] ; 4 uses
  %.0 = phi i32 [ 0, %bb.g ], [ %i.ew, %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge ]
  %i.cn = and i64 %i.cm, 4294967295               ; 2 uses
  %.not17.i = icmp eq i64 %i.cn, 0
  br i1 %.not17.i, label %.preheader.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41
  %i.co = load i32, ptr %i.j, align 8, !tbaa !97
  %i.cp = sub i32 %i.co, %i.cl
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !93 ; 3 uses
  %i.cr = load ptr, ptr %i.ch, align 8, !tbaa !93 ; 4 uses
  %i.cs = sext i32 %i.cp to i64                   ; 2 uses
  %xtraiter145 = and i64 %i.cm, 1
  %i.ct = icmp eq i64 %i.cn, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.cm, 4294967294
  br label %bb.h

.preheader.i.unr-lcssa:                           ; preds = %bb.h
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv27.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next28.i.1, %.preheader.i.unr-lcssa ]
  %indvars.iv.i24.epil.init = phi i64 [ %i.cs, %.lr.ph.i ], [ %indvars.iv.next.i25.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %.01418.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.dz, %.preheader.i.unr-lcssa ]
  %lcmp.mod149 = trunc i64 %i.cm to i1
  tail call void @llvm.assume(i1 %lcmp.mod149)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv27.i.epil.init
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i24.epil.init ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = zext i32 %i.cx to i64
  %i.cz = zext i32 %i.cv to i64
  %i.da = add nuw nsw i64 %.01418.i.epil.init, %i.cz
  %i.db = sub nsw i64 %i.cy, %i.da                ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  store i32 %i.dc, ptr %i.cw, align 4, !tbaa !3
  %indvars.iv.next.i25.epil = add nsw i64 %indvars.iv.i24.epil.init, 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.dx, %.preheader.i.unr-lcssa ], [ %i.db, %.epil.preheader ]
  %indvars.iv.next.i25.lcssa = phi i64 [ %indvars.iv.next.i25.1, %.preheader.i.unr-lcssa ], [ %indvars.iv.next.i25.epil, %.epil.preheader ]
  %i.dd = icmp sgt i64 %.lcssa, -1
  br i1 %i.dd, label %.preheader.thread.i, label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %.preheader.i
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.next.i25.lcssa ; 2 uses
  %.promoted.i = load i32, ptr %2, align 4, !tbaa !3
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.new
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next28.i.1, %bb.h ] ; 3 uses
  %indvars.iv.i24 = phi i64 [ %i.cs, %.lr.ph.i.new ], [ %indvars.iv.next.i25.1, %bb.h ] ; 3 uses
  %.01418.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.dz, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.h ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv27.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i24 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.di = zext i32 %i.dh to i64
  %i.dj = zext i32 %i.df to i64
  %i.dk = add nuw nsw i64 %.01418.i, %i.dj
  %i.dl = sub nsw i64 %i.di, %i.dk                ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  store i32 %i.dm, ptr %i.dg, align 4, !tbaa !3
  %i.dn = lshr i64 %i.dl, 63
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv27.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = getelementptr [4 x i8], ptr %i.cr, i64 %indvars.iv.i24
  %i.ds = getelementptr i8, ptr %i.dr, i64 4      ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.du = zext i32 %i.dt to i64
  %i.dv = zext i32 %i.dq to i64
  %i.dw = add nuw nsw i64 %i.dn, %i.dv
  %i.dx = sub nsw i64 %i.du, %i.dw                ; 3 uses
  %i.dy = trunc i64 %i.dx to i32
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !3
  %i.dz = lshr i64 %i.dx, 63                      ; 2 uses
  %indvars.iv.next.i25.1 = add nsw i64 %indvars.iv.i24, 2 ; 3 uses
  %indvars.iv.next28.i.1 = add nuw nsw i64 %indvars.iv27.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.h, !llvm.loop !1320

bb.i:                                             ; preds = %bb.i, %.lr.ph24.i
  %i.ea = phi i32 [ %.promoted.i, %.lr.ph24.i ], [ %i.ed, %bb.i ]
  %.123.i = phi i64 [ 1, %.lr.ph24.i ], [ %i.ee, %bb.i ]
  %i.eb = zext i32 %i.ea to i64
  %i.ec = sub nsw i64 %i.eb, %.123.i              ; 3 uses
  %i.ed = trunc i64 %i.ec to i32                  ; 2 uses
  %i.ee = lshr i64 %i.ec, 63
  %.not11.i = icmp sgt i64 %i.ec, -1
  br i1 %.not11.i, label %._crit_edge.i, label %bb.i, !llvm.loop !1321

._crit_edge.i:                                    ; preds = %bb.i
  store i32 %i.ed, ptr %2, align 4, !tbaa !3
  br label %.preheader.thread.i

.preheader.thread.i:                              ; preds = %._crit_edge.i, %.preheader.i, %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41
  %i.ef = trunc i64 %i.ck to i32
  %i.eg = load ptr, ptr %i.ch, align 8
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %i.ef, i32 1) ; 2 uses
  %i.eh = trunc i64 %i.ck to i32                  ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, 1
  br i1 %i.ei, label %.lr.ph118, label %.critedge.i.i

.lr.ph118:                                        ; preds = %.preheader.thread.i
  %i.ej = and i64 %i.ck, 2147483647
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.ek = trunc nuw i64 %i.en to i32              ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 1
  br i1 %i.el, label %bb.k, label %.critedge.i.i, !llvm.loop !1322

bb.k:                                             ; preds = %.lr.ph118, %bb.j
  %i.em = phi i32 [ %i.eh, %.lr.ph118 ], [ %i.ek, %bb.j ]
  %indvars.iv.i.i117 = phi i64 [ %i.ej, %.lr.ph118 ], [ %i.en, %bb.j ]
  %i.en = add nsw i64 %indvars.iv.i.i117, -1      ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.j, label %..critedge.i.i_crit_edge, !llvm.loop !1322

..critedge.i.i_crit_edge:                         ; preds = %bb.k
  br label %.critedge.i.i, !llvm.loop !1322

.critedge.i.i:                                    ; preds = %bb.j, %..critedge.i.i_crit_edge, %.preheader.thread.i
  %.0.in.lcssa.i.i = phi i32 [ %smin.i.i, %.preheader.thread.i ], [ %i.em, %..critedge.i.i_crit_edge ], [ %smin.i.i, %bb.j ] ; 4 uses
  %i.er = sext i32 %.0.in.lcssa.i.i to i64        ; 6 uses
  %i.es = load i64, ptr %i.ci, align 8, !tbaa !96
  %i.et = icmp ult i64 %i.es, %i.er
  br i1 %i.et, label %bb.l, label %_ZN10duckdb_fmt2v68internal6bigint16subtract_alignedERKS2_.exit

bb.l:                                             ; preds = %.critedge.i.i
  %i.eu = load ptr, ptr %0, align 8, !tbaa !14
  %i.ev = load ptr, ptr %i.eu, align 8
  tail call void %i.ev(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.er), !inline_history !1323
  br label %_ZN10duckdb_fmt2v68internal6bigint16subtract_alignedERKS2_.exit

_ZN10duckdb_fmt2v68internal6bigint16subtract_alignedERKS2_.exit: ; preds = %.critedge.i.i, %bb.l
  store i64 %i.er, ptr %i.a, align 8, !tbaa !100
  %i.ew = add nuw nsw i32 %.0, 1                  ; 4 uses
  %i.ex = load i32, ptr %i.d, align 8, !tbaa !97  ; 2 uses
  %i.ey = add nsw i32 %i.ex, %.0.in.lcssa.i.i     ; 2 uses
  %i.ez = load i64, ptr %i.g, align 8, !tbaa !100 ; 3 uses
  %i.fa = trunc i64 %i.ez to i32                  ; 2 uses
  %i.fb = load i32, ptr %i.j, align 8, !tbaa !97
  %i.fc = add nsw i32 %i.fb, %i.fa                ; 2 uses
  %.not.i28 = icmp eq i32 %i.ey, %i.fc
  br i1 %.not.i28, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN10duckdb_fmt2v68internal6bigint16subtract_alignedERKS2_.exit
  %i.fd = icmp sgt i32 %i.ey, %i.fc
  br i1 %i.fd, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit

bb.n:                                             ; preds = %_ZN10duckdb_fmt2v68internal6bigint16subtract_alignedERKS2_.exit
  %i.fe = sub nsw i32 %.0.in.lcssa.i.i, %i.fa
  %spec.store.select.i30 = tail call i32 @llvm.smax.i32(i32 %i.fe, i32 0) ; 2 uses
  %i.ff = load ptr, ptr %i.ch, align 8
  %i.fg = load ptr, ptr %i.cj, align 8
  %i.fh = zext nneg i32 %spec.store.select.i30 to i64 ; 2 uses
  %sext55.i32 = shl i64 %i.ez, 32
  %i.fi = ashr exact i64 %sext55.i32, 32          ; 2 uses
  %smin78 = tail call i64 @llvm.smin.i64(i64 %i.er, i64 %i.fh)
  %.not35.not.i35122 = icmp sgt i32 %.0.in.lcssa.i.i, %spec.store.select.i30
  br i1 %.not35.not.i35122, label %.lr.ph126, label %._crit_edge127

bb.o:                                             ; preds = %.lr.ph126
  %.not35.not.i35 = icmp sgt i64 %indvars.iv.next.i37, %i.fh
  br i1 %.not35.not.i35, label %.lr.ph126, label %._crit_edge127, !llvm.loop !113

.lr.ph126:                                        ; preds = %bb.n, %bb.o
  %indvars.iv.i34124 = phi i64 [ %indvars.iv.next.i37, %bb.o ], [ %i.er, %bb.n ]
  %indvars.iv45.i33123 = phi i64 [ %indvars.iv.next46.i38, %bb.o ], [ %i.fi, %bb.n ]
  %indvars.iv.next.i37 = add nsw i64 %indvars.iv.i34124, -1 ; 3 uses
  %indvars.iv.next46.i38 = add nsw i64 %indvars.iv45.i33123, -1 ; 3 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.next.i37
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3  ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.next46.i38
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3  ; 2 uses
  %.not37.i39 = icmp eq i32 %i.fk, %i.fm
  br i1 %.not37.i39, label %bb.o, label %.loopexit.i40, !llvm.loop !113

._crit_edge127:                                   ; preds = %bb.o, %bb.n
  %indvars.iv45.i33.lcssa = phi i64 [ %i.fi, %bb.n ], [ %indvars.iv.next46.i38, %bb.o ]
  %or.cond.not62 = icmp slt i64 %smin78, %indvars.iv45.i33.lcssa
  br i1 %or.cond.not62, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge

.loopexit.i40:                                    ; preds = %.lr.ph126
  %i.fn = icmp ugt i32 %i.fk, %i.fm
  br i1 %i.fn, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit

_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge: ; preds = %.loopexit.i40, %bb.m, %._crit_edge127
  br label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41, !llvm.loop !1324

_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit: ; preds = %._crit_edge127, %.loopexit.i40, %bb.m, %._crit_edge116, %bb.b, %.loopexit.i
  %.022 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit.i ], [ 0, %._crit_edge116 ], [ %i.ew, %bb.m ], [ %i.ew, %.loopexit.i40 ], [ %i.ew, %._crit_edge127 ]
  ret i32 %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEE4growEm(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b
  %spec.select = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93   ; 4 uses
  %i.g = icmp ugt i64 %spec.select, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit, !prof !148

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %spec.select, 4611686018427387903
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit:     ; preds = %bb.a
  %i.i = shl nuw nsw i64 %spec.select, 2
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #29 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !100  ; 3 uses
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.f, !prof !46

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit
  %.idx = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.f, i64 %.idx, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit
  %i.n = icmp eq i64 %i.l, 1
  br i1 %i.n, label %bb.g, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.f, align 4, !tbaa !3
  store i32 %i.o, ptr %i.j, align 4, !tbaa !3
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit:  ; preds = %bb.e, %bb.f, %bb.g
  store ptr %i.j, ptr %i.e, align 8, !tbaa !93
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !96
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.f, %i.p
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit
  tail call void @_ZdlPv(ptr noundef %i.f) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEE10deallocateEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #27
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEE10deallocateEv.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEE10deallocateEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #27, !inline_history !119
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_2

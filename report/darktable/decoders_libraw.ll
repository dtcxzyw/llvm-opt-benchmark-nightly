inline.NumInlined: 308
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6LibRaw20phase_one_load_raw_sEv:bb.a
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv82 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !189 ; 2 uses
  %.not31 = icmp ult i32 %i.bt, %i.br
  br i1 %.not31, label %bb.j, label %bb.r

bb.j:                                             ; preds = %.lr.ph75
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.bv = load i16, ptr %i.bg, align 2, !tbaa !77
  %i.bw = zext i16 %i.bv to i32
  %i.bx = mul nuw i32 %i.bt, %i.bw
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.by
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !191
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !80
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = invoke noundef i32 %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, i64 noundef %i.cc, i32 noundef 0)
          to label %bb.k unwind label %bb.m, !call_target !82 ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !191
  %i.cj = load i64, ptr %i.cb, align 8, !tbaa !191
  %i.ck = sub nsw i64 %i.ci, %i.cj                ; 3 uses
  %i.cl = icmp sgt i64 %i.ck, %i.bk
  br i1 %i.cl, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cm = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 5, ptr %i.cm, align 16, !tbaa !74
  invoke void @__cxa_throw(ptr nonnull %i.cm, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
          to label %bb.s unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.j
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit44

.loopexit:                                        ; preds = %bb.n, %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit44

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit44

bb.n:                                             ; preds = %bb.k
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !80
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef i32 %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull %i.bl, i64 noundef 1, i64 noundef %i.ck)
          to label %bb.o unwind label %.loopexit, !call_target !130

bb.o:                                             ; preds = %bb.n
  %i.ct = sext i32 %i.cs to i64
  %.not32 = icmp eq i64 %i.ck, %i.ct
  br i1 %.not32, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.q unwind label %.loopexit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cu = load i16, ptr %i.bg, align 2, !tbaa !77
  %i.cv = zext i16 %i.cu to i32
  tail call void @_Z13decode_S_typeiPjPt(i32 noundef %i.cv, ptr noundef nonnull %i.bl, ptr noundef %i.bz)
  %.pre85 = load i16, ptr %i.i, align 8, !tbaa !78
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph75
  %i.cw = phi i16 [ %.pre85, %bb.q ], [ %i.bq, %.lr.ph75 ] ; 2 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.cx = zext i16 %i.cw to i64
  %i.cy = icmp samesign ult i64 %indvars.iv.next83, %i.cx
  br i1 %i.cy, label %.lr.ph75, label %_ZNSt6vectorI13p1_row_info_tSaIS0_EED2Ev.exit, !llvm.loop !198

_ZNSt6vectorIhSaIhEED2Ev.exit44:                  ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bk) #17
  br label %_ZNSt6vectorI13p1_row_info_tSaIS0_EED2Ev.exit46

_ZNSt6vectorI13p1_row_info_tSaIS0_EED2Ev.exit46:  ; preds = %bb.i, %_ZNSt6vectorIhSaIhEED2Ev.exit44, %bb.g, %bb.e
  %.pn35 = phi { ptr, i32 } [ %i.bf, %bb.g ], [ %i.au, %bb.e ], [ %.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit44 ], [ %i.bp, %bb.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #17
  resume { ptr, i32 } %.pn35

bb.s:                                             ; preds = %bb.l
  unreachable
}

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw17samsung3_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x [2 x i32]], align 16         ; 29 uses
  %i.b = alloca [4 x i32], align 16               ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  %i.e = icmp ult i16 %i.d, 436
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 36 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !77   ; 2 uses
  %i.h = icmp ult i16 %i.g, 646
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 5, ptr %i.i, align 16, !tbaa !74
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 381728
  store i16 18761, ptr %i.k, align 8, !tbaa !199
  %i.l = zext i16 %i.g to i64
  %i.m = zext i16 %i.d to i64
  %i.n = mul nuw nsw i64 %i.l, %i.m
  %i.o = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef -1, ptr noundef null) ; 0 uses
  %i.p = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 16, ptr noundef null) ; 0 uses
  %i.q = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 4, ptr noundef null) ; 0 uses
  %i.r = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 4, ptr noundef null) ; 2 uses
  %i.s = add i32 %i.r, 1
  %notmask = shl nsw i32 -1, %i.s
  %i.t = xor i32 %notmask, -1
  %i.u = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 8, ptr noundef null) ; 0 uses
  %i.v = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 16, ptr noundef null) ; 0 uses
  %i.w = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 16, ptr noundef null) ; 0 uses
  %i.x = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 16, ptr noundef null) ; 0 uses
  %i.y = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 4, ptr noundef null) ; 0 uses
  %i.z = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 4, ptr noundef null) ; 3 uses
  %i.aa = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 16, ptr noundef null) ; 0 uses
  %i.ab = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 8, ptr noundef null) ; 0 uses
  %i.ac = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, ptr noundef null) ; 0 uses
  %i.ad = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 14, ptr noundef null)
  %i.ae = trunc i32 %i.ad to i16                  ; 16 uses
  %i.af = load i16, ptr %i.c, align 8, !tbaa !78
  %.not151 = icmp eq i16 %i.af, 0
  br i1 %.not151, label %._crit_edge150, label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.ah = and i32 %i.z, 4
  %i.ai = and i32 %i.z, 2
  %.not = icmp eq i32 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 193784 ; 3 uses
  %i.ak = and i32 %i.z, 1
  %.not124 = icmp eq i32 %i.ak, 0
  %i.al = add i32 %i.r, 2                         ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  br label %.preheader136

._crit_edge150:                                   ; preds = %._crit_edge, %bb.d
  ret void

.preheader136:                                    ; preds = %.lr.ph149, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph149 ], [ %indvars.iv.next, %._crit_edge ] ; 22 uses
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !79  ; 4 uses
  %i.bb = load i64, ptr %i.ag, align 8, !tbaa !115
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !80
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.ba), !call_target !200
  %i.bg = sub nsw i64 %i.bb, %i.bf
  %i.bh = and i64 %i.bg, 15
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef i32 %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i64 noundef %i.bh, i32 noundef 1), !call_target !82 ; 0 uses
  %i.bm = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef -1, ptr noundef null) ; 0 uses
  %i.bn = load i16, ptr %i.f, align 2, !tbaa !77  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.bo = icmp samesign ult i64 %indvars.iv, 2    ; 2 uses
  %i.bp = select i1 %i.bo, i32 7, i32 4           ; 3 uses
  %i.bq = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %i.br = shufflevector <4 x i32> %i.bq, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.br, ptr %i.a, align 16, !tbaa !118
  store i32 %i.bp, ptr %i.an, align 4, !tbaa !118
  store i32 %i.bp, ptr %i.am, align 16, !tbaa !118
  %1 = zext i16 %i.bn to i64
  %2 = mul nuw nsw i64 %indvars.iv, %1
  %i.bs = icmp ugt i16 %i.bn, 15
  br i1 %i.bs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader136
  %i.bt = trunc nuw nsw i64 %indvars.iv to i32    ; 21 uses
  %.not127 = trunc i64 %indvars.iv to i1          ; 15 uses
  %spec.select.sroa.sel.idx = select i1 %.not127, i64 0, i64 16
  %spec.select.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.sroa.sel.idx
  %spec.select.sroa.sel334.idx = select i1 %.not127, i64 0, i64 16
  %spec.select.sroa.sel334 = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.sroa.sel334.idx
  %spec.select.sroa.sel337.idx = select i1 %.not127, i64 0, i64 16
  %spec.select.sroa.sel337 = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.sroa.sel337.idx
  %spec.select.sroa.sel340.idx = select i1 %.not127, i64 0, i64 16
  %spec.select.sroa.sel340 = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.sroa.sel340.idx
  %spec.select.sroa.sel340.sroa.sel.v = select i1 %.not127, i64 4, i64 20
  %spec.select.sroa.sel340.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.sroa.sel340.sroa.sel.v ; 2 uses
  %spec.select.sroa.sel357.idx = select i1 %.not127, i64 0, i64 16
  %spec.select.sroa.sel357 = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.sroa.sel357.idx
  %spec.select.sroa.sel357.sroa.sel.v = select i1 %.not127, i64 4, i64 20
  %spec.select.sroa.sel357.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.sroa.sel357.sroa.sel.v ; 2 uses
  %spec.select326.sroa.sel.idx = select i1 %.not127, i64 0, i64 16
  %spec.select326.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select326.sroa.sel.idx
  %spec.select326.sroa.sel345.idx = select i1 %.not127, i64 0, i64 16
  %spec.select326.sroa.sel345 = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select326.sroa.sel345.idx
  %spec.select326.sroa.sel348.idx = select i1 %.not127, i64 0, i64 16
  %spec.select326.sroa.sel348 = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select326.sroa.sel348.idx
  %spec.select326.sroa.sel351.idx = select i1 %.not127, i64 0, i64 16
  %spec.select326.sroa.sel351 = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select326.sroa.sel351.idx
  %spec.select326.sroa.sel351.sroa.sel.v = select i1 %.not127, i64 4, i64 20
  %spec.select326.sroa.sel351.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select326.sroa.sel351.sroa.sel.v ; 2 uses
  %spec.select326.sroa.sel354.idx = select i1 %.not127, i64 0, i64 16
  %spec.select326.sroa.sel354 = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select326.sroa.sel354.idx
  %spec.select326.sroa.sel354.sroa.sel.v = select i1 %.not127, i64 4, i64 20
  %spec.select326.sroa.sel354.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select326.sroa.sel354.sroa.sel.v ; 2 uses
  %spec.select327 = and i64 %indvars.iv, 1        ; 5 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %spec.select327
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %spec.select327
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %spec.select327
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %spec.select327 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %spec.select327 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %spec.select328 = and i64 %indvars.iv, 1        ; 5 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %spec.select328
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %spec.select328
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %spec.select328
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %spec.select328 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %spec.select328 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %bb.aq, %.preheader136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ci = load i16, ptr %i.c, align 8, !tbaa !78
  %i.cj = zext i16 %i.ci to i64
  %i.ck = icmp samesign ult i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %.preheader136, label %._crit_edge150, !llvm.loop !203

bb.e:                                             ; preds = %.lr.ph, %bb.aq
  %.0108146 = phi i32 [ 7, %.lr.ph ], [ %.1132, %bb.aq ]
  %.0109145 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.aq ] ; 2 uses
  %.0112143 = phi i32 [ 0, %.lr.ph ], [ %i.op, %bb.aq ] ; 25 uses
  %i.cl = and i32 %.0112143, 48
  %i.cm = or disjoint i32 %i.cl, %i.ah
  %or.cond = icmp eq i32 %i.cm, 0
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.cn = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, ptr noundef null) ; 2 uses
  %i.co = icmp slt i32 %i.cn, 3
  br i1 %i.co, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cp = sext i32 %i.cn to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr @__const._ZN6LibRaw17samsung3_load_rawEv.scalevals, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !118
  %i.cs = add nsw i32 %i.cr, %.0109145
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ct = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 12, ptr noundef null)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %.2 = phi i32 [ %.0109145, %bb.e ], [ %i.cs, %bb.g ], [ %i.ct, %bb.h ] ; 3 uses
  %i.cu = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 1, ptr noundef null)
  %i.cv = icmp eq i32 %i.cu, 0                    ; 2 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.cv, label %.preheader133, label %.thread

bb.k:                                             ; preds = %bb.i
  br i1 %i.cv, label %bb.l, label %select.unfold

bb.l:                                             ; preds = %bb.k
  %i.cw = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 3, ptr noundef null)
  br label %select.unfold

select.unfold:                                    ; preds = %bb.k, %bb.l
  %.1 = phi i32 [ %.0108146, %bb.k ], [ %i.cw, %bb.l ] ; 2 uses
  %i.cx = icmp eq i32 %.1, 7
  br i1 %i.cx, label %.preheader133, label %.thread

.preheader133:                                    ; preds = %bb.j, %select.unfold
  %i.cy = icmp eq i32 %.0112143, 0
  %i.cz = load ptr, ptr %i.aj, align 8, !tbaa !76 ; 47 uses
  %.pre = load i16, ptr %i.f, align 2, !tbaa !77  ; 2 uses
  br i1 %i.cy, label %..loopexit.loopexit_crit_edge, label %bb.m

..loopexit.loopexit_crit_edge:                    ; preds = %.preheader133
  %.pre190 = zext i16 %.pre to i64
  %.pre192 = mul i64 %indvars.iv, %.pre190
  %i.da = and i64 %.pre192, 4294967295
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.da
  store i16 %i.ae, ptr %i.db, align 2, !tbaa !93
  %.pre161263 = load i16, ptr %i.f, align 2, !tbaa !77
  %.pre194 = zext i16 %.pre161263 to i64
  %.pre196 = mul i64 %indvars.iv, %.pre194
  %i.dc = add i64 %.pre196, 1
  %i.dd = and i64 %i.dc, 4294967295
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dd
  store i16 %i.ae, ptr %i.de, align 2, !tbaa !93
  %.pre162267 = load i16, ptr %i.f, align 2, !tbaa !77
  %.pre198 = zext i16 %.pre162267 to i64
  %.pre200 = mul i64 %indvars.iv, %.pre198
  %i.df = add i64 %.pre200, 2
  %i.dg = and i64 %i.df, 4294967295
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dg
  store i16 %i.ae, ptr %i.dh, align 2, !tbaa !93
  %.pre163271 = load i16, ptr %i.f, align 2, !tbaa !77
  %.pre202 = zext i16 %.pre163271 to i64
  %.pre204 = mul i64 %indvars.iv, %.pre202
  %i.di = add i64 %.pre204, 3
  %i.dj = and i64 %i.di, 4294967295
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dj
  store i16 %i.ae, ptr %i.dk, align 2, !tbaa !93
  %.pre164275 = load i16, ptr %i.f, align 2, !tbaa !77
  %.pre206 = zext i16 %.pre164275 to i64
  %.pre208 = mul i64 %indvars.iv, %.pre206
  %i.dl = add i64 %.pre208, 4
  %i.dm = and i64 %i.dl, 4294967295
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dm
  store i16 %i.ae, ptr %i.dn, align 2, !tbaa !93
  %.pre165279 = load i16, ptr %i.f, align 2, !tbaa !77
  %.pre210 = zext i16 %.pre165279 to i64
  %.pre212 = mul i64 %indvars.iv, %.pre210
  %i.do = add i64 %.pre212, 5
  %i.dp = and i64 %i.do, 4294967295
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dp
  store i16 %i.ae, ptr %i.dq, align 2, !tbaa !93
  %.pre166283 = load i16, ptr %i.f, align 2, !tbaa !77
  %.pre214 = zext i16 %.pre166283 to i64
  %.pre216 = mul i64 %indvars.iv, %.pre214
  %i.dr = add i64 %.pre216, 6
  %i.ds = and i64 %i.dr, 4294967295
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.ds
  store i16 %i.ae, ptr %i.dt, align 2, !tbaa !93
  %.pre167287 = load i16, ptr %i.f, align 2, !tbaa !77
  %.pre218 = zext i16 %.pre167287 to i64
  %.pre220 = mul i64 %indvars.iv, %.pre218
  %i.du = add i64 %.pre220, 7
  %i.dv = and i64 %i.du, 4294967295
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dv
  store i16 %i.ae, ptr %i.dw, align 2, !tbaa !93
  %.pre168291 = load i16, ptr %i.f, align 2, !tbaa !77
  %.pre222 = zext i16 %.pre168291 to i64
  %.pre224 = mul i64 %indvars.iv, %.pre222
  %i.dx = add i64 %.pre224, 8
  %i.dy = and i64 %i.dx, 4294967295
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dy
  store i16 %i.ae, ptr %i.dz, align 2, !tbaa !93
  %.pre169295 = load i16, ptr %i.f, align 2, !tbaa !77
  %.pre226 = zext i16 %.pre169295 to i64
  %.pre228 = mul i64 %indvars.iv, %.pre226
  %i.ea = add i64 %.pre228, 9
  %i.eb = and i64 %i.ea, 4294967295
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.eb
  store i16 %i.ae, ptr %i.ec, align 2, !tbaa !93
  %.pre170299 = load i16, ptr %i.f, align 2, !tbaa !77
  %.pre230 = zext i16 %.pre170299 to i64
  %.pre232 = mul i64 %indvars.iv, %.pre230
  %i.ed = add i64 %.pre232, 10
  %i.ee = and i64 %i.ed, 4294967295
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.ee
  store i16 %i.ae, ptr %i.ef, align 2, !tbaa !93
  %.pre171303 = load i16, ptr %i.f, align 2, !tbaa !77
  %.pre234 = zext i16 %.pre171303 to i64
  %.pre236 = mul i64 %indvars.iv, %.pre234
  %i.eg = add i64 %.pre236, 11
  %i.eh = and i64 %i.eg, 4294967295
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.eh
  store i16 %i.ae, ptr %i.ei, align 2, !tbaa !93
  %.pre172307 = load i16, ptr %i.f, align 2, !tbaa !77
  %.pre238 = zext i16 %.pre172307 to i64
  %.pre240 = mul i64 %indvars.iv, %.pre238
  %i.ej = add i64 %.pre240, 12
  %i.ek = and i64 %i.ej, 4294967295
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.ek
  store i16 %i.ae, ptr %i.el, align 2, !tbaa !93
  %.pre173311 = load i16, ptr %i.f, align 2, !tbaa !77
  %.pre242 = zext i16 %.pre173311 to i64
  %.pre244 = mul i64 %indvars.iv, %.pre242
  %i.em = add i64 %.pre244, 13
end_hunk_0
begin_hunk_1_@_ZN6LibRaw17samsung3_load_rawEv:bb.a

bb.v:                                             ; preds = %.preheader.1
  %i.nb = load i32, ptr %spec.select326.sroa.sel, align 16, !tbaa !118
  %i.nc = add i32 %i.nb, -1                       ; 2 uses
  store i32 %i.nc, ptr %i.ap, align 4, !tbaa !118
  br label %bb.y

bb.w:                                             ; preds = %.preheader.1
  %i.nd = load i32, ptr %spec.select326.sroa.sel345, align 16, !tbaa !118
  %i.ne = add i32 %i.nd, 1                        ; 2 uses
  store i32 %i.ne, ptr %i.aq, align 4, !tbaa !118
  br label %bb.y

bb.x:                                             ; preds = %.preheader.1
  %i.nf = load i32, ptr %spec.select326.sroa.sel348, align 16, !tbaa !118 ; 2 uses
  store i32 %i.nf, ptr %i.ar, align 4, !tbaa !118
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.ng = phi i32 [ %i.nf, %bb.x ], [ %i.ne, %bb.w ], [ %i.nc, %bb.v ], [ %i.na, %bb.u ] ; 2 uses
  %i.nh = load i32, ptr %spec.select326.sroa.sel351.sroa.sel, align 4, !tbaa !118
  store i32 %i.nh, ptr %spec.select326.sroa.sel351, align 16, !tbaa !118
  store i32 %i.ng, ptr %spec.select326.sroa.sel351.sroa.sel, align 4, !tbaa !118
  %i.ni = icmp ugt i32 %i.ng, %i.al
  br i1 %i.ni, label %bb.ao, label %.preheader.2

.preheader.2:                                     ; preds = %.thread321, %bb.y
  switch i32 %i.mx, label %.thread322 [
    i32 0, label %bb.ac
    i32 1, label %bb.ab
    i32 2, label %bb.aa
    i32 3, label %bb.z
  ]

.thread322:                                       ; preds = %.preheader.2
  %i.nj = load i32, ptr %i.ca, align 4, !tbaa !118
  store i32 %i.nj, ptr %i.bz, align 8, !tbaa !118
  store i32 0, ptr %i.ca, align 4, !tbaa !118
  br label %.preheader.3

bb.z:                                             ; preds = %.preheader.2
  %i.nk = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 4, ptr noundef null) ; 2 uses
  store i32 %i.nk, ptr %i.as, align 8, !tbaa !118
  br label %bb.ad

bb.aa:                                            ; preds = %.preheader.2
  %i.nl = load i32, ptr %i.bu, align 8, !tbaa !118
  %i.nm = add i32 %i.nl, -1                       ; 2 uses
  store i32 %i.nm, ptr %i.at, align 8, !tbaa !118
  br label %bb.ad

bb.ab:                                            ; preds = %.preheader.2
  %i.nn = load i32, ptr %i.bv, align 8, !tbaa !118
  %i.no = add i32 %i.nn, 1                        ; 2 uses
  store i32 %i.no, ptr %i.au, align 8, !tbaa !118
  br label %bb.ad

bb.ac:                                            ; preds = %.preheader.2
  %i.np = load i32, ptr %i.bw, align 8, !tbaa !118 ; 2 uses
  store i32 %i.np, ptr %i.av, align 8, !tbaa !118
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.nq = phi i32 [ %i.np, %bb.ac ], [ %i.no, %bb.ab ], [ %i.nm, %bb.aa ], [ %i.nk, %bb.z ] ; 2 uses
  %i.nr = load i32, ptr %i.by, align 4, !tbaa !118
  store i32 %i.nr, ptr %i.bx, align 8, !tbaa !118
  store i32 %i.nq, ptr %i.by, align 4, !tbaa !118
  %i.ns = icmp ugt i32 %i.nq, %i.al
  br i1 %i.ns, label %bb.ao, label %.preheader.3

.preheader.3:                                     ; preds = %.thread322, %bb.ad
  switch i32 %i.my, label %.thread323 [
    i32 0, label %bb.ah
    i32 1, label %bb.ag
    i32 2, label %bb.af
    i32 3, label %bb.ae
  ]

.thread323:                                       ; preds = %.preheader.3
  %i.nt = load i32, ptr %i.ch, align 4, !tbaa !118
  store i32 %i.nt, ptr %i.cg, align 8, !tbaa !118
  store i32 0, ptr %i.ch, align 4, !tbaa !118
  br label %bb.ap

bb.ae:                                            ; preds = %.preheader.3
  %i.nu = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 4, ptr noundef null) ; 2 uses
  store i32 %i.nu, ptr %i.aw, align 4, !tbaa !118
  br label %bb.ai

bb.af:                                            ; preds = %.preheader.3
  %i.nv = load i32, ptr %i.cb, align 8, !tbaa !118
  %i.nw = add i32 %i.nv, -1                       ; 2 uses
  store i32 %i.nw, ptr %i.ax, align 4, !tbaa !118
  br label %bb.ai

bb.ag:                                            ; preds = %.preheader.3
  %i.nx = load i32, ptr %i.cc, align 8, !tbaa !118
  %i.ny = add i32 %i.nx, 1                        ; 2 uses
  store i32 %i.ny, ptr %i.ay, align 4, !tbaa !118
  br label %bb.ai

bb.ah:                                            ; preds = %.preheader.3
  %i.nz = load i32, ptr %i.cd, align 8, !tbaa !118 ; 2 uses
  store i32 %i.nz, ptr %i.az, align 4, !tbaa !118
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.oa = phi i32 [ %i.nz, %bb.ah ], [ %i.ny, %bb.ag ], [ %i.nw, %bb.af ], [ %i.nu, %bb.ae ] ; 2 uses
  %i.ob = load i32, ptr %i.cf, align 4, !tbaa !118
  store i32 %i.ob, ptr %i.ce, align 8, !tbaa !118
  store i32 %i.oa, ptr %i.cf, align 4, !tbaa !118
  %i.oc = icmp ugt i32 %i.oa, %i.al
  br i1 %i.oc, label %bb.ao, label %bb.ap

.thread324:                                       ; preds = %.preheader.preheader
  %i.od = load i32, ptr %spec.select.sroa.sel357.sroa.sel, align 4, !tbaa !118
  store i32 %i.od, ptr %spec.select.sroa.sel357, align 16, !tbaa !118
  store i32 0, ptr %spec.select.sroa.sel357.sroa.sel, align 4, !tbaa !118
  br label %.preheader.1

bb.aj:                                            ; preds = %.preheader.preheader
  %i.oe = load i32, ptr %spec.select.sroa.sel337, align 16, !tbaa !118
  br label %bb.an

bb.ak:                                            ; preds = %.preheader.preheader
  %i.of = load i32, ptr %spec.select.sroa.sel334, align 16, !tbaa !118
  %i.og = add i32 %i.of, 1
  br label %bb.an

bb.al:                                            ; preds = %.preheader.preheader
  %i.oh = load i32, ptr %spec.select.sroa.sel, align 16, !tbaa !118
  %i.oi = add i32 %i.oh, -1
  br label %bb.an

bb.am:                                            ; preds = %.preheader.preheader
  %i.oj = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 4, ptr noundef null)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %.sink = phi i32 [ %i.oj, %bb.am ], [ %i.oi, %bb.al ], [ %i.og, %bb.ak ], [ %i.oe, %bb.aj ] ; 3 uses
  store i32 %.sink, ptr %i.b, align 16, !tbaa !118
  %i.ok = load i32, ptr %spec.select.sroa.sel340.sroa.sel, align 4, !tbaa !118
  store i32 %i.ok, ptr %spec.select.sroa.sel340, align 16, !tbaa !118
  store i32 %.sink, ptr %spec.select.sroa.sel340.sroa.sel, align 4, !tbaa !118
  %i.ol = icmp ugt i32 %.sink, %i.al
  br i1 %i.ol, label %bb.ao, label %.preheader.1

bb.ao:                                            ; preds = %bb.ai, %bb.ad, %bb.y, %bb.an
  %i.om = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 5, ptr %i.om, align 16, !tbaa !74
  tail call void @__cxa_throw(ptr nonnull %i.om, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
  unreachable

bb.ap:                                            ; preds = %bb.ai, %.thread323, %bb.t
  %i.on = shl nsw i32 %.2, 1
  %i.oo = or disjoint i32 %i.on, 1
  br label %bb.ar

bb.aq:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.op = add nuw nsw i32 %.0112143, 16           ; 2 uses
  %i.oq = load i16, ptr %i.f, align 2, !tbaa !77
  %i.or = zext i16 %i.oq to i32
  %i.os = add nsw i32 %i.or, -15
  %i.ot = icmp slt i32 %i.op, %i.os
  br i1 %i.ot, label %bb.e, label %._crit_edge, !llvm.loop !205

bb.ar:                                            ; preds = %bb.ap, %bb.aw
  %.0113142 = phi i32 [ 0, %bb.ap ], [ %i.qf, %bb.aw ] ; 5 uses
  %i.ou = lshr i32 %.0113142, 2
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ov
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !118 ; 2 uses
  %i.oy = add i32 %i.ox, -1
  %i.oz = shl nuw i32 1, %i.oy                    ; 2 uses
  %i.pa = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ox, ptr noundef null)
  %i.pb = xor i32 %i.oz, %i.pa
  %i.pc = sub i32 %i.pb, %i.oz
  %i.pd = mul i32 %i.pc, %i.oo
  %i.pe = add i32 %i.pd, %.2
  %i.pf = shl nuw nsw i32 %.0113142, 1
  %i.pg = and i32 %i.pf, 14                       ; 2 uses
  br i1 %.not127, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ph = or disjoint i32 %.0112143, %i.pg
  %i.pi = lshr i32 %.0113142, 3
  %reass.sub = sub nsw i32 %i.ph, %i.pi
  %i.pj = add i32 %reass.sub, 1
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.pk = lshr i32 %.0113142, 3
  %i.pl = or i32 %i.pk, %i.pg
  %i.pm = or i32 %i.pl, %.0112143
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.pn = phi i32 [ %i.pj, %bb.as ], [ %i.pm, %bb.at ] ; 2 uses
  %i.po = sext i32 %i.pn to i64
  %3 = add nsw i64 %2, %i.po                      ; 2 uses
  %i.pp = icmp sgt i64 %3, -1
  %.not126 = icmp slt i64 %3, %i.n
  %or.cond129 = select i1 %i.pp, i1 %.not126, i1 false
  br i1 %or.cond129, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.pq = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 5, ptr %i.pq, align 16, !tbaa !74
  tail call void @__cxa_throw(ptr nonnull %i.pq, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.pr = load ptr, ptr %i.aj, align 8, !tbaa !76
  %i.ps = load i16, ptr %i.f, align 2, !tbaa !77
  %i.pt = zext i16 %i.ps to i32
  %i.pu = mul nuw nsw i32 %i.bt, %i.pt
  %i.pv = add nsw i32 %i.pu, %i.pn
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds [2 x i8], ptr %i.pr, i64 %i.pw ; 2 uses
  %i.py = load i16, ptr %i.px, align 2, !tbaa !93
  %i.pz = zext i16 %i.py to i32
  %i.qa = add nsw i32 %i.pe, %i.pz                ; 2 uses
  %i.qb = icmp slt i32 %i.qa, 0
  %i.qc = tail call i32 @llvm.smin.i32(i32 %i.qa, i32 %i.t)
  %i.qd = trunc i32 %i.qc to i16
  %i.qe = select i1 %i.qb, i16 0, i16 %i.qd
  store i16 %i.qe, ptr %i.px, align 2, !tbaa !93
  %i.qf = add nuw nsw i32 %.0113142, 1            ; 2 uses
  %exitcond159.not = icmp eq i32 %i.qf, 16
  br i1 %exitcond159.not, label %bb.aq, label %bb.ar, !llvm.loop !206
}

declare noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i20 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i20, 4               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph49

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit
  %i.j = icmp eq i64 %i.cl, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph49, !llvm.loop !207

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i23.lcssa = phi i64 [ %.fr.i20, %.lr.ph ], [ %.fr.i, %bb.b ] ; 3 uses
  %storemerge21.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i23.lcssa, 4               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i23.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i, %._crit_edge
  %.07.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i ] ; 8 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.07.i.i ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !189
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !191  ; 2 uses
  %i.y = icmp slt i64 %.07.i.i, %i.o
  br i1 %i.y, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.037.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.07.i.i, %bb.c ] ; 2 uses
  %i.z = shl i64 %.037.i.i.i, 1                   ; 2 uses
  %i.aa = add i64 %i.z, 2                         ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %i.aa
  %i.ac = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !191
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !191
  %i.ai = icmp slt i64 %i.af, %i.ah
  %spec.select.i.i.i = select i1 %i.ai, i64 %i.ac, i64 %i.aa ; 4 uses
  %i.aj = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ak = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !208
  %i.al = icmp slt i64 %spec.select.i.i.i, %i.o
  br i1 %i.al, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !209

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.07.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.am = icmp eq i64 %.0.lcssa.i.i.i, %i.m
  %or.cond.i.i = select i1 %i.q, i1 %i.am, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !208
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.an = icmp sgt i64 %.1.i.i.i, %.07.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i

.lr.ph.i.i.i.i11:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !191
  %i.ar = icmp slt i64 %i.aq, %i.x
  br i1 %i.ar, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !tbaa.struct !208
  %i.at = icmp sgt i64 %.0919.i.i.i.i, %.07.i.i
  br i1 %i.at, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i, !llvm.loop !210

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i11, %bb.e
  %.0.lcssa.i.i.i.i10 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i11 ]
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i10 ; 2 uses
  store i32 %i.v, ptr %i.au, align 8, !tbaa !118
  %.sroa.225.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.x, ptr %.sroa.225.0..sroa_idx.i.i.i, align 8, !tbaa !157
  %.not.i.i = icmp eq i64 %.07.i.i, 0
  %i.av = add nsw i64 %.07.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit, label %bb.c, !llvm.loop !211

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i
  %i.aw = icmp sgt i64 %.fr.i23.lcssa, 16
  br i1 %i.aw, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.ax, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit.i.i ], [ %storemerge21.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit ] ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !189
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !191 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !208
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.bb, %i.a                     ; 3 uses
  %i.bd = ashr exact i64 %i.bc, 4                 ; 3 uses
  %i.be = add nsw i64 %i.bd, -1
  %i.bf = sdiv i64 %i.be, 2
  %i.bg = icmp sgt i64 %i.bd, 2
  br i1 %i.bg, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.bh = shl i64 %.037.i.i.i.i, 1                ; 2 uses
  %i.bi = add i64 %i.bh, 2                        ; 2 uses
  %i.bj = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bi
  %i.bk = or disjoint i64 %i.bh, 1                ; 2 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !191
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !191
  %i.bq = icmp slt i64 %i.bn, %i.bp
  %spec.select.i.i.i.i = select i1 %i.bq, i64 %i.bk, i64 %i.bi ; 4 uses
  %i.br = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bs = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !208
  %i.bt = icmp slt i64 %spec.select.i.i.i.i, %i.bf
  br i1 %i.bt, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !209

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bu = and i64 %i.bc, 16
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bw = add nsw i64 %i.bd, -2
  %i.bx = ashr exact i64 %i.bw, 1
  %i.by = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bx
  br i1 %i.by, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bz = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ca = or disjoint i64 %i.bz, 1                ; 2 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ca
  %i.cc = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !208
end_hunk_1

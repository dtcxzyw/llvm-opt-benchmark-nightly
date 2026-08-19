inline.NumInlined: 1363
inline.NumDeleted: 293
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 135
loop-unroll.NumUnrolled: 149
begin_hunk_0_@_ZNK2cv21resizeGeneric_InvokerINS_12HResizeCubicIhisEENS_12VResizeCubicIhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEEEclERKNS_5RangeE:bb.a
  %i.fw = ashr i32 %i.fv, 22
  %i.fx = call i32 @llvm.smax.i32(i32 %i.fw, i32 0)
  %i.fy = call i32 @llvm.umin.i32(i32 %i.fx, i32 255)
  %i.fz = trunc nuw i32 %i.fy to i8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.i
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2cv12VResizeCubicIhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEclEPPKiPhPKsi.exit, label %.lr.ph.i, !llvm.loop !586

_ZNK2cv12VResizeCubicIhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEclEPPKiPhPKsi.exit: ; preds = %.lr.ph.i, %middle.block, %bb.l
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.gb = load i32, ptr %i.o, align 8, !tbaa !562 ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [2 x i8], ptr %.02576, i64 %i.gc
  %i.ge = load i32, ptr %i.ai, align 4, !tbaa !36
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp slt i64 %indvars.iv.next93, %i.gf
  br i1 %i.gg, label %bb.e, label %._crit_edge80.loopexit, !llvm.loop !587

._crit_edge80.loopexit:                           ; preds = %_ZNK2cv12VResizeCubicIhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEclEPPKiPhPKsi.exit
  %.pre97 = load ptr, ptr %3, align 8, !tbaa !20
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %._crit_edge80.loopexit, %._crit_edge
  %i.gh = phi ptr [ %.pre97, %._crit_edge80.loopexit ], [ %i.y, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i.i36 = icmp eq ptr %i.gh, %i.s
  %i.gi = icmp eq ptr %i.gh, null
  %or.cond.i37 = or i1 %.not.i.i36, %i.gi
  br i1 %or.cond.i37, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit38, label %bb.m

bb.m:                                             ; preds = %._crit_edge80
  call void @_ZdaPv(ptr noundef nonnull %i.gh) #24
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit38

_ZN2cv10AutoBufferIiLm264EED2Ev.exit38:           ; preds = %._crit_edge80, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv12HResizeCubicIhisEclEPPKhPPiiPKiPKsiiiii(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %bb.a
  %i.b = shl nsw i32 %8, 1
  %i.c = shl nsw i32 %7, 2
  %i.d = sext i32 %i.c to i64
  %i.e = sub nsw i64 0, %i.d
  %umax = tail call i32 @llvm.umax.i32(i32 %8, i32 1) ; 4 uses
  %i.f = sext i32 %10 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.g = shl i32 %8, 1
  %i.h = mul i32 %8, 3
  br label %bb.b

._crit_edge95:                                    ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph94, %bb.d
  %indvars.iv110 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next111, %bb.d ] ; 3 uses
  %.092 = phi ptr [ %5, %.lr.ph94 ], [ %i.eb, %bb.d ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv110
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !416  ; 8 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv110
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  br label %bb.c

.loopexit80:                                      ; preds = %.lr.ph88, %.preheader79
  %.272.lcssa = phi i32 [ %.171.lcssa, %.preheader79 ], [ %10, %.lr.ph88 ]
  %.3.lcssa = phi ptr [ %.2.lcssa, %.preheader79 ], [ %i.ea, %.lr.ph88 ]
  br label %bb.c, !llvm.loop !588

bb.c:                                             ; preds = %.loopexit80, %bb.b
  %.070 = phi i32 [ 0, %bb.b ], [ %.272.lcssa, %.loopexit80 ] ; 3 uses
  %.069 = phi i32 [ %9, %bb.b ], [ %7, %.loopexit80 ] ; 4 uses
  %.1 = phi ptr [ %.092, %bb.b ], [ %.3.lcssa, %.loopexit80 ] ; 2 uses
  %i.m = icmp slt i32 %.070, %.069
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.n = zext nneg i32 %.070 to i64
  %i.o = zext nneg i32 %.069 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit.3
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit.3 ] ; 3 uses
  %.284 = phi ptr [ %.1, %.lr.ph.preheader ], [ %i.ci, %.loopexit.3 ] ; 5 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19   ; 10 uses
  %i.r = sub nsw i32 %i.q, %8                     ; 6 uses
  %.not = icmp ult i32 %i.r, %6
  br i1 %.not, label %.loopexit, label %.preheader78.preheader

.preheader78.preheader:                           ; preds = %.lr.ph
  %i.s = sub i32 %8, %i.q
  %smax = tail call i32 @llvm.smax.i32(i32 %i.r, i32 0)
  %i.t = add i32 %smax, %i.s                      ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  %umin = zext i1 %i.u to i32                     ; 2 uses
  %i.v = sub i32 %i.t, %umin
  %i.w = udiv i32 %i.v, %umax
  %i.x = add i32 %i.w, %umin
  %i.y = mul i32 %8, %i.x
  %i.z = add i32 %i.r, %i.y
  br label %.preheader

.preheader:                                       ; preds = %.preheader78.preheader, %.preheader
  %.165 = phi i32 [ %i.aa, %.preheader ], [ %i.z, %.preheader78.preheader ] ; 3 uses
  %.not77 = icmp slt i32 %.165, %6
  %i.aa = sub nsw i32 %.165, %8
  br i1 %.not77, label %.loopexit, label %.preheader, !llvm.loop !589

.loopexit:                                        ; preds = %.preheader, %.lr.ph
  %.266 = phi i32 [ %i.r, %.lr.ph ], [ %.165, %.preheader ]
  %i.ab = sext i32 %.266 to i64
  %i.ac = getelementptr inbounds i8, ptr %i.j, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = zext i8 %i.ad to i32
  %i.af = load i16, ptr %.284, align 2, !tbaa !71
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.ae
  %.not.1 = icmp ult i32 %i.q, %6
  br i1 %.not.1, label %.loopexit.1, label %.preheader78.preheader.1

.preheader78.preheader.1:                         ; preds = %.loopexit
  %.lobit = lshr i32 %i.q, 31                     ; 2 uses
  %smax.1 = tail call i32 @llvm.smax.i32(i32 %i.q, i32 0)
  %i.ai = add i32 %i.q, %.lobit
  %i.aj = sub i32 %smax.1, %i.ai
  %i.ak = udiv i32 %i.aj, %umax
  %i.al = add i32 %.lobit, %i.ak
  %i.am = mul i32 %8, %i.al
  %i.an = add i32 %i.q, %i.am
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %.preheader78.preheader.1
  %.165.1 = phi i32 [ %i.ao, %.preheader.1 ], [ %i.an, %.preheader78.preheader.1 ] ; 3 uses
  %.not77.1 = icmp slt i32 %.165.1, %6
  %i.ao = sub nsw i32 %.165.1, %8
  br i1 %.not77.1, label %.loopexit.1, label %.preheader.1, !llvm.loop !589

.loopexit.1:                                      ; preds = %.preheader.1, %.loopexit
  %.266.1 = phi i32 [ %i.q, %.loopexit ], [ %.165.1, %.preheader.1 ]
  %i.ap = sext i32 %.266.1 to i64
  %i.aq = getelementptr inbounds i8, ptr %i.j, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %.284, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !71
  %i.av = sext i16 %i.au to i32
  %i.aw = mul nsw i32 %i.av, %i.as
  %i.ax = add nsw i32 %i.aw, %i.ah
  %indvars.iv.next.1 = add i32 %i.q, %8           ; 4 uses
  %i.ay = add i32 %i.q, %8                        ; 2 uses
  %i.az = add nsw i32 %i.g, %i.r                  ; 2 uses
  %.not.2 = icmp ult i32 %i.az, %6
  br i1 %.not.2, label %.loopexit.2, label %.preheader78.preheader.2

.preheader78.preheader.2:                         ; preds = %.loopexit.1
  %indvars.iv.next.1.lobit = lshr i32 %indvars.iv.next.1, 31 ; 2 uses
  %smax.2 = tail call i32 @llvm.smax.i32(i32 %indvars.iv.next.1, i32 0)
  %i.ba = add i32 %i.ay, %indvars.iv.next.1.lobit
  %i.bb = sub i32 %smax.2, %i.ba
  %i.bc = udiv i32 %i.bb, %umax
  %i.bd = add i32 %indvars.iv.next.1.lobit, %i.bc
  %i.be = mul i32 %8, %i.bd
  %i.bf = add i32 %indvars.iv.next.1, %i.be
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2, %.preheader78.preheader.2
  %.165.2 = phi i32 [ %i.bg, %.preheader.2 ], [ %i.bf, %.preheader78.preheader.2 ] ; 3 uses
  %.not77.2 = icmp slt i32 %.165.2, %6
  %i.bg = sub nsw i32 %.165.2, %8
  br i1 %.not77.2, label %.loopexit.2, label %.preheader.2, !llvm.loop !589

.loopexit.2:                                      ; preds = %.preheader.2, %.loopexit.1
  %.266.2 = phi i32 [ %i.az, %.loopexit.1 ], [ %.165.2, %.preheader.2 ]
  %i.bh = sext i32 %.266.2 to i64
  %i.bi = getelementptr inbounds i8, ptr %i.j, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !14
  %i.bk = zext i8 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %.284, i64 4
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !71
  %i.bn = sext i16 %i.bm to i32
  %i.bo = mul nsw i32 %i.bn, %i.bk
  %i.bp = add nsw i32 %i.bo, %i.ax
  %i.bq = add nsw i32 %i.h, %i.r                  ; 2 uses
  %.not.3 = icmp ult i32 %i.bq, %6
  br i1 %.not.3, label %.loopexit.3, label %.preheader78.preheader.3

.preheader78.preheader.3:                         ; preds = %.loopexit.2
  %indvars.iv.next.2 = add i32 %indvars.iv.next.1, %8 ; 3 uses
  %indvars.iv.next.2.lobit = lshr i32 %indvars.iv.next.2, 31 ; 2 uses
  %smax.3 = tail call i32 @llvm.smax.i32(i32 %indvars.iv.next.2, i32 0)
  %11 = add i32 %i.ay, %8
  %i.br = add i32 %11, %indvars.iv.next.2.lobit
  %i.bs = sub i32 %smax.3, %i.br
  %i.bt = udiv i32 %i.bs, %umax
  %i.bu = add i32 %indvars.iv.next.2.lobit, %i.bt
  %i.bv = mul i32 %8, %i.bu
  %i.bw = add i32 %indvars.iv.next.2, %i.bv
  br label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.3, %.preheader78.preheader.3
  %.165.3 = phi i32 [ %i.bx, %.preheader.3 ], [ %i.bw, %.preheader78.preheader.3 ] ; 3 uses
  %.not77.3 = icmp slt i32 %.165.3, %6
  %i.bx = sub nsw i32 %.165.3, %8
  br i1 %.not77.3, label %.loopexit.3, label %.preheader.3, !llvm.loop !589

.loopexit.3:                                      ; preds = %.preheader.3, %.loopexit.2
  %.266.3 = phi i32 [ %i.bq, %.loopexit.2 ], [ %.165.3, %.preheader.3 ]
  %i.by = sext i32 %.266.3 to i64
  %i.bz = getelementptr inbounds i8, ptr %i.j, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !14
  %i.cb = zext i8 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %.284, i64 6
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !71
  %i.ce = sext i16 %i.cd to i32
  %i.cf = mul nsw i32 %i.ce, %i.cb
  %i.cg = add nsw i32 %i.cf, %i.bp
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.284, i64 8 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !590

._crit_edge:                                      ; preds = %.loopexit.3, %bb.c
  %.171.lcssa = phi i32 [ %.070, %bb.c ], [ %.069, %.loopexit.3 ] ; 3 uses
  %.2.lcssa = phi ptr [ %.1, %bb.c ], [ %i.ci, %.loopexit.3 ] ; 3 uses
  %i.cj = icmp eq i32 %.069, %7
  br i1 %i.cj, label %bb.d, label %.preheader79

.preheader79:                                     ; preds = %._crit_edge
  %i.ck = icmp slt i32 %.171.lcssa, %10
  br i1 %i.ck, label %.lr.ph88.preheader, label %.loopexit80

.lr.ph88.preheader:                               ; preds = %.preheader79
  %i.cl = zext nneg i32 %.171.lcssa to i64
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %.lr.ph88
  %indvars.iv106 = phi i64 [ %i.cl, %.lr.ph88.preheader ], [ %indvars.iv.next107, %.lr.ph88 ] ; 3 uses
  %.387 = phi ptr [ %.2.lcssa, %.lr.ph88.preheader ], [ %i.ea, %.lr.ph88 ] ; 5 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv106
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !19 ; 4 uses
  %i.co = sub nsw i32 %i.cn, %8
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds i8, ptr %i.j, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !14
  %i.cs = zext i8 %i.cr to i32
  %i.ct = load i16, ptr %.387, align 2, !tbaa !71
  %i.cu = sext i16 %i.ct to i32
  %i.cv = mul nsw i32 %i.cu, %i.cs
  %i.cw = sext i32 %i.cn to i64
  %i.cx = getelementptr inbounds i8, ptr %i.j, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !14
  %i.cz = zext i8 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %.387, i64 2
  %i.db = load i16, ptr %i.da, align 2, !tbaa !71
  %i.dc = sext i16 %i.db to i32
  %i.dd = mul nsw i32 %i.dc, %i.cz
  %i.de = add nsw i32 %i.dd, %i.cv
  %i.df = add nsw i32 %i.cn, %8
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i8, ptr %i.j, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !14
  %i.dj = zext i8 %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %.387, i64 4
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !71
  %i.dm = sext i16 %i.dl to i32
  %i.dn = mul nsw i32 %i.dm, %i.dj
  %i.do = add nsw i32 %i.de, %i.dn
  %i.dp = add nsw i32 %i.cn, %i.b
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds i8, ptr %i.j, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !14
  %i.dt = zext i8 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %.387, i64 6
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !71
  %i.dw = sext i16 %i.dv to i32
  %i.dx = mul nsw i32 %i.dw, %i.dt
  %i.dy = add nsw i32 %i.do, %i.dx
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv106
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !19
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.387, i64 8 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next107, %i.f
  br i1 %exitcond109.not, label %.loopexit80, label %.lr.ph88, !llvm.loop !591

bb.d:                                             ; preds = %._crit_edge
  %i.eb = getelementptr inbounds [2 x i8], ptr %.2.lcssa, i64 %i.e
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond113.not, label %._crit_edge95, label %bb.b, !llvm.loop !592
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv21resizeGeneric_InvokerINS_12HResizeCubicItffEENS_12VResizeCubicItffNS_4CastIftEENS_12VResizeNoVecEEEEC2ERKNS_3MatERS9_PKiSE_PKfSG_RKNS_5Size_IiEESK_iii(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv21resizeGeneric_InvokerINS_12HResizeCubicItffEENS_12VResizeCubicItffNS_4CastIftEENS_12VResizeNoVecEEEEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %3, ptr %i.c, align 8, !tbaa !593
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %4, ptr %i.d, align 8, !tbaa !595
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %5, ptr %i.e, align 8, !tbaa !596
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %6, ptr %i.f, align 8, !tbaa !597
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = load i64, ptr %7, align 4
  store i64 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.j = load i64, ptr %8, align 4
  store i64 %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 %9, ptr %i.k, align 8, !tbaa !598
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 476
  store i32 %10, ptr %i.l, align 4, !tbaa !599
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 %11, ptr %i.m, align 8, !tbaa !600
  %i.n = icmp slt i32 %9, 17
  br i1 %i.n, label %bb.k, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv21resizeGeneric_InvokerINS_13HResizeLinearIhisLi2048ENS_12HResizeNoVecEEENS_13VResizeLinearIhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEEEC2ERKNS_3MatERSA_PKiSF_PKsSH_RKNS_5Size_IiEESL_iii, ptr noundef nonnull @.str.1, i32 noundef 2191) #23
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %12, align 8, !tbaa !8     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.v = load i64, ptr %i.t, align 8, !tbaa !14
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #22
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %bb.e ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.l ], [ %i.o, %bb.d ]
end_hunk_0
begin_hunk_1_@_ZNK2cv21resizeGeneric_InvokerINS_12HResizeCubicItffEENS_12VResizeCubicItffNS_4CastIftEENS_12VResizeNoVecEEEEclERKNS_5RangeE:bb.a
  %i.ep = call float @llvm.fmuladd.f32(float %i.eo, float %i.dz, float %i.em)
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.er = load float, ptr %i.eq, align 4, !tbaa !70
  %i.es = call float @llvm.fmuladd.f32(float %i.er, float %i.eb, float %i.ep)
  %i.et = insertelement <4 x float> poison, float %i.es, i64 0
  %i.eu = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.et)
  %i.ev = call i32 @llvm.smax.i32(i32 %i.eu, i32 0)
  %i.ew = call i32 @llvm.umin.i32(i32 %i.ev, i32 65535)
  %i.ex = trunc nuw i32 %i.ew to i16
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %indvars.iv.i
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !71
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2cv12VResizeCubicItffNS_4CastIftEENS_12VResizeNoVecEEclEPPKfPtS6_i.exit, label %.lr.ph.i, !llvm.loop !609

_ZNK2cv12VResizeCubicItffNS_4CastIftEENS_12VResizeNoVecEEclEPPKfPtS6_i.exit: ; preds = %.lr.ph.i, %._crit_edge73.thread
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.ez = load i32, ptr %i.o, align 8, !tbaa !598 ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %.02576, i64 %i.fa
  %i.fc = load i32, ptr %i.ai, align 4, !tbaa !36
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp slt i64 %indvars.iv.next93, %i.fd
  br i1 %i.fe, label %bb.e, label %._crit_edge80.loopexit, !llvm.loop !610

._crit_edge80.loopexit:                           ; preds = %_ZNK2cv12VResizeCubicItffNS_4CastIftEENS_12VResizeNoVecEEclEPPKfPtS6_i.exit
  %.pre97 = load ptr, ptr %3, align 8, !tbaa !449
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %._crit_edge80.loopexit, %._crit_edge
  %i.ff = phi ptr [ %.pre97, %._crit_edge80.loopexit ], [ %i.y, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i.i36 = icmp eq ptr %i.ff, %i.s
  %i.fg = icmp eq ptr %i.ff, null
  %or.cond.i37 = or i1 %.not.i.i36, %i.fg
  br i1 %or.cond.i37, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit38, label %bb.l

bb.l:                                             ; preds = %._crit_edge80
  call void @_ZdaPv(ptr noundef nonnull %i.ff) #24
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit38

_ZN2cv10AutoBufferIfLm264EED2Ev.exit38:           ; preds = %._crit_edge80, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv12HResizeCubicItffEclEPPKtPPfiPKiPKfiiiii(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %bb.a
  %i.b = shl nsw i32 %8, 1
  %i.c = shl nsw i32 %7, 2
  %i.d = sext i32 %i.c to i64
  %i.e = sub nsw i64 0, %i.d
  %umax = tail call i32 @llvm.umax.i32(i32 %8, i32 1) ; 4 uses
  %i.f = sext i32 %10 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.g = shl i32 %8, 1
  %i.h = mul i32 %8, 3
  br label %bb.b

._crit_edge95:                                    ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph94, %bb.d
  %indvars.iv110 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next111, %bb.d ] ; 3 uses
  %.092 = phi ptr [ %5, %.lr.ph94 ], [ %i.dn, %bb.d ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv110
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !457  ; 8 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv110
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !452  ; 2 uses
  br label %bb.c

.loopexit80:                                      ; preds = %.lr.ph88, %.preheader79
  %.272.lcssa = phi i32 [ %.171.lcssa, %.preheader79 ], [ %10, %.lr.ph88 ]
  %.3.lcssa = phi ptr [ %.2.lcssa, %.preheader79 ], [ %i.dm, %.lr.ph88 ]
  br label %bb.c, !llvm.loop !611

bb.c:                                             ; preds = %.loopexit80, %bb.b
  %.070 = phi i32 [ 0, %bb.b ], [ %.272.lcssa, %.loopexit80 ] ; 3 uses
  %.069 = phi i32 [ %9, %bb.b ], [ %7, %.loopexit80 ] ; 4 uses
  %.1 = phi ptr [ %.092, %bb.b ], [ %.3.lcssa, %.loopexit80 ] ; 2 uses
  %i.m = icmp slt i32 %.070, %.069
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.n = zext nneg i32 %.070 to i64
  %i.o = zext nneg i32 %.069 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit.3
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit.3 ] ; 3 uses
  %.284 = phi ptr [ %.1, %.lr.ph.preheader ], [ %i.cb, %.loopexit.3 ] ; 5 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19   ; 10 uses
  %i.r = sub nsw i32 %i.q, %8                     ; 6 uses
  %.not = icmp ult i32 %i.r, %6
  br i1 %.not, label %.loopexit, label %.preheader78.preheader

.preheader78.preheader:                           ; preds = %.lr.ph
  %i.s = sub i32 %8, %i.q
  %smax = tail call i32 @llvm.smax.i32(i32 %i.r, i32 0)
  %i.t = add i32 %smax, %i.s                      ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  %umin = zext i1 %i.u to i32                     ; 2 uses
  %i.v = sub i32 %i.t, %umin
  %i.w = udiv i32 %i.v, %umax
  %i.x = add i32 %i.w, %umin
  %i.y = mul i32 %8, %i.x
  %i.z = add i32 %i.r, %i.y
  br label %.preheader

.preheader:                                       ; preds = %.preheader78.preheader, %.preheader
  %.165 = phi i32 [ %i.aa, %.preheader ], [ %i.z, %.preheader78.preheader ] ; 3 uses
  %.not77 = icmp slt i32 %.165, %6
  %i.aa = sub nsw i32 %.165, %8
  br i1 %.not77, label %.loopexit, label %.preheader, !llvm.loop !612

.loopexit:                                        ; preds = %.preheader, %.lr.ph
  %.266 = phi i32 [ %i.r, %.lr.ph ], [ %.165, %.preheader ]
  %i.ab = sext i32 %.266 to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !71
  %i.ae = uitofp i16 %i.ad to float
  %i.af = load float, ptr %.284, align 4, !tbaa !70
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.af, float 0.000000e+00)
  %.not.1 = icmp ult i32 %i.q, %6
  br i1 %.not.1, label %.loopexit.1, label %.preheader78.preheader.1

.preheader78.preheader.1:                         ; preds = %.loopexit
  %.lobit = lshr i32 %i.q, 31                     ; 2 uses
  %smax.1 = tail call i32 @llvm.smax.i32(i32 %i.q, i32 0)
  %i.ah = add i32 %i.q, %.lobit
  %i.ai = sub i32 %smax.1, %i.ah
  %i.aj = udiv i32 %i.ai, %umax
  %i.ak = add i32 %.lobit, %i.aj
  %i.al = mul i32 %8, %i.ak
  %i.am = add i32 %i.q, %i.al
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %.preheader78.preheader.1
  %.165.1 = phi i32 [ %i.an, %.preheader.1 ], [ %i.am, %.preheader78.preheader.1 ] ; 3 uses
  %.not77.1 = icmp slt i32 %.165.1, %6
  %i.an = sub nsw i32 %.165.1, %8
  br i1 %.not77.1, label %.loopexit.1, label %.preheader.1, !llvm.loop !612

.loopexit.1:                                      ; preds = %.preheader.1, %.loopexit
  %.266.1 = phi i32 [ %i.q, %.loopexit ], [ %.165.1, %.preheader.1 ]
  %i.ao = sext i32 %.266.1 to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !71
  %i.ar = uitofp i16 %i.aq to float
  %i.as = getelementptr inbounds nuw i8, ptr %.284, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !70
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.at, float %i.ag)
  %indvars.iv.next.1 = add i32 %i.q, %8           ; 4 uses
  %i.av = add i32 %i.q, %8                        ; 2 uses
  %i.aw = add nsw i32 %i.g, %i.r                  ; 2 uses
  %.not.2 = icmp ult i32 %i.aw, %6
  br i1 %.not.2, label %.loopexit.2, label %.preheader78.preheader.2

.preheader78.preheader.2:                         ; preds = %.loopexit.1
  %indvars.iv.next.1.lobit = lshr i32 %indvars.iv.next.1, 31 ; 2 uses
  %smax.2 = tail call i32 @llvm.smax.i32(i32 %indvars.iv.next.1, i32 0)
  %i.ax = add i32 %i.av, %indvars.iv.next.1.lobit
  %i.ay = sub i32 %smax.2, %i.ax
  %i.az = udiv i32 %i.ay, %umax
  %i.ba = add i32 %indvars.iv.next.1.lobit, %i.az
  %i.bb = mul i32 %8, %i.ba
  %i.bc = add i32 %indvars.iv.next.1, %i.bb
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2, %.preheader78.preheader.2
  %.165.2 = phi i32 [ %i.bd, %.preheader.2 ], [ %i.bc, %.preheader78.preheader.2 ] ; 3 uses
  %.not77.2 = icmp slt i32 %.165.2, %6
  %i.bd = sub nsw i32 %.165.2, %8
  br i1 %.not77.2, label %.loopexit.2, label %.preheader.2, !llvm.loop !612

.loopexit.2:                                      ; preds = %.preheader.2, %.loopexit.1
  %.266.2 = phi i32 [ %i.aw, %.loopexit.1 ], [ %.165.2, %.preheader.2 ]
  %i.be = sext i32 %.266.2 to i64
  %i.bf = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !71
  %i.bh = uitofp i16 %i.bg to float
  %i.bi = getelementptr inbounds nuw i8, ptr %.284, i64 8
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !70
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bj, float %i.au)
  %i.bl = add nsw i32 %i.h, %i.r                  ; 2 uses
  %.not.3 = icmp ult i32 %i.bl, %6
  br i1 %.not.3, label %.loopexit.3, label %.preheader78.preheader.3

.preheader78.preheader.3:                         ; preds = %.loopexit.2
  %indvars.iv.next.2 = add i32 %indvars.iv.next.1, %8 ; 3 uses
  %indvars.iv.next.2.lobit = lshr i32 %indvars.iv.next.2, 31 ; 2 uses
  %smax.3 = tail call i32 @llvm.smax.i32(i32 %indvars.iv.next.2, i32 0)
  %11 = add i32 %i.av, %8
  %i.bm = add i32 %11, %indvars.iv.next.2.lobit
  %i.bn = sub i32 %smax.3, %i.bm
  %i.bo = udiv i32 %i.bn, %umax
  %i.bp = add i32 %indvars.iv.next.2.lobit, %i.bo
  %i.bq = mul i32 %8, %i.bp
  %i.br = add i32 %indvars.iv.next.2, %i.bq
  br label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.3, %.preheader78.preheader.3
  %.165.3 = phi i32 [ %i.bs, %.preheader.3 ], [ %i.br, %.preheader78.preheader.3 ] ; 3 uses
  %.not77.3 = icmp slt i32 %.165.3, %6
  %i.bs = sub nsw i32 %.165.3, %8
  br i1 %.not77.3, label %.loopexit.3, label %.preheader.3, !llvm.loop !612

.loopexit.3:                                      ; preds = %.preheader.3, %.loopexit.2
  %.266.3 = phi i32 [ %i.bl, %.loopexit.2 ], [ %.165.3, %.preheader.3 ]
  %i.bt = sext i32 %.266.3 to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !71
  %i.bw = uitofp i16 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %.284, i64 12
  %i.by = load float, ptr %i.bx, align 4, !tbaa !70
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.by, float %i.bk)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  store float %i.bz, ptr %i.ca, align 4, !tbaa !70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.284, i64 16 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !613

._crit_edge:                                      ; preds = %.loopexit.3, %bb.c
  %.171.lcssa = phi i32 [ %.070, %bb.c ], [ %.069, %.loopexit.3 ] ; 3 uses
  %.2.lcssa = phi ptr [ %.1, %bb.c ], [ %i.cb, %.loopexit.3 ] ; 3 uses
  %i.cc = icmp eq i32 %.069, %7
  br i1 %i.cc, label %bb.d, label %.preheader79

.preheader79:                                     ; preds = %._crit_edge
  %i.cd = icmp slt i32 %.171.lcssa, %10
  br i1 %i.cd, label %.lr.ph88.preheader, label %.loopexit80

.lr.ph88.preheader:                               ; preds = %.preheader79
  %i.ce = zext nneg i32 %.171.lcssa to i64
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %.lr.ph88
  %indvars.iv106 = phi i64 [ %i.ce, %.lr.ph88.preheader ], [ %indvars.iv.next107, %.lr.ph88 ] ; 3 uses
  %.387 = phi ptr [ %.2.lcssa, %.lr.ph88.preheader ], [ %i.dm, %.lr.ph88 ] ; 5 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv106
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !19 ; 4 uses
  %i.ch = sub nsw i32 %i.cg, %8
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !71
  %i.cl = uitofp i16 %i.ck to float
  %i.cm = load float, ptr %.387, align 4, !tbaa !70
  %i.cn = sext i32 %i.cg to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !71
  %i.cq = uitofp i16 %i.cp to float
  %i.cr = getelementptr inbounds nuw i8, ptr %.387, i64 4
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !70
  %i.ct = fmul float %i.cs, %i.cq
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cm, float %i.ct)
  %i.cv = add nsw i32 %i.cg, %8
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !71
  %i.cz = uitofp i16 %i.cy to float
  %i.da = getelementptr inbounds nuw i8, ptr %.387, i64 8
  %i.db = load float, ptr %i.da, align 4, !tbaa !70
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.db, float %i.cu)
  %i.dd = add nsw i32 %i.cg, %i.b
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !71
  %i.dh = uitofp i16 %i.dg to float
  %i.di = getelementptr inbounds nuw i8, ptr %.387, i64 12
  %i.dj = load float, ptr %i.di, align 4, !tbaa !70
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.dj, float %i.dc)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv106
  store float %i.dk, ptr %i.dl, align 4, !tbaa !70
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.387, i64 16 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next107, %i.f
  br i1 %exitcond109.not, label %.loopexit80, label %.lr.ph88, !llvm.loop !614

bb.d:                                             ; preds = %._crit_edge
  %i.dn = getelementptr inbounds [4 x i8], ptr %.2.lcssa, i64 %i.e
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond113.not, label %._crit_edge95, label %bb.b, !llvm.loop !615
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv21resizeGeneric_InvokerINS_12HResizeCubicIsffEENS_12VResizeCubicIsffNS_4CastIfsEENS_12VResizeNoVecEEEEC2ERKNS_3MatERS9_PKiSE_PKfSG_RKNS_5Size_IiEESK_iii(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv21resizeGeneric_InvokerINS_12HResizeCubicIsffEENS_12VResizeCubicIsffNS_4CastIfsEENS_12VResizeNoVecEEEEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %3, ptr %i.c, align 8, !tbaa !616
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %4, ptr %i.d, align 8, !tbaa !618
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %5, ptr %i.e, align 8, !tbaa !619
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %6, ptr %i.f, align 8, !tbaa !620
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = load i64, ptr %7, align 4
  store i64 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.j = load i64, ptr %8, align 4
  store i64 %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 %9, ptr %i.k, align 8, !tbaa !621
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 476
  store i32 %10, ptr %i.l, align 4, !tbaa !622
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 %11, ptr %i.m, align 8, !tbaa !623
  %i.n = icmp slt i32 %9, 17
  br i1 %i.n, label %bb.k, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv21resizeGeneric_InvokerINS_13HResizeLinearIhisLi2048ENS_12HResizeNoVecEEENS_13VResizeLinearIhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEEEC2ERKNS_3MatERSA_PKiSF_PKsSH_RKNS_5Size_IiEESL_iii, ptr noundef nonnull @.str.1, i32 noundef 2191) #23
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %12, align 8, !tbaa !8     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.v = load i64, ptr %i.t, align 8, !tbaa !14
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #22
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %bb.e ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.l ], [ %i.o, %bb.d ]
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv21resizeGeneric_InvokerINS_12HResizeCubicIsffEENS_12VResizeCubicIsffNS_4CastIfsEENS_12VResizeNoVecEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(484) dereferenceable(484) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv21resizeGeneric_InvokerINS_12HResizeCubicIsffEENS_12VResizeCubicIsffNS_4CastIfsEENS_12VResizeNoVecEEEEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
end_hunk_1
begin_hunk_2_@_ZNK2cv21resizeGeneric_InvokerINS_12HResizeCubicIsffEENS_12VResizeCubicIsffNS_4CastIfsEENS_12VResizeNoVecEEEEclERKNS_5RangeE:bb.a
  %i.ep = call float @llvm.fmuladd.f32(float %i.eo, float %i.dz, float %i.em)
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.er = load float, ptr %i.eq, align 4, !tbaa !70
  %i.es = call float @llvm.fmuladd.f32(float %i.er, float %i.eb, float %i.ep)
  %i.et = insertelement <4 x float> poison, float %i.es, i64 0
  %i.eu = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.et)
  %i.ev = call i32 @llvm.smax.i32(i32 %i.eu, i32 -32768)
  %i.ew = call i32 @llvm.smin.i32(i32 %i.ev, i32 32767)
  %i.ex = trunc nsw i32 %i.ew to i16
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %indvars.iv.i
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !71
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2cv12VResizeCubicIsffNS_4CastIfsEENS_12VResizeNoVecEEclEPPKfPsS6_i.exit, label %.lr.ph.i, !llvm.loop !632

_ZNK2cv12VResizeCubicIsffNS_4CastIfsEENS_12VResizeNoVecEEclEPPKfPsS6_i.exit: ; preds = %.lr.ph.i, %._crit_edge73.thread
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.ez = load i32, ptr %i.o, align 8, !tbaa !621 ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %.02576, i64 %i.fa
  %i.fc = load i32, ptr %i.ai, align 4, !tbaa !36
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp slt i64 %indvars.iv.next93, %i.fd
  br i1 %i.fe, label %bb.e, label %._crit_edge80.loopexit, !llvm.loop !633

._crit_edge80.loopexit:                           ; preds = %_ZNK2cv12VResizeCubicIsffNS_4CastIfsEENS_12VResizeNoVecEEclEPPKfPsS6_i.exit
  %.pre97 = load ptr, ptr %3, align 8, !tbaa !449
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %._crit_edge80.loopexit, %._crit_edge
  %i.ff = phi ptr [ %.pre97, %._crit_edge80.loopexit ], [ %i.y, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i.i36 = icmp eq ptr %i.ff, %i.s
  %i.fg = icmp eq ptr %i.ff, null
  %or.cond.i37 = or i1 %.not.i.i36, %i.fg
  br i1 %or.cond.i37, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit38, label %bb.l

bb.l:                                             ; preds = %._crit_edge80
  call void @_ZdaPv(ptr noundef nonnull %i.ff) #24
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit38

_ZN2cv10AutoBufferIfLm264EED2Ev.exit38:           ; preds = %._crit_edge80, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv12HResizeCubicIsffEclEPPKsPPfiPKiPKfiiiii(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %bb.a
  %i.b = shl nsw i32 %8, 1
  %i.c = shl nsw i32 %7, 2
  %i.d = sext i32 %i.c to i64
  %i.e = sub nsw i64 0, %i.d
  %umax = tail call i32 @llvm.umax.i32(i32 %8, i32 1) ; 4 uses
  %i.f = sext i32 %10 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.g = shl i32 %8, 1
  %i.h = mul i32 %8, 3
  br label %bb.b

._crit_edge95:                                    ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph94, %bb.d
  %indvars.iv110 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next111, %bb.d ] ; 3 uses
  %.092 = phi ptr [ %5, %.lr.ph94 ], [ %i.dn, %bb.d ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv110
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !457  ; 8 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv110
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !452  ; 2 uses
  br label %bb.c

.loopexit80:                                      ; preds = %.lr.ph88, %.preheader79
  %.272.lcssa = phi i32 [ %.171.lcssa, %.preheader79 ], [ %10, %.lr.ph88 ]
  %.3.lcssa = phi ptr [ %.2.lcssa, %.preheader79 ], [ %i.dm, %.lr.ph88 ]
  br label %bb.c, !llvm.loop !634

bb.c:                                             ; preds = %.loopexit80, %bb.b
  %.070 = phi i32 [ 0, %bb.b ], [ %.272.lcssa, %.loopexit80 ] ; 3 uses
  %.069 = phi i32 [ %9, %bb.b ], [ %7, %.loopexit80 ] ; 4 uses
  %.1 = phi ptr [ %.092, %bb.b ], [ %.3.lcssa, %.loopexit80 ] ; 2 uses
  %i.m = icmp slt i32 %.070, %.069
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.n = zext nneg i32 %.070 to i64
  %i.o = zext nneg i32 %.069 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit.3
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit.3 ] ; 3 uses
  %.284 = phi ptr [ %.1, %.lr.ph.preheader ], [ %i.cb, %.loopexit.3 ] ; 5 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19   ; 10 uses
  %i.r = sub nsw i32 %i.q, %8                     ; 6 uses
  %.not = icmp ult i32 %i.r, %6
  br i1 %.not, label %.loopexit, label %.preheader78.preheader

.preheader78.preheader:                           ; preds = %.lr.ph
  %i.s = sub i32 %8, %i.q
  %smax = tail call i32 @llvm.smax.i32(i32 %i.r, i32 0)
  %i.t = add i32 %smax, %i.s                      ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  %umin = zext i1 %i.u to i32                     ; 2 uses
  %i.v = sub i32 %i.t, %umin
  %i.w = udiv i32 %i.v, %umax
  %i.x = add i32 %i.w, %umin
  %i.y = mul i32 %8, %i.x
  %i.z = add i32 %i.r, %i.y
  br label %.preheader

.preheader:                                       ; preds = %.preheader78.preheader, %.preheader
  %.165 = phi i32 [ %i.aa, %.preheader ], [ %i.z, %.preheader78.preheader ] ; 3 uses
  %.not77 = icmp slt i32 %.165, %6
  %i.aa = sub nsw i32 %.165, %8
  br i1 %.not77, label %.loopexit, label %.preheader, !llvm.loop !635

.loopexit:                                        ; preds = %.preheader, %.lr.ph
  %.266 = phi i32 [ %i.r, %.lr.ph ], [ %.165, %.preheader ]
  %i.ab = sext i32 %.266 to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !71
  %i.ae = sitofp i16 %i.ad to float
  %i.af = load float, ptr %.284, align 4, !tbaa !70
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.af, float 0.000000e+00)
  %.not.1 = icmp ult i32 %i.q, %6
  br i1 %.not.1, label %.loopexit.1, label %.preheader78.preheader.1

.preheader78.preheader.1:                         ; preds = %.loopexit
  %.lobit = lshr i32 %i.q, 31                     ; 2 uses
  %smax.1 = tail call i32 @llvm.smax.i32(i32 %i.q, i32 0)
  %i.ah = add i32 %i.q, %.lobit
  %i.ai = sub i32 %smax.1, %i.ah
  %i.aj = udiv i32 %i.ai, %umax
  %i.ak = add i32 %.lobit, %i.aj
  %i.al = mul i32 %8, %i.ak
  %i.am = add i32 %i.q, %i.al
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %.preheader78.preheader.1
  %.165.1 = phi i32 [ %i.an, %.preheader.1 ], [ %i.am, %.preheader78.preheader.1 ] ; 3 uses
  %.not77.1 = icmp slt i32 %.165.1, %6
  %i.an = sub nsw i32 %.165.1, %8
  br i1 %.not77.1, label %.loopexit.1, label %.preheader.1, !llvm.loop !635

.loopexit.1:                                      ; preds = %.preheader.1, %.loopexit
  %.266.1 = phi i32 [ %i.q, %.loopexit ], [ %.165.1, %.preheader.1 ]
  %i.ao = sext i32 %.266.1 to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !71
  %i.ar = sitofp i16 %i.aq to float
  %i.as = getelementptr inbounds nuw i8, ptr %.284, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !70
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.at, float %i.ag)
  %indvars.iv.next.1 = add i32 %i.q, %8           ; 4 uses
  %i.av = add i32 %i.q, %8                        ; 2 uses
  %i.aw = add nsw i32 %i.g, %i.r                  ; 2 uses
  %.not.2 = icmp ult i32 %i.aw, %6
  br i1 %.not.2, label %.loopexit.2, label %.preheader78.preheader.2

.preheader78.preheader.2:                         ; preds = %.loopexit.1
  %indvars.iv.next.1.lobit = lshr i32 %indvars.iv.next.1, 31 ; 2 uses
  %smax.2 = tail call i32 @llvm.smax.i32(i32 %indvars.iv.next.1, i32 0)
  %i.ax = add i32 %i.av, %indvars.iv.next.1.lobit
  %i.ay = sub i32 %smax.2, %i.ax
  %i.az = udiv i32 %i.ay, %umax
  %i.ba = add i32 %indvars.iv.next.1.lobit, %i.az
  %i.bb = mul i32 %8, %i.ba
  %i.bc = add i32 %indvars.iv.next.1, %i.bb
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2, %.preheader78.preheader.2
  %.165.2 = phi i32 [ %i.bd, %.preheader.2 ], [ %i.bc, %.preheader78.preheader.2 ] ; 3 uses
  %.not77.2 = icmp slt i32 %.165.2, %6
  %i.bd = sub nsw i32 %.165.2, %8
  br i1 %.not77.2, label %.loopexit.2, label %.preheader.2, !llvm.loop !635

.loopexit.2:                                      ; preds = %.preheader.2, %.loopexit.1
  %.266.2 = phi i32 [ %i.aw, %.loopexit.1 ], [ %.165.2, %.preheader.2 ]
  %i.be = sext i32 %.266.2 to i64
  %i.bf = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !71
  %i.bh = sitofp i16 %i.bg to float
  %i.bi = getelementptr inbounds nuw i8, ptr %.284, i64 8
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !70
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bj, float %i.au)
  %i.bl = add nsw i32 %i.h, %i.r                  ; 2 uses
  %.not.3 = icmp ult i32 %i.bl, %6
  br i1 %.not.3, label %.loopexit.3, label %.preheader78.preheader.3

.preheader78.preheader.3:                         ; preds = %.loopexit.2
  %indvars.iv.next.2 = add i32 %indvars.iv.next.1, %8 ; 3 uses
  %indvars.iv.next.2.lobit = lshr i32 %indvars.iv.next.2, 31 ; 2 uses
  %smax.3 = tail call i32 @llvm.smax.i32(i32 %indvars.iv.next.2, i32 0)
  %11 = add i32 %i.av, %8
  %i.bm = add i32 %11, %indvars.iv.next.2.lobit
  %i.bn = sub i32 %smax.3, %i.bm
  %i.bo = udiv i32 %i.bn, %umax
  %i.bp = add i32 %indvars.iv.next.2.lobit, %i.bo
  %i.bq = mul i32 %8, %i.bp
  %i.br = add i32 %indvars.iv.next.2, %i.bq
  br label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.3, %.preheader78.preheader.3
  %.165.3 = phi i32 [ %i.bs, %.preheader.3 ], [ %i.br, %.preheader78.preheader.3 ] ; 3 uses
  %.not77.3 = icmp slt i32 %.165.3, %6
  %i.bs = sub nsw i32 %.165.3, %8
  br i1 %.not77.3, label %.loopexit.3, label %.preheader.3, !llvm.loop !635

.loopexit.3:                                      ; preds = %.preheader.3, %.loopexit.2
  %.266.3 = phi i32 [ %i.bl, %.loopexit.2 ], [ %.165.3, %.preheader.3 ]
  %i.bt = sext i32 %.266.3 to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !71
  %i.bw = sitofp i16 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %.284, i64 12
  %i.by = load float, ptr %i.bx, align 4, !tbaa !70
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.by, float %i.bk)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  store float %i.bz, ptr %i.ca, align 4, !tbaa !70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.284, i64 16 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !636

._crit_edge:                                      ; preds = %.loopexit.3, %bb.c
  %.171.lcssa = phi i32 [ %.070, %bb.c ], [ %.069, %.loopexit.3 ] ; 3 uses
  %.2.lcssa = phi ptr [ %.1, %bb.c ], [ %i.cb, %.loopexit.3 ] ; 3 uses
  %i.cc = icmp eq i32 %.069, %7
  br i1 %i.cc, label %bb.d, label %.preheader79

.preheader79:                                     ; preds = %._crit_edge
  %i.cd = icmp slt i32 %.171.lcssa, %10
  br i1 %i.cd, label %.lr.ph88.preheader, label %.loopexit80

.lr.ph88.preheader:                               ; preds = %.preheader79
  %i.ce = zext nneg i32 %.171.lcssa to i64
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %.lr.ph88
  %indvars.iv106 = phi i64 [ %i.ce, %.lr.ph88.preheader ], [ %indvars.iv.next107, %.lr.ph88 ] ; 3 uses
  %.387 = phi ptr [ %.2.lcssa, %.lr.ph88.preheader ], [ %i.dm, %.lr.ph88 ] ; 5 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv106
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !19 ; 4 uses
  %i.ch = sub nsw i32 %i.cg, %8
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !71
  %i.cl = sitofp i16 %i.ck to float
  %i.cm = load float, ptr %.387, align 4, !tbaa !70
  %i.cn = sext i32 %i.cg to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !71
  %i.cq = sitofp i16 %i.cp to float
  %i.cr = getelementptr inbounds nuw i8, ptr %.387, i64 4
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !70
  %i.ct = fmul float %i.cs, %i.cq
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cm, float %i.ct)
  %i.cv = add nsw i32 %i.cg, %8
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !71
  %i.cz = sitofp i16 %i.cy to float
  %i.da = getelementptr inbounds nuw i8, ptr %.387, i64 8
  %i.db = load float, ptr %i.da, align 4, !tbaa !70
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.db, float %i.cu)
  %i.dd = add nsw i32 %i.cg, %i.b
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !71
  %i.dh = sitofp i16 %i.dg to float
  %i.di = getelementptr inbounds nuw i8, ptr %.387, i64 12
  %i.dj = load float, ptr %i.di, align 4, !tbaa !70
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.dj, float %i.dc)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv106
  store float %i.dk, ptr %i.dl, align 4, !tbaa !70
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.387, i64 16 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next107, %i.f
  br i1 %exitcond109.not, label %.loopexit80, label %.lr.ph88, !llvm.loop !637

bb.d:                                             ; preds = %._crit_edge
  %i.dn = getelementptr inbounds [4 x i8], ptr %.2.lcssa, i64 %i.e
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond113.not, label %._crit_edge95, label %bb.b, !llvm.loop !638
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv21resizeGeneric_InvokerINS_12HResizeCubicIfffEENS_12VResizeCubicIfffNS_4CastIffEENS_12VResizeNoVecEEEEC2ERKNS_3MatERS9_PKiSE_PKfSG_RKNS_5Size_IiEESK_iii(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv21resizeGeneric_InvokerINS_12HResizeCubicIfffEENS_12VResizeCubicIfffNS_4CastIffEENS_12VResizeNoVecEEEEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %3, ptr %i.c, align 8, !tbaa !639
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %4, ptr %i.d, align 8, !tbaa !641
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %5, ptr %i.e, align 8, !tbaa !642
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %6, ptr %i.f, align 8, !tbaa !643
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = load i64, ptr %7, align 4
  store i64 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.j = load i64, ptr %8, align 4
  store i64 %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 %9, ptr %i.k, align 8, !tbaa !644
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 476
  store i32 %10, ptr %i.l, align 4, !tbaa !645
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 %11, ptr %i.m, align 8, !tbaa !646
  %i.n = icmp slt i32 %9, 17
  br i1 %i.n, label %bb.k, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv21resizeGeneric_InvokerINS_13HResizeLinearIhisLi2048ENS_12HResizeNoVecEEENS_13VResizeLinearIhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEEEC2ERKNS_3MatERSA_PKiSF_PKsSH_RKNS_5Size_IiEESL_iii, ptr noundef nonnull @.str.1, i32 noundef 2191) #23
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %12, align 8, !tbaa !8     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.v = load i64, ptr %i.t, align 8, !tbaa !14
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #22
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %bb.e ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.l ], [ %i.o, %bb.d ]
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv21resizeGeneric_InvokerINS_12HResizeCubicIfffEENS_12VResizeCubicIfffNS_4CastIffEENS_12VResizeNoVecEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(484) dereferenceable(484) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv21resizeGeneric_InvokerINS_12HResizeCubicIfffEENS_12VResizeCubicIfffNS_4CastIffEENS_12VResizeNoVecEEEEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
end_hunk_2
begin_hunk_3_@_ZNK2cv21resizeGeneric_InvokerINS_12HResizeCubicIfffEENS_12VResizeCubicIfffNS_4CastIffEENS_12VResizeNoVecEEEEclERKNS_5RangeE:bb.a
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.i
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !70
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !70
  %i.fg = fmul float %i.dy, %i.ff
  %i.fh = call float @llvm.fmuladd.f32(float %i.fd, float %i.dw, float %i.fg)
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.i
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !70
  %i.fk = call float @llvm.fmuladd.f32(float %i.fj, float %i.ea, float %i.fh)
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.i
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !70
  %i.fn = call float @llvm.fmuladd.f32(float %i.fm, float %i.ec, float %i.fk)
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i
  store float %i.fn, ptr %i.fo, align 4, !tbaa !70
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2cv12VResizeCubicIfffNS_4CastIffEENS_12VResizeNoVecEEclEPPKfPfS6_i.exit, label %.lr.ph.i, !llvm.loop !656

_ZNK2cv12VResizeCubicIfffNS_4CastIffEENS_12VResizeNoVecEEclEPPKfPfS6_i.exit: ; preds = %.lr.ph.i, %middle.block, %._crit_edge73.thread
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.fp = load i32, ptr %i.o, align 8, !tbaa !644 ; 2 uses
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %.02576, i64 %i.fq
  %i.fs = load i32, ptr %i.ai, align 4, !tbaa !36
  %i.ft = sext i32 %i.fs to i64
  %i.fu = icmp slt i64 %indvars.iv.next93, %i.ft
  br i1 %i.fu, label %bb.e, label %._crit_edge80.loopexit, !llvm.loop !657

._crit_edge80.loopexit:                           ; preds = %_ZNK2cv12VResizeCubicIfffNS_4CastIffEENS_12VResizeNoVecEEclEPPKfPfS6_i.exit
  %.pre97 = load ptr, ptr %3, align 8, !tbaa !449
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %._crit_edge80.loopexit, %._crit_edge
  %i.fv = phi ptr [ %.pre97, %._crit_edge80.loopexit ], [ %i.y, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i.i36 = icmp eq ptr %i.fv, %i.s
  %i.fw = icmp eq ptr %i.fv, null
  %or.cond.i37 = or i1 %.not.i.i36, %i.fw
  br i1 %or.cond.i37, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit38, label %bb.l

bb.l:                                             ; preds = %._crit_edge80
  call void @_ZdaPv(ptr noundef nonnull %i.fv) #24
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit38

_ZN2cv10AutoBufferIfLm264EED2Ev.exit38:           ; preds = %._crit_edge80, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv12HResizeCubicIfffEclEPPKfPPfiPKiS3_iiiii(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %bb.a
  %i.b = shl nsw i32 %8, 1
  %i.c = shl nsw i32 %7, 2
  %i.d = sext i32 %i.c to i64
  %i.e = sub nsw i64 0, %i.d
  %umax = tail call i32 @llvm.umax.i32(i32 %8, i32 1) ; 4 uses
  %i.f = sext i32 %10 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.g = shl i32 %8, 1
  %i.h = mul i32 %8, 3
  br label %bb.b

._crit_edge95:                                    ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph94, %bb.d
  %indvars.iv110 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next111, %bb.d ] ; 3 uses
  %.092 = phi ptr [ %5, %.lr.ph94 ], [ %i.df, %bb.d ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv110
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !452  ; 8 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv110
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !452  ; 2 uses
  br label %bb.c

.loopexit80:                                      ; preds = %.lr.ph88, %.preheader79
  %.272.lcssa = phi i32 [ %.171.lcssa, %.preheader79 ], [ %10, %.lr.ph88 ]
  %.3.lcssa = phi ptr [ %.2.lcssa, %.preheader79 ], [ %i.de, %.lr.ph88 ]
  br label %bb.c, !llvm.loop !658

bb.c:                                             ; preds = %.loopexit80, %bb.b
  %.070 = phi i32 [ 0, %bb.b ], [ %.272.lcssa, %.loopexit80 ] ; 3 uses
  %.069 = phi i32 [ %9, %bb.b ], [ %7, %.loopexit80 ] ; 4 uses
  %.1 = phi ptr [ %.092, %bb.b ], [ %.3.lcssa, %.loopexit80 ] ; 2 uses
  %i.m = icmp slt i32 %.070, %.069
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.n = zext nneg i32 %.070 to i64
  %i.o = zext nneg i32 %.069 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit.3
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit.3 ] ; 3 uses
  %.284 = phi ptr [ %.1, %.lr.ph.preheader ], [ %i.bx, %.loopexit.3 ] ; 5 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19   ; 10 uses
  %i.r = sub nsw i32 %i.q, %8                     ; 6 uses
  %.not = icmp ult i32 %i.r, %6
  br i1 %.not, label %.loopexit, label %.preheader78.preheader

.preheader78.preheader:                           ; preds = %.lr.ph
  %i.s = sub i32 %8, %i.q
  %smax = tail call i32 @llvm.smax.i32(i32 %i.r, i32 0)
  %i.t = add i32 %smax, %i.s                      ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  %umin = zext i1 %i.u to i32                     ; 2 uses
  %i.v = sub i32 %i.t, %umin
  %i.w = udiv i32 %i.v, %umax
  %i.x = add i32 %i.w, %umin
  %i.y = mul i32 %8, %i.x
  %i.z = add i32 %i.r, %i.y
  br label %.preheader

.preheader:                                       ; preds = %.preheader78.preheader, %.preheader
  %.165 = phi i32 [ %i.aa, %.preheader ], [ %i.z, %.preheader78.preheader ] ; 3 uses
  %.not77 = icmp slt i32 %.165, %6
  %i.aa = sub nsw i32 %.165, %8
  br i1 %.not77, label %.loopexit, label %.preheader, !llvm.loop !659

.loopexit:                                        ; preds = %.preheader, %.lr.ph
  %.266 = phi i32 [ %i.r, %.lr.ph ], [ %.165, %.preheader ]
  %i.ab = sext i32 %.266 to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !70
  %i.ae = load float, ptr %.284, align 4, !tbaa !70
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ae, float 0.000000e+00)
  %.not.1 = icmp ult i32 %i.q, %6
  br i1 %.not.1, label %.loopexit.1, label %.preheader78.preheader.1

.preheader78.preheader.1:                         ; preds = %.loopexit
  %.lobit = lshr i32 %i.q, 31                     ; 2 uses
  %smax.1 = tail call i32 @llvm.smax.i32(i32 %i.q, i32 0)
  %i.ag = add i32 %i.q, %.lobit
  %i.ah = sub i32 %smax.1, %i.ag
  %i.ai = udiv i32 %i.ah, %umax
  %i.aj = add i32 %.lobit, %i.ai
  %i.ak = mul i32 %8, %i.aj
  %i.al = add i32 %i.q, %i.ak
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %.preheader78.preheader.1
  %.165.1 = phi i32 [ %i.am, %.preheader.1 ], [ %i.al, %.preheader78.preheader.1 ] ; 3 uses
  %.not77.1 = icmp slt i32 %.165.1, %6
  %i.am = sub nsw i32 %.165.1, %8
  br i1 %.not77.1, label %.loopexit.1, label %.preheader.1, !llvm.loop !659

.loopexit.1:                                      ; preds = %.preheader.1, %.loopexit
  %.266.1 = phi i32 [ %i.q, %.loopexit ], [ %.165.1, %.preheader.1 ]
  %i.an = sext i32 %.266.1 to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !70
  %i.aq = getelementptr inbounds nuw i8, ptr %.284, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !70
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ar, float %i.af)
  %indvars.iv.next.1 = add i32 %i.q, %8           ; 4 uses
  %i.at = add i32 %i.q, %8                        ; 2 uses
  %i.au = add nsw i32 %i.g, %i.r                  ; 2 uses
  %.not.2 = icmp ult i32 %i.au, %6
  br i1 %.not.2, label %.loopexit.2, label %.preheader78.preheader.2

.preheader78.preheader.2:                         ; preds = %.loopexit.1
  %indvars.iv.next.1.lobit = lshr i32 %indvars.iv.next.1, 31 ; 2 uses
  %smax.2 = tail call i32 @llvm.smax.i32(i32 %indvars.iv.next.1, i32 0)
  %i.av = add i32 %i.at, %indvars.iv.next.1.lobit
  %i.aw = sub i32 %smax.2, %i.av
  %i.ax = udiv i32 %i.aw, %umax
  %i.ay = add i32 %indvars.iv.next.1.lobit, %i.ax
  %i.az = mul i32 %8, %i.ay
  %i.ba = add i32 %indvars.iv.next.1, %i.az
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2, %.preheader78.preheader.2
  %.165.2 = phi i32 [ %i.bb, %.preheader.2 ], [ %i.ba, %.preheader78.preheader.2 ] ; 3 uses
  %.not77.2 = icmp slt i32 %.165.2, %6
  %i.bb = sub nsw i32 %.165.2, %8
  br i1 %.not77.2, label %.loopexit.2, label %.preheader.2, !llvm.loop !659

.loopexit.2:                                      ; preds = %.preheader.2, %.loopexit.1
  %.266.2 = phi i32 [ %i.au, %.loopexit.1 ], [ %.165.2, %.preheader.2 ]
  %i.bc = sext i32 %.266.2 to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !70
  %i.bf = getelementptr inbounds nuw i8, ptr %.284, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !70
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bg, float %i.as)
  %i.bi = add nsw i32 %i.h, %i.r                  ; 2 uses
  %.not.3 = icmp ult i32 %i.bi, %6
  br i1 %.not.3, label %.loopexit.3, label %.preheader78.preheader.3

.preheader78.preheader.3:                         ; preds = %.loopexit.2
  %indvars.iv.next.2 = add i32 %indvars.iv.next.1, %8 ; 3 uses
  %indvars.iv.next.2.lobit = lshr i32 %indvars.iv.next.2, 31 ; 2 uses
  %smax.3 = tail call i32 @llvm.smax.i32(i32 %indvars.iv.next.2, i32 0)
  %11 = add i32 %i.at, %8
  %i.bj = add i32 %11, %indvars.iv.next.2.lobit
  %i.bk = sub i32 %smax.3, %i.bj
  %i.bl = udiv i32 %i.bk, %umax
  %i.bm = add i32 %indvars.iv.next.2.lobit, %i.bl
  %i.bn = mul i32 %8, %i.bm
  %i.bo = add i32 %indvars.iv.next.2, %i.bn
  br label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.3, %.preheader78.preheader.3
  %.165.3 = phi i32 [ %i.bp, %.preheader.3 ], [ %i.bo, %.preheader78.preheader.3 ] ; 3 uses
  %.not77.3 = icmp slt i32 %.165.3, %6
  %i.bp = sub nsw i32 %.165.3, %8
  br i1 %.not77.3, label %.loopexit.3, label %.preheader.3, !llvm.loop !659

.loopexit.3:                                      ; preds = %.preheader.3, %.loopexit.2
  %.266.3 = phi i32 [ %i.bi, %.loopexit.2 ], [ %.165.3, %.preheader.3 ]
  %i.bq = sext i32 %.266.3 to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !70
  %i.bt = getelementptr inbounds nuw i8, ptr %.284, i64 12
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !70
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bu, float %i.bh)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  store float %i.bv, ptr %i.bw, align 4, !tbaa !70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.284, i64 16 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !660

._crit_edge:                                      ; preds = %.loopexit.3, %bb.c
  %.171.lcssa = phi i32 [ %.070, %bb.c ], [ %.069, %.loopexit.3 ] ; 3 uses
  %.2.lcssa = phi ptr [ %.1, %bb.c ], [ %i.bx, %.loopexit.3 ] ; 3 uses
  %i.by = icmp eq i32 %.069, %7
  br i1 %i.by, label %bb.d, label %.preheader79

.preheader79:                                     ; preds = %._crit_edge
  %i.bz = icmp slt i32 %.171.lcssa, %10
  br i1 %i.bz, label %.lr.ph88.preheader, label %.loopexit80

.lr.ph88.preheader:                               ; preds = %.preheader79
  %i.ca = zext nneg i32 %.171.lcssa to i64
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %.lr.ph88
  %indvars.iv106 = phi i64 [ %i.ca, %.lr.ph88.preheader ], [ %indvars.iv.next107, %.lr.ph88 ] ; 3 uses
  %.387 = phi ptr [ %.2.lcssa, %.lr.ph88.preheader ], [ %i.de, %.lr.ph88 ] ; 5 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv106
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !19 ; 4 uses
  %i.cd = sub nsw i32 %i.cc, %8
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !70
  %i.ch = load float, ptr %.387, align 4, !tbaa !70
  %i.ci = sext i32 %i.cc to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !70
  %i.cl = getelementptr inbounds nuw i8, ptr %.387, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !70
  %i.cn = fmul float %i.ck, %i.cm
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.ch, float %i.cn)
  %i.cp = add nsw i32 %i.cc, %8
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !70
  %i.ct = getelementptr inbounds nuw i8, ptr %.387, i64 8
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !70
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cu, float %i.co)
  %i.cw = add nsw i32 %i.cc, %i.b
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !70
  %i.da = getelementptr inbounds nuw i8, ptr %.387, i64 12
  %i.db = load float, ptr %i.da, align 4, !tbaa !70
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.db, float %i.cv)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv106
  store float %i.dc, ptr %i.dd, align 4, !tbaa !70
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.387, i64 16 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next107, %i.f
  br i1 %exitcond109.not, label %.loopexit80, label %.lr.ph88, !llvm.loop !661

bb.d:                                             ; preds = %._crit_edge
  %i.df = getelementptr inbounds [4 x i8], ptr %.2.lcssa, i64 %i.e
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond113.not, label %._crit_edge95, label %bb.b, !llvm.loop !662
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv21resizeGeneric_InvokerINS_12HResizeCubicIddfEENS_12VResizeCubicIddfNS_4CastIddEENS_12VResizeNoVecEEEEC2ERKNS_3MatERS9_PKiSE_PKfSG_RKNS_5Size_IiEESK_iii(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv21resizeGeneric_InvokerINS_12HResizeCubicIddfEENS_12VResizeCubicIddfNS_4CastIddEENS_12VResizeNoVecEEEEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %3, ptr %i.c, align 8, !tbaa !663
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %4, ptr %i.d, align 8, !tbaa !665
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %5, ptr %i.e, align 8, !tbaa !666
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %6, ptr %i.f, align 8, !tbaa !667
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = load i64, ptr %7, align 4
  store i64 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.j = load i64, ptr %8, align 4
  store i64 %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 %9, ptr %i.k, align 8, !tbaa !668
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 476
  store i32 %10, ptr %i.l, align 4, !tbaa !669
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 %11, ptr %i.m, align 8, !tbaa !670
  %i.n = icmp slt i32 %9, 17
  br i1 %i.n, label %bb.k, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv21resizeGeneric_InvokerINS_13HResizeLinearIhisLi2048ENS_12HResizeNoVecEEENS_13VResizeLinearIhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEEEC2ERKNS_3MatERSA_PKiSF_PKsSH_RKNS_5Size_IiEESL_iii, ptr noundef nonnull @.str.1, i32 noundef 2191) #23
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %12, align 8, !tbaa !8     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.v = load i64, ptr %i.t, align 8, !tbaa !14
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #22
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %bb.e ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.l ], [ %i.o, %bb.d ]
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv21resizeGeneric_InvokerINS_12HResizeCubicIddfEENS_12VResizeCubicIddfNS_4CastIddEENS_12VResizeNoVecEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(484) dereferenceable(484) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv21resizeGeneric_InvokerINS_12HResizeCubicIddfEENS_12VResizeCubicIddfNS_4CastIddEENS_12VResizeNoVecEEEEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #22
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  ret void
end_hunk_3
begin_hunk_4_@_ZNK2cv21resizeGeneric_InvokerINS_12HResizeCubicIddfEENS_12VResizeCubicIddfNS_4CastIddEENS_12VResizeNoVecEEEEclERKNS_5RangeE:bb.a
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !545
  %i.fk = fmul double %i.fj, %i.ea
  %i.fl = call double @llvm.fmuladd.f64(double %i.fh, double %i.dx, double %i.fk)
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.i
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !545
  %i.fo = call double @llvm.fmuladd.f64(double %i.fn, double %i.ed, double %i.fl)
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !545
  %i.fr = call double @llvm.fmuladd.f64(double %i.fq, double %i.eg, double %i.fo)
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.i
  store double %i.fr, ptr %i.fs, align 8, !tbaa !545
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2cv12VResizeCubicIddfNS_4CastIddEENS_12VResizeNoVecEEclEPPKdPdPKfi.exit, label %.lr.ph.i, !llvm.loop !680

_ZNK2cv12VResizeCubicIddfNS_4CastIddEENS_12VResizeNoVecEEclEPPKdPdPKfi.exit: ; preds = %.lr.ph.i, %middle.block, %._crit_edge73.thread
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.ft = load i32, ptr %i.o, align 8, !tbaa !668 ; 2 uses
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %.02576, i64 %i.fu
  %i.fw = load i32, ptr %i.ai, align 4, !tbaa !36
  %i.fx = sext i32 %i.fw to i64
  %i.fy = icmp slt i64 %indvars.iv.next93, %i.fx
  br i1 %i.fy, label %bb.e, label %._crit_edge80.loopexit, !llvm.loop !681

._crit_edge80.loopexit:                           ; preds = %_ZNK2cv12VResizeCubicIddfNS_4CastIddEENS_12VResizeNoVecEEclEPPKdPdPKfi.exit
  %.pre97 = load ptr, ptr %3, align 8, !tbaa !533
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %._crit_edge80.loopexit, %._crit_edge
  %i.fz = phi ptr [ %.pre97, %._crit_edge80.loopexit ], [ %i.y, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i.i36 = icmp eq ptr %i.fz, %i.s
  %i.ga = icmp eq ptr %i.fz, null
  %or.cond.i37 = or i1 %.not.i.i36, %i.ga
  br i1 %or.cond.i37, label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit38, label %bb.l

bb.l:                                             ; preds = %._crit_edge80
  call void @_ZdaPv(ptr noundef nonnull %i.fz) #24
  br label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit38

_ZN2cv10AutoBufferIdLm136EED2Ev.exit38:           ; preds = %._crit_edge80, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv12HResizeCubicIddfEclEPPKdPPdiPKiPKfiiiii(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %bb.a
  %i.b = shl nsw i32 %8, 1
  %i.c = shl nsw i32 %7, 2
  %i.d = sext i32 %i.c to i64
  %i.e = sub nsw i64 0, %i.d
  %umax = tail call i32 @llvm.umax.i32(i32 %8, i32 1) ; 4 uses
  %i.f = sext i32 %10 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.g = shl i32 %8, 1
  %i.h = mul i32 %8, 3
  br label %bb.b

._crit_edge95:                                    ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph94, %bb.d
  %indvars.iv110 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next111, %bb.d ] ; 3 uses
  %.092 = phi ptr [ %5, %.lr.ph94 ], [ %i.di, %bb.d ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv110
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !537  ; 8 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv110
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !537  ; 2 uses
  br label %bb.c

.loopexit80:                                      ; preds = %.lr.ph88, %.preheader79
  %.272.lcssa = phi i32 [ %.171.lcssa, %.preheader79 ], [ %10, %.lr.ph88 ]
  %.3.lcssa = phi ptr [ %.2.lcssa, %.preheader79 ], [ %i.dh, %.lr.ph88 ]
  br label %bb.c, !llvm.loop !682

bb.c:                                             ; preds = %.loopexit80, %bb.b
  %.070 = phi i32 [ 0, %bb.b ], [ %.272.lcssa, %.loopexit80 ] ; 3 uses
  %.069 = phi i32 [ %9, %bb.b ], [ %7, %.loopexit80 ] ; 4 uses
  %.1 = phi ptr [ %.092, %bb.b ], [ %.3.lcssa, %.loopexit80 ] ; 2 uses
  %i.m = icmp slt i32 %.070, %.069
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.n = zext nneg i32 %.070 to i64
  %i.o = zext nneg i32 %.069 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit.3
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit.3 ] ; 3 uses
  %.284 = phi ptr [ %.1, %.lr.ph.preheader ], [ %i.cb, %.loopexit.3 ] ; 5 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19   ; 10 uses
  %i.r = sub nsw i32 %i.q, %8                     ; 6 uses
  %.not = icmp ult i32 %i.r, %6
  br i1 %.not, label %.loopexit, label %.preheader78.preheader

.preheader78.preheader:                           ; preds = %.lr.ph
  %i.s = sub i32 %8, %i.q
  %smax = tail call i32 @llvm.smax.i32(i32 %i.r, i32 0)
  %i.t = add i32 %smax, %i.s                      ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  %umin = zext i1 %i.u to i32                     ; 2 uses
  %i.v = sub i32 %i.t, %umin
  %i.w = udiv i32 %i.v, %umax
  %i.x = add i32 %i.w, %umin
  %i.y = mul i32 %8, %i.x
  %i.z = add i32 %i.r, %i.y
  br label %.preheader

.preheader:                                       ; preds = %.preheader78.preheader, %.preheader
  %.165 = phi i32 [ %i.aa, %.preheader ], [ %i.z, %.preheader78.preheader ] ; 3 uses
  %.not77 = icmp slt i32 %.165, %6
  %i.aa = sub nsw i32 %.165, %8
  br i1 %.not77, label %.loopexit, label %.preheader, !llvm.loop !683

.loopexit:                                        ; preds = %.preheader, %.lr.ph
  %.266 = phi i32 [ %i.r, %.lr.ph ], [ %.165, %.preheader ]
  %i.ab = sext i32 %.266 to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !545
  %i.ae = load float, ptr %.284, align 4, !tbaa !70
  %i.af = fpext float %i.ae to double
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.af, double 0.000000e+00)
  %.not.1 = icmp ult i32 %i.q, %6
  br i1 %.not.1, label %.loopexit.1, label %.preheader78.preheader.1

.preheader78.preheader.1:                         ; preds = %.loopexit
  %.lobit = lshr i32 %i.q, 31                     ; 2 uses
  %smax.1 = tail call i32 @llvm.smax.i32(i32 %i.q, i32 0)
  %i.ah = add i32 %i.q, %.lobit
  %i.ai = sub i32 %smax.1, %i.ah
  %i.aj = udiv i32 %i.ai, %umax
  %i.ak = add i32 %.lobit, %i.aj
  %i.al = mul i32 %8, %i.ak
  %i.am = add i32 %i.q, %i.al
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %.preheader78.preheader.1
  %.165.1 = phi i32 [ %i.an, %.preheader.1 ], [ %i.am, %.preheader78.preheader.1 ] ; 3 uses
  %.not77.1 = icmp slt i32 %.165.1, %6
  %i.an = sub nsw i32 %.165.1, %8
  br i1 %.not77.1, label %.loopexit.1, label %.preheader.1, !llvm.loop !683

.loopexit.1:                                      ; preds = %.preheader.1, %.loopexit
  %.266.1 = phi i32 [ %i.q, %.loopexit ], [ %.165.1, %.preheader.1 ]
  %i.ao = sext i32 %.266.1 to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !545
  %i.ar = getelementptr inbounds nuw i8, ptr %.284, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !70
  %i.at = fpext float %i.as to double
  %i.au = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.at, double %i.ag)
  %indvars.iv.next.1 = add i32 %i.q, %8           ; 4 uses
  %i.av = add i32 %i.q, %8                        ; 2 uses
  %i.aw = add nsw i32 %i.g, %i.r                  ; 2 uses
  %.not.2 = icmp ult i32 %i.aw, %6
  br i1 %.not.2, label %.loopexit.2, label %.preheader78.preheader.2

.preheader78.preheader.2:                         ; preds = %.loopexit.1
  %indvars.iv.next.1.lobit = lshr i32 %indvars.iv.next.1, 31 ; 2 uses
  %smax.2 = tail call i32 @llvm.smax.i32(i32 %indvars.iv.next.1, i32 0)
  %i.ax = add i32 %i.av, %indvars.iv.next.1.lobit
  %i.ay = sub i32 %smax.2, %i.ax
  %i.az = udiv i32 %i.ay, %umax
  %i.ba = add i32 %indvars.iv.next.1.lobit, %i.az
  %i.bb = mul i32 %8, %i.ba
  %i.bc = add i32 %indvars.iv.next.1, %i.bb
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2, %.preheader78.preheader.2
  %.165.2 = phi i32 [ %i.bd, %.preheader.2 ], [ %i.bc, %.preheader78.preheader.2 ] ; 3 uses
  %.not77.2 = icmp slt i32 %.165.2, %6
  %i.bd = sub nsw i32 %.165.2, %8
  br i1 %.not77.2, label %.loopexit.2, label %.preheader.2, !llvm.loop !683

.loopexit.2:                                      ; preds = %.preheader.2, %.loopexit.1
  %.266.2 = phi i32 [ %i.aw, %.loopexit.1 ], [ %.165.2, %.preheader.2 ]
  %i.be = sext i32 %.266.2 to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !545
  %i.bh = getelementptr inbounds nuw i8, ptr %.284, i64 8
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !70
  %i.bj = fpext float %i.bi to double
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bj, double %i.au)
  %i.bl = add nsw i32 %i.h, %i.r                  ; 2 uses
  %.not.3 = icmp ult i32 %i.bl, %6
  br i1 %.not.3, label %.loopexit.3, label %.preheader78.preheader.3

.preheader78.preheader.3:                         ; preds = %.loopexit.2
  %indvars.iv.next.2 = add i32 %indvars.iv.next.1, %8 ; 3 uses
  %indvars.iv.next.2.lobit = lshr i32 %indvars.iv.next.2, 31 ; 2 uses
  %smax.3 = tail call i32 @llvm.smax.i32(i32 %indvars.iv.next.2, i32 0)
  %11 = add i32 %i.av, %8
  %i.bm = add i32 %11, %indvars.iv.next.2.lobit
  %i.bn = sub i32 %smax.3, %i.bm
  %i.bo = udiv i32 %i.bn, %umax
  %i.bp = add i32 %indvars.iv.next.2.lobit, %i.bo
  %i.bq = mul i32 %8, %i.bp
  %i.br = add i32 %indvars.iv.next.2, %i.bq
  br label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.3, %.preheader78.preheader.3
  %.165.3 = phi i32 [ %i.bs, %.preheader.3 ], [ %i.br, %.preheader78.preheader.3 ] ; 3 uses
  %.not77.3 = icmp slt i32 %.165.3, %6
  %i.bs = sub nsw i32 %.165.3, %8
  br i1 %.not77.3, label %.loopexit.3, label %.preheader.3, !llvm.loop !683

.loopexit.3:                                      ; preds = %.preheader.3, %.loopexit.2
  %.266.3 = phi i32 [ %i.bl, %.loopexit.2 ], [ %.165.3, %.preheader.3 ]
  %i.bt = sext i32 %.266.3 to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !545
  %i.bw = getelementptr inbounds nuw i8, ptr %.284, i64 12
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !70
  %i.by = fpext float %i.bx to double
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.by, double %i.bk)
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  store double %i.bz, ptr %i.ca, align 8, !tbaa !545
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.284, i64 16 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !684

._crit_edge:                                      ; preds = %.loopexit.3, %bb.c
  %.171.lcssa = phi i32 [ %.070, %bb.c ], [ %.069, %.loopexit.3 ] ; 3 uses
  %.2.lcssa = phi ptr [ %.1, %bb.c ], [ %i.cb, %.loopexit.3 ] ; 3 uses
  %i.cc = icmp eq i32 %.069, %7
  br i1 %i.cc, label %bb.d, label %.preheader79

.preheader79:                                     ; preds = %._crit_edge
  %i.cd = icmp slt i32 %.171.lcssa, %10
  br i1 %i.cd, label %.lr.ph88.preheader, label %.loopexit80

.lr.ph88.preheader:                               ; preds = %.preheader79
  %i.ce = zext nneg i32 %.171.lcssa to i64
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %.lr.ph88
  %indvars.iv106 = phi i64 [ %i.ce, %.lr.ph88.preheader ], [ %indvars.iv.next107, %.lr.ph88 ] ; 3 uses
  %.387 = phi ptr [ %.2.lcssa, %.lr.ph88.preheader ], [ %i.dh, %.lr.ph88 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv106
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !19 ; 4 uses
  %i.ch = sub nsw i32 %i.cg, %8
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !545
  %i.cl = sext i32 %i.cg to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !545
  %i.co = add nsw i32 %i.cg, %8
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !545
  %i.cs = add nsw i32 %i.cg, %i.b
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !545
  %i.cw = load <4 x float>, ptr %.387, align 4, !tbaa !70
  %i.cx = fpext <4 x float> %i.cw to <4 x double> ; 4 uses
  %i.cy = extractelement <4 x double> %i.cx, i64 1
  %i.cz = fmul double %i.cn, %i.cy
  %i.da = extractelement <4 x double> %i.cx, i64 0
  %i.db = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.da, double %i.cz)
  %i.dc = extractelement <4 x double> %i.cx, i64 2
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.dc, double %i.db)
  %i.de = extractelement <4 x double> %i.cx, i64 3
  %i.df = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.de, double %i.dd)
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv106
  store double %i.df, ptr %i.dg, align 8, !tbaa !545
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.387, i64 16 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next107, %i.f
  br i1 %exitcond109.not, label %.loopexit80, label %.lr.ph88, !llvm.loop !685

bb.d:                                             ; preds = %._crit_edge
  %i.di = getelementptr inbounds [4 x i8], ptr %.2.lcssa, i64 %i.e
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond113.not, label %._crit_edge95, label %bb.b, !llvm.loop !686
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv21resizeGeneric_InvokerINS_15HResizeLanczos4IhisEENS_15VResizeLanczos4IhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEEEC2ERKNS_3MatERS9_PKiSE_PKsSG_RKNS_5Size_IiEESK_iii(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv21resizeGeneric_InvokerINS_15HResizeLanczos4IhisEENS_15VResizeLanczos4IhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEEEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %3, ptr %i.c, align 8, !tbaa !687
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %4, ptr %i.d, align 8, !tbaa !689
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %5, ptr %i.e, align 8, !tbaa !690
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %6, ptr %i.f, align 8, !tbaa !691
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = load i64, ptr %7, align 4
  store i64 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.j = load i64, ptr %8, align 4
  store i64 %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 %9, ptr %i.k, align 8, !tbaa !692
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 476
  store i32 %10, ptr %i.l, align 4, !tbaa !693
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 %11, ptr %i.m, align 8, !tbaa !694
  %i.n = icmp slt i32 %9, 17
  br i1 %i.n, label %bb.k, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv21resizeGeneric_InvokerINS_13HResizeLinearIhisLi2048ENS_12HResizeNoVecEEENS_13VResizeLinearIhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEEEC2ERKNS_3MatERSA_PKiSF_PKsSH_RKNS_5Size_IiEESL_iii, ptr noundef nonnull @.str.1, i32 noundef 2191) #23
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %12, align 8, !tbaa !8     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.v = load i64, ptr %i.t, align 8, !tbaa !14
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #22
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %bb.e ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.l ], [ %i.o, %bb.d ]
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv21resizeGeneric_InvokerINS_15HResizeLanczos4IhisEENS_15VResizeLanczos4IhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(484) dereferenceable(484) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv21resizeGeneric_InvokerINS_15HResizeLanczos4IhisEENS_15VResizeLanczos4IhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEEEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #22
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  ret void
end_hunk_4

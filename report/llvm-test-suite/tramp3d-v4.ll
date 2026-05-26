inline.NumInlined: 28162
inline.NumDeleted: 8422
begin_hunk_0_@_ZNK16ContiguousMapperILi3EE3mapERKSt6vectorIP4NodeI8IntervalILi3EES4_ESaIS6_EE:.preheader94

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = sitofp i32 %i.bx to double
  %i.bz = fdiv double %i.by, %i.bk
  %i.ca = fptosi double %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 60
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.07.121.i, i64 8 ; 2 uses
  %.not16.i = icmp eq ptr %i.cc, %i.bi
  br i1 %.not16.i, label %_ZNK13ContextMapperILi3EE11setAffinityERKSt6vectorIP4NodeI8IntervalILi3EES4_ESaIS6_EE.exit, label %bb.r, !llvm.loop !2295

_ZNK13ContextMapperILi3EE11setAffinityERKSt6vectorIP4NodeI8IntervalILi3EES4_ESaIS6_EE.exit: ; preds = %bb.t, %.thread166
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16ContiguousMapperILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK15BisectionMapperILi3EE3mapERKSt6vectorIP4NodeI8IntervalILi3EES4_ESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::list.253", align 8 ; 15 uses
  %3 = alloca %class.Interval.108, align 16       ; 10 uses
  %4 = alloca %class.Interval.108, align 16       ; 10 uses
  %i.a = load i32, ptr @_ZN5Pooma13numContexts_gE, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !2296
  store ptr %2, ptr %2, align 8, !tbaa !2281
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store i64 0, ptr %i.c, align 8, !tbaa !2297
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !236
  %i.h = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load <2 x i32>, ptr %i.d, align 8, !tbaa !236
  %i.k = shufflevector <2 x i32> %i.j, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %i.l = shufflevector <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>, <4 x i32> %i.k, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %i.l, ptr %i.i, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 0, ptr %i.m, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 %i.g, ptr %i.n, align 4, !tbaa !4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2) #48
  %i.o = load i64, ptr %i.c, align 8, !tbaa !2298 ; 2 uses
  %i.p = add i64 %i.o, 1                          ; 2 uses
  store i64 %i.p, ptr %i.c, align 8, !tbaa !2298
  %i.q = sext i32 %i.a to i64                     ; 2 uses
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %.preheader128.lr.ph, label %._crit_edge

.preheader128.lr.ph:                              ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 20
  br label %.preheader128

.preheader128:                                    ; preds = %.preheader128.lr.ph, %.preheader127
  %i.ac = phi i64 [ %i.o, %.preheader128.lr.ph ], [ %i.bs, %.preheader127 ]
  %.sroa.0110.0130 = load ptr, ptr %2, align 8, !tbaa !2281 ; 2 uses
  %.not122131 = icmp ne ptr %.sroa.0110.0130, %2
  call void @llvm.assume(i1 %.not122131)
  br label %.lr.ph

.preheader127:                                    ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4  ; 3 uses
  %spec.select120 = call i32 @llvm.smax.i32(i32 %i.ae, i32 0) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %spec.select, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4  ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, %spec.select120
  %spec.select119.1 = zext i1 %i.ah to i64
  %spec.select120.1 = call i32 @llvm.smax.i32(i32 %i.ag, i32 %spec.select120)
  %i.ai = getelementptr inbounds nuw i8, ptr %spec.select, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %spec.select, i64 36
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 3 uses
  %i.al = icmp sgt i32 %i.ak, %spec.select120.1
  %spec.select119.2 = select i1 %i.al, i64 2, i64 %spec.select119.1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  %i.am = load i32, ptr %i.ai, align 4, !tbaa !4  ; 2 uses
  store i32 %i.am, ptr %3, align 16, !tbaa !4
  store i32 %i.ae, ptr %i.s, align 4, !tbaa !4
  %i.an = getelementptr inbounds nuw i8, ptr %spec.select, i64 24
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4  ; 2 uses
  store i32 %i.ao, ptr %i.t, align 8, !tbaa !4
  store i32 %i.ag, ptr %i.u, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw i8, ptr %spec.select, i64 32
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4  ; 2 uses
  store i32 %i.aq, ptr %i.v, align 16, !tbaa !4
  store i32 %i.ak, ptr %i.w, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  store i32 %i.am, ptr %4, align 16, !tbaa !4
  store i32 %i.ae, ptr %i.x, align 4, !tbaa !4
  store i32 %i.ao, ptr %i.y, align 8, !tbaa !4
  store i32 %i.ag, ptr %i.z, align 4, !tbaa !4
  store i32 %i.aq, ptr %i.aa, align 16, !tbaa !4
  store i32 %i.ak, ptr %i.ab, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %spec.select119.2 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !4  ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4  ; 2 uses
  %i.av = add i32 %i.as, -1
  %i.aw = add i32 %i.av, %i.au                    ; 3 uses
  %i.ax = sub nsw i32 %i.aw, %i.as                ; 2 uses
  %i.ay = sdiv i32 %i.ax, 2                       ; 2 uses
  %i.az = add nsw i32 %i.ay, %i.as                ; 3 uses
  %.not71 = icmp slt i32 %i.ax, -1
  %i.ba = add nsw i32 %i.ay, 1
  %.sink = select i1 %.not71, i32 1, i32 %i.ba
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %spec.select119.2 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.as, ptr %i.bb, align 8, !tbaa !4
  store i32 %.sink, ptr %i.bc, align 4, !tbaa !4
  %.not72.not = icmp sgt i32 %i.aw, %i.az         ; 2 uses
  %i.bd = add nsw i32 %i.az, 1
  %.neg = xor i32 %i.az, -1
  %reass.sub.i75 = add i32 %i.as, %i.au
  %i.be = add i32 %reass.sub.i75, %.neg
  %storemerge124 = select i1 %.not72.not, i32 %i.bd, i32 %i.aw
  %storemerge123 = select i1 %.not72.not, i32 %i.be, i32 1
  store i32 %storemerge124, ptr %i.ar, align 8, !tbaa !4
  store i32 %storemerge123, ptr %i.at, align 4, !tbaa !4
  %i.bf = load ptr, ptr %spec.select, align 8, !tbaa !2281 ; 2 uses
  store i64 %i.ac, ptr %i.c, align 8, !tbaa !2298
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %spec.select) #48
  call void @_ZdlPvm(ptr noundef nonnull %spec.select, i64 noundef 40) #49
  %i.bg = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load <4 x i32>, ptr %4, align 16, !tbaa !4
  store <4 x i32> %i.bi, ptr %i.bh, align 4, !tbaa !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bk = load <2 x i32>, ptr %i.aa, align 16, !tbaa !4
  store <2 x i32> %i.bk, ptr %i.bj, align 4, !tbaa !4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef %i.bf) #48
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !2298
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.c, align 8, !tbaa !2298
  %i.bn = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load <4 x i32>, ptr %3, align 16, !tbaa !4
  store <4 x i32> %i.bp, ptr %i.bo, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load <2 x i32>, ptr %i.v, align 16, !tbaa !4
  store <2 x i32> %i.br, ptr %i.bq, align 4, !tbaa !4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef %i.bf) #48
  %i.bs = load i64, ptr %i.c, align 8, !tbaa !2298 ; 2 uses
  %i.bt = add i64 %i.bs, 1                        ; 2 uses
  store i64 %i.bt, ptr %i.c, align 8, !tbaa !2298
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  %i.bu = icmp ult i64 %i.bt, %i.q
  br i1 %i.bu, label %.preheader128, label %._crit_edge, !llvm.loop !2301

.lr.ph:                                           ; preds = %.preheader128, %.lr.ph
  %.sroa.0110.0134 = phi ptr [ %.sroa.0110.0, %.lr.ph ], [ %.sroa.0110.0130, %.preheader128 ] ; 5 uses
  %.067133 = phi i64 [ %spec.select118125, %.lr.ph ], [ 0, %.preheader128 ]
  %.sroa.0103.0132 = phi ptr [ %spec.select, %.lr.ph ], [ null, %.preheader128 ]
  %sext = shl i64 %.067133, 32
  %i.bv = ashr exact i64 %sext, 32                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0110.0134, i64 20
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0110.0134, i64 28
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i64 %i.cb, %i.by
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0110.0134, i64 36
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul nsw i64 %i.cc, %i.cf                ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, %i.bv
  %spec.select = select i1 %i.ch, ptr %.sroa.0110.0134, ptr %.sroa.0103.0132 ; 10 uses
  %spec.select118125 = call i64 @llvm.smax.i64(i64 %i.cg, i64 %i.bv)
  %.sroa.0110.0 = load ptr, ptr %.sroa.0110.0134, align 8, !tbaa !2281 ; 2 uses
  %.not122 = icmp eq ptr %.sroa.0110.0, %2
  br i1 %.not122, label %.preheader127, label %.lr.ph, !llvm.loop !2302

._crit_edge:                                      ; preds = %.preheader127, %bb.a
  %i.ci = load i32, ptr %i.d, align 8, !tbaa !236 ; 2 uses
  %i.cj = load i32, ptr %i.e, align 4, !tbaa !236
  %i.ck = mul nsw i32 %i.cj, %i.ci
  %i.cl = load ptr, ptr %2, align 8, !tbaa !2281  ; 3 uses
  %.not121145 = icmp eq ptr %i.cl, %2             ; 2 uses
  %.pre176 = load ptr, ptr %1, align 8            ; 2 uses
  br i1 %.not121145, label %._crit_edge150, label %.preheader126

.preheader126:                                    ; preds = %._crit_edge, %._crit_edge144
  %.058147 = phi i32 [ %i.do, %._crit_edge144 ], [ 0, %._crit_edge ] ; 2 uses
  %.sroa.077.0146 = phi ptr [ %i.dp, %._crit_edge144 ], [ %i.cl, %._crit_edge ] ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.077.0146, i64 16
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4  ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.077.0146, i64 20
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4
  %i.cq = add i32 %i.cn, -1
  %i.cr = add i32 %i.cq, %i.cp
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.077.0146, i64 24
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !4  ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.077.0146, i64 28
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.cw = add i32 %i.ct, -1
  %i.cx = add i32 %i.cw, %i.cv
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.077.0146, i64 32
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4  ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.077.0146, i64 36
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4
  %i.dc = add i32 %i.cz, -1
  %i.dd = add i32 %i.dc, %i.db                    ; 3 uses
  %.not143 = icmp sgt i32 %i.cz, %i.dd
  br i1 %.not143, label %._crit_edge144, label %.preheader

.preheader:                                       ; preds = %.preheader126, %bb.d
  %.sroa.14.0 = phi i32 [ %.sroa.14.1, %bb.d ], [ %i.cz, %.preheader126 ] ; 5 uses
  %.sroa.8.0 = phi i32 [ %.sroa.8.2, %bb.d ], [ %i.ct, %.preheader126 ] ; 4 uses
  %.sroa.0161.0 = phi i32 [ %.sroa.0161.1, %bb.d ], [ %i.cn, %.preheader126 ] ; 3 uses
  %i.de = mul nsw i32 %i.ci, %.sroa.8.0
  %i.df = add nsw i32 %i.de, %.sroa.0161.0
  %i.dg = mul nsw i32 %i.ck, %.sroa.14.0
  %i.dh = add nsw i32 %i.dg, %i.df
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.pre176, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !2260
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  store i32 %.058147, ptr %i.dl, align 4, !tbaa !4
  %i.dm = add nsw i32 %.sroa.0161.0, 1
  %.not190 = icmp slt i32 %.sroa.0161.0, %i.cr
  br i1 %.not190, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.dn = add nsw i32 %.sroa.8.0, 1
  %.not191 = icmp slt i32 %.sroa.8.0, %i.cx
  br i1 %.not191, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not192 = icmp slt i32 %.sroa.14.0, %i.dd
  %spec.select196.v = select i1 %.not192, i32 1, i32 2
  %spec.select196 = add nsw i32 %.sroa.14.0, %spec.select196.v
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.preheader
  %.sroa.14.1 = phi i32 [ %.sroa.14.0, %.preheader ], [ %spec.select196, %bb.c ], [ %.sroa.14.0, %bb.b ] ; 2 uses
  %.sroa.8.2 = phi i32 [ %.sroa.8.0, %.preheader ], [ %i.ct, %bb.c ], [ %i.dn, %bb.b ]
  %.sroa.0161.1 = phi i32 [ %i.dm, %.preheader ], [ %i.cn, %bb.c ], [ %i.cn, %bb.b ]
  %.not = icmp sgt i32 %.sroa.14.1, %i.dd
  br i1 %.not, label %._crit_edge144, label %.preheader, !llvm.loop !2303

._crit_edge144:                                   ; preds = %bb.d, %.preheader126
  %i.do = add nuw nsw i32 %.058147, 1
  %i.dp = load ptr, ptr %.sroa.077.0146, align 8, !tbaa !2281 ; 2 uses
  %.not121 = icmp eq ptr %i.dp, %2
  br i1 %.not121, label %._crit_edge150.loopexit, label %.preheader126, !llvm.loop !2304

._crit_edge150.loopexit:                          ; preds = %._crit_edge144
  %.pre = load ptr, ptr %1, align 8, !tbaa !2253
  br label %._crit_edge150

._crit_edge150:                                   ; preds = %._crit_edge150.loopexit, %._crit_edge
  %5 = phi ptr [ %.pre, %._crit_edge150.loopexit ], [ %.pre176, %._crit_edge ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2253 ; 3 uses
  %.not17.i = icmp eq ptr %5, %i.dr
  br i1 %.not17.i, label %_ZNK13ContextMapperILi3EE11setAffinityERKSt6vectorIP4NodeI8IntervalILi3EES4_ESaIS6_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge150
  %i.ds = load i32, ptr @_ZN5Pooma11myContext_gE, align 4, !tbaa !4 ; 2 uses
  br label %bb.e

.preheader.i:                                     ; preds = %bb.g
  %i.dt = sitofp i32 %.1.i to double
  br label %bb.h

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %.019.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 3 uses
  %.sroa.07.018.i = phi ptr [ %5, %.lr.ph.i ], [ %i.ea, %bb.g ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.07.018.i, align 8, !tbaa !2260 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !4
  %i.dx = icmp eq i32 %i.dw, %i.ds
  br i1 %i.dx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  store i32 %.019.i, ptr %i.dy, align 4, !tbaa !4
  %i.dz = add nsw i32 %.019.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi i32 [ %i.dz, %bb.f ], [ %.019.i, %bb.e ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.07.018.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ea, %i.dr
  br i1 %.not.i, label %.preheader.i, label %bb.e, !llvm.loop !2294

bb.h:                                             ; preds = %bb.j, %.preheader.i
  %.sroa.07.121.i = phi ptr [ %5, %.preheader.i ], [ %i.el, %bb.j ] ; 2 uses
  %i.eb = load ptr, ptr %.sroa.07.121.i, align 8, !tbaa !2260 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !4
  %i.ee = icmp eq i32 %i.ed, %i.ds
  br i1 %i.ee, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4
  %i.eh = sitofp i32 %i.eg to double
  %i.ei = fdiv double %i.eh, %i.dt
  %i.ej = fptosi double %i.ei to i32
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 60
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.07.121.i, i64 8 ; 2 uses
  %.not16.i = icmp eq ptr %i.el, %i.dr
  br i1 %.not16.i, label %_ZNK13ContextMapperILi3EE11setAffinityERKSt6vectorIP4NodeI8IntervalILi3EES4_ESaIS6_EE.exit, label %bb.h, !llvm.loop !2295

_ZNK13ContextMapperILi3EE11setAffinityERKSt6vectorIP4NodeI8IntervalILi3EES4_ESaIS6_EE.exit: ; preds = %bb.j, %._crit_edge150
  br i1 %.not121145, label %_ZNSt7__cxx1110_List_baseI8IntervalILi3EESaIS2_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK13ContextMapperILi3EE11setAffinityERKSt6vectorIP4NodeI8IntervalILi3EES4_ESaIS6_EE.exit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.em, %.lr.ph.i.i ], [ %i.cl, %_ZNK13ContextMapperILi3EE11setAffinityERKSt6vectorIP4NodeI8IntervalILi3EES4_ESaIS6_EE.exit ] ; 2 uses
  %i.em = load ptr, ptr %.09.i.i, align 8, !tbaa !2281 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 40) #49
  %.not.i.i = icmp eq ptr %i.em, %2
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseI8IntervalILi3EESaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !2305

_ZNSt7__cxx1110_List_baseI8IntervalILi3EESaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZNK13ContextMapperILi3EE11setAffinityERKSt6vectorIP4NodeI8IntervalILi3EES4_ESaIS6_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15BisectionMapperILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16ContiguousMapperILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #49
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15BisectionMapperILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #49
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #33

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #33

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14GridLayoutDataILi3EE10initializeI13GridPartitionILi3EEEEvRK8IntervalILi3EERKT_RK13ContextMapperILi3EE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2290 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !2268 ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EE5clearEv.exit29, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.n, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.o, %bb.b ], [ %i.c, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2260 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %_ZN6PooledI4NodeI8IntervalILi3EES2_EEdlEPvm.exit

_ZN6PooledI4NodeI8IntervalILi3EES2_EEdlEPvm.exit: ; preds = %.lr.ph
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6PooledI4NodeI8IntervalILi3EES2_EE6pool_sE, i64 8), align 8, !tbaa !180
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZN6PooledI4NodeI8IntervalILi3EES2_EE6pool_sE, i64 8), align 8, !tbaa !180
  %i.l = load ptr, ptr @_ZN6PooledI4NodeI8IntervalILi3EES2_EE6pool_sE, align 8
  %i.m = ptrtoint ptr %i.l to i64
  store i64 %i.m, ptr %i.h, align 8
  store ptr %i.h, ptr @_ZN6PooledI4NodeI8IntervalILi3EES2_EE6pool_sE, align 8, !tbaa !173
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !2290
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !2268
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6PooledI4NodeI8IntervalILi3EES2_EEdlEPvm.exit
  %i.n = phi ptr [ %i.e, %.lr.ph ], [ %.pre68, %_ZN6PooledI4NodeI8IntervalILi3EES2_EEdlEPvm.exit ] ; 4 uses
  %i.o = phi ptr [ %i.f, %.lr.ph ], [ %.pre, %_ZN6PooledI4NodeI8IntervalILi3EES2_EEdlEPvm.exit ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = icmp ugt i64 %i.s, %indvars.iv.next
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !2306

._crit_edge:                                      ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  store ptr %i.n, ptr %i.b, align 8, !tbaa !2290
  br label %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EE5clearEv.exit

_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EE5clearEv.exit: ; preds = %._crit_edge, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2268 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2290
  %.not.i.i26 = icmp eq ptr %i.x, %i.v
  br i1 %.not.i.i26, label %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EE5clearEv.exit27, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EE5clearEv.exit
  store ptr %i.v, ptr %i.w, align 8, !tbaa !2290
  br label %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EE5clearEv.exit27

_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EE5clearEv.exit27: ; preds = %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EE5clearEv.exit, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2268 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2290
  %.not.i.i28 = icmp eq ptr %i.ab, %i.z
  br i1 %.not.i.i28, label %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EE5clearEv.exit29, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EE5clearEv.exit27
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !2290
  br label %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EE5clearEv.exit29

_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EE5clearEv.exit29: ; preds = %bb.e, %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EE5clearEv.exit27, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 293
  store i8 1, ptr %i.ac, align 1, !tbaa !2307
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i32, ptr %1, align 4, !tbaa !4     ; 5 uses
  store i32 %i.ae, ptr %i.ad, align 8, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4  ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 5 uses
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !4
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4  ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 %i.am, ptr %i.an, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4  ; 5 uses
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4  ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.av, ptr %i.au, align 8, !tbaa !4
  %i.aw = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load i32, ptr %i.aj, align 4, !tbaa !4
  store i32 %i.az, ptr %i.ay, align 8, !tbaa !4
  %i.ba = load i32, ptr %i.al, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load i32, ptr %i.ap, align 4, !tbaa !4
  store i32 %i.bd, ptr %i.bc, align 8, !tbaa !4
  %i.be = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !2283, !range !58, !noundef !59
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EE5clearEv.exit29
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !2289
  %i.bl = icmp sgt i32 %i.bk, 1                   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bn = zext i1 %i.bl to i8
  store i8 %i.bn, ptr %i.bm, align 8, !tbaa !2309
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !tbaa.struct !947
  br label %bb.h

end_hunk_0
begin_hunk_1_@_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !2462
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2470 ; 6 uses
  %.not.i.i.i.i.us.i.i.i.i.i19 = icmp eq ptr %i.bu, %i.bp
  br i1 %.not.i.i.i.i.us.i.i.i.i.i19, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i21, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.bc, align 8, !tbaa !6282 ; 2 uses
  %.not8.i.i.i.i.us.i.i.i.i.i20 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not8.i.i.i.i.us.i.i.i.i.i20, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i21, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = icmp eq ptr %i.bp, null
  br i1 %i.bw, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = icmp eq ptr %i.bv, null
  br i1 %i.bx, label %bb.n, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i21

bb.n:                                             ; preds = %bb.m
  store ptr %i.bu, ptr %i.bc, align 8, !tbaa !6282
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i21

bb.o:                                             ; preds = %bb.l
  store ptr %i.bu, ptr %i.bb, align 8, !tbaa !6280
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i21

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i21: ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j
  %.promoted.us13.i.i.i.i.i22 = phi ptr [ %.promoted.us14.i.i.i.i.i18, %bb.j ], [ %.promoted.us14.i.i.i.i.i18, %bb.k ], [ %i.bu, %bb.o ], [ %.promoted.us14.i.i.i.i.i18, %bb.m ], [ %.promoted.us14.i.i.i.i.i18, %bb.n ] ; 2 uses
  %i.by = phi ptr [ %i.bp, %bb.j ], [ %i.bp, %bb.k ], [ %i.bu, %bb.o ], [ %i.bp, %bb.m ], [ %i.bp, %bb.n ]
  %indvars.iv.next.i.i.i.i.i23 = add nuw nsw i64 %indvars.iv.i.i.i.i.i17, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i24 = icmp eq i64 %indvars.iv.next.i.i.i.i.i23, %wide.trip.count.i.i.i.i.i13
  br i1 %exitcond.not.i.i.i.i.i24, label %._crit_edge.us.i.i.i.i.i25, label %bb.j, !llvm.loop !6283

._crit_edge.us.i.i.i.i.i25:                       ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i21
  %indvars.iv.next19.i.i.i.i.i26 = add nuw nsw i64 %indvars.iv18.i.i.i.i.i15, 1 ; 2 uses
  %exitcond22.not.i.i.i.i.i27 = icmp eq i64 %indvars.iv.next19.i.i.i.i.i26, %wide.trip.count21.i.i.i.i.i12
  br i1 %exitcond22.not.i.i.i.i.i27, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit28, label %.preheader.us.i.i.i.i.i14, !llvm.loop !6284

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit28: ; preds = %._crit_edge.us.i.i.i.i.i25, %.preheader.lr.ph.i.i.i.i.i9, %bb.i, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit
  %i.bz = and i64 %i.b, 4
  %.not50 = icmp eq i64 %i.bz, 0
  br i1 %.not50, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit48, label %bb.p

bb.p:                                             ; preds = %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit28
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !6256 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.preheader.lr.ph.i.i.i.i.i29, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit48

.preheader.lr.ph.i.i.i.i.i29:                     ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !597
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !595
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = sdiv exact i64 %i.cj, 12                ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = icmp sgt i32 %i.cl, 0
  %i.cn = load ptr, ptr %1, align 8, !nonnull !59, !align !2135 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  br i1 %i.cm, label %.preheader.lr.ph.split.us.i.i.i.i.i30, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit48

.preheader.lr.ph.split.us.i.i.i.i.i30:            ; preds = %.preheader.lr.ph.i.i.i.i.i29
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !6266
  %i.cx = getelementptr inbounds [88 x i8], ptr %i.cw, i64 %i.cs
  %.promoted.i.i.i.i.i31 = load ptr, ptr %i.cn, align 8, !tbaa !6280
  %i.cy = sext i32 %i.cq to i64
  %wide.trip.count21.i.i.i.i.i32 = zext nneg i32 %i.cb to i64
  %wide.trip.count.i.i.i.i.i33 = and i64 %i.ck, 2147483647
  br label %.preheader.us.i.i.i.i.i34

.preheader.us.i.i.i.i.i34:                        ; preds = %._crit_edge.us.i.i.i.i.i45, %.preheader.lr.ph.split.us.i.i.i.i.i30
  %indvars.iv18.i.i.i.i.i35 = phi i64 [ %indvars.iv.next19.i.i.i.i.i46, %._crit_edge.us.i.i.i.i.i45 ], [ 0, %.preheader.lr.ph.split.us.i.i.i.i.i30 ] ; 2 uses
  %.promoted.us15.i.i.i.i.i36 = phi ptr [ %.promoted.us13.i.i.i.i.i42, %._crit_edge.us.i.i.i.i.i45 ], [ %.promoted.i.i.i.i.i31, %.preheader.lr.ph.split.us.i.i.i.i.i30 ] ; 2 uses
  %i.cz = mul nsw i64 %indvars.iv18.i.i.i.i.i35, %i.cy
  %i.da = getelementptr [88 x i8], ptr %i.cx, i64 %i.cz
  br label %bb.q

bb.q:                                             ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i41, %.preheader.us.i.i.i.i.i34
  %indvars.iv.i.i.i.i.i37 = phi i64 [ 0, %.preheader.us.i.i.i.i.i34 ], [ %indvars.iv.next.i.i.i.i.i43, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i41 ] ; 2 uses
  %.promoted.us14.i.i.i.i.i38 = phi ptr [ %.promoted.us15.i.i.i.i.i36, %.preheader.us.i.i.i.i.i34 ], [ %.promoted.us13.i.i.i.i.i42, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i41 ] ; 4 uses
  %i.db = phi ptr [ %.promoted.us15.i.i.i.i.i36, %.preheader.us.i.i.i.i.i34 ], [ %i.dk, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i41 ] ; 6 uses
  %i.dc = getelementptr [88 x i8], ptr %i.da, i64 %indvars.iv.i.i.i.i.i37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !2462
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !2470 ; 6 uses
  %.not.i.i.i.i.us.i.i.i.i.i39 = icmp eq ptr %i.dg, %i.db
  br i1 %.not.i.i.i.i.us.i.i.i.i.i39, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i41, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = load ptr, ptr %i.co, align 8, !tbaa !6282 ; 2 uses
  %.not8.i.i.i.i.us.i.i.i.i.i40 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not8.i.i.i.i.us.i.i.i.i.i40, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i41, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.di = icmp eq ptr %i.db, null
  br i1 %i.di, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = icmp eq ptr %i.dh, null
  br i1 %i.dj, label %bb.u, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i41

bb.u:                                             ; preds = %bb.t
  store ptr %i.dg, ptr %i.co, align 8, !tbaa !6282
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i41

bb.v:                                             ; preds = %bb.s
  store ptr %i.dg, ptr %i.cn, align 8, !tbaa !6280
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i41

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i41: ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  %.promoted.us13.i.i.i.i.i42 = phi ptr [ %.promoted.us14.i.i.i.i.i38, %bb.q ], [ %.promoted.us14.i.i.i.i.i38, %bb.r ], [ %i.dg, %bb.v ], [ %.promoted.us14.i.i.i.i.i38, %bb.t ], [ %.promoted.us14.i.i.i.i.i38, %bb.u ] ; 2 uses
  %i.dk = phi ptr [ %i.db, %bb.q ], [ %i.db, %bb.r ], [ %i.dg, %bb.v ], [ %i.db, %bb.t ], [ %i.db, %bb.u ]
  %indvars.iv.next.i.i.i.i.i43 = add nuw nsw i64 %indvars.iv.i.i.i.i.i37, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i44 = icmp eq i64 %indvars.iv.next.i.i.i.i.i43, %wide.trip.count.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i44, label %._crit_edge.us.i.i.i.i.i45, label %bb.q, !llvm.loop !6283

._crit_edge.us.i.i.i.i.i45:                       ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i41
  %indvars.iv.next19.i.i.i.i.i46 = add nuw nsw i64 %indvars.iv18.i.i.i.i.i35, 1 ; 2 uses
  %exitcond22.not.i.i.i.i.i47 = icmp eq i64 %indvars.iv.next19.i.i.i.i.i46, %wide.trip.count21.i.i.i.i.i32
  br i1 %exitcond22.not.i.i.i.i.i47, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit48, label %.preheader.us.i.i.i.i.i34, !llvm.loop !6284

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit48: ; preds = %._crit_edge.us.i.i.i.i.i45, %.preheader.lr.ph.i.i.i.i.i29, %bb.p, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_EN4Adv51X8MassflowILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !8324
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not39 = icmp sgt i32 %i.e, %i.m
  br i1 %.not39, label %._crit_edge42, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2336 = icmp sgt i32 %i.c, %i.q
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2336, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge42, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !8322 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 280
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !6263
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !6266
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !6262
  %i.ac = getelementptr inbounds [88 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2836
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !4
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !6263
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !6266
  %i.am = load i64, ptr %i.u, align 8, !tbaa !6262
  %i.an = getelementptr inbounds [88 x i8], ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2836 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !4
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !741, !noalias !59 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 128 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pre.i, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4, !noalias !8326 ; 2 uses
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !6263
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !6266
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !6262
  %i.bb = getelementptr inbounds [88 x i8], ptr %i.az, i64 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2836
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !4
  %i.bi = zext i32 %i.a to i64
  %i.bj = add i32 %i.g, %i.a
  %i.bk = add i32 %i.i, %i.c
  %i.bl = add i32 %i.k, %i.e
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge38.split
  %.02240 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.bs, %._crit_edge38.split ] ; 4 uses
  %i.bm = mul nsw i32 %i.ai, %.02240
  %i.bn = mul nsw i32 %i.at, %.02240              ; 3 uses
  %invariant.op30 = add i32 %i.bn, -1
  %invariant.op32 = add i32 %i.bn, 1
  %i.bo = mul nsw i32 %i.bh, %.02240
  br label %.preheader

._crit_edge42:                                    ; preds = %._crit_edge38.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %.02137 = phi i32 [ %i.c, %.preheader27 ], [ %i.bt, %._crit_edge ] ; 4 uses
  %i.bp = mul nsw i32 %i.ag, %.02137
  %invariant.op = add i32 %i.bp, %i.bm
  %i.bq = mul nsw i32 %i.ar, %.02137
  %i.br = mul nsw i32 %i.bf, %.02137
  %invariant.op34 = add i32 %i.br, %i.bo
  br label %bb.b

._crit_edge38.split:                              ; preds = %._crit_edge
  %i.bs = add i32 %.02240, 1                      ; 2 uses
  %exitcond50.not = icmp eq i32 %i.bs, %i.bl
  br i1 %exitcond50.not, label %._crit_edge42, label %.preheader27, !llvm.loop !8329

._crit_edge:                                      ; preds = %_ZNK4Adv51X8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit
  %i.bt = add i32 %.02137, 1                      ; 2 uses
  %exitcond49.not = icmp eq i32 %i.bt, %i.bk
  br i1 %exitcond49.not, label %._crit_edge38.split, label %.preheader, !llvm.loop !8330

bb.b:                                             ; preds = %.preheader, %_ZNK4Adv51X8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit
  %indvars.iv = phi i64 [ %i.bi, %.preheader ], [ %indvars.iv.next, %_ZNK4Adv51X8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit ] ; 3 uses
  %i.bu = trunc i64 %indvars.iv to i32            ; 3 uses
  %.reass = add i32 %invariant.op, %i.bu
  %i.bv = sext i32 %.reass to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !247
  %i.by = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !8331
  %i.bz = fmul double %i.bx, %i.by                ; 3 uses
  %i.ca = fcmp ogt double %i.bz, 0.000000e+00
  %i.cb = sext i1 %i.ca to i32
  %.sroa.081.0.i = add nsw i32 %i.bu, %i.cb       ; 2 uses
  %i.cc = add i32 %i.bq, %.sroa.081.0.i           ; 3 uses
  %i.cd = add i32 %i.cc, %i.bn
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !247 ; 3 uses
  %.reass31 = add i32 %i.cc, %invariant.op30
  %i.ch = sext i32 %.reass31 to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !247
  %i.ck = fsub double %i.cg, %i.cj                ; 2 uses
  %.reass33 = add i32 %i.cc, %invariant.op32
  %i.cl = sext i32 %.reass33 to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !247
  %i.co = fsub double %i.cn, %i.cg                ; 2 uses
  %i.cp = fmul double %i.ck, %i.co                ; 2 uses
  %i.cq = fcmp ogt double %i.cp, 0.000000e+00
  br i1 %i.cq, label %.critedge.i, label %..critedge56_crit_edge.i

..critedge56_crit_edge.i:                         ; preds = %bb.b
  %.pre113.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !8326
  br label %_ZNK4Adv51X8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit

.critedge.i:                                      ; preds = %bb.b
  %i.cr = fmul nnan double %i.cp, 2.000000e+00
  %i.cs = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !8333 ; 3 uses
  %i.ct = fmul double %i.co, %i.cs
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.cs, double %i.ct)
  %i.cv = fdiv double %i.cr, %i.cu
  br label %_ZNK4Adv51X8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit

_ZNK4Adv51X8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit: ; preds = %..critedge56_crit_edge.i, %.critedge.i
  %i.cw = phi double [ %i.cs, %.critedge.i ], [ %.pre113.i, %..critedge56_crit_edge.i ] ; 2 uses
  %i.cx = phi double [ %i.cv, %.critedge.i ], [ 0.000000e+00, %..critedge56_crit_edge.i ]
  %i.cy = load double, ptr %i.au, align 8, !tbaa !247, !noalias !8326 ; 2 uses
  %i.cz = trunc i64 %indvars.iv to i32
  %i.da = sub i32 %i.cz, %i.aw
  %i.db = sitofp i32 %i.da to double
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.db, double %i.cy)
  %i.dd = sub nsw i32 %.sroa.081.0.i, %i.aw
  %i.de = sitofp i32 %i.dd to double
  %i.df = fadd double %i.de, 5.000000e-01
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.df, double %i.cy)
  %i.dh = fsub double %i.dc, %i.dg
  %i.di = tail call double @llvm.fmuladd.f64(double %i.bz, double -5.000000e-01, double %i.dh)
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.di, double %i.cx, double %i.cg)
  %i.dk = fmul double %i.bz, %i.dj
  %.reass35 = add i32 %invariant.op34, %i.bu
  %i.dl = sext i32 %.reass35 to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.dl
  store double %i.dk, ptr %i.dm, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bj, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !8336
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_EC2ERKS8_SB_SB_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(144) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !6256
  store i32 %i.a, ptr %0, align 8, !tbaa !6256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !6261
  store i32 %i.f, ptr %i.d, align 8, !tbaa !6261
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !6262
  store i64 %i.i, ptr %i.g, align 8, !tbaa !6262
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !6263 ; 4 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !6263
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.l, align 4, !tbaa !719
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !719
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !4
  store i32 %i.q, ptr %i.o, align 8, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load i32, ptr %i.v, align 8, !tbaa !4
  store i32 %i.w, ptr %i.u, align 8, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !4
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !947
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !741 ; 4 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !741
  %.not.i.i8.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i8.i.i, label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2ERKS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !719
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !719
  br label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2ERKS7_.exit

_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2ERKS7_.exit: ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ao = load i32, ptr %2, align 8, !tbaa !6256
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !6256
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef nonnull align 8 dereferenceable(56) %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
end_hunk_1
begin_hunk_2_@_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE:bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !2470 ; 6 uses
  %.not.i.i.i.i.us.i.i.i.i.i42 = icmp eq ptr %i.dg, %i.db
  br i1 %.not.i.i.i.i.us.i.i.i.i.i42, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = load ptr, ptr %i.co, align 8, !tbaa !6282 ; 2 uses
  %.not8.i.i.i.i.us.i.i.i.i.i43 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not8.i.i.i.i.us.i.i.i.i.i43, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.di = icmp eq ptr %i.db, null
  br i1 %i.di, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = icmp eq ptr %i.dh, null
  br i1 %i.dj, label %bb.u, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44

bb.u:                                             ; preds = %bb.t
  store ptr %i.dg, ptr %i.co, align 8, !tbaa !6282
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44

bb.v:                                             ; preds = %bb.s
  store ptr %i.dg, ptr %i.cn, align 8, !tbaa !6280
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44: ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  %.promoted.us13.i.i.i.i.i45 = phi ptr [ %.promoted.us14.i.i.i.i.i41, %bb.q ], [ %.promoted.us14.i.i.i.i.i41, %bb.r ], [ %i.dg, %bb.v ], [ %.promoted.us14.i.i.i.i.i41, %bb.t ], [ %.promoted.us14.i.i.i.i.i41, %bb.u ] ; 2 uses
  %i.dk = phi ptr [ %i.db, %bb.q ], [ %i.db, %bb.r ], [ %i.dg, %bb.v ], [ %i.db, %bb.t ], [ %i.db, %bb.u ]
  %indvars.iv.next.i.i.i.i.i46 = add nuw nsw i64 %indvars.iv.i.i.i.i.i40, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i47 = icmp eq i64 %indvars.iv.next.i.i.i.i.i46, %wide.trip.count.i.i.i.i.i36
  br i1 %exitcond.not.i.i.i.i.i47, label %._crit_edge.us.i.i.i.i.i48, label %bb.q, !llvm.loop !6283

._crit_edge.us.i.i.i.i.i48:                       ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44
  %indvars.iv.next19.i.i.i.i.i49 = add nuw nsw i64 %indvars.iv18.i.i.i.i.i38, 1 ; 2 uses
  %exitcond22.not.i.i.i.i.i50 = icmp eq i64 %indvars.iv.next19.i.i.i.i.i49, %wide.trip.count21.i.i.i.i.i35
  br i1 %exitcond22.not.i.i.i.i.i50, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit51, label %.preheader.us.i.i.i.i.i37, !llvm.loop !6284

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit51: ; preds = %._crit_edge.us.i.i.i.i.i48, %.preheader.lr.ph.i.i.i.i.i32, %bb.p, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit31
  %i.dl = and i64 %i.b, 8
  %.not74 = icmp eq i64 %i.dl, 0
  br i1 %.not74, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit71, label %bb.w

bb.w:                                             ; preds = %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit51
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !6256 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.preheader.lr.ph.i.i.i.i.i52, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit71

.preheader.lr.ph.i.i.i.i.i52:                     ; preds = %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !597
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !595
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = sdiv exact i64 %i.dv, 12                ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = icmp sgt i32 %i.dx, 0
  %i.dz = load ptr, ptr %1, align 8, !nonnull !59, !align !2135 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  br i1 %i.dy, label %.preheader.lr.ph.split.us.i.i.i.i.i53, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit71

.preheader.lr.ph.split.us.i.i.i.i.i53:            ; preds = %.preheader.lr.ph.i.i.i.i.i52
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !6266
  %i.ej = getelementptr inbounds [88 x i8], ptr %i.ei, i64 %i.ee
  %.promoted.i.i.i.i.i54 = load ptr, ptr %i.dz, align 8, !tbaa !6280
  %i.ek = sext i32 %i.ec to i64
  %wide.trip.count21.i.i.i.i.i55 = zext nneg i32 %i.dn to i64
  %wide.trip.count.i.i.i.i.i56 = and i64 %i.dw, 2147483647
  br label %.preheader.us.i.i.i.i.i57

.preheader.us.i.i.i.i.i57:                        ; preds = %._crit_edge.us.i.i.i.i.i68, %.preheader.lr.ph.split.us.i.i.i.i.i53
  %indvars.iv18.i.i.i.i.i58 = phi i64 [ %indvars.iv.next19.i.i.i.i.i69, %._crit_edge.us.i.i.i.i.i68 ], [ 0, %.preheader.lr.ph.split.us.i.i.i.i.i53 ] ; 2 uses
  %.promoted.us15.i.i.i.i.i59 = phi ptr [ %.promoted.us13.i.i.i.i.i65, %._crit_edge.us.i.i.i.i.i68 ], [ %.promoted.i.i.i.i.i54, %.preheader.lr.ph.split.us.i.i.i.i.i53 ] ; 2 uses
  %i.el = mul nsw i64 %indvars.iv18.i.i.i.i.i58, %i.ek
  %i.em = getelementptr [88 x i8], ptr %i.ej, i64 %i.el
  br label %bb.x

bb.x:                                             ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i64, %.preheader.us.i.i.i.i.i57
  %indvars.iv.i.i.i.i.i60 = phi i64 [ 0, %.preheader.us.i.i.i.i.i57 ], [ %indvars.iv.next.i.i.i.i.i66, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i64 ] ; 2 uses
  %.promoted.us14.i.i.i.i.i61 = phi ptr [ %.promoted.us15.i.i.i.i.i59, %.preheader.us.i.i.i.i.i57 ], [ %.promoted.us13.i.i.i.i.i65, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i64 ] ; 4 uses
  %i.en = phi ptr [ %.promoted.us15.i.i.i.i.i59, %.preheader.us.i.i.i.i.i57 ], [ %i.ew, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i64 ] ; 6 uses
  %i.eo = getelementptr [88 x i8], ptr %i.em, i64 %indvars.iv.i.i.i.i.i60
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !2462
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !2470 ; 6 uses
  %.not.i.i.i.i.us.i.i.i.i.i62 = icmp eq ptr %i.es, %i.en
  br i1 %.not.i.i.i.i.us.i.i.i.i.i62, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i64, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.et = load ptr, ptr %i.ea, align 8, !tbaa !6282 ; 2 uses
  %.not8.i.i.i.i.us.i.i.i.i.i63 = icmp eq ptr %i.es, %i.et
  br i1 %.not8.i.i.i.i.us.i.i.i.i.i63, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i64, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = icmp eq ptr %i.en, null
  br i1 %i.eu, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ev = icmp eq ptr %i.et, null
  br i1 %i.ev, label %bb.ab, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i64

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.es, ptr %i.ea, align 8, !tbaa !6282
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i64

bb.ac:                                            ; preds = %bb.z
  store ptr %i.es, ptr %i.dz, align 8, !tbaa !6280
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i64

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i64: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  %.promoted.us13.i.i.i.i.i65 = phi ptr [ %.promoted.us14.i.i.i.i.i61, %bb.x ], [ %.promoted.us14.i.i.i.i.i61, %bb.y ], [ %i.es, %bb.ac ], [ %.promoted.us14.i.i.i.i.i61, %bb.aa ], [ %.promoted.us14.i.i.i.i.i61, %bb.ab ] ; 2 uses
  %i.ew = phi ptr [ %i.en, %bb.x ], [ %i.en, %bb.y ], [ %i.es, %bb.ac ], [ %i.en, %bb.aa ], [ %i.en, %bb.ab ]
  %indvars.iv.next.i.i.i.i.i66 = add nuw nsw i64 %indvars.iv.i.i.i.i.i60, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i67 = icmp eq i64 %indvars.iv.next.i.i.i.i.i66, %wide.trip.count.i.i.i.i.i56
  br i1 %exitcond.not.i.i.i.i.i67, label %._crit_edge.us.i.i.i.i.i68, label %bb.x, !llvm.loop !6283

._crit_edge.us.i.i.i.i.i68:                       ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i64
  %indvars.iv.next19.i.i.i.i.i69 = add nuw nsw i64 %indvars.iv18.i.i.i.i.i58, 1 ; 2 uses
  %exitcond22.not.i.i.i.i.i70 = icmp eq i64 %indvars.iv.next19.i.i.i.i.i69, %wide.trip.count21.i.i.i.i.i55
  br i1 %exitcond22.not.i.i.i.i.i70, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit71, label %.preheader.us.i.i.i.i.i57, !llvm.loop !6284

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit71: ; preds = %._crit_edge.us.i.i.i.i.i68, %.preheader.lr.ph.i.i.i.i.i52, %bb.w, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit51
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_EN4Adv51X10EnergyfluxILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !8888
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not41 = icmp sgt i32 %i.e, %i.m
  br i1 %.not41, label %._crit_edge44, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2338 = icmp sgt i32 %i.c, %i.q
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2338, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge44, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !8886 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 280
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !6263
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !6266
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !6262
  %i.ae = getelementptr inbounds [88 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2836
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !4
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !6263
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !6266
  %i.ao = load i64, ptr %i.w, align 8, !tbaa !6262
  %i.ap = getelementptr inbounds [88 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2836 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !4
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !741, !noalias !59 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 128 ; 2 uses
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !6263
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !6266
  %i.az = load i64, ptr %i.u, align 8, !tbaa !6262
  %i.ba = getelementptr inbounds [88 x i8], ptr %i.ay, i64 %i.az ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2836
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre.i, i64 104
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4, !noalias !8890 ; 2 uses
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !6263
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !6266
  %i.bn = load i64, ptr %i.s, align 8, !tbaa !6262
  %i.bo = getelementptr inbounds [88 x i8], ptr %i.bm, i64 %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2836
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !4
  %i.bv = zext i32 %i.a to i64
  %i.bw = add i32 %i.g, %i.a
  %i.bx = add i32 %i.i, %i.c
  %i.by = add i32 %i.k, %i.e
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge40.split
  %.02242 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.ch, %._crit_edge40.split ] ; 5 uses
  %i.bz = mul nsw i32 %i.ak, %.02242
  %i.ca = mul nsw i32 %i.av, %.02242              ; 3 uses
  %invariant.op30 = add i32 %i.ca, -1
  %invariant.op32 = add i32 %i.ca, 1
  %i.cb = mul nsw i32 %i.bg, %.02242
  %i.cc = mul nsw i32 %i.bu, %.02242
  br label %.preheader

._crit_edge44:                                    ; preds = %._crit_edge40.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %.02139 = phi i32 [ %i.c, %.preheader27 ], [ %i.ci, %._crit_edge ] ; 5 uses
  %i.cd = mul nsw i32 %i.ai, %.02139
  %invariant.op = add i32 %i.cd, %i.bz
  %i.ce = mul nsw i32 %i.at, %.02139
  %i.cf = mul nsw i32 %i.be, %.02139
  %invariant.op34 = add i32 %i.cf, %i.cb
  %i.cg = mul nsw i32 %i.bs, %.02139
  %invariant.op36 = add i32 %i.cg, %i.cc
  br label %bb.b

._crit_edge40.split:                              ; preds = %._crit_edge
  %i.ch = add i32 %.02242, 1                      ; 2 uses
  %exitcond52.not = icmp eq i32 %i.ch, %i.by
  br i1 %exitcond52.not, label %._crit_edge44, label %.preheader27, !llvm.loop !8893

._crit_edge:                                      ; preds = %_ZNK4Adv51X10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit
  %i.ci = add i32 %.02139, 1                      ; 2 uses
  %exitcond51.not = icmp eq i32 %i.ci, %i.bx
  br i1 %exitcond51.not, label %._crit_edge40.split, label %.preheader, !llvm.loop !8894

bb.b:                                             ; preds = %.preheader, %_ZNK4Adv51X10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit
  %indvars.iv = phi i64 [ %i.bv, %.preheader ], [ %indvars.iv.next, %_ZNK4Adv51X10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit ] ; 3 uses
  %i.cj = trunc i64 %indvars.iv to i32            ; 4 uses
  %.reass = add i32 %invariant.op, %i.cj
  %i.ck = sext i32 %.reass to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !247
  %i.cn = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !8895
  %i.co = fmul double %i.cm, %i.cn                ; 2 uses
  %i.cp = fcmp ogt double %i.co, 0.000000e+00
  %i.cq = sext i1 %i.cp to i32
  %.sroa.064.0.i = add nsw i32 %i.cj, %i.cq       ; 2 uses
  %i.cr = add i32 %i.ce, %.sroa.064.0.i           ; 3 uses
  %.reass31 = add i32 %i.cr, %invariant.op30
  %i.cs = sext i32 %.reass31 to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !247
  %i.cv = add i32 %i.cr, %i.ca
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !247 ; 3 uses
  %.reass33 = add i32 %i.cr, %invariant.op32
  %i.cz = sext i32 %.reass33 to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !247
  %i.dc = fsub double %i.cy, %i.cu                ; 2 uses
  %i.dd = fsub double %i.db, %i.cy                ; 2 uses
  %i.de = fmul double %i.dc, %i.dd                ; 2 uses
  %i.df = fcmp ogt double %i.de, 0.000000e+00
  br i1 %i.df, label %.critedge.i, label %..critedge47_crit_edge.i

..critedge47_crit_edge.i:                         ; preds = %bb.b
  %.pre81.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !8890
  br label %_ZNK4Adv51X10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit

.critedge.i:                                      ; preds = %bb.b
  %i.dg = fmul nnan double %i.de, 2.000000e+00
  %i.dh = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !8897 ; 3 uses
  %i.di = fmul double %i.dc, %i.dh
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.dh, double %i.di)
  %i.dk = fdiv double %i.dg, %i.dj
  br label %_ZNK4Adv51X10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit

_ZNK4Adv51X10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit: ; preds = %..critedge47_crit_edge.i, %.critedge.i
  %i.dl = phi double [ %i.dh, %.critedge.i ], [ %.pre81.i, %..critedge47_crit_edge.i ] ; 2 uses
  %i.dm = phi double [ %i.dk, %.critedge.i ], [ 0.000000e+00, %..critedge47_crit_edge.i ]
  %.reass35 = add i32 %invariant.op34, %i.cj
  %i.dn = sext i32 %.reass35 to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !247
  %i.dq = load double, ptr %i.bh, align 8, !tbaa !247, !noalias !8890 ; 2 uses
  %i.dr = trunc i64 %indvars.iv to i32
  %i.ds = sub i32 %i.dr, %i.bj
  %i.dt = sitofp i32 %i.ds to double
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dt, double %i.dq)
  %i.dv = sub nsw i32 %.sroa.064.0.i, %i.bj
  %i.dw = sitofp i32 %i.dv to double
  %i.dx = fadd double %i.dw, 5.000000e-01
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dx, double %i.dq)
  %i.dz = fsub double %i.du, %i.dy
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.co, double -5.000000e-01, double %i.dz)
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.dm, double %i.cy)
  %i.ec = fmul double %i.dp, %i.eb
  %.reass37 = add i32 %invariant.op36, %i.cj
  %i.ed = sext i32 %.reass37 to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.ed
  store double %i.ec, ptr %i.ee, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bw, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !8900
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_EC2ERKS8_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %4) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !6256
  store i32 %i.a, ptr %0, align 8, !tbaa !6256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !6261
  store i32 %i.f, ptr %i.d, align 8, !tbaa !6261
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !6262
  store i64 %i.i, ptr %i.g, align 8, !tbaa !6262
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !6263 ; 4 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !6263
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.l, align 4, !tbaa !719
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !719
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !4
  store i32 %i.q, ptr %i.o, align 8, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load i32, ptr %i.v, align 8, !tbaa !4
  store i32 %i.w, ptr %i.u, align 8, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !4
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !947
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !741 ; 4 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !741
end_hunk_2
begin_hunk_3_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EN4Adv51X13MomentumfluxXILi3EEELi3E15EvaluateLocLoopISH_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSK_4sizeEERKT2_:bb.a
  %reass.sub.i.2.i.i = sub i32 %i.ag, %i.ab
  %i.ah = add i32 %reass.sub.i.2.i.i, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.ab, ptr %i.ai, align 4, !tbaa !4, !alias.scope !8971
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !4, !alias.scope !8971
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  call void @_ZNK9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_EclI8IntervalILi3EEEEN5View1IS9_T_E6Type_tERKSE_(ptr dead_on_unwind nonnull writable sret(%struct.MultiArg3.643) align 8 %8, ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 4 dereferenceable(24) %7)
  %i.ak = load i64, ptr %1, align 8
  %i.al = call noalias noundef nonnull dereferenceable(576) ptr @_Znwm(i64 noundef 576) #46 ; 19 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 0, ptr %i.ao, align 8, !tbaa !2454
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.ap, align 8, !tbaa !2701
  %i.aq = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51X13MomentumfluxXILi3EEELi3EEE, i64 16), ptr %i.al, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @_ZN9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(432) %i.as, ptr noundef nonnull align 8 dereferenceable(432) %8)
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 464
  store i64 %i.ak, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  store i32 %i.c, ptr %i.au, align 8, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 476
  store i32 %i.f, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 480
  store i32 %i.n, ptr %i.aw, align 8, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 484
  store i32 %i.q, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 488
  store i32 %i.aa, ptr %i.ay, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 492
  store i32 %i.ad, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 496 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 536
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr %i.al, ptr %5, align 8, !tbaa !6175
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !8972
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !8972
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #48
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51X13MomentumfluxXILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51X13MomentumfluxXILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6034 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6034 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51X13MomentumfluxXILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51X13MomentumfluxXILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 576) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51X13MomentumfluxXILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.674, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store ptr %i.b, ptr %1, align 8, !tbaa !8322
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !8973
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_EN4Adv51X13MomentumfluxXILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_EN4Adv51X13MomentumfluxXILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !8973
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not37 = icmp sgt i32 %i.e, %i.m
  br i1 %.not37, label %._crit_edge40, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2334 = icmp sgt i32 %i.c, %i.q
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2334, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge40, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !8322 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !6263
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !6266
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !6262
  %i.ac = getelementptr inbounds [88 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2836 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !4
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !741, !noalias !59 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 128 ; 2 uses
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !6263
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !6266
  %i.am = load i64, ptr %i.u, align 8, !tbaa !6262
  %i.an = getelementptr inbounds [88 x i8], ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2836 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %.pre.i, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4, !noalias !8975 ; 2 uses
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !6263
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !6266
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !6262
  %i.bb = getelementptr inbounds [88 x i8], ptr %i.az, i64 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2836
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !4
  %i.bi = zext i32 %i.a to i64
  %i.bj = add i32 %i.g, %i.a
  %i.bk = add i32 %i.i, %i.c
  %i.bl = add i32 %i.k, %i.e
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge36.split
  %.02238 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.bu, %._crit_edge36.split ] ; 4 uses
  %i.bm = mul nsw i32 %i.ai, %.02238
  %i.bn = mul nsw i32 %i.at, %.02238
  %i.bo = mul nsw i32 %i.bh, %.02238
  br label %.preheader

._crit_edge40:                                    ; preds = %._crit_edge36.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %.02135 = phi i32 [ %i.c, %.preheader27 ], [ %i.bv, %._crit_edge ] ; 4 uses
  %i.bp = mul nsw i32 %i.ag, %.02135
  %i.bq = add i32 %i.bm, %i.bp                    ; 5 uses
  %invariant.op = add i32 %i.bq, -1
  %invariant.op30 = add i32 %i.bq, 1
  %i.br = mul nsw i32 %i.ar, %.02135
  %i.bs = add i32 %i.bn, %i.br                    ; 2 uses
  %i.bt = mul nsw i32 %i.bf, %.02135
  %invariant.op32 = add i32 %i.bt, %i.bo
  br label %bb.b

._crit_edge36.split:                              ; preds = %._crit_edge
  %i.bu = add i32 %.02238, 1                      ; 2 uses
  %exitcond48.not = icmp eq i32 %i.bu, %i.bl
  br i1 %exitcond48.not, label %._crit_edge40, label %.preheader27, !llvm.loop !8978

._crit_edge:                                      ; preds = %_ZNK4Adv51X13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit
  %i.bv = add i32 %.02135, 1                      ; 2 uses
  %exitcond47.not = icmp eq i32 %i.bv, %i.bk
  br i1 %exitcond47.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !8979

bb.b:                                             ; preds = %.preheader, %_ZNK4Adv51X13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit
  %indvars.iv = phi i64 [ %i.bi, %.preheader ], [ %indvars.iv.next, %_ZNK4Adv51X13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit ] ; 3 uses
  %i.bw = trunc i64 %indvars.iv to i32            ; 4 uses
  %i.bx = add i32 %i.bq, %i.bw
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 4 uses
  %i.cb = add i32 %i.bq, %indvars
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !247
  %i.cf = fadd double %i.ca, %i.ce
  %i.cg = fmul double %i.cf, 5.000000e-01
  %i.ch = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !8980
  %i.ci = fmul double %i.ch, %i.cg                ; 2 uses
  %i.cj = fcmp ogt double %i.ci, 0.000000e+00
  %.sroa.071.0.i = select i1 %i.cj, i32 %i.bw, i32 %indvars ; 4 uses
  %.reass = add i32 %.sroa.071.0.i, %invariant.op
  %i.ck = sext i32 %.reass to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !247
  %i.cn = add i32 %.sroa.071.0.i, %i.bq
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !247 ; 3 uses
  %.reass31 = add i32 %.sroa.071.0.i, %invariant.op30
  %i.cr = sext i32 %.reass31 to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !247
  %i.cu = fsub double %i.cq, %i.cm                ; 2 uses
  %i.cv = fsub double %i.ct, %i.cq                ; 2 uses
  %i.cw = fmul double %i.cu, %i.cv                ; 2 uses
  %i.cx = fcmp ogt double %i.cw, 0.000000e+00
  br i1 %i.cx, label %.critedge.i, label %..critedge51_crit_edge.i

..critedge51_crit_edge.i:                         ; preds = %bb.b
  %.pre91.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !8975
  br label %_ZNK4Adv51X13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit

.critedge.i:                                      ; preds = %bb.b
  %i.cy = fmul nnan double %i.cw, 2.000000e+00
  %i.cz = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !8982 ; 3 uses
  %i.da = fmul double %i.cu, %i.cz
  %i.db = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cz, double %i.da)
  %i.dc = fdiv double %i.cy, %i.db
  br label %_ZNK4Adv51X13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit

_ZNK4Adv51X13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit: ; preds = %..critedge51_crit_edge.i, %.critedge.i
  %i.dd = phi double [ %i.cz, %.critedge.i ], [ %.pre91.i, %..critedge51_crit_edge.i ] ; 2 uses
  %i.de = phi double [ %i.dc, %.critedge.i ], [ 0.000000e+00, %..critedge51_crit_edge.i ]
  %i.df = add i32 %i.bs, %i.bw
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !247
  %i.dj = add i32 %i.bs, %indvars
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !247
  %i.dn = fadd double %i.di, %i.dm
  %i.do = fmul double %i.dn, 5.000000e-01
  %i.dp = load double, ptr %i.au, align 8, !tbaa !247, !noalias !8975 ; 2 uses
  %i.dq = trunc i64 %indvars.iv to i32
  %i.dr = sub i32 %i.dq, %i.aw
  %i.ds = sitofp i32 %i.dr to double
  %i.dt = fadd double %i.ds, 5.000000e-01
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.dt, double %i.dp)
  %i.dv = sub nsw i32 %.sroa.071.0.i, %i.aw
  %i.dw = sitofp i32 %i.dv to double
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.dw, double %i.dp)
  %i.dy = fsub double %i.du, %i.dx
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.ci, double -5.000000e-01, double %i.dy)
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.de, double %i.cq)
  %i.eb = fmul double %i.do, %i.ea
  %.reass33 = add i32 %invariant.op32, %i.bw
  %i.ec = sext i32 %.reass33 to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.ec
  store double %i.eb, ptr %i.ed, align 8, !tbaa !247
  %exitcond.not = icmp eq i32 %i.bj, %indvars
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !8985
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10MultiPatchI7GridTag6RemoteI5BrickEEE3LocILi1EEEES0_IS6_dSH_ESN_SN_EC2ERKSM_RKSN_SS_SS_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %4) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !8986
  store i32 %i.a, ptr %0, align 8, !tbaa !8986
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !8989
  store i32 %i.f, ptr %i.d, align 8, !tbaa !8989
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !8990
  store i64 %i.i, ptr %i.g, align 8, !tbaa !8990
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8202 ; 4 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !8202
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10MultiPatchI7GridTag6RemoteI5BrickEEE3LocILi1EEEELb0E18RefBlockControllerISG_EEC2ERKSJ_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.l, align 4, !tbaa !719
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !719
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10MultiPatchI7GridTag6RemoteI5BrickEEE3LocILi1EEEELb0E18RefBlockControllerISG_EEC2ERKSJ_.exit.i.i

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10MultiPatchI7GridTag6RemoteI5BrickEEE3LocILi1EEEELb0E18RefBlockControllerISG_EEC2ERKSJ_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !4
  store i32 %i.q, ptr %i.o, align 8, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load i32, ptr %i.v, align 8, !tbaa !4
  store i32 %i.w, ptr %i.u, align 8, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !4
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
end_hunk_3
begin_hunk_4_@_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES0_IS6_dSC_ESI_SI_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE:bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !2470 ; 6 uses
  %.not.i.i.i.i.us.i.i.i.i.i38 = icmp eq ptr %i.dg, %i.db
  br i1 %.not.i.i.i.i.us.i.i.i.i.i38, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = load ptr, ptr %i.co, align 8, !tbaa !6282 ; 2 uses
  %.not8.i.i.i.i.us.i.i.i.i.i39 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not8.i.i.i.i.us.i.i.i.i.i39, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.di = icmp eq ptr %i.db, null
  br i1 %i.di, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = icmp eq ptr %i.dh, null
  br i1 %i.dj, label %bb.u, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40

bb.u:                                             ; preds = %bb.t
  store ptr %i.dg, ptr %i.co, align 8, !tbaa !6282
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40

bb.v:                                             ; preds = %bb.s
  store ptr %i.dg, ptr %i.cn, align 8, !tbaa !6280
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40: ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  %.promoted.us13.i.i.i.i.i41 = phi ptr [ %.promoted.us14.i.i.i.i.i37, %bb.q ], [ %.promoted.us14.i.i.i.i.i37, %bb.r ], [ %i.dg, %bb.v ], [ %.promoted.us14.i.i.i.i.i37, %bb.t ], [ %.promoted.us14.i.i.i.i.i37, %bb.u ] ; 2 uses
  %i.dk = phi ptr [ %i.db, %bb.q ], [ %i.db, %bb.r ], [ %i.dg, %bb.v ], [ %i.db, %bb.t ], [ %i.db, %bb.u ]
  %indvars.iv.next.i.i.i.i.i42 = add nuw nsw i64 %indvars.iv.i.i.i.i.i36, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i43 = icmp eq i64 %indvars.iv.next.i.i.i.i.i42, %wide.trip.count.i.i.i.i.i32
  br i1 %exitcond.not.i.i.i.i.i43, label %._crit_edge.us.i.i.i.i.i44, label %bb.q, !llvm.loop !6283

._crit_edge.us.i.i.i.i.i44:                       ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40
  %indvars.iv.next19.i.i.i.i.i45 = add nuw nsw i64 %indvars.iv18.i.i.i.i.i34, 1 ; 2 uses
  %exitcond22.not.i.i.i.i.i46 = icmp eq i64 %indvars.iv.next19.i.i.i.i.i45, %wide.trip.count21.i.i.i.i.i31
  br i1 %exitcond22.not.i.i.i.i.i46, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit47, label %.preheader.us.i.i.i.i.i33, !llvm.loop !6284

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit47: ; preds = %._crit_edge.us.i.i.i.i.i44, %.preheader.lr.ph.i.i.i.i.i28, %bb.p, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit
  %i.dl = and i64 %i.b, 8
  %.not70 = icmp eq i64 %i.dl, 0
  br i1 %.not70, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit67, label %bb.w

bb.w:                                             ; preds = %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit47
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !6256 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.preheader.lr.ph.i.i.i.i.i48, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit67

.preheader.lr.ph.i.i.i.i.i48:                     ; preds = %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !597
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !595
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = sdiv exact i64 %i.dv, 12                ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = icmp sgt i32 %i.dx, 0
  %i.dz = load ptr, ptr %1, align 8, !nonnull !59, !align !2135 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  br i1 %i.dy, label %.preheader.lr.ph.split.us.i.i.i.i.i49, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit67

.preheader.lr.ph.split.us.i.i.i.i.i49:            ; preds = %.preheader.lr.ph.i.i.i.i.i48
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !6266
  %i.ej = getelementptr inbounds [88 x i8], ptr %i.ei, i64 %i.ee
  %.promoted.i.i.i.i.i50 = load ptr, ptr %i.dz, align 8, !tbaa !6280
  %i.ek = sext i32 %i.ec to i64
  %wide.trip.count21.i.i.i.i.i51 = zext nneg i32 %i.dn to i64
  %wide.trip.count.i.i.i.i.i52 = and i64 %i.dw, 2147483647
  br label %.preheader.us.i.i.i.i.i53

.preheader.us.i.i.i.i.i53:                        ; preds = %._crit_edge.us.i.i.i.i.i64, %.preheader.lr.ph.split.us.i.i.i.i.i49
  %indvars.iv18.i.i.i.i.i54 = phi i64 [ %indvars.iv.next19.i.i.i.i.i65, %._crit_edge.us.i.i.i.i.i64 ], [ 0, %.preheader.lr.ph.split.us.i.i.i.i.i49 ] ; 2 uses
  %.promoted.us15.i.i.i.i.i55 = phi ptr [ %.promoted.us13.i.i.i.i.i61, %._crit_edge.us.i.i.i.i.i64 ], [ %.promoted.i.i.i.i.i50, %.preheader.lr.ph.split.us.i.i.i.i.i49 ] ; 2 uses
  %i.el = mul nsw i64 %indvars.iv18.i.i.i.i.i54, %i.ek
  %i.em = getelementptr [88 x i8], ptr %i.ej, i64 %i.el
  br label %bb.x

bb.x:                                             ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i60, %.preheader.us.i.i.i.i.i53
  %indvars.iv.i.i.i.i.i56 = phi i64 [ 0, %.preheader.us.i.i.i.i.i53 ], [ %indvars.iv.next.i.i.i.i.i62, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i60 ] ; 2 uses
  %.promoted.us14.i.i.i.i.i57 = phi ptr [ %.promoted.us15.i.i.i.i.i55, %.preheader.us.i.i.i.i.i53 ], [ %.promoted.us13.i.i.i.i.i61, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i60 ] ; 4 uses
  %i.en = phi ptr [ %.promoted.us15.i.i.i.i.i55, %.preheader.us.i.i.i.i.i53 ], [ %i.ew, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i60 ] ; 6 uses
  %i.eo = getelementptr [88 x i8], ptr %i.em, i64 %indvars.iv.i.i.i.i.i56
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !2462
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !2470 ; 6 uses
  %.not.i.i.i.i.us.i.i.i.i.i58 = icmp eq ptr %i.es, %i.en
  br i1 %.not.i.i.i.i.us.i.i.i.i.i58, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i60, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.et = load ptr, ptr %i.ea, align 8, !tbaa !6282 ; 2 uses
  %.not8.i.i.i.i.us.i.i.i.i.i59 = icmp eq ptr %i.es, %i.et
  br i1 %.not8.i.i.i.i.us.i.i.i.i.i59, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i60, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = icmp eq ptr %i.en, null
  br i1 %i.eu, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ev = icmp eq ptr %i.et, null
  br i1 %i.ev, label %bb.ab, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i60

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.es, ptr %i.ea, align 8, !tbaa !6282
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i60

bb.ac:                                            ; preds = %bb.z
  store ptr %i.es, ptr %i.dz, align 8, !tbaa !6280
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i60

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i60: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  %.promoted.us13.i.i.i.i.i61 = phi ptr [ %.promoted.us14.i.i.i.i.i57, %bb.x ], [ %.promoted.us14.i.i.i.i.i57, %bb.y ], [ %i.es, %bb.ac ], [ %.promoted.us14.i.i.i.i.i57, %bb.aa ], [ %.promoted.us14.i.i.i.i.i57, %bb.ab ] ; 2 uses
  %i.ew = phi ptr [ %i.en, %bb.x ], [ %i.en, %bb.y ], [ %i.es, %bb.ac ], [ %i.en, %bb.aa ], [ %i.en, %bb.ab ]
  %indvars.iv.next.i.i.i.i.i62 = add nuw nsw i64 %indvars.iv.i.i.i.i.i56, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i63 = icmp eq i64 %indvars.iv.next.i.i.i.i.i62, %wide.trip.count.i.i.i.i.i52
  br i1 %exitcond.not.i.i.i.i.i63, label %._crit_edge.us.i.i.i.i.i64, label %bb.x, !llvm.loop !6283

._crit_edge.us.i.i.i.i.i64:                       ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i60
  %indvars.iv.next19.i.i.i.i.i65 = add nuw nsw i64 %indvars.iv18.i.i.i.i.i54, 1 ; 2 uses
  %exitcond22.not.i.i.i.i.i66 = icmp eq i64 %indvars.iv.next19.i.i.i.i.i65, %wide.trip.count21.i.i.i.i.i51
  br i1 %exitcond22.not.i.i.i.i.i66, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit67, label %.preheader.us.i.i.i.i.i53, !llvm.loop !6284

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit67: ; preds = %._crit_edge.us.i.i.i.i.i64, %.preheader.lr.ph.i.i.i.i.i48, %bb.w, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES3_IS9_dSF_ESL_SL_EN4Adv51X13MomentumfluxYILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !9187
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not37 = icmp sgt i32 %i.e, %i.m
  br i1 %.not37, label %._crit_edge40, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2334 = icmp sgt i32 %i.c, %i.q
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2334, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge40, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !9185 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !6263
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !6266
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !6262
  %i.ae = getelementptr inbounds [88 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2836 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !4
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !6263
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !6266
  %i.ao = load i64, ptr %i.w, align 8, !tbaa !6262
  %i.ap = getelementptr inbounds [88 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2836 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !4
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !741, !noalias !59 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 128 ; 2 uses
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !6263
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !6266
  %i.az = load i64, ptr %i.u, align 8, !tbaa !6262
  %i.ba = getelementptr inbounds [88 x i8], ptr %i.ay, i64 %i.az ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2836 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre.i, i64 104
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4, !noalias !9191 ; 2 uses
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !9179
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !9180
  %i.bn = load i64, ptr %i.s, align 8, !tbaa !9178
  %i.bo = getelementptr inbounds [96 x i8], ptr %i.bm, i64 %i.bn ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !3382
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !236
  %i.bx = sext i32 %i.bw to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.bq, i64 %i.bx
  %i.by = zext i32 %i.a to i64
  %i.bz = add i32 %i.g, %i.a
  %i.ca = add i32 %i.i, %i.c
  %i.cb = add i32 %i.k, %i.e
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge36.split
  %.02238 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.cn, %._crit_edge36.split ] ; 5 uses
  %i.cc = mul nsw i32 %i.ak, %.02238
  %i.cd = mul nsw i32 %i.av, %.02238              ; 3 uses
  %invariant.op = add i32 %i.cd, -1
  %invariant.op30 = add i32 %i.cd, 1
  %i.ce = mul nsw i32 %i.bg, %.02238
  %i.cf = mul nsw i32 %i.bu, %.02238
  br label %.preheader

._crit_edge40:                                    ; preds = %._crit_edge36.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %.02135 = phi i32 [ %i.c, %.preheader27 ], [ %i.co, %._crit_edge ] ; 6 uses
  %i.cg = mul nsw i32 %i.ai, %.02135
  %i.ch = add nsw i32 %.02135, -1                 ; 2 uses
  %i.ci = mul nsw i32 %i.ai, %i.ch
  %i.cj = mul nsw i32 %i.at, %.02135
  %i.ck = mul nsw i32 %i.be, %.02135
  %i.cl = mul nsw i32 %i.be, %i.ch
  %i.cm = mul nsw i32 %i.bs, %.02135
  %invariant.op32 = add i32 %i.cm, %i.cf
  br label %bb.b

._crit_edge36.split:                              ; preds = %._crit_edge
  %i.cn = add i32 %.02238, 1                      ; 2 uses
  %exitcond48.not = icmp eq i32 %i.cn, %i.cb
  br i1 %exitcond48.not, label %._crit_edge40, label %.preheader27, !llvm.loop !9194

._crit_edge:                                      ; preds = %_ZNK4Adv51X13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit
  %i.co = add i32 %.02135, 1                      ; 2 uses
  %exitcond47.not = icmp eq i32 %i.co, %i.ca
  br i1 %exitcond47.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !9195

bb.b:                                             ; preds = %.preheader, %_ZNK4Adv51X13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit
  %indvars.iv = phi i64 [ %i.by, %.preheader ], [ %indvars.iv.next, %_ZNK4Adv51X13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit ] ; 3 uses
  %i.cp = trunc i64 %indvars.iv to i32            ; 4 uses
  %i.cq = add i32 %i.cc, %i.cp                    ; 2 uses
  %i.cr = add i32 %i.cq, %i.cg
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !247
  %i.cv = add i32 %i.cq, %i.ci
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !247
  %i.cz = fmul double %i.cy, 5.000000e-01
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cu, double 5.000000e-01, double %i.cz)
  %i.db = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !9196
  %i.dc = fmul double %i.db, %i.da                ; 2 uses
  %i.dd = fcmp ogt double %i.dc, 0.000000e+00
  %i.de = sext i1 %i.dd to i32
  %.sroa.091.0.i = add nsw i32 %i.cp, %i.de       ; 2 uses
  %i.df = add i32 %i.cj, %.sroa.091.0.i           ; 3 uses
  %.reass = add i32 %i.df, %invariant.op
  %i.dg = sext i32 %.reass to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !247
  %i.dj = add i32 %i.df, %i.cd
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !247 ; 3 uses
  %.reass31 = add i32 %i.df, %invariant.op30
  %i.dn = sext i32 %.reass31 to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !247
  %i.dq = fsub double %i.dm, %i.di                ; 2 uses
  %i.dr = fsub double %i.dp, %i.dm                ; 2 uses
  %i.ds = fmul double %i.dq, %i.dr                ; 2 uses
  %i.dt = fcmp ogt double %i.ds, 0.000000e+00
  br i1 %i.dt, label %.critedge.i, label %..critedge62_crit_edge.i

..critedge62_crit_edge.i:                         ; preds = %bb.b
  %.pre116.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !9191
  br label %_ZNK4Adv51X13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit

.critedge.i:                                      ; preds = %bb.b
  %i.du = fmul nnan double %i.ds, 2.000000e+00
  %i.dv = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !9198 ; 3 uses
  %i.dw = fmul double %i.dq, %i.dv
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.dv, double %i.dw)
  %i.dy = fdiv double %i.du, %i.dx
  br label %_ZNK4Adv51X13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit

_ZNK4Adv51X13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit: ; preds = %..critedge62_crit_edge.i, %.critedge.i
  %i.dz = phi double [ %i.dv, %.critedge.i ], [ %.pre116.i, %..critedge62_crit_edge.i ] ; 2 uses
  %i.ea = phi double [ %i.dy, %.critedge.i ], [ 0.000000e+00, %..critedge62_crit_edge.i ]
  %i.eb = add i32 %i.ce, %i.cp                    ; 2 uses
  %i.ec = add i32 %i.eb, %i.ck
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !247
  %i.eg = add i32 %i.eb, %i.cl
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.eh
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !247
  %i.ek = fmul double %i.ej, 5.000000e-01
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ef, double 5.000000e-01, double %i.ek)
  %i.em = load double, ptr %i.bh, align 8, !tbaa !247, !noalias !9191 ; 2 uses
  %i.en = trunc i64 %indvars.iv to i32
  %i.eo = sub i32 %i.en, %i.bj
  %i.ep = sitofp i32 %i.eo to double
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.ep, double %i.em)
  %i.er = sub nsw i32 %.sroa.091.0.i, %i.bj
  %i.es = sitofp i32 %i.er to double
  %i.et = fadd double %i.es, 5.000000e-01
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.et, double %i.em)
  %i.ev = fsub double %i.eq, %i.eu
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.dc, double -5.000000e-01, double %i.ev)
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.ew, double %i.ea, double %i.dm)
  %i.ey = fmul double %i.el, %i.ex
  %.reass33 = add i32 %invariant.op32, %i.cp
  %i.ez = sext i32 %.reass33 to i64
  %gep = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.ez
  store double %i.ey, ptr %gep, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bz, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !9201
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES0_IS6_dSC_ESI_SI_EC2ERKSH_RKSI_SN_SN_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %4) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !9172
  store i32 %i.a, ptr %0, align 8, !tbaa !9172
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !9177
  store i32 %i.f, ptr %i.d, align 8, !tbaa !9177
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9178
  store i64 %i.i, ptr %i.g, align 8, !tbaa !9178
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9179 ; 4 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !9179
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEELb0E18RefBlockControllerISB_EEC2ERKSE_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.l, align 4, !tbaa !719
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !719
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEELb0E18RefBlockControllerISB_EEC2ERKSE_.exit.i.i

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEELb0E18RefBlockControllerISB_EEC2ERKSE_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !4
  store i32 %i.q, ptr %i.o, align 8, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load i32, ptr %i.v, align 8, !tbaa !4
  store i32 %i.w, ptr %i.u, align 8, !tbaa !4
end_hunk_4
begin_hunk_5_@_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES0_IS6_dSC_ES0_IS6_d13ExpressionTagI10BinaryNodeI5OpAddSI_6ScalarIdEEEESI_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE:bb.a
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !2470 ; 6 uses
  %.not.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dg, %i.db
  br i1 %.not.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = load ptr, ptr %i.co, align 8, !tbaa !6282 ; 2 uses
  %.not8.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dg, %i.dh
  br i1 %.not8.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.di = icmp eq ptr %i.db, null
  br i1 %i.di, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = icmp eq ptr %i.dh, null
  br i1 %i.dj, label %bb.u, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  store ptr %i.dg, ptr %i.co, align 8, !tbaa !6282
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.s
  store ptr %i.dg, ptr %i.cn, align 8, !tbaa !6280
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i.i.i.i.i.i.i

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  %.promoted.us13.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.promoted.us14.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ %.promoted.us14.i.i.i.i.i.i.i.i.i.i.i, %bb.r ], [ %i.dg, %bb.v ], [ %.promoted.us14.i.i.i.i.i.i.i.i.i.i.i, %bb.t ], [ %.promoted.us14.i.i.i.i.i.i.i.i.i.i.i, %bb.u ] ; 2 uses
  %i.dk = phi ptr [ %i.db, %bb.q ], [ %i.db, %bb.r ], [ %i.dg, %bb.v ], [ %i.db, %bb.t ], [ %i.db, %bb.u ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.us.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, !llvm.loop !6283

._crit_edge.us.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.next19.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv18.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond22.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next19.i.i.i.i.i.i.i.i.i.i.i, %wide.trip.count21.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond22.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd13ExpressionTagI10BinaryNodeI5OpAddS5_ISB_d10BrickViewUE6ScalarIdEEEEEEvRKT_.exit, label %.preheader.us.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !6284

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd13ExpressionTagI10BinaryNodeI5OpAddS5_ISB_d10BrickViewUE6ScalarIdEEEEEEvRKT_.exit: ; preds = %._crit_edge.us.i.i.i.i.i.i.i.i.i.i.i, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.p, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit
  %i.dl = and i64 %i.b, 8
  %.not50 = icmp eq i64 %i.dl, 0
  br i1 %.not50, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit47, label %bb.w

bb.w:                                             ; preds = %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd13ExpressionTagI10BinaryNodeI5OpAddS5_ISB_d10BrickViewUE6ScalarIdEEEEEEvRKT_.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !6256 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.preheader.lr.ph.i.i.i.i.i28, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit47

.preheader.lr.ph.i.i.i.i.i28:                     ; preds = %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !597
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !595
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = sdiv exact i64 %i.dv, 12                ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = icmp sgt i32 %i.dx, 0
  %i.dz = load ptr, ptr %1, align 8, !nonnull !59, !align !2135 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  br i1 %i.dy, label %.preheader.lr.ph.split.us.i.i.i.i.i29, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit47

.preheader.lr.ph.split.us.i.i.i.i.i29:            ; preds = %.preheader.lr.ph.i.i.i.i.i28
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !6266
  %i.ej = getelementptr inbounds [88 x i8], ptr %i.ei, i64 %i.ee
  %.promoted.i.i.i.i.i30 = load ptr, ptr %i.dz, align 8, !tbaa !6280
  %i.ek = sext i32 %i.ec to i64
  %wide.trip.count21.i.i.i.i.i31 = zext nneg i32 %i.dn to i64
  %wide.trip.count.i.i.i.i.i32 = and i64 %i.dw, 2147483647
  br label %.preheader.us.i.i.i.i.i33

.preheader.us.i.i.i.i.i33:                        ; preds = %._crit_edge.us.i.i.i.i.i44, %.preheader.lr.ph.split.us.i.i.i.i.i29
  %indvars.iv18.i.i.i.i.i34 = phi i64 [ %indvars.iv.next19.i.i.i.i.i45, %._crit_edge.us.i.i.i.i.i44 ], [ 0, %.preheader.lr.ph.split.us.i.i.i.i.i29 ] ; 2 uses
  %.promoted.us15.i.i.i.i.i35 = phi ptr [ %.promoted.us13.i.i.i.i.i41, %._crit_edge.us.i.i.i.i.i44 ], [ %.promoted.i.i.i.i.i30, %.preheader.lr.ph.split.us.i.i.i.i.i29 ] ; 2 uses
  %i.el = mul nsw i64 %indvars.iv18.i.i.i.i.i34, %i.ek
  %i.em = getelementptr [88 x i8], ptr %i.ej, i64 %i.el
  br label %bb.x

bb.x:                                             ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40, %.preheader.us.i.i.i.i.i33
  %indvars.iv.i.i.i.i.i36 = phi i64 [ 0, %.preheader.us.i.i.i.i.i33 ], [ %indvars.iv.next.i.i.i.i.i42, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40 ] ; 2 uses
  %.promoted.us14.i.i.i.i.i37 = phi ptr [ %.promoted.us15.i.i.i.i.i35, %.preheader.us.i.i.i.i.i33 ], [ %.promoted.us13.i.i.i.i.i41, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40 ] ; 4 uses
  %i.en = phi ptr [ %.promoted.us15.i.i.i.i.i35, %.preheader.us.i.i.i.i.i33 ], [ %i.ew, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40 ] ; 6 uses
  %i.eo = getelementptr [88 x i8], ptr %i.em, i64 %indvars.iv.i.i.i.i.i36
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !2462
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !2470 ; 6 uses
  %.not.i.i.i.i.us.i.i.i.i.i38 = icmp eq ptr %i.es, %i.en
  br i1 %.not.i.i.i.i.us.i.i.i.i.i38, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.et = load ptr, ptr %i.ea, align 8, !tbaa !6282 ; 2 uses
  %.not8.i.i.i.i.us.i.i.i.i.i39 = icmp eq ptr %i.es, %i.et
  br i1 %.not8.i.i.i.i.us.i.i.i.i.i39, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = icmp eq ptr %i.en, null
  br i1 %i.eu, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ev = icmp eq ptr %i.et, null
  br i1 %i.ev, label %bb.ab, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.es, ptr %i.ea, align 8, !tbaa !6282
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40

bb.ac:                                            ; preds = %bb.z
  store ptr %i.es, ptr %i.dz, align 8, !tbaa !6280
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  %.promoted.us13.i.i.i.i.i41 = phi ptr [ %.promoted.us14.i.i.i.i.i37, %bb.x ], [ %.promoted.us14.i.i.i.i.i37, %bb.y ], [ %i.es, %bb.ac ], [ %.promoted.us14.i.i.i.i.i37, %bb.aa ], [ %.promoted.us14.i.i.i.i.i37, %bb.ab ] ; 2 uses
  %i.ew = phi ptr [ %i.en, %bb.x ], [ %i.en, %bb.y ], [ %i.es, %bb.ac ], [ %i.en, %bb.aa ], [ %i.en, %bb.ab ]
  %indvars.iv.next.i.i.i.i.i42 = add nuw nsw i64 %indvars.iv.i.i.i.i.i36, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i43 = icmp eq i64 %indvars.iv.next.i.i.i.i.i42, %wide.trip.count.i.i.i.i.i32
  br i1 %exitcond.not.i.i.i.i.i43, label %._crit_edge.us.i.i.i.i.i44, label %bb.x, !llvm.loop !6283

._crit_edge.us.i.i.i.i.i44:                       ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i40
  %indvars.iv.next19.i.i.i.i.i45 = add nuw nsw i64 %indvars.iv18.i.i.i.i.i34, 1 ; 2 uses
  %exitcond22.not.i.i.i.i.i46 = icmp eq i64 %indvars.iv.next19.i.i.i.i.i45, %wide.trip.count21.i.i.i.i.i31
  br i1 %exitcond22.not.i.i.i.i.i46, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit47, label %.preheader.us.i.i.i.i.i33, !llvm.loop !6284

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit47: ; preds = %._crit_edge.us.i.i.i.i.i44, %.preheader.lr.ph.i.i.i.i.i28, %bb.w, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd13ExpressionTagI10BinaryNodeI5OpAddS5_ISB_d10BrickViewUE6ScalarIdEEEEEEvRKT_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES3_IS9_dSF_ES3_IS9_d13ExpressionTagI10BinaryNodeI5OpAddSL_6ScalarIdEEEESL_EN4Adv51X13MomentumfluxZILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !9496
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not37 = icmp sgt i32 %i.e, %i.m
  br i1 %.not37, label %._crit_edge40, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !9494 ; 10 uses
  %.not2334 = icmp sgt i32 %i.c, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 432
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2334, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge40, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 552
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 544
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !6263
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !6266
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !6262
  %i.af = getelementptr inbounds [88 x i8], ptr %i.ad, i64 %i.ae ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2836 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !4  ; 2 uses
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !6263
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !6266
  %i.ap = load i64, ptr %i.x, align 8, !tbaa !6262
  %i.aq = getelementptr inbounds [88 x i8], ptr %i.ao, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2836 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !4
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !741, !noalias !59 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 128 ; 2 uses
  %i.ax = load ptr, ptr %i.u, align 8, !tbaa !6263
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !6266
  %i.ba = load i64, ptr %i.v, align 8, !tbaa !6262
  %i.bb = getelementptr inbounds [88 x i8], ptr %i.az, i64 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2836 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !4  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.i, i64 104
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4, !noalias !9498 ; 2 uses
  %i.bl = load ptr, ptr %i.s, align 8, !tbaa !9179
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !9180
  %i.bo = load i64, ptr %i.t, align 8, !tbaa !9178
  %i.bp = getelementptr inbounds [96 x i8], ptr %i.bn, i64 %i.bo ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !3382
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !236
  %i.by = sext i32 %i.bx to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.br, i64 %i.by
  %i.bz = zext i32 %i.a to i64
  %i.ca = add i32 %i.g, %i.a
  %i.cb = add i32 %i.i, %i.c
  %i.cc = add i32 %i.k, %i.e
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge36.split
  %.02238 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.co, %._crit_edge36.split ] ; 6 uses
  %i.cd = add nsw i32 %.02238, -1                 ; 2 uses
  %i.ce = mul nsw i32 %i.al, %.02238
  %i.cf = mul nsw i32 %i.al, %i.cd
  %i.cg = mul nsw i32 %i.aw, %.02238              ; 3 uses
  %invariant.op = add i32 %i.cg, -1
  %invariant.op30 = add i32 %i.cg, 1
  %i.ch = mul nsw i32 %i.bh, %.02238
  %i.ci = mul nsw i32 %i.bh, %i.cd
  %i.cj = mul nsw i32 %i.bv, %.02238
  br label %.preheader

._crit_edge40:                                    ; preds = %._crit_edge36.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %.02135 = phi i32 [ %i.c, %.preheader27 ], [ %i.cp, %._crit_edge ] ; 5 uses
  %i.ck = mul nsw i32 %i.aj, %.02135
  %i.cl = mul nsw i32 %i.au, %.02135
  %i.cm = mul nsw i32 %i.bf, %.02135
  %i.cn = mul nsw i32 %i.bt, %.02135
  %invariant.op32 = add i32 %i.cn, %i.cj
  br label %bb.b

._crit_edge36.split:                              ; preds = %._crit_edge
  %i.co = add i32 %.02238, 1                      ; 2 uses
  %exitcond48.not = icmp eq i32 %i.co, %i.cc
  br i1 %exitcond48.not, label %._crit_edge40, label %.preheader27, !llvm.loop !9501

._crit_edge:                                      ; preds = %_ZNK4Adv51X13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ES4_ISA_d13ExpressionTagI10BinaryNodeI5OpAddSM_6ScalarIdEEEESM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit
  %i.cp = add i32 %.02135, 1                      ; 2 uses
  %exitcond47.not = icmp eq i32 %i.cp, %i.cb
  br i1 %exitcond47.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !9502

bb.b:                                             ; preds = %.preheader, %_ZNK4Adv51X13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ES4_ISA_d13ExpressionTagI10BinaryNodeI5OpAddSM_6ScalarIdEEEESM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit
  %indvars.iv = phi i64 [ %i.bz, %.preheader ], [ %indvars.iv.next, %_ZNK4Adv51X13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ES4_ISA_d13ExpressionTagI10BinaryNodeI5OpAddSM_6ScalarIdEEEESM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit ] ; 3 uses
  %i.cq = trunc i64 %indvars.iv to i32            ; 4 uses
  %i.cr = add i32 %i.ck, %i.cq                    ; 2 uses
  %i.cs = add i32 %i.ce, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !247
  %i.cw = add i32 %i.cf, %i.cr
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !247
  %i.da = fmul double %i.cz, 5.000000e-01
  %i.db = tail call double @llvm.fmuladd.f64(double %i.cv, double 5.000000e-01, double %i.da)
  %i.dc = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !9503
  %i.dd = fmul double %i.dc, %i.db                ; 2 uses
  %i.de = fcmp ogt double %i.dd, 0.000000e+00
  %i.df = sext i1 %i.de to i32
  %.sroa.0100.0.i = add nsw i32 %i.cq, %i.df      ; 2 uses
  %i.dg = add i32 %i.cl, %.sroa.0100.0.i          ; 3 uses
  %.reass = add i32 %i.dg, %invariant.op
  %i.dh = sext i32 %.reass to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !247
  %i.dk = load double, ptr %i.r, align 8, !tbaa !247 ; 3 uses
  %i.dl = fadd double %i.dj, %i.dk
  %i.dm = add nsw i32 %i.dg, %i.cg
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !247
  %i.dq = fadd double %i.dk, %i.dp                ; 3 uses
  %.reass31 = add i32 %i.dg, %invariant.op30
  %i.dr = sext i32 %.reass31 to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !247
  %i.du = fadd double %i.dk, %i.dt
  %i.dv = fsub double %i.dq, %i.dl                ; 2 uses
  %i.dw = fsub double %i.du, %i.dq                ; 2 uses
  %i.dx = fmul double %i.dv, %i.dw                ; 2 uses
  %i.dy = fcmp ogt double %i.dx, 0.000000e+00
  br i1 %i.dy, label %.critedge.i, label %..critedge68_crit_edge.i

..critedge68_crit_edge.i:                         ; preds = %bb.b
  %.pre125.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !9498
  br label %_ZNK4Adv51X13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ES4_ISA_d13ExpressionTagI10BinaryNodeI5OpAddSM_6ScalarIdEEEESM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit

.critedge.i:                                      ; preds = %bb.b
  %i.dz = fmul nnan double %i.dx, 2.000000e+00
  %i.ea = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !9505 ; 3 uses
  %i.eb = fmul double %i.dv, %i.ea
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.ea, double %i.eb)
  %i.ed = fdiv double %i.dz, %i.ec
  br label %_ZNK4Adv51X13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ES4_ISA_d13ExpressionTagI10BinaryNodeI5OpAddSM_6ScalarIdEEEESM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit

_ZNK4Adv51X13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ES4_ISA_d13ExpressionTagI10BinaryNodeI5OpAddSM_6ScalarIdEEEESM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit: ; preds = %..critedge68_crit_edge.i, %.critedge.i
  %i.ee = phi double [ %i.ea, %.critedge.i ], [ %.pre125.i, %..critedge68_crit_edge.i ] ; 2 uses
  %i.ef = phi double [ %i.ed, %.critedge.i ], [ 0.000000e+00, %..critedge68_crit_edge.i ]
  %i.eg = add i32 %i.cm, %i.cq                    ; 2 uses
  %i.eh = add i32 %i.eg, %i.ch
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !247
  %i.el = add i32 %i.eg, %i.ci
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.em
  %i.eo = load double, ptr %i.en, align 8, !tbaa !247
  %i.ep = fmul double %i.eo, 5.000000e-01
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.ek, double 5.000000e-01, double %i.ep)
  %i.er = load double, ptr %i.bi, align 8, !tbaa !247, !noalias !9498 ; 2 uses
  %i.es = trunc i64 %indvars.iv to i32
  %i.et = sub i32 %i.es, %i.bk
  %i.eu = sitofp i32 %i.et to double
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.eu, double %i.er)
  %i.ew = sub nsw i32 %.sroa.0100.0.i, %i.bk
  %i.ex = sitofp i32 %i.ew to double
  %i.ey = fadd double %i.ex, 5.000000e-01
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ey, double %i.er)
  %i.fa = fsub double %i.ev, %i.ez
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.dd, double -5.000000e-01, double %i.fa)
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.fb, double %i.ef, double %i.dq)
  %i.fd = fmul double %i.eq, %i.fc
  %.reass33 = add i32 %invariant.op32, %i.cq
  %i.fe = sext i32 %.reass33 to i64
  %gep = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.fe
  store double %i.fd, ptr %gep, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ca, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !9508
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES0_IS6_dSC_ES0_IS6_d13ExpressionTagI10BinaryNodeI5OpAddSI_6ScalarIdEEEESI_EC2ERKSH_RKSI_RKSQ_SV_(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef nonnull align 8 dereferenceable(144) %4) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !9172
  store i32 %i.a, ptr %0, align 8, !tbaa !9172
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !9177
  store i32 %i.f, ptr %i.d, align 8, !tbaa !9177
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9178
  store i64 %i.i, ptr %i.g, align 8, !tbaa !9178
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9179 ; 4 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !9179
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEELb0E18RefBlockControllerISB_EEC2ERKSE_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.l, align 4, !tbaa !719
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !719
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEELb0E18RefBlockControllerISB_EEC2ERKSE_.exit.i.i

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEELb0E18RefBlockControllerISB_EEC2ERKSE_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !4
  store i32 %i.q, ptr %i.o, align 8, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
end_hunk_5
begin_hunk_6_@_Z6assignI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEd16OpSubtractAssignERK5FieldIT_T0_T1_ESJ_RKT2_RKT3_:bb.a
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ek, i64 232
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !2268 ; 3 uses
  %.not.i.i.i1.i.i97 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i1.i.i97, label %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EED2Ev.exit2.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EED2Ev.exit.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ek, i64 248
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !2269
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fk to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fp) #49
  br label %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EED2Ev.exit2.i.i

_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EED2Ev.exit2.i.i: ; preds = %bb.n, %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EED2Ev.exit.i.i
  %i.fq = load ptr, ptr %i.ep, align 8, !tbaa !2268 ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i3.i.i, label %_ZN18GridLayoutViewDataILi3ELi3EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EED2Ev.exit2.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ek, i64 224
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !2269
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fq to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.fv) #49
  br label %_ZN18GridLayoutViewDataILi3ELi3EED2Ev.exit

_ZN18GridLayoutViewDataILi3ELi3EED2Ev.exit:       ; preds = %_ZNSt6vectorIP4NodeI8IntervalILi3EES2_ESaIS4_EED2Ev.exit2.i.i, %bb.o
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV10GridLayoutILi3EE, i64 16), ptr %i.fw, align 8, !tbaa !73
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !717 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 288 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !730 ; 3 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph.i.i.i, label %_ZN10ObservableI14GridLayoutDataILi3EEE6detachER8ObserverIS1_E.exit.i

.lr.ph.i.i.i:                                     ; preds = %_ZN18GridLayoutViewDataILi3ELi3EED2Ev.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 264
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !725 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.ga to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN10ObservableI14GridLayoutDataILi3EEE6detachER8ObserverIS1_E.exit.i, label %bb.q, !llvm.loop !2122

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.p ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv.i.i.i
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !723
  %i.gg = icmp eq ptr %i.gf, %i.fw
  br i1 %i.gg, label %bb.r, label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv.i.i.i ; 3 uses
  %i.gi = add nsw i32 %i.ga, -1
  store i32 %i.gi, ptr %i.fz, align 8, !tbaa !730
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 272 ; 3 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !2123 ; 5 uses
  %.not.i.i.i.i.i126 = icmp eq ptr %i.gj, %i.gl
  br i1 %.not.i.i.i.i.i126, label %_ZNSt6vectorIP8ObserverI14GridLayoutDataILi3EEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gj to i64
  %i.go = sub i64 %i.gm, %i.gn                    ; 3 uses
  %i.gp = icmp sgt i64 %i.go, 8
  br i1 %i.gp, label %bb.t, label %bb.u, !prof !183

bb.t:                                             ; preds = %bb.s
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gh, ptr nonnull align 8 %i.gj, i64 %i.go, i1 false)
  %.pre.i.i.i.i.i127 = load ptr, ptr %i.gk, align 8, !tbaa !728
  br label %_ZNSt6vectorIP8ObserverI14GridLayoutDataILi3EEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.gq = icmp eq i64 %i.go, 8
  br i1 %i.gq, label %bb.v, label %_ZNSt6vectorIP8ObserverI14GridLayoutDataILi3EEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.gr = load ptr, ptr %i.gj, align 8, !tbaa !723
  store ptr %i.gr, ptr %i.gh, align 8, !tbaa !723
  br label %_ZNSt6vectorIP8ObserverI14GridLayoutDataILi3EEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit.i.i.i

_ZNSt6vectorIP8ObserverI14GridLayoutDataILi3EEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit.i.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.r
  %i.gs = phi ptr [ %i.gl, %bb.v ], [ %i.gl, %bb.u ], [ %.pre.i.i.i.i.i127, %bb.t ], [ %i.gl, %bb.r ]
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -8
  store ptr %i.gt, ptr %i.gk, align 8, !tbaa !728
  br label %_ZN10ObservableI14GridLayoutDataILi3EEE6detachER8ObserverIS1_E.exit.i

_ZN10ObservableI14GridLayoutDataILi3EEE6detachER8ObserverIS1_E.exit.i: ; preds = %bb.p, %_ZNSt6vectorIP8ObserverI14GridLayoutDataILi3EEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit.i.i.i, %_ZN18GridLayoutViewDataILi3ELi3EED2Ev.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ek, i64 56 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !2124
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %.lr.ph.i.i2.i, label %_ZN10ObservableI10GridLayoutILi3EEE6notifyEi.exit.i.i

.lr.ph.i.i2.i:                                    ; preds = %_ZN10ObservableI14GridLayoutDataILi3EEE6detachER8ObserverIS1_E.exit.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i2.i
  %indvars.iv.i.i3.i = phi i64 [ 0, %.lr.ph.i.i2.i ], [ %indvars.iv.next.i.i4.i, %bb.w ] ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !2131
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.i.i3.i
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !2132 ; 2 uses
  %i.hc = load ptr, ptr %i.gu, align 8, !tbaa !2134, !nonnull !59, !align !2135
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13ObserverEvent, i64 16), ptr %5, align 8, !tbaa !73
  store i32 0, ptr %i.u, align 8, !tbaa !2136
  %i.hd = load i64, ptr @_ZN6Unique6next_sE, align 8, !tbaa !12 ; 2 uses
  %i.he = add nsw i64 %i.hd, 1
  store i64 %i.he, ptr @_ZN6Unique6next_sE, align 8, !tbaa !12
  store i64 %i.hd, ptr %i.v, align 8, !tbaa !2138
  %i.hf = load ptr, ptr %i.hb, align 8, !tbaa !73
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %i.hb, ptr noundef nonnull align 8 dereferenceable(53) %i.hc, ptr noundef nonnull align 8 dereferenceable(24) %5) #48, !inline_history !2573
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %indvars.iv.next.i.i4.i = add nuw nsw i64 %indvars.iv.i.i3.i, 1 ; 2 uses
  %i.hi = load i32, ptr %i.gv, align 8, !tbaa !2124
  %i.hj = sext i32 %i.hi to i64
  %i.hk = icmp slt i64 %indvars.iv.next.i.i4.i, %i.hj
  br i1 %i.hk, label %bb.w, label %_ZN10ObservableI10GridLayoutILi3EEE6notifyEi.exit.i.i, !llvm.loop !2140

_ZN10ObservableI10GridLayoutILi3EEE6notifyEi.exit.i.i: ; preds = %bb.w, %_ZN10ObservableI14GridLayoutDataILi3EEE6detachER8ObserverIS1_E.exit.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !2131 ; 3 uses
  %.not.i.i.i.i1.i124 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i1.i124, label %_ZN10ObservableI10GridLayoutILi3EEED2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN10ObservableI10GridLayoutILi3EEE6notifyEi.exit.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !2141
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hr) #49, !inline_history !2574
  br label %_ZN10ObservableI10GridLayoutILi3EEED2Ev.exit.i

_ZN10ObservableI10GridLayoutILi3EEED2Ev.exit.i:   ; preds = %bb.x, %_ZN10ObservableI10GridLayoutILi3EEE6notifyEi.exit.i.i
  %i.hs = load ptr, ptr %i.fx, align 8, !tbaa !717 ; 4 uses
  %.not.i.i.i.i125 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i125, label %_ZN10GridLayoutILi3EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN10ObservableI10GridLayoutILi3EEED2Ev.exit.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 244 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !719
  %i.hv = add nsw i32 %i.hu, -1                   ; 2 uses
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !719
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.z, label %_ZN10GridLayoutILi3EED2Ev.exit

bb.z:                                             ; preds = %bb.y
  call void @_ZN14GridLayoutDataILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(504) %i.hs) #48, !inline_history !2574
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef 504) #49, !inline_history !2574
  br label %_ZN10GridLayoutILi3EED2Ev.exit

_ZN10GridLayoutILi3EED2Ev.exit:                   ; preds = %_ZN10ObservableI10GridLayoutILi3EEED2Ev.exit.i, %bb.y, %bb.z
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef 296) #49
  br label %_ZN19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev.exit

_ZN19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev.exit: ; preds = %_ZN12RelationListD2Ev.exit.i, %bb.j, %_ZN10GridLayoutILi3EED2Ev.exit
  %i.hx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 104 ; 2 uses
  %i.hy = load ptr, ptr %i.dc, align 8, !tbaa !2538
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.hx, %i.hy
  br i1 %.not6.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2580

._crit_edge.thread.i.i.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %i.hz = phi ptr [ %.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.db, %.preheader.i.i.i.i.i.i ]
  call void @_ZdaPv(ptr noundef nonnull %i.hz) #49
  br label %_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEED2Ev.exit.i.i.i.i

_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEED2Ev.exit.i.i.i.i: ; preds = %._crit_edge.thread.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i, %bb.d, %bb.c
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 40) #49
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EED2Ev.exit.i

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EED2Ev.exit.i: ; preds = %_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEED2Ev.exit.i.i.i.i, %bb.b, %_ZNK18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EEplEl.exit11.thread.i
  %i.ia = load <4 x i32>, ptr %i.x, align 8, !tbaa !4
  store <4 x i32> %i.ia, ptr %i.w, align 8, !tbaa !4
  %i.ib = load <2 x i32>, ptr %i.ac, align 8, !tbaa !4
  store <2 x i32> %i.ib, ptr %i.ab, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !947
  %i.ic = load ptr, ptr %i.ah, align 8, !tbaa !741 ; 4 uses
  store ptr %i.ic, ptr %i.ag, align 8, !tbaa !741
  %.not.i.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i, label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEC2ERKSC_ii.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EED2Ev.exit.i
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !719
  %i.ie = add nsw i32 %i.id, 1
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !719
  br label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEC2ERKSC_ii.exit

_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEC2ERKSC_ii.exit: ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EED2Ev.exit.i, %bb.aa
  %i.if = load i32, ptr %10, align 8, !tbaa !2499 ; 2 uses
  %i.ig = icmp sgt i32 %i.if, 0
  %.pre246 = load ptr, ptr %i.i, align 8, !tbaa !597 ; 3 uses
  %.pre247 = load ptr, ptr %i.h, align 8, !tbaa !595 ; 3 uses
  br i1 %i.ig, label %.preheader.i, label %_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE13notifyPreReadEv.exit

.preheader.i:                                     ; preds = %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEC2ERKSC_ii.exit, %._crit_edge.i
  %i.ih = phi i32 [ %i.is, %._crit_edge.i ], [ %i.if, %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEC2ERKSC_ii.exit ]
  %i.ii = phi ptr [ %i.it, %._crit_edge.i ], [ %.pre247, %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEC2ERKSC_ii.exit ] ; 2 uses
  %i.ij = phi ptr [ %i.iu, %._crit_edge.i ], [ %.pre246, %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEC2ERKSC_ii.exit ] ; 2 uses
  %i.ik = phi ptr [ %i.iv, %._crit_edge.i ], [ %.pre247, %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEC2ERKSC_ii.exit ] ; 2 uses
  %i.il = phi ptr [ %i.iw, %._crit_edge.i ], [ %.pre246, %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEC2ERKSC_ii.exit ] ; 2 uses
  %.068.i = phi i32 [ %i.ix, %._crit_edge.i ], [ 0, %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEC2ERKSC_ii.exit ] ; 2 uses
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = ptrtoint ptr %i.ik to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = sdiv exact i64 %i.io, 12
  %i.iq = trunc i64 %i.ip to i32
  %i.ir = icmp sgt i32 %i.iq, 0
  br i1 %i.ir, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.loopexit.i:                           ; preds = %_ZNK12RelationList13notifyPreReadEv.exit.i
  %.pre13.i = load i32, ptr %10, align 8, !tbaa !2499
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.is = phi i32 [ %.pre13.i, %._crit_edge.loopexit.i ], [ %i.ih, %.preheader.i ] ; 2 uses
  %i.it = phi ptr [ %i.kn, %._crit_edge.loopexit.i ], [ %i.ii, %.preheader.i ] ; 2 uses
  %i.iu = phi ptr [ %i.ko, %._crit_edge.loopexit.i ], [ %i.ij, %.preheader.i ] ; 2 uses
  %i.iv = phi ptr [ %i.kn, %._crit_edge.loopexit.i ], [ %i.ik, %.preheader.i ]
  %i.iw = phi ptr [ %i.ko, %._crit_edge.loopexit.i ], [ %i.il, %.preheader.i ]
  %i.ix = add nuw nsw i32 %.068.i, 1              ; 2 uses
  %i.iy = icmp slt i32 %i.ix, %i.is
  br i1 %i.iy, label %.preheader.i, label %_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE13notifyPreReadEv.exit, !llvm.loop !4311

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNK12RelationList13notifyPreReadEv.exit.i
  %i.iz = phi ptr [ %i.kn, %_ZNK12RelationList13notifyPreReadEv.exit.i ], [ %i.ii, %.preheader.i ]
  %i.ja = phi ptr [ %i.ko, %_ZNK12RelationList13notifyPreReadEv.exit.i ], [ %i.ij, %.preheader.i ]
  %.07.i = phi i32 [ %i.kp, %_ZNK12RelationList13notifyPreReadEv.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.jb = load i32, ptr %i.o, align 8, !tbaa !2504
  %i.jc = mul nsw i32 %i.jb, %.068.i
  %i.jd = add nsw i32 %i.jc, %.07.i
  %i.je = sext i32 %i.jd to i64
  %i.jf = load ptr, ptr %i.t, align 8, !tbaa !2533
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !2534
  %i.ji = load i64, ptr %i.q, align 8, !tbaa !2571
  %i.jj = getelementptr inbounds [104 x i8], ptr %i.jh, i64 %i.ji
  %i.jk = getelementptr inbounds [104 x i8], ptr %i.jj, i64 %i.je
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 96 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !1610 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !1613
  %i.jq = load ptr, ptr %i.jn, align 8, !tbaa !1616 ; 2 uses
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = sub i64 %i.jr, %i.js
  %i.ju = lshr exact i64 %i.jt, 3
  %i.jv = trunc i64 %i.ju to i32
  %i.jw = icmp sgt i32 %i.jv, 0
  br i1 %i.jw, label %.lr.ph.i.i, label %_ZNK12RelationList13notifyPreReadEv.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.jx = phi ptr [ %i.kh, %.lr.ph.i.i ], [ %i.jq, %.lr.ph.i ]
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %indvars.iv.i.i
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !1618 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !73
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(17) %i.jz) #48, !inline_history !4863
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.kd = load ptr, ptr %i.jl, align 8, !tbaa !1610 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !1613
  %i.kh = load ptr, ptr %i.ke, align 8, !tbaa !1616 ; 2 uses
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = sub i64 %i.ki, %i.kj
  %sext.i.i = shl i64 %i.kk, 29
  %i.kl = ashr i64 %sext.i.i, 32
  %i.km = icmp slt i64 %indvars.iv.next.i.i, %i.kl
  br i1 %i.km, label %.lr.ph.i.i, label %_ZNK12RelationList13notifyPreReadEv.exit.loopexit.i, !llvm.loop !3760

_ZNK12RelationList13notifyPreReadEv.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre11.i = load ptr, ptr %i.i, align 8, !tbaa !597
  %.pre12.i = load ptr, ptr %i.h, align 8, !tbaa !595
  br label %_ZNK12RelationList13notifyPreReadEv.exit.i

_ZNK12RelationList13notifyPreReadEv.exit.i:       ; preds = %_ZNK12RelationList13notifyPreReadEv.exit.loopexit.i, %.lr.ph.i
  %i.kn = phi ptr [ %.pre12.i, %_ZNK12RelationList13notifyPreReadEv.exit.loopexit.i ], [ %i.iz, %.lr.ph.i ] ; 4 uses
  %i.ko = phi ptr [ %.pre11.i, %_ZNK12RelationList13notifyPreReadEv.exit.loopexit.i ], [ %i.ja, %.lr.ph.i ] ; 4 uses
  %i.kp = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kn to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = sdiv exact i64 %i.ks, 12
  %i.ku = trunc i64 %i.kt to i32
  %i.kv = icmp slt i32 %i.kp, %i.ku
  br i1 %i.kv, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !4313

_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE13notifyPreReadEv.exit: ; preds = %._crit_edge.i, %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEC2ERKSC_ii.exit
  %i.kw = phi ptr [ %.pre247, %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEC2ERKSC_ii.exit ], [ %i.it, %._crit_edge.i ] ; 7 uses
  %i.kx = phi ptr [ %.pre246, %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEC2ERKSC_ii.exit ], [ %i.iu, %._crit_edge.i ]
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kw to i64
  %i.la = sub i64 %i.ky, %i.kz
  %i.lb = sdiv exact i64 %i.la, 12
  %i.lc = and i64 %i.lb, 4294967295
  %i.ld = icmp eq i64 %i.lc, 1
  br i1 %i.ld, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE13notifyPreReadEv.exit
  %i.le = load i32, ptr %i.g, align 4, !tbaa !609, !noalias !10275
  %i.lf = icmp eq i32 %i.le, 1
  %i.lg = load i32, ptr %i.y, align 4, !tbaa !4, !noalias !10275 ; 4 uses
  br i1 %i.lf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.lh = load i32, ptr %i.aa, align 4, !tbaa !4, !noalias !10275 ; 2 uses
  %i.li = load i32, ptr %i.ad, align 4, !tbaa !4, !noalias !10275 ; 2 uses
  %i.lj = load double, ptr %1, align 8, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  %i.lk = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.ll = add nsw i32 %i.lk, 1
  store i32 %i.ll, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  br label %_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE11totalDomainEv.exit

bb.ad:                                            ; preds = %bb.ab
  %i.lm = add i32 %i.lg, 1
  %i.ln = load i32, ptr %i.aa, align 4, !tbaa !4, !noalias !10282 ; 2 uses
  %i.lo = add i32 %i.ln, 1
  %i.lp = load i32, ptr %i.ad, align 4, !tbaa !4, !noalias !10282 ; 2 uses
  %i.lq = add i32 %i.lp, 1
  %i.lr = load i32, ptr %i.kw, align 4, !tbaa !236, !noalias !10285
  %i.ls = sub i32 %i.lm, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !236, !noalias !10285
  %i.lv = sub i32 %i.lo, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !236, !noalias !10285
  %i.ly = sub i32 %i.lq, %i.lx
  %i.lz = load double, ptr %1, align 8, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  %i.ma = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.mb = add nsw i32 %i.ma, 1
  store i32 %i.mb, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  %i.mc = add i32 %i.lg, 1
  %i.md = add i32 %i.ln, 1
  %i.me = add i32 %i.lp, 1
  %i.mf = load i32, ptr %i.kw, align 4, !tbaa !236, !noalias !10288
  %i.mg = sub i32 %i.mc, %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !236, !noalias !10288
  %i.mj = sub i32 %i.md, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !236, !noalias !10288
  %i.mm = sub i32 %i.me, %i.ml
  br label %_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE11totalDomainEv.exit

bb.ae:                                            ; preds = %_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE13notifyPreReadEv.exit
  %i.mn = load i32, ptr %i.y, align 4, !tbaa !4, !noalias !10299 ; 2 uses
  %i.mo = load i32, ptr %i.aa, align 4, !tbaa !4, !noalias !10299 ; 2 uses
  %i.mp = load i32, ptr %i.ad, align 4, !tbaa !4, !noalias !10299 ; 2 uses
  %i.mq = load double, ptr %1, align 8, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  %i.mr = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.ms = add nsw i32 %i.mr, 1
  store i32 %i.ms, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  br label %_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE11totalDomainEv.exit

_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE11totalDomainEv.exit: ; preds = %bb.ad, %bb.ac, %bb.ae
  %.sink.i.i.i.i201 = phi i32 [ %i.mp, %bb.ae ], [ %i.mm, %bb.ad ], [ %i.li, %bb.ac ]
  %.sroa.5.0.i.i199 = phi i32 [ %i.mn, %bb.ae ], [ %i.mg, %bb.ad ], [ %i.lg, %bb.ac ]
  %.sroa.11.0.i.i197 = phi i32 [ %i.mo, %bb.ae ], [ %i.mj, %bb.ad ], [ %i.lh, %bb.ac ]
  %.sroa.11.0176195 = phi i32 [ %i.mo, %bb.ae ], [ %i.lv, %bb.ad ], [ %i.lh, %bb.ac ]
  %.sroa.5.0178193 = phi i32 [ %i.mn, %bb.ae ], [ %i.ls, %bb.ad ], [ %i.lg, %bb.ac ]
  %.sink.i.i180191 = phi i32 [ %i.mp, %bb.ae ], [ %i.ly, %bb.ad ], [ %i.li, %bb.ac ]
  %i.mt = phi double [ %i.mq, %bb.ae ], [ %i.lz, %bb.ad ], [ %i.lj, %bb.ac ]
  %.sroa.0.0.i.i188 = load i32, ptr %i.w, align 8, !tbaa !4, !noalias !10300
  %.sroa.8.0.i.i189 = load i32, ptr %i.z, align 8, !tbaa !4, !noalias !10300
  %.sroa.14.0.i.i190 = load i32, ptr %i.ab, align 8, !tbaa !4, !noalias !10300
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48, !noalias !10301
  store i32 %.sroa.0.0.i.i188, ptr %6, align 4, !tbaa !4, !alias.scope !10306, !noalias !10301
  store i32 %.sroa.5.0.i.i199, ptr %i.ai, align 4, !tbaa !4, !alias.scope !10306, !noalias !10301
  store i32 %.sroa.8.0.i.i189, ptr %i.aj, align 4, !tbaa !4, !alias.scope !10306, !noalias !10301
  store i32 %.sroa.11.0.i.i197, ptr %i.ak, align 4, !tbaa !4, !alias.scope !10306, !noalias !10301
  store i32 %.sroa.14.0.i.i190, ptr %i.al, align 4, !tbaa !4, !alias.scope !10306, !noalias !10301
  store i32 %.sink.i.i.i.i201, ptr %i.am, align 4, !tbaa !4, !alias.scope !10306, !noalias !10301
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEC2IdSB_EERKS_IS5_T_T0_ERK8IntervalILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull align 8 dereferenceable(144) %10, ptr noundef nonnull align 4 dereferenceable(24) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48, !noalias !10301
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48
  store double %i.mt, ptr %9, align 8, !tbaa !1072, !alias.scope !10313
  store i32 0, ptr %i.an, align 8, !tbaa !4, !alias.scope !10313
  store i32 %.sroa.5.0178193, ptr %i.ap, align 4, !tbaa !4, !alias.scope !10313
  store i32 0, ptr %i.ao, align 8, !tbaa !4, !alias.scope !10313
  store i32 0, ptr %i.aq, align 8, !tbaa !4, !alias.scope !10313
  store i32 %.sroa.11.0176195, ptr %i.ar, align 4, !tbaa !4, !alias.scope !10313
  store i32 0, ptr %i.as, align 4, !tbaa !4, !alias.scope !10313
  store i32 0, ptr %i.at, align 8, !tbaa !4, !alias.scope !10313
  store i32 %.sink.i.i180191, ptr %i.au, align 4, !tbaa !4, !alias.scope !10313
  store i32 0, ptr %i.av, align 8, !tbaa !4, !alias.scope !10313
  call void @_ZNK9EvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE5ArrayILi3Ed16ConstantFunctionE16OpSubtractAssignEEvRKT_RKT1_RKT0_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48
  %i.mu = load ptr, ptr %i.aw, align 8, !tbaa !741 ; 4 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.mu, null
  br i1 %.not.i.i.i.i32, label %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEED2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE11totalDomainEv.exit
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !719
  %i.mw = add nsw i32 %i.mv, -1                   ; 2 uses
  store i32 %i.mw, ptr %i.mu, align 4, !tbaa !719
  %i.mx = icmp eq i32 %i.mw, 0
  br i1 %i.mx, label %bb.ag, label %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEED2Ev.exit.i

bb.ag:                                            ; preds = %bb.af
  call void @_ZdlPvm(ptr noundef nonnull %i.mu, i64 noundef 152) #49
  br label %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEED2Ev.exit.i

_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEED2Ev.exit.i: ; preds = %bb.ag, %bb.af, %_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE11totalDomainEv.exit
  %i.my = load ptr, ptr %i.ax, align 8, !tbaa !2533 ; 7 uses
  %.not.i.i.i1.i = icmp eq ptr %i.my, null
  br i1 %.not.i.i.i1.i, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EED2Ev.exit.i33, label %bb.ah

bb.ah:                                            ; preds = %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEED2Ev.exit.i
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !719
  %i.na = add nsw i32 %i.mz, -1                   ; 2 uses
  store i32 %i.na, ptr %i.my, align 4, !tbaa !719
  %i.nb = icmp eq i32 %i.na, 0
  br i1 %i.nb, label %bb.ai, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EED2Ev.exit.i33

bb.ai:                                            ; preds = %bb.ah
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  %i.nd = load i8, ptr %i.nc, align 8, !tbaa !2579, !range !58, !noundef !59
  %i.ne = trunc nuw i8 %i.nd to i1
  br i1 %i.ne, label %bb.aj, label %_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEED2Ev.exit.i.i.i.i34

bb.aj:                                            ; preds = %bb.ai
  %i.nf = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 2 uses
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !2534 ; 4 uses
  %.not.i.i.i.i.i.i35 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i.i.i.i35, label %_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEED2Ev.exit.i.i.i.i34, label %.preheader.i.i.i.i.i.i36

.preheader.i.i.i.i.i.i36:                         ; preds = %bb.aj
  %i.nh = getelementptr inbounds nuw i8, ptr %i.my, i64 16 ; 2 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !2538
  %.not67.i.i.i.i.i.i37 = icmp eq ptr %i.ng, %i.ni
  br i1 %.not67.i.i.i.i.i.i37, label %._crit_edge.thread.i.i.i.i.i.i43, label %.lr.ph.i.i.i.i.i.i38

._crit_edge.i.i.i.i.i.i41:                        ; preds = %_ZN19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev.exit78
  %.pre.i.i.i.i.i.i42 = load ptr, ptr %i.nf, align 8, !tbaa !2534 ; 2 uses
  %i.nj = icmp eq ptr %.pre.i.i.i.i.i.i42, null
  br i1 %i.nj, label %_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEED2Ev.exit.i.i.i.i34, label %._crit_edge.thread.i.i.i.i.i.i43

.lr.ph.i.i.i.i.i.i38:                             ; preds = %.preheader.i.i.i.i.i.i36, %_ZN19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev.exit78
  %.08.i.i.i.i.i.i39 = phi ptr [ %i.sc, %_ZN19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev.exit78 ], [ %i.ng, %.preheader.i.i.i.i.i.i36 ] ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i39, i64 96
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !1610 ; 7 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i.i65, label %_ZN12RelationListD2Ev.exit.i66, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i38
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !719
  %i.nn = add nsw i32 %i.nm, -1                   ; 2 uses
  store i32 %i.nn, ptr %i.nl, align 4, !tbaa !719
  %i.no = icmp eq i32 %i.nn, 0
  br i1 %i.no, label %bb.al, label %_ZN12RelationListD2Ev.exit.i66

bb.al:                                            ; preds = %bb.ak
  %i.np = getelementptr inbounds nuw i8, ptr %i.nl, i64 8 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nl, i64 16 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !1613 ; 2 uses
  %i.ns = load ptr, ptr %i.np, align 8, !tbaa !1616 ; 4 uses
  %i.nt = ptrtoint ptr %i.ns to i64
  %.not.i.i.i.i.i68 = icmp eq ptr %i.nr, %i.ns
  br i1 %.not.i.i.i.i.i68, label %._crit_edge.i.i.i.i.i73, label %.lr.ph.i.i.i.i.i69

._crit_edge.i.i.i.i.i73:                          ; preds = %bb.ao, %bb.al
  %.lcssa4.i.i.i.i.i74 = phi ptr [ %i.ns, %bb.al ], [ %i.og, %bb.ao ] ; 2 uses
  %.lcssa.i.i.i.i.i75 = phi i64 [ %i.nt, %bb.al ], [ %i.ok, %bb.ao ]
  %.not.i.i.i.i.i.i.i.i76 = icmp eq ptr %.lcssa4.i.i.i.i.i74, null
  br i1 %.not.i.i.i.i.i.i.i.i76, label %_ZN16RelationListDataD2Ev.exit.i.i.i.i77, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i.i.i.i.i73
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nl, i64 24
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !1617
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = sub i64 %i.nw, %.lcssa.i.i.i.i.i75
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa4.i.i.i.i.i74, i64 noundef %i.nx) #49
  br label %_ZN16RelationListDataD2Ev.exit.i.i.i.i77

.lr.ph.i.i.i.i.i69:                               ; preds = %bb.al, %bb.ao
  %i.ny = phi ptr [ %i.og, %bb.ao ], [ %i.ns, %bb.al ] ; 2 uses
  %i.nz = phi ptr [ %i.oh, %bb.ao ], [ %i.nr, %bb.al ]
  %.05.i.i.i.i.i70 = phi i64 [ %i.oi, %bb.ao ], [ 0, %bb.al ] ; 2 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %.05.i.i.i.i.i70
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !1618 ; 3 uses
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i69
  %i.od = load ptr, ptr %i.ob, align 8, !tbaa !73
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load ptr, ptr %i.oe, align 8
  call void %i.of(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.ob) #48, !inline_history !2576
  %.pre.i.i.i.i.i71 = load ptr, ptr %i.nq, align 8, !tbaa !1613
  %.pre9.i.i.i.i.i72 = load ptr, ptr %i.np, align 8, !tbaa !1616
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i.i.i.i.i69
  %i.og = phi ptr [ %i.ny, %.lr.ph.i.i.i.i.i69 ], [ %.pre9.i.i.i.i.i72, %bb.an ] ; 3 uses
  %i.oh = phi ptr [ %i.nz, %.lr.ph.i.i.i.i.i69 ], [ %.pre.i.i.i.i.i71, %bb.an ] ; 2 uses
  %i.oi = add nuw i64 %.05.i.i.i.i.i70, 1         ; 2 uses
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = ptrtoint ptr %i.og to i64               ; 2 uses
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = ashr exact i64 %i.ol, 3
  %i.on = icmp ult i64 %i.oi, %i.om
  br i1 %i.on, label %.lr.ph.i.i.i.i.i69, label %._crit_edge.i.i.i.i.i73, !llvm.loop !1621

_ZN16RelationListDataD2Ev.exit.i.i.i.i77:         ; preds = %bb.am, %._crit_edge.i.i.i.i.i73
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef 32) #49
  br label %_ZN12RelationListD2Ev.exit.i66

_ZN12RelationListD2Ev.exit.i66:                   ; preds = %_ZN16RelationListDataD2Ev.exit.i.i.i.i77, %bb.ak, %.lr.ph.i.i.i.i.i.i38
  %i.oo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i39, i64 8
  call void @_ZN6EngineILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.oo) #48
  %i.op = load ptr, ptr %.08.i.i.i.i.i.i39, align 8, !tbaa !2568 ; 17 uses
  %.not.i.i.i.i1.i67 = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i.i1.i67, label %_ZN19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev.exit78, label %bb.ap

bb.ap:                                            ; preds = %_ZN12RelationListD2Ev.exit.i66
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 284 ; 2 uses
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !719
  %i.os = add nsw i32 %i.or, -1                   ; 2 uses
  store i32 %i.os, ptr %i.oq, align 4, !tbaa !719
  %i.ot = icmp eq i32 %i.os, 0
  br i1 %i.ot, label %bb.aq, label %_ZN19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev.exit78

bb.aq:                                            ; preds = %bb.ap
  %i.ou = getelementptr inbounds nuw i8, ptr %i.op, i64 208 ; 2 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !2253 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.op, i64 216 ; 2 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !2253 ; 2 uses
  %.not4.i98 = icmp eq ptr %i.ov, %i.ox
  br i1 %.not4.i98, label %._crit_edge.i104, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %bb.aq, %bb.ar
  %i.oy = phi ptr [ %i.pf, %bb.ar ], [ %i.ox, %bb.aq ]
  %.sroa.01.05.i100 = phi ptr [ %i.pg, %bb.ar ], [ %i.ov, %bb.aq ] ; 2 uses
  %i.oz = load ptr, ptr %.sroa.01.05.i100, align 8, !tbaa !2260 ; 3 uses
  %i.pa = icmp eq ptr %i.oz, null
  br i1 %i.pa, label %bb.ar, label %_ZN6PooledI4NodeI8IntervalILi3EES2_EEdlEPvm.exit.i101

_ZN6PooledI4NodeI8IntervalILi3EES2_EEdlEPvm.exit.i101: ; preds = %.lr.ph.i99
  %i.pb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6PooledI4NodeI8IntervalILi3EES2_EE6pool_sE, i64 8), align 8, !tbaa !180
  %i.pc = add nsw i32 %i.pb, -1
  store i32 %i.pc, ptr getelementptr inbounds nuw (i8, ptr @_ZN6PooledI4NodeI8IntervalILi3EES2_EE6pool_sE, i64 8), align 8, !tbaa !180
  %i.pd = load ptr, ptr @_ZN6PooledI4NodeI8IntervalILi3EES2_EE6pool_sE, align 8
  %i.pe = ptrtoint ptr %i.pd to i64
  store i64 %i.pe, ptr %i.oz, align 8
  store ptr %i.oz, ptr @_ZN6PooledI4NodeI8IntervalILi3EES2_EE6pool_sE, align 8, !tbaa !173
  %.pre.i102 = load ptr, ptr %i.ow, align 8, !tbaa !2253
end_hunk_6
begin_hunk_7_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EN4Adv51Y8MassflowILi3EEELi3E15EvaluateLocLoopISH_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSK_4sizeEERKT2_:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 0, ptr %i.ao, align 8, !tbaa !2454
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.ap, align 8, !tbaa !2701
  %i.aq = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Y8MassflowILi3EEELi3EEE, i64 16), ptr %i.al, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @_ZN9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(432) %i.as, ptr noundef nonnull align 8 dereferenceable(432) %8)
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 464
  store i64 %i.ak, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  store i32 %i.c, ptr %i.au, align 8, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 476
  store i32 %i.f, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 480
  store i32 %i.n, ptr %i.aw, align 8, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 484
  store i32 %i.q, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 488
  store i32 %i.aa, ptr %i.ay, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 492
  store i32 %i.ad, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 496 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 536
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr %i.al, ptr %5, align 8, !tbaa !6175
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11096
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11096
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #48
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Y8MassflowILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Y8MassflowILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6034 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6034 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Y8MassflowILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Y8MassflowILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 576) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Y8MassflowILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.775, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store ptr %i.b, ptr %1, align 8, !tbaa !8322
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !11097
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_EN4Adv51Y8MassflowILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_EN4Adv51Y8MassflowILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11097
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not35 = icmp sgt i32 %i.e, %i.m
  br i1 %.not35, label %._crit_edge38, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2332 = icmp sgt i32 %i.c, %i.q
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2332, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge38, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !8322 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 280
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !6263
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !6266
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !6262
  %i.ac = getelementptr inbounds [88 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2836
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !4
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !6263
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !6266
  %i.am = load i64, ptr %i.u, align 8, !tbaa !6262
  %i.an = getelementptr inbounds [88 x i8], ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2836 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !4
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !741, !noalias !59 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 136 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pre.i, i64 112
  %i.av = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4, !noalias !11099 ; 2 uses
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !6263
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !6266
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !6262
  %i.bb = getelementptr inbounds [88 x i8], ptr %i.az, i64 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2836
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !4
  %i.bi = zext i32 %i.a to i64
  %i.bj = add i32 %i.g, %i.a
  %i.bk = add i32 %i.i, %i.c
  %i.bl = add i32 %i.k, %i.e
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge34.split
  %.02236 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.bt, %._crit_edge34.split ] ; 4 uses
  %i.bm = mul nsw i32 %i.ai, %.02236
  %i.bn = mul nsw i32 %i.at, %.02236
  %i.bo = mul nsw i32 %i.bh, %.02236
  br label %.preheader

._crit_edge38:                                    ; preds = %._crit_edge34.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %.02133 = phi i32 [ %i.c, %.preheader27 ], [ %i.bu, %._crit_edge ] ; 5 uses
  %i.bp = mul nsw i32 %i.ag, %.02133
  %invariant.op = add i32 %i.bp, %i.bm
  %i.bq = sub nsw i32 %.02133, %i.aw
  %i.br = sitofp i32 %i.bq to double
  %i.bs = mul nsw i32 %i.bf, %.02133
  %invariant.op30 = add i32 %i.bs, %i.bo
  br label %bb.b

._crit_edge34.split:                              ; preds = %._crit_edge
  %i.bt = add i32 %.02236, 1                      ; 2 uses
  %exitcond46.not = icmp eq i32 %i.bt, %i.bl
  br i1 %exitcond46.not, label %._crit_edge38, label %.preheader27, !llvm.loop !11102

._crit_edge:                                      ; preds = %_ZNK4Adv51Y8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit
  %i.bu = add i32 %.02133, 1                      ; 2 uses
  %exitcond45.not = icmp eq i32 %i.bu, %i.bk
  br i1 %exitcond45.not, label %._crit_edge34.split, label %.preheader, !llvm.loop !11103

bb.b:                                             ; preds = %.preheader, %_ZNK4Adv51Y8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit
  %indvars.iv = phi i64 [ %i.bi, %.preheader ], [ %indvars.iv.next, %_ZNK4Adv51Y8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit ] ; 2 uses
  %i.bv = trunc i64 %indvars.iv to i32            ; 3 uses
  %.reass = add i32 %invariant.op, %i.bv
  %i.bw = sext i32 %.reass to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !247
  %i.bz = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !11104
  %i.ca = fmul double %i.by, %i.bz                ; 3 uses
  %i.cb = fcmp ogt double %i.ca, 0.000000e+00
  %i.cc = sext i1 %i.cb to i32
  %.sroa.15.0.i = add nsw i32 %.02133, %i.cc      ; 4 uses
  %i.cd = mul nsw i32 %i.ar, %.sroa.15.0.i
  %i.ce = add i32 %i.bn, %i.bv                    ; 3 uses
  %i.cf = add i32 %i.ce, %i.cd
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !247 ; 3 uses
  %i.cj = add nsw i32 %.sroa.15.0.i, -1
  %i.ck = mul nsw i32 %i.ar, %i.cj
  %i.cl = add i32 %i.ce, %i.ck
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !247
  %i.cp = fsub double %i.ci, %i.co                ; 2 uses
  %i.cq = add nsw i32 %.sroa.15.0.i, 1
  %i.cr = mul nsw i32 %i.ar, %i.cq
  %i.cs = add i32 %i.ce, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !247
  %i.cw = fsub double %i.cv, %i.ci                ; 2 uses
  %i.cx = fmul double %i.cp, %i.cw                ; 2 uses
  %i.cy = fcmp ogt double %i.cx, 0.000000e+00
  br i1 %i.cy, label %.critedge.i, label %..critedge56_crit_edge.i

..critedge56_crit_edge.i:                         ; preds = %bb.b
  %.pre113.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11099
  br label %_ZNK4Adv51Y8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit

.critedge.i:                                      ; preds = %bb.b
  %i.cz = fmul nnan double %i.cx, 2.000000e+00
  %i.da = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11106 ; 3 uses
  %i.db = fmul double %i.cw, %i.da
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.da, double %i.db)
  %i.dd = fdiv double %i.cz, %i.dc
  br label %_ZNK4Adv51Y8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit

_ZNK4Adv51Y8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit: ; preds = %..critedge56_crit_edge.i, %.critedge.i
  %i.de = phi double [ %i.da, %.critedge.i ], [ %.pre113.i, %..critedge56_crit_edge.i ] ; 2 uses
  %i.df = phi double [ %i.dd, %.critedge.i ], [ 0.000000e+00, %..critedge56_crit_edge.i ]
  %i.dg = load double, ptr %i.au, align 8, !tbaa !247, !noalias !11099 ; 2 uses
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.de, double %i.br, double %i.dg)
  %i.di = sub nsw i32 %.sroa.15.0.i, %i.aw
  %i.dj = sitofp i32 %i.di to double
  %i.dk = fadd double %i.dj, 5.000000e-01
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.de, double %i.dk, double %i.dg)
  %i.dm = fsub double %i.dh, %i.dl
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.ca, double -5.000000e-01, double %i.dm)
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.df, double %i.ci)
  %i.dp = fmul double %i.ca, %i.do
  %.reass31 = add i32 %invariant.op30, %i.bv
  %i.dq = sext i32 %.reass31 to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.dq
  store double %i.dp, ptr %i.dr, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bj, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !11109
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI16MainEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_SH_EN4Adv51Y10EnergyfluxILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EERKT2_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %class.ScalarCodeInfo, align 8      ; 21 uses
  %5 = alloca %struct.UpdateNotifier, align 1     ; 3 uses
  %6 = alloca %struct.EngineWriteNotifier, align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !6034
  store ptr %i.f, ptr %i.a, align 8
  store i32 0, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i32 4, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !6034
  store ptr %i.m, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  store ptr %i.m, ptr %i.j, align 8
  store i32 4, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !6034
  store ptr %i.t, ptr %i.o, align 8
  store i32 0, ptr %i.p, align 8
  store ptr %i.t, ptr %i.q, align 8
  store i32 4, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 2, ptr %i.v, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %i.w, align 8, !tbaa !4
  store i64 1, ptr %i.m, align 8, !tbaa !12
  store i64 -2, ptr %i.t, align 8, !tbaa !12
  store i64 -14, ptr %i.f, align 8, !tbaa !12
  %i.x = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_SD_SD_14UpdateNotifierEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(40) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  call void @_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_SH_EN4Adv51Y10EnergyfluxILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSP_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_SD_SD_19EngineWriteNotifierEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  %i.z = load i32, ptr @_ZN5Pooma12expression_gE, align 4, !tbaa !4
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr @_ZN5Pooma12expression_gE, align 4, !tbaa !4
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !6034 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = ashr exact i64 %i.af, 3
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ah
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.af) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
end_hunk_7
begin_hunk_8_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EN4Adv51Y10EnergyfluxILi3EEELi3E15EvaluateLocLoopISH_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSK_4sizeEERKT2_:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN4Adv51Y10EnergyfluxILi3EEELi3EEE, i64 16), ptr %i.al, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(576) %i.as, ptr noundef nonnull align 8 dereferenceable(576) %8)
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 608
  store i64 %i.ak, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 616
  store i32 %i.c, ptr %i.au, align 8, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 620
  store i32 %i.f, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 624
  store i32 %i.n, ptr %i.aw, align 8, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 628
  store i32 %i.q, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 632
  store i32 %i.aa, ptr %i.ay, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 636
  store i32 %i.ad, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 640 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 680
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr %i.al, ptr %5, align 8, !tbaa !6175
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11136
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11136
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 432
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #48
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #48
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bl) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN4Adv51Y10EnergyfluxILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN4Adv51Y10EnergyfluxILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6034 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6034 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 464
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.x) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN4Adv51Y10EnergyfluxILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN4Adv51Y10EnergyfluxILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 720) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN4Adv51Y10EnergyfluxILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.778, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store ptr %i.b, ptr %1, align 8, !tbaa !8886
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !11137
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_EN4Adv51Y10EnergyfluxILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_EN4Adv51Y10EnergyfluxILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11137
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not37 = icmp sgt i32 %i.e, %i.m
  br i1 %.not37, label %._crit_edge40, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2334 = icmp sgt i32 %i.c, %i.q
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2334, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge40, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !8886 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 280
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !6263
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !6266
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !6262
  %i.ae = getelementptr inbounds [88 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2836
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !4
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !6263
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !6266
  %i.ao = load i64, ptr %i.w, align 8, !tbaa !6262
  %i.ap = getelementptr inbounds [88 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2836 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4  ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !4
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !741, !noalias !59 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 136 ; 2 uses
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !6263
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !6266
  %i.az = load i64, ptr %i.u, align 8, !tbaa !6262
  %i.ba = getelementptr inbounds [88 x i8], ptr %i.ay, i64 %i.az ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2836
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre.i, i64 112
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4, !noalias !11139 ; 2 uses
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !6263
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !6266
  %i.bn = load i64, ptr %i.s, align 8, !tbaa !6262
  %i.bo = getelementptr inbounds [88 x i8], ptr %i.bm, i64 %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2836
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !4
  %i.bv = zext i32 %i.a to i64
  %i.bw = add i32 %i.g, %i.a
  %i.bx = add i32 %i.i, %i.c
  %i.by = add i32 %i.k, %i.e
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge36.split
  %.02238 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.ci, %._crit_edge36.split ] ; 5 uses
  %i.bz = mul nsw i32 %i.ak, %.02238
  %i.ca = mul nsw i32 %i.av, %.02238
  %i.cb = mul nsw i32 %i.bg, %.02238
  %i.cc = mul nsw i32 %i.bu, %.02238
  br label %.preheader

._crit_edge40:                                    ; preds = %._crit_edge36.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %.02135 = phi i32 [ %i.c, %.preheader27 ], [ %i.cj, %._crit_edge ] ; 6 uses
  %i.cd = mul nsw i32 %i.ai, %.02135
  %invariant.op = add i32 %i.cd, %i.bz
  %i.ce = mul nsw i32 %i.be, %.02135
  %invariant.op30 = add i32 %i.ce, %i.cb
  %i.cf = sub nsw i32 %.02135, %i.bj
  %i.cg = sitofp i32 %i.cf to double
  %i.ch = mul nsw i32 %i.bs, %.02135
  %invariant.op32 = add i32 %i.ch, %i.cc
  br label %bb.b

._crit_edge36.split:                              ; preds = %._crit_edge
  %i.ci = add i32 %.02238, 1                      ; 2 uses
  %exitcond48.not = icmp eq i32 %i.ci, %i.by
  br i1 %exitcond48.not, label %._crit_edge40, label %.preheader27, !llvm.loop !11142

._crit_edge:                                      ; preds = %_ZNK4Adv51Y10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit
  %i.cj = add i32 %.02135, 1                      ; 2 uses
  %exitcond47.not = icmp eq i32 %i.cj, %i.bx
  br i1 %exitcond47.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !11143

bb.b:                                             ; preds = %.preheader, %_ZNK4Adv51Y10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit
  %indvars.iv = phi i64 [ %i.bv, %.preheader ], [ %indvars.iv.next, %_ZNK4Adv51Y10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit ] ; 2 uses
  %i.ck = trunc i64 %indvars.iv to i32            ; 4 uses
  %.reass = add i32 %invariant.op, %i.ck
  %i.cl = sext i32 %.reass to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !247
  %i.co = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !11144
  %i.cp = fmul double %i.cn, %i.co                ; 2 uses
  %i.cq = fcmp ogt double %i.cp, 0.000000e+00
  %i.cr = sext i1 %i.cq to i32
  %.sroa.565.0.i = add nsw i32 %.02135, %i.cr     ; 4 uses
  %i.cs = add nsw i32 %.sroa.565.0.i, -1
  %i.ct = mul nsw i32 %i.at, %i.cs
  %i.cu = add i32 %i.ca, %i.ck                    ; 3 uses
  %i.cv = add i32 %i.cu, %i.ct
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !247
  %i.cz = mul nsw i32 %i.at, %.sroa.565.0.i
  %i.da = add i32 %i.cu, %i.cz
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !247 ; 3 uses
  %i.de = add nsw i32 %.sroa.565.0.i, 1
  %i.df = mul nsw i32 %i.at, %i.de
  %i.dg = add i32 %i.cu, %i.df
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !247
  %i.dk = fsub double %i.dd, %i.cy                ; 2 uses
  %i.dl = fsub double %i.dj, %i.dd                ; 2 uses
  %i.dm = fmul double %i.dk, %i.dl                ; 2 uses
  %i.dn = fcmp ogt double %i.dm, 0.000000e+00
  br i1 %i.dn, label %.critedge.i, label %..critedge47_crit_edge.i

..critedge47_crit_edge.i:                         ; preds = %bb.b
  %.pre81.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11139
  br label %_ZNK4Adv51Y10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit

.critedge.i:                                      ; preds = %bb.b
  %i.do = fmul nnan double %i.dm, 2.000000e+00
  %i.dp = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11146 ; 3 uses
  %i.dq = fmul double %i.dk, %i.dp
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dp, double %i.dq)
  %i.ds = fdiv double %i.do, %i.dr
  br label %_ZNK4Adv51Y10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit

_ZNK4Adv51Y10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit: ; preds = %..critedge47_crit_edge.i, %.critedge.i
  %i.dt = phi double [ %i.dp, %.critedge.i ], [ %.pre81.i, %..critedge47_crit_edge.i ] ; 2 uses
  %i.du = phi double [ %i.ds, %.critedge.i ], [ 0.000000e+00, %..critedge47_crit_edge.i ]
  %.reass31 = add i32 %invariant.op30, %i.ck
  %i.dv = sext i32 %.reass31 to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !247
  %i.dy = load double, ptr %i.bh, align 8, !tbaa !247, !noalias !11139 ; 2 uses
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.cg, double %i.dy)
  %i.ea = sub nsw i32 %.sroa.565.0.i, %i.bj
  %i.eb = sitofp i32 %i.ea to double
  %i.ec = fadd double %i.eb, 5.000000e-01
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.ec, double %i.dy)
  %i.ee = fsub double %i.dz, %i.ed
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.cp, double -5.000000e-01, double %i.ee)
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ef, double %i.du, double %i.dd)
  %i.eh = fmul double %i.dx, %i.eg
  %.reass33 = add i32 %invariant.op32, %i.ck
  %i.ei = sext i32 %.reass33 to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.ei
  store double %i.eh, ptr %i.ej, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bw, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !11149
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI16MainEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_EN4Adv51Y11Energyflux2ILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EERKT2_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(28) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %class.ScalarCodeInfo.641, align 8  ; 20 uses
  %5 = alloca %struct.UpdateNotifier, align 1     ; 3 uses
  %6 = alloca %struct.EngineWriteNotifier, align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !6034
  store ptr %i.f, ptr %i.a, align 8
  store i32 0, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i32 3, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !6034
  store ptr %i.m, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  store ptr %i.m, ptr %i.j, align 8
  store i32 3, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !6034
  store ptr %i.t, ptr %i.o, align 8
  store i32 0, ptr %i.p, align 8
  store ptr %i.t, ptr %i.q, align 8
  store i32 3, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %i.v, align 8, !tbaa !4
  store i64 1, ptr %i.m, align 8, !tbaa !12
  store i64 -1, ptr %i.t, align 8, !tbaa !12
  store i64 -4, ptr %i.f, align 8, !tbaa !12
  %i.w = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_SD_14UpdateNotifierEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(40) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  call void @_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_EN4Adv51Y11Energyflux2ILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSP_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 4 dereferenceable(28) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_SD_19EngineWriteNotifierEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  %i.y = load i32, ptr @_ZN5Pooma12expression_gE, align 4, !tbaa !4
end_hunk_8
begin_hunk_9_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EN4Adv51Y13MomentumfluxXILi3EEELi3E15EvaluateLocLoopISR_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSU_4sizeEERKT2_:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxXILi3EEELi3EEE, i64 16), ptr %i.al, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES0_IS6_dSC_ESI_SI_EC2ERKSJ_(ptr noundef nonnull align 8 dereferenceable(576) %i.as, ptr noundef nonnull align 8 dereferenceable(576) %8)
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 608
  store i64 %i.ak, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 616
  store i32 %i.c, ptr %i.au, align 8, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 620
  store i32 %i.f, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 624
  store i32 %i.n, ptr %i.aw, align 8, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 628
  store i32 %i.q, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 632
  store i32 %i.aa, ptr %i.ay, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 636
  store i32 %i.ad, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 640 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 680
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr %i.al, ptr %5, align 8, !tbaa !6175
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES0_IS6_dSC_ESI_SI_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11221
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11221
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 432
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #48
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #48
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bl) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxXILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxXILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES0_IS6_dSC_ESI_SI_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6034 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6034 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 464
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.x) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxXILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxXILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 720) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxXILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.784, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store ptr %i.b, ptr %1, align 8, !tbaa !9185
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !11222
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES3_IS9_dSF_ESL_SL_EN4Adv51Y13MomentumfluxXILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES3_IS9_dSF_ESL_SL_EN4Adv51Y13MomentumfluxXILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11222
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not33 = icmp sgt i32 %i.e, %i.m
  br i1 %.not33, label %._crit_edge36, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2330 = icmp sgt i32 %i.c, %i.q
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2330, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge36, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !9185 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !6263
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !6266
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !6262
  %i.ae = getelementptr inbounds [88 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2836 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !4
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !6263
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !6266
  %i.ao = load i64, ptr %i.w, align 8, !tbaa !6262
  %i.ap = getelementptr inbounds [88 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2836 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4  ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !4
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !741, !noalias !59 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 136 ; 2 uses
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !6263
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !6266
  %i.az = load i64, ptr %i.u, align 8, !tbaa !6262
  %i.ba = getelementptr inbounds [88 x i8], ptr %i.ay, i64 %i.az ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2836 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre.i, i64 112
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4, !noalias !11224 ; 2 uses
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !9179
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !9180
  %i.bn = load i64, ptr %i.s, align 8, !tbaa !9178
  %i.bo = getelementptr inbounds [96 x i8], ptr %i.bm, i64 %i.bn ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !3382
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !236
  %i.bx = sext i32 %i.bw to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.bq, i64 %i.bx
  %i.by = zext i32 %i.a to i64
  %i.bz = add i32 %i.g, %i.a
  %i.ca = add i32 %i.i, %i.c
  %i.cb = add i32 %i.k, %i.e
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge32.split
  %.02234 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.cn, %._crit_edge32.split ] ; 5 uses
  %i.cc = mul nsw i32 %i.ak, %.02234
  %i.cd = mul nsw i32 %i.av, %.02234
  %i.ce = mul nsw i32 %i.bg, %.02234
  %i.cf = mul nsw i32 %i.bu, %.02234
  br label %.preheader

._crit_edge36:                                    ; preds = %._crit_edge32.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %.02131 = phi i32 [ %i.c, %.preheader27 ], [ %i.co, %._crit_edge ] ; 6 uses
  %i.cg = mul nsw i32 %i.ai, %.02131
  %i.ch = add i32 %i.cc, %i.cg                    ; 2 uses
  %i.ci = mul nsw i32 %i.be, %.02131
  %i.cj = add i32 %i.ce, %i.ci                    ; 2 uses
  %i.ck = sub nsw i32 %.02131, %i.bj
  %i.cl = sitofp i32 %i.ck to double
  %i.cm = mul nsw i32 %i.bs, %.02131
  %invariant.op = add i32 %i.cm, %i.cf
  br label %bb.b

._crit_edge32.split:                              ; preds = %._crit_edge
  %i.cn = add i32 %.02234, 1                      ; 2 uses
  %exitcond44.not = icmp eq i32 %i.cn, %i.cb
  br i1 %exitcond44.not, label %._crit_edge36, label %.preheader27, !llvm.loop !11227

._crit_edge:                                      ; preds = %_ZNK4Adv51Y13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit
  %i.co = add i32 %.02131, 1                      ; 2 uses
  %exitcond43.not = icmp eq i32 %i.co, %i.ca
  br i1 %exitcond43.not, label %._crit_edge32.split, label %.preheader, !llvm.loop !11228

bb.b:                                             ; preds = %.preheader, %_ZNK4Adv51Y13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit
  %indvars.iv = phi i64 [ %i.by, %.preheader ], [ %indvars.iv.next, %_ZNK4Adv51Y13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit ] ; 3 uses
  %i.cp = trunc i64 %indvars.iv to i32            ; 4 uses
  %i.cq = add i32 %i.ch, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !247
  %i.cu = trunc i64 %indvars.iv to i32
  %i.cv = add i32 %i.cu, -1                       ; 2 uses
  %i.cw = add i32 %i.ch, %i.cv
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !247
  %i.da = fmul double %i.cz, 5.000000e-01
  %i.db = tail call double @llvm.fmuladd.f64(double %i.ct, double 5.000000e-01, double %i.da)
  %i.dc = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !11229
  %i.dd = fmul double %i.dc, %i.db                ; 2 uses
  %i.de = fcmp ogt double %i.dd, 0.000000e+00
  %i.df = sext i1 %i.de to i32
  %.sroa.580.0.i = add nsw i32 %.02131, %i.df     ; 4 uses
  %i.dg = add nsw i32 %.sroa.580.0.i, -1
  %i.dh = mul nsw i32 %i.dg, %i.at
  %i.di = add i32 %i.cd, %i.cp                    ; 3 uses
  %i.dj = add i32 %i.di, %i.dh
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !247
  %i.dn = mul nsw i32 %i.at, %.sroa.580.0.i
  %i.do = add i32 %i.di, %i.dn
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !247 ; 3 uses
  %i.ds = add nsw i32 %.sroa.580.0.i, 1
  %i.dt = mul nsw i32 %i.ds, %i.at
  %i.du = add i32 %i.di, %i.dt
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !247
  %i.dy = fsub double %i.dr, %i.dm                ; 2 uses
  %i.dz = fsub double %i.dx, %i.dr                ; 2 uses
  %i.ea = fmul double %i.dy, %i.dz                ; 2 uses
  %i.eb = fcmp ogt double %i.ea, 0.000000e+00
  br i1 %i.eb, label %.critedge.i, label %..critedge59_crit_edge.i

..critedge59_crit_edge.i:                         ; preds = %bb.b
  %.pre99.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11224
  br label %_ZNK4Adv51Y13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit

.critedge.i:                                      ; preds = %bb.b
  %i.ec = fmul nnan double %i.ea, 2.000000e+00
  %i.ed = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11231 ; 3 uses
  %i.ee = fmul double %i.dy, %i.ed
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.ed, double %i.ee)
  %i.eg = fdiv double %i.ec, %i.ef
  br label %_ZNK4Adv51Y13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit

_ZNK4Adv51Y13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit: ; preds = %..critedge59_crit_edge.i, %.critedge.i
  %i.eh = phi double [ %i.ed, %.critedge.i ], [ %.pre99.i, %..critedge59_crit_edge.i ] ; 2 uses
  %i.ei = phi double [ %i.eg, %.critedge.i ], [ 0.000000e+00, %..critedge59_crit_edge.i ]
  %i.ej = add i32 %i.cj, %i.cp
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !247
  %i.en = add i32 %i.cj, %i.cv
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !247
  %i.er = fmul double %i.eq, 5.000000e-01
  %i.es = tail call double @llvm.fmuladd.f64(double %i.em, double 5.000000e-01, double %i.er)
  %i.et = load double, ptr %i.bh, align 8, !tbaa !247, !noalias !11224 ; 2 uses
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.cl, double %i.et)
  %i.ev = sub nsw i32 %.sroa.580.0.i, %i.bj
  %i.ew = sitofp i32 %i.ev to double
  %i.ex = fadd double %i.ew, 5.000000e-01
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.ex, double %i.et)
  %i.ez = fsub double %i.eu, %i.ey
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.dd, double -5.000000e-01, double %i.ez)
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.ei, double %i.dr)
  %i.fc = fmul double %i.es, %i.fb
  %.reass = add i32 %invariant.op, %i.cp
  %i.fd = sext i32 %.reass to i64
  %gep = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.fd
  store double %i.fc, ptr %gep, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bz, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !11234
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI16MainEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_EN4Adv51Y13MomentumfluxYILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EERKT2_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %class.ScalarCodeInfo.641, align 8  ; 21 uses
  %5 = alloca %struct.UpdateNotifier, align 1     ; 3 uses
  %6 = alloca %struct.EngineWriteNotifier, align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !6034
  store ptr %i.f, ptr %i.a, align 8
  store i32 0, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i32 3, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !6034
  store ptr %i.m, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  store ptr %i.m, ptr %i.j, align 8
  store i32 3, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !6034
  store ptr %i.t, ptr %i.o, align 8
  store i32 0, ptr %i.p, align 8
end_hunk_9
begin_hunk_10_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EN4Adv51Y13MomentumfluxYILi3EEELi3E15EvaluateLocLoopISH_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSK_4sizeEERKT2_:bb.a
  %reass.sub.i.2.i.i = sub i32 %i.ag, %i.ab
  %i.ah = add i32 %reass.sub.i.2.i.i, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.ab, ptr %i.ai, align 4, !tbaa !4, !alias.scope !11260
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !4, !alias.scope !11260
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  call void @_ZNK9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_EclI8IntervalILi3EEEEN5View1IS9_T_E6Type_tERKSE_(ptr dead_on_unwind nonnull writable sret(%struct.MultiArg3.643) align 8 %8, ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 4 dereferenceable(24) %7)
  %i.ak = load i64, ptr %1, align 8
  %i.al = call noalias noundef nonnull dereferenceable(576) ptr @_Znwm(i64 noundef 576) #46 ; 19 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 0, ptr %i.ao, align 8, !tbaa !2454
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.ap, align 8, !tbaa !2701
  %i.aq = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxYILi3EEELi3EEE, i64 16), ptr %i.al, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @_ZN9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(432) %i.as, ptr noundef nonnull align 8 dereferenceable(432) %8)
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 464
  store i64 %i.ak, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  store i32 %i.c, ptr %i.au, align 8, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 476
  store i32 %i.f, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 480
  store i32 %i.n, ptr %i.aw, align 8, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 484
  store i32 %i.q, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 488
  store i32 %i.aa, ptr %i.ay, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 492
  store i32 %i.ad, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 496 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 536
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr %i.al, ptr %5, align 8, !tbaa !6175
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11261
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11261
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #48
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxYILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxYILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6034 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6034 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxYILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxYILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 576) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxYILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.787, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store ptr %i.b, ptr %1, align 8, !tbaa !8322
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !11262
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_EN4Adv51Y13MomentumfluxYILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_EN4Adv51Y13MomentumfluxYILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11262
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not33 = icmp sgt i32 %i.e, %i.m
  br i1 %.not33, label %._crit_edge36, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2330 = icmp sgt i32 %i.c, %i.q
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2330, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge36, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !8322 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !6263
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !6266
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !6262
  %i.ac = getelementptr inbounds [88 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2836 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4  ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !4
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !741, !noalias !59 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 136 ; 2 uses
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !6263
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !6266
  %i.am = load i64, ptr %i.u, align 8, !tbaa !6262
  %i.an = getelementptr inbounds [88 x i8], ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2836 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %.pre.i, i64 112
  %i.av = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4, !noalias !11264 ; 2 uses
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !6263
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !6266
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !6262
  %i.bb = getelementptr inbounds [88 x i8], ptr %i.az, i64 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2836
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !4
  %i.bi = zext i32 %i.a to i64
  %i.bj = add i32 %i.g, %i.a
  %i.bk = add i32 %i.i, %i.c
  %i.bl = add i32 %i.k, %i.e
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge32.split
  %.02234 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.by, %._crit_edge32.split ] ; 4 uses
  %i.bm = mul nsw i32 %i.ai, %.02234
  %i.bn = mul nsw i32 %i.at, %.02234
  %i.bo = mul nsw i32 %i.bh, %.02234
  br label %.preheader

._crit_edge36:                                    ; preds = %._crit_edge32.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %.02131 = phi i32 [ %i.c, %.preheader27 ], [ %i.bq, %._crit_edge ] ; 6 uses
  %i.bp = mul nsw i32 %i.ag, %.02131
  %i.bq = add nsw i32 %.02131, 1                  ; 5 uses
  %i.br = mul nsw i32 %i.ag, %i.bq
  %i.bs = mul nsw i32 %i.ar, %.02131
  %i.bt = mul nsw i32 %i.ar, %i.bq
  %i.bu = sub nsw i32 %.02131, %i.aw
  %i.bv = sitofp i32 %i.bu to double
  %i.bw = fadd double %i.bv, 5.000000e-01
  %i.bx = mul nsw i32 %i.bf, %.02131
  %invariant.op = add i32 %i.bx, %i.bo
  br label %bb.b

._crit_edge32.split:                              ; preds = %._crit_edge
  %i.by = add i32 %.02234, 1                      ; 2 uses
  %exitcond44.not = icmp eq i32 %i.by, %i.bl
  br i1 %exitcond44.not, label %._crit_edge36, label %.preheader27, !llvm.loop !11267

._crit_edge:                                      ; preds = %_ZNK4Adv51Y13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit
  %exitcond43.not = icmp eq i32 %i.bq, %i.bk
  br i1 %exitcond43.not, label %._crit_edge32.split, label %.preheader, !llvm.loop !11268

bb.b:                                             ; preds = %.preheader, %_ZNK4Adv51Y13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit
  %indvars.iv = phi i64 [ %i.bi, %.preheader ], [ %indvars.iv.next, %_ZNK4Adv51Y13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit ] ; 2 uses
  %i.bz = trunc i64 %indvars.iv to i32            ; 3 uses
  %i.ca = add i32 %i.bm, %i.bz                    ; 5 uses
  %i.cb = add i32 %i.ca, %i.bp
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !247
  %i.cf = add i32 %i.ca, %i.br
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !247
  %i.cj = fadd double %i.ce, %i.ci
  %i.ck = fmul double %i.cj, 5.000000e-01
  %i.cl = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !11269
  %i.cm = fmul double %i.cl, %i.ck                ; 2 uses
  %i.cn = fcmp ogt double %i.cm, 0.000000e+00
  %.sroa.581.0.i = select i1 %i.cn, i32 %.02131, i32 %i.bq ; 4 uses
  %i.co = add nsw i32 %.sroa.581.0.i, -1
  %i.cp = mul nsw i32 %i.co, %i.ag
  %i.cq = add i32 %i.cp, %i.ca
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !247
  %i.cu = mul nsw i32 %.sroa.581.0.i, %i.ag
  %i.cv = add i32 %i.cu, %i.ca
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !247 ; 3 uses
  %i.cz = add nsw i32 %.sroa.581.0.i, 1
  %i.da = mul nsw i32 %i.cz, %i.ag
  %i.db = add i32 %i.da, %i.ca
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !247
  %i.df = fsub double %i.cy, %i.ct                ; 2 uses
  %i.dg = fsub double %i.de, %i.cy                ; 2 uses
  %i.dh = fmul double %i.df, %i.dg                ; 2 uses
  %i.di = fcmp ogt double %i.dh, 0.000000e+00
  br i1 %i.di, label %.critedge.i, label %..critedge57_crit_edge.i

..critedge57_crit_edge.i:                         ; preds = %bb.b
  %.pre100.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11264
  br label %_ZNK4Adv51Y13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit

.critedge.i:                                      ; preds = %bb.b
  %i.dj = fmul nnan double %i.dh, 2.000000e+00
  %i.dk = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11271 ; 3 uses
  %i.dl = fmul double %i.df, %i.dk
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.dk, double %i.dl)
  %i.dn = fdiv double %i.dj, %i.dm
  br label %_ZNK4Adv51Y13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit

_ZNK4Adv51Y13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit: ; preds = %..critedge57_crit_edge.i, %.critedge.i
  %i.do = phi double [ %i.dk, %.critedge.i ], [ %.pre100.i, %..critedge57_crit_edge.i ] ; 2 uses
  %i.dp = phi double [ %i.dn, %.critedge.i ], [ 0.000000e+00, %..critedge57_crit_edge.i ]
  %i.dq = add i32 %i.bn, %i.bz                    ; 2 uses
  %i.dr = add i32 %i.dq, %i.bs
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ds
  %i.du = load double, ptr %i.dt, align 8, !tbaa !247
  %i.dv = add i32 %i.dq, %i.bt
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.dw
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !247
  %i.dz = fadd double %i.du, %i.dy
  %i.ea = fmul double %i.dz, 5.000000e-01
  %i.eb = load double, ptr %i.au, align 8, !tbaa !247, !noalias !11264 ; 2 uses
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.do, double %i.bw, double %i.eb)
  %i.ed = sub nsw i32 %.sroa.581.0.i, %i.aw
  %i.ee = sitofp i32 %i.ed to double
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.do, double %i.ee, double %i.eb)
  %i.eg = fsub double %i.ec, %i.ef
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.cm, double -5.000000e-01, double %i.eg)
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.dp, double %i.cy)
  %i.ej = fmul double %i.ea, %i.ei
  %.reass = add i32 %invariant.op, %i.bz
  %i.ek = sext i32 %.reass to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.ek
  store double %i.ej, ptr %i.el, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bj, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !11274
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI16MainEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10MultiPatchI7GridTag6RemoteI5BrickEEE3LocILi1EEEES4_ISA_dSL_ES4_ISA_d13ExpressionTagI10BinaryNodeI5OpAdd9ReferenceISR_E6ScalarIdEEEESR_EN4Adv51Y13MomentumfluxZILi3EEELi3E15EvaluateLocLoopIS16_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EERKT2_(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %class.ScalarCodeInfo, align 8      ; 22 uses
  %5 = alloca %struct.UpdateNotifier, align 1     ; 3 uses
  %6 = alloca %struct.EngineWriteNotifier, align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !6034
  store ptr %i.f, ptr %i.a, align 8
  store i32 0, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i32 4, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !6034
  store ptr %i.m, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  store ptr %i.m, ptr %i.j, align 8
  store i32 4, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !6034
  store ptr %i.t, ptr %i.o, align 8
  store i32 0, ptr %i.p, align 8
  store ptr %i.t, ptr %i.q, align 8
  store i32 4, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 2, ptr %i.v, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %i.w, align 8, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_10
begin_hunk_11_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ES4_ISA_d13ExpressionTagI10BinaryNodeI5OpAddSM_6ScalarIdEEEESM_EN4Adv51Y13MomentumfluxZILi3EEELi3E15EvaluateLocLoopISZ_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrS12_4sizeEERKT2_:bb.a
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ES1_IS7_d13ExpressionTagI10BinaryNodeI5OpAddSJ_6ScalarIdEEEESJ_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxZILi3EEELi3EEE, i64 16), ptr %i.al, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES0_IS6_dSC_ES0_IS6_d13ExpressionTagI10BinaryNodeI5OpAddSI_6ScalarIdEEEESI_EC2ERKSR_(ptr noundef nonnull align 8 dereferenceable(616) %i.as, ptr noundef nonnull align 8 dereferenceable(616) %8)
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 648
  store i64 %i.ak, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 656
  store i32 %i.c, ptr %i.au, align 8, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 660
  store i32 %i.f, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 664
  store i32 %i.n, ptr %i.aw, align 8, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 668
  store i32 %i.q, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 672
  store i32 %i.aa, ptr %i.ay, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 676
  store i32 %i.ad, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 680 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 720
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr %i.al, ptr %5, align 8, !tbaa !6175
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES0_IS6_dSC_ES0_IS6_d13ExpressionTagI10BinaryNodeI5OpAddSI_6ScalarIdEEEESI_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(616) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11294
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11294
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 472
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #48
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(184) %i.bk) #48
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bl) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(616) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ES1_IS7_d13ExpressionTagI10BinaryNodeI5OpAddSJ_6ScalarIdEEEESJ_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxZILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(760) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ES1_IS7_d13ExpressionTagI10BinaryNodeI5OpAddSJ_6ScalarIdEEEESJ_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxZILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES0_IS6_dSC_ES0_IS6_d13ExpressionTagI10BinaryNodeI5OpAddSI_6ScalarIdEEEESI_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(616) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 720
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6034 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6034 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 504
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(184) %i.w) #48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.x) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(616) %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ES1_IS7_d13ExpressionTagI10BinaryNodeI5OpAddSJ_6ScalarIdEEEESJ_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxZILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(760) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ES1_IS7_d13ExpressionTagI10BinaryNodeI5OpAddSJ_6ScalarIdEEEESJ_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxZILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(760) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 760) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ES1_IS7_d13ExpressionTagI10BinaryNodeI5OpAddSJ_6ScalarIdEEEESJ_E15EvaluateLocLoopIN4Adv51Y13MomentumfluxZILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(760) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.790, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store ptr %i.b, ptr %1, align 8, !tbaa !9494
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !11295
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 656
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES3_IS9_dSF_ES3_IS9_d13ExpressionTagI10BinaryNodeI5OpAddSL_6ScalarIdEEEESL_EN4Adv51Y13MomentumfluxZILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES3_IS9_dSF_ES3_IS9_d13ExpressionTagI10BinaryNodeI5OpAddSL_6ScalarIdEEEESL_EN4Adv51Y13MomentumfluxZILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11295
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not33 = icmp sgt i32 %i.e, %i.m
  br i1 %.not33, label %._crit_edge36, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !9494 ; 10 uses
  %.not2330 = icmp sgt i32 %i.c, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 432
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2330, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge36, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 552
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 544
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !6263
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !6266
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !6262
  %i.af = getelementptr inbounds [88 x i8], ptr %i.ad, i64 %i.ae ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2836 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !4  ; 2 uses
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !6263
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !6266
  %i.ap = load i64, ptr %i.x, align 8, !tbaa !6262
  %i.aq = getelementptr inbounds [88 x i8], ptr %i.ao, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2836 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !4
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !741, !noalias !59 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 136 ; 2 uses
  %i.ax = load ptr, ptr %i.u, align 8, !tbaa !6263
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !6266
  %i.ba = load i64, ptr %i.v, align 8, !tbaa !6262
  %i.bb = getelementptr inbounds [88 x i8], ptr %i.az, i64 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2836 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !4  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.i, i64 112
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4, !noalias !11297 ; 2 uses
  %i.bl = load ptr, ptr %i.s, align 8, !tbaa !9179
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !9180
  %i.bo = load i64, ptr %i.t, align 8, !tbaa !9178
  %i.bp = getelementptr inbounds [96 x i8], ptr %i.bn, i64 %i.bo ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !3382
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !236
  %i.by = sext i32 %i.bx to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.br, i64 %i.by
  %i.bz = zext i32 %i.a to i64
  %i.ca = add i32 %i.g, %i.a
  %i.cb = add i32 %i.i, %i.c
  %i.cc = add i32 %i.k, %i.e
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge32.split
  %.02234 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.cp, %._crit_edge32.split ] ; 6 uses
  %i.cd = add nsw i32 %.02234, -1                 ; 2 uses
  %i.ce = mul nsw i32 %i.al, %.02234
  %i.cf = mul nsw i32 %i.al, %i.cd
  %i.cg = mul nsw i32 %i.aw, %.02234
  %i.ch = mul nsw i32 %i.bh, %.02234
  %i.ci = mul nsw i32 %i.bh, %i.cd
  %i.cj = mul nsw i32 %i.bv, %.02234
  br label %.preheader

._crit_edge36:                                    ; preds = %._crit_edge32.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %.02131 = phi i32 [ %i.c, %.preheader27 ], [ %i.cq, %._crit_edge ] ; 6 uses
  %i.ck = mul nsw i32 %i.aj, %.02131
  %i.cl = mul nsw i32 %i.bf, %.02131
  %i.cm = sub nsw i32 %.02131, %i.bk
  %i.cn = sitofp i32 %i.cm to double
  %i.co = mul nsw i32 %i.bt, %.02131
  %invariant.op = add i32 %i.co, %i.cj
  br label %bb.b

._crit_edge32.split:                              ; preds = %._crit_edge
  %i.cp = add i32 %.02234, 1                      ; 2 uses
  %exitcond44.not = icmp eq i32 %i.cp, %i.cc
  br i1 %exitcond44.not, label %._crit_edge36, label %.preheader27, !llvm.loop !11300

._crit_edge:                                      ; preds = %_ZNK4Adv51Y13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ES4_ISA_d13ExpressionTagI10BinaryNodeI5OpAddSM_6ScalarIdEEEESM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit
  %i.cq = add i32 %.02131, 1                      ; 2 uses
  %exitcond43.not = icmp eq i32 %i.cq, %i.cb
  br i1 %exitcond43.not, label %._crit_edge32.split, label %.preheader, !llvm.loop !11301

bb.b:                                             ; preds = %.preheader, %_ZNK4Adv51Y13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ES4_ISA_d13ExpressionTagI10BinaryNodeI5OpAddSM_6ScalarIdEEEESM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit
  %indvars.iv = phi i64 [ %i.bz, %.preheader ], [ %indvars.iv.next, %_ZNK4Adv51Y13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ES4_ISA_d13ExpressionTagI10BinaryNodeI5OpAddSM_6ScalarIdEEEESM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit ] ; 2 uses
  %i.cr = trunc i64 %indvars.iv to i32            ; 4 uses
  %i.cs = add i32 %i.ck, %i.cr                    ; 2 uses
  %i.ct = add i32 %i.ce, %i.cs
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !247
  %i.cx = add i32 %i.cf, %i.cs
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !247
  %i.db = fmul double %i.da, 5.000000e-01
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cw, double 5.000000e-01, double %i.db)
  %i.dd = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !11302
  %i.de = fmul double %i.dd, %i.dc                ; 2 uses
  %i.df = fcmp ogt double %i.de, 0.000000e+00
  %i.dg = sext i1 %i.df to i32
  %.sroa.5101.0.i = add nsw i32 %.02131, %i.dg    ; 4 uses
  %i.dh = add nsw i32 %.sroa.5101.0.i, -1
  %i.di = mul nsw i32 %i.dh, %i.au
  %i.dj = add i32 %i.cg, %i.cr                    ; 3 uses
  %i.dk = add i32 %i.dj, %i.di
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !247
  %i.do = load double, ptr %i.r, align 8, !tbaa !247 ; 3 uses
  %i.dp = fadd double %i.dn, %i.do
  %i.dq = mul nsw i32 %i.au, %.sroa.5101.0.i
  %i.dr = add i32 %i.dj, %i.dq
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.ds
  %i.du = load double, ptr %i.dt, align 8, !tbaa !247
  %i.dv = fadd double %i.do, %i.du                ; 3 uses
  %i.dw = add nsw i32 %.sroa.5101.0.i, 1
  %i.dx = mul nsw i32 %i.dw, %i.au
  %i.dy = add i32 %i.dj, %i.dx
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !247
  %i.ec = fadd double %i.do, %i.eb
  %i.ed = fsub double %i.dv, %i.dp                ; 2 uses
  %i.ee = fsub double %i.ec, %i.dv                ; 2 uses
  %i.ef = fmul double %i.ed, %i.ee                ; 2 uses
  %i.eg = fcmp ogt double %i.ef, 0.000000e+00
  br i1 %i.eg, label %.critedge.i, label %..critedge68_crit_edge.i

..critedge68_crit_edge.i:                         ; preds = %bb.b
  %.pre125.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11297
  br label %_ZNK4Adv51Y13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ES4_ISA_d13ExpressionTagI10BinaryNodeI5OpAddSM_6ScalarIdEEEESM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit

.critedge.i:                                      ; preds = %bb.b
  %i.eh = fmul nnan double %i.ef, 2.000000e+00
  %i.ei = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11304 ; 3 uses
  %i.ej = fmul double %i.ed, %i.ei
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ei, double %i.ej)
  %i.el = fdiv double %i.eh, %i.ek
  br label %_ZNK4Adv51Y13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ES4_ISA_d13ExpressionTagI10BinaryNodeI5OpAddSM_6ScalarIdEEEESM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit

_ZNK4Adv51Y13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ES4_ISA_d13ExpressionTagI10BinaryNodeI5OpAddSM_6ScalarIdEEEESM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit: ; preds = %..critedge68_crit_edge.i, %.critedge.i
  %i.em = phi double [ %i.ei, %.critedge.i ], [ %.pre125.i, %..critedge68_crit_edge.i ] ; 2 uses
  %i.en = phi double [ %i.el, %.critedge.i ], [ 0.000000e+00, %..critedge68_crit_edge.i ]
  %i.eo = add i32 %i.cl, %i.cr                    ; 2 uses
  %i.ep = add i32 %i.eo, %i.ch
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !247
  %i.et = add i32 %i.eo, %i.ci
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.eu
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !247
  %i.ex = fmul double %i.ew, 5.000000e-01
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.es, double 5.000000e-01, double %i.ex)
  %i.ez = load double, ptr %i.bi, align 8, !tbaa !247, !noalias !11297 ; 2 uses
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.em, double %i.cn, double %i.ez)
  %i.fb = sub nsw i32 %.sroa.5101.0.i, %i.bk
  %i.fc = sitofp i32 %i.fb to double
  %i.fd = fadd double %i.fc, 5.000000e-01
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.em, double %i.fd, double %i.ez)
  %i.ff = fsub double %i.fa, %i.fe
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.de, double -5.000000e-01, double %i.ff)
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fg, double %i.en, double %i.dv)
  %i.fi = fmul double %i.ey, %i.fh
  %.reass = add i32 %invariant.op, %i.cr
  %i.fj = sext i32 %.reass to i64
  %gep = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.fj
  store double %i.fi, ptr %gep, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ca, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !11307
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI16MainEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_S4_ISA_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESG_E3LocILi1EEEEEN4Adv51Y14Momentumflux2XILi3EEELi3E15EvaluateLocLoopISW_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EERKT2_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(28) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %class.ScalarCodeInfo.641, align 8  ; 21 uses
  %5 = alloca %struct.UpdateNotifier, align 1     ; 3 uses
  %6 = alloca %struct.EngineWriteNotifier, align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !6034
  store ptr %i.f, ptr %i.a, align 8
  store i32 0, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i32 3, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !6034
  store ptr %i.m, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  store ptr %i.m, ptr %i.j, align 8
  store i32 3, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EN4Adv51Z8MassflowILi3EEELi3E15EvaluateLocLoopISH_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSK_4sizeEERKT2_:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 0, ptr %i.ao, align 8, !tbaa !2454
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.ap, align 8, !tbaa !2701
  %i.aq = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Z8MassflowILi3EEELi3EEE, i64 16), ptr %i.al, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @_ZN9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(432) %i.as, ptr noundef nonnull align 8 dereferenceable(432) %8)
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 464
  store i64 %i.ak, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  store i32 %i.c, ptr %i.au, align 8, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 476
  store i32 %i.f, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 480
  store i32 %i.n, ptr %i.aw, align 8, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 484
  store i32 %i.q, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 488
  store i32 %i.aa, ptr %i.ay, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 492
  store i32 %i.ad, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 496 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 536
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr %i.al, ptr %5, align 8, !tbaa !6175
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11631
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11631
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #48
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Z8MassflowILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Z8MassflowILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6034 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6034 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Z8MassflowILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Z8MassflowILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 576) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Z8MassflowILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.815, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store ptr %i.b, ptr %1, align 8, !tbaa !8322
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !11632
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_EN4Adv51Z8MassflowILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_EN4Adv51Z8MassflowILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11632
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not35 = icmp sgt i32 %i.e, %i.m
  br i1 %.not35, label %._crit_edge38, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2332 = icmp sgt i32 %i.c, %i.q
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2332, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge38, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !8322 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 280
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !6263
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !6266
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !6262
  %i.ac = getelementptr inbounds [88 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2836
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !4
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !6263
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !6266
  %i.am = load i64, ptr %i.u, align 8, !tbaa !6262
  %i.an = getelementptr inbounds [88 x i8], ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2836 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !4  ; 3 uses
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !741, !noalias !59 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 144 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pre.i, i64 120
  %i.av = getelementptr inbounds nuw i8, ptr %.pre.i, i64 48
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4, !noalias !11634 ; 2 uses
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !6263
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !6266
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !6262
  %i.bb = getelementptr inbounds [88 x i8], ptr %i.az, i64 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2836
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !4
  %i.bi = zext i32 %i.a to i64
  %i.bj = add i32 %i.g, %i.a
  %i.bk = add i32 %i.i, %i.c
  %i.bl = add i32 %i.k, %i.e
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge34.split
  %.02236 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.bt, %._crit_edge34.split ] ; 5 uses
  %i.bm = mul nsw i32 %i.ai, %.02236
  %i.bn = sub nsw i32 %.02236, %i.aw
  %i.bo = sitofp i32 %i.bn to double
  %i.bp = mul nsw i32 %i.bh, %.02236
  br label %.preheader

._crit_edge38:                                    ; preds = %._crit_edge34.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %.02133 = phi i32 [ %i.c, %.preheader27 ], [ %i.bu, %._crit_edge ] ; 4 uses
  %i.bq = mul nsw i32 %i.ag, %.02133
  %invariant.op = add i32 %i.bq, %i.bm
  %i.br = mul nsw i32 %i.ar, %.02133
  %i.bs = mul nsw i32 %i.bf, %.02133
  %invariant.op30 = add i32 %i.bs, %i.bp
  br label %bb.b

._crit_edge34.split:                              ; preds = %._crit_edge
  %i.bt = add i32 %.02236, 1                      ; 2 uses
  %exitcond46.not = icmp eq i32 %i.bt, %i.bl
  br i1 %exitcond46.not, label %._crit_edge38, label %.preheader27, !llvm.loop !11637

._crit_edge:                                      ; preds = %_ZNK4Adv51Z8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit
  %i.bu = add i32 %.02133, 1                      ; 2 uses
  %exitcond45.not = icmp eq i32 %i.bu, %i.bk
  br i1 %exitcond45.not, label %._crit_edge34.split, label %.preheader, !llvm.loop !11638

bb.b:                                             ; preds = %.preheader, %_ZNK4Adv51Z8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit
  %indvars.iv = phi i64 [ %i.bi, %.preheader ], [ %indvars.iv.next, %_ZNK4Adv51Z8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit ] ; 2 uses
  %i.bv = trunc i64 %indvars.iv to i32            ; 3 uses
  %.reass = add i32 %invariant.op, %i.bv
  %i.bw = sext i32 %.reass to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !247
  %i.bz = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !11639
  %i.ca = fmul double %i.by, %i.bz                ; 3 uses
  %i.cb = fcmp ogt double %i.ca, 0.000000e+00
  %i.cc = sext i1 %i.cb to i32
  %.sroa.28.0.i = add nsw i32 %.02236, %i.cc      ; 4 uses
  %i.cd = mul nsw i32 %i.at, %.sroa.28.0.i
  %i.ce = add i32 %i.br, %i.bv                    ; 3 uses
  %i.cf = add i32 %i.ce, %i.cd
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !247 ; 3 uses
  %i.cj = add nsw i32 %.sroa.28.0.i, -1
  %i.ck = mul nsw i32 %i.at, %i.cj
  %i.cl = add i32 %i.ce, %i.ck
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !247
  %i.cp = fsub double %i.ci, %i.co                ; 2 uses
  %i.cq = add nsw i32 %.sroa.28.0.i, 1
  %i.cr = mul nsw i32 %i.at, %i.cq
  %i.cs = add i32 %i.ce, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !247
  %i.cw = fsub double %i.cv, %i.ci                ; 2 uses
  %i.cx = fmul double %i.cp, %i.cw                ; 2 uses
  %i.cy = fcmp ogt double %i.cx, 0.000000e+00
  br i1 %i.cy, label %.critedge.i, label %..critedge56_crit_edge.i

..critedge56_crit_edge.i:                         ; preds = %bb.b
  %.pre114.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11634
  br label %_ZNK4Adv51Z8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit

.critedge.i:                                      ; preds = %bb.b
  %i.cz = fmul nnan double %i.cx, 2.000000e+00
  %i.da = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11641 ; 3 uses
  %i.db = fmul double %i.cw, %i.da
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.da, double %i.db)
  %i.dd = fdiv double %i.cz, %i.dc
  br label %_ZNK4Adv51Z8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit

_ZNK4Adv51Z8MassflowILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit: ; preds = %..critedge56_crit_edge.i, %.critedge.i
  %i.de = phi double [ %i.da, %.critedge.i ], [ %.pre114.i, %..critedge56_crit_edge.i ] ; 2 uses
  %i.df = phi double [ %i.dd, %.critedge.i ], [ 0.000000e+00, %..critedge56_crit_edge.i ]
  %i.dg = load double, ptr %i.au, align 8, !tbaa !247, !noalias !11634 ; 2 uses
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.de, double %i.bo, double %i.dg)
  %i.di = sub nsw i32 %.sroa.28.0.i, %i.aw
  %i.dj = sitofp i32 %i.di to double
  %i.dk = fadd double %i.dj, 5.000000e-01
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.de, double %i.dk, double %i.dg)
  %i.dm = fsub double %i.dh, %i.dl
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.ca, double -5.000000e-01, double %i.dm)
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.df, double %i.ci)
  %i.dp = fmul double %i.ca, %i.do
  %.reass31 = add i32 %invariant.op30, %i.bv
  %i.dq = sext i32 %.reass31 to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.dq
  store double %i.dp, ptr %i.dr, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bj, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !11644
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI16MainEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_SH_EN4Adv51Z10EnergyfluxILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EERKT2_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %class.ScalarCodeInfo, align 8      ; 21 uses
  %5 = alloca %struct.UpdateNotifier, align 1     ; 3 uses
  %6 = alloca %struct.EngineWriteNotifier, align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !6034
  store ptr %i.f, ptr %i.a, align 8
  store i32 0, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i32 4, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !6034
  store ptr %i.m, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  store ptr %i.m, ptr %i.j, align 8
  store i32 4, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !6034
  store ptr %i.t, ptr %i.o, align 8
  store i32 0, ptr %i.p, align 8
  store ptr %i.t, ptr %i.q, align 8
  store i32 4, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 2, ptr %i.v, align 8, !tbaa !4
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 1, ptr %i.w, align 4, !tbaa !4
  store i64 1, ptr %i.m, align 8, !tbaa !12
  store i64 -2, ptr %i.t, align 8, !tbaa !12
  store i64 -14, ptr %i.f, align 8, !tbaa !12
  %i.x = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_SD_SD_14UpdateNotifierEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(40) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  call void @_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_SH_EN4Adv51Z10EnergyfluxILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSP_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_SD_SD_19EngineWriteNotifierEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  %i.z = load i32, ptr @_ZN5Pooma12expression_gE, align 4, !tbaa !4
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr @_ZN5Pooma12expression_gE, align 4, !tbaa !4
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !6034 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = ashr exact i64 %i.af, 3
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ah
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.af) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
end_hunk_12
begin_hunk_13_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EN4Adv51Z10EnergyfluxILi3EEELi3E15EvaluateLocLoopISH_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSK_4sizeEERKT2_:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN4Adv51Z10EnergyfluxILi3EEELi3EEE, i64 16), ptr %i.al, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(576) %i.as, ptr noundef nonnull align 8 dereferenceable(576) %8)
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 608
  store i64 %i.ak, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 616
  store i32 %i.c, ptr %i.au, align 8, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 620
  store i32 %i.f, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 624
  store i32 %i.n, ptr %i.aw, align 8, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 628
  store i32 %i.q, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 632
  store i32 %i.aa, ptr %i.ay, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 636
  store i32 %i.ad, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 640 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 680
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr %i.al, ptr %5, align 8, !tbaa !6175
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11671
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11671
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 432
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #48
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #48
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bl) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN4Adv51Z10EnergyfluxILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN4Adv51Z10EnergyfluxILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6034 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6034 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 464
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.x) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN4Adv51Z10EnergyfluxILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN4Adv51Z10EnergyfluxILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 720) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN4Adv51Z10EnergyfluxILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.818, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store ptr %i.b, ptr %1, align 8, !tbaa !8886
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !11672
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_EN4Adv51Z10EnergyfluxILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_EN4Adv51Z10EnergyfluxILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11672
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not37 = icmp sgt i32 %i.e, %i.m
  br i1 %.not37, label %._crit_edge40, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2334 = icmp sgt i32 %i.c, %i.q
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2334, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge40, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !8886 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 280
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !6263
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !6266
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !6262
  %i.ae = getelementptr inbounds [88 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2836
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !4
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !6263
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !6266
  %i.ao = load i64, ptr %i.w, align 8, !tbaa !6262
  %i.ap = getelementptr inbounds [88 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2836 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !4  ; 3 uses
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !741, !noalias !59 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 144 ; 2 uses
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !6263
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !6266
  %i.az = load i64, ptr %i.u, align 8, !tbaa !6262
  %i.ba = getelementptr inbounds [88 x i8], ptr %i.ay, i64 %i.az ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2836
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre.i, i64 120
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.i, i64 48
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4, !noalias !11674 ; 2 uses
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !6263
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !6266
  %i.bn = load i64, ptr %i.s, align 8, !tbaa !6262
  %i.bo = getelementptr inbounds [88 x i8], ptr %i.bm, i64 %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2836
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !4
  %i.bv = zext i32 %i.a to i64
  %i.bw = add i32 %i.g, %i.a
  %i.bx = add i32 %i.i, %i.c
  %i.by = add i32 %i.k, %i.e
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge36.split
  %.02238 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.ci, %._crit_edge36.split ] ; 6 uses
  %i.bz = mul nsw i32 %i.ak, %.02238
  %i.ca = mul nsw i32 %i.bg, %.02238
  %i.cb = sub nsw i32 %.02238, %i.bj
  %i.cc = sitofp i32 %i.cb to double
  %i.cd = mul nsw i32 %i.bu, %.02238
  br label %.preheader

._crit_edge40:                                    ; preds = %._crit_edge36.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %.02135 = phi i32 [ %i.c, %.preheader27 ], [ %i.cj, %._crit_edge ] ; 5 uses
  %i.ce = mul nsw i32 %i.ai, %.02135
  %invariant.op = add i32 %i.ce, %i.bz
  %i.cf = mul nsw i32 %i.at, %.02135
  %i.cg = mul nsw i32 %i.be, %.02135
  %invariant.op30 = add i32 %i.cg, %i.ca
  %i.ch = mul nsw i32 %i.bs, %.02135
  %invariant.op32 = add i32 %i.ch, %i.cd
  br label %bb.b

._crit_edge36.split:                              ; preds = %._crit_edge
  %i.ci = add i32 %.02238, 1                      ; 2 uses
  %exitcond48.not = icmp eq i32 %i.ci, %i.by
  br i1 %exitcond48.not, label %._crit_edge40, label %.preheader27, !llvm.loop !11677

._crit_edge:                                      ; preds = %_ZNK4Adv51Z10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit
  %i.cj = add i32 %.02135, 1                      ; 2 uses
  %exitcond47.not = icmp eq i32 %i.cj, %i.bx
  br i1 %exitcond47.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !11678

bb.b:                                             ; preds = %.preheader, %_ZNK4Adv51Z10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit
  %indvars.iv = phi i64 [ %i.bv, %.preheader ], [ %indvars.iv.next, %_ZNK4Adv51Z10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit ] ; 2 uses
  %i.ck = trunc i64 %indvars.iv to i32            ; 4 uses
  %.reass = add i32 %invariant.op, %i.ck
  %i.cl = sext i32 %.reass to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !247
  %i.co = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !11679
  %i.cp = fmul double %i.cn, %i.co                ; 2 uses
  %i.cq = fcmp ogt double %i.cp, 0.000000e+00
  %i.cr = sext i1 %i.cq to i32
  %.sroa.8.0.i = add nsw i32 %.02238, %i.cr       ; 4 uses
  %i.cs = add nsw i32 %.sroa.8.0.i, -1
  %i.ct = mul nsw i32 %i.av, %i.cs
  %i.cu = add i32 %i.cf, %i.ck                    ; 3 uses
  %i.cv = add i32 %i.cu, %i.ct
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !247
  %i.cz = mul nsw i32 %i.av, %.sroa.8.0.i
  %i.da = add i32 %i.cu, %i.cz
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !247 ; 3 uses
  %i.de = add nsw i32 %.sroa.8.0.i, 1
  %i.df = mul nsw i32 %i.av, %i.de
  %i.dg = add i32 %i.cu, %i.df
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !247
  %i.dk = fsub double %i.dd, %i.cy                ; 2 uses
  %i.dl = fsub double %i.dj, %i.dd                ; 2 uses
  %i.dm = fmul double %i.dk, %i.dl                ; 2 uses
  %i.dn = fcmp ogt double %i.dm, 0.000000e+00
  br i1 %i.dn, label %.critedge.i, label %..critedge47_crit_edge.i

..critedge47_crit_edge.i:                         ; preds = %bb.b
  %.pre81.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11674
  br label %_ZNK4Adv51Z10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit

.critedge.i:                                      ; preds = %bb.b
  %i.do = fmul nnan double %i.dm, 2.000000e+00
  %i.dp = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11681 ; 3 uses
  %i.dq = fmul double %i.dk, %i.dp
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dp, double %i.dq)
  %i.ds = fdiv double %i.do, %i.dr
  br label %_ZNK4Adv51Z10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit

_ZNK4Adv51Z10EnergyfluxILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit: ; preds = %..critedge47_crit_edge.i, %.critedge.i
  %i.dt = phi double [ %i.dp, %.critedge.i ], [ %.pre81.i, %..critedge47_crit_edge.i ] ; 2 uses
  %i.du = phi double [ %i.ds, %.critedge.i ], [ 0.000000e+00, %..critedge47_crit_edge.i ]
  %.reass31 = add i32 %invariant.op30, %i.ck
  %i.dv = sext i32 %.reass31 to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !247
  %i.dy = load double, ptr %i.bh, align 8, !tbaa !247, !noalias !11674 ; 2 uses
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.cc, double %i.dy)
  %i.ea = sub nsw i32 %.sroa.8.0.i, %i.bj
  %i.eb = sitofp i32 %i.ea to double
  %i.ec = fadd double %i.eb, 5.000000e-01
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.ec, double %i.dy)
  %i.ee = fsub double %i.dz, %i.ed
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.cp, double -5.000000e-01, double %i.ee)
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ef, double %i.du, double %i.dd)
  %i.eh = fmul double %i.dx, %i.eg
  %.reass33 = add i32 %invariant.op32, %i.ck
  %i.ei = sext i32 %.reass33 to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.ei
  store double %i.eh, ptr %i.ej, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bw, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !11684
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI16MainEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_EN4Adv51Z11Energyflux2ILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EERKT2_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(28) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %class.ScalarCodeInfo.641, align 8  ; 20 uses
  %5 = alloca %struct.UpdateNotifier, align 1     ; 3 uses
  %6 = alloca %struct.EngineWriteNotifier, align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !6034
  store ptr %i.f, ptr %i.a, align 8
  store i32 0, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i32 3, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !6034
  store ptr %i.m, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  store ptr %i.m, ptr %i.j, align 8
  store i32 3, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !6034
  store ptr %i.t, ptr %i.o, align 8
  store i32 0, ptr %i.p, align 8
  store ptr %i.t, ptr %i.q, align 8
  store i32 3, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 1, ptr %i.v, align 4, !tbaa !4
  store i64 1, ptr %i.m, align 8, !tbaa !12
  store i64 -1, ptr %i.t, align 8, !tbaa !12
  store i64 -4, ptr %i.f, align 8, !tbaa !12
  %i.w = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_SD_14UpdateNotifierEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(40) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  call void @_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_EN4Adv51Z11Energyflux2ILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSP_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 4 dereferenceable(28) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_SD_19EngineWriteNotifierEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  %i.y = load i32, ptr @_ZN5Pooma12expression_gE, align 4, !tbaa !4
end_hunk_13
begin_hunk_14_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EN4Adv51Z13MomentumfluxXILi3EEELi3E15EvaluateLocLoopISR_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSU_4sizeEERKT2_:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxXILi3EEELi3EEE, i64 16), ptr %i.al, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES0_IS6_dSC_ESI_SI_EC2ERKSJ_(ptr noundef nonnull align 8 dereferenceable(576) %i.as, ptr noundef nonnull align 8 dereferenceable(576) %8)
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 608
  store i64 %i.ak, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 616
  store i32 %i.c, ptr %i.au, align 8, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 620
  store i32 %i.f, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 624
  store i32 %i.n, ptr %i.aw, align 8, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 628
  store i32 %i.q, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 632
  store i32 %i.aa, ptr %i.ay, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 636
  store i32 %i.ad, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 640 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 680
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr %i.al, ptr %5, align 8, !tbaa !6175
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES0_IS6_dSC_ESI_SI_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11756
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11756
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 432
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #48
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #48
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bl) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxXILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxXILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES0_IS6_dSC_ESI_SI_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6034 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6034 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 464
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.x) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxXILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxXILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 720) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxXILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.824, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store ptr %i.b, ptr %1, align 8, !tbaa !9185
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !11757
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES3_IS9_dSF_ESL_SL_EN4Adv51Z13MomentumfluxXILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES3_IS9_dSF_ESL_SL_EN4Adv51Z13MomentumfluxXILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11757
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not33 = icmp sgt i32 %i.e, %i.m
  br i1 %.not33, label %._crit_edge36, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2330 = icmp sgt i32 %i.c, %i.q
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2330, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge36, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !9185 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !6263
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !6266
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !6262
  %i.ae = getelementptr inbounds [88 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2836 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !4
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !6263
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !6266
  %i.ao = load i64, ptr %i.w, align 8, !tbaa !6262
  %i.ap = getelementptr inbounds [88 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2836 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !4  ; 3 uses
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !741, !noalias !59 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 144 ; 2 uses
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !6263
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !6266
  %i.az = load i64, ptr %i.u, align 8, !tbaa !6262
  %i.ba = getelementptr inbounds [88 x i8], ptr %i.ay, i64 %i.az ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2836 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre.i, i64 120
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.i, i64 48
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4, !noalias !11759 ; 2 uses
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !9179
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !9180
  %i.bn = load i64, ptr %i.s, align 8, !tbaa !9178
  %i.bo = getelementptr inbounds [96 x i8], ptr %i.bm, i64 %i.bn ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !3382
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !236
  %i.bx = sext i32 %i.bw to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.bq, i64 %i.bx
  %i.by = zext i32 %i.a to i64
  %i.bz = add i32 %i.g, %i.a
  %i.ca = add i32 %i.i, %i.c
  %i.cb = add i32 %i.k, %i.e
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge32.split
  %.02234 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.cn, %._crit_edge32.split ] ; 6 uses
  %i.cc = mul nsw i32 %i.ak, %.02234
  %i.cd = mul nsw i32 %i.bg, %.02234
  %i.ce = sub nsw i32 %.02234, %i.bj
  %i.cf = sitofp i32 %i.ce to double
  %i.cg = mul nsw i32 %i.bu, %.02234
  br label %.preheader

._crit_edge36:                                    ; preds = %._crit_edge32.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %.02131 = phi i32 [ %i.c, %.preheader27 ], [ %i.co, %._crit_edge ] ; 5 uses
  %i.ch = mul nsw i32 %i.ai, %.02131
  %i.ci = add i32 %i.cc, %i.ch                    ; 2 uses
  %i.cj = mul nsw i32 %i.at, %.02131
  %i.ck = mul nsw i32 %i.be, %.02131
  %i.cl = add i32 %i.cd, %i.ck                    ; 2 uses
  %i.cm = mul nsw i32 %i.bs, %.02131
  %invariant.op = add i32 %i.cm, %i.cg
  br label %bb.b

._crit_edge32.split:                              ; preds = %._crit_edge
  %i.cn = add i32 %.02234, 1                      ; 2 uses
  %exitcond44.not = icmp eq i32 %i.cn, %i.cb
  br i1 %exitcond44.not, label %._crit_edge36, label %.preheader27, !llvm.loop !11762

._crit_edge:                                      ; preds = %_ZNK4Adv51Z13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit
  %i.co = add i32 %.02131, 1                      ; 2 uses
  %exitcond43.not = icmp eq i32 %i.co, %i.ca
  br i1 %exitcond43.not, label %._crit_edge32.split, label %.preheader, !llvm.loop !11763

bb.b:                                             ; preds = %.preheader, %_ZNK4Adv51Z13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit
  %indvars.iv = phi i64 [ %i.by, %.preheader ], [ %indvars.iv.next, %_ZNK4Adv51Z13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit ] ; 3 uses
  %i.cp = trunc i64 %indvars.iv to i32            ; 4 uses
  %i.cq = add i32 %i.ci, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !247
  %i.cu = trunc i64 %indvars.iv to i32
  %i.cv = add i32 %i.cu, -1                       ; 2 uses
  %i.cw = add i32 %i.ci, %i.cv
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !247
  %i.da = fmul double %i.cz, 5.000000e-01
  %i.db = tail call double @llvm.fmuladd.f64(double %i.ct, double 5.000000e-01, double %i.da)
  %i.dc = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !11764
  %i.dd = fmul double %i.dc, %i.db                ; 2 uses
  %i.de = fcmp ogt double %i.dd, 0.000000e+00
  %i.df = sext i1 %i.de to i32
  %.sroa.8.0.i = add nsw i32 %.02234, %i.df       ; 4 uses
  %i.dg = add nsw i32 %.sroa.8.0.i, -1
  %i.dh = mul nsw i32 %i.av, %i.dg
  %i.di = add i32 %i.cj, %i.cp                    ; 3 uses
  %i.dj = add i32 %i.di, %i.dh
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !247
  %i.dn = mul nsw i32 %i.av, %.sroa.8.0.i
  %i.do = add i32 %i.di, %i.dn
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !247 ; 3 uses
  %i.ds = add nsw i32 %.sroa.8.0.i, 1
  %i.dt = mul nsw i32 %i.av, %i.ds
  %i.du = add i32 %i.di, %i.dt
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !247
  %i.dy = fsub double %i.dr, %i.dm                ; 2 uses
  %i.dz = fsub double %i.dx, %i.dr                ; 2 uses
  %i.ea = fmul double %i.dy, %i.dz                ; 2 uses
  %i.eb = fcmp ogt double %i.ea, 0.000000e+00
  br i1 %i.eb, label %.critedge.i, label %..critedge59_crit_edge.i

..critedge59_crit_edge.i:                         ; preds = %bb.b
  %.pre99.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11759
  br label %_ZNK4Adv51Z13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit

.critedge.i:                                      ; preds = %bb.b
  %i.ec = fmul nnan double %i.ea, 2.000000e+00
  %i.ed = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11766 ; 3 uses
  %i.ee = fmul double %i.dy, %i.ed
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.ed, double %i.ee)
  %i.eg = fdiv double %i.ec, %i.ef
  br label %_ZNK4Adv51Z13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit

_ZNK4Adv51Z13MomentumfluxXILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit: ; preds = %..critedge59_crit_edge.i, %.critedge.i
  %i.eh = phi double [ %i.ed, %.critedge.i ], [ %.pre99.i, %..critedge59_crit_edge.i ] ; 2 uses
  %i.ei = phi double [ %i.eg, %.critedge.i ], [ 0.000000e+00, %..critedge59_crit_edge.i ]
  %i.ej = add i32 %i.cl, %i.cp
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !247
  %i.en = add i32 %i.cl, %i.cv
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !247
  %i.er = fmul double %i.eq, 5.000000e-01
  %i.es = tail call double @llvm.fmuladd.f64(double %i.em, double 5.000000e-01, double %i.er)
  %i.et = load double, ptr %i.bh, align 8, !tbaa !247, !noalias !11759 ; 2 uses
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.cf, double %i.et)
  %i.ev = sub nsw i32 %.sroa.8.0.i, %i.bj
  %i.ew = sitofp i32 %i.ev to double
  %i.ex = fadd double %i.ew, 5.000000e-01
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.ex, double %i.et)
  %i.ez = fsub double %i.eu, %i.ey
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.dd, double -5.000000e-01, double %i.ez)
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.ei, double %i.dr)
  %i.fc = fmul double %i.es, %i.fb
  %.reass = add i32 %invariant.op, %i.cp
  %i.fd = sext i32 %.reass to i64
  %gep = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.fd
  store double %i.fc, ptr %gep, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bz, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !11769
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI16MainEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10MultiPatchI7GridTag6RemoteI5BrickEEE3LocILi1EEEES4_ISA_dSL_ESR_SR_EN4Adv51Z13MomentumfluxYILi3EEELi3E15EvaluateLocLoopISW_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EERKT2_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %class.ScalarCodeInfo, align 8      ; 22 uses
  %5 = alloca %struct.UpdateNotifier, align 1     ; 3 uses
  %6 = alloca %struct.EngineWriteNotifier, align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !6034
  store ptr %i.f, ptr %i.a, align 8
  store i32 0, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i32 4, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !6034
  store ptr %i.m, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  store ptr %i.m, ptr %i.j, align 8
  store i32 4, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !6034
  store ptr %i.t, ptr %i.o, align 8
  store i32 0, ptr %i.p, align 8
end_hunk_14
begin_hunk_15_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EN4Adv51Z13MomentumfluxYILi3EEELi3E15EvaluateLocLoopISR_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSU_4sizeEERKT2_:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxYILi3EEELi3EEE, i64 16), ptr %i.al, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES0_IS6_dSC_ESI_SI_EC2ERKSJ_(ptr noundef nonnull align 8 dereferenceable(576) %i.as, ptr noundef nonnull align 8 dereferenceable(576) %8)
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 608
  store i64 %i.ak, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 616
  store i32 %i.c, ptr %i.au, align 8, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 620
  store i32 %i.f, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 624
  store i32 %i.n, ptr %i.aw, align 8, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 628
  store i32 %i.q, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 632
  store i32 %i.aa, ptr %i.ay, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 636
  store i32 %i.ad, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 640 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 680
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr %i.al, ptr %5, align 8, !tbaa !6175
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES0_IS6_dSC_ESI_SI_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11796
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11796
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 432
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #48
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #48
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bl) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxYILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxYILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES0_IS6_dSC_ESI_SI_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6034 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6034 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 464
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.x) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxYILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxYILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 720) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES1_IS7_dSD_ESJ_SJ_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxYILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.827, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store ptr %i.b, ptr %1, align 8, !tbaa !9185
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !11797
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES3_IS9_dSF_ESL_SL_EN4Adv51Z13MomentumfluxYILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES3_IS9_dSF_ESL_SL_EN4Adv51Z13MomentumfluxYILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11797
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not33 = icmp sgt i32 %i.e, %i.m
  br i1 %.not33, label %._crit_edge36, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2330 = icmp sgt i32 %i.c, %i.q
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2330, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge36, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !9185 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !6263
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !6266
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !6262
  %i.ae = getelementptr inbounds [88 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2836 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !4
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !6263
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !6266
  %i.ao = load i64, ptr %i.w, align 8, !tbaa !6262
  %i.ap = getelementptr inbounds [88 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2836 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !4  ; 3 uses
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !741, !noalias !59 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 144 ; 2 uses
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !6263
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !6266
  %i.az = load i64, ptr %i.u, align 8, !tbaa !6262
  %i.ba = getelementptr inbounds [88 x i8], ptr %i.ay, i64 %i.az ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2836 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre.i, i64 120
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.i, i64 48
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4, !noalias !11799 ; 2 uses
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !9179
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !9180
  %i.bn = load i64, ptr %i.s, align 8, !tbaa !9178
  %i.bo = getelementptr inbounds [96 x i8], ptr %i.bm, i64 %i.bn ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !3382
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !236
  %i.bx = sext i32 %i.bw to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.bq, i64 %i.bx
  %i.by = zext i32 %i.a to i64
  %i.bz = add i32 %i.g, %i.a
  %i.ca = add i32 %i.i, %i.c
  %i.cb = add i32 %i.k, %i.e
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge32.split
  %.02234 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.co, %._crit_edge32.split ] ; 6 uses
  %i.cc = mul nsw i32 %i.ak, %.02234
  %i.cd = mul nsw i32 %i.bg, %.02234
  %i.ce = sub nsw i32 %.02234, %i.bj
  %i.cf = sitofp i32 %i.ce to double
  %i.cg = mul nsw i32 %i.bu, %.02234
  br label %.preheader

._crit_edge36:                                    ; preds = %._crit_edge32.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %.02131 = phi i32 [ %i.c, %.preheader27 ], [ %i.cp, %._crit_edge ] ; 6 uses
  %i.ch = mul nsw i32 %i.ai, %.02131
  %i.ci = add nsw i32 %.02131, -1                 ; 2 uses
  %i.cj = mul nsw i32 %i.ai, %i.ci
  %i.ck = mul nsw i32 %i.at, %.02131
  %i.cl = mul nsw i32 %i.be, %.02131
  %i.cm = mul nsw i32 %i.be, %i.ci
  %i.cn = mul nsw i32 %i.bs, %.02131
  %invariant.op = add i32 %i.cn, %i.cg
  br label %bb.b

._crit_edge32.split:                              ; preds = %._crit_edge
  %i.co = add i32 %.02234, 1                      ; 2 uses
  %exitcond44.not = icmp eq i32 %i.co, %i.cb
  br i1 %exitcond44.not, label %._crit_edge36, label %.preheader27, !llvm.loop !11802

._crit_edge:                                      ; preds = %_ZNK4Adv51Z13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit
  %i.cp = add i32 %.02131, 1                      ; 2 uses
  %exitcond43.not = icmp eq i32 %i.cp, %i.ca
  br i1 %exitcond43.not, label %._crit_edge32.split, label %.preheader, !llvm.loop !11803

bb.b:                                             ; preds = %.preheader, %_ZNK4Adv51Z13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit
  %indvars.iv = phi i64 [ %i.by, %.preheader ], [ %indvars.iv.next, %_ZNK4Adv51Z13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit ] ; 2 uses
  %i.cq = trunc i64 %indvars.iv to i32            ; 4 uses
  %i.cr = add i32 %i.cc, %i.cq                    ; 2 uses
  %i.cs = add i32 %i.cr, %i.ch
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !247
  %i.cw = add i32 %i.cr, %i.cj
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !247
  %i.da = fmul double %i.cz, 5.000000e-01
  %i.db = tail call double @llvm.fmuladd.f64(double %i.cv, double 5.000000e-01, double %i.da)
  %i.dc = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !11804
  %i.dd = fmul double %i.dc, %i.db                ; 2 uses
  %i.de = fcmp ogt double %i.dd, 0.000000e+00
  %i.df = sext i1 %i.de to i32
  %.sroa.8.0.i = add nsw i32 %.02234, %i.df       ; 4 uses
  %i.dg = add nsw i32 %.sroa.8.0.i, -1
  %i.dh = mul nsw i32 %i.av, %i.dg
  %i.di = add i32 %i.ck, %i.cq                    ; 3 uses
  %i.dj = add i32 %i.di, %i.dh
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !247
  %i.dn = mul nsw i32 %i.av, %.sroa.8.0.i
  %i.do = add i32 %i.di, %i.dn
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !247 ; 3 uses
  %i.ds = add nsw i32 %.sroa.8.0.i, 1
  %i.dt = mul nsw i32 %i.av, %i.ds
  %i.du = add i32 %i.di, %i.dt
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !247
  %i.dy = fsub double %i.dr, %i.dm                ; 2 uses
  %i.dz = fsub double %i.dx, %i.dr                ; 2 uses
  %i.ea = fmul double %i.dy, %i.dz                ; 2 uses
  %i.eb = fcmp ogt double %i.ea, 0.000000e+00
  br i1 %i.eb, label %.critedge.i, label %..critedge65_crit_edge.i

..critedge65_crit_edge.i:                         ; preds = %bb.b
  %.pre108.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11799
  br label %_ZNK4Adv51Z13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit

.critedge.i:                                      ; preds = %bb.b
  %i.ec = fmul nnan double %i.ea, 2.000000e+00
  %i.ed = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11806 ; 3 uses
  %i.ee = fmul double %i.dy, %i.ed
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.ed, double %i.ee)
  %i.eg = fdiv double %i.ec, %i.ef
  br label %_ZNK4Adv51Z13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit

_ZNK4Adv51Z13MomentumfluxYILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd7CompFwdI6EngineILi3E6VectorILi3Ed4FullE10BrickViewUE3LocILi1EEEES4_ISA_dSG_ESM_SM_EEvRKT_RKT0_RKT1_RKT2_RKSI_ILi3EE.exit: ; preds = %..critedge65_crit_edge.i, %.critedge.i
  %i.eh = phi double [ %i.ed, %.critedge.i ], [ %.pre108.i, %..critedge65_crit_edge.i ] ; 2 uses
  %i.ei = phi double [ %i.eg, %.critedge.i ], [ 0.000000e+00, %..critedge65_crit_edge.i ]
  %i.ej = add i32 %i.cd, %i.cq                    ; 2 uses
  %i.ek = add i32 %i.ej, %i.cl
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !247
  %i.eo = add i32 %i.ej, %i.cm
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !247
  %i.es = fmul double %i.er, 5.000000e-01
  %i.et = tail call double @llvm.fmuladd.f64(double %i.en, double 5.000000e-01, double %i.es)
  %i.eu = load double, ptr %i.bh, align 8, !tbaa !247, !noalias !11799 ; 2 uses
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.cf, double %i.eu)
  %i.ew = sub nsw i32 %.sroa.8.0.i, %i.bj
  %i.ex = sitofp i32 %i.ew to double
  %i.ey = fadd double %i.ex, 5.000000e-01
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.ey, double %i.eu)
  %i.fa = fsub double %i.ev, %i.ez
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.dd, double -5.000000e-01, double %i.fa)
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.fb, double %i.ei, double %i.dr)
  %i.fd = fmul double %i.et, %i.fc
  %.reass = add i32 %invariant.op, %i.cq
  %i.fe = sext i32 %.reass to i64
  %gep = getelementptr [24 x i8], ptr %invariant.gep, i64 %i.fe
  store double %i.fd, ptr %gep, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bz, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !11809
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI16MainEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_EN4Adv51Z13MomentumfluxZILi3EEELi3E15EvaluateLocLoopISM_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EERKT2_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %class.ScalarCodeInfo.641, align 8  ; 21 uses
  %5 = alloca %struct.UpdateNotifier, align 1     ; 3 uses
  %6 = alloca %struct.EngineWriteNotifier, align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !6034
  store ptr %i.f, ptr %i.a, align 8
  store i32 0, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i32 3, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !6034
  store ptr %i.m, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  store ptr %i.m, ptr %i.j, align 8
  store i32 3, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !6034
  store ptr %i.t, ptr %i.o, align 8
end_hunk_15
begin_hunk_16_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EN4Adv51Z13MomentumfluxZILi3EEELi3E15EvaluateLocLoopISH_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSK_4sizeEERKT2_:bb.a
  %reass.sub.i.2.i.i = sub i32 %i.ag, %i.ab
  %i.ah = add i32 %reass.sub.i.2.i.i, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.ab, ptr %i.ai, align 4, !tbaa !4, !alias.scope !11835
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !4, !alias.scope !11835
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  call void @_ZNK9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_EclI8IntervalILi3EEEEN5View1IS9_T_E6Type_tERKSE_(ptr dead_on_unwind nonnull writable sret(%struct.MultiArg3.643) align 8 %8, ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 4 dereferenceable(24) %7)
  %i.ak = load i64, ptr %1, align 8
  %i.al = call noalias noundef nonnull dereferenceable(576) ptr @_Znwm(i64 noundef 576) #46 ; 19 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 0, ptr %i.ao, align 8, !tbaa !2454
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.ap, align 8, !tbaa !2701
  %i.aq = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxZILi3EEELi3EEE, i64 16), ptr %i.al, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @_ZN9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(432) %i.as, ptr noundef nonnull align 8 dereferenceable(432) %8)
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 464
  store i64 %i.ak, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  store i32 %i.c, ptr %i.au, align 8, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 476
  store i32 %i.f, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 480
  store i32 %i.n, ptr %i.aw, align 8, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 484
  store i32 %i.q, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 488
  store i32 %i.aa, ptr %i.ay, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 492
  store i32 %i.ad, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 496 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 536
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr %i.al, ptr %5, align 8, !tbaa !6175
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11836
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #48, !inline_history !11836
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #48
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxZILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxZILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg3IT_T0_T1_ERKT2_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6034 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6034 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(432) %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxZILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxZILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 576) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_E15EvaluateLocLoopIN4Adv51Z13MomentumfluxZILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.830, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store ptr %i.b, ptr %1, align 8, !tbaa !8322
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !11837
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_EN4Adv51Z13MomentumfluxZILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_EN4Adv51Z13MomentumfluxZILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11837
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not33 = icmp sgt i32 %i.e, %i.m
  br i1 %.not33, label %._crit_edge36, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2330 = icmp sgt i32 %i.c, %i.q
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2330, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge36, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !8322 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !6263
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !6266
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !6262
  %i.ac = getelementptr inbounds [88 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2836 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !4  ; 5 uses
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !741, !noalias !59 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 144 ; 2 uses
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !6263
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !6266
  %i.am = load i64, ptr %i.u, align 8, !tbaa !6262
  %i.an = getelementptr inbounds [88 x i8], ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2836 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !4  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pre.i, i64 120
  %i.av = getelementptr inbounds nuw i8, ptr %.pre.i, i64 48
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4, !noalias !11839 ; 2 uses
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !6263
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !6266
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !6262
  %i.bb = getelementptr inbounds [88 x i8], ptr %i.az, i64 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2836
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !4
  %i.bi = zext i32 %i.a to i64
  %i.bj = add i32 %i.g, %i.a
  %i.bk = add i32 %i.i, %i.c
  %i.bl = add i32 %i.k, %i.e
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge32.split
  %.02234 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.bm, %._crit_edge32.split ] ; 6 uses
  %i.bm = add nsw i32 %.02234, 1                  ; 5 uses
  %i.bn = mul nsw i32 %i.ai, %.02234
  %i.bo = mul nsw i32 %i.ai, %i.bm
  %i.bp = mul nsw i32 %i.at, %.02234
  %i.bq = mul nsw i32 %i.at, %i.bm
  %i.br = sub nsw i32 %.02234, %i.aw
  %i.bs = sitofp i32 %i.br to double
  %i.bt = fadd double %i.bs, 5.000000e-01
  %i.bu = mul nsw i32 %i.bh, %.02234
  br label %.preheader

._crit_edge36:                                    ; preds = %._crit_edge32.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %.02131 = phi i32 [ %i.c, %.preheader27 ], [ %i.by, %._crit_edge ] ; 4 uses
  %i.bv = mul nsw i32 %i.ag, %.02131
  %i.bw = mul nsw i32 %i.ar, %.02131
  %i.bx = mul nsw i32 %i.bf, %.02131
  %invariant.op = add i32 %i.bx, %i.bu
  br label %bb.b

._crit_edge32.split:                              ; preds = %._crit_edge
  %exitcond44.not = icmp eq i32 %i.bm, %i.bl
  br i1 %exitcond44.not, label %._crit_edge36, label %.preheader27, !llvm.loop !11842

._crit_edge:                                      ; preds = %_ZNK4Adv51Z13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit
  %i.by = add i32 %.02131, 1                      ; 2 uses
  %exitcond43.not = icmp eq i32 %i.by, %i.bk
  br i1 %exitcond43.not, label %._crit_edge32.split, label %.preheader, !llvm.loop !11843

bb.b:                                             ; preds = %.preheader, %_ZNK4Adv51Z13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit
  %indvars.iv = phi i64 [ %i.bi, %.preheader ], [ %indvars.iv.next, %_ZNK4Adv51Z13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit ] ; 2 uses
  %i.bz = trunc i64 %indvars.iv to i32            ; 3 uses
  %i.ca = add i32 %i.bv, %i.bz                    ; 5 uses
  %i.cb = add i32 %i.bn, %i.ca
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !247
  %i.cf = add i32 %i.bo, %i.ca
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !247
  %i.cj = fadd double %i.ce, %i.ci
  %i.ck = fmul double %i.cj, 5.000000e-01
  %i.cl = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !11844
  %i.cm = fmul double %i.cl, %i.ck                ; 2 uses
  %i.cn = fcmp ogt double %i.cm, 0.000000e+00
  %.sroa.8.0.i = select i1 %i.cn, i32 %.02234, i32 %i.bm ; 4 uses
  %i.co = add nsw i32 %.sroa.8.0.i, -1
  %i.cp = mul nsw i32 %i.co, %i.ai
  %i.cq = add i32 %i.cp, %i.ca
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !247
  %i.cu = mul nsw i32 %.sroa.8.0.i, %i.ai
  %i.cv = add i32 %i.cu, %i.ca
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !247 ; 3 uses
  %i.cz = add nsw i32 %.sroa.8.0.i, 1
  %i.da = mul nsw i32 %i.cz, %i.ai
  %i.db = add i32 %i.da, %i.ca
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !247
  %i.df = fsub double %i.cy, %i.ct                ; 2 uses
  %i.dg = fsub double %i.de, %i.cy                ; 2 uses
  %i.dh = fmul double %i.df, %i.dg                ; 2 uses
  %i.di = fcmp ogt double %i.dh, 0.000000e+00
  br i1 %i.di, label %.critedge.i, label %..critedge63_crit_edge.i

..critedge63_crit_edge.i:                         ; preds = %bb.b
  %.pre109.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11839
  br label %_ZNK4Adv51Z13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit

.critedge.i:                                      ; preds = %bb.b
  %i.dj = fmul nnan double %i.dh, 2.000000e+00
  %i.dk = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !247, !noalias !11846 ; 3 uses
  %i.dl = fmul double %i.df, %i.dk
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.dk, double %i.dl)
  %i.dn = fdiv double %i.dj, %i.dm
  br label %_ZNK4Adv51Z13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit

_ZNK4Adv51Z13MomentumfluxZILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_EEvRKT_RKT0_RKT1_RK3LocILi3EE.exit: ; preds = %..critedge63_crit_edge.i, %.critedge.i
  %i.do = phi double [ %i.dk, %.critedge.i ], [ %.pre109.i, %..critedge63_crit_edge.i ] ; 2 uses
  %i.dp = phi double [ %i.dn, %.critedge.i ], [ 0.000000e+00, %..critedge63_crit_edge.i ]
  %i.dq = add i32 %i.bw, %i.bz                    ; 2 uses
  %i.dr = add i32 %i.dq, %i.bp
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ds
  %i.du = load double, ptr %i.dt, align 8, !tbaa !247
  %i.dv = add i32 %i.dq, %i.bq
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.dw
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !247
  %i.dz = fadd double %i.du, %i.dy
  %i.ea = fmul double %i.dz, 5.000000e-01
  %i.eb = load double, ptr %i.au, align 8, !tbaa !247, !noalias !11839 ; 2 uses
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.do, double %i.bt, double %i.eb)
  %i.ed = sub nsw i32 %.sroa.8.0.i, %i.aw
  %i.ee = sitofp i32 %i.ed to double
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.do, double %i.ee, double %i.eb)
  %i.eg = fsub double %i.ec, %i.ef
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.cm, double -5.000000e-01, double %i.eg)
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.dp, double %i.cy)
  %i.ej = fmul double %i.ea, %i.ei
  %.reass = add i32 %invariant.op, %i.bz
  %i.ek = sext i32 %.reass to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.ek
  store double %i.ej, ptr %i.el, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bj, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !11849
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI16MainEvaluatorTagE8evaluateI9MultiArg3I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_S4_ISA_d7CompFwdI6EngineILi3E6VectorILi3Ed4FullESG_E3LocILi1EEEEEN4Adv51Z14Momentumflux2XILi3EEELi3E15EvaluateLocLoopISW_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EERKT2_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(28) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %class.ScalarCodeInfo.641, align 8  ; 21 uses
  %5 = alloca %struct.UpdateNotifier, align 1     ; 3 uses
  %6 = alloca %struct.EngineWriteNotifier, align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !6034
  store ptr %i.f, ptr %i.a, align 8
  store i32 0, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i32 3, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !6034
  store ptr %i.m, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  store ptr %i.m, ptr %i.j, align 8
  store i32 3, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !6034
  store ptr %i.t, ptr %i.o, align 8
  store i32 0, ptr %i.p, align 8
  store ptr %i.t, ptr %i.q, align 8
  store i32 3, ptr %i.r, align 8
  store i32 1, ptr %4, align 8, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 1, ptr %i.v, align 4, !tbaa !4
  store i64 1, ptr %i.m, align 8, !tbaa !12
  store i64 -1, ptr %i.t, align 8, !tbaa !12
end_hunk_16
begin_hunk_17_@llvm.fabs.v2f64
!10075 = !{!10073}
!10076 = !{!10077}
!10077 = distinct !{!10077, !10078, !"_ZNK14ScalarCodeInfoILi3ELi2EE16evaluationDomainERK8IntervalILi3EE: argument 0"}
!10078 = distinct !{!10078, !"_ZNK14ScalarCodeInfoILi3ELi2EE16evaluationDomainERK8IntervalILi3EE"}
!10079 = !{!10080}
!10080 = distinct !{!10080, !10081, !"_ZNK9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_EclI5INodeILi3EEEEN5View1ISE_T_E6Type_tERKSJ_: argument 0"}
!10081 = distinct !{!10081, !"_ZNK9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_EclI5INodeILi3EEEEN5View1ISE_T_E6Type_tERKSJ_"}
!10082 = !{!10083, !10085, !10087, !10080}
!10083 = distinct !{!10083, !10084, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE5INodeILi3EELb0EE4makeISF_16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EESF_ELb0EEEES0_IS6_dS9_I10BrickViewUEERKSD_RKT_RKT0_: argument 0"}
!10084 = distinct !{!10084, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE5INodeILi3EELb0EE4makeISF_16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EESF_ELb0EEEES0_IS6_dS9_I10BrickViewUEERKSD_RKT_RKT0_"}
!10085 = distinct !{!10085, !10086, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE5INodeILi3EEE4makeERKSD_RKSF_: argument 0"}
!10086 = distinct !{!10086, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE5INodeILi3EEE4makeERKSD_RKSF_"}
!10087 = distinct !{!10087, !10088, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEclI5INodeILi3EEEEN5View1ISC_T_E6Type_tERKSH_: argument 0"}
!10088 = distinct !{!10088, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEclI5INodeILi3EEEEN5View1ISC_T_E6Type_tERKSH_"}
!10089 = !{!10090}
!10090 = distinct !{!10090, !10091, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EE5INodeILi3EEELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEES4_EES4_RKT_RKT0_: argument 0"}
!10091 = distinct !{!10091, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EE5INodeILi3EEELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEES4_EES4_RKT_RKT0_"}
!10092 = !{!10090, !10083, !10085, !10087, !10080}
!10093 = !{!10094, !10096, !10098, !10080}
!10094 = distinct !{!10094, !10095, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE5INodeILi3EELb0EE4makeISF_16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EESF_ELb0EEEES0_IS6_dS9_I10BrickViewUEERKSD_RKT_RKT0_: argument 0"}
!10095 = distinct !{!10095, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE5INodeILi3EELb0EE4makeISF_16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EESF_ELb0EEEES0_IS6_dS9_I10BrickViewUEERKSD_RKT_RKT0_"}
!10096 = distinct !{!10096, !10097, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE5INodeILi3EEE4makeERKSD_RKSF_: argument 0"}
!10097 = distinct !{!10097, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE5INodeILi3EEE4makeERKSD_RKSF_"}
!10098 = distinct !{!10098, !10099, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEclI5INodeILi3EEEEN5View1ISC_T_E6Type_tERKSH_: argument 0"}
!10099 = distinct !{!10099, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEclI5INodeILi3EEEEN5View1ISC_T_E6Type_tERKSH_"}
!10100 = !{!10101}
!10101 = distinct !{!10101, !10102, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EE5INodeILi3EEELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEES4_EES4_RKT_RKT0_: argument 0"}
!10102 = distinct !{!10102, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EE5INodeILi3EEELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEES4_EES4_RKT_RKT0_"}
!10103 = !{!10101, !10094, !10096, !10098, !10080}
!10104 = distinct !{!10104, !57}
!10105 = !{!10106, !10108, !10110}
!10106 = distinct !{!10106, !10107, !"_ZN11LeafFunctorI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESB_E10EngineViewI10RemoteViewEE5applyERKSC_RKSF_: argument 0"}
!10107 = distinct !{!10107, !"_ZN11LeafFunctorI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESB_E10EngineViewI10RemoteViewEE5applyERKSC_RKSF_"}
!10108 = distinct !{!10108, !10109, !"_ZN7ForEachI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESB_E10EngineViewI10RemoteViewE11TreeCombineE5applyERKSC_RKSF_RKSG_: argument 0"}
!10109 = distinct !{!10109, !"_ZN7ForEachI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESB_E10EngineViewI10RemoteViewE11TreeCombineE5applyERKSC_RKSF_RKSG_"}
!10110 = distinct !{!10110, !10111, !"_Z7forEachI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESB_E10EngineViewI10RemoteViewE11TreeCombineEN7ForEachIT_T0_T1_E6Type_tERKSI_RKSJ_RKSK_: argument 0"}
!10111 = distinct !{!10111, !"_Z7forEachI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESB_E10EngineViewI10RemoteViewE11TreeCombineEN7ForEachIT_T0_T1_E6Type_tERKSI_RKSJ_RKSK_"}
!10112 = !{!10113, !10115}
!10113 = distinct !{!10113, !10114, !"_Z4growILi3EE8IntervalIXT_EERKS1_RK11GuardLayersIXT_EE: argument 0"}
!10114 = distinct !{!10114, !"_Z4growILi3EE8IntervalIXT_EERKS1_RK11GuardLayersIXT_EE"}
!10115 = distinct !{!10115, !10116, !"_ZNK14ScalarCodeInfoILi3ELi2EE12extendDomainERK8IntervalILi3EE: argument 0"}
!10116 = distinct !{!10116, !"_ZNK14ScalarCodeInfoILi3ELi2EE12extendDomainERK8IntervalILi3EE"}
!10117 = !{!10118}
!10118 = distinct !{!10118, !10119, !"_ZNK9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EclI8IntervalILi3EEEEN5View1IS9_T_E6Type_tERKSE_: argument 0"}
!10119 = distinct !{!10119, !"_ZNK9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EclI8IntervalILi3EEEEN5View1IS9_T_E6Type_tERKSE_"}
!10120 = !{!10121, !10123, !10125, !10118}
!10121 = distinct !{!10121, !10122, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE8IntervalILi3EELb0EE4makeISA_16CombineDomainOptI19TemporaryNewDomain1ISA_SA_ELb0EEEES8_RKS8_RKT_RKT0_: argument 0"}
!10122 = distinct !{!10122, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE8IntervalILi3EELb0EE4makeISA_16CombineDomainOptI19TemporaryNewDomain1ISA_SA_ELb0EEEES8_RKS8_RKT_RKT0_"}
!10123 = distinct !{!10123, !10124, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE8IntervalILi3EEE4makeERKS8_RKSA_: argument 0"}
!10124 = distinct !{!10124, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE8IntervalILi3EEE4makeERKS8_RKSA_"}
!10125 = distinct !{!10125, !10126, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEclI8IntervalILi3EEEEN5View1IS7_T_E6Type_tERKSC_: argument 0"}
!10126 = distinct !{!10126, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEclI8IntervalILi3EEEEN5View1IS7_T_E6Type_tERKSC_"}
!10127 = !{!10128}
!10128 = distinct !{!10128, !10129, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EES2_ELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES2_EES2_RKT_RKT0_: argument 0"}
!10129 = distinct !{!10129, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EES2_ELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES2_EES2_RKT_RKT0_"}
!10130 = !{!10128, !10121, !10123, !10125, !10118}
!10131 = !{!10132, !10134, !10128}
!10132 = distinct !{!10132, !10133, !"_ZN10NewDomain1I8IntervalILi3EEE12combineSliceIS1_EES1_RKT_RKS1_: argument 0"}
!10133 = distinct !{!10133, !"_ZN10NewDomain1I8IntervalILi3EEE12combineSliceIS1_EES1_RKT_RKS1_"}
!10134 = distinct !{!10134, !10135, !"_ZN19TemporaryNewDomain1I8IntervalILi3EES1_E12combineSliceERKS1_S4_: argument 0"}
!10135 = distinct !{!10135, !"_ZN19TemporaryNewDomain1I8IntervalILi3EES1_E12combineSliceERKS1_S4_"}
!10136 = !{!10137, !10139, !10141, !10118}
!10137 = distinct !{!10137, !10138, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE8IntervalILi3EELb0EE4makeISA_16CombineDomainOptI19TemporaryNewDomain1ISA_SA_ELb0EEEES8_RKS8_RKT_RKT0_: argument 0"}
!10138 = distinct !{!10138, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE8IntervalILi3EELb0EE4makeISA_16CombineDomainOptI19TemporaryNewDomain1ISA_SA_ELb0EEEES8_RKS8_RKT_RKT0_"}
!10139 = distinct !{!10139, !10140, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE8IntervalILi3EEE4makeERKS8_RKSA_: argument 0"}
!10140 = distinct !{!10140, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE8IntervalILi3EEE4makeERKS8_RKSA_"}
!10141 = distinct !{!10141, !10142, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEclI8IntervalILi3EEEEN5View1IS7_T_E6Type_tERKSC_: argument 0"}
!10142 = distinct !{!10142, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEclI8IntervalILi3EEEEN5View1IS7_T_E6Type_tERKSC_"}
!10143 = !{!10144}
!10144 = distinct !{!10144, !10145, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EES2_ELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES2_EES2_RKT_RKT0_: argument 0"}
!10145 = distinct !{!10145, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EES2_ELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES2_EES2_RKT_RKT0_"}
!10146 = !{!10144, !10137, !10139, !10141, !10118}
!10147 = !{!10148, !10150, !10144}
!10148 = distinct !{!10148, !10149, !"_ZN10NewDomain1I8IntervalILi3EEE12combineSliceIS1_EES1_RKT_RKS1_: argument 0"}
!10149 = distinct !{!10149, !"_ZN10NewDomain1I8IntervalILi3EEE12combineSliceIS1_EES1_RKT_RKS1_"}
!10150 = distinct !{!10150, !10151, !"_ZN19TemporaryNewDomain1I8IntervalILi3EES1_E12combineSliceERKS1_S4_: argument 0"}
!10151 = distinct !{!10151, !"_ZN19TemporaryNewDomain1I8IntervalILi3EES1_E12combineSliceERKS1_S4_"}
!10152 = distinct !{null, null}
!10153 = !{!10154, !10154, i64 0}
!10154 = !{!"p1 _ZTSN4Adv57VelupdYILi3EEE", !11, i64 0}
!10155 = !{!10156}
!10156 = distinct !{!10156, !10157}
!10157 = distinct !{!10157, !"LVerDomain"}
!10158 = !{!10159, !10160}
!10159 = distinct !{!10159, !10157}
!10160 = distinct !{!10160, !10157}
!10161 = !{!10160}
!10162 = !{!10159}
!10163 = distinct !{!10163, !57, !239, !240}
!10164 = distinct !{!10164, !57}
!10165 = distinct !{!10165, !57}
!10166 = distinct !{!10166, !57, !239}
!10167 = !{!10168, !10170, !10172}
!10168 = distinct !{!10168, !10169, !"_Z4growILi3EE8IntervalIXT_EERKS1_RK11GuardLayersIXT_EE: argument 0"}
!10169 = distinct !{!10169, !"_Z4growILi3EE8IntervalIXT_EERKS1_RK11GuardLayersIXT_EE"}
!10170 = distinct !{!10170, !10171, !"_ZNK14ScalarCodeInfoILi3ELi2EE12extendDomainERK8IntervalILi3EE: argument 0"}
!10171 = distinct !{!10171, !"_ZNK14ScalarCodeInfoILi3ELi2EE12extendDomainERK8IntervalILi3EE"}
!10172 = distinct !{!10172, !10173, !"_ZNK14ScalarCodeInfoILi3ELi2EE12extendDomainERK5INodeILi3EE: argument 0"}
!10173 = distinct !{!10173, !"_ZNK14ScalarCodeInfoILi3ELi2EE12extendDomainERK5INodeILi3EE"}
!10174 = !{!10172}
!10175 = !{!10176}
!10176 = distinct !{!10176, !10177, !"_ZNK14ScalarCodeInfoILi3ELi2EE16evaluationDomainERK8IntervalILi3EE: argument 0"}
!10177 = distinct !{!10177, !"_ZNK14ScalarCodeInfoILi3ELi2EE16evaluationDomainERK8IntervalILi3EE"}
!10178 = !{!10179}
!10179 = distinct !{!10179, !10180, !"_ZNK9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_EclI5INodeILi3EEEEN5View1ISE_T_E6Type_tERKSJ_: argument 0"}
!10180 = distinct !{!10180, !"_ZNK9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_EclI5INodeILi3EEEEN5View1ISE_T_E6Type_tERKSJ_"}
!10181 = !{!10182, !10184, !10186, !10179}
!10182 = distinct !{!10182, !10183, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE5INodeILi3EELb0EE4makeISF_16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EESF_ELb0EEEES0_IS6_dS9_I10BrickViewUEERKSD_RKT_RKT0_: argument 0"}
!10183 = distinct !{!10183, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE5INodeILi3EELb0EE4makeISF_16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EESF_ELb0EEEES0_IS6_dS9_I10BrickViewUEERKSD_RKT_RKT0_"}
!10184 = distinct !{!10184, !10185, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE5INodeILi3EEE4makeERKSD_RKSF_: argument 0"}
!10185 = distinct !{!10185, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE5INodeILi3EEE4makeERKSD_RKSF_"}
!10186 = distinct !{!10186, !10187, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEclI5INodeILi3EEEEN5View1ISC_T_E6Type_tERKSH_: argument 0"}
!10187 = distinct !{!10187, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEclI5INodeILi3EEEEN5View1ISC_T_E6Type_tERKSH_"}
!10188 = !{!10189}
!10189 = distinct !{!10189, !10190, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EE5INodeILi3EEELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEES4_EES4_RKT_RKT0_: argument 0"}
!10190 = distinct !{!10190, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EE5INodeILi3EEELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEES4_EES4_RKT_RKT0_"}
!10191 = !{!10189, !10182, !10184, !10186, !10179}
!10192 = !{!10193, !10195, !10197, !10179}
!10193 = distinct !{!10193, !10194, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE5INodeILi3EELb0EE4makeISF_16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EESF_ELb0EEEES0_IS6_dS9_I10BrickViewUEERKSD_RKT_RKT0_: argument 0"}
!10194 = distinct !{!10194, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE5INodeILi3EELb0EE4makeISF_16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EESF_ELb0EEEES0_IS6_dS9_I10BrickViewUEERKSD_RKT_RKT0_"}
!10195 = distinct !{!10195, !10196, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE5INodeILi3EEE4makeERKSD_RKSF_: argument 0"}
!10196 = distinct !{!10196, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE5INodeILi3EEE4makeERKSD_RKSF_"}
!10197 = distinct !{!10197, !10198, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEclI5INodeILi3EEEEN5View1ISC_T_E6Type_tERKSH_: argument 0"}
!10198 = distinct !{!10198, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEclI5INodeILi3EEEEN5View1ISC_T_E6Type_tERKSH_"}
!10199 = !{!10200}
!10200 = distinct !{!10200, !10201, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EE5INodeILi3EEELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEES4_EES4_RKT_RKT0_: argument 0"}
!10201 = distinct !{!10201, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EE5INodeILi3EEELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEES4_EES4_RKT_RKT0_"}
!10202 = !{!10200, !10193, !10195, !10197, !10179}
!10203 = distinct !{!10203, !57}
!10204 = !{!10205, !10207, !10209}
!10205 = distinct !{!10205, !10206, !"_ZN11LeafFunctorI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESB_E10EngineViewI10RemoteViewEE5applyERKSC_RKSF_: argument 0"}
!10206 = distinct !{!10206, !"_ZN11LeafFunctorI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESB_E10EngineViewI10RemoteViewEE5applyERKSC_RKSF_"}
!10207 = distinct !{!10207, !10208, !"_ZN7ForEachI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESB_E10EngineViewI10RemoteViewE11TreeCombineE5applyERKSC_RKSF_RKSG_: argument 0"}
!10208 = distinct !{!10208, !"_ZN7ForEachI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESB_E10EngineViewI10RemoteViewE11TreeCombineE5applyERKSC_RKSF_RKSG_"}
!10209 = distinct !{!10209, !10210, !"_Z7forEachI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESB_E10EngineViewI10RemoteViewE11TreeCombineEN7ForEachIT_T0_T1_E6Type_tERKSI_RKSJ_RKSK_: argument 0"}
!10210 = distinct !{!10210, !"_Z7forEachI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESB_E10EngineViewI10RemoteViewE11TreeCombineEN7ForEachIT_T0_T1_E6Type_tERKSI_RKSJ_RKSK_"}
!10211 = !{!10212, !10214}
!10212 = distinct !{!10212, !10213, !"_Z4growILi3EE8IntervalIXT_EERKS1_RK11GuardLayersIXT_EE: argument 0"}
!10213 = distinct !{!10213, !"_Z4growILi3EE8IntervalIXT_EERKS1_RK11GuardLayersIXT_EE"}
!10214 = distinct !{!10214, !10215, !"_ZNK14ScalarCodeInfoILi3ELi2EE12extendDomainERK8IntervalILi3EE: argument 0"}
!10215 = distinct !{!10215, !"_ZNK14ScalarCodeInfoILi3ELi2EE12extendDomainERK8IntervalILi3EE"}
!10216 = !{!10217}
!10217 = distinct !{!10217, !10218, !"_ZNK9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EclI8IntervalILi3EEEEN5View1IS9_T_E6Type_tERKSE_: argument 0"}
!10218 = distinct !{!10218, !"_ZNK9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EclI8IntervalILi3EEEEN5View1IS9_T_E6Type_tERKSE_"}
!10219 = !{!10220, !10222, !10224, !10217}
!10220 = distinct !{!10220, !10221, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE8IntervalILi3EELb0EE4makeISA_16CombineDomainOptI19TemporaryNewDomain1ISA_SA_ELb0EEEES8_RKS8_RKT_RKT0_: argument 0"}
!10221 = distinct !{!10221, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE8IntervalILi3EELb0EE4makeISA_16CombineDomainOptI19TemporaryNewDomain1ISA_SA_ELb0EEEES8_RKS8_RKT_RKT0_"}
!10222 = distinct !{!10222, !10223, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE8IntervalILi3EEE4makeERKS8_RKSA_: argument 0"}
!10223 = distinct !{!10223, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE8IntervalILi3EEE4makeERKS8_RKSA_"}
!10224 = distinct !{!10224, !10225, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEclI8IntervalILi3EEEEN5View1IS7_T_E6Type_tERKSC_: argument 0"}
!10225 = distinct !{!10225, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEclI8IntervalILi3EEEEN5View1IS7_T_E6Type_tERKSC_"}
!10226 = !{!10227}
!10227 = distinct !{!10227, !10228, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EES2_ELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES2_EES2_RKT_RKT0_: argument 0"}
!10228 = distinct !{!10228, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EES2_ELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES2_EES2_RKT_RKT0_"}
!10229 = !{!10227, !10220, !10222, !10224, !10217}
!10230 = !{!10231, !10233, !10227}
!10231 = distinct !{!10231, !10232, !"_ZN10NewDomain1I8IntervalILi3EEE12combineSliceIS1_EES1_RKT_RKS1_: argument 0"}
!10232 = distinct !{!10232, !"_ZN10NewDomain1I8IntervalILi3EEE12combineSliceIS1_EES1_RKT_RKS1_"}
!10233 = distinct !{!10233, !10234, !"_ZN19TemporaryNewDomain1I8IntervalILi3EES1_E12combineSliceERKS1_S4_: argument 0"}
!10234 = distinct !{!10234, !"_ZN19TemporaryNewDomain1I8IntervalILi3EES1_E12combineSliceERKS1_S4_"}
!10235 = !{!10236, !10238, !10240, !10217}
!10236 = distinct !{!10236, !10237, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE8IntervalILi3EELb0EE4makeISA_16CombineDomainOptI19TemporaryNewDomain1ISA_SA_ELb0EEEES8_RKS8_RKT_RKT0_: argument 0"}
!10237 = distinct !{!10237, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE8IntervalILi3EELb0EE4makeISA_16CombineDomainOptI19TemporaryNewDomain1ISA_SA_ELb0EEEES8_RKS8_RKT_RKT0_"}
!10238 = distinct !{!10238, !10239, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE8IntervalILi3EEE4makeERKS8_RKSA_: argument 0"}
!10239 = distinct !{!10239, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE8IntervalILi3EEE4makeERKS8_RKSA_"}
!10240 = distinct !{!10240, !10241, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEclI8IntervalILi3EEEEN5View1IS7_T_E6Type_tERKSC_: argument 0"}
!10241 = distinct !{!10241, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEclI8IntervalILi3EEEEN5View1IS7_T_E6Type_tERKSC_"}
!10242 = !{!10243}
!10243 = distinct !{!10243, !10244, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EES2_ELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES2_EES2_RKT_RKT0_: argument 0"}
!10244 = distinct !{!10244, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EES2_ELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES2_EES2_RKT_RKT0_"}
!10245 = !{!10243, !10236, !10238, !10240, !10217}
!10246 = !{!10247, !10249, !10243}
!10247 = distinct !{!10247, !10248, !"_ZN10NewDomain1I8IntervalILi3EEE12combineSliceIS1_EES1_RKT_RKS1_: argument 0"}
!10248 = distinct !{!10248, !"_ZN10NewDomain1I8IntervalILi3EEE12combineSliceIS1_EES1_RKT_RKS1_"}
!10249 = distinct !{!10249, !10250, !"_ZN19TemporaryNewDomain1I8IntervalILi3EES1_E12combineSliceERKS1_S4_: argument 0"}
!10250 = distinct !{!10250, !"_ZN19TemporaryNewDomain1I8IntervalILi3EES1_E12combineSliceERKS1_S4_"}
!10251 = distinct !{null, null}
!10252 = !{!10253, !10253, i64 0}
!10253 = !{!"p1 _ZTSN4Adv57VelupdZILi3EEE", !11, i64 0}
!10254 = !{!10255}
!10255 = distinct !{!10255, !10256}
!10256 = distinct !{!10256, !"LVerDomain"}
!10257 = !{!10258, !10259}
!10258 = distinct !{!10258, !10256}
!10259 = distinct !{!10259, !10256}
!10260 = !{!10259}
!10261 = !{!10258}
!10262 = distinct !{!10262, !57, !239, !240}
!10263 = distinct !{!10263, !57}
!10264 = distinct !{!10264, !57}
!10265 = distinct !{!10265, !57, !239}
!10266 = distinct !{!10266, !57}
!10267 = !{!10268}
!10268 = distinct !{!10268, !10269, !"_ZNK18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EEplEl: argument 0"}
!10269 = distinct !{!10269, !"_ZNK18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EEplEl"}
!10270 = !{!10271}
!10271 = distinct !{!10271, !10272, !"_ZNK18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EEplEl: argument 0:thread"}
!10272 = distinct !{!10272, !"_ZNK18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EEplEl"}
!10273 = !{!10274}
!10274 = distinct !{!10274, !10272, !"_ZNK18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EEplEl: argument 0"}
!10275 = !{!10276, !10278, !10280}
!10276 = distinct !{!10276, !10277, !"_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi: argument 0"}
!10277 = distinct !{!10277, !"_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi"}
!10278 = distinct !{!10278, !10279, !"_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv: argument 0"}
!10279 = distinct !{!10279, !"_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv"}
!10280 = distinct !{!10280, !10281, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv: argument 0"}
!10281 = distinct !{!10281, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv"}
!10282 = !{!10283, !10276, !10278, !10280}
!10283 = distinct !{!10283, !10284, !"_Z9growRightILi3EE8IntervalIXT_EERKS1_i: argument 0"}
!10284 = distinct !{!10284, !"_Z9growRightILi3EE8IntervalIXT_EERKS1_i"}
!10285 = !{!10286, !10276, !10278, !10280}
!10286 = distinct !{!10286, !10287, !"_Z11shrinkRightILi3EE8IntervalIXT_EERKS1_RK3LocIXT_EE: argument 0"}
!10287 = distinct !{!10287, !"_Z11shrinkRightILi3EE8IntervalIXT_EERKS1_RK3LocIXT_EE"}
!10288 = !{!10289, !10291, !10293, !10295, !10297}
!10289 = distinct !{!10289, !10290, !"_Z11shrinkRightILi3EE8IntervalIXT_EERKS1_RK3LocIXT_EE: argument 0"}
!10290 = distinct !{!10290, !"_Z11shrinkRightILi3EE8IntervalIXT_EERKS1_RK3LocIXT_EE"}
!10291 = distinct !{!10291, !10292, !"_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi: argument 0"}
!10292 = distinct !{!10292, !"_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi"}
!10293 = distinct !{!10293, !10294, !"_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv: argument 0"}
!10294 = distinct !{!10294, !"_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv"}
!10295 = distinct !{!10295, !10296, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv: argument 0"}
!10296 = distinct !{!10296, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv"}
!10297 = distinct !{!10297, !10298, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEclEv: argument 0"}
!10298 = distinct !{!10298, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEclEv"}
!10299 = !{!10278, !10280}
!10300 = !{!10293, !10295, !10297}
!10301 = !{!10302, !10304, !10297}
!10302 = distinct !{!10302, !10303, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE8IntervalILi3EELb0EE4makeISF_16CombineDomainOptI19TemporaryNewDomain1ISF_SF_ELb0EEEESD_RKSD_RKT_RKT0_: argument 0"}
!10303 = distinct !{!10303, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE8IntervalILi3EELb0EE4makeISF_16CombineDomainOptI19TemporaryNewDomain1ISF_SF_ELb0EEEESD_RKSD_RKT_RKT0_"}
!10304 = distinct !{!10304, !10305, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE8IntervalILi3EEE4makeERKSD_RKSF_: argument 0"}
!10305 = distinct !{!10305, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE8IntervalILi3EEE4makeERKSD_RKSF_"}
!10306 = !{!10307, !10309, !10311}
!10307 = distinct !{!10307, !10308, !"_ZN10NewDomain1I8IntervalILi3EEE12combineSliceIS1_EES1_RKT_RKS1_: argument 0"}
!10308 = distinct !{!10308, !"_ZN10NewDomain1I8IntervalILi3EEE12combineSliceIS1_EES1_RKT_RKS1_"}
!10309 = distinct !{!10309, !10310, !"_ZN19TemporaryNewDomain1I8IntervalILi3EES1_E12combineSliceERKS1_S4_: argument 0"}
!10310 = distinct !{!10310, !"_ZN19TemporaryNewDomain1I8IntervalILi3EES1_E12combineSliceERKS1_S4_"}
!10311 = distinct !{!10311, !10312, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EES2_ELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEES2_EES2_RKT_RKT0_: argument 0"}
!10312 = distinct !{!10312, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EES2_ELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEES2_EES2_RKT_RKT0_"}
!10313 = !{!10314, !10316}
!10314 = distinct !{!10314, !10315, !"_ZN5View0I5ArrayILi3Ed16ConstantFunctionEE4makeERKS2_: argument 0"}
!10315 = distinct !{!10315, !"_ZN5View0I5ArrayILi3Ed16ConstantFunctionEE4makeERKS2_"}
!10316 = distinct !{!10316, !10317, !"_ZNK5ArrayILi3Ed16ConstantFunctionEclEv: argument 0"}
!10317 = distinct !{!10317, !"_ZNK5ArrayILi3Ed16ConstantFunctionEclEv"}
!10318 = distinct !{!10318, !57}
!10319 = !{!10320}
!10320 = distinct !{!10320, !10321, !"_ZNK10LayoutBaseILi3E14GridLayoutDataILi3EEE14internalGuardsEv: argument 0"}
!10321 = distinct !{!10321, !"_ZNK10LayoutBaseILi3E14GridLayoutDataILi3EEE14internalGuardsEv"}
!10322 = !{!10323, !10325, !10327}
!10323 = distinct !{!10323, !10324, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE5INodeILi3EELb0EE4makeISF_16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EESF_ELb0EEEES0_IS6_dS9_I9BrickViewEERKSD_RKT_RKT0_: argument 0"}
!10324 = distinct !{!10324, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE5INodeILi3EELb0EE4makeISF_16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EESF_ELb0EEEES0_IS6_dS9_I9BrickViewEERKSD_RKT_RKT0_"}
!10325 = distinct !{!10325, !10326, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE5INodeILi3EEE4makeERKSD_RKSF_: argument 0"}
!10326 = distinct !{!10326, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE5INodeILi3EEE4makeERKSD_RKSF_"}
!10327 = distinct !{!10327, !10328, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEclI5INodeILi3EEEEN5View1ISC_T_E6Type_tERKSH_: argument 0"}
!10328 = distinct !{!10328, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEclI5INodeILi3EEEEN5View1ISC_T_E6Type_tERKSH_"}
!10329 = !{!10330}
!10330 = distinct !{!10330, !10331, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EE5INodeILi3EEELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEES4_EES4_RKT_RKT0_: argument 0"}
!10331 = distinct !{!10331, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EE5INodeILi3EEELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEES4_EES4_RKT_RKT0_"}
!10332 = !{!10330, !10323, !10325, !10327}
!10333 = !{!10334}
!10334 = distinct !{!10334, !10335, !"_ZNK5ArrayILi3Ed16ConstantFunctionEclI5INodeILi3EEEEN5View1IS1_T_E6Type_tERKS6_: argument 0"}
!10335 = distinct !{!10335, !"_ZNK5ArrayILi3Ed16ConstantFunctionEclI5INodeILi3EEEEN5View1IS1_T_E6Type_tERKS6_"}
!10336 = !{!10337}
!10337 = distinct !{!10337, !10338, !"_ZN5View1I5ArrayILi3Ed16ConstantFunctionE5INodeILi3EEE4makeERKS2_RKS4_: argument 0"}
!10338 = distinct !{!10338, !"_ZN5View1I5ArrayILi3Ed16ConstantFunctionE5INodeILi3EEE4makeERKS2_RKS4_"}
!10339 = !{!10340}
!10340 = distinct !{!10340, !10341, !"_ZN19View1ImplementationI5ArrayILi3Ed16ConstantFunctionE5INodeILi3EELb0EE4makeIS4_16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EES4_ELb0EEEES2_RKS2_RKT_RKT0_: argument 0"}
!10341 = distinct !{!10341, !"_ZN19View1ImplementationI5ArrayILi3Ed16ConstantFunctionE5INodeILi3EELb0EE4makeIS4_16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EES4_ELb0EEEES2_RKS2_RKT_RKT0_"}
!10342 = !{!10343, !10340, !10337, !10334}
!10343 = distinct !{!10343, !10344, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EE5INodeILi3EEELb0EE4makeI5ArrayILi3Ed16ConstantFunctionES4_EES4_RKT_RKT0_: argument 0"}
!10344 = distinct !{!10344, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EE5INodeILi3EEELb0EE4makeI5ArrayILi3Ed16ConstantFunctionES4_EES4_RKT_RKT0_"}
!10345 = !{!10340, !10337, !10334}
!10346 = distinct !{!10346, !57}
!10347 = !{!10348, !10350, !10352, !10354, !10356}
!10348 = distinct !{!10348, !10349, !"_ZN17DefaultEngineViewI6EngineILi3Ed16ConstantFunctionE10RemoteViewE5applyERKS2_RK10EngineViewIS3_E: argument 0"}
!10349 = distinct !{!10349, !"_ZN17DefaultEngineViewI6EngineILi3Ed16ConstantFunctionE10RemoteViewE5applyERKS2_RK10EngineViewIS3_E"}
!10350 = distinct !{!10350, !10351, !"_ZN11LeafFunctorI6EngineILi3Ed16ConstantFunctionE10EngineViewI10RemoteViewEE5applyERKS2_RKS5_: argument 0"}
!10351 = distinct !{!10351, !"_ZN11LeafFunctorI6EngineILi3Ed16ConstantFunctionE10EngineViewI10RemoteViewEE5applyERKS2_RKS5_"}
!10352 = distinct !{!10352, !10353, !"_ZN11LeafFunctorI5ArrayILi3Ed16ConstantFunctionE10EngineViewI10RemoteViewEE5applyERKS2_RKS5_: argument 0"}
!10353 = distinct !{!10353, !"_ZN11LeafFunctorI5ArrayILi3Ed16ConstantFunctionE10EngineViewI10RemoteViewEE5applyERKS2_RKS5_"}
!10354 = distinct !{!10354, !10355, !"_ZN7ForEachI5ArrayILi3Ed16ConstantFunctionE10EngineViewI10RemoteViewE11TreeCombineE5applyERKS2_RKS5_RKS6_: argument 0"}
!10355 = distinct !{!10355, !"_ZN7ForEachI5ArrayILi3Ed16ConstantFunctionE10EngineViewI10RemoteViewE11TreeCombineE5applyERKS2_RKS5_RKS6_"}
!10356 = distinct !{!10356, !10357, !"_Z7forEachI5ArrayILi3Ed16ConstantFunctionE10EngineViewI10RemoteViewE11TreeCombineEN7ForEachIT_T0_T1_E6Type_tERKS8_RKS9_RKSA_: argument 0"}
!10357 = distinct !{!10357, !"_Z7forEachI5ArrayILi3Ed16ConstantFunctionE10EngineViewI10RemoteViewE11TreeCombineEN7ForEachIT_T0_T1_E6Type_tERKS8_RKS9_RKSA_"}
!10358 = !{!10359}
!10359 = distinct !{!10359, !10360, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd9BrickViewE6domainEv: argument 0"}
!10360 = distinct !{!10360, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd9BrickViewE6domainEv"}
!10361 = !{!10362}
!10362 = distinct !{!10362, !10363, !"_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd9BrickViewE14physicalDomainEv: argument 0"}
!10363 = distinct !{!10363, !"_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd9BrickViewE14physicalDomainEv"}
!10364 = !{!10365, !10367, !10362, !10359}
!10365 = distinct !{!10365, !10366, !"_Z11shrinkRightILi3EE8IntervalIXT_EERKS1_RK3LocIXT_EE: argument 0"}
!10366 = distinct !{!10366, !"_Z11shrinkRightILi3EE8IntervalIXT_EERKS1_RK3LocIXT_EE"}
!10367 = distinct !{!10367, !10368, !"_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi: argument 0"}
!10368 = distinct !{!10368, !"_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi"}
!10369 = !{!10362, !10359}
!10370 = distinct !{null, null}
!10371 = !{ptr @_ZN16ExpressionKernelI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd9BrickViewE16OpSubtractAssign5ArrayILi3Ed16ConstantFunctionE15InlineKernelTagED2Ev}
!10372 = !{!10373}
!10373 = distinct !{!10373, !10374, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd9BrickViewE6domainEv: argument 0"}
!10374 = distinct !{!10374, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd9BrickViewE6domainEv"}
!10375 = !{!10376}
!10376 = distinct !{!10376, !10377, !"_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd9BrickViewE14physicalDomainEv: argument 0"}
!10377 = distinct !{!10377, !"_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd9BrickViewE14physicalDomainEv"}
!10378 = !{!10376, !10373}
!10379 = !{!10380}
!10380 = distinct !{!10380, !10381, !"_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi: argument 0"}
!10381 = distinct !{!10381, !"_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi"}
!10382 = !{!10380, !10376, !10373}
!10383 = !{!10384, !10380, !10376, !10373}
!10384 = distinct !{!10384, !10385, !"_Z9growRightILi3EE8IntervalIXT_EERKS1_i: argument 0"}
!10385 = distinct !{!10385, !"_Z9growRightILi3EE8IntervalIXT_EERKS1_i"}
!10386 = !{!10387, !10380, !10376, !10373}
!10387 = distinct !{!10387, !10388, !"_Z11shrinkRightILi3EE8IntervalIXT_EERKS1_RK3LocIXT_EE: argument 0"}
!10388 = distinct !{!10388, !"_Z11shrinkRightILi3EE8IntervalIXT_EERKS1_RK3LocIXT_EE"}
!10389 = distinct !{!10389, !57, !239, !240}
!10390 = distinct !{!10390, !57, !239}
!10391 = distinct !{!10391, !57}
!10392 = distinct !{!10392, !57}
!10393 = !{!10394}
!10394 = distinct !{!10394, !10395, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EES2_ELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd13ExpressionTagI10BinaryNodeI8OpDivide9ReferenceIS6_ISC_d10MultiPatchI7GridTag6RemoteI5BrickEEEESO_EEES2_EES2_RKT_RKT0_: argument 0"}
!10395 = distinct !{!10395, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EES2_ELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd13ExpressionTagI10BinaryNodeI8OpDivide9ReferenceIS6_ISC_d10MultiPatchI7GridTag6RemoteI5BrickEEEESO_EEES2_EES2_RKT_RKT0_"}
!10396 = !{!10397, !1320, i64 40}
!10397 = !{!"_ZTS11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd13ExpressionTagI10BinaryNodeI8OpDivide9ReferenceI5FieldIS5_d10MultiPatchI7GridTag6RemoteI5BrickEEEESI_EEE", !10398, i64 0, !1320, i64 40}
!10398 = !{!"_ZTS6EngineILi3Ed13ExpressionTagI10BinaryNodeI8OpDivide9ReferenceI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEESI_EEE", !10399, i64 0, !698, i64 16}
!10399 = !{!"_ZTS10BinaryNodeI8OpDivide9ReferenceI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEESG_E", !4528, i64 0, !4528, i64 8}
!10400 = !{!10401, !10403, !10394}
!10401 = distinct !{!10401, !10402, !"_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd13ExpressionTagI10BinaryNodeI8OpDivide9ReferenceI5FieldIS5_d10MultiPatchI7GridTag6RemoteI5BrickEEEESI_EEE11totalDomainEv: argument 0"}
!10402 = distinct !{!10402, !"_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd13ExpressionTagI10BinaryNodeI8OpDivide9ReferenceI5FieldIS5_d10MultiPatchI7GridTag6RemoteI5BrickEEEESI_EEE11totalDomainEv"}
!10403 = distinct !{!10403, !10404, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd13ExpressionTagI10BinaryNodeI8OpDivide9ReferenceIS_IS5_d10MultiPatchI7GridTag6RemoteI5BrickEEEESH_EEE11totalDomainEv: argument 0"}
!10404 = distinct !{!10404, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd13ExpressionTagI10BinaryNodeI8OpDivide9ReferenceIS_IS5_d10MultiPatchI7GridTag6RemoteI5BrickEEEESH_EEE11totalDomainEv"}
!10405 = !{!10406}
!10406 = distinct !{!10406, !10407, !"_ZN19TemporaryNewDomain1I8IntervalILi3EES1_E12combineSliceERKS1_S4_: argument 0"}
!10407 = distinct !{!10407, !"_ZN19TemporaryNewDomain1I8IntervalILi3EES1_E12combineSliceERKS1_S4_"}
!10408 = !{!10409}
!10409 = distinct !{!10409, !10410, !"_ZN10NewDomain1I8IntervalILi3EEE12combineSliceIS1_EES1_RKT_RKS1_: argument 0"}
!10410 = distinct !{!10410, !"_ZN10NewDomain1I8IntervalILi3EEE12combineSliceIS1_EES1_RKT_RKS1_"}
!10411 = !{!10409, !10406, !10394}
!10412 = !{!10413}
!10413 = distinct !{!10413, !10414, !"_Z7forEachI10BinaryNodeI8OpDivide5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEESF_E16DomainFunctorTagSH_EN7ForEachIT_T0_T1_E6Type_tERKSJ_RKSK_RKSL_: argument 0"}
!10414 = distinct !{!10414, !"_Z7forEachI10BinaryNodeI8OpDivide5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEESF_E16DomainFunctorTagSH_EN7ForEachIT_T0_T1_E6Type_tERKSJ_RKSK_RKSL_"}
!10415 = !{!10416}
!10416 = distinct !{!10416, !10417, !"_ZN7ForEachI10BinaryNodeI8OpDivide5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEESF_E16DomainFunctorTagSH_E5applyERKSG_RKSH_SM_: argument 0"}
!10417 = distinct !{!10417, !"_ZN7ForEachI10BinaryNodeI8OpDivide5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEESF_E16DomainFunctorTagSH_E5applyERKSG_RKSH_SM_"}
!10418 = !{!10419, !10421, !10423, !10425, !10416, !10413}
!10419 = distinct !{!10419, !10420, !"_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv: argument 0"}
!10420 = distinct !{!10420, !"_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv"}
!10421 = distinct !{!10421, !10422, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv: argument 0"}
!10422 = distinct !{!10422, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv"}
!10423 = distinct !{!10423, !10424, !"_ZN11LeafFunctorI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE16DomainFunctorTagE5applyERKSD_RKSE_: argument 0"}
!10424 = distinct !{!10424, !"_ZN11LeafFunctorI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE16DomainFunctorTagE5applyERKSD_RKSE_"}
!10425 = distinct !{!10425, !10426, !"_ZN7ForEachI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE16DomainFunctorTagSE_E5applyERKSD_RKSE_SJ_: argument 0"}
!10426 = distinct !{!10426, !"_ZN7ForEachI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE16DomainFunctorTagSE_E5applyERKSD_RKSE_SJ_"}
!10427 = !{!10428, !10419, !10421, !10423, !10425, !10416, !10413}
!10428 = distinct !{!10428, !10429, !"_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi: argument 0"}
!10429 = distinct !{!10429, !"_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi"}
!10430 = !{!10431, !10428, !10419, !10421, !10423, !10425, !10416, !10413}
!10431 = distinct !{!10431, !10432, !"_Z9growRightILi3EE8IntervalIXT_EERKS1_i: argument 0"}
!10432 = distinct !{!10432, !"_Z9growRightILi3EE8IntervalIXT_EERKS1_i"}
!10433 = !{!10434, !10428, !10419, !10421, !10423, !10425, !10416, !10413}
!10434 = distinct !{!10434, !10435, !"_Z11shrinkRightILi3EE8IntervalIXT_EERKS1_RK3LocIXT_EE: argument 0"}
!10435 = distinct !{!10435, !"_Z11shrinkRightILi3EE8IntervalIXT_EERKS1_RK3LocIXT_EE"}
!10436 = !{!10437, !10416, !10413}
!10437 = distinct !{!10437, !10438, !"_ZN8Combine2I8IntervalILi3EES1_8OpDivide16DomainFunctorTagE7combineERKS1_S6_RKS3_: argument 0"}
!10438 = distinct !{!10438, !"_ZN8Combine2I8IntervalILi3EES1_8OpDivide16DomainFunctorTagE7combineERKS1_S6_RKS3_"}
!10439 = distinct !{!10439, !57}
!10440 = !{!10441}
!10441 = distinct !{!10441, !10442, !"_ZNK18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EEplEl: argument 0"}
!10442 = distinct !{!10442, !"_ZNK18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EEplEl"}
!10443 = !{!10444}
!10444 = distinct !{!10444, !10445, !"_ZNK18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EEplEl: argument 0:thread"}
!10445 = distinct !{!10445, !"_ZNK18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EEplEl"}
!10446 = !{!10447}
!10447 = distinct !{!10447, !10445, !"_ZNK18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EEplEl: argument 0"}
!10448 = !{!10449}
!10449 = distinct !{!10449, !10450, !"_ZNK18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EEplEl: argument 0"}
!10450 = distinct !{!10450, !"_ZNK18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EEplEl"}
!10451 = !{!10452}
!10452 = distinct !{!10452, !10453, !"_ZNK18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EEplEl: argument 0"}
!10453 = distinct !{!10453, !"_ZNK18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELb0E18RefBlockControllerIS7_EEplEl"}
!10454 = !{!10455}
!10455 = distinct !{!10455, !10456, !"_Z7forEachI10BinaryNodeI8OpDivide5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEESF_E16DomainFunctorTagSH_EN7ForEachIT_T0_T1_E6Type_tERKSJ_RKSK_RKSL_: argument 0"}
!10456 = distinct !{!10456, !"_Z7forEachI10BinaryNodeI8OpDivide5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEESF_E16DomainFunctorTagSH_EN7ForEachIT_T0_T1_E6Type_tERKSJ_RKSK_RKSL_"}
!10457 = !{!10458}
!10458 = distinct !{!10458, !10459, !"_ZN7ForEachI10BinaryNodeI8OpDivide5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEESF_E16DomainFunctorTagSH_E5applyERKSG_RKSH_SM_: argument 0"}
!10459 = distinct !{!10459, !"_ZN7ForEachI10BinaryNodeI8OpDivide5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEESF_E16DomainFunctorTagSH_E5applyERKSG_RKSH_SM_"}
!10460 = !{!10461, !10463, !10465, !10467, !10469, !10458, !10455}
!10461 = distinct !{!10461, !10462, !"_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi: argument 0"}
!10462 = distinct !{!10462, !"_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi"}
!10463 = distinct !{!10463, !10464, !"_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv: argument 0"}
!10464 = distinct !{!10464, !"_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv"}
!10465 = distinct !{!10465, !10466, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv: argument 0"}
!10466 = distinct !{!10466, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv"}
!10467 = distinct !{!10467, !10468, !"_ZN11LeafFunctorI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE16DomainFunctorTagE5applyERKSD_RKSE_: argument 0"}
!10468 = distinct !{!10468, !"_ZN11LeafFunctorI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE16DomainFunctorTagE5applyERKSD_RKSE_"}
!10469 = distinct !{!10469, !10470, !"_ZN7ForEachI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE16DomainFunctorTagSE_E5applyERKSD_RKSE_SJ_: argument 0"}
!10470 = distinct !{!10470, !"_ZN7ForEachI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE16DomainFunctorTagSE_E5applyERKSD_RKSE_SJ_"}
!10471 = !{!10472, !10461, !10463, !10465, !10467, !10469, !10458, !10455}
!10472 = distinct !{!10472, !10473, !"_Z9growRightILi3EE8IntervalIXT_EERKS1_i: argument 0"}
!10473 = distinct !{!10473, !"_Z9growRightILi3EE8IntervalIXT_EERKS1_i"}
!10474 = !{!10475, !10458, !10455}
!10475 = distinct !{!10475, !10476, !"_ZN8Combine2I8IntervalILi3EES1_8OpDivide16DomainFunctorTagE7combineERKS1_S6_RKS3_: argument 0"}
!10476 = distinct !{!10476, !"_ZN8Combine2I8IntervalILi3EES1_8OpDivide16DomainFunctorTagE7combineERKS1_S6_RKS3_"}
!10477 = distinct !{null, null, null, null, null}
!10478 = distinct !{!10478, !57}
!10479 = !{!10480, !10482, !10484}
!10480 = distinct !{!10480, !10481, !"_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv: argument 0"}
!10481 = distinct !{!10481, !"_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv"}
!10482 = distinct !{!10482, !10483, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv: argument 0"}
!10483 = distinct !{!10483, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14physicalDomainEv"}
!10484 = distinct !{!10484, !10485, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEclEv: argument 0"}
!10485 = distinct !{!10485, !"_ZNK5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEEclEv"}
!10486 = !{!10487, !10480, !10482, !10484}
!10487 = distinct !{!10487, !10488, !"_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi: argument 0"}
!10488 = distinct !{!10488, !"_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi"}
!10489 = !{!10490, !10487, !10480, !10482, !10484}
!10490 = distinct !{!10490, !10491, !"_Z9growRightILi3EE8IntervalIXT_EERKS1_i: argument 0"}
!10491 = distinct !{!10491, !"_Z9growRightILi3EE8IntervalIXT_EERKS1_i"}
!10492 = !{!10493, !10487, !10480, !10482, !10484}
!10493 = distinct !{!10493, !10494, !"_Z11shrinkRightILi3EE8IntervalIXT_EERKS1_RK3LocIXT_EE: argument 0"}
!10494 = distinct !{!10494, !"_Z11shrinkRightILi3EE8IntervalIXT_EERKS1_RK3LocIXT_EE"}
!10495 = !{!10496, !10498, !10484}
!10496 = distinct !{!10496, !10497, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE8IntervalILi3EELb0EE4makeISF_16CombineDomainOptI19TemporaryNewDomain1ISF_SF_ELb0EEEESD_RKSD_RKT_RKT0_: argument 0"}
!10497 = distinct !{!10497, !"_ZN19View1ImplementationI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE8IntervalILi3EELb0EE4makeISF_16CombineDomainOptI19TemporaryNewDomain1ISF_SF_ELb0EEEESD_RKSD_RKT_RKT0_"}
!10498 = distinct !{!10498, !10499, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE8IntervalILi3EEE4makeERKSD_RKSF_: argument 0"}
!10499 = distinct !{!10499, !"_ZN5View1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE8IntervalILi3EEE4makeERKSD_RKSF_"}
!10500 = !{!10501}
!10501 = distinct !{!10501, !10502, !"_ZN16CombineDomainOptI19TemporaryNewDomain1I8IntervalILi3EES2_ELb0EE4makeI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEES2_EES2_RKT_RKT0_: argument 0"}
end_hunk_17

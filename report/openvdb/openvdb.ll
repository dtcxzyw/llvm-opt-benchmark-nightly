Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/openvdb?download=true
inline.NumInlined: 112558
inline.NumDeleted: 36881
loop-unroll.NumCompletelyUnrolled: 381
loop-unroll.NumRuntimeUnrolled: 183
loop-unroll.NumUnrolled: 1353
begin_hunk_0_@_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE4clipERKNS0_4math9CoordBBoxERKb:bb.a
  %or.cond73 = select i1 %or.cond72, i1 true, i1 %.not41
  br i1 %or.cond73, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, label %.loopexit

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread: ; preds = %bb.e, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i26, %_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit.thread
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32768 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 33280 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, %bb.n
  %indvars.iv = phi i64 [ 0, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread ], [ %indvars.iv.next, %bb.n ] ; 10 uses
  %i.au = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.av = lshr i32 %i.au, 5
  %i.aw = and i32 %i.av, 120
  %i.ax = lshr i32 %i.au, 1
  %i.ay = and i32 %i.ax, 120
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = shl nuw nsw i32 %indvars.iv.tr, 3
  %i.ba = and i32 %i.az, 120
  %i.bb = load i32, ptr %i.b, align 8, !tbaa !1131
  %i.bc = add nsw i32 %i.bb, %i.aw                ; 5 uses
  %i.bd = load i32, ptr %i.e, align 4, !tbaa !1131
  %i.be = add nsw i32 %i.bd, %i.ay                ; 5 uses
  %i.bf = load i32, ptr %i.h, align 8, !tbaa !1131
  %i.bg = add nsw i32 %i.bf, %i.ba                ; 5 uses
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.be to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.bh = add nsw i32 %i.bc, 7                    ; 4 uses
  %i.bi = add nsw i32 %i.be, 7                    ; 4 uses
  %i.bj = add nsw i32 %i.bg, 7                    ; 4 uses
  %.sroa.2.0.insert.ext.i.i27 = zext i32 %i.bi to i64
  %.sroa.2.0.insert.shift.i.i28 = shl nuw i64 %.sroa.2.0.insert.ext.i.i27, 32
  %.sroa.0.0.insert.ext.i.i29 = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i.i30 = or disjoint i64 %.sroa.2.0.insert.shift.i.i28, %.sroa.0.0.insert.ext.i.i29
  %.sroa.037.sroa.0.0.insert.ext = zext i32 %i.bc to i64
  %.sroa.037.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.037.sroa.0.0.insert.ext
  store i64 %.sroa.037.sroa.0.0.insert.insert, ptr %4, align 8
  store i32 %i.bg, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !1126
  store i64 %.sroa.0.0.insert.insert.i.i30, ptr %i.al, align 4
  store i32 %i.bj, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !1126
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1131 ; 3 uses
  %i.bl = icmp slt i32 %i.bk, %i.bc
  br i1 %i.bl, label %_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit34.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = load i32, ptr %i.am, align 4, !tbaa !1131 ; 3 uses
  %i.bn = icmp slt i32 %i.bm, %i.be
  br i1 %i.bn, label %_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit34.thread, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i33

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i33: ; preds = %bb.g
  %i.bo = load i32, ptr %i.ao, align 4, !tbaa !1131 ; 3 uses
  %i.bp = icmp slt i32 %i.bo, %i.bg
  br i1 %i.bp, label %_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit34.thread, label %bb.h

bb.h:                                             ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i33
  %i.bq = load i32, ptr %1, align 4, !tbaa !1131  ; 3 uses
  %i.br = icmp slt i32 %i.bh, %i.bq
  br i1 %i.br, label %_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit34.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load i32, ptr %i.aq, align 4, !tbaa !1131 ; 3 uses
  %i.bt = icmp slt i32 %i.bi, %i.bs
  br i1 %i.bt, label %_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit34.thread, label %_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit34

_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit34: ; preds = %bb.i
  %i.bu = load i32, ptr %i.ar, align 4, !tbaa !1131 ; 3 uses
  %.not42 = icmp slt i32 %i.bj, %i.bu
  br i1 %.not42, label %_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit34.thread, label %bb.k

_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit34.thread: ; preds = %bb.h, %bb.i, %bb.g, %bb.f, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i33, %_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit34
  %i.bv = lshr i64 %indvars.iv, 6
  %i.bw = and i64 %i.bv, 67108863                 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bw ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !1156 ; 2 uses
  %i.bz = and i64 %indvars.iv, 63
  %i.ca = shl nuw i64 1, %i.bz                    ; 3 uses
  %i.cb = and i64 %i.by, %i.ca
  %.not.i.i.i.i = icmp eq i64 %i.cb, 0
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE14unsetChildNodeEjRKb.exit.thread.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE14unsetChildNodeEjRKb.exit.i

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE14unsetChildNodeEjRKb.exit.thread.i: ; preds = %_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit34.thread
  %i.cd = load i8, ptr %2, align 1, !tbaa !1209, !range !1154, !noundef !1155
  store i8 %i.cd, ptr %i.cc, align 8, !tbaa !1126
  %.pre = xor i64 %i.ca, -1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE18makeChildNodeEmptyEjRKb.exit

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE14unsetChildNodeEjRKb.exit.i: ; preds = %_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit34.thread
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !1126 ; 2 uses
  %i.cf = xor i64 %i.ca, -1                       ; 3 uses
  %i.cg = and i64 %i.by, %i.cf
  store i64 %i.cg, ptr %i.bx, align 8, !tbaa !1156
  %i.ch = load i8, ptr %2, align 1, !tbaa !1209, !range !1154, !noundef !1155
  store i8 %i.ch, ptr %i.cc, align 8, !tbaa !1126
  %i.ci = icmp eq ptr %i.ce, null
  br i1 %i.ci, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE18makeChildNodeEmptyEjRKb.exit, label %bb.j

bb.j:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE14unsetChildNodeEjRKb.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 80) #35
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE18makeChildNodeEmptyEjRKb.exit

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE18makeChildNodeEmptyEjRKb.exit: ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE14unsetChildNodeEjRKb.exit.thread.i, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE14unsetChildNodeEjRKb.exit.i, %bb.j
  %.pre-phi = phi i64 [ %.pre, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE14unsetChildNodeEjRKb.exit.thread.i ], [ %i.cf, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE14unsetChildNodeEjRKb.exit.i ], [ %i.cf, %bb.j ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bw ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !1156
  %i.cl = and i64 %i.ck, %.pre-phi
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !1156
  br label %bb.n

bb.k:                                             ; preds = %_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit34
  %i.cm = icmp slt i32 %i.bc, %i.bq
  %i.cn = icmp slt i32 %i.be, %i.bs
  %or.cond74 = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %or.cond74, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit36.thread, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i35

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i35: ; preds = %bb.k
  %i.co = icmp slt i32 %i.bg, %i.bu
  %i.cp = icmp slt i32 %i.bk, %i.bh
  %or.cond40 = select i1 %i.co, i1 true, i1 %i.cp
  %i.cq = icmp slt i32 %i.bm, %i.bi
  %or.cond75 = select i1 %or.cond40, i1 true, i1 %i.cq
  %.not43 = icmp slt i32 %i.bo, %i.bj
  %or.cond76 = select i1 %or.cond75, i1 true, i1 %.not43
  br i1 %or.cond76, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit36.thread, label %bb.n

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit36.thread: ; preds = %bb.k, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i35
  %i.cr = lshr i64 %indvars.iv, 6
  %i.cs = and i64 %i.cr, 67108863                 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !1156
  %i.cv = and i64 %indvars.iv, 63
  %i.cw = shl nuw i64 1, %i.cv                    ; 3 uses
  %i.cx = and i64 %i.cu, %i.cw
  %.not44 = icmp eq i64 %i.cx, 0
  br i1 %.not44, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit36.thread
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1126
  %i.da = load i8, ptr %2, align 1, !tbaa !1209, !range !1154, !noundef !1155
  %i.db = trunc nuw i8 %i.da to i1
  call void @_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE4clipERKNS0_4math9CoordBBoxEb(ptr noundef nonnull align 8 dereferenceable(80) %i.cz, ptr noundef nonnull align 4 dereferenceable(24) %1, i1 noundef zeroext %i.db)
  br label %bb.n

bb.m:                                             ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit36.thread
  %i.dc = call i32 @llvm.smax.i32(i32 %i.bc, i32 %i.bq)
  store i32 %i.dc, ptr %4, align 8, !tbaa !1131
  %i.dd = call i32 @llvm.smax.i32(i32 %i.be, i32 %i.bs)
  store i32 %i.dd, ptr %i.an, align 4, !tbaa !1131
  %i.de = call i32 @llvm.smax.i32(i32 %i.bg, i32 %i.bu)
  store i32 %i.de, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !1131
  %i.df = call i32 @llvm.smin.i32(i32 %i.bk, i32 %i.bh)
  store i32 %i.df, ptr %i.al, align 4, !tbaa !1131
  %i.dg = call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.bi)
  store i32 %i.dg, ptr %i.ap, align 8, !tbaa !1131
  %i.dh = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bj)
  store i32 %i.dh, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !1209, !range !1154, !noundef !1155
  store i8 %i.dj, ptr %i.a, align 1, !tbaa !1209
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cs ; 3 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !1156
  %i.dm = and i64 %i.dl, %i.cw
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = load i8, ptr %2, align 1, !tbaa !1209, !range !1154, !noundef !1155
  store i8 %i.do, ptr %i.di, align 8, !tbaa !1126
  %i.dp = xor i64 %i.cw, -1
  %i.dq = load i64, ptr %i.dk, align 8, !tbaa !1156
  %i.dr = and i64 %i.dq, %i.dp
  store i64 %i.dr, ptr %i.dk, align 8, !tbaa !1156
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE4fillERKNS0_4math9CoordBBoxERKbb(ptr noundef nonnull align 8 dereferenceable(33808) %0, ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.n

bb.n:                                             ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i35, %bb.m, %bb.l, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE18makeChildNodeEmptyEjRKb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4096
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !24178

.loopexit:                                        ; preds = %bb.n, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE4clipERKNS0_4math9CoordBBoxEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::util::NodeMask.188", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1131, !noalias !24190 ; 20 uses
  %i.c = add nsw i32 %i.b, 7                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1131, !noalias !24190 ; 19 uses
  %i.f = add i32 %i.e, 7                          ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1131, !noalias !24190 ; 18 uses
  %i.i = add i32 %i.h, 7                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !1131 ; 3 uses
  %i.l = icmp slt i32 %i.k, %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp slt i32 %i.n, %i.e
  %or.cond = select i1 %i.l, i1 true, i1 %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = icmp slt i32 %i.q, %i.h
  %or.cond72 = select i1 %or.cond, i1 true, i1 %i.r
  %i.s = load i32, ptr %1, align 4                ; 2 uses
  %i.t = icmp slt i32 %i.c, %i.s
  %or.cond74 = select i1 %or.cond72, i1 true, i1 %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = icmp slt i32 %i.f, %i.v
  %or.cond81 = select i1 %or.cond74, i1 true, i1 %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %.not76 = icmp slt i32 %i.i, %i.y
  %or.cond83 = select i1 %or.cond81, i1 true, i1 %.not76
  br i1 %or.cond83, label %_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit.thread, label %bb.b

_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit.thread: ; preds = %bb.a
  %i.z = icmp slt i32 %i.e, 2147483641
  %i.aa = icmp slt i32 %i.h, 2147483641
  %or.cond36.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond36.i, label %.preheader.split.split.i, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread

.preheader.split.split.i:                         ; preds = %_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit.thread
  %i.ab = and i32 %i.h, 7                         ; 15 uses
  %i.ac = shl i32 %i.f, 3
  %i.ad = and i32 %i.ac, 56                       ; 15 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af                    ; 9 uses
  br i1 %2, label %.lr.ph47.us.i.a, label %.lr.ph47.i.a

.lr.ph47.us.i.a:                                  ; preds = %.preheader.split.split.i
  %i.ah = shl i32 %i.e, 3
  %i.ai = and i32 %i.ah, 56                       ; 8 uses
  %i.aj = or disjoint i32 %i.ab, %i.ai
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = add nsw i32 %i.h, 1
  %i.an = and i32 %i.am, 7                        ; 8 uses
  %i.ao = or disjoint i32 %i.an, %i.ai
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl nuw i64 1, %i.ap
  %invariant.op.a = or i64 %i.al, %i.aq
  %i.ar = add nsw i32 %i.h, 2
  %i.as = and i32 %i.ar, 7                        ; 8 uses
  %i.at = or disjoint i32 %i.as, %i.ai
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw i64 1, %i.au
  %invariant.op143.a = or i64 %invariant.op.a, %i.av
  %i.aw = add nsw i32 %i.h, 3
  %i.ax = and i32 %i.aw, 7                        ; 8 uses
  %i.ay = or disjoint i32 %i.ax, %i.ai
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl nuw i64 1, %i.az
  %invariant.op145.a = or i64 %invariant.op143.a, %i.ba
  %i.bb = and i32 %i.h, 7
  %i.bc = xor i32 %i.bb, 4                        ; 8 uses
  %i.bd = or disjoint i32 %i.bc, %i.ai
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl nuw i64 1, %i.be
  %invariant.op146.a = or i64 %invariant.op145.a, %i.bf
  %i.bg = add nsw i32 %i.h, 5
  %i.bh = and i32 %i.bg, 7                        ; 8 uses
  %i.bi = or disjoint i32 %i.bh, %i.ai
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %invariant.op148.a = or i64 %invariant.op146.a, %i.bk
  %i.bl = add nsw i32 %i.h, 6
  %i.bm = and i32 %i.bl, 7                        ; 8 uses
  %i.bn = or disjoint i32 %i.bm, %i.ai
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = shl nuw i64 1, %i.bo
  %invariant.op149.a = or i64 %invariant.op148.a, %i.bp
  %i.bq = and i32 %i.i, 7                         ; 8 uses
  %i.br = or disjoint i32 %i.bq, %i.ai
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl nuw i64 1, %i.bs
  %invariant.op151.a = or i64 %invariant.op149.a, %i.bt
  %i.bu = shl i32 %i.e, 3
  %i.bv = add i32 %i.bu, 8
  %i.bw = and i32 %i.bv, 56                       ; 8 uses
  %i.bx = or disjoint i32 %i.ab, %i.bw
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by
  %invariant.op152.a = or i64 %invariant.op151.a, %i.bz
  %i.ca = or disjoint i32 %i.an, %i.bw
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl nuw i64 1, %i.cb
  %invariant.op154.a = or i64 %invariant.op152.a, %i.cc
  %i.cd = or disjoint i32 %i.as, %i.bw
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl nuw i64 1, %i.ce
  %invariant.op155.a = or i64 %invariant.op154.a, %i.cf
  %i.cg = or disjoint i32 %i.ax, %i.bw
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl nuw i64 1, %i.ch
  %invariant.op157.a = or i64 %invariant.op155.a, %i.ci
  %i.cj = or disjoint i32 %i.bc, %i.bw
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = shl nuw i64 1, %i.ck
  %invariant.op158.a = or i64 %invariant.op157.a, %i.cl
  %i.cm = or disjoint i32 %i.bh, %i.bw
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = shl nuw i64 1, %i.cn
  %invariant.op160.a = or i64 %invariant.op158.a, %i.co
  %i.cp = or disjoint i32 %i.bm, %i.bw
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = shl nuw i64 1, %i.cq
  %invariant.op161.a = or i64 %invariant.op160.a, %i.cr
  %i.cs = or disjoint i32 %i.bq, %i.bw
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = shl nuw i64 1, %i.ct
  %invariant.op163.a = or i64 %invariant.op161.a, %i.cu
  %i.cv = shl i32 %i.e, 3
  %i.cw = add i32 %i.cv, 16
  %i.cx = and i32 %i.cw, 56                       ; 8 uses
  %i.cy = or disjoint i32 %i.ab, %i.cx
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = shl nuw i64 1, %i.cz
  %invariant.op164.a = or i64 %invariant.op163.a, %i.da
  %i.db = or disjoint i32 %i.an, %i.cx
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = shl nuw i64 1, %i.dc
  %invariant.op166.a = or i64 %invariant.op164.a, %i.dd
  %i.de = or disjoint i32 %i.as, %i.cx
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = shl nuw i64 1, %i.df
  %invariant.op167.a = or i64 %invariant.op166.a, %i.dg
  %i.dh = or disjoint i32 %i.ax, %i.cx
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = shl nuw i64 1, %i.di
  %invariant.op169.a = or i64 %invariant.op167.a, %i.dj
  %i.dk = or disjoint i32 %i.bc, %i.cx
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = shl nuw i64 1, %i.dl
  %invariant.op170.a = or i64 %invariant.op169.a, %i.dm
  %i.dn = or disjoint i32 %i.bh, %i.cx
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = shl nuw i64 1, %i.do
  %invariant.op172.a = or i64 %invariant.op170.a, %i.dp
  %i.dq = or disjoint i32 %i.bm, %i.cx
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = shl nuw i64 1, %i.dr
  %invariant.op173.a = or i64 %invariant.op172.a, %i.ds
  %i.dt = or disjoint i32 %i.bq, %i.cx
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = shl nuw i64 1, %i.du
  %invariant.op175.a = or i64 %invariant.op173.a, %i.dv
  %i.dw = shl i32 %i.e, 3
  %i.dx = add i32 %i.dw, 24
  %i.dy = and i32 %i.dx, 56                       ; 8 uses
  %i.dz = or disjoint i32 %i.ab, %i.dy
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl nuw i64 1, %i.ea
  %invariant.op176.a = or i64 %invariant.op175.a, %i.eb
  %i.ec = or disjoint i32 %i.an, %i.dy
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = shl nuw i64 1, %i.ed
  %invariant.op178.a = or i64 %invariant.op176.a, %i.ee
  %i.ef = or disjoint i32 %i.as, %i.dy
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = shl nuw i64 1, %i.eg
  %invariant.op179.a = or i64 %invariant.op178.a, %i.eh
  %i.ei = or disjoint i32 %i.ax, %i.dy
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = shl nuw i64 1, %i.ej
  %invariant.op181.a = or i64 %invariant.op179.a, %i.ek
  %i.el = or disjoint i32 %i.bc, %i.dy
  %i.em = zext nneg i32 %i.el to i64
  %i.en = shl nuw i64 1, %i.em
  %invariant.op182.a = or i64 %invariant.op181.a, %i.en
  %i.eo = or disjoint i32 %i.bh, %i.dy
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = shl nuw i64 1, %i.ep
  %invariant.op184.a = or i64 %invariant.op182.a, %i.eq
  %i.er = or disjoint i32 %i.bm, %i.dy
  %i.es = zext nneg i32 %i.er to i64
  %i.et = shl nuw i64 1, %i.es
  %invariant.op185.a = or i64 %invariant.op184.a, %i.et
  %i.eu = or disjoint i32 %i.bq, %i.dy
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = shl nuw i64 1, %i.ev
  %invariant.op187.a = or i64 %invariant.op185.a, %i.ew
  %i.ex = shl i32 %i.e, 3
  %i.ey = and i32 %i.ex, 56
  %i.ez = xor i32 %i.ey, 32                       ; 8 uses
  %i.fa = or disjoint i32 %i.ab, %i.ez
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = shl nuw i64 1, %i.fb
  %invariant.op188.a = or i64 %invariant.op187.a, %i.fc
  %i.fd = or disjoint i32 %i.an, %i.ez
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %invariant.op190.a = or i64 %invariant.op188.a, %i.ff
  %i.fg = or disjoint i32 %i.as, %i.ez
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = shl nuw i64 1, %i.fh
  %invariant.op191.a = or i64 %invariant.op190.a, %i.fi
  %i.fj = or disjoint i32 %i.ax, %i.ez
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = shl nuw i64 1, %i.fk
  %invariant.op193.a = or i64 %invariant.op191.a, %i.fl
  %i.fm = or disjoint i32 %i.bc, %i.ez
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = shl nuw i64 1, %i.fn
  %invariant.op194.a = or i64 %invariant.op193.a, %i.fo
  %i.fp = or disjoint i32 %i.bh, %i.ez
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = shl nuw i64 1, %i.fq
  %invariant.op196.a = or i64 %invariant.op194.a, %i.fr
  %i.fs = or disjoint i32 %i.bm, %i.ez
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = shl nuw i64 1, %i.ft
  %invariant.op197.a = or i64 %invariant.op196.a, %i.fu
  %i.fv = or disjoint i32 %i.bq, %i.ez
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = shl nuw i64 1, %i.fw
  %invariant.op199.a = or i64 %invariant.op197.a, %i.fx
  %i.fy = shl i32 %i.e, 3
  %i.fz = add i32 %i.fy, 40
  %i.ga = and i32 %i.fz, 56                       ; 8 uses
  %i.gb = or disjoint i32 %i.ab, %i.ga
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = shl nuw i64 1, %i.gc
  %invariant.op200.a = or i64 %invariant.op199.a, %i.gd
  %i.ge = or disjoint i32 %i.an, %i.ga
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = shl nuw i64 1, %i.gf
  %invariant.op202.a = or i64 %invariant.op200.a, %i.gg
  %i.gh = or disjoint i32 %i.as, %i.ga
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = shl nuw i64 1, %i.gi
  %invariant.op203.a = or i64 %invariant.op202.a, %i.gj
  %i.gk = or disjoint i32 %i.ax, %i.ga
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = shl nuw i64 1, %i.gl
  %invariant.op205.a = or i64 %invariant.op203.a, %i.gm
  %i.gn = or disjoint i32 %i.bc, %i.ga
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = shl nuw i64 1, %i.go
  %invariant.op206.a = or i64 %invariant.op205.a, %i.gp
  %i.gq = or disjoint i32 %i.bh, %i.ga
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = shl nuw i64 1, %i.gr
  %invariant.op208.a = or i64 %invariant.op206.a, %i.gs
  %i.gt = or disjoint i32 %i.bm, %i.ga
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = shl nuw i64 1, %i.gu
  %invariant.op209.a = or i64 %invariant.op208.a, %i.gv
  %i.gw = or disjoint i32 %i.bq, %i.ga
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = shl nuw i64 1, %i.gx
  %invariant.op211.a = or i64 %invariant.op209.a, %i.gy
  %i.gz = shl i32 %i.e, 3
  %i.ha = add i32 %i.gz, 48
  %i.hb = and i32 %i.ha, 56                       ; 8 uses
  %i.hc = or disjoint i32 %i.ab, %i.hb
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = shl nuw i64 1, %i.hd
  %invariant.op212.a = or i64 %invariant.op211.a, %i.he
  %i.hf = or disjoint i32 %i.an, %i.hb
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = shl nuw i64 1, %i.hg
  %invariant.op214.a = or i64 %invariant.op212.a, %i.hh
  %i.hi = or disjoint i32 %i.as, %i.hb
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = shl nuw i64 1, %i.hj
  %invariant.op215.a = or i64 %invariant.op214.a, %i.hk
  %i.hl = or disjoint i32 %i.ax, %i.hb
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = shl nuw i64 1, %i.hm
  %invariant.op217.a = or i64 %invariant.op215.a, %i.hn
  %i.ho = or disjoint i32 %i.bc, %i.hb
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = shl nuw i64 1, %i.hp
  %invariant.op218.a = or i64 %invariant.op217.a, %i.hq
  %i.hr = or disjoint i32 %i.bh, %i.hb
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = shl nuw i64 1, %i.hs
  %invariant.op220.a = or i64 %invariant.op218.a, %i.ht
  %i.hu = or disjoint i32 %i.bm, %i.hb
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = shl nuw i64 1, %i.hv
  %invariant.op221.a = or i64 %invariant.op220.a, %i.hw
  %i.hx = or disjoint i32 %i.bq, %i.hb
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = shl nuw i64 1, %i.hy
  %invariant.op223.a = or i64 %invariant.op221.a, %i.hz
  %i.ia = or disjoint i32 %i.an, %i.ad
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = shl nuw i64 1, %i.ib
  %i.id = or i64 %invariant.op223.a, %i.ic
  %i.ie = or disjoint i32 %i.as, %i.ad
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = shl nuw i64 1, %i.if
  %i.ih = or i64 %i.id, %i.ig
  %i.ii = or disjoint i32 %i.ax, %i.ad
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = shl nuw i64 1, %i.ij
  %i.il = or i64 %i.ih, %i.ik
  %i.im = or disjoint i32 %i.bc, %i.ad
  %i.in = zext nneg i32 %i.im to i64
  %i.io = shl nuw i64 1, %i.in
  %i.ip = or i64 %i.il, %i.io
  %i.iq = or disjoint i32 %i.bh, %i.ad
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = shl nuw i64 1, %i.ir
  %i.it = or i64 %i.ip, %i.is
  %i.iu = or disjoint i32 %i.bm, %i.ad
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = shl nuw i64 1, %i.iv
  %i.ix = or i64 %i.it, %i.iw
  %i.iy = or disjoint i32 %i.bq, %i.ad
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = shl nuw i64 1, %i.iz
  %4 = or i64 %i.ix, %i.ja                        ; 8 uses
  %5 = and i32 %i.b, 7
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %6 ; 2 uses
  %.promoted.us.i = load i64, ptr %7, align 8, !tbaa !1156
  %8 = or i64 %4, %.promoted.us.i
  %.reass = or i64 %8, %i.ag
  store i64 %.reass, ptr %7, align 8, !tbaa !1156
  %9 = add i32 %i.b, 1
  %10 = and i32 %9, 7
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %11 ; 2 uses
  %.promoted.us.i.1 = load i64, ptr %12, align 8, !tbaa !1156
  %13 = or i64 %4, %.promoted.us.i.1
  %.reass.1 = or i64 %13, %i.ag
  store i64 %.reass.1, ptr %12, align 8, !tbaa !1156
  %14 = add i32 %i.b, 2
  %15 = and i32 %14, 7
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %16 ; 2 uses
  %.promoted.us.i.2 = load i64, ptr %17, align 8, !tbaa !1156
  %18 = or i64 %4, %.promoted.us.i.2
  %.reass.2 = or i64 %18, %i.ag
  store i64 %.reass.2, ptr %17, align 8, !tbaa !1156
  %19 = add i32 %i.b, 3
  %20 = and i32 %19, 7
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %21 ; 2 uses
  %.promoted.us.i.3 = load i64, ptr %22, align 8, !tbaa !1156
  %i.jb = or i64 %4, %.promoted.us.i.3
  %.reass.3.a = or i64 %i.jb, %i.ag
  store i64 %.reass.3.a, ptr %22, align 8, !tbaa !1156
  %i.jc = and i32 %i.b, 7
  %23 = xor i32 %i.jc, 4
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %24 ; 2 uses
  %.promoted.us.i.4 = load i64, ptr %25, align 8, !tbaa !1156
  %26 = or i64 %4, %.promoted.us.i.4
  %.reass.4 = or i64 %26, %i.ag
  store i64 %.reass.4, ptr %25, align 8, !tbaa !1156
  %27 = add i32 %i.b, 5
  %28 = and i32 %27, 7
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %29 ; 2 uses
  %.promoted.us.i.5 = load i64, ptr %30, align 8, !tbaa !1156
  %31 = or i64 %4, %.promoted.us.i.5
  %.reass.5 = or i64 %31, %i.ag
  store i64 %.reass.5, ptr %30, align 8, !tbaa !1156
  %32 = add i32 %i.b, 6
  %33 = and i32 %32, 7
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %34 ; 2 uses
  %.promoted.us.i.6 = load i64, ptr %35, align 8, !tbaa !1156
  %36 = or i64 %4, %.promoted.us.i.6
  %.reass.6 = or i64 %36, %i.ag
  store i64 %.reass.6, ptr %35, align 8, !tbaa !1156
  %37 = add i32 %i.b, 7
  %38 = and i32 %37, 7
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %39 ; 2 uses
  %.promoted.us.i.7 = load i64, ptr %40, align 8, !tbaa !1156
  %41 = or i64 %4, %.promoted.us.i.7
  %.reass.7 = or i64 %41, %i.ag
  store i64 %.reass.7, ptr %40, align 8, !tbaa !1156
  br label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread

.lr.ph47.i.a:                                     ; preds = %.preheader.split.split.i
  %42 = shl i32 %i.e, 3
  %i.jd = and i32 %42, 56                         ; 8 uses
  %43 = or disjoint i32 %i.ab, %i.jd
  %44 = zext nneg i32 %43 to i64
  %45 = shl nuw i64 1, %44
  %i.je = add nsw i32 %i.h, 1
  %i.jf = and i32 %i.je, 7                        ; 8 uses
  %i.jg = or disjoint i32 %i.jf, %i.jd
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = shl nuw i64 1, %i.jh
  %46 = or i64 %45, %i.ji
  %i.jj = add nsw i32 %i.h, 2
  %i.jk = and i32 %i.jj, 7                        ; 8 uses
  %i.jl = or disjoint i32 %i.jk, %i.jd
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = shl nuw i64 1, %i.jm
  %47 = or i64 %46, %i.jn
  %i.jo = add nsw i32 %i.h, 3
  %i.jp = and i32 %i.jo, 7                        ; 8 uses
  %i.jq = or disjoint i32 %i.jp, %i.jd
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = shl nuw i64 1, %i.jr
  %48 = or i64 %47, %i.js
  %i.jt = and i32 %i.h, 7
  %i.ju = xor i32 %i.jt, 4                        ; 8 uses
  %i.jv = or disjoint i32 %i.ju, %i.jd
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = shl nuw i64 1, %i.jw
  %49 = or i64 %48, %i.jx
  %i.jy = add nsw i32 %i.h, 5
  %i.jz = and i32 %i.jy, 7                        ; 8 uses
  %i.ka = or disjoint i32 %i.jz, %i.jd
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = shl nuw i64 1, %i.kb
  %50 = or i64 %49, %i.kc
  %i.kd = add nsw i32 %i.h, 6
  %i.ke = and i32 %i.kd, 7                        ; 8 uses
  %i.kf = or disjoint i32 %i.ke, %i.jd
  %i.kg = zext nneg i32 %i.kf to i64
  %i.kh = shl nuw i64 1, %i.kg
  %51 = or i64 %50, %i.kh
  %i.ki = and i32 %i.i, 7                         ; 8 uses
  %i.kj = or disjoint i32 %i.ki, %i.jd
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = shl nuw i64 1, %i.kk
  %52 = or i64 %51, %i.kl
  %i.km = shl i32 %i.e, 3
  %i.kn = add i32 %i.km, 8
  %i.ko = and i32 %i.kn, 56                       ; 8 uses
  %i.kp = or disjoint i32 %i.ab, %i.ko
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = shl nuw i64 1, %i.kq
  %53 = or i64 %52, %i.kr
  %i.ks = or disjoint i32 %i.jf, %i.ko
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = shl nuw i64 1, %i.kt
  %54 = or i64 %53, %i.ku
  %i.kv = or disjoint i32 %i.jk, %i.ko
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = shl nuw i64 1, %i.kw
  %55 = or i64 %54, %i.kx
  %i.ky = or disjoint i32 %i.jp, %i.ko
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = shl nuw i64 1, %i.kz
  %56 = or i64 %55, %i.la
  %i.lb = or disjoint i32 %i.ju, %i.ko
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = shl nuw i64 1, %i.lc
  %57 = or i64 %56, %i.ld
  %i.le = or disjoint i32 %i.jz, %i.ko
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = shl nuw i64 1, %i.lf
  %58 = or i64 %57, %i.lg
  %i.lh = or disjoint i32 %i.ke, %i.ko
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = shl nuw i64 1, %i.li
  %59 = or i64 %58, %i.lj
  %i.lk = or disjoint i32 %i.ki, %i.ko
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = shl nuw i64 1, %i.ll
  %60 = or i64 %59, %i.lm
  %i.ln = shl i32 %i.e, 3
  %61 = add i32 %i.ln, 16
  %62 = and i32 %61, 56                           ; 8 uses
  %i.lo = or disjoint i32 %i.ab, %62
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = shl nuw i64 1, %i.lp
  %63 = or i64 %60, %i.lq
  %i.lr = or disjoint i32 %i.jf, %62
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = shl nuw i64 1, %i.ls
  %64 = or i64 %63, %i.lt
  %i.lu = or disjoint i32 %i.jk, %62
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = shl nuw i64 1, %i.lv
  %65 = or i64 %64, %i.lw
  %i.lx = or disjoint i32 %i.jp, %62
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = shl nuw i64 1, %i.ly
  %66 = or i64 %65, %i.lz
  %i.ma = or disjoint i32 %i.ju, %62
  %i.mb = zext nneg i32 %i.ma to i64
  %i.mc = shl nuw i64 1, %i.mb
  %67 = or i64 %66, %i.mc
  %i.md = or disjoint i32 %i.jz, %62
  %i.me = zext nneg i32 %i.md to i64
  %i.mf = shl nuw i64 1, %i.me
  %68 = or i64 %67, %i.mf
  %i.mg = or disjoint i32 %i.ke, %62
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = shl nuw i64 1, %i.mh
  %69 = or i64 %68, %i.mi
  %i.mj = or disjoint i32 %i.ki, %62
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = shl nuw i64 1, %i.mk
  %70 = or i64 %69, %i.ml
  %i.mm = shl i32 %i.e, 3
  %i.mn = add i32 %i.mm, 24
  %i.mo = and i32 %i.mn, 56                       ; 8 uses
  %i.mp = or disjoint i32 %i.ab, %i.mo
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = shl nuw i64 1, %i.mq
  %71 = or i64 %70, %i.mr
  %i.ms = or disjoint i32 %i.jf, %i.mo
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = shl nuw i64 1, %i.mt
  %72 = or i64 %71, %i.mu
  %i.mv = or disjoint i32 %i.jk, %i.mo
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = shl nuw i64 1, %i.mw
  %73 = or i64 %72, %i.mx
  %i.my = or disjoint i32 %i.jp, %i.mo
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = shl nuw i64 1, %i.mz
  %74 = or i64 %73, %i.na
  %i.nb = or disjoint i32 %i.ju, %i.mo
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = shl nuw i64 1, %i.nc
  %75 = or i64 %74, %i.nd
  %i.ne = or disjoint i32 %i.jz, %i.mo
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = shl nuw i64 1, %i.nf
  %76 = or i64 %75, %i.ng
  %i.nh = or disjoint i32 %i.ke, %i.mo
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = shl nuw i64 1, %i.ni
  %77 = or i64 %76, %i.nj
  %i.nk = or disjoint i32 %i.ki, %i.mo
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = shl nuw i64 1, %i.nl
  %78 = or i64 %77, %i.nm
  %i.nn = shl i32 %i.e, 3
  %79 = and i32 %i.nn, 56
  %80 = xor i32 %79, 32                           ; 8 uses
  %i.no = or disjoint i32 %i.ab, %80
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = shl nuw i64 1, %i.np
  %81 = or i64 %78, %i.nq
  %i.nr = or disjoint i32 %i.jf, %80
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = shl nuw i64 1, %i.ns
  %82 = or i64 %81, %i.nt
  %i.nu = or disjoint i32 %i.jk, %80
  %i.nv = zext nneg i32 %i.nu to i64
  %i.nw = shl nuw i64 1, %i.nv
  %83 = or i64 %82, %i.nw
  %i.nx = or disjoint i32 %i.jp, %80
  %i.ny = zext nneg i32 %i.nx to i64
  %i.nz = shl nuw i64 1, %i.ny
  %84 = or i64 %83, %i.nz
  %i.oa = or disjoint i32 %i.ju, %80
  %i.ob = zext nneg i32 %i.oa to i64
  %i.oc = shl nuw i64 1, %i.ob
  %85 = or i64 %84, %i.oc
  %i.od = or disjoint i32 %i.jz, %80
  %i.oe = zext nneg i32 %i.od to i64
  %i.of = shl nuw i64 1, %i.oe
  %86 = or i64 %85, %i.of
  %i.og = or disjoint i32 %i.ke, %80
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = shl nuw i64 1, %i.oh
  %87 = or i64 %86, %i.oi
  %i.oj = or disjoint i32 %i.ki, %80
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = shl nuw i64 1, %i.ok
  %88 = or i64 %87, %i.ol
  %i.om = shl i32 %i.e, 3
  %i.on = add i32 %i.om, 40
  %i.oo = and i32 %i.on, 56                       ; 8 uses
  %i.op = or disjoint i32 %i.ab, %i.oo
  %i.oq = zext nneg i32 %i.op to i64
  %i.or = shl nuw i64 1, %i.oq
  %89 = or i64 %88, %i.or
  %i.os = or disjoint i32 %i.jf, %i.oo
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = shl nuw i64 1, %i.ot
  %90 = or i64 %89, %i.ou
  %i.ov = or disjoint i32 %i.jk, %i.oo
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = shl nuw i64 1, %i.ow
  %91 = or i64 %90, %i.ox
  %i.oy = or disjoint i32 %i.jp, %i.oo
  %i.oz = zext nneg i32 %i.oy to i64
  %i.pa = shl nuw i64 1, %i.oz
  %92 = or i64 %91, %i.pa
  %i.pb = or disjoint i32 %i.ju, %i.oo
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = shl nuw i64 1, %i.pc
  %93 = or i64 %92, %i.pd
  %i.pe = or disjoint i32 %i.jz, %i.oo
  %i.pf = zext nneg i32 %i.pe to i64
  %i.pg = shl nuw i64 1, %i.pf
  %94 = or i64 %93, %i.pg
  %i.ph = or disjoint i32 %i.ke, %i.oo
  %i.pi = zext nneg i32 %i.ph to i64
  %i.pj = shl nuw i64 1, %i.pi
  %95 = or i64 %94, %i.pj
  %i.pk = or disjoint i32 %i.ki, %i.oo
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = shl nuw i64 1, %i.pl
  %96 = or i64 %95, %i.pm
  %i.pn = shl i32 %i.e, 3
  %97 = add i32 %i.pn, 48
  %i.po = and i32 %97, 56                         ; 8 uses
  %i.pp = or disjoint i32 %i.ab, %i.po
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = shl nuw i64 1, %i.pq
  %98 = or i64 %96, %i.pr
  %i.ps = or disjoint i32 %i.jf, %i.po
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = shl nuw i64 1, %i.pt
  %99 = or i64 %98, %i.pu
  %i.pv = or disjoint i32 %i.jk, %i.po
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = shl nuw i64 1, %i.pw
  %100 = or i64 %99, %i.px
  %i.py = or disjoint i32 %i.jp, %i.po
  %i.pz = zext nneg i32 %i.py to i64
  %i.qa = shl nuw i64 1, %i.pz
  %101 = or i64 %100, %i.qa
  %i.qb = or disjoint i32 %i.ju, %i.po
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = shl nuw i64 1, %i.qc
  %102 = or i64 %101, %i.qd
  %i.qe = or disjoint i32 %i.jz, %i.po
  %i.qf = zext nneg i32 %i.qe to i64
  %i.qg = shl nuw i64 1, %i.qf
  %103 = or i64 %102, %i.qg
  %i.qh = or disjoint i32 %i.ke, %i.po
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = shl nuw i64 1, %i.qi
  %104 = or i64 %103, %i.qj
  %i.qk = or disjoint i32 %i.ki, %i.po
  %i.ql = zext nneg i32 %i.qk to i64
  %i.qm = shl nuw i64 1, %i.ql
  %i.qn = or i64 %104, %i.qm
  %105 = or disjoint i32 %i.jf, %i.ad
  %106 = zext nneg i32 %105 to i64
  %107 = shl nuw i64 1, %106
  %i.qo = or i64 %i.qn, %107
  %108 = or disjoint i32 %i.jk, %i.ad
  %109 = zext nneg i32 %108 to i64
  %110 = shl nuw i64 1, %109
  %i.qp = or i64 %i.qo, %110
  %111 = or disjoint i32 %i.jp, %i.ad
  %112 = zext nneg i32 %111 to i64
  %113 = shl nuw i64 1, %112
  %i.qq = or i64 %i.qp, %113
  %114 = or disjoint i32 %i.ju, %i.ad
  %115 = zext nneg i32 %114 to i64
  %116 = shl nuw i64 1, %115
  %i.qr = or i64 %i.qq, %116
  %117 = or disjoint i32 %i.jz, %i.ad
  %118 = zext nneg i32 %117 to i64
  %119 = shl nuw i64 1, %118
  %i.qs = or i64 %i.qr, %119
  %120 = or disjoint i32 %i.ke, %i.ad
  %121 = zext nneg i32 %120 to i64
  %122 = shl nuw i64 1, %121
  %i.qt = or i64 %i.qs, %122
  %123 = or disjoint i32 %i.ki, %i.ad
  %124 = zext nneg i32 %123 to i64
  %125 = shl nuw i64 1, %124
  %i.qu = or i64 %i.qt, %125
  %i.qv = or i64 %i.qu, %i.ag
  %126 = xor i64 %i.qv, -1                        ; 8 uses
  %127 = and i32 %i.b, 7
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %128 ; 2 uses
  %.promoted51.i = load i64, ptr %129, align 8, !tbaa !1156
  %130 = and i64 %.promoted51.i, %126
  store i64 %130, ptr %129, align 8, !tbaa !1156
  %131 = add i32 %i.b, 1
  %132 = and i32 %131, 7
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %133 ; 2 uses
  %.promoted51.i.1 = load i64, ptr %134, align 8, !tbaa !1156
  %135 = and i64 %.promoted51.i.1, %126
  store i64 %135, ptr %134, align 8, !tbaa !1156
  %136 = add i32 %i.b, 2
  %137 = and i32 %136, 7
  %138 = zext nneg i32 %137 to i64
  %139 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %138 ; 2 uses
  %.promoted51.i.2 = load i64, ptr %139, align 8, !tbaa !1156
  %140 = and i64 %.promoted51.i.2, %126
  store i64 %140, ptr %139, align 8, !tbaa !1156
  %141 = add i32 %i.b, 3
  %142 = and i32 %141, 7
  %143 = zext nneg i32 %142 to i64
  %144 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %143 ; 2 uses
  %.promoted51.i.3 = load i64, ptr %144, align 8, !tbaa !1156
  %145 = and i64 %.promoted51.i.3, %126
  store i64 %145, ptr %144, align 8, !tbaa !1156
  %146 = and i32 %i.b, 7
  %147 = xor i32 %146, 4
  %i.qw = zext nneg i32 %147 to i64
  %148 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.qw ; 2 uses
  %.promoted51.i.4 = load i64, ptr %148, align 8, !tbaa !1156
  %149 = and i64 %.promoted51.i.4, %126
  store i64 %149, ptr %148, align 8, !tbaa !1156
  %150 = add i32 %i.b, 5
  %151 = and i32 %150, 7
  %152 = zext nneg i32 %151 to i64
  %153 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %152 ; 2 uses
  %.promoted51.i.5 = load i64, ptr %153, align 8, !tbaa !1156
  %154 = and i64 %.promoted51.i.5, %126
  store i64 %154, ptr %153, align 8, !tbaa !1156
  %155 = add i32 %i.b, 6
  %156 = and i32 %155, 7
  %157 = zext nneg i32 %156 to i64
  %158 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %157 ; 2 uses
  %.promoted51.i.6 = load i64, ptr %158, align 8, !tbaa !1156
  %159 = and i64 %.promoted51.i.6, %126
  store i64 %159, ptr %158, align 8, !tbaa !1156
  %160 = add i32 %i.b, 7
  %161 = and i32 %160, 7
  %i.qx = zext nneg i32 %161 to i64
  %162 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.qx ; 2 uses
  %.promoted51.i.7 = load i64, ptr %162, align 8, !tbaa !1156
  %163 = and i64 %.promoted51.i.7, %126
  store i64 %163, ptr %162, align 8, !tbaa !1156
  br label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.qy = icmp slt i32 %i.b, %i.s
  %i.qz = icmp slt i32 %i.e, %i.v
  %or.cond236 = select i1 %i.qy, i1 true, i1 %i.qz
  br i1 %or.cond236, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i22

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i22: ; preds = %bb.b
  %i.ra = icmp slt i32 %i.h, %i.y
  %i.rb = icmp slt i32 %i.k, %i.c
  %or.cond75 = select i1 %i.ra, i1 true, i1 %i.rb
  %i.rc = icmp slt i32 %i.n, %i.f
  %or.cond237 = select i1 %or.cond75, i1 true, i1 %i.rc
  %.not77 = icmp slt i32 %i.q, %i.i
  %or.cond238 = select i1 %or.cond237, i1 true, i1 %.not77
  br i1 %or.cond238, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, label %bb.n

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread: ; preds = %.lr.ph47.i.a, %.lr.ph47.us.i.a, %bb.b, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i22, %_ZNK7openvdb5v13_04math9CoordBBox10hasOverlapERKS2_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false), !tbaa !1156
  %i.rd = load i32, ptr %1, align 4, !tbaa !1131
  %i.re = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.rd) ; 2 uses
  %i.rf = load i32, ptr %i.u, align 4, !tbaa !1131
  %i.rg = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.rf) ; 2 uses
  %i.rh = load i32, ptr %i.x, align 4, !tbaa !1131
  %i.ri = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %i.rh) ; 5 uses
  %i.rj = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.c) ; 2 uses
  %i.rk = load i32, ptr %i.m, align 4, !tbaa !1131
  %i.rl = tail call i32 @llvm.smin.i32(i32 %i.rk, i32 %i.f) ; 2 uses
  %i.rm = load i32, ptr %i.p, align 4, !tbaa !1131
  %i.rn = tail call i32 @llvm.smin.i32(i32 %i.rm, i32 %i.i) ; 3 uses
  %.not96 = icmp sgt i32 %i.re, %i.rj
  br i1 %.not96, label %._crit_edge98.split.thread, label %.preheader84.lr.ph

.preheader84.lr.ph:                               ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread
  %.not1991 = icmp sgt i32 %i.rg, %i.rl
  %.not2188 = icmp sgt i32 %i.ri, %i.rn
  %brmerge = select i1 %.not1991, i1 true, i1 %.not2188
  br i1 %brmerge, label %._crit_edge98.split.thread, label %.preheader84.preheader

.preheader84.preheader:                           ; preds = %.preheader84.lr.ph
  %i.ro = add i32 %i.rn, 1
  %i.rp = sub i32 %i.ro, %i.ri                    ; 3 uses
  %min.iters.check = icmp ult i32 %i.rp, 4
  %n.vec = and i32 %i.rp, -4                      ; 3 uses
  %i.rq = add i32 %i.ri, %n.vec
  %broadcast.splatinsert245 = insertelement <2 x i32> poison, i32 %i.ri, i64 0
  %broadcast.splat246 = shufflevector <2 x i32> %broadcast.splatinsert245, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i32> %broadcast.splat246, <i32 0, i32 1>
  %cmp.n = icmp eq i32 %i.rp, %n.vec
  br label %.preheader84

.preheader84:                                     ; preds = %.preheader84.preheader, %._crit_edge93
  %storemerge97 = phi i32 [ %i.sr, %._crit_edge93 ], [ %i.re, %.preheader84.preheader ] ; 3 uses
  %i.rr = and i32 %storemerge97, 7
  %i.rs = zext nneg i32 %i.rr to i64
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.rs ; 2 uses
  %.promoted94 = load i64, ptr %i.rt, align 8, !tbaa !1156
  br label %.preheader

.preheader:                                       ; preds = %.preheader84, %._crit_edge
  %.lcssa9095 = phi i64 [ %.promoted94, %.preheader84 ], [ %.lcssa241, %._crit_edge ] ; 2 uses
  %storemerge1892 = phi i32 [ %i.rg, %.preheader84 ], [ %i.sq, %._crit_edge ] ; 3 uses
  %i.ru = shl i32 %storemerge1892, 3
  %i.rv = and i32 %i.ru, 56                       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.rw = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.lcssa9095, i64 0
  %broadcast.splatinsert.a = insertelement <2 x i32> poison, i32 %i.rv, i64 0
  %broadcast.splat.a = shufflevector <2 x i32> %broadcast.splatinsert.a, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body.a

vector.body.a:                                    ; preds = %vector.body.a, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.a ]
  %vec.phi = phi <2 x i64> [ %i.rw, %vector.ph ], [ %i.sf, %vector.body.a ]
  %vec.phi247 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.sg, %vector.body.a ]
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.a ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.rx = and <2 x i32> %vec.ind, splat (i32 7)
  %i.ry = and <2 x i32> %step.add, splat (i32 7)
  %i.rz = or disjoint <2 x i32> %i.rx, %broadcast.splat.a
  %i.sa = or disjoint <2 x i32> %i.ry, %broadcast.splat.a
  %i.sb = zext nneg <2 x i32> %i.rz to <2 x i64>
  %i.sc = zext nneg <2 x i32> %i.sa to <2 x i64>
  %i.sd = shl nuw <2 x i64> splat (i64 1), %i.sb
  %i.se = shl nuw <2 x i64> splat (i64 1), %i.sc
  %i.sf = or <2 x i64> %vec.phi, %i.sd            ; 2 uses
  %i.sg = or <2 x i64> %vec.phi247, %i.se         ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.sh = icmp eq i32 %index.next, %n.vec
  br i1 %i.sh, label %middle.block, label %vector.body.a, !llvm.loop !24186

middle.block:                                     ; preds = %vector.body.a
  %bin.rdx = or <2 x i64> %i.sg, %i.sf
  %i.si = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.ph = phi i64 [ %.lcssa9095, %.preheader ], [ %i.si, %middle.block ]
  %storemerge2089.ph = phi i32 [ %i.ri, %.preheader ], [ %i.rq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.sj = phi i64 [ %i.so, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %storemerge2089 = phi i32 [ %i.sp, %scalar.ph ], [ %storemerge2089.ph, %scalar.ph.preheader ] ; 3 uses
  %i.sk = and i32 %storemerge2089, 7
  %i.sl = or disjoint i32 %i.sk, %i.rv
  %i.sm = zext nneg i32 %i.sl to i64
  %i.sn = shl nuw i64 1, %i.sm
  %i.so = or i64 %i.sj, %i.sn                     ; 2 uses
  %i.sp = add i32 %storemerge2089, 1
  %exitcond.not = icmp eq i32 %storemerge2089, %i.rn
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !24187

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa241 = phi i64 [ %i.si, %middle.block ], [ %i.so, %scalar.ph ] ; 2 uses
  %i.sq = add i32 %storemerge1892, 1
  %exitcond108.not = icmp eq i32 %storemerge1892, %i.rl
  br i1 %exitcond108.not, label %._crit_edge93, label %.preheader, !llvm.loop !24188

._crit_edge93:                                    ; preds = %._crit_edge
  store i64 %.lcssa241, ptr %i.rt, align 8, !tbaa !1156
  %i.sr = add i32 %storemerge97, 1
  %exitcond109.not = icmp eq i32 %storemerge97, %i.rj
  br i1 %exitcond109.not, label %._crit_edge98.split, label %.preheader84, !llvm.loop !24189

._crit_edge98.split:                              ; preds = %._crit_edge93
  %.pre = load i64, ptr %3, align 8, !tbaa !1156  ; 2 uses
  %.not.i.i = icmp eq i64 %.pre, -1
  br i1 %.not.i.i, label %bb.c, label %._crit_edge98.split.thread

bb.c:                                             ; preds = %._crit_edge98.split
  %i.ss = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !1156 ; 2 uses
  %.not.1.i.i = icmp eq i64 %i.st, -1
  br i1 %.not.1.i.i, label %bb.d, label %._crit_edge98.split.thread

bb.d:                                             ; preds = %bb.c
  %i.su = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !1156 ; 2 uses
  %.not.2.i.i = icmp eq i64 %i.sv, -1
  br i1 %.not.2.i.i, label %bb.e, label %._crit_edge98.split.thread

bb.e:                                             ; preds = %bb.d
  %i.sw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !1156 ; 2 uses
  %.not.3.i.i = icmp eq i64 %i.sx, -1
  br i1 %.not.3.i.i, label %bb.f, label %._crit_edge98.split.thread

bb.f:                                             ; preds = %bb.e
  %i.sy = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !1156 ; 2 uses
  %.not.4.i.i = icmp eq i64 %i.sz, -1
  br i1 %.not.4.i.i, label %bb.g, label %._crit_edge98.split.thread

bb.g:                                             ; preds = %bb.f
  %i.ta = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !1156 ; 2 uses
  %.not.5.i.i = icmp eq i64 %i.tb, -1
  br i1 %.not.5.i.i, label %bb.h, label %._crit_edge98.split.thread

bb.h:                                             ; preds = %bb.g
  %i.tc = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !1156 ; 2 uses
  %.not.6.i.i = icmp eq i64 %i.td, -1
  br i1 %.not.6.i.i, label %bb.i, label %._crit_edge98.split.thread

bb.i:                                             ; preds = %bb.h
  %i.te = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !1156 ; 2 uses
  %.not.7.i.i = icmp eq i64 %i.tf, -1
  br i1 %.not.7.i.i, label %._crit_edge103, label %._crit_edge98.split.thread

._crit_edge98.split.thread:                       ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, %.preheader84.lr.ph, %._crit_edge98.split, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.tg = phi i64 [ %.pre, %._crit_edge98.split ], [ %i.st, %bb.c ], [ %i.sv, %bb.d ], [ %i.sx, %bb.e ], [ %i.sz, %bb.f ], [ %i.tb, %bb.g ], [ %i.td, %bb.h ], [ %i.tf, %bb.i ], [ 0, %.preheader84.lr.ph ], [ 0, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread ]
  %.0712.lcssa.i.i = phi i32 [ 0, %._crit_edge98.split ], [ 64, %bb.c ], [ 128, %bb.d ], [ 192, %bb.e ], [ 256, %bb.f ], [ 320, %bb.g ], [ 384, %bb.h ], [ 448, %bb.i ], [ 0, %.preheader84.lr.ph ], [ 0, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread ]
  %i.th = xor i64 %i.tg, -1
  %i.ti = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.th, i1 true)
  %i.tj = trunc nuw nsw i64 %i.ti to i32
  %i.tk = or disjoint i32 %.0712.lcssa.i.i, %i.tj
  br label %.lr.ph

._crit_edge103:                                   ; preds = %.lr.ph244.6, %_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE11setValueOffEjb.exit, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.n

.lr.ph:                                           ; preds = %._crit_edge98.split.thread, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit
  %.sroa.0.0101 = phi i32 [ %.118.i.i.i, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit ], [ %i.tk, %._crit_edge98.split.thread ] ; 4 uses
  %i.tl = and i32 %.sroa.0.0101, 63
  %i.tm = zext nneg i32 %i.tl to i64
  %i.tn = shl nuw i64 1, %i.tm                    ; 2 uses
  br i1 %2, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.to = lshr i32 %.sroa.0.0101, 6
  %i.tp = zext nneg i32 %i.to to i64
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.tp ; 2 uses
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !1156
  %i.ts = or i64 %i.tr, %i.tn
  store i64 %i.ts, ptr %i.tq, align 8, !tbaa !1156
  br label %_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE11setValueOffEjb.exit

bb.k:                                             ; preds = %.lr.ph
  %i.tt = xor i64 %i.tn, -1
  %i.tu = lshr i32 %.sroa.0.0101, 6
  %i.tv = zext nneg i32 %i.tu to i64
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.tv ; 2 uses
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !1156
  %i.ty = and i64 %i.tx, %i.tt
  store i64 %i.ty, ptr %i.tw, align 8, !tbaa !1156
  br label %_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE11setValueOffEjb.exit

_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE11setValueOffEjb.exit: ; preds = %bb.k, %bb.j
  %i.tz = add i32 %.sroa.0.0101, 1                ; 4 uses
  %i.ua = lshr i32 %i.tz, 6                       ; 3 uses
  %i.ub = icmp ugt i32 %i.tz, 511
end_hunk_0

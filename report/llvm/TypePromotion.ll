Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TypePromotion?download=true
inline.NumInlined: 2259
inline.NumDeleted: 1177
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm3MVT11getVectorVTES0_j:bb.a
bb.ej:                                            ; preds = %bb.ei
  %or.cond279 = and i1 %i.ai, %i.j
  br i1 %or.cond279, label %bb.eo, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %or.cond281 = and i1 %i.ai, %i.k
  br i1 %or.cond281, label %bb.eo, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %or.cond283 = and i1 %i.ai, %i.l
  br i1 %or.cond283, label %bb.eo, label %bb.em

bb.em:                                            ; preds = %bb.el
  %or.cond285 = and i1 %i.ai, %i.m
  br i1 %or.cond285, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %or.cond287 = and i1 %i.ai, %i.n
  %spec.select = select i1 %or.cond287, i16 162, i16 0
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i16 [ %spec.select, %bb.en ], [ 19, %bb.a ], [ 20, %bb.b ], [ 21, %bb.c ], [ 22, %bb.d ], [ 23, %bb.e ], [ 24, %bb.f ], [ 25, %bb.g ], [ 26, %bb.h ], [ 27, %bb.i ], [ 28, %bb.j ], [ 29, %bb.k ], [ 30, %bb.l ], [ 31, %bb.m ], [ 32, %bb.n ], [ 33, %bb.o ], [ 34, %bb.p ], [ 35, %bb.q ], [ 36, %bb.r ], [ 37, %bb.s ], [ 38, %bb.t ], [ 39, %bb.u ], [ 40, %bb.v ], [ 41, %bb.w ], [ 42, %bb.x ], [ 43, %bb.y ], [ 44, %bb.z ], [ 45, %bb.aa ], [ 46, %bb.ab ], [ 47, %bb.ac ], [ 48, %bb.ad ], [ 49, %bb.ae ], [ 50, %bb.af ], [ 51, %bb.ag ], [ 52, %bb.ah ], [ 53, %bb.ai ], [ 54, %bb.aj ], [ 55, %bb.ak ], [ 56, %bb.al ], [ 57, %bb.am ], [ 58, %bb.an ], [ 59, %bb.ao ], [ 60, %bb.ap ], [ 61, %bb.aq ], [ 62, %bb.ar ], [ 63, %bb.as ], [ 64, %bb.at ], [ 65, %bb.au ], [ 66, %bb.av ], [ 67, %bb.aw ], [ 68, %bb.ax ], [ 69, %bb.ay ], [ 70, %bb.az ], [ 71, %bb.ba ], [ 72, %bb.bb ], [ 73, %bb.bc ], [ 74, %bb.bd ], [ 75, %bb.be ], [ 76, %bb.bf ], [ 77, %bb.bg ], [ 78, %bb.bh ], [ 79, %bb.bi ], [ 80, %bb.bj ], [ 81, %bb.bk ], [ 82, %bb.bl ], [ 83, %bb.bm ], [ 84, %bb.bn ], [ 85, %bb.bo ], [ 86, %bb.bp ], [ 87, %bb.bq ], [ 88, %bb.br ], [ 89, %bb.bs ], [ 90, %bb.bt ], [ 91, %bb.bu ], [ 92, %bb.bv ], [ 93, %bb.bw ], [ 94, %bb.bx ], [ 95, %bb.by ], [ 96, %bb.bz ], [ 97, %bb.ca ], [ 98, %bb.cb ], [ 99, %bb.cc ], [ 100, %bb.cd ], [ 101, %bb.ce ], [ 102, %bb.cf ], [ 103, %bb.cg ], [ 104, %bb.ch ], [ 105, %bb.ci ], [ 106, %bb.cj ], [ 107, %bb.ck ], [ 108, %bb.cl ], [ 109, %bb.cm ], [ 110, %bb.cn ], [ 111, %bb.co ], [ 112, %bb.cp ], [ 113, %bb.cq ], [ 114, %bb.cr ], [ 115, %bb.cs ], [ 116, %bb.ct ], [ 117, %bb.cu ], [ 118, %bb.cv ], [ 119, %bb.cw ], [ 120, %bb.cx ], [ 121, %bb.cy ], [ 122, %bb.cz ], [ 123, %bb.da ], [ 124, %bb.db ], [ 125, %bb.dc ], [ 126, %bb.dd ], [ 127, %bb.de ], [ 128, %bb.df ], [ 129, %bb.dg ], [ 130, %bb.dh ], [ 131, %bb.di ], [ 132, %bb.dj ], [ 133, %bb.dk ], [ 134, %bb.dl ], [ 135, %bb.dm ], [ 136, %bb.dn ], [ 137, %bb.do ], [ 138, %bb.dp ], [ 139, %bb.dq ], [ 140, %bb.dr ], [ 141, %bb.ds ], [ 142, %bb.dt ], [ 143, %bb.du ], [ 144, %bb.dv ], [ 145, %bb.dw ], [ 146, %bb.dx ], [ 147, %bb.dy ], [ 148, %bb.dz ], [ 149, %bb.ea ], [ 150, %bb.eb ], [ 151, %bb.ec ], [ 152, %bb.ed ], [ 153, %bb.ee ], [ 154, %bb.ef ], [ 155, %bb.eg ], [ 156, %bb.eh ], [ 157, %bb.ei ], [ 158, %bb.ej ], [ 159, %bb.ek ], [ 160, %bb.el ], [ 161, %bb.em ]
  ret i16 %.sroa.0.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117TypePromotionImpl16isSupportedValueEPN4llvm5ValueE(i32 %.0.val, i32 %.24.val, ptr noundef %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !67      ; 9 uses
  %i.b = icmp ult i8 %i.a, 30
  br i1 %i.b, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %bb.c [
    i8 65, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread
    i8 64, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread
    i8 33, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread
    i8 34, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread
    i8 87, label %bb.f
    i8 89, label %bb.f
    i8 31, label %bb.f
    i8 63, label %bb.f
    i8 69, label %bb.f
    i8 81, label %bb.i
    i8 70, label %bb.l
    i8 85, label %bb.q
    i8 88, label %bb.r
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = add i8 %i.a, -44
  %i.d = icmp ult i8 %i.c, 18
  br i1 %i.d, label %bb.d, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val22 = load ptr, ptr %i.e, align 8, !tbaa !74 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %trunc.i = trunc i32 %i.g to i8
  switch i8 %trunc.i, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread [
    i8 7, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit.thread19
    i8 15, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit.thread19
    i8 12, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = lshr i32 %i.g, 8                         ; 2 uses
  %i.i = icmp eq i32 %i.h, 1
  %i.j = icmp ugt i32 %i.h, %.24.val
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond.i, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit

_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit: ; preds = %bb.e
  %i.k = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val22) #23
  %.not30 = icmp ugt i32 %i.k, %.0.val
  br i1 %.not30, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit.thread19

_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit.thread19: ; preds = %bb.d, %bb.d, %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit
  %i.l = icmp ult i8 %i.a, 59
  br i1 %i.l, label %switch.lookup, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread

bb.f:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = getelementptr i8, ptr %0, i64 8
  %.val19 = load ptr, ptr %i.m, align 8, !tbaa !74 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val19, i64 8
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %trunc.i26 = trunc i32 %i.o to i8
  switch i8 %trunc.i26, label %.fold.split.i55 [
    i8 7, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread
    i8 15, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread
    i8 12, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = lshr i32 %i.o, 8                         ; 2 uses
  %i.q = icmp eq i32 %i.p, 1
  %i.r = icmp ugt i32 %i.p, %.24.val
  %or.cond.i27 = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond.i27, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val19) #23
  %i.t = icmp ule i32 %i.s, %.0.val
  br label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread

bb.i:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = and i32 %i.v, 1073741824
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds i8, ptr %0, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68
  br label %_ZNK4llvm4User10getOperandEj.exit

bb.k:                                             ; preds = %bb.i
  %i.z = and i32 %i.v, 268435455
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ab
  br label %_ZNK4llvm4User10getOperandEj.exit

_ZNK4llvm4User10getOperandEj.exit:                ; preds = %bb.j, %bb.k
  %i.ad = phi ptr [ %i.y, %bb.j ], [ %i.ac, %bb.k ]
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !74
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !74
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread

bb.l:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = and i32 %i.al, 1073741824
  %.not.i.i31 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i31, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds i8, ptr %0, i64 -8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !68
  br label %_ZNK4llvm4User10getOperandEj.exit32

bb.n:                                             ; preds = %bb.l
  %i.ap = and i32 %i.al, 268435455
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ar
  br label %_ZNK4llvm4User10getOperandEj.exit32

_ZNK4llvm4User10getOperandEj.exit32:              ; preds = %bb.m, %bb.n
  %i.at = phi ptr [ %i.ao, %bb.m ], [ %i.as, %bb.n ]
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !73
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %.val16 = load ptr, ptr %i.av, align 8, !tbaa !74 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val16, i64 8
  %i.ax = load i32, ptr %i.aw, align 8            ; 2 uses
  %trunc.i33 = trunc i32 %i.ax to i8
  switch i8 %trunc.i33, label %.fold.split.i55 [
    i8 7, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread
    i8 15, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread
    i8 12, label %bb.o
  ]

bb.o:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit32
  %i.ay = lshr i32 %i.ax, 8                       ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1
  %i.ba = icmp ugt i32 %i.ay, %.24.val
  %or.cond.i34 = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond.i34, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val16) #23
  %i.bc = icmp ule i32 %i.bb, %.0.val
  br label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread

bb.q:                                             ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = and i32 %i.be, 1073741824
  %.not.i.i38 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i38, label %_ZNK4llvm4User10getOperandEj.exit39, label %_ZNK4llvm4User10getOperandEj.exit39.thread

_ZNK4llvm4User10getOperandEj.exit39:              ; preds = %bb.q
  %i.bg = and i32 %i.be, 268435455
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !73
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !74 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = and i32 %i.bo, 255
  %i.bq = icmp eq i32 %i.bp, 15
  br i1 %i.bq, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread, label %_ZNK4llvm4User10getOperandEj.exit41

_ZNK4llvm4User10getOperandEj.exit39.thread:       ; preds = %bb.q
  %i.br = getelementptr inbounds i8, ptr %0, i64 -8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !68
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !73
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = and i32 %i.bx, 255
  %i.bz = icmp eq i32 %i.by, 15
  br i1 %i.bz, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread, label %_ZNK4llvm4User10getOperandEj.exit41

_ZNK4llvm4User10getOperandEj.exit41:              ; preds = %_ZNK4llvm4User10getOperandEj.exit39, %_ZNK4llvm4User10getOperandEj.exit39.thread
  %.val25.a = phi ptr [ %i.bv, %_ZNK4llvm4User10getOperandEj.exit39.thread ], [ %i.bm, %_ZNK4llvm4User10getOperandEj.exit39 ]
  %i.ca = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val25.a) #23
  %i.cb = icmp eq i32 %i.ca, %.0.val
  br label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread

bb.r:                                             ; preds = %bb.b
  %i.cc = getelementptr i8, ptr %0, i64 8
  %.val13 = load ptr, ptr %i.cc, align 8, !tbaa !74 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val13, i64 8
  %i.ce = load i32, ptr %i.cd, align 8            ; 2 uses
  %trunc.i42 = trunc i32 %i.ce to i8
  switch i8 %trunc.i42, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread [
    i8 7, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit46.thread23
    i8 15, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit46.thread23
    i8 12, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.cf = lshr i32 %i.ce, 8                       ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 1
  %i.ch = icmp ugt i32 %i.cf, %.24.val
  %or.cond.i43 = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond.i43, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit46

_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit46: ; preds = %bb.s
  %i.ci = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val13) #23
  %.not29 = icmp ugt i32 %i.ci, %.0.val
  br i1 %.not29, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit46.thread23

_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit46.thread23: ; preds = %bb.r, %bb.r, %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit46
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ck = tail call noundef zeroext i1 @_ZNK4llvm13AttributeList19hasAttributeAtIndexEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, i32 noundef 0, i32 noundef 84) #20
  br i1 %i.ck, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread, label %bb.t

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit46.thread23
  %i.cl = getelementptr inbounds i8, ptr %0, i64 -32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !73 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !67
  %i.co = icmp eq i8 %i.cn, 14
  br i1 %i.co, label %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread

_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i: ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !107
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !122
  %i.ct = icmp eq ptr %i.cq, %i.cs
  br i1 %i.ct, label %bb.v, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread

bb.v:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 128
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !123
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %1, align 8
  %i.cv = call noundef zeroext i1 @_ZNK4llvm13AttributeList19hasAttributeAtIndexEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i32 noundef 84) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread

bb.w:                                             ; preds = %bb.a
  %i.cw = icmp samesign ult i8 %i.a, 23
  br i1 %i.cw, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.cx = icmp eq i8 %i.a, 19
  br i1 %i.cx, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr i8, ptr %0, i64 8
  %.val10 = load ptr, ptr %i.cy, align 8, !tbaa !74 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.da = load i32, ptr %i.cz, align 8            ; 2 uses
  %trunc.i47 = trunc i32 %i.da to i8
  switch i8 %trunc.i47, label %.fold.split.i55 [
    i8 7, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread
    i8 15, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread
    i8 12, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.db = lshr i32 %i.da, 8                       ; 2 uses
  %i.dc = icmp eq i32 %i.db, 1
  %i.dd = icmp ugt i32 %i.db, %.24.val
  %or.cond.i48 = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond.i48, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.de = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val10) #23
  %i.df = icmp ule i32 %i.de, %.0.val
  br label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread

bb.ab:                                            ; preds = %bb.w
  %i.dg = icmp eq i8 %i.a, 23
  br i1 %i.dg, label %bb.ac, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30

bb.ac:                                            ; preds = %bb.ab
  %i.dh = getelementptr i8, ptr %0, i64 8
  %.val7 = load ptr, ptr %i.dh, align 8, !tbaa !74 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.dj = load i32, ptr %i.di, align 8            ; 2 uses
  %trunc.i52 = trunc i32 %i.dj to i8
  switch i8 %trunc.i52, label %.fold.split.i55 [
    i8 7, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread
    i8 15, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread
    i8 12, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dk = lshr i32 %i.dj, 8                       ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 1
  %i.dm = icmp ugt i32 %i.dk, %.24.val
  %or.cond.i53 = select i1 %i.dl, i1 true, i1 %i.dm
  br i1 %or.cond.i53, label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dn = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val7) #23
  %i.do = icmp ule i32 %i.dn, %.0.val
  br label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread

.fold.split.i55:                                  ; preds = %bb.f, %_ZNK4llvm4User10getOperandEj.exit32, %bb.y, %bb.ac
  br label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread

_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30: ; preds = %bb.x, %bb.ab
  %i.dp = icmp eq i8 %i.a, 24
  br label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread

switch.lookup:                                    ; preds = %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit.thread19
  %switch.cast = zext nneg i8 %i.a to i59
  %switch.downshift = lshr i59 267964177828544511, %switch.cast
  %switch.masked = trunc i59 %switch.downshift to i1
  br label %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread

_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30.thread: ; preds = %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit.thread19, %switch.lookup, %bb.r, %bb.s, %bb.d, %bb.e, %.fold.split.i55, %bb.ae, %bb.ad, %bb.ac, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.y, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i, %bb.u, %bb.t, %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit46.thread23, %_ZNK4llvm4User10getOperandEj.exit39.thread, %bb.p, %bb.o, %_ZNK4llvm4User10getOperandEj.exit32, %_ZNK4llvm4User10getOperandEj.exit32, %bb.h, %bb.g, %bb.f, %bb.f, %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit, %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit46, %_ZNK4llvm4User10getOperandEj.exit39, %_ZNK4llvm4User10getOperandEj.exit41, %bb.b, %bb.b, %bb.b, %bb.b, %_ZNK4llvm4User10getOperandEj.exit, %bb.c, %bb.v, %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30
  %.1 = phi i1 [ %i.dp, %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit30 ], [ false, %bb.ad ], [ false, %.fold.split.i55 ], [ true, %bb.ac ], [ true, %bb.ac ], [ %i.do, %bb.ae ], [ false, %bb.z ], [ false, %bb.e ], [ true, %bb.y ], [ true, %bb.y ], [ %i.df, %bb.aa ], [ false, %bb.t ], [ false, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i ], [ %i.cv, %bb.v ], [ true, %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit46.thread23 ], [ true, %_ZNK4llvm4User10getOperandEj.exit39.thread ], [ false, %bb.o ], [ %switch.masked, %switch.lookup ], [ true, %_ZNK4llvm4User10getOperandEj.exit32 ], [ true, %_ZNK4llvm4User10getOperandEj.exit32 ], [ %i.bc, %bb.p ], [ false, %bb.s ], [ true, %bb.f ], [ true, %bb.f ], [ %i.t, %bb.h ], [ false, %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit46 ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ false, %bb.c ], [ false, %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit ], [ false, %bb.d ], [ true, %_ZNK4llvm4User10getOperandEj.exit39 ], [ %i.cb, %_ZNK4llvm4User10getOperandEj.exit41 ], [ true, %bb.b ], [ false, %bb.g ], [ %i.aj, %_ZNK4llvm4User10getOperandEj.exit ], [ false, %bb.u ], [ false, %bb.r ], [ true, %_ZN12_GLOBAL__N_117TypePromotionImpl15isSupportedTypeEPN4llvm5ValueE.exit.thread19 ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117TypePromotionImpl13shouldPromoteEPN4llvm5ValueE(i32 %.0.val, ptr noundef %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 255
  %i.f = icmp eq i32 %i.e, 12
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117TypePromotionImpl6isSinkEPN4llvm5ValueE(i32 %.0.val, ptr noundef nonnull %0)
  br i1 %i.g, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %0, align 8, !tbaa !67      ; 2 uses
  switch i8 %i.h, label %_ZN12_GLOBAL__N_117TypePromotionImpl8isSourceEPN4llvm5ValueE.exit.thread [
    i8 23, label %.critedge
    i8 63, label %.critedge
    i8 88, label %bb.d
    i8 69, label %.split
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm13AttributeList19hasAttributeAtIndexEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef 0, i32 noundef 84) #20
  br i1 %i.j, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds i8, ptr %0, i64 -32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73   ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_117TypePromotionImpl8isSourceEPN4llvm5ValueE.exit.threadthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i8, ptr %i.l, align 8, !tbaa !67
  %i.n = icmp eq i8 %i.m, 14
  br i1 %i.n, label %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i.i, label %_ZN12_GLOBAL__N_117TypePromotionImpl8isSourceEPN4llvm5ValueE.exit.threadthread-pre-split

_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i.i: ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !107
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !122
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_ZN12_GLOBAL__N_117TypePromotionImpl8isSourceEPN4llvm5ValueE.exit, label %_ZN12_GLOBAL__N_117TypePromotionImpl8isSourceEPN4llvm5ValueE.exit.threadthread-pre-split

.split:                                           ; preds = %bb.c
  %i.t = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b) #23
  %i.u = icmp eq i32 %i.t, %.0.val
  br i1 %i.u, label %.critedge, label %_ZN12_GLOBAL__N_117TypePromotionImpl8isSourceEPN4llvm5ValueE.exit.thread.thread

_ZN12_GLOBAL__N_117TypePromotionImpl8isSourceEPN4llvm5ValueE.exit: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !123
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %1, align 8
  %i.w = call noundef zeroext i1 @_ZNK4llvm13AttributeList19hasAttributeAtIndexEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i32 noundef 84) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %i.w, label %.critedge, label %_ZN12_GLOBAL__N_117TypePromotionImpl8isSourceEPN4llvm5ValueE.exit.threadthread-pre-split
end_hunk_0

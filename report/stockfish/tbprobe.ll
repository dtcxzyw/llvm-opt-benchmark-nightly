inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 67
begin_hunk_0_@fstat
; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull ptr @_ZN9Stockfish12_GLOBAL__N_19set_sizesEPNS0_9PairsDataEPh(ptr noundef nonnull initializes((0, 1)) %0, ptr noundef nonnull %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %"class.std::vector.112", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !156     ; 2 uses
  store i8 %i.b, ptr %0, align 8, !tbaa !299
  %.not = icmp sgt i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.c, align 8, !tbaa !311
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !313
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.e, align 8, !tbaa !309
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.f, align 8, !tbaa !486
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = load i8, ptr %i.a, align 1, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.h, ptr %i.i, align 2, !tbaa !487
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 228
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 216 ; 2 uses
  %i.m = load i32, ptr %i.k, align 8, !tbaa !89
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZSt4findIPiiET_S1_S1_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !89
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZSt4findIPiiET_S1_S1_RKT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !89
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZSt4findIPiiET_S1_S1_RKT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !89
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZSt4findIPiiET_S1_S1_RKT0_.exit, label %._crit_edge.loopexit.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %i.x = load i32, ptr %scevgep.i.i.i, align 8, !tbaa !89
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZSt4findIPiiET_S1_S1_RKT0_.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.loopexit.i.i.i
  %i.z = getelementptr i8, ptr %0, i64 220        ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !89
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZSt4findIPiiET_S1_S1_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %0, i64 224       ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !89
  %i.ae = icmp eq i32 %i.ad, 0
  %spec.select = select i1 %i.ae, ptr %i.ac, ptr %i.l
  br label %_ZSt4findIPiiET_S1_S1_RKT0_.exit

_ZSt4findIPiiET_S1_S1_RKT0_.exit:                 ; preds = %bb.c, %bb.f, %bb.e, %bb.d, %bb.h, %._crit_edge.loopexit.i.i.i, %bb.g
  %.028.i.i.i = phi ptr [ %i.z, %bb.g ], [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %spec.select, %bb.h ], [ %i.r, %bb.e ], [ %i.o, %bb.d ], [ %i.u, %bb.f ], [ %i.k, %bb.c ]
  %i.af = ptrtoint ptr %.028.i.i.i to i64
  %i.ag = ptrtoint ptr %i.k to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.am = load i8, ptr %i.a, align 1, !tbaa !156
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !314
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !156
  %i.as = zext nneg i8 %i.ar to i64               ; 2 uses
  %i.at = shl nuw i64 1, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.at, ptr %i.au, align 8, !tbaa !486
  %i.av = add i64 %i.ak, -1
  %i.aw = add i64 %i.av, %i.at
  %i.ax = lshr i64 %i.aw, %i.as
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !309
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val = load i8, ptr %i.aq, align 1, !tbaa !156
  %.val81 = load i32, ptr %i.az, align 1          ; 5 uses
  %.sroa.6.0.extract.shift.i = lshr i32 %.val81, 8 ; 2 uses
  %.sroa.8.0.extract.shift.i = lshr i32 %.val81, 16 ; 2 uses
  %.sroa.10.0.extract.shift.i = lshr i32 %.val81, 24 ; 2 uses
  %i.ba = load i8, ptr @_ZN9StockfishL14IsLittleEndianE, align 1, !tbaa !488, !range !206, !noundef !207
  %.not3.not.i = icmp eq i8 %i.ba, 0
  br i1 %.not3.not.i, label %bb.i, label %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit

bb.i:                                             ; preds = %_ZSt4findIPiiET_S1_S1_RKT0_.exit
  %i.bb = and i32 %.val81, 255
  br label %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit

_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit: ; preds = %_ZSt4findIPiiET_S1_S1_RKT0_.exit, %bb.i
  %.sroa.10.0.i = phi i32 [ %i.bb, %bb.i ], [ %.sroa.10.0.extract.shift.i, %_ZSt4findIPiiET_S1_S1_RKT0_.exit ]
  %.sroa.8.0.i = phi i32 [ %.sroa.6.0.extract.shift.i, %bb.i ], [ %.sroa.8.0.extract.shift.i, %_ZSt4findIPiiET_S1_S1_RKT0_.exit ]
  %.sroa.6.0.in.i = phi i32 [ %.sroa.8.0.extract.shift.i, %bb.i ], [ %.sroa.6.0.extract.shift.i, %_ZSt4findIPiiET_S1_S1_RKT0_.exit ]
  %.sroa.0.0.in.i = phi i32 [ %.sroa.10.0.extract.shift.i, %bb.i ], [ %.val81, %_ZSt4findIPiiET_S1_S1_RKT0_.exit ]
  %.sroa.10.0.insert.shift.i = shl nuw i32 %.sroa.10.0.i, 24
  %.sroa.8.0.insert.ext.i = shl i32 %.sroa.8.0.i, 16
  %.sroa.8.0.insert.shift.i = and i32 %.sroa.8.0.insert.ext.i, 16711680
  %.sroa.8.0.insert.insert.i = or disjoint i32 %.sroa.8.0.insert.shift.i, %.sroa.10.0.insert.shift.i
  %.sroa.6.0.insert.ext.i = shl nuw i32 %.sroa.6.0.in.i, 8
  %.sroa.6.0.insert.shift.i = and i32 %.sroa.6.0.insert.ext.i, 65280
  %.sroa.6.0.insert.insert.i = or disjoint i32 %.sroa.8.0.insert.insert.i, %.sroa.6.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = and i32 %.sroa.0.0.in.i, 255
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.6.0.insert.insert.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.bc, align 4, !tbaa !313
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = zext i8 %.val to i32
  %i.bf = add i32 %.sroa.0.0.insert.insert.i, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !311
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bi = load i8, ptr %i.bd, align 1, !tbaa !156 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !489
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !156 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  store i8 %i.bl, ptr %i.bm, align 2, !tbaa !487
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !490
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bp = zext i8 %i.bi to i64
  %i.bq = zext i8 %i.bl to i64
  %i.br = sub nsw i64 %i.bp, %i.bq
  %i.bs = add nsw i64 %i.br, 1                    ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !491 ; 4 uses
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !281 ; 5 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64               ; 4 uses
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 3                 ; 3 uses
  %i.ca = icmp ugt i64 %i.bs, %i.bz
  br i1 %i.ca, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit
  %i.cb = sub nuw nsw i64 %i.bs, %i.bz
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef %i.cb)
  %.pre = load ptr, ptr %i.bt, align 8, !tbaa !491
  %.pre135 = load ptr, ptr %i.bo, align 8, !tbaa !281 ; 2 uses
  %.pre140 = ptrtoint ptr %.pre135 to i64
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.k:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit
  %i.cc = icmp ult i64 %i.bs, %i.bz
  br i1 %i.cc, label %bb.l, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bs ; 3 uses
  %.not.i.i = icmp eq ptr %i.bu, %i.cd
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.cd, ptr %i.bt, align 8, !tbaa !491
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.pre-phi = phi i64 [ %.pre140, %bb.j ], [ %i.bx, %bb.k ], [ %i.bx, %bb.l ], [ %i.bx, %bb.m ]
  %i.ce = phi ptr [ %.pre135, %bb.j ], [ %i.bv, %bb.k ], [ %i.bv, %bb.l ], [ %i.bv, %bb.m ] ; 9 uses
  %i.cf = phi ptr [ %.pre, %bb.j ], [ %i.bu, %bb.k ], [ %i.bu, %bb.l ], [ %i.cd, %bb.m ]
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %.pre-phi                ; 3 uses
  %i.ci = lshr exact i64 %i.ch, 3                 ; 6 uses
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 1
  br i1 %i.ck, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.cl = add nuw nsw i64 %i.ci, 4294967294
  %i.cm = load ptr, ptr %i.bn, align 8, !tbaa !490 ; 5 uses
  %i.cn = load i8, ptr @_ZN9StockfishL14IsLittleEndianE, align 1, !tbaa !488, !range !206, !noundef !207
  %.not3.not.i86 = icmp eq i8 %i.cn, 0
  %i.co = and i64 %i.cl, 4294967295               ; 4 uses
  %i.cp = shl nuw nsw i64 %i.co, 3
  %i.cq = getelementptr i8, ptr %i.ce, i64 %i.cp
  %scevgep = getelementptr i8, ptr %i.cq, i64 8
  %load_initial = load i64, ptr %scevgep, align 8 ; 2 uses
  %3 = insertelement <2 x i1> poison, i1 %.not3.not.i86, i64 0
  %4 = shufflevector <2 x i1> %3, <2 x i1> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.cr = add nuw nsw i64 %i.ci, 3
  %xtraiter = and i64 %i.cr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %store_forwarded.prol = phi i64 [ %i.cv, %.prol.preheader ], [ %load_initial, %.lr.ph ]
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.co, %.lr.ph ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv.prol
  %5 = load <2 x i16>, ptr %i.cs, align 1         ; 2 uses
  %6 = lshr <2 x i16> %5, splat (i16 8)           ; 2 uses
  %7 = and <2 x i16> %5, splat (i16 255)          ; 2 uses
  %8 = select <2 x i1> %4, <2 x i16> %7, <2 x i16> %6
  %9 = shl nuw <2 x i16> %8, splat (i16 8)
  %10 = select <2 x i1> %4, <2 x i16> %6, <2 x i16> %7
  %11 = or disjoint <2 x i16> %9, %10             ; 2 uses
  %12 = extractelement <2 x i16> %11, i64 0
  %13 = zext i16 %12 to i64
  %14 = add i64 %store_forwarded.prol, %13
  %15 = extractelement <2 x i16> %11, i64 1
  %i.ct = zext i16 %15 to i64
  %i.cu = sub i64 %14, %i.ct
  %i.cv = lshr i64 %i.cu, 1                       ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.prol
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !17
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !492

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %store_forwarded.unr = phi i64 [ %load_initial, %.lr.ph ], [ %i.cv, %.prol.preheader ]
  %indvars.iv.unr = phi i64 [ %i.co, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.cx = icmp samesign ult i64 %i.co, 3
  br i1 %i.cx, label %iter.check, label %.lr.ph.new

.preheader:                                       ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.cy = icmp eq i32 %i.cj, 1
  br i1 %i.cy, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %.preheader
  %i.cz = load i8, ptr %i.bm, align 2, !tbaa !487
  %i.da = zext i8 %i.cz to i64                    ; 3 uses
  %wide.trip.count = and i64 %i.ci, 2147483647    ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check166 = icmp samesign ult i64 %wide.trip.count, 32
  br i1 %min.iters.check166, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.ci, 2147483616              ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.da, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add nuw <8 x i64> splat (i64 8), %broadcast.splat
  %invariant.op186 = add nuw <8 x i64> splat (i64 16), %broadcast.splat
  %invariant.op188 = add nuw <8 x i64> splat (i64 24), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.db = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %.reass185 = add nuw <8 x i64> %vec.ind, %invariant.op
  %.reass187 = add nuw <8 x i64> %vec.ind, %invariant.op186
  %.reass189 = add nuw <8 x i64> %vec.ind, %invariant.op188
  %i.dc = sub nsw <8 x i64> splat (i64 64), %i.db
  %i.dd = sub nsw <8 x i64> splat (i64 64), %.reass185
  %i.de = sub nsw <8 x i64> splat (i64 64), %.reass187
  %i.df = sub nsw <8 x i64> splat (i64 64), %.reass189
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 64 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 128 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 192 ; 2 uses
  %wide.load = load <8 x i64>, ptr %i.dg, align 8, !tbaa !17
  %wide.load167 = load <8 x i64>, ptr %i.dh, align 8, !tbaa !17
  %wide.load168 = load <8 x i64>, ptr %i.di, align 8, !tbaa !17
  %wide.load169 = load <8 x i64>, ptr %i.dj, align 8, !tbaa !17
  %i.dk = and <8 x i64> %i.dc, splat (i64 4294967295)
  %i.dl = and <8 x i64> %i.dd, splat (i64 4294967295)
  %i.dm = and <8 x i64> %i.de, splat (i64 4294967295)
  %i.dn = and <8 x i64> %i.df, splat (i64 4294967295)
  %i.do = shl <8 x i64> %wide.load, %i.dk
  %i.dp = shl <8 x i64> %wide.load167, %i.dl
  %i.dq = shl <8 x i64> %wide.load168, %i.dm
  %i.dr = shl <8 x i64> %wide.load169, %i.dn
  store <8 x i64> %i.do, ptr %i.dg, align 8, !tbaa !17
  store <8 x i64> %i.dp, ptr %i.dh, align 8, !tbaa !17
  store <8 x i64> %i.dq, ptr %i.di, align 8, !tbaa !17
  store <8 x i64> %i.dr, ptr %i.dj, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !493

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.dt = and i64 %i.ch, 224
  %min.epilog.iters.check = icmp eq i64 %i.dt, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !494

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec171 = and i64 %i.ci, 2147483644           ; 3 uses
  %broadcast.splatinsert172 = insertelement <4 x i64> poison, i64 %i.da, i64 0
  %broadcast.splat173 = shufflevector <4 x i64> %broadcast.splatinsert172, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert174 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat175 = shufflevector <4 x i64> %broadcast.splatinsert174, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat175, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index176 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next179, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind177 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next180, %vec.epilog.vector.body ] ; 2 uses
  %i.du = add nuw nsw <4 x i64> %vec.ind177, %broadcast.splat173
  %i.dv = sub nsw <4 x i64> splat (i64 64), %i.du
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index176 ; 2 uses
  %wide.load178 = load <4 x i64>, ptr %i.dw, align 8, !tbaa !17
  %i.dx = and <4 x i64> %i.dv, splat (i64 4294967295)
  %i.dy = shl <4 x i64> %wide.load178, %i.dx
  store <4 x i64> %i.dy, ptr %i.dw, align 8, !tbaa !17
  %index.next179 = add nuw i64 %index176, 4       ; 2 uses
  %vec.ind.next180 = add nuw nsw <4 x i64> %vec.ind177, splat (i64 4)
  %i.dz = icmp eq i64 %index.next179, %n.vec171
  br i1 %i.dz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !495

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n181 = icmp eq i64 %wide.trip.count, %n.vec171
  br i1 %cmp.n181, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv132.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec171, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %store_forwarded = phi i64 [ %i.es, %.lr.ph.new ], [ %store_forwarded.unr, %.prol.loopexit ]
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv
  %16 = load <2 x i16>, ptr %i.ea, align 1        ; 2 uses
  %17 = lshr <2 x i16> %16, splat (i16 8)         ; 2 uses
  %18 = and <2 x i16> %16, splat (i16 255)        ; 2 uses
  %19 = select <2 x i1> %4, <2 x i16> %18, <2 x i16> %17
  %20 = shl nuw <2 x i16> %19, splat (i16 8)
  %21 = select <2 x i1> %4, <2 x i16> %17, <2 x i16> %18
  %22 = or disjoint <2 x i16> %20, %21            ; 2 uses
  %23 = extractelement <2 x i16> %22, i64 0
  %24 = zext i16 %23 to i64
  %25 = add i64 %store_forwarded, %24
  %26 = extractelement <2 x i16> %22, i64 1
  %i.eb = zext i16 %26 to i64
  %i.ec = sub i64 %25, %i.eb
  %i.ed = lshr i64 %i.ec, 1                       ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !17
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv.next
  %27 = load <2 x i16>, ptr %i.ef, align 1        ; 2 uses
  %28 = lshr <2 x i16> %27, splat (i16 8)         ; 2 uses
  %29 = and <2 x i16> %27, splat (i16 255)        ; 2 uses
  %30 = select <2 x i1> %4, <2 x i16> %29, <2 x i16> %28
  %31 = shl nuw <2 x i16> %30, splat (i16 8)
  %32 = select <2 x i1> %4, <2 x i16> %28, <2 x i16> %29
  %33 = or disjoint <2 x i16> %31, %32            ; 2 uses
  %34 = extractelement <2 x i16> %33, i64 0
  %35 = zext i16 %34 to i64
  %36 = add nuw i64 %i.ed, %35
  %37 = extractelement <2 x i16> %33, i64 1
  %i.eg = zext i16 %37 to i64
  %i.eh = sub i64 %36, %i.eg
  %i.ei = lshr i64 %i.eh, 1                       ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !17
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv.next.1
  %38 = load <2 x i16>, ptr %i.ek, align 1        ; 2 uses
  %39 = lshr <2 x i16> %38, splat (i16 8)         ; 2 uses
  %40 = and <2 x i16> %38, splat (i16 255)        ; 2 uses
  %41 = select <2 x i1> %4, <2 x i16> %40, <2 x i16> %39
  %42 = shl nuw <2 x i16> %41, splat (i16 8)
  %43 = select <2 x i1> %4, <2 x i16> %39, <2 x i16> %40
  %44 = or disjoint <2 x i16> %42, %43            ; 2 uses
  %45 = extractelement <2 x i16> %44, i64 0
  %46 = zext i16 %45 to i64
  %47 = add nuw i64 %i.ei, %46
  %48 = extractelement <2 x i16> %44, i64 1
  %i.el = zext i16 %48 to i64
  %i.em = sub i64 %47, %i.el
  %i.en = lshr i64 %i.em, 1                       ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.1
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !17
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 3 uses
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv.next.2
  %49 = load <2 x i16>, ptr %i.ep, align 1        ; 2 uses
  %50 = lshr <2 x i16> %49, splat (i16 8)         ; 2 uses
  %51 = and <2 x i16> %49, splat (i16 255)        ; 2 uses
  %52 = select <2 x i1> %4, <2 x i16> %51, <2 x i16> %50
  %53 = shl nuw <2 x i16> %52, splat (i16 8)
  %54 = select <2 x i1> %4, <2 x i16> %50, <2 x i16> %51
  %55 = or disjoint <2 x i16> %53, %54            ; 2 uses
  %56 = extractelement <2 x i16> %55, i64 0
  %57 = zext i16 %56 to i64
  %58 = add nuw i64 %i.en, %57
  %59 = extractelement <2 x i16> %55, i64 1
  %i.eq = zext i16 %59 to i64
  %i.er = sub i64 %58, %i.eq
  %i.es = lshr i64 %i.er, 1                       ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.2
  store i64 %i.es, ptr %i.et, align 8, !tbaa !17
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not164.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not164.3, label %iter.check, label %.lr.ph.new, !llvm.loop !496

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %sext = shl i64 %i.ch, 29
  %i.eu = ashr exact i64 %sext, 31
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %.val82 = load i16, ptr %i.ev, align 1          ; 2 uses
  %.sroa.6.0.extract.shift.i97 = lshr i16 %.val82, 8 ; 2 uses
  %i.ex = load i8, ptr @_ZN9StockfishL14IsLittleEndianE, align 1, !tbaa !488, !range !206, !noundef !207
  %.not3.not.i98 = icmp eq i8 %i.ex, 0            ; 2 uses
  %i.ey = and i16 %.val82, 255                    ; 2 uses
  %.sroa.6.0.insert.ext.i99 = select i1 %.not3.not.i98, i16 %i.ey, i16 %.sroa.6.0.extract.shift.i97
  %.sroa.6.0.insert.shift.i100 = shl nuw i16 %.sroa.6.0.insert.ext.i99, 8
  %.sroa.0.0.insert.ext.i101 = select i1 %.not3.not.i98, i16 %.sroa.6.0.extract.shift.i97, i16 %i.ey
  %.sroa.0.0.insert.insert.i102 = or disjoint i16 %.sroa.6.0.insert.shift.i100, %.sroa.0.0.insert.ext.i101
  %i.ez = zext i16 %.sroa.0.0.insert.insert.i102 to i64
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, i64 noundef %i.ez)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 2 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !497
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !498 ; 3 uses
  %i.fe = load ptr, ptr %i.ew, align 8, !tbaa !285 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fd, %i.fe
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %._crit_edge
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fj = ptrtoint ptr %i.fe to i64
  %i.fk = ptrtoint ptr %i.fd to i64
  %i.fl = sub i64 %i.fk, %i.fj                    ; 4 uses
  %i.fm = add i64 %i.fl, 63                       ; 2 uses
  %i.fn = lshr i64 %i.fm, 3
  %i.fo = and i64 %i.fn, 2305843009213693944
  %i.fp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #29 ; 5 uses
  %i.fq = lshr i64 %i.fm, 6                       ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fq
  store ptr %i.fr, ptr %i.ff, align 8, !tbaa !499
  store ptr %i.fp, ptr %2, align 8
  store i32 0, ptr %i.fi, align 8
  %i.fs = sdiv i64 %i.fl, 64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.fs
  %i.fu = and i64 %i.fl, -9223372036854775745
  %i.fv = icmp ugt i64 %i.fu, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.fv, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ft, i64 %storemerge.idx.i.i.i.i.i.i
  %i.fw = trunc i64 %i.fl to i32
  %i.fx = and i32 %i.fw, 63
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.fh, align 8
  store i32 %i.fx, ptr %i.fg, align 8
  %.idx.i.i = shl nuw nsw i64 %i.fq, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fp, i8 0, i64 %.idx.i.i, i1 false)
  br label %.lr.ph123

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %vec.epilog.scalar.ph ], [ %indvars.iv132.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.fy = add nuw nsw i64 %indvars.iv132, %i.da
  %.reass = sub nsw i64 64, %i.fy
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv132 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !17
  %i.gb = and i64 %.reass, 4294967295
  %i.gc = shl i64 %i.ga, %i.gb
  store i64 %i.gc, ptr %i.fz, align 8, !tbaa !17
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !503

._crit_edge124:                                   ; preds = %bb.p
  %i.gd = mul nuw nsw i64 %i.hj, 3
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.gd
  %i.gf = and i64 %i.hj, 1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gf ; 2 uses
  %.not.i.i103 = icmp eq ptr %i.he, null
  br i1 %.not.i.i103, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge124
  %i.gh = load ptr, ptr %i.ff, align 8, !tbaa !499 ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.he to i64
  %i.gk = sub i64 %i.gi, %i.gj                    ; 2 uses
  %i.gl = ashr exact i64 %i.gk, 3
  %i.gm = sub nsw i64 0, %i.gl
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gm
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gk) #30
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %._crit_edge, %._crit_edge124, %bb.n
  %i.go = phi ptr [ %i.gg, %bb.n ], [ %i.gg, %._crit_edge124 ], [ %i.fa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.q

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %bb.p
  %i.gp = phi ptr [ %i.hc, %bb.p ], [ %i.fe, %.lr.ph123.preheader ]
  %i.gq = phi ptr [ %i.hd, %bb.p ], [ %i.fd, %.lr.ph123.preheader ]
  %i.gr = phi ptr [ %i.he, %bb.p ], [ %i.fp, %.lr.ph123.preheader ] ; 2 uses
  %i.gs = phi i64 [ %i.hg, %bb.p ], [ 0, %.lr.ph123.preheader ] ; 2 uses
  %.0122 = phi i16 [ %i.hf, %bb.p ], [ 0, %.lr.ph123.preheader ] ; 3 uses
  %i.gt = lshr i16 %.0122, 6
  %.zext = zext nneg i16 %i.gt to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %.zext
  %i.gv = and i64 %i.gs, 63
  %i.gw = shl nuw i64 1, %i.gv
  %i.gx = load i64, ptr %i.gu, align 8, !tbaa !17
  %i.gy = and i64 %i.gx, %i.gw
  %.not108 = icmp eq i64 %i.gy, 0
  br i1 %.not108, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph123
  %i.gz = call fastcc noundef zeroext i8 @_ZN9Stockfish12_GLOBAL__N_110set_symlenEPNS0_9PairsDataEtRSt6vectorIbSaIbEE(ptr noundef %0, i16 noundef zeroext %.0122, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.ha = load ptr, ptr %i.ew, align 8, !tbaa !285
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gs
  store i8 %i.gz, ptr %i.hb, align 1, !tbaa !156
  %.pre136 = load ptr, ptr %2, align 8, !tbaa !504
  %.pre138 = load ptr, ptr %i.fc, align 8, !tbaa !498
  %.pre139 = load ptr, ptr %i.ew, align 8, !tbaa !285
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph123, %bb.o
  %i.hc = phi ptr [ %i.gp, %.lr.ph123 ], [ %.pre139, %bb.o ] ; 2 uses
  %i.hd = phi ptr [ %i.gq, %.lr.ph123 ], [ %.pre138, %bb.o ] ; 2 uses
  %i.he = phi ptr [ %i.gr, %.lr.ph123 ], [ %.pre136, %bb.o ] ; 3 uses
  %i.hf = add i16 %.0122, 1                       ; 2 uses
  %i.hg = zext i16 %i.hf to i64                   ; 2 uses
  %i.hh = ptrtoint ptr %i.hd to i64
  %i.hi = ptrtoint ptr %i.hc to i64
  %i.hj = sub i64 %i.hh, %i.hi                    ; 3 uses
  %i.hk = icmp ugt i64 %i.hj, %i.hg
  br i1 %i.hk, label %.lr.ph123, label %._crit_edge124, !llvm.loop !505

bb.q:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.b
  %.078 = phi ptr [ %i.g, %bb.b ], [ %i.go, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ]
  ret ptr %.078
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !498  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !285    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !287
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23.i = icmp ult i64 %i.l, %i.h
  br i1 %.not23.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !156
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !498
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #31
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #29 ; 5 uses
end_hunk_0

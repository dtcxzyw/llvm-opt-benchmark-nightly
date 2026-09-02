Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/CabBlockInStream?download=true
inline.NumInlined: 20
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN8NArchive4NCab17CCabBlockInStream7PreReadERjS2_:bb.a
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.pre64.i = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.dh, %.loopexit.i ] ; 2 uses
  %.041.i = phi i32 [ %i.cq, %.lr.ph.i ], [ %i.di, %.loopexit.i ] ; 4 uses
  %.02740.i = phi ptr [ %i.cu, %.lr.ph.i ], [ %i.db, %.loopexit.i ] ; 7 uses
  %.02939.i = phi i32 [ %i.cr, %.lr.ph.i ], [ %.231.i, %.loopexit.i ] ; 5 uses
  %.not33.i = icmp eq i32 %.pre64.i, 0
  br i1 %.not33.i, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %.02740.i, i64 1
  %i.dc = load i8, ptr %.02740.i, align 1, !tbaa !25
  %i.dd = sext i32 %.pre64.i to i64
  %i.de = getelementptr inbounds i8, ptr %i.cv, i64 %i.dd
  store i8 %i.dc, ptr %i.de, align 1, !tbaa !25
  %i.df = load i32, ptr %i.bm, align 4, !tbaa !24
  %i.dg = add nsw i32 %i.df, 1
  %i.dh = and i32 %i.dg, 3                        ; 3 uses
  store i32 %i.dh, ptr %i.bm, align 4, !tbaa !24
  %i.di = add i32 %.041.i, -1                     ; 2 uses
  %i.dj = icmp eq i32 %i.dh, 0
  br i1 %i.dj, label %.preheader.preheader.i, label %.loopexit.i

.preheader.preheader.i:                           ; preds = %bb.o
  %i.dk = load i8, ptr %i.cy, align 1, !tbaa !25
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 8
  %i.dn = or disjoint i32 %i.dm, %i.cx
  %i.do = load i8, ptr %i.cz, align 2, !tbaa !25
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 16
  %i.dr = or disjoint i32 %i.dn, %i.dq
  %i.ds = load i8, ptr %i.da, align 1, !tbaa !25
  %i.dt = zext i8 %i.ds to i32
  %i.du = shl nuw i32 %i.dt, 24
  %i.dv = or disjoint i32 %i.dr, %i.du
  %i.dw = xor i32 %i.dv, %.02939.i
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.preheader.i, %bb.o
  %.231.i = phi i32 [ %.02939.i, %bb.o ], [ %i.dw, %.preheader.preheader.i ] ; 2 uses
  %.not.i = icmp eq i32 %i.di, 0
  br i1 %.not.i, label %._crit_edge.thread.i, label %bb.n, !llvm.loop !0

._crit_edge.thread.i:                             ; preds = %.loopexit.i, %bb.m
  %.029.lcssa.ph.i = phi i32 [ %i.cr, %bb.m ], [ %.231.i, %.loopexit.i ]
  store i32 %.029.lcssa.ph.i, ptr %4, align 4, !tbaa !23
  br label %.loopexit

.critedge.i:                                      ; preds = %bb.n
  %i.dx = lshr i32 %.041.i, 2                     ; 5 uses
  %.not3448.i = icmp eq i32 %i.dx, 0
  br i1 %.not3448.i, label %._crit_edge.i, label %.lr.ph52.i.preheader

.lr.ph52.i.preheader:                             ; preds = %.critedge.i
  %i.dy = zext nneg i32 %i.dx to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %.041.i, 32
  br i1 %min.iters.check, label %.lr.ph52.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph52.i.preheader
  %n.vec = and i64 %i.dy, 1073741816              ; 4 uses
  %i.dz = trunc nuw nsw i64 %n.vec to i32
  %i.ea = sub nsw i32 %i.dx, %i.dz
  %i.eb = shl nuw nsw i64 %n.vec, 2
  %i.ec = getelementptr i8, ptr %.02740.i, i64 %i.eb
  %i.ed = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.02939.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ed, %vector.ph ], [ %i.eg, %vector.body ]
  %vec.phi99 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.eh, %vector.body ]
  %i.ee = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.02740.i, i64 %i.ee ; 2 uses
  %i.ef = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 1
  %wide.load100 = load <4 x i32>, ptr %i.ef, align 1
  %i.eg = xor <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.eh = xor <4 x i32> %wide.load100, %vec.phi99 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.eh, %i.eg
  %i.ej = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dy
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph52.i.preheader121

.lr.ph52.i.preheader121:                          ; preds = %.lr.ph52.i.preheader, %middle.block
  %.02551.i.ph = phi i32 [ %i.dx, %.lr.ph52.i.preheader ], [ %i.ea, %middle.block ]
  %.12850.i.ph = phi ptr [ %.02740.i, %.lr.ph52.i.preheader ], [ %i.ec, %middle.block ]
  %.349.i.ph = phi i32 [ %.02939.i, %.lr.ph52.i.preheader ], [ %i.ej, %middle.block ]
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader121, %.lr.ph52.i
  %.02551.i = phi i32 [ %i.ek, %.lr.ph52.i ], [ %.02551.i.ph, %.lr.ph52.i.preheader121 ]
  %.12850.i = phi ptr [ %i.em, %.lr.ph52.i ], [ %.12850.i.ph, %.lr.ph52.i.preheader121 ] ; 2 uses
  %.349.i = phi i32 [ %i.en, %.lr.ph52.i ], [ %.349.i.ph, %.lr.ph52.i.preheader121 ]
  %i.ek = add nsw i32 %.02551.i, -1               ; 2 uses
  %i.el = load i32, ptr %.12850.i, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %.12850.i, i64 4
  %i.en = xor i32 %i.el, %.349.i                  ; 2 uses
  %.not34.i = icmp eq i32 %i.ek, 0
  br i1 %.not34.i, label %._crit_edge.loopexit.i, label %.lr.ph52.i, !llvm.loop !36

._crit_edge.loopexit.i:                           ; preds = %.lr.ph52.i, %middle.block
  %.lcssa95 = phi i32 [ %i.ej, %middle.block ], [ %i.en, %.lr.ph52.i ]
  %i.eo = add nsw i32 %i.dx, -1
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = shl nuw nsw i64 %i.ep, 2
  %i.er = getelementptr i8, ptr %.02740.i, i64 %i.eq
  %scevgep.i = getelementptr i8, ptr %i.er, i64 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.critedge.i
  %.3.lcssa.i = phi i32 [ %.02939.i, %.critedge.i ], [ %.lcssa95, %._crit_edge.loopexit.i ]
  %.128.lcssa.i = phi ptr [ %.02740.i, %.critedge.i ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 3 uses
  store i32 %.3.lcssa.i, ptr %4, align 4, !tbaa !23
  %i.es = and i32 %.041.i, 3                      ; 3 uses
  %.not3555.i = icmp eq i32 %i.es, 0
  br i1 %.not3555.i, label %.loopexit, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %._crit_edge.i
  %.promoted = load i32, ptr %i.bm, align 4, !tbaa !24 ; 2 uses
  %i.et = load i8, ptr %.128.lcssa.i, align 1, !tbaa !25
  store i8 %i.et, ptr %i.cv, align 4, !tbaa !25
  %i.eu = add nsw i32 %.promoted, 1
  %i.ev = and i32 %i.eu, 3                        ; 2 uses
  store i32 %i.ev, ptr %i.bm, align 4, !tbaa !24
  %.not35.i = icmp eq i32 %i.es, 1
  br i1 %.not35.i, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.lr.ph59.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.128.lcssa.i, i64 1
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !25
  %i.ey = zext nneg i32 %i.ev to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ey
  store i8 %i.ex, ptr %i.ez, align 1, !tbaa !25
  %i.fa = and i32 %.promoted, 3
  %i.fb = xor i32 %i.fa, 2                        ; 3 uses
  store i32 %i.fb, ptr %i.bm, align 4, !tbaa !24
  %.not35.i.1 = icmp eq i32 %i.es, 2
  br i1 %.not35.i.1, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fc = getelementptr inbounds nuw i8, ptr %.128.lcssa.i, i64 2
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !25
  %i.fe = zext nneg i32 %i.fb to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.fe
  store i8 %i.fd, ptr %i.ff, align 1, !tbaa !25
  %i.fg = add nuw nsw i32 %i.fb, 1
  %i.fh = and i32 %i.fg, 3
  store i32 %i.fh, ptr %i.bm, align 4, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph59.i, %bb.p, %bb.q, %._crit_edge.i, %._crit_edge.thread.i
  %i.fi = add i32 %i.co, %i.cq                    ; 2 uses
  store i32 %i.fi, ptr %i.cd, align 4, !tbaa !30
  %.not58 = icmp eq i64 %i.cp, %i.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br i1 %.not58, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.loopexit, %bb.k
  %i.fj = phi i32 [ %i.fi, %.loopexit ], [ %i.ce, %bb.k ]
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.fj, ptr %i.fk, align 8, !tbaa !47
  %i.fl = load i32, ptr %i.bm, align 4, !tbaa !24 ; 5 uses
  %i.fm = icmp sgt i32 %i.fl, 0
  br i1 %i.fm, label %.lr.ph.i62, label %_ZN8NArchive4NCab10CCheckSum216FinishDataUpdateEv.exit

.lr.ph.i62:                                       ; preds = %bb.r
  %.promoted.i63 = load i32, ptr %4, align 4      ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.fl to i64 ; 3 uses
  %min.iters.check103 = icmp ult i32 %i.fl, 8
  br i1 %min.iters.check103, label %scalar.ph102.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %.lr.ph.i62
  %n.vec105 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %i.fo = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted.i63, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.fl, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next112, %vector.body106 ] ; 2 uses
  %vec.phi108 = phi <4 x i32> [ %i.fo, %vector.ph104 ], [ %i.ga, %vector.body106 ]
  %vec.phi109 = phi <4 x i32> [ zeroinitializer, %vector.ph104 ], [ %i.gb, %vector.body106 ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph104 ], [ %vec.ind.next, %vector.body106 ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %index107 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %wide.load110 = load <4 x i8>, ptr %i.fp, align 4, !tbaa !25
  %wide.load111 = load <4 x i8>, ptr %i.fq, align 4, !tbaa !25
  %i.fr = zext <4 x i8> %wide.load110 to <4 x i32>
  %i.fs = zext <4 x i8> %wide.load111 to <4 x i32>
  %i.ft = xor <4 x i32> %vec.ind, splat (i32 -1)
  %i.fu = add nsw <4 x i32> %broadcast.splat, %i.ft
  %reass.sub = sub <4 x i32> %broadcast.splat, %vec.ind
  %i.fv = shl nsw <4 x i32> %i.fu, splat (i32 3)
  %i.fw = shl <4 x i32> %reass.sub, splat (i32 3)
  %i.fx = add <4 x i32> %i.fw, splat (i32 -40)
  %i.fy = shl <4 x i32> %i.fr, %i.fv
  %i.fz = shl <4 x i32> %i.fs, %i.fx
  %i.ga = xor <4 x i32> %i.fy, %vec.phi108        ; 2 uses
  %i.gb = xor <4 x i32> %i.fz, %vec.phi109        ; 2 uses
  %index.next112 = add nuw i64 %index107, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.gc = icmp eq i64 %index.next112, %n.vec105
  br i1 %i.gc, label %middle.block113, label %vector.body106, !llvm.loop !37

middle.block113:                                  ; preds = %vector.body106
  %bin.rdx114 = xor <4 x i32> %i.gb, %i.ga
  %i.gd = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx114) ; 2 uses
  %cmp.n115 = icmp eq i64 %n.vec105, %wide.trip.count.i
  br i1 %cmp.n115, label %._crit_edge.i64, label %scalar.ph102.preheader

scalar.ph102.preheader:                           ; preds = %.lr.ph.i62, %middle.block113
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i62 ], [ %n.vec105, %middle.block113 ]
  %.ph = phi i32 [ %.promoted.i63, %.lr.ph.i62 ], [ %i.gd, %middle.block113 ]
  br label %scalar.ph102

._crit_edge.i64:                                  ; preds = %scalar.ph102, %middle.block113
  %.lcssa = phi i32 [ %i.gd, %middle.block113 ], [ %i.gn, %scalar.ph102 ]
  store i32 %.lcssa, ptr %4, align 4, !tbaa !23
  br label %_ZN8NArchive4NCab10CCheckSum216FinishDataUpdateEv.exit

scalar.ph102:                                     ; preds = %scalar.ph102.preheader, %scalar.ph102
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph102 ], [ %indvars.iv.i.ph, %scalar.ph102.preheader ] ; 3 uses
  %i.ge = phi i32 [ %i.gn, %scalar.ph102 ], [ %.ph, %scalar.ph102.preheader ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fn, i64 %indvars.iv.i
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !25
  %i.gh = zext i8 %i.gg to i32
  %i.gi = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.gj = xor i32 %i.gi, -1
  %i.gk = add nsw i32 %i.fl, %i.gj
  %i.gl = shl nsw i32 %i.gk, 3
  %i.gm = shl i32 %i.gh, %i.gl
  %i.gn = xor i32 %i.gm, %i.ge                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i64, label %scalar.ph102, !llvm.loop !38

_ZN8NArchive4NCab10CCheckSum216FinishDataUpdateEv.exit: ; preds = %bb.r, %._crit_edge.i64
  %i.go = icmp eq i32 %i.af, 0
  br i1 %i.go, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN8NArchive4NCab10CCheckSum216FinishDataUpdateEv.exit
  %i.gp = load i32, ptr %1, align 4, !tbaa !8
  %i.gq = load i32, ptr %2, align 4, !tbaa !8
  %i.gr = shl i32 %i.gq, 16
  %i.gs = or i32 %i.gr, %i.gp
  %i.gt = load i32, ptr %4, align 4, !tbaa !23
  %i.gu = xor i32 %i.gs, %i.gt
  %i.gv = icmp ne i32 %i.gu, %i.af
  br label %bb.t

bb.t:                                             ; preds = %_ZN8NArchive4NCab10CCheckSum216FinishDataUpdateEv.exit, %bb.s
  %.0 = phi i1 [ %i.gv, %bb.s ], [ false, %_ZN8NArchive4NCab10CCheckSum216FinishDataUpdateEv.exit ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !48, !range !43, !noundef !44
  %i.gy = zext i1 %.0 to i8
  %i.gz = or i8 %i.gx, %i.gy
  store i8 %i.gz, ptr %i.gw, align 8, !tbaa !48
  %i.ha = zext i1 %.0 to i32
  br label %bb.u

bb.u:                                             ; preds = %.thread68, %.thread, %bb.t, %.loopexit, %bb.j, %bb.f
  %.9 = phi i32 [ %.446.ph, %.thread ], [ 1, %bb.f ], [ 1, %bb.j ], [ %i.ha, %bb.t ], [ 1, %.loopexit ], [ %i.cn, %.thread68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.c, %bb.a
  %.11 = phi i32 [ %i.f, %bb.a ], [ %.9, %bb.u ], [ %i.bk, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %.11
}

declare noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i32 @_Z10ReadStreamP19ISequentialInStreamPvPm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN8NArchive4NCab17CCabBlockInStream4ReadEPvjPj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(50) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #8 align 2 {
bb.a:
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !30   ; 2 uses
  %.not14 = icmp eq i32 %i.c, 0
  br i1 %.not14, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call noundef i32 @llvm.umin.i32(i32 %i.c, i32 %2) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = zext i32 %i.d to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.j, i64 %i.k, i1 false)
  %i.l = load i32, ptr %i.g, align 8, !tbaa !29
  %i.m = add i32 %i.l, %i.d
  store i32 %i.m, ptr %i.g, align 8, !tbaa !29
  %i.n = load i32, ptr %i.b, align 4, !tbaa !30
  %i.o = sub i32 %i.n, %i.d
  store i32 %i.o, ptr %i.b, align 4, !tbaa !30
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.d, ptr %3, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN8NArchive4NCab17CCabBlockInStream14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 4, !tbaa !25
  %i.b = load i8, ptr @IID_IUnknown, align 4, !tbaa !25
  %.not.i = icmp eq i8 %i.a, %i.b
  br i1 %.not.i, label %bb.b, label %_ZeqRK4GUIDS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !25
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 1), align 1, !tbaa !25
  %.not.1.i = icmp eq i8 %i.d, %i.e
  br i1 %.not.1.i, label %bb.c, label %_ZeqRK4GUIDS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !25
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 2), align 2, !tbaa !25
  %.not.2.i = icmp eq i8 %i.g, %i.h
  br i1 %.not.2.i, label %bb.d, label %_ZeqRK4GUIDS1_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !25
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 3), align 1, !tbaa !25
  %.not.3.i = icmp eq i8 %i.j, %i.k
  br i1 %.not.3.i, label %bb.e, label %_ZeqRK4GUIDS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !25
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 4), align 4, !tbaa !25
  %.not.4.i = icmp eq i8 %i.m, %i.n
  br i1 %.not.4.i, label %bb.f, label %_ZeqRK4GUIDS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !25
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 5), align 1, !tbaa !25
  %.not.5.i = icmp eq i8 %i.p, %i.q
  br i1 %.not.5.i, label %bb.g, label %_ZeqRK4GUIDS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.s = load i8, ptr %i.r, align 2, !tbaa !25
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 6), align 2, !tbaa !25
  %.not.6.i = icmp eq i8 %i.s, %i.t
  br i1 %.not.6.i, label %bb.h, label %_ZeqRK4GUIDS1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !25
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 7), align 1, !tbaa !25
  %.not.7.i = icmp eq i8 %i.v, %i.w
  br i1 %.not.7.i, label %bb.i, label %_ZeqRK4GUIDS1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 4, !tbaa !25
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 8), align 4, !tbaa !25
  %.not.8.i = icmp eq i8 %i.y, %i.z
  br i1 %.not.8.i, label %bb.j, label %_ZeqRK4GUIDS1_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !25
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 9), align 1, !tbaa !25
  %.not.9.i = icmp eq i8 %i.ab, %i.ac
  br i1 %.not.9.i, label %bb.k, label %_ZeqRK4GUIDS1_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !25
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 10), align 2, !tbaa !25
  %.not.10.i = icmp eq i8 %i.ae, %i.af
  br i1 %.not.10.i, label %bb.l, label %_ZeqRK4GUIDS1_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !25
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 11), align 1, !tbaa !25
  %.not.11.i = icmp eq i8 %i.ah, %i.ai
  br i1 %.not.11.i, label %bb.m, label %_ZeqRK4GUIDS1_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !25
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 12), align 4, !tbaa !25
  %.not.12.i = icmp eq i8 %i.ak, %i.al
  br i1 %.not.12.i, label %bb.n, label %_ZeqRK4GUIDS1_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !25
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 13), align 1, !tbaa !25
  %.not.13.i = icmp eq i8 %i.an, %i.ao
  br i1 %.not.13.i, label %bb.o, label %_ZeqRK4GUIDS1_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !25
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 14), align 2, !tbaa !25
  %.not.14.i = icmp eq i8 %i.aq, %i.ar
  br i1 %.not.14.i, label %_ZeqRK4GUIDS1_.exit, label %_ZeqRK4GUIDS1_.exit.thread

end_hunk_0

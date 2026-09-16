Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/hardwaretopology?download=true
inline.NumInlined: 1751
inline.NumDeleted: 847
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3gmx16HardwareTopologyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8ArrayRefIKiEESB_:bb.a

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN3gmx16HardwareTopology7MachineD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.e) #21
  resume { ptr, i32 } %i.y

_ZN3gmx16HardwareTopologyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8ArrayRefIKiEE.exit: ; preds = %bb.c, %bb.d
  %.not28 = icmp eq ptr %i.l, %i.k
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3gmx16HardwareTopologyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8ArrayRefIKiEE.exit
  %i.z = ptrtoint ptr %5 to i64                   ; 2 uses
  %i.aa = ptrtoint ptr %4 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = ashr i64 %i.ab, 4                       ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  %i.ae = and i64 %i.ab, -16
  %scevgep.i.i.i = getelementptr i8, ptr %4, i64 %i.ae ; 6 uses
  br i1 %i.ad, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.z, %.pre59.i.i.i
  %i.af = ashr exact i64 %.pre60.i.i.i, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %scevgep.i.i.i, i64 4
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us, %.lr.ph.split.us
  %.sroa.012.029.us = phi ptr [ %i.l, %.lr.ph.split.us ], [ %i.bk, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.029.us, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !113 ; 7 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i.i.i.us
  %.052.i.i.i.us = phi i64 [ %i.ac, %.lr.ph.i.i.i.us ], [ %i.av, %bb.j ] ; 2 uses
  %.sroa.034.051.i.i.i.us = phi ptr [ %4, %.lr.ph.i.i.i.us ], [ %i.au, %bb.j ] ; 9 uses
  %i.aj = load i32, ptr %.sroa.034.051.i.i.i.us, align 4, !tbaa !113
  %i.ak = icmp eq i32 %i.aj, %i.ai
  br i1 %i.ak, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.us, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !113
  %i.an = icmp eq i32 %i.am, %i.ai
  br i1 %i.an, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us.loopexit.split.loop.exit83, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.us, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !113
  %i.aq = icmp eq i32 %i.ap, %i.ai
  br i1 %i.aq, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us.loopexit.split.loop.exit81, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.us, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !113
  %i.at = icmp eq i32 %i.as, %i.ai
  br i1 %i.at, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us.loopexit.split.loop.exit79, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.us, i64 16
  %i.av = add nsw i64 %.052.i.i.i.us, -1
  %i.aw = icmp sgt i64 %.052.i.i.i.us, 1
  br i1 %i.aw, label %bb.f, label %._crit_edge.loopexit.i.i.i.us, !llvm.loop !2

._crit_edge.loopexit.i.i.i.us:                    ; preds = %bb.j
  switch i64 %i.af, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us [
    i64 3, label %bb.k
    i64 2, label %._crit_edge._crit_edge.i.i.i.us
    i64 1, label %._crit_edge._crit_edge57.i.i.i.us
  ]

bb.k:                                             ; preds = %._crit_edge.loopexit.i.i.i.us
  %i.ax = load i32, ptr %scevgep.i.i.i, align 4, !tbaa !113
  %i.ay = icmp eq i32 %i.ax, %i.ai
  br i1 %i.ay, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us, label %._crit_edge._crit_edge.i.i.i.us

._crit_edge._crit_edge.i.i.i.us:                  ; preds = %._crit_edge.loopexit.i.i.i.us, %bb.k
  %.sroa.034.1.i.i.i.us = phi ptr [ %i.ag, %bb.k ], [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i.us ] ; 3 uses
  %i.az = load i32, ptr %.sroa.034.1.i.i.i.us, align 4, !tbaa !113
  %i.ba = icmp eq i32 %i.az, %i.ai
  br i1 %i.ba, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us, label %bb.l

bb.l:                                             ; preds = %._crit_edge._crit_edge.i.i.i.us
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.034.1.i.i.i.us, i64 4
  br label %._crit_edge._crit_edge57.i.i.i.us

._crit_edge._crit_edge57.i.i.i.us:                ; preds = %._crit_edge.loopexit.i.i.i.us, %bb.l
  %.sroa.034.2.i.i.i.us = phi ptr [ %i.bb, %bb.l ], [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i.us ] ; 2 uses
  %i.bc = load i32, ptr %.sroa.034.2.i.i.i.us, align 4, !tbaa !113
  %i.bd = icmp eq i32 %i.bc, %i.ai
  %spec.select.i.i.i.us = select i1 %i.bd, ptr %.sroa.034.2.i.i.i.us, ptr %5
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us.loopexit.split.loop.exit79: ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.us, i64 12
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us.loopexit.split.loop.exit81: ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.us, i64 8
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us.loopexit.split.loop.exit83: ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.us, i64 4
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us: ; preds = %bb.f, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us.loopexit.split.loop.exit79, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us.loopexit.split.loop.exit81, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us.loopexit.split.loop.exit83, %._crit_edge._crit_edge57.i.i.i.us, %._crit_edge._crit_edge.i.i.i.us, %bb.k, %._crit_edge.loopexit.i.i.i.us
  %.sroa.010.0.in.sroa.speculated.i.i.i.us = phi ptr [ %.sroa.034.1.i.i.i.us, %._crit_edge._crit_edge.i.i.i.us ], [ %spec.select.i.i.i.us, %._crit_edge._crit_edge57.i.i.i.us ], [ %5, %._crit_edge.loopexit.i.i.i.us ], [ %scevgep.i.i.i, %bb.k ], [ %i.bf, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us.loopexit.split.loop.exit81 ], [ %i.be, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us.loopexit.split.loop.exit79 ], [ %i.bg, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us.loopexit.split.loop.exit83 ], [ %.sroa.034.051.i.i.i.us, %bb.f ]
  %i.bh = icmp ne ptr %.sroa.010.0.in.sroa.speculated.i.i.i.us, %5
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.012.029.us, i64 24
  %i.bj = zext i1 %i.bh to i8
  store i8 %i.bj, ptr %i.bi, align 4, !tbaa !175
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.012.029.us, i64 28 ; 2 uses
  %.not.us = icmp eq ptr %i.bk, %i.k
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.i.i.i.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bl = ashr exact i64 %i.ab, 2
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  switch i64 %i.bl, label %._crit_edge.i.i.i [
    i64 3, label %.lr.ph.split.split.us
    i64 2, label %.lr.ph.split.split.us38
    i64 1, label %.lr.ph.split.split.us49
  ]

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.bn = load i32, ptr %4, align 4, !tbaa !113
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %._crit_edge.i.i.i.us30

._crit_edge.i.i.i.us30:                           ; preds = %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us35, %.lr.ph.split.split.us
  %.sroa.012.029.us31 = phi ptr [ %i.l, %.lr.ph.split.split.us ], [ %i.bz, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us35 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.012.029.us31, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !113 ; 3 uses
  %i.br = icmp eq i32 %i.bn, %i.bq
  br i1 %i.br, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us35, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i.i.us30
  %i.bs = load i32, ptr %i.bm, align 4, !tbaa !113
  %i.bt = icmp eq i32 %i.bs, %i.bq
  br i1 %i.bt, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us35, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load i32, ptr %i.bo, align 4, !tbaa !113
  %i.bv = icmp eq i32 %i.bu, %i.bq
  %spec.select.i.i.i.us34 = select i1 %i.bv, ptr %i.bo, ptr %5
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us35

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us35: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.us30
  %.sroa.010.0.in.sroa.speculated.i.i.i.us36 = phi ptr [ %i.bm, %bb.m ], [ %spec.select.i.i.i.us34, %bb.n ], [ %4, %._crit_edge.i.i.i.us30 ]
  %i.bw = icmp ne ptr %.sroa.010.0.in.sroa.speculated.i.i.i.us36, %5
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.029.us31, i64 24
  %i.by = zext i1 %i.bw to i8
  store i8 %i.by, ptr %i.bx, align 4, !tbaa !175
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.012.029.us31, i64 28 ; 2 uses
  %.not.us37 = icmp eq ptr %i.bz, %i.k
  br i1 %.not.us37, label %._crit_edge, label %._crit_edge.i.i.i.us30

.lr.ph.split.split.us38:                          ; preds = %.lr.ph.split
  %i.ca = load i32, ptr %4, align 4, !tbaa !113
  br label %._crit_edge.i.i.i.us39

._crit_edge.i.i.i.us39:                           ; preds = %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us46, %.lr.ph.split.split.us38
  %.sroa.012.029.us40 = phi ptr [ %i.l, %.lr.ph.split.split.us38 ], [ %i.ci, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us46 ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.012.029.us40, i64 4
  %.pre.i.i.i.us42 = load i32, ptr %i.cb, align 4, !tbaa !113 ; 2 uses
  %i.cc = icmp eq i32 %i.ca, %.pre.i.i.i.us42
  br i1 %i.cc, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us46, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i.us39
  %i.cd = load i32, ptr %i.bm, align 4, !tbaa !113
  %i.ce = icmp eq i32 %i.cd, %.pre.i.i.i.us42
  %spec.select.i.i.i.us45 = select i1 %i.ce, ptr %i.bm, ptr %5
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us46

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us46: ; preds = %bb.o, %._crit_edge.i.i.i.us39
  %.sroa.010.0.in.sroa.speculated.i.i.i.us47 = phi ptr [ %4, %._crit_edge.i.i.i.us39 ], [ %spec.select.i.i.i.us45, %bb.o ]
  %i.cf = icmp ne ptr %.sroa.010.0.in.sroa.speculated.i.i.i.us47, %5
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.012.029.us40, i64 24
  %i.ch = zext i1 %i.cf to i8
  store i8 %i.ch, ptr %i.cg, align 4, !tbaa !175
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.012.029.us40, i64 28 ; 2 uses
  %.not.us48 = icmp eq ptr %i.ci, %i.k
  br i1 %.not.us48, label %._crit_edge, label %._crit_edge.i.i.i.us39

.lr.ph.split.split.us49:                          ; preds = %.lr.ph.split
  %i.cj = load i32, ptr %4, align 4, !tbaa !113   ; 2 uses
  %i.ck = icmp ne ptr %4, %5                      ; 2 uses
  %i.cl = add i64 %i.m, -28
  %i.cm = sub i64 %i.cl, %i.n                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.cm, 224
  br i1 %min.iters.check, label %._crit_edge.i.i.i.us50.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.split.us49
  %i.cn = udiv i64 %i.cm, 28
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %i.cp = and i64 %i.co, 7                        ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = select i1 %i.cq, i64 8, i64 %i.cp
  %n.vec = sub nsw i64 %i.co, %i.cr               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.cj, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert95 = insertelement <8 x i1> poison, i1 %i.ck, i64 0
  %broadcast.splat96 = shufflevector <8 x i1> %broadcast.splatinsert95, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.l, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <8 x i64> <i64 0, i64 28, i64 56, i64 84, i64 112, i64 140, i64 168, i64 196> ; 9 uses
  %wide.gep = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 4
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !113
  %i.cs = icmp eq <8 x i32> %broadcast.splat, %wide.masked.gather
  %i.ct = select <8 x i1> %i.cs, <8 x i1> %broadcast.splat96, <8 x i1> zeroinitializer
  %i.cu = extractelement <8 x ptr> %vector.gep, i64 0
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = extractelement <8 x ptr> %vector.gep, i64 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = extractelement <8 x ptr> %vector.gep, i64 2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = extractelement <8 x ptr> %vector.gep, i64 3
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = extractelement <8 x ptr> %vector.gep, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = extractelement <8 x ptr> %vector.gep, i64 5
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = extractelement <8 x ptr> %vector.gep, i64 6
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = extractelement <8 x ptr> %vector.gep, i64 7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = zext <8 x i1> %i.ct to <8 x i8>         ; 8 uses
  %i.dl = extractelement <8 x i8> %i.dk, i64 0
  store i8 %i.dl, ptr %i.cv, align 4, !tbaa !175
  %i.dm = extractelement <8 x i8> %i.dk, i64 1
  store i8 %i.dm, ptr %i.cx, align 4, !tbaa !175
  %i.dn = extractelement <8 x i8> %i.dk, i64 2
  store i8 %i.dn, ptr %i.cz, align 4, !tbaa !175
  %i.do = extractelement <8 x i8> %i.dk, i64 3
  store i8 %i.do, ptr %i.db, align 4, !tbaa !175
  %i.dp = extractelement <8 x i8> %i.dk, i64 4
  store i8 %i.dp, ptr %i.dd, align 4, !tbaa !175
  %i.dq = extractelement <8 x i8> %i.dk, i64 5
  store i8 %i.dq, ptr %i.df, align 4, !tbaa !175
  %i.dr = extractelement <8 x i8> %i.dk, i64 6
  store i8 %i.dr, ptr %i.dh, align 4, !tbaa !175
  %i.ds = extractelement <8 x i8> %i.dk, i64 7
  store i8 %i.ds, ptr %i.dj, align 4, !tbaa !175
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 224
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %._crit_edge.i.i.i.us50.preheader.loopexit, label %vector.body, !llvm.loop !418

._crit_edge.i.i.i.us50.preheader.loopexit:        ; preds = %vector.body
  %6 = mul i64 %n.vec, 28
  %7 = getelementptr i8, ptr %i.l, i64 %6
  br label %._crit_edge.i.i.i.us50.preheader

._crit_edge.i.i.i.us50.preheader:                 ; preds = %._crit_edge.i.i.i.us50.preheader.loopexit, %.lr.ph.split.split.us49
  %.sroa.012.029.us51.ph = phi ptr [ %i.l, %.lr.ph.split.split.us49 ], [ %7, %._crit_edge.i.i.i.us50.preheader.loopexit ]
  br label %._crit_edge.i.i.i.us50

._crit_edge.i.i.i.us50:                           ; preds = %._crit_edge.i.i.i.us50.preheader, %._crit_edge.i.i.i.us50
  %.sroa.012.029.us51 = phi ptr [ %i.dz, %._crit_edge.i.i.i.us50 ], [ %.sroa.012.029.us51.ph, %._crit_edge.i.i.i.us50.preheader ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.012.029.us51, i64 4
  %.pre58.i.i.i.us53 = load i32, ptr %i.du, align 4, !tbaa !113
  %i.dv = icmp eq i32 %i.cj, %.pre58.i.i.i.us53
  %i.dw = select i1 %i.dv, i1 %i.ck, i1 false
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.012.029.us51, i64 24
  %i.dy = zext i1 %i.dw to i8
  store i8 %i.dy, ptr %i.dx, align 4, !tbaa !175
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.012.029.us51, i64 28 ; 2 uses
  %.not.us59 = icmp eq ptr %i.dz, %i.k
  br i1 %.not.us59, label %._crit_edge, label %._crit_edge.i.i.i.us50, !llvm.loop !419

._crit_edge:                                      ; preds = %._crit_edge.i.i.i.us50, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us46, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us35, %._crit_edge.i.i.i, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.us, %_ZN3gmx16HardwareTopologyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8ArrayRefIKiEE.exit
  ret void

._crit_edge.i.i.i:                                ; preds = %.lr.ph.split, %._crit_edge.i.i.i
  %.sroa.012.029 = phi ptr [ %i.eb, %._crit_edge.i.i.i ], [ %i.l, %.lr.ph.split ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.012.029, i64 24
  store i8 0, ptr %i.ea, align 4, !tbaa !175
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.012.029, i64 28 ; 2 uses
  %.not = icmp eq ptr %i.eb, %i.k
  br i1 %.not, label %._crit_edge, label %._crit_edge.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gmx16hwlocDescriptionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #16 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !76
  store i64 7234307546238118244, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.b, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.c, align 8, !tbaa !75
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #21 = { nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{null}
!1 = distinct !{!1, !114}
!2 = distinct !{!2, !114}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{!5, !114}
!6 = distinct !{!6, !114}
!7 = distinct !{!7, !114}
!8 = distinct !{!8, !114}
!9 = !{i32 7, !"openmp", i32 51}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"_ZTSN3gmx16HardwareTopology12SupportLevelE", !14, i64 0}
!19 = !{!"any pointer", !14, i64 0}
!20 = !{!"p1 _ZTSN3gmx16HardwareTopology16LogicalProcessorE", !19, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN3gmx16HardwareTopology16LogicalProcessorESaIS2_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIN3gmx16HardwareTopology16LogicalProcessorESaIS2_EE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN3gmx16HardwareTopology16LogicalProcessorESaIS2_EE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIN3gmx16HardwareTopology16LogicalProcessorESaIS2_EE", !23, i64 0}
!25 = !{!"_ZTSSt4lessIiE"}
!26 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIiEE", !25, i64 0}
!27 = !{!"_ZTSSt14_Rb_tree_color", !14, i64 0}
!28 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !19, i64 0}
!29 = !{!"_ZTSSt18_Rb_tree_node_base", !27, i64 0, !28, i64 8, !28, i64 16, !28, i64 24}
!30 = !{!"long", !14, i64 0}
!31 = !{!"_ZTSSt15_Rb_tree_header", !29, i64 0, !30, i64 32}
!32 = !{!"_ZTSNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !26, i64 0, !31, i64 8}
!33 = !{!"_ZTSSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE", !32, i64 0}
!34 = !{!"_ZTSSt3mapIiiSt4lessIiESaISt4pairIKiiEEE", !33, i64 0}
!35 = !{!"p1 _ZTSN3gmx16HardwareTopology7PackageE", !19, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN3gmx16HardwareTopology7PackageESaIS2_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!"_ZTSNSt12_Vector_baseIN3gmx16HardwareTopology7PackageESaIS2_EE12_Vector_implE", !36, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIN3gmx16HardwareTopology7PackageESaIS2_EE", !37, i64 0}
!39 = !{!"_ZTSSt6vectorIN3gmx16HardwareTopology7PackageESaIS2_EE", !38, i64 0}
!40 = !{!"p1 _ZTSN3gmx16HardwareTopology5CacheE", !19, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN3gmx16HardwareTopology5CacheESaIS2_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!"_ZTSNSt12_Vector_baseIN3gmx16HardwareTopology5CacheESaIS2_EE12_Vector_implE", !41, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIN3gmx16HardwareTopology5CacheESaIS2_EE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorIN3gmx16HardwareTopology5CacheESaIS2_EE", !43, i64 0}
!45 = !{!"p1 _ZTSN3gmx16HardwareTopology8NumaNodeE", !19, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN3gmx16HardwareTopology8NumaNodeESaIS2_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseIN3gmx16HardwareTopology8NumaNodeESaIS2_EE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIN3gmx16HardwareTopology8NumaNodeESaIS2_EE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIN3gmx16HardwareTopology8NumaNodeESaIS2_EE", !48, i64 0}
!50 = !{!"float", !14, i64 0}
!51 = !{!"p1 _ZTSSt6vectorIfSaIfEE", !19, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!"_ZTSNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE12_Vector_implE", !52, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE", !53, i64 0}
!55 = !{!"_ZTSSt6vectorIS_IfSaIfEESaIS1_EE", !54, i64 0}
!56 = !{!"_ZTSN3gmx16HardwareTopology4NumaE", !49, i64 0, !50, i64 24, !55, i64 32, !50, i64 56}
!57 = !{!"p1 _ZTSN3gmx16HardwareTopology6DeviceE", !19, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN3gmx16HardwareTopology6DeviceESaIS2_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseIN3gmx16HardwareTopology6DeviceESaIS2_EE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIN3gmx16HardwareTopology6DeviceESaIS2_EE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorIN3gmx16HardwareTopology6DeviceESaIS2_EE", !60, i64 0}
!62 = !{!"_ZTSN3gmx16HardwareTopology7MachineE", !24, i64 0, !34, i64 24, !39, i64 72, !44, i64 96, !56, i64 120, !61, i64 184}
!63 = !{!"bool", !14, i64 0}
!64 = !{!"_ZTSN3gmx16HardwareTopologyE", !18, i64 0, !62, i64 8, !63, i64 216, !50, i64 220, !15, i64 224}
!65 = !{!64, !18, i64 0}
!66 = !{!"p1 omnipotent char", !19, i64 0}
!67 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !66, i64 0}
!68 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !67, i64 0, !30, i64 8, !14, i64 16}
!69 = !{!"p1 _ZTSN3gmx7CpuInfo16LogicalProcessorE", !19, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIN3gmx7CpuInfo16LogicalProcessorESaIS2_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!71 = !{!70, !69, i64 0}
!72 = !{!70, !69, i64 16}
!73 = !{!31, !28, i64 8}
!74 = !{!68, !66, i64 0}
!75 = !{!14, !14, i64 0}
!76 = !{!67, !66, i64 0}
!77 = !{!68, !30, i64 8}
!78 = !{!64, !50, i64 220}
!79 = !{!21, !20, i64 8}
!80 = !{!21, !20, i64 0}
!81 = !{!64, !15, i64 224}
!82 = !{!"vtable pointer", !13, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!"_ZTSSt13_Ios_Fmtflags", !14, i64 0}
!85 = !{!"_ZTSSt12_Ios_Iostate", !14, i64 0}
!86 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !19, i64 0}
!87 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !30, i64 8}
!88 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!89 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
!90 = !{!"_ZTSSt6locale", !89, i64 0}
!91 = !{!"_ZTSSt8ios_base", !30, i64 8, !30, i64 16, !84, i64 24, !85, i64 28, !85, i64 32, !86, i64 40, !87, i64 48, !14, i64 64, !15, i64 192, !88, i64 200, !90, i64 208}
!92 = !{!"p1 _ZTSSo", !19, i64 0}
!93 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 0}
!94 = !{!"p1 _ZTSSt5ctypeIcE", !19, i64 0}
!95 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!96 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!97 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !91, i64 0, !92, i64 216, !14, i64 224, !63, i64 225, !93, i64 232, !94, i64 240, !95, i64 248, !96, i64 256}
!98 = !{!97, !94, i64 240}
!99 = !{!"_ZTSNSt6locale5facetE", !15, i64 8}
!100 = !{!"p1 _ZTS15__locale_struct", !19, i64 0}
!101 = !{!"p1 int", !19, i64 0}
!102 = !{!"p1 short", !19, i64 0}
!103 = !{!"_ZTSSt5ctypeIcE", !99, i64 0, !100, i64 16, !63, i64 24, !101, i64 32, !101, i64 40, !102, i64 48, !14, i64 56, !14, i64 57, !14, i64 313, !14, i64 569}
!104 = !{!103, !14, i64 56}
!105 = !{!91, !85, i64 32}
end_hunk_0

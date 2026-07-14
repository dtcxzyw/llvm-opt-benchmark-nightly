inline.NumInlined: 16782
inline.NumDeleted: 5498
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 144
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufImplC2ERKS1_:bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !10
  store i32 %i.a, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !119
  store i64 %i.d, ptr %i.b, align 8, !tbaa !119
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !119
  store i64 %i.g, ptr %i.e, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load <4 x i32>, ptr %i.i, align 8, !tbaa !3
  store <4 x i32> %i.j, ptr %i.h, align 8, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !79
  store i32 %i.m, ptr %i.k, align 8, !tbaa !79
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @_ZN11OpenImageIO4v3_19ImageSpecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.n, ptr noundef nonnull align 8 dereferenceable(160) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 208
  invoke void @_ZN11OpenImageIO4v3_19ImageSpecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.p, ptr noundef nonnull align 8 dereferenceable(160) %i.q)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.t, align 8, !tbaa !80
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i8 0, i64 40, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 1, ptr %i.v, align 8, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 481 ; 2 uses
  store i8 0, ptr %i.x, align 1, !tbaa !87
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 482 ; 3 uses
  store i8 0, ptr %i.y, align 2, !tbaa !88
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 483
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 483
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !89, !range !142, !noundef !143
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 484
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !90, !range !142, !noundef !143
  store i8 %i.ae, ptr %i.ac, align 4, !tbaa !90
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !91
  store float %i.ah, ptr %i.af, align 8, !tbaa !91
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 492
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !92, !range !142, !noundef !143
  store i8 %i.ak, ptr %i.ai, align 4, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !93 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.am, align 8, !tbaa !94
  store <2 x ptr> %i.ap, ptr %i.al, align 8, !tbaa !94
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageCacheEEC2ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageCacheEEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.au = atomicrmw volatile add ptr %i.aq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageCacheEEC2ERKS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageCacheEEC2ERKS3_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.ax = load i64, ptr %i.aw, align 8
  store i64 %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 520
  invoke void @_ZN11OpenImageIO4v3_18DeepDataC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(20) %i.ay, ptr noundef nonnull align 8 dereferenceable(20) %i.az)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageCacheEEC2ERKS3_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 0, ptr %i.ba, align 8, !tbaa !144
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !120 ; 2 uses
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !117 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %.not.i.i.i.i45 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i.i.i.i45, label %.noexc46, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !111

.noexc.i.i:                                       ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #43
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #44
          to label %.noexc46 unwind label %bb.q

.noexc46:                                         ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.f
  %i.bl = phi ptr [ null, %bb.f ], [ %i.bk, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.bl, ptr %i.bb, align 8, !tbaa !117
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !120
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bi
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !118
  %i.bp = load ptr, ptr %i.bc, align 8, !tbaa !119 ; 3 uses
  %i.bq = load ptr, ptr %i.bd, align 8, !tbaa !119
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 4 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.h, label %bb.i, !prof !145

bb.h:                                             ; preds = %.noexc46
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bp, i64 %i.bt, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc46
  %i.bv = icmp eq i64 %i.bt, 1
  br i1 %i.bv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bw = load i8, ptr %i.bp, align 1, !tbaa !95
  store i8 %i.bw, ptr %i.bl, align 1, !tbaa !95
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.bx = getelementptr inbounds i8, ptr %i.bl, i64 %i.bt
  store ptr %i.bx, ptr %i.bm, align 8, !tbaa !120
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !146 ; 2 uses
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !115 ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, i8 0, i64 24, i1 false)
  %.not.i.i.i.i47 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i.i.i.i47, label %.noexc50, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = icmp ugt i64 %i.cf, 9223372036854775800
  br i1 %i.cg, label %.noexc.i.i48, label %_ZNSt15__new_allocatorIN11OpenImageIO4v3_18TypeDescEE8allocateEmPKv.exit.i.i.i.i, !prof !111

.noexc.i.i48:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc49 unwind label %bb.r

.noexc49:                                         ; preds = %.noexc.i.i48
  unreachable

_ZNSt15__new_allocatorIN11OpenImageIO4v3_18TypeDescEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.ch = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #44
          to label %.noexc50 unwind label %bb.r

.noexc50:                                         ; preds = %_ZNSt15__new_allocatorIN11OpenImageIO4v3_18TypeDescEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.ci = phi ptr [ null, %bb.k ], [ %i.ch, %_ZNSt15__new_allocatorIN11OpenImageIO4v3_18TypeDescEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.ci, ptr %i.by, align 8, !tbaa !115
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !146
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cf
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !116
  %i.cm = load ptr, ptr %i.bz, align 8, !tbaa !147 ; 6 uses
  %i.cn = load ptr, ptr %i.ca, align 8, !tbaa !147 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.cm, %i.cn
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc50
  %i.co = ptrtoaddr ptr %i.cm to i64
  %i.cp = ptrtoaddr ptr %i.ci to i64
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = ptrtoint ptr %i.cm to i64
  %4 = sub i64 %i.cq, %i.cr
  %5 = add i64 %4, -8                             ; 2 uses
  %i.cs = lshr i64 %5, 3
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 72
  %i.cu = sub i64 %i.co, %i.cp
  %diff.check = icmp ugt i64 %i.cu, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader85, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ct, 4611686018427387900     ; 3 uses
  %i.cv = shl i64 %n.vec, 3                       ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ci, i64 %i.cv  ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cm, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ci, i64 %i.cy ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.cm, i64 %i.cy ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep82, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep82, align 4
  %wide.load83 = load <2 x i64>, ptr %i.cz, align 4
  %i.da = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load83, ptr %i.da, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader85

.lr.ph.i.i.i.i.i.preheader85:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cx, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader85, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader85 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader85 ] ; 2 uses
  %i.dc = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.dc, ptr %.09.i.i.i.i.i, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dd, %i.cn
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !151

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc50
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ci, %.noexc50 ], [ %i.cw, %middle.block ], [ %i.de, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.cj, align 8, !tbaa !146
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.dh = load <2 x i32>, ptr %i.dg, align 8, !tbaa !3
  store <2 x i32> %i.dh, ptr %i.df, align 8, !tbaa !3
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !96
  store i32 %i.dk, ptr %i.di, align 8, !tbaa !96
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i8 0, i64 24, i1 false)
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !97
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i64 0, ptr %i.do, align 8, !tbaa !98
  store i8 0, ptr %i.dn, align 8, !tbaa !95
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i8 0, ptr %i.dp, align 8, !tbaa !99
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !86, !range !142, !noundef !143
  store i8 %i.ds, ptr %i.w, align 8, !tbaa !86
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 481
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !87, !range !142, !noundef !143
  store i8 %i.du, ptr %i.x, align 1, !tbaa !87
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 482
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !88, !range !142, !noundef !143
  store i8 %i.dw, ptr %i.y, align 2, !tbaa !88
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !100
  %.not = icmp eq ptr %i.dy, null
  br i1 %.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.dz = load i32, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 2
  br i1 %i.ea, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.s, ptr noundef nonnull align 8 dereferenceable(60) %i.dx, i64 60, i1 false), !tbaa.struct !101
  br label %bb.u

bb.o:                                             ; preds = %bb.a
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.p:                                             ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageCacheEEC2ERKS3_.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.q:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

bb.r:                                             ; preds = %_ZNSt15__new_allocatorIN11OpenImageIO4v3_18TypeDescEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i48
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit

bb.s:                                             ; preds = %bb.aa, %bb.x, %bb.w, %bb.t
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.t:                                             ; preds = %bb.m
  %i.eg = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.o, i1 noundef zeroext false) #41
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !119
  %i.ej = invoke noundef ptr @_ZN11OpenImageIO4v3_112ImageBufImpl10new_pixelsENS0_8ImageBuf9IBStorageEmPKv(ptr noundef nonnull align 8 dereferenceable(696) %0, i32 noundef %i.dz, i64 noundef %i.eg, ptr noundef %i.ei)
          to label %bb.u unwind label %bb.s       ; 0 uses

.thread:                                          ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, i8 0, i64 56, i1 false)
  store i32 1, ptr %i.t, align 8, !tbaa !3
  br label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.n
  %.pr = load ptr, ptr %i.s, align 8, !tbaa !100
  %.not39 = icmp eq ptr %.pr, null
  br i1 %.not39, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.thread, %bb.u
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !152, !range !142, !noundef !143
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v, %bb.u
  store ptr null, ptr %i.e, align 8, !tbaa !74
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.h, align 8, !tbaa !3
  store ptr @.str, ptr %2, align 8, !tbaa !71
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 14, ptr %i.en, align 8, !tbaa !73
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec15erase_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %i.n, ptr noundef nonnull dead_on_return %2, i64 256, i1 noundef zeroext false)
          to label %bb.x unwind label %bb.s

bb.x:                                             ; preds = %bb.w
  store ptr @.str, ptr %3, align 8, !tbaa !71
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 14, ptr %i.eo, align 8, !tbaa !73
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec15erase_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %i.p, ptr noundef nonnull dead_on_return %3, i64 256, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.s

bb.y:                                             ; preds = %bb.x
  store i8 1, ptr %i.y, align 2, !tbaa !88
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !114 ; 2 uses
  %.not64 = icmp eq ptr %i.eq, null
  br i1 %.not64, label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EE5resetEPS2_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #44
          to label %bb.ab unwind label %bb.s      ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11OpenImageIO4v3_19ImageSpecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.er, ptr noundef nonnull align 8 dereferenceable(160) %i.eq)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.es = load ptr, ptr %i.dl, align 8, !tbaa !114 ; 2 uses
  store ptr %i.er, ptr %i.dl, align 8, !tbaa !114
  %.not.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EE5resetEPS2_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNKSt14default_deleteIN11OpenImageIO4v3_19ImageSpecEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull %i.es)
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EE5resetEPS2_.exit

bb.ae:                                            ; preds = %bb.ab
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef 160) #42
  br label %bb.ak

_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.ad, %bb.ac, %bb.z
  %i.eu = load ptr, ptr %i.s, align 8, !tbaa !100
  %.not.i = icmp eq ptr %i.eu, null
  br i1 %.not.i, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.ev = load i32, ptr %0, align 8, !tbaa !10
  %.off.i = add i32 %i.ev, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !112 ; 2 uses
  %i.ey = load i32, ptr %i.t, align 8, !tbaa !80
  %i.ez = zext i32 %i.ey to i64
  %i.fa = icmp eq i64 %i.ex, %i.ez
  br i1 %i.fa, label %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit.i.i, label %bb.aj

_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit.i.i: ; preds = %bb.ag
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !112 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !3
  %i.ff = zext i32 %i.fe to i64
  %i.fg = mul nuw nsw i64 %i.ex, %i.ff
  %i.fh = icmp eq i64 %i.fc, %i.fg
  br i1 %i.fh, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !112 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = zext i32 %i.fl to i64
  %i.fn = mul nsw i64 %i.fc, %i.fm
  %i.fo = icmp eq i64 %i.fj, %i.fn
  br i1 %i.fo, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !112
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !3
  %i.ft = zext i32 %i.fs to i64
  %i.fu = mul nsw i64 %i.fj, %i.ft
  %i.fv = icmp eq i64 %i.fq, %i.fu
  %i.fw = zext i1 %i.fv to i8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit.i.i, %bb.ag, %bb.af, %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.fx = phi i8 [ 0, %bb.af ], [ 0, %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EE5resetEPS2_.exit ], [ 0, %bb.ah ], [ 0, %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit.i.i ], [ %i.fw, %bb.ai ], [ 0, %bb.ag ]
  store i8 %i.fx, ptr %i.ai, align 4, !tbaa !92
  ret void

bb.ak:                                            ; preds = %bb.ae, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ef, %bb.s ], [ %i.et, %bb.ae ] ; 2 uses
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #41
  %i.fy = load ptr, ptr %i.dm, align 8, !tbaa !113 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.dn
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  %i.ga = load i64, ptr %i.dn, align 8, !tbaa !95
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.gc = load ptr, ptr %i.dl, align 8, !tbaa !114 ; 2 uses
  %.not.i51 = icmp eq ptr %i.gc, null
  br i1 %.not.i51, label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZNKSt14default_deleteIN11OpenImageIO4v3_19ImageSpecEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull %i.gc)
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.al
  %i.gd = load ptr, ptr %i.by, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit
  %i.ge = load ptr, ptr %i.cl, align 8, !tbaa !116
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gd to i64
  %i.gh = sub i64 %i.gf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gh) #42
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit: ; preds = %bb.am, %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.ee, %bb.r ], [ %.pn, %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit ], [ %.pn, %bb.am ] ; 2 uses
  %i.gi = load ptr, ptr %i.bb, align 8, !tbaa !117 ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit
  %i.gj = load ptr, ptr %i.bo, align 8, !tbaa !118
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = sub i64 %i.gk, %i.gl
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gm) #42
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.an, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ed, %bb.q ], [ %.pn.pn, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit ], [ %.pn.pn, %bb.an ]
  call void @_ZN11OpenImageIO4v3_18DeepDataD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.ay) #41
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.p
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ %i.ec, %bb.p ]
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #41
  %i.gn = load ptr, ptr %i.r, align 8, !tbaa !119 ; 2 uses
  %.not.i54 = icmp eq ptr %i.gn, null
  br i1 %.not.i54, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.ao
  call void @_ZdaPv(ptr noundef nonnull %i.gn) #42
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.ao, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.p) #41
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.o
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %i.eb, %bb.o ]
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.n) #41
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_19ImageSpecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !146  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !115  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN11OpenImageIO4v3_18TypeDescEE8allocateEmPKv.exit.i.i.i.i, !prof !111

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

_ZNSt15__new_allocatorIN11OpenImageIO4v3_18TypeDescEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #44
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN11OpenImageIO4v3_18TypeDescEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN11OpenImageIO4v3_18TypeDescEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !115
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !146
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !116
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !147  ; 6 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !147  ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.k to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.o to i64
  %2 = sub i64 %i.s, %i.t
  %3 = add i64 %2, -8                             ; 2 uses
  %i.u = lshr i64 %3, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.w = sub i64 %i.q, %i.r
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.k, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %i.o, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.aa ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.o, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep19, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep19, align 4
  %wide.load20 = load <2 x i64>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load20, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i.preheader22

.lr.ph.i.i.i.i.i.preheader22:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader22, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader22 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader22 ] ; 2 uses
  %i.ae = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.ae, ptr %.09.i.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %i.p
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !154

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEC2ERKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.y, %middle.block ], [ %i.ag, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.l, align 8, !tbaa !146
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !134 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !133 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %.not.i.i.i.i9 = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i9, label %.noexc11, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEC2ERKS4_.exit
  %i.ap = icmp ugt i64 %i.ao, 9223372036854775776
  br i1 %i.ap, label %.noexc.i.i10, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !111

.noexc.i.i10:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i10
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #44
          to label %.noexc11 unwind label %bb.h

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEC2ERKS4_.exit
  %i.ar = phi ptr [ null, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEC2ERKS4_.exit ], [ %i.aq, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ar, ptr %i.ah, align 8, !tbaa !133
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !134
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !136
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !155
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !155
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.av, ptr %i.aw, ptr noundef %i.ar)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc11
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %i.ah, align 8, !tbaa !133 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !136
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bd) #42
  br label %.body

bb.g:                                             ; preds = %.noexc11
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !134
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.be, ptr noundef nonnull align 8 dereferenceable(9) %i.bf, i64 9, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_ZN11OpenImageIO4v3_114ParamValueListC2ERKS1_.exit unwind label %bb.i

_ZN11OpenImageIO4v3_114ParamValueListC2ERKS1_.exit: ; preds = %bb.g
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i10
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ah) #41
  br label %.body

.body:                                            ; preds = %bb.h, %bb.f, %bb.e, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.i ], [ %i.bi, %bb.h ], [ %i.ay, %bb.f ], [ %i.ay, %bb.e ]
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.body
  %i.bl = load ptr, ptr %i.n, align 8, !tbaa !116
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #42
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit: ; preds = %.body, %bb.j
  resume { ptr, i32 } %.pn
}

declare void @_ZN11OpenImageIO4v3_18DeepDataC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11OpenImageIO4v3_112ImageBufImpl10new_pixelsENS0_8ImageBuf9IBStorageEmPKv(ptr noundef nonnull align 8 dereferenceable(696) initializes((0, 4)) %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  store i32 %1, ptr %0, align 8, !tbaa !10
  %i.h = icmp ne i32 %1, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !142
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond24 = select i1 %i.h, i1 true, i1 %i.k
  br i1 %or.cond24, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.l, i1 noundef zeroext false) #41
  %i.n = icmp eq i64 %2, %i.m
  br i1 %i.n, label %.thread, label %bb.c, !prof !145

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !156
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 720, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_112ImageBufImpl10new_pixelsENS0_8ImageBuf9IBStorageEmPKv, ptr noundef nonnull @.str.5) #45 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %.old = load i8, ptr %i.i, align 8, !tbaa !152, !range !142, !noundef !143
  %.old38 = trunc nuw i8 %.old to i1
  br i1 %.old38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.q, i1 noundef zeroext false) #41
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.thread, %bb.d
  %i.s = phi i64 [ %i.r, %bb.d ], [ 0, %.thread ], [ 0, %bb.a ] ; 3 uses
  store i64 %i.s, ptr %i.c, align 8, !tbaa !112
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !144  ; 4 uses
  %.not = icmp eq i64 %i.u, %i.s
  br i1 %.not, label %_ZN11OpenImageIO4v3_110atomic_maxIxEEvRSt6atomicIT_ERKS3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not18 = icmp eq i64 %i.u, 0
end_hunk_0
begin_hunk_1_@_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA49_cJNS0_17basic_string_viewIcSt11char_traitsIcEEEEEEvRKT_DpOT0_
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA49_cJNS0_17basic_string_viewIcSt11char_traitsIcEEEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.211", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(49) %1) #41, !noalias !381
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41, !noalias !381
  %i.b = load ptr, ptr %2, align 8, !tbaa !71, !noalias !381
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !381
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %4, align 16, !noalias !381
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %.sroa_idx3.i, align 8, !noalias !381
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull align 1 dereferenceable(49) %1, i64 %i.a, i64 13, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !381
  %i.f = load ptr, ptr %5, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !172
  store ptr %i.f, ptr %3, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.k, align 8, !tbaa !73
  invoke void @_ZNK11OpenImageIO4v3_112ImageBufImpl5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(696) %i.j, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.l = load ptr, ptr %5, align 8, !tbaa !113    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8, !tbaa !95
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %5, align 8, !tbaa !113    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.u = load i64, ptr %i.s, align 8, !tbaa !95
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  resume { ptr, i32 } %i.q
}

declare void @_ZN11OpenImageIO4v3_111ImageOutput6createENS0_17basic_string_viewIcSt11char_traitsIcEEEPNS0_10Filesystem7IOProxyES5_(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.82") align 8, ptr noundef dead_on_return, ptr noundef, ptr noundef dead_on_return) local_unnamed_addr #5

declare void @_ZN11OpenImageIO4v3_111ImageOutput7threadsEi(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7threadsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !79
  ret i32 %i.d
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpec10set_formatENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160), i64) local_unnamed_addr #4

declare noundef i32 @_ZN11OpenImageIO4v3_18TypeDesc14basetype_mergeES1_S1_(i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !115    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !116
  %i.i = load ptr, ptr %0, align 8, !tbaa !115    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i, !prof !111

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #44 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #42
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !115
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !116
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !146
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 8
  br i1 %i.y, label %bb.h, label %bb.i, !prof !145

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 8
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.c, align 4
  store i64 %i.aa, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 8
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !145

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %i.c, align 4
  store i64 %i.ad, ptr %i.i, align 4
  br label %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8, !tbaa !115   ; 3 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !146 ; 4 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !115
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 4 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !146 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit
  %i.am = ptrtoaddr ptr %i.ae to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.ae to i64
  %i.ap = add i64 %i.ai, %i.an
  %i.aq = add i64 %i.ao, %i.ah
  %2 = sub i64 %i.ap, %i.aq
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ar = lshr i64 %3, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.at = sub i64 %i.am, %i.ai
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.af, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ax ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep33, align 4
  %wide.load34 = load <2 x i64>, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load34, ptr %i.az, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !384

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.preheader36

.lr.ph.i.i.i.i.preheader36:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader36, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %i.bb = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.bb, ptr %.011.i.i.i.i, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !385

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.be = load ptr, ptr %0, align 8, !tbaa !115
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !146
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf10nativespecEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 2 uses
  %i.c = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.b, i8 1), !inline_history !189 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA47_cJPKcEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(47) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.222", align 16 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(47) %1) #41, !noalias !386
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41, !noalias !386
  %i.b = load ptr, ptr %2, align 8, !tbaa !119, !noalias !386
  %i.c = ptrtoint ptr %i.b to i64
  store i64 %i.c, ptr %4, align 16, !noalias !386
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull align 1 dereferenceable(47) %1, i64 %i.a, i64 12, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !386
  %i.d = load ptr, ptr %5, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !172
  store ptr %i.d, ptr %3, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.f, ptr %i.i, align 8, !tbaa !73
  invoke void @_ZNK11OpenImageIO4v3_112ImageBufImpl5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(696) %i.h, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.j = load ptr, ptr %5, align 8, !tbaa !113    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !95
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %5, align 8, !tbaa !113    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !95
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf13make_writableEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !77
  br i1 %1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.j = load i64, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0.insert.insert = phi i64 [ %i.j, %bb.c ], [ 256, %bb.b ]
  %i.k = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufImpl4readEiiiibNS0_8TypeDescEPFbPvfES3_NS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.b, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 0, i32 noundef -1, i1 noundef zeroext true, i64 %.sroa.0.0.insert.insert, ptr noundef null, ptr noundef null, i8 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i1 [ %i.k, %bb.d ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_112ImageBufImpl13copy_metadataERKS1_(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 8 dereferenceable(696) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %1, i8 1) ; 0 uses
  %i.c = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %0, i8 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load <4 x i32>, ptr %i.d, align 8, !tbaa !3
  store <4 x i32> %i.f, ptr %i.e, align 8, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load <2 x i32>, ptr %i.g, align 8, !tbaa !3
  store <2 x i32> %i.i, ptr %i.h, align 8, !tbaa !3
  %i.j = load i32, ptr %1, align 8, !tbaa !10
  %i.k = icmp eq i32 %i.j, 3
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %1, i8 1), !inline_history !189 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.n = load i32, ptr %i.m, align 8, !tbaa !311
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.n, ptr %i.o, align 8, !tbaa !311
  %i.p = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %1, i8 1), !inline_history !189 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.r = load i32, ptr %i.q, align 4, !tbaa !312
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.r, ptr %i.s, align 4, !tbaa !312
  %i.t = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %1, i8 1), !inline_history !189 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
bb.i:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  call void @free(ptr noundef nonnull %i.af) #41
  %.pre.i.i.pre = load i64, ptr %i.c, align 8, !tbaa !1296 ; 2 uses
  %.pre681.pre = load ptr, ptr %5, align 8, !tbaa !1286
  %.pre1373 = add i64 %.pre.i.i.pre, 1
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %bb.i, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  %.pre2.i.i.pre-phi = phi i64 [ %.pre1373, %bb.i ], [ %i.be, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %.pre681 = phi ptr [ %.pre681.pre, %bb.i ], [ %i.bj, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %.pre.i.i = phi i64 [ %.pre.i.i.pre, %bb.i ], [ %i.ah, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  store i64 %.pre2.i.i.pre-phi, ptr %i.c, align 8, !tbaa !1296
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre681, i64 %.pre.i.i
  store i32 %.lcssa1624, ptr %i.bl, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit.thread

_ZN3fmt3v126detail6bigintlSEi.exit.thread:        ; preds = %bb.f, %._crit_edge.i, %_ZN3fmt3v126detail6bigintlSEi.exit, %_ZN3fmt3v126detail6bigintlSEi.exit.thread1161
  store i32 1, ptr %i.n, align 8, !tbaa !3
  store i64 1, ptr %i.m, align 8, !tbaa !1296
  %i.bm = lshr i32 %i.x, 5
  store i32 %i.bm, ptr %i.o, align 8, !tbaa !1288
  %i.bn = and i32 %i.x, 31                        ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZN3fmt3v126detail6bigintlSEi.exit135, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit.thread
  %i.bp = shl nuw i32 1, %i.bn
  store i32 %i.bp, ptr %i.n, align 8, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit135

_ZN3fmt3v126detail6bigintlSEi.exit135:            ; preds = %.lr.ph.i124, %_ZN3fmt3v126detail6bigintlSEi.exit.thread
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit135
  store i32 1, ptr %i.s, align 8, !tbaa !3
  store i64 1, ptr %i.r, align 8, !tbaa !1296
  %i.bq = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.br = lshr i32 %i.bq, 5
  store i32 %i.br, ptr %i.t, align 8, !tbaa !1288
  %i.bs = and i32 %i.bq, 31                       ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.j
  %i.bu = shl nuw i32 1, %i.bs
  store i32 %i.bu, ptr %i.s, align 8, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit155

.loopexit569:                                     ; preds = %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke1568, %_ZN3fmt3v126detail6bigintlSEi.exit155, %bb.o, %_ZN3fmt3v126detail6bigintlSEi.exit253, %bb.m, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, %bb.s, %bb.w, %bb.x, %bb.aa, %bb.am, %bb.an, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v126detail6bigintlSEi.exit155:            ; preds = %.lr.ph.i144, %bb.j, %_ZN3fmt3v126detail6bigintlSEi.exit135
  %.087 = phi ptr [ null, %_ZN3fmt3v126detail6bigintlSEi.exit135 ], [ %8, %bb.j ], [ %8, %.lr.ph.i144 ] ; 3 uses
  %i.bv = load i32, ptr %4, align 4, !tbaa !3
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.bv)
          to label %bb.k unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit155
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !1296 ; 7 uses
  %.not19.i156 = icmp eq i64 %i.bw, 0
  %extract.t816 = trunc i128 %i.z to i32          ; 3 uses
  br i1 %.not19.i156, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.k
  %i.bx = load ptr, ptr %6, align 8, !tbaa !1286  ; 3 uses
  %i.by = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1753 = icmp ult i64 %i.bw, 8
  br i1 %min.iters.check1753, label %scalar.ph1752.preheader, label %vector.ph1754

vector.ph1754:                                    ; preds = %.lr.ph.i157
  %n.vec1756 = and i64 %i.bw, -8                  ; 3 uses
  %broadcast.splatinsert1757 = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat1758 = shufflevector <4 x i32> %broadcast.splatinsert1757, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1759 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1760 = shufflevector <4 x i32> %broadcast.splatinsert1759, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1761

vector.body1761:                                  ; preds = %vector.body1761, %vector.ph1754
  %index1762 = phi i64 [ 0, %vector.ph1754 ], [ %index.next1766, %vector.body1761 ] ; 2 uses
  %vector.recur1763 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1754 ], [ %i.cc, %vector.body1761 ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index1762 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %wide.load1764 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !3 ; 2 uses
  %wide.load1765 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !3 ; 2 uses
  %i.cb = lshr <4 x i32> %wide.load1764, %broadcast.splat1758 ; 2 uses
  %i.cc = lshr <4 x i32> %wide.load1765, %broadcast.splat1758 ; 3 uses
  %i.cd = shufflevector <4 x i32> %vector.recur1763, <4 x i32> %i.cb, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ce = shufflevector <4 x i32> %i.cb, <4 x i32> %i.cc, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cf = shl <4 x i32> %wide.load1764, %broadcast.splat1760
  %i.cg = shl <4 x i32> %wide.load1765, %broadcast.splat1760
  %i.ch = add <4 x i32> %i.cf, %i.cd
  %i.ci = add <4 x i32> %i.cg, %i.ce
  store <4 x i32> %i.ch, ptr %i.bz, align 4, !tbaa !3
  store <4 x i32> %i.ci, ptr %i.ca, align 4, !tbaa !3
  %index.next1766 = add nuw i64 %index1762, 8     ; 2 uses
  %i.cj = icmp eq i64 %index.next1766, %n.vec1756
  br i1 %i.cj, label %middle.block1767, label %vector.body1761, !llvm.loop !1299

middle.block1767:                                 ; preds = %vector.body1761
  %vector.recur.extract1768 = extractelement <4 x i32> %i.cc, i64 3 ; 2 uses
  %cmp.n1769 = icmp eq i64 %i.bw, %n.vec1756
  br i1 %cmp.n1769, label %._crit_edge.i161, label %scalar.ph1752.preheader

scalar.ph1752.preheader:                          ; preds = %.lr.ph.i157, %middle.block1767
  %.01418.i158.ph = phi i64 [ 0, %.lr.ph.i157 ], [ %n.vec1756, %middle.block1767 ]
  %.017.i159.ph = phi i32 [ 0, %.lr.ph.i157 ], [ %vector.recur.extract1768, %middle.block1767 ]
  br label %scalar.ph1752

._crit_edge.i161:                                 ; preds = %scalar.ph1752, %middle.block1767
  %.lcssa1623 = phi i32 [ %vector.recur.extract1768, %middle.block1767 ], [ %i.cm, %scalar.ph1752 ] ; 2 uses
  %.not.i162 = icmp eq i32 %.lcssa1623, 0
  br i1 %.not.i162, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.l

scalar.ph1752:                                    ; preds = %scalar.ph1752.preheader, %scalar.ph1752
  %.01418.i158 = phi i64 [ %i.cp, %scalar.ph1752 ], [ %.01418.i158.ph, %scalar.ph1752.preheader ] ; 2 uses
  %.017.i159 = phi i32 [ %i.cm, %scalar.ph1752 ], [ %.017.i159.ph, %scalar.ph1752.preheader ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.01418.i158 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3  ; 2 uses
  %i.cm = lshr i32 %i.cl, %i.by                   ; 2 uses
  %i.cn = shl i32 %i.cl, %i.v
  %i.co = add i32 %i.cn, %.017.i159
  store i32 %i.co, ptr %i.ck, align 4, !tbaa !3
  %i.cp = add nuw i64 %.01418.i158, 1             ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %i.cp, %i.bw
  br i1 %exitcond.not.i160, label %._crit_edge.i161, label %scalar.ph1752, !llvm.loop !1300

bb.l:                                             ; preds = %._crit_edge.i161
  %i.cq = add i64 %i.bw, 1                        ; 3 uses
  %i.cr = load i64, ptr %i.f, align 8, !tbaa !1287
  %i.cs = icmp ugt i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.m, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

bb.m:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !1284
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.cq)
          to label %.noexc167 unwind label %.loopexit.split-lp, !inline_history !1301

.noexc167:                                        ; preds = %bb.m
  %.pre.i.i165 = load i64, ptr %i.h, align 8, !tbaa !1296 ; 2 uses
  %.pre2.i.i166 = add i64 %.pre.i.i165, 1
  %.pre684 = load ptr, ptr %6, align 8, !tbaa !1286
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163: ; preds = %.noexc167, %bb.l
  %i.cu = phi ptr [ %i.bx, %bb.l ], [ %.pre684, %.noexc167 ]
  %.pre-phi.i.i164 = phi i64 [ %i.cq, %bb.l ], [ %.pre2.i.i166, %.noexc167 ]
  %i.cv = phi i64 [ %i.bw, %bb.l ], [ %.pre.i.i165, %.noexc167 ]
  store i64 %.pre-phi.i.i164, ptr %i.h, align 8, !tbaa !1296
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv
  store i32 %.lcssa1623, ptr %i.cw, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

bb.n:                                             ; preds = %bb.a
  %i.cx = load i32, ptr %4, align 4, !tbaa !3     ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.o, label %bb.ab

bb.o:                                             ; preds = %bb.n
  %i.cz = sub nsw i32 0, %i.cx
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %5, i32 noundef %i.cz)
          to label %bb.p unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.da = load i64, ptr %i.c, align 8, !tbaa !1296 ; 7 uses
  %i.db = load i64, ptr %i.k, align 8, !tbaa !1287
  %i.dc = icmp ugt i64 %i.da, %i.db
  br i1 %i.dc, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.p
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !1284
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.da)
          to label %.noexc170 unwind label %.loopexit.split-lp, !inline_history !1302

.noexc170:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !1287
  %i.de = call noundef i64 @llvm.umin.i64(i64 %i.da, i64 %.pre.i.i.i)
  store i64 %i.de, ptr %i.m, align 8, !tbaa !1296
  %i.df = load ptr, ptr %5, align 8, !tbaa !1286  ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.da, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.p
  store i64 %i.da, ptr %i.m, align 8, !tbaa !1296
  %i.dh = load ptr, ptr %5, align 8, !tbaa !1286  ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.da, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.da, 0
  br i1 %.not6.i.i, label %.loopexit570, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %.noexc170
  %i.dj = phi ptr [ %i.dg, %.noexc170 ], [ %i.di, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.dk = phi ptr [ %i.df, %.noexc170 ], [ %i.dh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 7 uses
  %9 = load ptr, ptr %7, align 8, !tbaa !1286     ; 4 uses
  %i.dl = ptrtoint ptr %i.dj to i64
  %10 = ptrtoint ptr %i.dk to i64
  %11 = sub i64 %i.dl, %10
  %12 = add i64 %11, -4                           ; 2 uses
  %i.dm = lshr i64 %12, 2
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check1664 = icmp ult i64 %12, 44
  %i.do = ptrtoaddr ptr %9 to i64
  %i.dp = ptrtoaddr ptr %i.dk to i64
  %i.dq = sub i64 %i.dp, %i.do
  %diff.check = icmp ugt i64 %i.dq, -32
  %or.cond1775 = select i1 %min.iters.check1664, i1 true, i1 %diff.check
  br i1 %or.cond1775, label %.lr.ph.i.i.preheader, label %vector.ph1665

vector.ph1665:                                    ; preds = %.lr.ph.i.preheader.i
  %n.vec1667 = and i64 %i.dn, 9223372036854775800 ; 3 uses
  %i.dr = shl i64 %n.vec1667, 2                   ; 2 uses
  %i.ds = getelementptr i8, ptr %9, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.dk, i64 %i.dr
  br label %vector.body1668

vector.body1668:                                  ; preds = %vector.body1668, %vector.ph1665
  %index1669 = phi i64 [ 0, %vector.ph1665 ], [ %index.next1673, %vector.body1668 ] ; 2 uses
  %i.du = shl i64 %index1669, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %9, i64 %i.du ; 2 uses
  %next.gep1670 = getelementptr i8, ptr %i.dk, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep1670, i64 16
  %wide.load1671 = load <4 x i32>, ptr %next.gep1670, align 4, !tbaa !3
  %wide.load1672 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !3
  %i.dw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load1671, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.load1672, ptr %i.dw, align 4, !tbaa !3
  %index.next1673 = add nuw i64 %index1669, 8     ; 2 uses
  %i.dx = icmp eq i64 %index.next1673, %n.vec1667
  br i1 %i.dx, label %middle.block1674, label %vector.body1668, !llvm.loop !1303

middle.block1674:                                 ; preds = %vector.body1668
  %cmp.n1675 = icmp eq i64 %i.dn, %n.vec1667
  br i1 %cmp.n1675, label %.loopexit570, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block1674
  %.08.i.i.ph = phi ptr [ %9, %.lr.ph.i.preheader.i ], [ %i.ds, %middle.block1674 ]
  %.057.i.i.ph = phi ptr [ %i.dk, %.lr.ph.i.preheader.i ], [ %i.dt, %middle.block1674 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.dz = load i32, ptr %.057.i.i, align 4, !tbaa !3
  %i.ea = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.dz, ptr %.08.i.i, align 4, !tbaa !3
  %.not.i.i169 = icmp eq ptr %i.dy, %i.dj
  br i1 %.not.i.i169, label %.loopexit570, label %.lr.ph.i.i, !llvm.loop !1304

.loopexit570:                                     ; preds = %.lr.ph.i.i, %middle.block1674, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.eb = phi ptr [ %i.dh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ], [ %i.dk, %middle.block1674 ], [ %i.dk, %.lr.ph.i.i ] ; 2 uses
  %i.ec = load i32, ptr %i.e, align 8, !tbaa !1288 ; 2 uses
  store i32 %i.ec, ptr %i.o, align 8, !tbaa !1288
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.q

bb.q:                                             ; preds = %.loopexit570
  %i.ed = load i64, ptr %i.c, align 8, !tbaa !1296 ; 8 uses
  %i.ee = load i64, ptr %i.p, align 8, !tbaa !1287 ; 2 uses
  %i.ef = icmp ugt i64 %i.ed, %i.ee
  br i1 %i.ef, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179: ; preds = %bb.q
  %i.eg = load ptr, ptr %i.q, align 8, !tbaa !1284
  invoke void %i.eg(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.ed)
          to label %.noexc182 unwind label %.loopexit.split-lp, !inline_history !1302

.noexc182:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179
  %.pre.i.i.i180 = load i64, ptr %i.p, align 8, !tbaa !1287 ; 2 uses
  %i.eh = call noundef i64 @llvm.umin.i64(i64 %i.ed, i64 %.pre.i.i.i180) ; 2 uses
  store i64 %i.eh, ptr %i.r, align 8, !tbaa !1296
  %i.ei = load ptr, ptr %5, align 8, !tbaa !1286  ; 2 uses
  %.idx8.i181 = shl nuw nsw i64 %i.ed, 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx8.i181
  br label %.lr.ph.i.preheader.i174

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171: ; preds = %bb.q
  store i64 %i.ed, ptr %i.r, align 8, !tbaa !1296
  %.idx.i172 = shl nuw nsw i64 %i.ed, 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i172
  %.not6.i.i173 = icmp eq i64 %i.ed, 0
  br i1 %.not6.i.i173, label %.thread, label %.lr.ph.i.preheader.i174

.thread:                                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171
  store i32 %i.ec, ptr %i.t, align 8, !tbaa !1288
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

.lr.ph.i.preheader.i174:                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171, %.noexc182
  %i.el = phi i64 [ %.pre.i.i.i180, %.noexc182 ], [ %i.ee, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ]
  %.pr = phi i64 [ %i.eh, %.noexc182 ], [ %i.ed, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 7 uses
  %i.em = phi ptr [ %i.ej, %.noexc182 ], [ %i.ek, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 2 uses
  %i.en = phi ptr [ %i.ei, %.noexc182 ], [ %i.eb, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 5 uses
  %13 = load ptr, ptr %8, align 8, !tbaa !1286    ; 7 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %14 = ptrtoint ptr %i.en to i64
  %15 = sub i64 %i.eo, %14
  %16 = add i64 %15, -4                           ; 2 uses
  %i.ep = lshr i64 %16, 2
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %min.iters.check1681 = icmp ult i64 %16, 44
  %i.er = ptrtoaddr ptr %13 to i64
  %i.es = ptrtoaddr ptr %i.en to i64
  %i.et = sub i64 %i.es, %i.er
  %diff.check1679 = icmp ugt i64 %i.et, -32
  %or.cond1778 = select i1 %min.iters.check1681, i1 true, i1 %diff.check1679
  br i1 %or.cond1778, label %.lr.ph.i.i175.preheader, label %vector.ph1682

vector.ph1682:                                    ; preds = %.lr.ph.i.preheader.i174
  %n.vec1684 = and i64 %i.eq, 9223372036854775800 ; 3 uses
  %i.eu = shl i64 %n.vec1684, 2                   ; 2 uses
  %i.ev = getelementptr i8, ptr %13, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.en, i64 %i.eu
  br label %vector.body1685

vector.body1685:                                  ; preds = %vector.body1685, %vector.ph1682
  %index1686 = phi i64 [ 0, %vector.ph1682 ], [ %index.next1691, %vector.body1685 ] ; 2 uses
  %i.ex = shl i64 %index1686, 2                   ; 2 uses
  %next.gep1687 = getelementptr i8, ptr %13, i64 %i.ex ; 2 uses
  %next.gep1688 = getelementptr i8, ptr %i.en, i64 %i.ex ; 2 uses
  %i.ey = getelementptr i8, ptr %next.gep1688, i64 16
  %wide.load1689 = load <4 x i32>, ptr %next.gep1688, align 4, !tbaa !3
  %wide.load1690 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !3
  %i.ez = getelementptr i8, ptr %next.gep1687, i64 16
  store <4 x i32> %wide.load1689, ptr %next.gep1687, align 4, !tbaa !3
  store <4 x i32> %wide.load1690, ptr %i.ez, align 4, !tbaa !3
  %index.next1691 = add nuw i64 %index1686, 8     ; 2 uses
  %i.fa = icmp eq i64 %index.next1691, %n.vec1684
  br i1 %i.fa, label %middle.block1692, label %vector.body1685, !llvm.loop !1305

middle.block1692:                                 ; preds = %vector.body1685
  %cmp.n1693 = icmp eq i64 %i.eq, %n.vec1684
  br i1 %cmp.n1693, label %.loopexit1772, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %.lr.ph.i.preheader.i174, %middle.block1692
  %.08.i.i176.ph = phi ptr [ %13, %.lr.ph.i.preheader.i174 ], [ %i.ev, %middle.block1692 ]
  %.057.i.i177.ph = phi ptr [ %i.en, %.lr.ph.i.preheader.i174 ], [ %i.ew, %middle.block1692 ]
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.preheader, %.lr.ph.i.i175
  %.08.i.i176 = phi ptr [ %i.fd, %.lr.ph.i.i175 ], [ %.08.i.i176.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %.057.i.i177 = phi ptr [ %i.fb, %.lr.ph.i.i175 ], [ %.057.i.i177.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.057.i.i177, i64 4 ; 2 uses
  %i.fc = load i32, ptr %.057.i.i177, align 4, !tbaa !3
  %i.fd = getelementptr inbounds nuw i8, ptr %.08.i.i176, i64 4
  store i32 %i.fc, ptr %.08.i.i176, align 4, !tbaa !3
  %.not.i.i178 = icmp eq ptr %i.fb, %i.em
  br i1 %.not.i.i178, label %.loopexit1772, label %.lr.ph.i.i175, !llvm.loop !1306

.loopexit1772:                                    ; preds = %.lr.ph.i.i175, %middle.block1692
  %i.fe = load i32, ptr %i.e, align 8, !tbaa !1288
  store i32 %i.fe, ptr %i.t, align 8, !tbaa !1288
  %.not19.i184 = icmp eq i64 %.pr, 0
  br i1 %.not19.i184, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %.lr.ph.i185.preheader

.lr.ph.i185.preheader:                            ; preds = %.loopexit1772
  %min.iters.check1697 = icmp ult i64 %.pr, 8
  br i1 %min.iters.check1697, label %.lr.ph.i185.preheader1843, label %vector.ph1698

vector.ph1698:                                    ; preds = %.lr.ph.i185.preheader
  %n.vec1700 = and i64 %.pr, -8                   ; 3 uses
  br label %vector.body1701

vector.body1701:                                  ; preds = %vector.body1701, %vector.ph1698
  %index1702 = phi i64 [ 0, %vector.ph1698 ], [ %index.next1706, %vector.body1701 ] ; 2 uses
  %vector.recur1703 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1698 ], [ %i.fi, %vector.body1701 ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %index1702 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %wide.load1704 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !3 ; 2 uses
  %wide.load1705 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !3 ; 3 uses
  %i.fh = lshr <4 x i32> %wide.load1704, splat (i32 31) ; 2 uses
  %i.fi = lshr <4 x i32> %wide.load1705, splat (i32 31) ; 3 uses
  %i.fj = shufflevector <4 x i32> %vector.recur1703, <4 x i32> %i.fh, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fk = shufflevector <4 x i32> %i.fh, <4 x i32> %i.fi, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fl = shl <4 x i32> %wide.load1704, splat (i32 1)
  %i.fm = shl <4 x i32> %wide.load1705, splat (i32 1)
  %i.fn = or disjoint <4 x i32> %i.fl, %i.fj
  %i.fo = or disjoint <4 x i32> %i.fm, %i.fk
  store <4 x i32> %i.fn, ptr %i.ff, align 4, !tbaa !3
  store <4 x i32> %i.fo, ptr %i.fg, align 4, !tbaa !3
  %index.next1706 = add nuw i64 %index1702, 8     ; 2 uses
  %i.fp = icmp eq i64 %index.next1706, %n.vec1700
  br i1 %i.fp, label %middle.block1707, label %vector.body1701, !llvm.loop !1307

middle.block1707:                                 ; preds = %vector.body1701
  %vector.recur.extract1708 = extractelement <4 x i32> %i.fi, i64 3 ; 2 uses
  %i.fq = extractelement <4 x i32> %wide.load1705, i64 3
  %cmp.n1709 = icmp eq i64 %.pr, %n.vec1700
  br i1 %cmp.n1709, label %._crit_edge.i189, label %.lr.ph.i185.preheader1843

.lr.ph.i185.preheader1843:                        ; preds = %.lr.ph.i185.preheader, %middle.block1707
  %.01418.i186.ph = phi i64 [ 0, %.lr.ph.i185.preheader ], [ %n.vec1700, %middle.block1707 ]
  %.017.i187.ph = phi i32 [ 0, %.lr.ph.i185.preheader ], [ %vector.recur.extract1708, %middle.block1707 ]
  br label %.lr.ph.i185

._crit_edge.i189:                                 ; preds = %.lr.ph.i185, %middle.block1707
  %.lcssa1630 = phi i32 [ %i.fq, %middle.block1707 ], [ %i.fs, %.lr.ph.i185 ]
  %.lcssa1629 = phi i32 [ %vector.recur.extract1708, %middle.block1707 ], [ %i.ft, %.lr.ph.i185 ]
  %.not.i190 = icmp sgt i32 %.lcssa1630, -1
  br i1 %.not.i190, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.r

.lr.ph.i185:                                      ; preds = %.lr.ph.i185.preheader1843, %.lr.ph.i185
  %.01418.i186 = phi i64 [ %i.fw, %.lr.ph.i185 ], [ %.01418.i186.ph, %.lr.ph.i185.preheader1843 ] ; 2 uses
  %.017.i187 = phi i32 [ %i.ft, %.lr.ph.i185 ], [ %.017.i187.ph, %.lr.ph.i185.preheader1843 ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %.01418.i186 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3  ; 3 uses
  %i.ft = lshr i32 %i.fs, 31                      ; 2 uses
  %i.fu = shl i32 %i.fs, 1
  %i.fv = or disjoint i32 %i.fu, %.017.i187
  store i32 %i.fv, ptr %i.fr, align 4, !tbaa !3
  %i.fw = add nuw i64 %.01418.i186, 1             ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %i.fw, %.pr
  br i1 %exitcond.not.i188, label %._crit_edge.i189, label %.lr.ph.i185, !llvm.loop !1308

bb.r:                                             ; preds = %._crit_edge.i189
  %i.fx = add i64 %.pr, 1                         ; 3 uses
  %i.fy = icmp ugt i64 %i.fx, %i.el
  br i1 %i.fy, label %bb.s, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

bb.s:                                             ; preds = %bb.r
  %i.fz = load ptr, ptr %i.q, align 8, !tbaa !1284
  invoke void %i.fz(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.fx)
          to label %.noexc195 unwind label %.loopexit.split-lp, !inline_history !1301

.noexc195:                                        ; preds = %bb.s
  %.pre.i.i193 = load i64, ptr %i.r, align 8, !tbaa !1296 ; 2 uses
  %.pre2.i.i194 = add i64 %.pre.i.i193, 1
  %.pre678 = load ptr, ptr %8, align 8, !tbaa !1286
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191: ; preds = %.noexc195, %bb.r
  %i.ga = phi ptr [ %13, %bb.r ], [ %.pre678, %.noexc195 ]
  %.pre-phi.i.i192 = phi i64 [ %i.fx, %bb.r ], [ %.pre2.i.i194, %.noexc195 ]
  %i.gb = phi i64 [ %.pr, %bb.r ], [ %.pre.i.i193, %.noexc195 ]
  store i64 %.pre-phi.i.i192, ptr %i.r, align 8, !tbaa !1296
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gb
  store i32 %.lcssa1629, ptr %i.gc, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

_ZN3fmt3v126detail6bigintlSEi.exit196:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191, %._crit_edge.i189, %.loopexit1772, %.thread, %.loopexit570
  %.188 = phi ptr [ null, %.loopexit570 ], [ %8, %.thread ], [ %8, %.loopexit1772 ], [ %8, %._crit_edge.i189 ], [ %8, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191 ] ; 3 uses
  %i.gd = load i128, ptr %0, align 16, !tbaa !1294 ; 3 uses
  %i.ge = and i128 %i.gd, 18446744073709551615
  %i.gf = load i64, ptr %i.c, align 8, !tbaa !1296 ; 4 uses
  %.not23.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196
  %i.gg = load ptr, ptr %5, align 8, !tbaa !1286  ; 3 uses
  %i.gh = lshr i128 %i.gd, 32
  %i.gi = and i128 %i.gh, 79228162514264337589248983040
  br label %bb.t

.preheader.i.i:                                   ; preds = %bb.t
  %.not20.i.i = icmp eq i128 %i.gt, 0
  br i1 %.not20.i.i, label %.lr.ph.i202, label %.lr.ph22.i.i

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i197
  %.019.i.i = phi i128 [ 0, %.lr.ph.i.i197 ], [ %i.gt, %bb.t ] ; 2 uses
  %.01718.i.i = phi i64 [ 0, %.lr.ph.i.i197 ], [ %i.gv, %bb.t ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %.01718.i.i ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i128                  ; 2 uses
  %i.gm = mul nuw nsw i128 %i.ge, %i.gl
  %i.gn = and i128 %.019.i.i, 4294967295
  %i.go = add nuw nsw i128 %i.gm, %i.gn           ; 2 uses
  %i.gp = mul nuw i128 %i.gi, %i.gl
  %i.gq = lshr i128 %i.go, 32
  %i.gr = lshr i128 %.019.i.i, 32
  %i.gs = add nuw i128 %i.gp, %i.gr
  %i.gt = add nuw i128 %i.gs, %i.gq               ; 3 uses
  %i.gu = trunc i128 %i.go to i32
  store i32 %i.gu, ptr %i.gj, align 4, !tbaa !3
  %i.gv = add nuw i64 %.01718.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gv, %i.gf
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.t, !llvm.loop !1309

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %i.gw = phi ptr [ %i.hd, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gg, %.preheader.i.i ]
  %i.gx = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gf, %.preheader.i.i ] ; 2 uses
  %.121.i.i = phi i128 [ %i.hg, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gt, %.preheader.i.i ] ; 2 uses
  %i.gy = trunc i128 %.121.i.i to i32
  %i.gz = add i64 %i.gx, 1                        ; 3 uses
  %i.ha = load i64, ptr %i.a, align 8, !tbaa !1287
  %i.hb = icmp ugt i64 %i.gz, %i.ha
  br i1 %i.hb, label %bb.u, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.u:                                             ; preds = %.lr.ph22.i.i
  %i.hc = load ptr, ptr %i.b, align 8, !tbaa !1284
  invoke void %i.hc(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.gz)
          to label %.noexc200 unwind label %.loopexit569, !inline_history !1310

.noexc200:                                        ; preds = %bb.u
  %.pre.i.i.i199 = load i64, ptr %i.c, align 8, !tbaa !1296 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i199, 1
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !1286
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %.noexc200, %.lr.ph22.i.i
  %i.hd = phi ptr [ %i.gw, %.lr.ph22.i.i ], [ %.pre.i, %.noexc200 ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ %i.gz, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %.noexc200 ] ; 4 uses
  %i.he = phi i64 [ %i.gx, %.lr.ph22.i.i ], [ %.pre.i.i.i199, %.noexc200 ]
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8, !tbaa !1296
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.he
  store i32 %i.gy, ptr %i.hf, align 4, !tbaa !3
  %i.hg = lshr i128 %.121.i.i, 32                 ; 2 uses
  %.not.i.i198 = icmp eq i128 %i.hg, 0
  br i1 %.not.i.i198, label %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !1311

_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit:       ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %.not19.i201 = icmp eq i64 %.pre-phi.i.i.i, 0
  br i1 %.not19.i201, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit
  %i.hh = phi ptr [ %i.hd, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit ], [ %i.gg, %.preheader.i.i ] ; 3 uses
  %i.hi = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit ], [ %i.gf, %.preheader.i.i ] ; 6 uses
  %i.hj = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1713 = icmp ult i64 %i.hi, 8
  br i1 %min.iters.check1713, label %scalar.ph1712.preheader, label %vector.ph1714

vector.ph1714:                                    ; preds = %.lr.ph.i202
  %n.vec1716 = and i64 %i.hi, -8                  ; 3 uses
  %broadcast.splatinsert1717 = insertelement <4 x i32> poison, i32 %i.hj, i64 0
  %broadcast.splat1718 = shufflevector <4 x i32> %broadcast.splatinsert1717, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1719 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1720 = shufflevector <4 x i32> %broadcast.splatinsert1719, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1721

vector.body1721:                                  ; preds = %vector.body1721, %vector.ph1714
  %index1722 = phi i64 [ 0, %vector.ph1714 ], [ %index.next1726, %vector.body1721 ] ; 2 uses
  %vector.recur1723 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1714 ], [ %i.hn, %vector.body1721 ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %index1722 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %wide.load1724 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !3 ; 2 uses
  %wide.load1725 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !3 ; 2 uses
  %i.hm = lshr <4 x i32> %wide.load1724, %broadcast.splat1718 ; 2 uses
  %i.hn = lshr <4 x i32> %wide.load1725, %broadcast.splat1718 ; 3 uses
  %i.ho = shufflevector <4 x i32> %vector.recur1723, <4 x i32> %i.hm, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hp = shufflevector <4 x i32> %i.hm, <4 x i32> %i.hn, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hq = shl <4 x i32> %wide.load1724, %broadcast.splat1720
  %i.hr = shl <4 x i32> %wide.load1725, %broadcast.splat1720
  %i.hs = add <4 x i32> %i.hq, %i.ho
  %i.ht = add <4 x i32> %i.hr, %i.hp
  store <4 x i32> %i.hs, ptr %i.hk, align 4, !tbaa !3
  store <4 x i32> %i.ht, ptr %i.hl, align 4, !tbaa !3
  %index.next1726 = add nuw i64 %index1722, 8     ; 2 uses
  %i.hu = icmp eq i64 %index.next1726, %n.vec1716
  br i1 %i.hu, label %middle.block1727, label %vector.body1721, !llvm.loop !1312

middle.block1727:                                 ; preds = %vector.body1721
  %vector.recur.extract1728 = extractelement <4 x i32> %i.hn, i64 3 ; 2 uses
  %cmp.n1729 = icmp eq i64 %i.hi, %n.vec1716
  br i1 %cmp.n1729, label %._crit_edge.i206, label %scalar.ph1712.preheader

scalar.ph1712.preheader:                          ; preds = %.lr.ph.i202, %middle.block1727
  %.01418.i203.ph = phi i64 [ 0, %.lr.ph.i202 ], [ %n.vec1716, %middle.block1727 ]
  %.017.i204.ph = phi i32 [ 0, %.lr.ph.i202 ], [ %vector.recur.extract1728, %middle.block1727 ]
  br label %scalar.ph1712

._crit_edge.i206:                                 ; preds = %scalar.ph1712, %middle.block1727
  %.lcssa1626 = phi i32 [ %vector.recur.extract1728, %middle.block1727 ], [ %i.hx, %scalar.ph1712 ] ; 2 uses
  %.not.i207 = icmp eq i32 %.lcssa1626, 0
  br i1 %.not.i207, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %bb.v

scalar.ph1712:                                    ; preds = %scalar.ph1712.preheader, %scalar.ph1712
  %.01418.i203 = phi i64 [ %i.ia, %scalar.ph1712 ], [ %.01418.i203.ph, %scalar.ph1712.preheader ] ; 2 uses
  %.017.i204 = phi i32 [ %i.hx, %scalar.ph1712 ], [ %.017.i204.ph, %scalar.ph1712.preheader ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %.01418.i203 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !3  ; 2 uses
  %i.hx = lshr i32 %i.hw, %i.hj                   ; 2 uses
  %i.hy = shl i32 %i.hw, %i.v
  %i.hz = add i32 %i.hy, %.017.i204
  store i32 %i.hz, ptr %i.hv, align 4, !tbaa !3
  %i.ia = add nuw i64 %.01418.i203, 1             ; 2 uses
  %exitcond.not.i205 = icmp eq i64 %i.ia, %i.hi
  br i1 %exitcond.not.i205, label %._crit_edge.i206, label %scalar.ph1712, !llvm.loop !1313

bb.v:                                             ; preds = %._crit_edge.i206
  %i.ib = add i64 %i.hi, 1                        ; 3 uses
  %i.ic = load i64, ptr %i.a, align 8, !tbaa !1287
  %i.id = icmp ugt i64 %i.ib, %i.ic
  br i1 %i.id, label %bb.w, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

bb.w:                                             ; preds = %bb.v
  %i.ie = load ptr, ptr %i.b, align 8, !tbaa !1284
  invoke void %i.ie(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.ib)
          to label %.noexc212 unwind label %.loopexit.split-lp, !inline_history !1301

.noexc212:                                        ; preds = %bb.w
  %.pre.i.i210 = load i64, ptr %i.c, align 8, !tbaa !1296 ; 2 uses
  %.pre2.i.i211 = add i64 %.pre.i.i210, 1
  %.pre679 = load ptr, ptr %5, align 8, !tbaa !1286
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208: ; preds = %.noexc212, %bb.v
  %i.if = phi ptr [ %i.hh, %bb.v ], [ %.pre679, %.noexc212 ]
  %.pre-phi.i.i209 = phi i64 [ %i.ib, %bb.v ], [ %.pre2.i.i211, %.noexc212 ]
  %i.ig = phi i64 [ %i.hi, %bb.v ], [ %.pre.i.i210, %.noexc212 ]
  store i64 %.pre-phi.i.i209, ptr %i.c, align 8, !tbaa !1296
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ig
  store i32 %.lcssa1626, ptr %i.ih, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit213

_ZN3fmt3v126detail6bigintlSEi.exit213:            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208, %._crit_edge.i206, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit
  %i.ii = load ptr, ptr %6, align 8, !tbaa !1286
  store i32 1, ptr %i.ii, align 4, !tbaa !3
  %i.ij = load i64, ptr %i.f, align 8, !tbaa !1287 ; 2 uses
  %.not8.i.i217.not = icmp eq i64 %i.ij, 0
  br i1 %.not8.i.i217.not, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.ik = load ptr, ptr %i.g, align 8, !tbaa !1284
  invoke void %i.ik(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef 1)
          to label %.noexc219 unwind label %.loopexit.split-lp, !inline_history !1314

.noexc219:                                        ; preds = %bb.x
  %.pre.i.i.i.i218 = load i64, ptr %i.f, align 8, !tbaa !1287 ; 2 uses
  %i.il = icmp ne i64 %.pre.i.i.i.i218, 0
  %i.im = zext i1 %i.il to i64
  br label %bb.y

bb.y:                                             ; preds = %.noexc219, %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.in = phi i64 [ %i.ij, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %.pre.i.i.i.i218, %.noexc219 ]
  %i.io = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %i.im, %.noexc219 ] ; 2 uses
  store i64 %i.io, ptr %i.h, align 8, !tbaa !1296
  %i.ip = load i32, ptr %i.w, align 16, !tbaa !1292
  %i.iq = sub nsw i32 %i.v, %i.ip                 ; 2 uses
  %i.ir = sdiv i32 %i.iq, 32
  store i32 %i.ir, ptr %i.j, align 8, !tbaa !1288
  %i.is = srem i32 %i.iq, 32                      ; 3 uses
  %i.it = icmp eq i32 %i.is, 0
  %.not19.i221 = icmp eq i64 %i.io, 0
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_M_default_appendEm:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.u, align 4, !tbaa !95
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.w, align 4, !tbaa !95
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 20
  store i32 0, ptr %i.x, align 4, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.y, align 4, !tbaa !95
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 28
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.aa, align 4, !tbaa !95
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 36
  store i32 0, ptr %i.ab, align 4, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.ac, align 4, !tbaa !95
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 44
  store i32 0, ptr %i.ad, align 4, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.ae, align 4, !tbaa !95
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 52
  store i32 0, ptr %i.af, align 4, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.ag, align 4, !tbaa !95
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 60
  store i32 0, ptr %i.ah, align 4, !tbaa !7
  %i.ai = add i64 %.057.i.i.i, -8                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1739

_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !146
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #43
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975) ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #44 ; 7 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 3 uses
  %xtraiter48 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.at, %.lr.ph.i.i.i30.prol ], [ %i.aq, %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.057.i.i.i32.prol = phi i64 [ %i.as, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit ]
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.08.i.i.i31.prol, align 4, !tbaa !95
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 4
  store i32 0, ptr %i.ar, align 4, !tbaa !7
  %i.as = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 8 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !1740

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.aq, %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.at, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.lr.ph.i.i.i30.prol ]
  %i.au = icmp ult i64 %1, 8
  br i1 %i.au, label %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bl, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.057.i.i.i32 = phi i64 [ %i.bk, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.08.i.i.i31, align 4, !tbaa !95
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 4
  store i32 0, ptr %i.av, align 4, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.aw, align 4, !tbaa !95
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.ay, align 4, !tbaa !95
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 20
  store i32 0, ptr %i.az, align 4, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.ba, align 4, !tbaa !95
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 28
  store i32 0, ptr %i.bb, align 4, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.bc, align 4, !tbaa !95
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 36
  store i32 0, ptr %i.bd, align 4, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.be, align 4, !tbaa !95
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 44
  store i32 0, ptr %i.bf, align 4, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.bg, align 4, !tbaa !95
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 52
  store i32 0, ptr %i.bh, align 4, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.bi, align 4, !tbaa !95
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 60
  store i32 0, ptr %i.bj, align 4, !tbaa !7
  %i.bk = add i64 %.057.i.i.i32, -8               ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  %.not.i.i.i33.7 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1739

_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_ET_S4_T0_RSaIT1_E.exit35
  %i.bm = sub i64 %i.d, %i.e
  %i.bn = add i64 %i.bm, -8                       ; 2 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bn, 72
  %i.bq = sub i64 %i.e, %i.ap
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i37.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i37.preheader
  %n.vec = and i64 %i.bp, 4611686018427387900     ; 3 uses
  %i.br = shl i64 %n.vec, 3                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ao, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.c, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.bu ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.c, i64 %i.bu ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  %i.bv = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep44, align 4, !alias.scope !1744, !noalias !1741
  %wide.load45 = load <2 x i64>, ptr %i.bv, align 4, !alias.scope !1744, !noalias !1741
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !1741, !noalias !1744
  store <2 x i64> %wide.load45, ptr %i.bw, align 4, !alias.scope !1741, !noalias !1744
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !1746

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37.preheader47

.lr.ph.i.i.i37.preheader47:                       ; preds = %.lr.ph.i.i.i37.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i37.preheader ], [ %i.bs, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i37.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader47, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i37 ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i37.preheader47 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i37 ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i37.preheader47 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  %i.by = load i64, ptr %.0911.i.i.i, align 4, !alias.scope !1744, !noalias !1741
  store i64 %i.by, ptr %.012.i.i.i, align 4, !alias.scope !1741, !noalias !1744
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i38 = icmp eq ptr %i.bz, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !1747

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %middle.block, %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.cb = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cb) #42
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8, !tbaa !115
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %1
  store ptr %i.cc, ptr %i.a, align 8, !tbaa !146
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.cd, ptr %i.h, align 8, !tbaa !116
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116
  %i.f = load ptr, ptr %0, align 8, !tbaa !115    ; 8 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775800
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
  unreachable

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #44 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i
  %i.m = and i64 %i.c, 9223372036854775800
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr align 4 %1, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit: ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #42
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, %bb.d
  store ptr %i.l, ptr %0, align 8, !tbaa !115
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !146
  store ptr %i.o, ptr %i.d, align 8, !tbaa !116
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !146
  %i.r = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.s = sub i64 %i.r, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.s, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKN11OpenImageIO4v3_18TypeDescElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp sgt i64 %i.c, 8
  br i1 %i.t, label %bb.g, label %bb.h, !prof !145

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %1, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.f
  %i.u = icmp eq i64 %i.c, 8
  br i1 %i.u, label %bb.i, label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.h
  %i.v = load i64, ptr %1, align 4
  store i64 %i.v, ptr %i.f, align 4
  br label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit

_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.w = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !146
  %.not.i16 = icmp eq ptr %i.x, %i.w
  br i1 %.not.i16, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE15_M_erase_at_endEPS2_.exit, label %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit
  store ptr %i.w, ptr %i.p, align 8, !tbaa !146
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZSt9__advanceIPKN11OpenImageIO4v3_18TypeDescElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.s ; 5 uses
  %i.y = icmp sgt i64 %i.s, 8
  br i1 %i.y, label %bb.j, label %bb.k, !prof !145

bb.j:                                             ; preds = %_ZSt9__advanceIPKN11OpenImageIO4v3_18TypeDescElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %1, i64 %i.s, i1 false)
  br label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17

bb.k:                                             ; preds = %_ZSt9__advanceIPKN11OpenImageIO4v3_18TypeDescElEvRT_T0_St26random_access_iterator_tag.exit
  %i.z = icmp eq i64 %i.s, 8
  br i1 %i.z, label %bb.l, label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17

bb.l:                                             ; preds = %bb.k
  %i.aa = load i64, ptr %1, align 4
  store i64 %i.aa, ptr %i.f, align 4
  br label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17

_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17: ; preds = %bb.j, %bb.k, %bb.l
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !146 ; 6 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %.not9.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN11OpenImageIO4v3_18TypeDescEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %i.ad = add i64 %i.h, %3
  %i.ae = add i64 %i.r, %4
  %i.af = sub i64 %i.ad, %i.ae
  %5 = add i64 %i.af, -8                          ; 2 uses
  %i.ag = lshr i64 %5, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ai = add i64 %i.h, %i.ac
  %i.aj = add i64 %i.r, %i.b
  %i.ak = sub i64 %i.aj, %i.ai
  %diff.check = icmp ugt i64 %i.ak, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.ab, i64 %i.al  ; 2 uses
  %i.an = getelementptr i8, ptr %.sink.i, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ao ; 2 uses
  %next.gep27 = getelementptr i8, ptr %.sink.i, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 4
  %wide.load28 = load <2 x i64>, ptr %i.ap, align 4
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load28, ptr %i.aq, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1748

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKN11OpenImageIO4v3_18TypeDescEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader30

.lr.ph.i.i.i.i.preheader30:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %.sink.i, %vector.memcheck ], [ %.sink.i, %.lr.ph.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader30, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader30 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader30 ] ; 2 uses
  %i.as = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.as, ptr %.011.i.i.i.i, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN11OpenImageIO4v3_18TypeDescEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1749

_ZSt22__uninitialized_copy_aIPKN11OpenImageIO4v3_18TypeDescEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ab, %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17 ], [ %i.am, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.p, align 8, !tbaa !146
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE15_M_erase_at_endEPS2_.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i, %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit, %_ZSt22__uninitialized_copy_aIPKN11OpenImageIO4v3_18TypeDescEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !105
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !107
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !1727
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !1727
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !111

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEEC2EPKcS6_RKSt6localeNSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::allocator.241", align 1 ; 3 uses
  %6 = alloca %"class.std::locale", align 8       ; 4 uses
  %i.a = and i32 %4, 1008
  switch i32 %i.a, label %bb.c [
    i32 16, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 32, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 64, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 128, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 256, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 512, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = or i32 %4, 16
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 14, ptr noundef nonnull @.str.128) #43
  unreachable

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0.i = phi i32 [ %i.b, %bb.b ], [ %4, %bb.a ], [ %4, %bb.a ], [ %4, %bb.a ], [ %4, %bb.a ], [ %4, %bb.a ], [ %4, %bb.a ] ; 2 uses
  store i32 %.0.i, ptr %0, align 8, !tbaa !1750
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #41
  invoke void @_ZNSt8__detail8_ScannerIcEC2EPKcS3_NSt15regex_constants18syntax_option_typeESt6locale(ptr noundef nonnull align 8 dereferenceable(248) %i.c, ptr noundef %1, ptr noundef %2, i32 noundef %.0.i, ptr noundef nonnull %6)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41, !noalias !1768
  store ptr null, ptr %i.d, align 8, !tbaa !1771, !alias.scope !1768
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvEJRKSt6localeRNSt15regex_constants18syntax_option_typeEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %0)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41, !noalias !1768
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !97
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 0, ptr %i.h, align 8, !tbaa !98
  store i8 0, ptr %i.g, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 noundef 0)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv.exit unwind label %bb.r

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv.exit: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !1771
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr %i.l, ptr %i.j, align 8, !tbaa !1772
  %i.m = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #41
  %i.n = load ptr, ptr %3, align 8, !tbaa !1073
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1079
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1080 ; 2 uses
  %.not.not.i = icmp eq ptr %i.r, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv.exit
  invoke void @_ZSt16__throw_bad_castv() #43
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.r, ptr %i.s, align 8, !tbaa !1773
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !1771 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1774
  %i.w = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE23_M_insert_subexpr_beginEv(ptr noundef nonnull align 8 dereferenceable(88) %i.t)
          to label %bb.g unwind label %bb.t       ; 2 uses

end_hunk_3
begin_hunk_4_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !136
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !155
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !155
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !133 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !136
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #42
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !134
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !2114 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !2004 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ugt i64 %i.az, 9223372036854775806
  br i1 %i.ba, label %.noexc.i.i15, label %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, !prof !111

.noexc.i.i15:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #44
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bc = phi ptr [ null, %bb.j ], [ %i.bb, %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !2004
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !2114
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !1998
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !1997 ; 8 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !1997 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not7.i.i.i.i.i, label %.loopexit30, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bi = ptrtoaddr ptr %i.bg to i64
  %i.bj = ptrtoaddr ptr %i.bc to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %i.bg to i64
  %i.bm = add i64 %i.bk, -2
  %i.bn = sub i64 %i.bm, %i.bl                    ; 3 uses
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = add nuw i64 %i.bo, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bn, 6
  %i.bq = sub i64 %i.bi, %i.bj
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i64 %i.bn, 30
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, -16                     ; 4 uses
  %i.br = shl i64 %n.vec, 1                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bc, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bu ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.bg, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep47, align 1
  %wide.load48 = load <8 x i16>, ptr %i.bv, align 1
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1
  store <8 x i16> %wide.load48, ptr %i.bw, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !2115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit30, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !685

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec51 = and i64 %i.bp, -4                    ; 3 uses
  %i.by = shl i64 %n.vec51, 1                     ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bc, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bg, i64 %i.by
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next56, %vec.epilog.vector.body ] ; 2 uses
  %i.cb = shl i64 %index52, 1                     ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.bc, i64 %i.cb
  %next.gep54 = getelementptr i8, ptr %i.bg, i64 %i.cb
  %wide.load55 = load <4 x i16>, ptr %next.gep54, align 1
  store <4 x i16> %wide.load55, ptr %next.gep53, align 1
  %index.next56 = add nuw i64 %index52, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next56, %n.vec51
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2116

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n57 = icmp eq i64 %i.bp, %n.vec51
  br i1 %cmp.n57, label %.loopexit30, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.cd = load i16, ptr %.sroa.04.08.i.i.i.i.i, align 1
  store i16 %i.cd, ptr %.09.i.i.i.i.i, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %i.bh
  br i1 %.not.i.i.i.i.i, label %.loopexit30, label %.lr.ph.i.i.i.i.i, !llvm.loop !2117

.loopexit30:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc17 ], [ %i.bz, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !2114
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2076 ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !2003 ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i.i.i.i18, label %.noexc27, label %bb.l

bb.l:                                             ; preds = %.loopexit30
  %i.co = icmp ugt i64 %i.cn, 9223372036854775804
  br i1 %i.co, label %.noexc.i.i25, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !111

.noexc.i.i25:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc26 unwind label %bb.o

.noexc26:                                         ; preds = %.noexc.i.i25
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #44
          to label %.noexc27 unwind label %bb.o

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit30
  %i.cq = phi ptr [ null, %.loopexit30 ], [ %i.cp, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !2003
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !2076
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !2000
  %i.cu = load ptr, ptr %i.ch, align 8, !tbaa !1999 ; 6 uses
  %i.cv = load ptr, ptr %i.ci, align 8, !tbaa !1999 ; 3 uses
  %.not7.i.i.i.i.i19 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not7.i.i.i.i.i19, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %.noexc27
  %i.cw = ptrtoaddr ptr %i.cu to i64
  %i.cx = ptrtoaddr ptr %i.cq to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = ptrtoint ptr %i.cu to i64
  %2 = sub i64 %i.cy, %i.cz
  %3 = add i64 %2, -4                             ; 2 uses
  %i.da = lshr i64 %3, 2
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check62 = icmp ult i64 %3, 44
  %i.dc = sub i64 %i.cw, %i.cx
  %diff.check61 = icmp ugt i64 %i.dc, -32
  %or.cond76 = or i1 %min.iters.check62, %diff.check61
  br i1 %or.cond76, label %.lr.ph.i.i.i.i.i20.preheader77, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %n.vec65 = and i64 %i.db, 9223372036854775800   ; 3 uses
  %i.dd = shl i64 %n.vec65, 2                     ; 2 uses
  %i.de = getelementptr i8, ptr %i.cq, i64 %i.dd  ; 2 uses
  %i.df = getelementptr i8, ptr %i.cu, i64 %i.dd
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %i.dg = shl i64 %index67, 2                     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.cq, i64 %i.dg ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.cu, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load70 = load <4 x i32>, ptr %next.gep69, align 2
  %wide.load71 = load <4 x i32>, ptr %i.dh, align 2
  %i.di = getelementptr i8, ptr %next.gep68, i64 16
  store <4 x i32> %wide.load70, ptr %next.gep68, align 2
  store <4 x i32> %wide.load71, ptr %i.di, align 2
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.dj = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.dj, label %middle.block73, label %vector.body66, !llvm.loop !2118

middle.block73:                                   ; preds = %vector.body66
  %cmp.n74 = icmp eq i64 %i.db, %n.vec65
  br i1 %cmp.n74, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader77

.lr.ph.i.i.i.i.i20.preheader77:                   ; preds = %.lr.ph.i.i.i.i.i20.preheader, %middle.block73
  %.09.i.i.i.i.i21.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.de, %middle.block73 ]
  %.sroa.04.08.i.i.i.i.i22.ph = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.df, %middle.block73 ]
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20.preheader77, %.lr.ph.i.i.i.i.i20
  %.09.i.i.i.i.i21 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i20 ], [ %.09.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i20.preheader77 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i22 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i20 ], [ %.sroa.04.08.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i20.preheader77 ] ; 2 uses
  %i.dk = load i32, ptr %.sroa.04.08.i.i.i.i.i22, align 2
  store i32 %i.dk, ptr %.09.i.i.i.i.i21, align 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i22, i64 4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i21, i64 4 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %i.dl, %i.cv
  br i1 %.not.i.i.i.i.i23, label %.loopexit, label %.lr.ph.i.i.i.i.i20, !llvm.loop !2119

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i20, %middle.block73, %.noexc27
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.cq, %.noexc27 ], [ %i.de, %middle.block73 ], [ %i.dm, %.lr.ph.i.i.i.i.i20 ]
  store ptr %.0.lcssa.i.i.i.i.i24, ptr %i.cr, align 8, !tbaa !2076
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dn, ptr noundef nonnull align 8 dereferenceable(56) %i.do, i64 56, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i25
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %i.as, align 8, !tbaa !2004 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = load ptr, ptr %i.bf, align 8, !tbaa !1998
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dw) #42
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dq, %bb.n ], [ %i.dr, %bb.o ], [ %i.dr, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #41
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.dp, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.dx = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.dy = load ptr, ptr %i.l, align 8, !tbaa !118
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.eb) #42
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2120, !nonnull !143, !align !1133
  %i.c = load ptr, ptr %1, align 8, !tbaa !113    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext false) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.146) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1995
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !1996
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2076 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2000
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !2076
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !2076
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !2003 ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.140) #43
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #44 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %i.an = sub i64 %i.aa, %i.ab
  %i.ao = add i64 %i.an, -4                       ; 2 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 44
  %i.ar = sub i64 %i.ab, %i.am
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = or i1 %min.iters.check, %diff.check
end_hunk_4
begin_hunk_5_@_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation:bb.a
bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !2016
  store ptr %i.a, ptr %0, align 8, !tbaa !2016
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !2016
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #44 ; 3 uses
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 160) #42
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !2016
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !2016   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.e) #41
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 160) #42
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.g, %bb.f, %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !117    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !111

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #43
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #44
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !117
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !118
  %i.m = load ptr, ptr %1, align 8, !tbaa !119    ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !145

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !95
  store i8 %i.t, ptr %i.i, align 1, !tbaa !95
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !120
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !134  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !133  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !111

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #44
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !133
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !134
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !136
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !155
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !155
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !133 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !136
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #42
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !134
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2076 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !2003 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ugt i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %.noexc.i.i15, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !111

.noexc.i.i15:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #44
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.be = phi ptr [ null, %bb.k ], [ %i.bd, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.be, ptr %i.au, align 8, !tbaa !2003
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !2076
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !2000
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !1999 ; 6 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !1999 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc17
  %i.bk = ptrtoaddr ptr %i.bi to i64
  %i.bl = ptrtoaddr ptr %i.be to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = ptrtoint ptr %i.bi to i64
  %2 = sub i64 %i.bm, %i.bn
  %3 = add i64 %2, -4                             ; 2 uses
  %i.bo = lshr i64 %3, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
  %i.bq = sub i64 %i.bk, %i.bl
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bp, 9223372036854775800     ; 3 uses
  %i.br = shl i64 %n.vec, 2                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.be, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bi, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bu ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.bi, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep26, align 2
  %wide.load27 = load <4 x i32>, ptr %i.bv, align 2
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2
  store <4 x i32> %wide.load27, ptr %i.bw, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !2144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.preheader29:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %i.by = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 2
  store i32 %i.by, ptr %.09.i.i.i.i.i, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, %i.bj
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2145

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.be, %.noexc17 ], [ %i.bs, %middle.block ], [ %i.ca, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !2076
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, ptr noundef nonnull align 8 dereferenceable(64) %i.cc, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.as) #41
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.o ], [ %i.ce, %bb.n ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #41
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.cd, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ch = load ptr, ptr %i.l, align 8, !tbaa !118
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #42
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2134 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !2133   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775744
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i, !prof !111

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #44
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !2133
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !2134
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !2015
  %i.m = load ptr, ptr %1, align 8, !tbaa !2014   ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2014 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2146

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #41 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_(ptr noundef %i.i, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #43
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #46
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !2134
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !2133   ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !2015
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #42
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
end_hunk_5
begin_hunk_6_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEC2ERKS4_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !136
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !155
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !155
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !133 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !136
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #42
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !134
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !2114 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !2004 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ugt i64 %i.az, 9223372036854775806
  br i1 %i.ba, label %.noexc.i.i15, label %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, !prof !111

.noexc.i.i15:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #44
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bc = phi ptr [ null, %bb.j ], [ %i.bb, %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !2004
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !2114
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !1998
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !1997 ; 8 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !1997 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not7.i.i.i.i.i, label %.loopexit30, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bi = ptrtoaddr ptr %i.bg to i64
  %i.bj = ptrtoaddr ptr %i.bc to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %i.bg to i64
  %i.bm = add i64 %i.bk, -2
  %i.bn = sub i64 %i.bm, %i.bl                    ; 3 uses
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = add nuw i64 %i.bo, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bn, 6
  %i.bq = sub i64 %i.bi, %i.bj
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i64 %i.bn, 30
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, -16                     ; 4 uses
  %i.br = shl i64 %n.vec, 1                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bc, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bu ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.bg, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep47, align 1
  %wide.load48 = load <8 x i16>, ptr %i.bv, align 1
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1
  store <8 x i16> %wide.load48, ptr %i.bw, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !2161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit30, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !685

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec51 = and i64 %i.bp, -4                    ; 3 uses
  %i.by = shl i64 %n.vec51, 1                     ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bc, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bg, i64 %i.by
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next56, %vec.epilog.vector.body ] ; 2 uses
  %i.cb = shl i64 %index52, 1                     ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.bc, i64 %i.cb
  %next.gep54 = getelementptr i8, ptr %i.bg, i64 %i.cb
  %wide.load55 = load <4 x i16>, ptr %next.gep54, align 1
  store <4 x i16> %wide.load55, ptr %next.gep53, align 1
  %index.next56 = add nuw i64 %index52, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next56, %n.vec51
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2162

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n57 = icmp eq i64 %i.bp, %n.vec51
  br i1 %cmp.n57, label %.loopexit30, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.cd = load i16, ptr %.sroa.04.08.i.i.i.i.i, align 1
  store i16 %i.cd, ptr %.09.i.i.i.i.i, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %i.bh
  br i1 %.not.i.i.i.i.i, label %.loopexit30, label %.lr.ph.i.i.i.i.i, !llvm.loop !2163

.loopexit30:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc17 ], [ %i.bz, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !2114
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2076 ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !2003 ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i.i.i.i18, label %.noexc27, label %bb.l

bb.l:                                             ; preds = %.loopexit30
  %i.co = icmp ugt i64 %i.cn, 9223372036854775804
  br i1 %i.co, label %.noexc.i.i25, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !111

.noexc.i.i25:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc26 unwind label %bb.o

.noexc26:                                         ; preds = %.noexc.i.i25
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #44
          to label %.noexc27 unwind label %bb.o

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit30
  %i.cq = phi ptr [ null, %.loopexit30 ], [ %i.cp, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !2003
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !2076
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !2000
  %i.cu = load ptr, ptr %i.ch, align 8, !tbaa !1999 ; 6 uses
  %i.cv = load ptr, ptr %i.ci, align 8, !tbaa !1999 ; 3 uses
  %.not7.i.i.i.i.i19 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not7.i.i.i.i.i19, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %.noexc27
  %i.cw = ptrtoaddr ptr %i.cu to i64
  %i.cx = ptrtoaddr ptr %i.cq to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = ptrtoint ptr %i.cu to i64
  %2 = sub i64 %i.cy, %i.cz
  %3 = add i64 %2, -4                             ; 2 uses
  %i.da = lshr i64 %3, 2
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check62 = icmp ult i64 %3, 44
  %i.dc = sub i64 %i.cw, %i.cx
  %diff.check61 = icmp ugt i64 %i.dc, -32
  %or.cond76 = or i1 %min.iters.check62, %diff.check61
  br i1 %or.cond76, label %.lr.ph.i.i.i.i.i20.preheader77, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %n.vec65 = and i64 %i.db, 9223372036854775800   ; 3 uses
  %i.dd = shl i64 %n.vec65, 2                     ; 2 uses
  %i.de = getelementptr i8, ptr %i.cq, i64 %i.dd  ; 2 uses
  %i.df = getelementptr i8, ptr %i.cu, i64 %i.dd
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %i.dg = shl i64 %index67, 2                     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.cq, i64 %i.dg ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.cu, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load70 = load <4 x i32>, ptr %next.gep69, align 2
  %wide.load71 = load <4 x i32>, ptr %i.dh, align 2
  %i.di = getelementptr i8, ptr %next.gep68, i64 16
  store <4 x i32> %wide.load70, ptr %next.gep68, align 2
  store <4 x i32> %wide.load71, ptr %i.di, align 2
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.dj = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.dj, label %middle.block73, label %vector.body66, !llvm.loop !2164

middle.block73:                                   ; preds = %vector.body66
  %cmp.n74 = icmp eq i64 %i.db, %n.vec65
  br i1 %cmp.n74, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader77

.lr.ph.i.i.i.i.i20.preheader77:                   ; preds = %.lr.ph.i.i.i.i.i20.preheader, %middle.block73
  %.09.i.i.i.i.i21.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.de, %middle.block73 ]
  %.sroa.04.08.i.i.i.i.i22.ph = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.df, %middle.block73 ]
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20.preheader77, %.lr.ph.i.i.i.i.i20
  %.09.i.i.i.i.i21 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i20 ], [ %.09.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i20.preheader77 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i22 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i20 ], [ %.sroa.04.08.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i20.preheader77 ] ; 2 uses
  %i.dk = load i32, ptr %.sroa.04.08.i.i.i.i.i22, align 2
  store i32 %i.dk, ptr %.09.i.i.i.i.i21, align 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i22, i64 4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i21, i64 4 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %i.dl, %i.cv
  br i1 %.not.i.i.i.i.i23, label %.loopexit, label %.lr.ph.i.i.i.i.i20, !llvm.loop !2165

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i20, %middle.block73, %.noexc27
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.cq, %.noexc27 ], [ %i.de, %middle.block73 ], [ %i.dm, %.lr.ph.i.i.i.i.i20 ]
  store ptr %.0.lcssa.i.i.i.i.i24, ptr %i.cr, align 8, !tbaa !2076
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dn, ptr noundef nonnull align 8 dereferenceable(64) %i.do, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i25
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %i.as, align 8, !tbaa !2004 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = load ptr, ptr %i.bf, align 8, !tbaa !1998
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dw) #42
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dq, %bb.n ], [ %i.dr, %bb.o ], [ %i.dr, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #41
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.dp, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.dx = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.dy = load ptr, ptr %i.l, align 8, !tbaa !118
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.eb) #42
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2166, !nonnull !143, !align !1133
  %i.c = load ptr, ptr %1, align 8, !tbaa !113    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext true) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.146) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1995
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !1996
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2076 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2000
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !2076
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !2076
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !2003 ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.140) #43
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #44 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %i.an = sub i64 %i.aa, %i.ab
  %i.ao = add i64 %i.an, -4                       ; 2 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 44
  %i.ar = sub i64 %i.ab, %i.am
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = or i1 %min.iters.check, %diff.check
end_hunk_6
begin_hunk_7_@_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation:bb.a
bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !2028
  store ptr %i.a, ptr %0, align 8, !tbaa !2028
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !2028
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #44 ; 3 uses
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 160) #42
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !2028
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !2028   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.e) #41
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 160) #42
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.g, %bb.f, %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !117    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !111

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #43
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #44
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !117
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !118
  %i.m = load ptr, ptr %1, align 8, !tbaa !119    ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !145

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !95
  store i8 %i.t, ptr %i.i, align 1, !tbaa !95
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !120
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !134  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !133  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !111

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #44
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !133
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !134
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !136
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !155
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !155
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !133 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !136
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #42
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !134
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2076 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !2003 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ugt i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %.noexc.i.i15, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !111

.noexc.i.i15:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #44
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.be = phi ptr [ null, %bb.k ], [ %i.bd, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.be, ptr %i.au, align 8, !tbaa !2003
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !2076
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !2000
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !1999 ; 6 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !1999 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc17
  %i.bk = ptrtoaddr ptr %i.bi to i64
  %i.bl = ptrtoaddr ptr %i.be to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = ptrtoint ptr %i.bi to i64
  %2 = sub i64 %i.bm, %i.bn
  %3 = add i64 %2, -4                             ; 2 uses
  %i.bo = lshr i64 %3, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
  %i.bq = sub i64 %i.bk, %i.bl
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bp, 9223372036854775800     ; 3 uses
  %i.br = shl i64 %n.vec, 2                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.be, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bi, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bu ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.bi, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep26, align 2
  %wide.load27 = load <4 x i32>, ptr %i.bv, align 2
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2
  store <4 x i32> %wide.load27, ptr %i.bw, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !2182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.preheader29:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %i.by = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 2
  store i32 %i.by, ptr %.09.i.i.i.i.i, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, %i.bj
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2183

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.be, %.noexc17 ], [ %i.bs, %middle.block ], [ %i.ca, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !2076
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, ptr noundef nonnull align 8 dereferenceable(64) %i.cc, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.as) #41
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.o ], [ %i.ce, %bb.n ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #41
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.cd, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ch = load ptr, ptr %i.l, align 8, !tbaa !118
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #42
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_BracketMatcher", align 16 ; 26 uses
  %3 = alloca %"struct.std::__detail::_Compiler<std::__cxx11::regex_traits<char>>::_BracketState", align 1 ; 8 uses
  %4 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %5 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1919, !nonnull !143, !align !1133
  %i.c = zext i1 %1 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %2, i8 0, i64 99, i1 false)
  store ptr %i.b, ptr %i.d, align 8, !tbaa !1772
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i8 %i.c, ptr %i.e, align 16, !tbaa !1980
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store i8 0, ptr %3, align 1, !tbaa !2184
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 3 uses
  store i8 0, ptr %i.g, align 1, !tbaa !2187
  %i.h = invoke noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_M_try_charEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.k = load i8, ptr %i.j, align 1, !tbaa !95
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split

.loopexit:                                        ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.a, %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE11_M_add_charEc.exit, %bb.e, %bb.h, %bb.i, %bb.j, %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1786
  %i.o = icmp eq i32 %i.n, 28
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1787
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1788
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc
  store i32 27, ptr %i.m, align 8, !tbaa !1786
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split

bb.g:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1789
  switch i32 %i.x, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split [
    i32 0, label %bb.h
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.l)
          to label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %bb.g
  invoke void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.l)
          to label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.g
  invoke void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.l)
          to label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split unwind label %.loopexit.split-lp

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.g, %bb.c
  %.sink = phi i8 [ %i.k, %bb.c ], [ 45, %bb.g ], [ 45, %bb.f ], [ 45, %bb.h ], [ 45, %bb.i ], [ 45, %bb.j ]
  store i8 1, ptr %3, align 1, !tbaa !2184
  store i8 %.sink, ptr %i.g, align 1, !tbaa !2187
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split, %bb.d
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader, %bb.k
  %i.y = invoke noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb0ELb0EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(152) %2)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
end_hunk_7

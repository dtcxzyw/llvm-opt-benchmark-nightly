Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/devector_test?download=true
inline.NumInlined: 42022
inline.NumDeleted: 5232
loop-unroll.NumCompletelyUnrolled: 330
loop-unroll.NumRuntimeUnrolled: 853
loop-unroll.NumUnrolled: 1191
begin_hunk_0_@_ZN5boost9container4test20vector_capacity_testINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %bb.i, %.preheader.i
  %i.bh = load i64, ptr %i.g, align 8, !tbaa !620 ; 3 uses
  %.not.i56 = icmp eq i64 %i.bh, 0
  br i1 %.not.i56, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65, label %_ZNK5boost9container8devectorINS0_4test11movable_intESaIS3_EvE8capacityEv.exit.i58

_ZNK5boost9container8devectorINS0_4test11movable_intESaIS3_EvE8capacityEv.exit.i58: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit
  %i.bi = udiv i64 %i.bh, 10
  %i.bj = sub nuw i64 %i.bh, %i.bi                ; 3 uses
  %i.bk = shl i64 %i.bj, 1                        ; 6 uses
  %i.bl = icmp sgt i64 %i.bj, 0
  br i1 %i.bl, label %bb.j, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE7reserveEm.exit60

bb.j:                                             ; preds = %_ZNK5boost9container8devectorINS0_4test11movable_intESaIS3_EvE8capacityEv.exit.i58
  %i.bm = add i64 %i.bk, 8
  %i.bn = udiv i64 %i.bm, 9
  %i.bo = mul i64 %i.bn, 10                       ; 2 uses
  %.neg.i59 = sub i64 %i.av, %i.au
  %i.bp = add i64 %.neg.i59, %i.bo
  %i.bq = lshr i64 %i.bp, 1
  tail call void @_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE13reallocate_atEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.bo, i64 noundef %i.bq)
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE7reserveEm.exit60

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE7reserveEm.exit60: ; preds = %_ZNK5boost9container8devectorINS0_4test11movable_intESaIS3_EvE8capacityEv.exit.i58, %bb.j
  %i.br = icmp ugt i64 %i.bk, 2305843009213693951
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE7reserveEm.exit60
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.691) #28
  unreachable

bb.l:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE7reserveEm.exit60
  %i.bs = load ptr, ptr %i.z, align 8, !tbaa !350
  %i.bt = load ptr, ptr %1, align 8, !tbaa !349   ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  %i.by = icmp ult i64 %i.bx, %i.bk
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !600 ; 2 uses
  br i1 %i.by, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61: ; preds = %bb.l
  %i.bz = ptrtoint ptr %.pre to i64
  %i.ca = sub i64 %i.bz, %i.bv
  %i.cb = shl i64 %i.bj, 3
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #29 ; 6 uses
  %i.cd = load ptr, ptr %1, align 8, !tbaa !349   ; 4 uses
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !600
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr align 4 %i.cd, i64 %i.ch, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62: ; preds = %bb.m, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61
  %.not.i8.i63 = icmp eq ptr %i.cd, null
  br i1 %.not.i8.i63, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !350
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cl) #30
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62
  store ptr %i.cc, ptr %1, align 8, !tbaa !349
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca ; 2 uses
  store ptr %i.cm, ptr %i.r, align 8, !tbaa !600
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bk
  store ptr %i.cn, ptr %i.z, align 8, !tbaa !350
  %.pre245 = ptrtoint ptr %i.cc to i64
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65

_ZNSt6vectorIiSaIiEE7reserveEm.exit65:            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit, %bb.l, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64
  %.pre-phi246 = phi i64 [ %.pre-phi242, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bv, %bb.l ], [ %.pre245, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 5 uses
  %i.co = phi ptr [ %i.as, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bt, %bb.l ], [ %i.cc, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 7 uses
  %i.cp = phi ptr [ %i.at, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %.pre, %bb.l ], [ %i.cm, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 2 uses
  %i.cq = phi i64 [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bk, %bb.l ], [ %i.bk, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 22 uses
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !617 ; 4 uses
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !618 ; 9 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 2 uses
  %i.cu = ptrtoint ptr %i.cp to i64
  %i.cv = sub i64 %i.cu, %.pre-phi246
  %i.cw = ashr exact i64 %i.cv, 2
  %.not.i66 = icmp eq i64 %i.ct, %i.cw
  br i1 %.not.i66, label %bb.o, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit65
  %i.cx = load ptr, ptr %0, align 8, !tbaa !619   ; 5 uses
  %.idx23.i68 = shl nuw nsw i64 %i.cs, 2          ; 3 uses
  %.idx.i69 = shl nuw nsw i64 %i.cr, 2            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i69
  %gepdiff.i70 = sub nsw i64 %.idx.i69, %.idx23.i68
  %i.cz = ashr exact i64 %gepdiff.i70, 2
  %.not19.i71 = icmp eq i64 %i.cz, %i.ct
  br i1 %.not19.i71, label %.preheader.i72, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i72:                                   ; preds = %bb.o
  %.not2124.i73 = icmp samesign eq i64 %.idx23.i68, %.idx.i69
  br i1 %.not2124.i73, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79, label %.lr.ph.preheader.i74

.lr.ph.preheader.i74:                             ; preds = %.preheader.i72
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx23.i68
  br label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.p, %.lr.ph.preheader.i74
  %.01826.i76 = phi ptr [ %i.de, %bb.p ], [ %i.da, %.lr.ph.preheader.i74 ] ; 2 uses
  %.sroa.0.025.i77 = phi ptr [ %i.df, %bb.p ], [ %i.co, %.lr.ph.preheader.i74 ] ; 2 uses
  %i.db = load i32, ptr %.sroa.0.025.i77, align 4, !tbaa !259
  %i.dc = load i32, ptr %.01826.i76, align 4, !tbaa !612
  %i.dd = icmp eq i32 %i.dc, %i.db
  br i1 %i.dd, label %bb.p, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.p:                                             ; preds = %.lr.ph.i75
  %i.de = getelementptr inbounds nuw i8, ptr %.01826.i76, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i77, i64 4
  %.not21.i78 = icmp eq ptr %i.de, %i.cy
  br i1 %.not21.i78, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79, label %.lr.ph.i75, !llvm.loop !85

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79: ; preds = %bb.p, %.preheader.i72
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cr
  %.not5.i.i.i.i = icmp eq i64 %i.cr, %i.cs
  br i1 %.not5.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i ], [ %i.dh, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i, align 4, !tbaa !612
  %i.di = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dk, %i.dg
  br i1 %.not.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !86

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit: ; preds = %.lr.ph.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !608
  %.not.i.i80 = icmp eq ptr %i.cp, %i.co
  br i1 %.not.i.i80, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit
  store ptr %i.co, ptr %i.r, align 8, !tbaa !600
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94: ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit
  %.not216 = icmp eq i64 %i.cq, 0
  br i1 %.not216, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94
  %i.dl = load i64, ptr %i.g, align 8, !tbaa !620
  %i.dm = sub i64 %i.dl, %i.cs
  %.not.i.i.i = icmp ugt i64 %i.cq, %i.dm
  br i1 %.not.i.i.i, label %bb.t, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs ; 5 uses
  %xtraiter = and i64 %i.cq, 2                    ; 2 uses
  %i.do = icmp ult i64 %i.cq, 4
  br i1 %i.do, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.new:                             ; preds = %.lr.ph.i.i.i.i.i
  %unroll_iter = and i64 %i.cq, 2305843009213693948
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i.new
  %.06.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %i.ee, %bb.r ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %niter.next.3, %bb.r ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  store i32 0, ptr %i.dp, align 4, !tbaa !612
  %i.dq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %i.dt, align 4, !tbaa !612
  %i.du = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 0, ptr %i.dx, align 4, !tbaa !612
  %i.dy = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !612
  %i.ec = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ee = add nuw i64 %.06.i.i.i.i.i, 4           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, label %bb.r, !llvm.loop !113

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa: ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ee, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod316 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod316)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %.06.i.i.i.i.i.epil = phi i64 [ %.06.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.ei, %bb.s ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i.epil
  store i32 0, ptr %i.ef, align 4, !tbaa !612
  %i.eg = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ei = add nuw i64 %.06.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %bb.s, !llvm.loop !3497

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa
  %i.ej = add i64 %i.cs, %i.cq
  store i64 %i.ej, ptr %i.a, align 8, !tbaa !608
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit100

bb.t:                                             ; preds = %bb.q
  tail call void @_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.cq, i64 noundef %i.cq)
  %.pre224 = load ptr, ptr %i.r, align 8, !tbaa !600 ; 2 uses
  %.pre225 = load ptr, ptr %1, align 8, !tbaa !349 ; 2 uses
  %.pre247 = ptrtoint ptr %.pre224 to i64
  %.pre249 = ptrtoint ptr %.pre225 to i64
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit100

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !608
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit100

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit100: ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, %bb.t, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i
  %.pre-phi250 = phi i64 [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre249, %bb.t ], [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ] ; 4 uses
  %.pre-phi248 = phi i64 [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre247, %bb.t ], [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ]
  %i.ek = phi ptr [ %i.co, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre225, %bb.t ], [ %i.co, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ] ; 4 uses
  %i.el = phi ptr [ %i.co, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre224, %bb.t ], [ %i.co, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ] ; 3 uses
  %i.em = sub i64 %.pre-phi248, %.pre-phi250
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ugt i64 %i.cq, %i.en
  br i1 %i.eo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit100
  %i.ep = sub nuw nsw i64 %i.cq, %i.en
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ep)
  %.pre226 = load ptr, ptr %i.r, align 8, !tbaa !600
  %.pre227 = load ptr, ptr %1, align 8, !tbaa !349 ; 2 uses
  %.pre251 = ptrtoint ptr %.pre227 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

bb.v:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit100
  %i.eq = icmp ult i64 %i.cq, %i.en
  br i1 %i.eq, label %bb.w, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.cq ; 3 uses
  %.not.i.i101 = icmp eq ptr %i.el, %i.er
  br i1 %.not.i.i101, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102:     ; preds = %bb.w
  store ptr %i.er, ptr %i.r, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

_ZNSt6vectorIiSaIiEE6resizeEm.exit103:            ; preds = %bb.u, %bb.v, %bb.w, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102
  %.pre-phi252 = phi i64 [ %.pre251, %bb.u ], [ %.pre-phi250, %bb.v ], [ %.pre-phi250, %bb.w ], [ %.pre-phi250, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.es = phi ptr [ %.pre227, %bb.u ], [ %i.ek, %bb.v ], [ %i.ek, %bb.w ], [ %i.ek, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.et = phi ptr [ %.pre226, %bb.u ], [ %i.el, %bb.v ], [ %i.el, %bb.w ], [ %i.er, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !617 ; 7 uses
  %i.ev = load i64, ptr %i.c, align 8, !tbaa !618 ; 4 uses
  %i.ew = sub i64 %i.eu, %i.ev                    ; 5 uses
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ex, %.pre-phi252
  %i.ez = ashr exact i64 %i.ey, 2                 ; 3 uses
  %.not.i104 = icmp eq i64 %i.ew, %i.ez
  br i1 %.not.i104, label %bb.x, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit103
  %i.fa = load ptr, ptr %0, align 8, !tbaa !619   ; 5 uses
  %.idx23.i106 = shl nuw nsw i64 %i.ev, 2         ; 3 uses
  %.idx.i107 = shl nuw nsw i64 %i.eu, 2           ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.i107
  %gepdiff.i108 = sub nsw i64 %.idx.i107, %.idx23.i106
  %i.fc = ashr exact i64 %gepdiff.i108, 2
  %.not19.i109 = icmp eq i64 %i.fc, %i.ew
  br i1 %.not19.i109, label %.preheader.i110, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i110:                                  ; preds = %bb.x
  %.not2124.i111 = icmp samesign eq i64 %.idx23.i106, %.idx.i107
  br i1 %.not2124.i111, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117, label %.lr.ph.preheader.i112

.lr.ph.preheader.i112:                            ; preds = %.preheader.i110
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx23.i106
  br label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.y, %.lr.ph.preheader.i112
  %.01826.i114 = phi ptr [ %i.fh, %bb.y ], [ %i.fd, %.lr.ph.preheader.i112 ] ; 2 uses
  %.sroa.0.025.i115 = phi ptr [ %i.fi, %bb.y ], [ %i.es, %.lr.ph.preheader.i112 ] ; 2 uses
  %i.fe = load i32, ptr %.sroa.0.025.i115, align 4, !tbaa !259
  %i.ff = load i32, ptr %.01826.i114, align 4, !tbaa !612
  %i.fg = icmp eq i32 %i.ff, %i.fe
  br i1 %i.fg, label %bb.y, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.y:                                             ; preds = %.lr.ph.i113
  %i.fh = getelementptr inbounds nuw i8, ptr %.01826.i114, i64 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i115, i64 4
  %.not21.i116 = icmp eq ptr %i.fh, %i.fb
  br i1 %.not21.i116, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117, label %.lr.ph.i113, !llvm.loop !85

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117: ; preds = %bb.y, %.preheader.i110
  %i.fj = icmp ugt i64 %i.cq, %i.ew
  %i.fk = sub i64 %i.cq, %i.ew                    ; 5 uses
  br i1 %i.fj, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117
  %i.fl = load i64, ptr %i.g, align 8, !tbaa !620
  %i.fm = sub i64 %i.fl, %i.ev
  %.not.i.i.i124 = icmp ugt i64 %i.cq, %i.fm
  br i1 %.not.i.i.i124, label %bb.ac, label %.lr.ph.i.i.i.i.i125

.lr.ph.i.i.i.i.i125:                              ; preds = %bb.z
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.eu ; 5 uses
  %i.fo = add i64 %i.cq, %i.ev
  %xtraiter318 = and i64 %i.fk, 3                 ; 3 uses
  %i.fp = sub i64 %i.eu, %i.fo
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %.epil.preheader317, label %.lr.ph.i.i.i.i.i125.new

.lr.ph.i.i.i.i.i125.new:                          ; preds = %.lr.ph.i.i.i.i.i125
  %unroll_iter322 = and i64 %i.fk, -4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.i.i125.new
  %.06.i.i.i.i.i126 = phi i64 [ 0, %.lr.ph.i.i.i.i.i125.new ], [ %i.gg, %bb.aa ] ; 5 uses
  %niter323 = phi i64 [ 0, %.lr.ph.i.i.i.i.i125.new ], [ %niter323.next.3, %bb.aa ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  store i32 0, ptr %i.fr, align 4, !tbaa !612
  %i.fs = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ft = add i32 %i.fs, 1
  store i32 %i.ft, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 0, ptr %i.fv, align 4, !tbaa !612
  %i.fw = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i32 0, ptr %i.fz, align 4, !tbaa !612
  %i.ga = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !612
  %i.ge = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gg = add nuw i64 %.06.i.i.i.i.i126, 4        ; 2 uses
  %niter323.next.3 = add i64 %niter323, 4         ; 2 uses
  %niter323.ncmp.3 = icmp eq i64 %niter323.next.3, %unroll_iter322
  br i1 %niter323.ncmp.3, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa, label %bb.aa, !llvm.loop !113

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa: ; preds = %bb.aa
  %lcmp.mod320.not = icmp eq i64 %xtraiter318, 0
  br i1 %lcmp.mod320.not, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128, label %.epil.preheader317

.epil.preheader317:                               ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa, %.lr.ph.i.i.i.i.i125
  %.06.i.i.i.i.i126.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i125 ], [ %i.gg, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa ]
  %lcmp.mod321 = icmp ne i64 %xtraiter318, 0
  tail call void @llvm.assume(i1 %lcmp.mod321)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader317
  %.06.i.i.i.i.i126.epil = phi i64 [ %.06.i.i.i.i.i126.epil.init, %.epil.preheader317 ], [ %i.gk, %bb.ab ] ; 2 uses
  %epil.iter319 = phi i64 [ 0, %.epil.preheader317 ], [ %epil.iter319.next, %bb.ab ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126.epil
  store i32 0, ptr %i.gh, align 4, !tbaa !612
  %i.gi = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gk = add nuw i64 %.06.i.i.i.i.i126.epil, 1
  %epil.iter319.next = add i64 %epil.iter319, 1   ; 2 uses
  %epil.iter319.cmp.not = icmp eq i64 %epil.iter319.next, %xtraiter318
  br i1 %epil.iter319.cmp.not, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128, label %bb.ab, !llvm.loop !3498

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128: ; preds = %bb.ab, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa
  %i.gl = add i64 %i.fk, %i.eu
  store i64 %i.gl, ptr %i.a, align 8, !tbaa !608
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit129
end_hunk_0
begin_hunk_1_@_ZN5boost9container4test20vector_capacity_testINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %bb.i, %.preheader.i
  %i.bh = load i64, ptr %i.g, align 8, !tbaa !637 ; 3 uses
  %.not.i56 = icmp eq i64 %i.bh, 0
  br i1 %.not.i56, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65, label %_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8capacityEv.exit.i58

_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8capacityEv.exit.i58: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit
  %i.bi = udiv i64 %i.bh, 10
  %i.bj = sub nuw i64 %i.bh, %i.bi                ; 3 uses
  %i.bk = shl i64 %i.bj, 1                        ; 6 uses
  %i.bl = icmp sgt i64 %i.bj, 0
  br i1 %i.bl, label %bb.j, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE7reserveEm.exit60

bb.j:                                             ; preds = %_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8capacityEv.exit.i58
  %i.bm = add i64 %i.bk, 8
  %i.bn = udiv i64 %i.bm, 9
  %i.bo = mul i64 %i.bn, 10                       ; 2 uses
  %.neg.i59 = sub i64 %i.av, %i.au
  %i.bp = add i64 %.neg.i59, %i.bo
  %i.bq = lshr i64 %i.bp, 1
  tail call void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE13reallocate_atEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.bo, i64 noundef %i.bq)
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE7reserveEm.exit60

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE7reserveEm.exit60: ; preds = %_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8capacityEv.exit.i58, %bb.j
  %i.br = icmp ugt i64 %i.bk, 2305843009213693951
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE7reserveEm.exit60
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.691) #28
  unreachable

bb.l:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE7reserveEm.exit60
  %i.bs = load ptr, ptr %i.z, align 8, !tbaa !350
  %i.bt = load ptr, ptr %1, align 8, !tbaa !349   ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  %i.by = icmp ult i64 %i.bx, %i.bk
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !600 ; 2 uses
  br i1 %i.by, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61: ; preds = %bb.l
  %i.bz = ptrtoint ptr %.pre to i64
  %i.ca = sub i64 %i.bz, %i.bv
  %i.cb = shl i64 %i.bj, 3
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #29 ; 6 uses
  %i.cd = load ptr, ptr %1, align 8, !tbaa !349   ; 4 uses
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !600
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr align 4 %i.cd, i64 %i.ch, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62: ; preds = %bb.m, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61
  %.not.i8.i63 = icmp eq ptr %i.cd, null
  br i1 %.not.i8.i63, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !350
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cl) #30
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62
  store ptr %i.cc, ptr %1, align 8, !tbaa !349
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca ; 2 uses
  store ptr %i.cm, ptr %i.r, align 8, !tbaa !600
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bk
  store ptr %i.cn, ptr %i.z, align 8, !tbaa !350
  %.pre245 = ptrtoint ptr %i.cc to i64
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65

_ZNSt6vectorIiSaIiEE7reserveEm.exit65:            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit, %bb.l, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64
  %.pre-phi246 = phi i64 [ %.pre-phi242, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bv, %bb.l ], [ %.pre245, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 5 uses
  %i.co = phi ptr [ %i.as, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bt, %bb.l ], [ %i.cc, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 7 uses
  %i.cp = phi ptr [ %i.at, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %.pre, %bb.l ], [ %i.cm, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 2 uses
  %i.cq = phi i64 [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bk, %bb.l ], [ %i.bk, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 22 uses
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !634 ; 4 uses
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !635 ; 9 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 2 uses
  %i.cu = ptrtoint ptr %i.cp to i64
  %i.cv = sub i64 %i.cu, %.pre-phi246
  %i.cw = ashr exact i64 %i.cv, 2
  %.not.i66 = icmp eq i64 %i.ct, %i.cw
  br i1 %.not.i66, label %bb.o, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit65
  %i.cx = load ptr, ptr %0, align 8, !tbaa !636   ; 5 uses
  %.idx23.i68 = shl nuw nsw i64 %i.cs, 2          ; 3 uses
  %.idx.i69 = shl nuw nsw i64 %i.cr, 2            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i69
  %gepdiff.i70 = sub nsw i64 %.idx.i69, %.idx23.i68
  %i.cz = ashr exact i64 %gepdiff.i70, 2
  %.not19.i71 = icmp eq i64 %i.cz, %i.ct
  br i1 %.not19.i71, label %.preheader.i72, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i72:                                   ; preds = %bb.o
  %.not2124.i73 = icmp samesign eq i64 %.idx23.i68, %.idx.i69
  br i1 %.not2124.i73, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79, label %.lr.ph.preheader.i74

.lr.ph.preheader.i74:                             ; preds = %.preheader.i72
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx23.i68
  br label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.p, %.lr.ph.preheader.i74
  %.01826.i76 = phi ptr [ %i.de, %bb.p ], [ %i.da, %.lr.ph.preheader.i74 ] ; 2 uses
  %.sroa.0.025.i77 = phi ptr [ %i.df, %bb.p ], [ %i.co, %.lr.ph.preheader.i74 ] ; 2 uses
  %i.db = load i32, ptr %.sroa.0.025.i77, align 4, !tbaa !259
  %i.dc = load i32, ptr %.01826.i76, align 4, !tbaa !629
  %i.dd = icmp eq i32 %i.dc, %i.db
  br i1 %i.dd, label %bb.p, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.p:                                             ; preds = %.lr.ph.i75
  %i.de = getelementptr inbounds nuw i8, ptr %.01826.i76, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i77, i64 4
  %.not21.i78 = icmp eq ptr %i.de, %i.cy
  br i1 %.not21.i78, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79, label %.lr.ph.i75, !llvm.loop !87

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79: ; preds = %bb.p, %.preheader.i72
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cr
  %.not5.i.i.i.i = icmp eq i64 %i.cr, %i.cs
  br i1 %.not5.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i ], [ %i.dh, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i, align 4, !tbaa !629
  %i.di = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dk, %i.dg
  br i1 %.not.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !88

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit: ; preds = %.lr.ph.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !625
  %.not.i.i80 = icmp eq ptr %i.cp, %i.co
  br i1 %.not.i.i80, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit
  store ptr %i.co, ptr %i.r, align 8, !tbaa !600
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94: ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit
  %.not216 = icmp eq i64 %i.cq, 0
  br i1 %.not216, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94
  %i.dl = load i64, ptr %i.g, align 8, !tbaa !637
  %i.dm = sub i64 %i.dl, %i.cs
  %.not.i.i.i = icmp ugt i64 %i.cq, %i.dm
  br i1 %.not.i.i.i, label %bb.t, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs ; 5 uses
  %xtraiter = and i64 %i.cq, 2                    ; 2 uses
  %i.do = icmp ult i64 %i.cq, 4
  br i1 %i.do, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.new:                             ; preds = %.lr.ph.i.i.i.i.i
  %unroll_iter = and i64 %i.cq, 2305843009213693948
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i.new
  %.06.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %i.ee, %bb.r ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %niter.next.3, %bb.r ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  store i32 0, ptr %i.dp, align 4, !tbaa !629
  %i.dq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %i.dt, align 4, !tbaa !629
  %i.du = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 0, ptr %i.dx, align 4, !tbaa !629
  %i.dy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !629
  %i.ec = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ee = add nuw i64 %.06.i.i.i.i.i, 4           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, label %bb.r, !llvm.loop !135

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa: ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ee, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod316 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod316)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %.06.i.i.i.i.i.epil = phi i64 [ %.06.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.ei, %bb.s ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i.epil
  store i32 0, ptr %i.ef, align 4, !tbaa !629
  %i.eg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ei = add nuw i64 %.06.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %bb.s, !llvm.loop !4144

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa
  %i.ej = add i64 %i.cs, %i.cq
  store i64 %i.ej, ptr %i.a, align 8, !tbaa !625
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit100

bb.t:                                             ; preds = %bb.q
  tail call void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.cq, i64 noundef %i.cq)
  %.pre224 = load ptr, ptr %i.r, align 8, !tbaa !600 ; 2 uses
  %.pre225 = load ptr, ptr %1, align 8, !tbaa !349 ; 2 uses
  %.pre247 = ptrtoint ptr %.pre224 to i64
  %.pre249 = ptrtoint ptr %.pre225 to i64
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit100

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !625
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit100

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit100: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, %bb.t, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i
  %.pre-phi250 = phi i64 [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre249, %bb.t ], [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ] ; 4 uses
  %.pre-phi248 = phi i64 [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre247, %bb.t ], [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ]
  %i.ek = phi ptr [ %i.co, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre225, %bb.t ], [ %i.co, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ] ; 4 uses
  %i.el = phi ptr [ %i.co, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre224, %bb.t ], [ %i.co, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ] ; 3 uses
  %i.em = sub i64 %.pre-phi248, %.pre-phi250
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ugt i64 %i.cq, %i.en
  br i1 %i.eo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit100
  %i.ep = sub nuw nsw i64 %i.cq, %i.en
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ep)
  %.pre226 = load ptr, ptr %i.r, align 8, !tbaa !600
  %.pre227 = load ptr, ptr %1, align 8, !tbaa !349 ; 2 uses
  %.pre251 = ptrtoint ptr %.pre227 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

bb.v:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit100
  %i.eq = icmp ult i64 %i.cq, %i.en
  br i1 %i.eq, label %bb.w, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.cq ; 3 uses
  %.not.i.i101 = icmp eq ptr %i.el, %i.er
  br i1 %.not.i.i101, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102:     ; preds = %bb.w
  store ptr %i.er, ptr %i.r, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

_ZNSt6vectorIiSaIiEE6resizeEm.exit103:            ; preds = %bb.u, %bb.v, %bb.w, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102
  %.pre-phi252 = phi i64 [ %.pre251, %bb.u ], [ %.pre-phi250, %bb.v ], [ %.pre-phi250, %bb.w ], [ %.pre-phi250, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.es = phi ptr [ %.pre227, %bb.u ], [ %i.ek, %bb.v ], [ %i.ek, %bb.w ], [ %i.ek, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.et = phi ptr [ %.pre226, %bb.u ], [ %i.el, %bb.v ], [ %i.el, %bb.w ], [ %i.er, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !634 ; 7 uses
  %i.ev = load i64, ptr %i.c, align 8, !tbaa !635 ; 4 uses
  %i.ew = sub i64 %i.eu, %i.ev                    ; 5 uses
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ex, %.pre-phi252
  %i.ez = ashr exact i64 %i.ey, 2                 ; 3 uses
  %.not.i104 = icmp eq i64 %i.ew, %i.ez
  br i1 %.not.i104, label %bb.x, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit103
  %i.fa = load ptr, ptr %0, align 8, !tbaa !636   ; 5 uses
  %.idx23.i106 = shl nuw nsw i64 %i.ev, 2         ; 3 uses
  %.idx.i107 = shl nuw nsw i64 %i.eu, 2           ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.i107
  %gepdiff.i108 = sub nsw i64 %.idx.i107, %.idx23.i106
  %i.fc = ashr exact i64 %gepdiff.i108, 2
  %.not19.i109 = icmp eq i64 %i.fc, %i.ew
  br i1 %.not19.i109, label %.preheader.i110, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i110:                                  ; preds = %bb.x
  %.not2124.i111 = icmp samesign eq i64 %.idx23.i106, %.idx.i107
  br i1 %.not2124.i111, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117, label %.lr.ph.preheader.i112

.lr.ph.preheader.i112:                            ; preds = %.preheader.i110
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx23.i106
  br label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.y, %.lr.ph.preheader.i112
  %.01826.i114 = phi ptr [ %i.fh, %bb.y ], [ %i.fd, %.lr.ph.preheader.i112 ] ; 2 uses
  %.sroa.0.025.i115 = phi ptr [ %i.fi, %bb.y ], [ %i.es, %.lr.ph.preheader.i112 ] ; 2 uses
  %i.fe = load i32, ptr %.sroa.0.025.i115, align 4, !tbaa !259
  %i.ff = load i32, ptr %.01826.i114, align 4, !tbaa !629
  %i.fg = icmp eq i32 %i.ff, %i.fe
  br i1 %i.fg, label %bb.y, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.y:                                             ; preds = %.lr.ph.i113
  %i.fh = getelementptr inbounds nuw i8, ptr %.01826.i114, i64 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i115, i64 4
  %.not21.i116 = icmp eq ptr %i.fh, %i.fb
  br i1 %.not21.i116, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117, label %.lr.ph.i113, !llvm.loop !87

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117: ; preds = %bb.y, %.preheader.i110
  %i.fj = icmp ugt i64 %i.cq, %i.ew
  %i.fk = sub i64 %i.cq, %i.ew                    ; 5 uses
  br i1 %i.fj, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117
  %i.fl = load i64, ptr %i.g, align 8, !tbaa !637
  %i.fm = sub i64 %i.fl, %i.ev
  %.not.i.i.i124 = icmp ugt i64 %i.cq, %i.fm
  br i1 %.not.i.i.i124, label %bb.ac, label %.lr.ph.i.i.i.i.i125

.lr.ph.i.i.i.i.i125:                              ; preds = %bb.z
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.eu ; 5 uses
  %i.fo = add i64 %i.cq, %i.ev
  %xtraiter318 = and i64 %i.fk, 3                 ; 3 uses
  %i.fp = sub i64 %i.eu, %i.fo
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %.epil.preheader317, label %.lr.ph.i.i.i.i.i125.new

.lr.ph.i.i.i.i.i125.new:                          ; preds = %.lr.ph.i.i.i.i.i125
  %unroll_iter322 = and i64 %i.fk, -4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.i.i125.new
  %.06.i.i.i.i.i126 = phi i64 [ 0, %.lr.ph.i.i.i.i.i125.new ], [ %i.gg, %bb.aa ] ; 5 uses
  %niter323 = phi i64 [ 0, %.lr.ph.i.i.i.i.i125.new ], [ %niter323.next.3, %bb.aa ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  store i32 0, ptr %i.fr, align 4, !tbaa !629
  %i.fs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ft = add i32 %i.fs, 1
  store i32 %i.ft, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 0, ptr %i.fv, align 4, !tbaa !629
  %i.fw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i32 0, ptr %i.fz, align 4, !tbaa !629
  %i.ga = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !629
  %i.ge = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gg = add nuw i64 %.06.i.i.i.i.i126, 4        ; 2 uses
  %niter323.next.3 = add i64 %niter323, 4         ; 2 uses
  %niter323.ncmp.3 = icmp eq i64 %niter323.next.3, %unroll_iter322
  br i1 %niter323.ncmp.3, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa, label %bb.aa, !llvm.loop !135

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa: ; preds = %bb.aa
  %lcmp.mod320.not = icmp eq i64 %xtraiter318, 0
  br i1 %lcmp.mod320.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128, label %.epil.preheader317

.epil.preheader317:                               ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa, %.lr.ph.i.i.i.i.i125
  %.06.i.i.i.i.i126.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i125 ], [ %i.gg, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa ]
  %lcmp.mod321 = icmp ne i64 %xtraiter318, 0
  tail call void @llvm.assume(i1 %lcmp.mod321)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader317
  %.06.i.i.i.i.i126.epil = phi i64 [ %.06.i.i.i.i.i126.epil.init, %.epil.preheader317 ], [ %i.gk, %bb.ab ] ; 2 uses
  %epil.iter319 = phi i64 [ 0, %.epil.preheader317 ], [ %epil.iter319.next, %bb.ab ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126.epil
  store i32 0, ptr %i.gh, align 4, !tbaa !629
  %i.gi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gk = add nuw i64 %.06.i.i.i.i.i126.epil, 1
  %epil.iter319.next = add i64 %epil.iter319, 1   ; 2 uses
  %epil.iter319.cmp.not = icmp eq i64 %epil.iter319.next, %xtraiter318
  br i1 %epil.iter319.cmp.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128, label %bb.ab, !llvm.loop !4145

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128: ; preds = %bb.ab, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa
  %i.gl = add i64 %i.fk, %i.eu
  store i64 %i.gl, ptr %i.a, align 8, !tbaa !625
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit129
end_hunk_1
begin_hunk_2_@_ZN5boost9container4test20vector_capacity_testINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %bb.i, %.preheader.i
  %i.bh = load i64, ptr %i.g, align 8, !tbaa !654 ; 3 uses
  %.not.i56 = icmp eq i64 %i.bh, 0
  br i1 %.not.i56, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65, label %_ZNK5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8capacityEv.exit.i58

_ZNK5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8capacityEv.exit.i58: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit
  %i.bi = udiv i64 %i.bh, 10
  %i.bj = sub nuw i64 %i.bh, %i.bi                ; 3 uses
  %i.bk = shl i64 %i.bj, 1                        ; 6 uses
  %i.bl = icmp sgt i64 %i.bj, 0
  br i1 %i.bl, label %bb.j, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE7reserveEm.exit60

bb.j:                                             ; preds = %_ZNK5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8capacityEv.exit.i58
  %i.bm = add i64 %i.bk, 8
  %i.bn = udiv i64 %i.bm, 9
  %i.bo = mul i64 %i.bn, 10                       ; 2 uses
  %.neg.i59 = sub i64 %i.av, %i.au
  %i.bp = add i64 %.neg.i59, %i.bo
  %i.bq = lshr i64 %i.bp, 1
  tail call void @_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE13reallocate_atEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.bo, i64 noundef %i.bq)
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE7reserveEm.exit60

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE7reserveEm.exit60: ; preds = %_ZNK5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8capacityEv.exit.i58, %bb.j
  %i.br = icmp ugt i64 %i.bk, 2305843009213693951
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE7reserveEm.exit60
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.691) #28
  unreachable

bb.l:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE7reserveEm.exit60
  %i.bs = load ptr, ptr %i.z, align 8, !tbaa !350
  %i.bt = load ptr, ptr %1, align 8, !tbaa !349   ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  %i.by = icmp ult i64 %i.bx, %i.bk
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !600 ; 2 uses
  br i1 %i.by, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61: ; preds = %bb.l
  %i.bz = ptrtoint ptr %.pre to i64
  %i.ca = sub i64 %i.bz, %i.bv
  %i.cb = shl i64 %i.bj, 3
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #29 ; 6 uses
  %i.cd = load ptr, ptr %1, align 8, !tbaa !349   ; 4 uses
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !600
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr align 4 %i.cd, i64 %i.ch, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62: ; preds = %bb.m, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61
  %.not.i8.i63 = icmp eq ptr %i.cd, null
  br i1 %.not.i8.i63, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !350
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cl) #30
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62
  store ptr %i.cc, ptr %1, align 8, !tbaa !349
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca ; 2 uses
  store ptr %i.cm, ptr %i.r, align 8, !tbaa !600
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bk
  store ptr %i.cn, ptr %i.z, align 8, !tbaa !350
  %.pre245 = ptrtoint ptr %i.cc to i64
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65

_ZNSt6vectorIiSaIiEE7reserveEm.exit65:            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit, %bb.l, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64
  %.pre-phi246 = phi i64 [ %.pre-phi242, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bv, %bb.l ], [ %.pre245, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 5 uses
  %i.co = phi ptr [ %i.as, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bt, %bb.l ], [ %i.cc, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 7 uses
  %i.cp = phi ptr [ %i.at, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %.pre, %bb.l ], [ %i.cm, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 2 uses
  %i.cq = phi i64 [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bk, %bb.l ], [ %i.bk, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 22 uses
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !651 ; 4 uses
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !652 ; 9 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 2 uses
  %i.cu = ptrtoint ptr %i.cp to i64
  %i.cv = sub i64 %i.cu, %.pre-phi246
  %i.cw = ashr exact i64 %i.cv, 2
  %.not.i66 = icmp eq i64 %i.ct, %i.cw
  br i1 %.not.i66, label %bb.o, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit65
  %i.cx = load ptr, ptr %0, align 8, !tbaa !653   ; 5 uses
  %.idx23.i68 = shl nuw nsw i64 %i.cs, 2          ; 3 uses
  %.idx.i69 = shl nuw nsw i64 %i.cr, 2            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i69
  %gepdiff.i70 = sub nsw i64 %.idx.i69, %.idx23.i68
  %i.cz = ashr exact i64 %gepdiff.i70, 2
  %.not19.i71 = icmp eq i64 %i.cz, %i.ct
  br i1 %.not19.i71, label %.preheader.i72, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i72:                                   ; preds = %bb.o
  %.not2124.i73 = icmp samesign eq i64 %.idx23.i68, %.idx.i69
  br i1 %.not2124.i73, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79, label %.lr.ph.preheader.i74

.lr.ph.preheader.i74:                             ; preds = %.preheader.i72
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx23.i68
  br label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.p, %.lr.ph.preheader.i74
  %.01826.i76 = phi ptr [ %i.de, %bb.p ], [ %i.da, %.lr.ph.preheader.i74 ] ; 2 uses
  %.sroa.0.025.i77 = phi ptr [ %i.df, %bb.p ], [ %i.co, %.lr.ph.preheader.i74 ] ; 2 uses
  %i.db = load i32, ptr %.sroa.0.025.i77, align 4, !tbaa !259
  %i.dc = load i32, ptr %.01826.i76, align 4, !tbaa !646
  %i.dd = icmp eq i32 %i.dc, %i.db
  br i1 %i.dd, label %bb.p, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.p:                                             ; preds = %.lr.ph.i75
  %i.de = getelementptr inbounds nuw i8, ptr %.01826.i76, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i77, i64 4
  %.not21.i78 = icmp eq ptr %i.de, %i.cy
  br i1 %.not21.i78, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79, label %.lr.ph.i75, !llvm.loop !89

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79: ; preds = %bb.p, %.preheader.i72
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cr
  %.not5.i.i.i.i = icmp eq i64 %i.cr, %i.cs
  br i1 %.not5.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i ], [ %i.dh, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i, align 4, !tbaa !646
  %i.di = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dk, %i.dg
  br i1 %.not.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !90

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit: ; preds = %.lr.ph.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !642
  %.not.i.i80 = icmp eq ptr %i.cp, %i.co
  br i1 %.not.i.i80, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit
  store ptr %i.co, ptr %i.r, align 8, !tbaa !600
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94: ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit
  %.not216 = icmp eq i64 %i.cq, 0
  br i1 %.not216, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94
  %i.dl = load i64, ptr %i.g, align 8, !tbaa !654
  %i.dm = sub i64 %i.dl, %i.cs
  %.not.i.i.i = icmp ugt i64 %i.cq, %i.dm
  br i1 %.not.i.i.i, label %bb.t, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs ; 5 uses
  %xtraiter = and i64 %i.cq, 2                    ; 2 uses
  %i.do = icmp ult i64 %i.cq, 4
  br i1 %i.do, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.new:                             ; preds = %.lr.ph.i.i.i.i.i
  %unroll_iter = and i64 %i.cq, 2305843009213693948
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i.new
  %.06.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %i.ee, %bb.r ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %niter.next.3, %bb.r ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  store i32 0, ptr %i.dp, align 4, !tbaa !646
  %i.dq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %i.dt, align 4, !tbaa !646
  %i.du = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 0, ptr %i.dx, align 4, !tbaa !646
  %i.dy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !646
  %i.ec = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ee = add nuw i64 %.06.i.i.i.i.i, 4           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, label %bb.r, !llvm.loop !158

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa: ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ee, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod316 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod316)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %.06.i.i.i.i.i.epil = phi i64 [ %.06.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.ei, %bb.s ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i.epil
  store i32 0, ptr %i.ef, align 4, !tbaa !646
  %i.eg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ei = add nuw i64 %.06.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %bb.s, !llvm.loop !5141

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa
  %i.ej = add i64 %i.cs, %i.cq
  store i64 %i.ej, ptr %i.a, align 8, !tbaa !642
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit100

bb.t:                                             ; preds = %bb.q
  tail call void @_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.cq, i64 noundef %i.cq)
  %.pre224 = load ptr, ptr %i.r, align 8, !tbaa !600 ; 2 uses
  %.pre225 = load ptr, ptr %1, align 8, !tbaa !349 ; 2 uses
  %.pre247 = ptrtoint ptr %.pre224 to i64
  %.pre249 = ptrtoint ptr %.pre225 to i64
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit100

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !642
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit100

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit100: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, %bb.t, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i
  %.pre-phi250 = phi i64 [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre249, %bb.t ], [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ] ; 4 uses
  %.pre-phi248 = phi i64 [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre247, %bb.t ], [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ]
  %i.ek = phi ptr [ %i.co, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre225, %bb.t ], [ %i.co, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ] ; 4 uses
  %i.el = phi ptr [ %i.co, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre224, %bb.t ], [ %i.co, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ] ; 3 uses
  %i.em = sub i64 %.pre-phi248, %.pre-phi250
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ugt i64 %i.cq, %i.en
  br i1 %i.eo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit100
  %i.ep = sub nuw nsw i64 %i.cq, %i.en
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ep)
  %.pre226 = load ptr, ptr %i.r, align 8, !tbaa !600
  %.pre227 = load ptr, ptr %1, align 8, !tbaa !349 ; 2 uses
  %.pre251 = ptrtoint ptr %.pre227 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

bb.v:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit100
  %i.eq = icmp ult i64 %i.cq, %i.en
  br i1 %i.eq, label %bb.w, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.cq ; 3 uses
  %.not.i.i101 = icmp eq ptr %i.el, %i.er
  br i1 %.not.i.i101, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102:     ; preds = %bb.w
  store ptr %i.er, ptr %i.r, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

_ZNSt6vectorIiSaIiEE6resizeEm.exit103:            ; preds = %bb.u, %bb.v, %bb.w, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102
  %.pre-phi252 = phi i64 [ %.pre251, %bb.u ], [ %.pre-phi250, %bb.v ], [ %.pre-phi250, %bb.w ], [ %.pre-phi250, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.es = phi ptr [ %.pre227, %bb.u ], [ %i.ek, %bb.v ], [ %i.ek, %bb.w ], [ %i.ek, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.et = phi ptr [ %.pre226, %bb.u ], [ %i.el, %bb.v ], [ %i.el, %bb.w ], [ %i.er, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !651 ; 7 uses
  %i.ev = load i64, ptr %i.c, align 8, !tbaa !652 ; 4 uses
  %i.ew = sub i64 %i.eu, %i.ev                    ; 5 uses
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ex, %.pre-phi252
  %i.ez = ashr exact i64 %i.ey, 2                 ; 3 uses
  %.not.i104 = icmp eq i64 %i.ew, %i.ez
  br i1 %.not.i104, label %bb.x, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit103
  %i.fa = load ptr, ptr %0, align 8, !tbaa !653   ; 5 uses
  %.idx23.i106 = shl nuw nsw i64 %i.ev, 2         ; 3 uses
  %.idx.i107 = shl nuw nsw i64 %i.eu, 2           ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.i107
  %gepdiff.i108 = sub nsw i64 %.idx.i107, %.idx23.i106
  %i.fc = ashr exact i64 %gepdiff.i108, 2
  %.not19.i109 = icmp eq i64 %i.fc, %i.ew
  br i1 %.not19.i109, label %.preheader.i110, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i110:                                  ; preds = %bb.x
  %.not2124.i111 = icmp samesign eq i64 %.idx23.i106, %.idx.i107
  br i1 %.not2124.i111, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117, label %.lr.ph.preheader.i112

.lr.ph.preheader.i112:                            ; preds = %.preheader.i110
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx23.i106
  br label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.y, %.lr.ph.preheader.i112
  %.01826.i114 = phi ptr [ %i.fh, %bb.y ], [ %i.fd, %.lr.ph.preheader.i112 ] ; 2 uses
  %.sroa.0.025.i115 = phi ptr [ %i.fi, %bb.y ], [ %i.es, %.lr.ph.preheader.i112 ] ; 2 uses
  %i.fe = load i32, ptr %.sroa.0.025.i115, align 4, !tbaa !259
  %i.ff = load i32, ptr %.01826.i114, align 4, !tbaa !646
  %i.fg = icmp eq i32 %i.ff, %i.fe
  br i1 %i.fg, label %bb.y, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.y:                                             ; preds = %.lr.ph.i113
  %i.fh = getelementptr inbounds nuw i8, ptr %.01826.i114, i64 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i115, i64 4
  %.not21.i116 = icmp eq ptr %i.fh, %i.fb
  br i1 %.not21.i116, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117, label %.lr.ph.i113, !llvm.loop !89

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117: ; preds = %bb.y, %.preheader.i110
  %i.fj = icmp ugt i64 %i.cq, %i.ew
  %i.fk = sub i64 %i.cq, %i.ew                    ; 5 uses
  br i1 %i.fj, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117
  %i.fl = load i64, ptr %i.g, align 8, !tbaa !654
  %i.fm = sub i64 %i.fl, %i.ev
  %.not.i.i.i124 = icmp ugt i64 %i.cq, %i.fm
  br i1 %.not.i.i.i124, label %bb.ac, label %.lr.ph.i.i.i.i.i125

.lr.ph.i.i.i.i.i125:                              ; preds = %bb.z
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.eu ; 5 uses
  %i.fo = add i64 %i.cq, %i.ev
  %xtraiter318 = and i64 %i.fk, 3                 ; 3 uses
  %i.fp = sub i64 %i.eu, %i.fo
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %.epil.preheader317, label %.lr.ph.i.i.i.i.i125.new

.lr.ph.i.i.i.i.i125.new:                          ; preds = %.lr.ph.i.i.i.i.i125
  %unroll_iter322 = and i64 %i.fk, -4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.i.i125.new
  %.06.i.i.i.i.i126 = phi i64 [ 0, %.lr.ph.i.i.i.i.i125.new ], [ %i.gg, %bb.aa ] ; 5 uses
  %niter323 = phi i64 [ 0, %.lr.ph.i.i.i.i.i125.new ], [ %niter323.next.3, %bb.aa ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  store i32 0, ptr %i.fr, align 4, !tbaa !646
  %i.fs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ft = add i32 %i.fs, 1
  store i32 %i.ft, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 0, ptr %i.fv, align 4, !tbaa !646
  %i.fw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i32 0, ptr %i.fz, align 4, !tbaa !646
  %i.ga = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !646
  %i.ge = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gg = add nuw i64 %.06.i.i.i.i.i126, 4        ; 2 uses
  %niter323.next.3 = add i64 %niter323, 4         ; 2 uses
  %niter323.ncmp.3 = icmp eq i64 %niter323.next.3, %unroll_iter322
  br i1 %niter323.ncmp.3, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa, label %bb.aa, !llvm.loop !158

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa: ; preds = %bb.aa
  %lcmp.mod320.not = icmp eq i64 %xtraiter318, 0
  br i1 %lcmp.mod320.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128, label %.epil.preheader317

.epil.preheader317:                               ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa, %.lr.ph.i.i.i.i.i125
  %.06.i.i.i.i.i126.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i125 ], [ %i.gg, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa ]
  %lcmp.mod321 = icmp ne i64 %xtraiter318, 0
  tail call void @llvm.assume(i1 %lcmp.mod321)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader317
  %.06.i.i.i.i.i126.epil = phi i64 [ %.06.i.i.i.i.i126.epil.init, %.epil.preheader317 ], [ %i.gk, %bb.ab ] ; 2 uses
  %epil.iter319 = phi i64 [ 0, %.epil.preheader317 ], [ %epil.iter319.next, %bb.ab ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126.epil
  store i32 0, ptr %i.gh, align 4, !tbaa !646
  %i.gi = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gk = add nuw i64 %.06.i.i.i.i.i126.epil, 1
  %epil.iter319.next = add i64 %epil.iter319, 1   ; 2 uses
  %epil.iter319.cmp.not = icmp eq i64 %epil.iter319.next, %xtraiter318
  br i1 %epil.iter319.cmp.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128, label %bb.ab, !llvm.loop !5142

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128: ; preds = %bb.ab, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa
  %i.gl = add i64 %i.fk, %i.eu
  store i64 %i.gl, ptr %i.a, align 8, !tbaa !642
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit129
end_hunk_2
begin_hunk_3_@_ZN5boost9container4test20vector_capacity_testINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %bb.i, %.preheader.i
  %i.bh = load i64, ptr %i.g, align 8, !tbaa !786 ; 3 uses
  %.not.i56 = icmp eq i64 %i.bh, 0
  br i1 %.not.i56, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65, label %_ZNK5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8capacityEv.exit.i58

_ZNK5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8capacityEv.exit.i58: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit
  %i.bi = udiv i64 %i.bh, 10
  %i.bj = sub nuw i64 %i.bh, %i.bi                ; 3 uses
  %i.bk = shl i64 %i.bj, 1                        ; 6 uses
  %i.bl = icmp sgt i64 %i.bj, 0
  br i1 %i.bl, label %bb.j, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7reserveEm.exit60

bb.j:                                             ; preds = %_ZNK5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8capacityEv.exit.i58
  %i.bm = add i64 %i.bk, 8
  %i.bn = udiv i64 %i.bm, 9
  %i.bo = mul i64 %i.bn, 10                       ; 2 uses
  %.neg.i59 = sub i64 %i.av, %i.au
  %i.bp = add i64 %.neg.i59, %i.bo
  %i.bq = lshr i64 %i.bp, 1
  tail call void @_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE13reallocate_atEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.bo, i64 noundef %i.bq)
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7reserveEm.exit60

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7reserveEm.exit60: ; preds = %_ZNK5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8capacityEv.exit.i58, %bb.j
  %i.br = icmp ugt i64 %i.bk, 2305843009213693951
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7reserveEm.exit60
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.691) #28
  unreachable

bb.l:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7reserveEm.exit60
  %i.bs = load ptr, ptr %i.z, align 8, !tbaa !350
  %i.bt = load ptr, ptr %1, align 8, !tbaa !349   ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  %i.by = icmp ult i64 %i.bx, %i.bk
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !600 ; 2 uses
  br i1 %i.by, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61: ; preds = %bb.l
  %i.bz = ptrtoint ptr %.pre to i64
  %i.ca = sub i64 %i.bz, %i.bv
  %i.cb = shl i64 %i.bj, 3
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #29 ; 6 uses
  %i.cd = load ptr, ptr %1, align 8, !tbaa !349   ; 4 uses
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !600
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr align 4 %i.cd, i64 %i.ch, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62: ; preds = %bb.m, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61
  %.not.i8.i63 = icmp eq ptr %i.cd, null
  br i1 %.not.i8.i63, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !350
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cl) #30
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62
  store ptr %i.cc, ptr %1, align 8, !tbaa !349
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca ; 2 uses
  store ptr %i.cm, ptr %i.r, align 8, !tbaa !600
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bk
  store ptr %i.cn, ptr %i.z, align 8, !tbaa !350
  %.pre245 = ptrtoint ptr %i.cc to i64
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65

_ZNSt6vectorIiSaIiEE7reserveEm.exit65:            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit, %bb.l, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64
  %.pre-phi246 = phi i64 [ %.pre-phi242, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bv, %bb.l ], [ %.pre245, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 5 uses
  %i.co = phi ptr [ %i.as, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bt, %bb.l ], [ %i.cc, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 7 uses
  %i.cp = phi ptr [ %i.at, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %.pre, %bb.l ], [ %i.cm, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 2 uses
  %i.cq = phi i64 [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bk, %bb.l ], [ %i.bk, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 22 uses
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !739 ; 4 uses
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !740 ; 9 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 2 uses
  %i.cu = ptrtoint ptr %i.cp to i64
  %i.cv = sub i64 %i.cu, %.pre-phi246
  %i.cw = ashr exact i64 %i.cv, 2
  %.not.i66 = icmp eq i64 %i.ct, %i.cw
  br i1 %.not.i66, label %bb.o, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit65
  %i.cx = load ptr, ptr %0, align 8, !tbaa !741   ; 5 uses
  %.idx23.i68 = shl nuw nsw i64 %i.cs, 2          ; 3 uses
  %.idx.i69 = shl nuw nsw i64 %i.cr, 2            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i69
  %gepdiff.i70 = sub nsw i64 %.idx.i69, %.idx23.i68
  %i.cz = ashr exact i64 %gepdiff.i70, 2
  %.not19.i71 = icmp eq i64 %i.cz, %i.ct
  br i1 %.not19.i71, label %.preheader.i72, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i72:                                   ; preds = %bb.o
  %.not2124.i73 = icmp samesign eq i64 %.idx23.i68, %.idx.i69
  br i1 %.not2124.i73, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79, label %.lr.ph.preheader.i74

.lr.ph.preheader.i74:                             ; preds = %.preheader.i72
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx23.i68
  br label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.p, %.lr.ph.preheader.i74
  %.01826.i76 = phi ptr [ %i.de, %bb.p ], [ %i.da, %.lr.ph.preheader.i74 ] ; 2 uses
  %.sroa.0.025.i77 = phi ptr [ %i.df, %bb.p ], [ %i.co, %.lr.ph.preheader.i74 ] ; 2 uses
  %i.db = load i32, ptr %.sroa.0.025.i77, align 4, !tbaa !259
  %i.dc = load i32, ptr %.01826.i76, align 4, !tbaa !612
  %i.dd = icmp eq i32 %i.dc, %i.db
  br i1 %i.dd, label %bb.p, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.p:                                             ; preds = %.lr.ph.i75
  %i.de = getelementptr inbounds nuw i8, ptr %.01826.i76, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i77, i64 4
  %.not21.i78 = icmp eq ptr %i.de, %i.cy
  br i1 %.not21.i78, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79, label %.lr.ph.i75, !llvm.loop !180

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79: ; preds = %bb.p, %.preheader.i72
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cr
  %.not5.i.i.i.i = icmp eq i64 %i.cr, %i.cs
  br i1 %.not5.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i ], [ %i.dh, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i, align 4, !tbaa !612
  %i.di = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dk, %i.dg
  br i1 %.not.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !181

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit: ; preds = %.lr.ph.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !732
  %.not.i.i80 = icmp eq ptr %i.cp, %i.co
  br i1 %.not.i.i80, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit
  store ptr %i.co, ptr %i.r, align 8, !tbaa !600
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94: ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit
  %.not216 = icmp eq i64 %i.cq, 0
  br i1 %.not216, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94
  %i.dl = load i64, ptr %i.g, align 8, !tbaa !786
  %i.dm = sub i64 %i.dl, %i.cs
  %.not.i.i.i = icmp ugt i64 %i.cq, %i.dm
  br i1 %.not.i.i.i, label %bb.t, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs ; 5 uses
  %xtraiter = and i64 %i.cq, 2                    ; 2 uses
  %i.do = icmp ult i64 %i.cq, 4
  br i1 %i.do, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.new:                             ; preds = %.lr.ph.i.i.i.i.i
  %unroll_iter = and i64 %i.cq, 2305843009213693948
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i.new
  %.06.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %i.ee, %bb.r ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %niter.next.3, %bb.r ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  store i32 0, ptr %i.dp, align 4, !tbaa !612
  %i.dq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %i.dt, align 4, !tbaa !612
  %i.du = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 0, ptr %i.dx, align 4, !tbaa !612
  %i.dy = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !612
  %i.ec = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ee = add nuw i64 %.06.i.i.i.i.i, 4           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, label %bb.r, !llvm.loop !192

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa: ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ee, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod316 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod316)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %.06.i.i.i.i.i.epil = phi i64 [ %.06.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.ei, %bb.s ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i.epil
  store i32 0, ptr %i.ef, align 4, !tbaa !612
  %i.eg = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ei = add nuw i64 %.06.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %bb.s, !llvm.loop !6268

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa
  %i.ej = add i64 %i.cs, %i.cq
  store i64 %i.ej, ptr %i.a, align 8, !tbaa !732
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100

bb.t:                                             ; preds = %bb.q
  tail call void @_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.cq, i64 noundef %i.cq)
  %.pre224 = load ptr, ptr %i.r, align 8, !tbaa !600 ; 2 uses
  %.pre225 = load ptr, ptr %1, align 8, !tbaa !349 ; 2 uses
  %.pre247 = ptrtoint ptr %.pre224 to i64
  %.pre249 = ptrtoint ptr %.pre225 to i64
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !732
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100: ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, %bb.t, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i
  %.pre-phi250 = phi i64 [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre249, %bb.t ], [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ] ; 4 uses
  %.pre-phi248 = phi i64 [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre247, %bb.t ], [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ]
  %i.ek = phi ptr [ %i.co, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre225, %bb.t ], [ %i.co, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ] ; 4 uses
  %i.el = phi ptr [ %i.co, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre224, %bb.t ], [ %i.co, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ] ; 3 uses
  %i.em = sub i64 %.pre-phi248, %.pre-phi250
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ugt i64 %i.cq, %i.en
  br i1 %i.eo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100
  %i.ep = sub nuw nsw i64 %i.cq, %i.en
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ep)
  %.pre226 = load ptr, ptr %i.r, align 8, !tbaa !600
  %.pre227 = load ptr, ptr %1, align 8, !tbaa !349 ; 2 uses
  %.pre251 = ptrtoint ptr %.pre227 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

bb.v:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100
  %i.eq = icmp ult i64 %i.cq, %i.en
  br i1 %i.eq, label %bb.w, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.cq ; 3 uses
  %.not.i.i101 = icmp eq ptr %i.el, %i.er
  br i1 %.not.i.i101, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102:     ; preds = %bb.w
  store ptr %i.er, ptr %i.r, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

_ZNSt6vectorIiSaIiEE6resizeEm.exit103:            ; preds = %bb.u, %bb.v, %bb.w, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102
  %.pre-phi252 = phi i64 [ %.pre251, %bb.u ], [ %.pre-phi250, %bb.v ], [ %.pre-phi250, %bb.w ], [ %.pre-phi250, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.es = phi ptr [ %.pre227, %bb.u ], [ %i.ek, %bb.v ], [ %i.ek, %bb.w ], [ %i.ek, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.et = phi ptr [ %.pre226, %bb.u ], [ %i.el, %bb.v ], [ %i.el, %bb.w ], [ %i.er, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !739 ; 7 uses
  %i.ev = load i64, ptr %i.c, align 8, !tbaa !740 ; 4 uses
  %i.ew = sub i64 %i.eu, %i.ev                    ; 5 uses
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ex, %.pre-phi252
  %i.ez = ashr exact i64 %i.ey, 2                 ; 3 uses
  %.not.i104 = icmp eq i64 %i.ew, %i.ez
  br i1 %.not.i104, label %bb.x, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit103
  %i.fa = load ptr, ptr %0, align 8, !tbaa !741   ; 5 uses
  %.idx23.i106 = shl nuw nsw i64 %i.ev, 2         ; 3 uses
  %.idx.i107 = shl nuw nsw i64 %i.eu, 2           ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.i107
  %gepdiff.i108 = sub nsw i64 %.idx.i107, %.idx23.i106
  %i.fc = ashr exact i64 %gepdiff.i108, 2
  %.not19.i109 = icmp eq i64 %i.fc, %i.ew
  br i1 %.not19.i109, label %.preheader.i110, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i110:                                  ; preds = %bb.x
  %.not2124.i111 = icmp samesign eq i64 %.idx23.i106, %.idx.i107
  br i1 %.not2124.i111, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117, label %.lr.ph.preheader.i112

.lr.ph.preheader.i112:                            ; preds = %.preheader.i110
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx23.i106
  br label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.y, %.lr.ph.preheader.i112
  %.01826.i114 = phi ptr [ %i.fh, %bb.y ], [ %i.fd, %.lr.ph.preheader.i112 ] ; 2 uses
  %.sroa.0.025.i115 = phi ptr [ %i.fi, %bb.y ], [ %i.es, %.lr.ph.preheader.i112 ] ; 2 uses
  %i.fe = load i32, ptr %.sroa.0.025.i115, align 4, !tbaa !259
  %i.ff = load i32, ptr %.01826.i114, align 4, !tbaa !612
  %i.fg = icmp eq i32 %i.ff, %i.fe
  br i1 %i.fg, label %bb.y, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.y:                                             ; preds = %.lr.ph.i113
  %i.fh = getelementptr inbounds nuw i8, ptr %.01826.i114, i64 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i115, i64 4
  %.not21.i116 = icmp eq ptr %i.fh, %i.fb
  br i1 %.not21.i116, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117, label %.lr.ph.i113, !llvm.loop !180

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117: ; preds = %bb.y, %.preheader.i110
  %i.fj = icmp ugt i64 %i.cq, %i.ew
  %i.fk = sub i64 %i.cq, %i.ew                    ; 5 uses
  br i1 %i.fj, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117
  %i.fl = load i64, ptr %i.g, align 8, !tbaa !786
  %i.fm = sub i64 %i.fl, %i.ev
  %.not.i.i.i124 = icmp ugt i64 %i.cq, %i.fm
  br i1 %.not.i.i.i124, label %bb.ac, label %.lr.ph.i.i.i.i.i125

.lr.ph.i.i.i.i.i125:                              ; preds = %bb.z
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.eu ; 5 uses
  %i.fo = add i64 %i.cq, %i.ev
  %xtraiter318 = and i64 %i.fk, 3                 ; 3 uses
  %i.fp = sub i64 %i.eu, %i.fo
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %.epil.preheader317, label %.lr.ph.i.i.i.i.i125.new

.lr.ph.i.i.i.i.i125.new:                          ; preds = %.lr.ph.i.i.i.i.i125
  %unroll_iter322 = and i64 %i.fk, -4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.i.i125.new
  %.06.i.i.i.i.i126 = phi i64 [ 0, %.lr.ph.i.i.i.i.i125.new ], [ %i.gg, %bb.aa ] ; 5 uses
  %niter323 = phi i64 [ 0, %.lr.ph.i.i.i.i.i125.new ], [ %niter323.next.3, %bb.aa ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  store i32 0, ptr %i.fr, align 4, !tbaa !612
  %i.fs = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ft = add i32 %i.fs, 1
  store i32 %i.ft, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 0, ptr %i.fv, align 4, !tbaa !612
  %i.fw = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i32 0, ptr %i.fz, align 4, !tbaa !612
  %i.ga = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !612
  %i.ge = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gg = add nuw i64 %.06.i.i.i.i.i126, 4        ; 2 uses
  %niter323.next.3 = add i64 %niter323, 4         ; 2 uses
  %niter323.ncmp.3 = icmp eq i64 %niter323.next.3, %unroll_iter322
  br i1 %niter323.ncmp.3, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa, label %bb.aa, !llvm.loop !192

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa: ; preds = %bb.aa
  %lcmp.mod320.not = icmp eq i64 %xtraiter318, 0
  br i1 %lcmp.mod320.not, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128, label %.epil.preheader317

.epil.preheader317:                               ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa, %.lr.ph.i.i.i.i.i125
  %.06.i.i.i.i.i126.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i125 ], [ %i.gg, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa ]
  %lcmp.mod321 = icmp ne i64 %xtraiter318, 0
  tail call void @llvm.assume(i1 %lcmp.mod321)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader317
  %.06.i.i.i.i.i126.epil = phi i64 [ %.06.i.i.i.i.i126.epil.init, %.epil.preheader317 ], [ %i.gk, %bb.ab ] ; 2 uses
  %epil.iter319 = phi i64 [ 0, %.epil.preheader317 ], [ %epil.iter319.next, %bb.ab ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126.epil
  store i32 0, ptr %i.gh, align 4, !tbaa !612
  %i.gi = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gk = add nuw i64 %.06.i.i.i.i.i126.epil, 1
  %epil.iter319.next = add i64 %epil.iter319, 1   ; 2 uses
  %epil.iter319.cmp.not = icmp eq i64 %epil.iter319.next, %xtraiter318
  br i1 %epil.iter319.cmp.not, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128, label %bb.ab, !llvm.loop !6269

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128: ; preds = %bb.ab, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa
  %i.gl = add i64 %i.fk, %i.eu
  store i64 %i.gl, ptr %i.a, align 8, !tbaa !732
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit129
end_hunk_3
begin_hunk_4_@_ZN5boost9container4test20vector_capacity_testINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %bb.i, %.preheader.i
  %i.bh = load i64, ptr %i.g, align 8, !tbaa !790 ; 3 uses
  %.not.i56 = icmp eq i64 %i.bh, 0
  br i1 %.not.i56, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65, label %_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8capacityEv.exit.i58

_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8capacityEv.exit.i58: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit
  %i.bi = udiv i64 %i.bh, 10
  %i.bj = sub nuw i64 %i.bh, %i.bi                ; 3 uses
  %i.bk = shl i64 %i.bj, 1                        ; 6 uses
  %i.bl = icmp sgt i64 %i.bj, 0
  br i1 %i.bl, label %bb.j, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7reserveEm.exit60

bb.j:                                             ; preds = %_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8capacityEv.exit.i58
  %i.bm = add i64 %i.bk, 8
  %i.bn = udiv i64 %i.bm, 9
  %i.bo = mul i64 %i.bn, 10                       ; 2 uses
  %.neg.i59 = sub i64 %i.av, %i.au
  %i.bp = add i64 %.neg.i59, %i.bo
  %i.bq = lshr i64 %i.bp, 1
  tail call void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE13reallocate_atEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.bo, i64 noundef %i.bq)
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7reserveEm.exit60

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7reserveEm.exit60: ; preds = %_ZNK5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8capacityEv.exit.i58, %bb.j
  %i.br = icmp ugt i64 %i.bk, 2305843009213693951
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7reserveEm.exit60
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.691) #28
  unreachable

bb.l:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7reserveEm.exit60
  %i.bs = load ptr, ptr %i.z, align 8, !tbaa !350
  %i.bt = load ptr, ptr %1, align 8, !tbaa !349   ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  %i.by = icmp ult i64 %i.bx, %i.bk
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !600 ; 2 uses
  br i1 %i.by, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61: ; preds = %bb.l
  %i.bz = ptrtoint ptr %.pre to i64
  %i.ca = sub i64 %i.bz, %i.bv
  %i.cb = shl i64 %i.bj, 3
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #29 ; 6 uses
  %i.cd = load ptr, ptr %1, align 8, !tbaa !349   ; 4 uses
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !600
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr align 4 %i.cd, i64 %i.ch, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62: ; preds = %bb.m, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61
  %.not.i8.i63 = icmp eq ptr %i.cd, null
  br i1 %.not.i8.i63, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !350
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cl) #30
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62
  store ptr %i.cc, ptr %1, align 8, !tbaa !349
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca ; 2 uses
  store ptr %i.cm, ptr %i.r, align 8, !tbaa !600
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bk
  store ptr %i.cn, ptr %i.z, align 8, !tbaa !350
  %.pre245 = ptrtoint ptr %i.cc to i64
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65

_ZNSt6vectorIiSaIiEE7reserveEm.exit65:            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit, %bb.l, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64
  %.pre-phi246 = phi i64 [ %.pre-phi242, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bv, %bb.l ], [ %.pre245, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 5 uses
  %i.co = phi ptr [ %i.as, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bt, %bb.l ], [ %i.cc, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 7 uses
  %i.cp = phi ptr [ %i.at, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %.pre, %bb.l ], [ %i.cm, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 2 uses
  %i.cq = phi i64 [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bk, %bb.l ], [ %i.bk, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 22 uses
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !752 ; 4 uses
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !753 ; 9 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 2 uses
  %i.cu = ptrtoint ptr %i.cp to i64
  %i.cv = sub i64 %i.cu, %.pre-phi246
  %i.cw = ashr exact i64 %i.cv, 2
  %.not.i66 = icmp eq i64 %i.ct, %i.cw
  br i1 %.not.i66, label %bb.o, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit65
  %i.cx = load ptr, ptr %0, align 8, !tbaa !754   ; 5 uses
  %.idx23.i68 = shl nuw nsw i64 %i.cs, 2          ; 3 uses
  %.idx.i69 = shl nuw nsw i64 %i.cr, 2            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i69
  %gepdiff.i70 = sub nsw i64 %.idx.i69, %.idx23.i68
  %i.cz = ashr exact i64 %gepdiff.i70, 2
  %.not19.i71 = icmp eq i64 %i.cz, %i.ct
  br i1 %.not19.i71, label %.preheader.i72, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i72:                                   ; preds = %bb.o
  %.not2124.i73 = icmp samesign eq i64 %.idx23.i68, %.idx.i69
  br i1 %.not2124.i73, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79, label %.lr.ph.preheader.i74

.lr.ph.preheader.i74:                             ; preds = %.preheader.i72
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx23.i68
  br label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.p, %.lr.ph.preheader.i74
  %.01826.i76 = phi ptr [ %i.de, %bb.p ], [ %i.da, %.lr.ph.preheader.i74 ] ; 2 uses
  %.sroa.0.025.i77 = phi ptr [ %i.df, %bb.p ], [ %i.co, %.lr.ph.preheader.i74 ] ; 2 uses
  %i.db = load i32, ptr %.sroa.0.025.i77, align 4, !tbaa !259
  %i.dc = load i32, ptr %.01826.i76, align 4, !tbaa !629
  %i.dd = icmp eq i32 %i.dc, %i.db
  br i1 %i.dd, label %bb.p, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.p:                                             ; preds = %.lr.ph.i75
  %i.de = getelementptr inbounds nuw i8, ptr %.01826.i76, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i77, i64 4
  %.not21.i78 = icmp eq ptr %i.de, %i.cy
  br i1 %.not21.i78, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79, label %.lr.ph.i75, !llvm.loop !182

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79: ; preds = %bb.p, %.preheader.i72
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cr
  %.not5.i.i.i.i = icmp eq i64 %i.cr, %i.cs
  br i1 %.not5.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i ], [ %i.dh, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i, align 4, !tbaa !629
  %i.di = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dk, %i.dg
  br i1 %.not.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !183

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit: ; preds = %.lr.ph.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !745
  %.not.i.i80 = icmp eq ptr %i.cp, %i.co
  br i1 %.not.i.i80, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit
  store ptr %i.co, ptr %i.r, align 8, !tbaa !600
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94: ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit
  %.not216 = icmp eq i64 %i.cq, 0
  br i1 %.not216, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94
  %i.dl = load i64, ptr %i.g, align 8, !tbaa !790
  %i.dm = sub i64 %i.dl, %i.cs
  %.not.i.i.i = icmp ugt i64 %i.cq, %i.dm
  br i1 %.not.i.i.i, label %bb.t, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs ; 5 uses
  %xtraiter = and i64 %i.cq, 2                    ; 2 uses
  %i.do = icmp ult i64 %i.cq, 4
  br i1 %i.do, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.new:                             ; preds = %.lr.ph.i.i.i.i.i
  %unroll_iter = and i64 %i.cq, 2305843009213693948
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i.new
  %.06.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %i.ee, %bb.r ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %niter.next.3, %bb.r ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  store i32 0, ptr %i.dp, align 4, !tbaa !629
  %i.dq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %i.dt, align 4, !tbaa !629
  %i.du = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 0, ptr %i.dx, align 4, !tbaa !629
  %i.dy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !629
  %i.ec = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ee = add nuw i64 %.06.i.i.i.i.i, 4           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, label %bb.r, !llvm.loop !204

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa: ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ee, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod316 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod316)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %.06.i.i.i.i.i.epil = phi i64 [ %.06.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.ei, %bb.s ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i.epil
  store i32 0, ptr %i.ef, align 4, !tbaa !629
  %i.eg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ei = add nuw i64 %.06.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %bb.s, !llvm.loop !6903

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa
  %i.ej = add i64 %i.cs, %i.cq
  store i64 %i.ej, ptr %i.a, align 8, !tbaa !745
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100

bb.t:                                             ; preds = %bb.q
  tail call void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.cq, i64 noundef %i.cq)
  %.pre224 = load ptr, ptr %i.r, align 8, !tbaa !600 ; 2 uses
  %.pre225 = load ptr, ptr %1, align 8, !tbaa !349 ; 2 uses
  %.pre247 = ptrtoint ptr %.pre224 to i64
  %.pre249 = ptrtoint ptr %.pre225 to i64
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !745
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, %bb.t, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i
  %.pre-phi250 = phi i64 [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre249, %bb.t ], [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ] ; 4 uses
  %.pre-phi248 = phi i64 [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre247, %bb.t ], [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ]
  %i.ek = phi ptr [ %i.co, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre225, %bb.t ], [ %i.co, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ] ; 4 uses
  %i.el = phi ptr [ %i.co, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre224, %bb.t ], [ %i.co, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ] ; 3 uses
  %i.em = sub i64 %.pre-phi248, %.pre-phi250
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ugt i64 %i.cq, %i.en
  br i1 %i.eo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100
  %i.ep = sub nuw nsw i64 %i.cq, %i.en
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ep)
  %.pre226 = load ptr, ptr %i.r, align 8, !tbaa !600
  %.pre227 = load ptr, ptr %1, align 8, !tbaa !349 ; 2 uses
  %.pre251 = ptrtoint ptr %.pre227 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

bb.v:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100
  %i.eq = icmp ult i64 %i.cq, %i.en
  br i1 %i.eq, label %bb.w, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.cq ; 3 uses
  %.not.i.i101 = icmp eq ptr %i.el, %i.er
  br i1 %.not.i.i101, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102:     ; preds = %bb.w
  store ptr %i.er, ptr %i.r, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

_ZNSt6vectorIiSaIiEE6resizeEm.exit103:            ; preds = %bb.u, %bb.v, %bb.w, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102
  %.pre-phi252 = phi i64 [ %.pre251, %bb.u ], [ %.pre-phi250, %bb.v ], [ %.pre-phi250, %bb.w ], [ %.pre-phi250, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.es = phi ptr [ %.pre227, %bb.u ], [ %i.ek, %bb.v ], [ %i.ek, %bb.w ], [ %i.ek, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.et = phi ptr [ %.pre226, %bb.u ], [ %i.el, %bb.v ], [ %i.el, %bb.w ], [ %i.er, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !752 ; 7 uses
  %i.ev = load i64, ptr %i.c, align 8, !tbaa !753 ; 4 uses
  %i.ew = sub i64 %i.eu, %i.ev                    ; 5 uses
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ex, %.pre-phi252
  %i.ez = ashr exact i64 %i.ey, 2                 ; 3 uses
  %.not.i104 = icmp eq i64 %i.ew, %i.ez
  br i1 %.not.i104, label %bb.x, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit103
  %i.fa = load ptr, ptr %0, align 8, !tbaa !754   ; 5 uses
  %.idx23.i106 = shl nuw nsw i64 %i.ev, 2         ; 3 uses
  %.idx.i107 = shl nuw nsw i64 %i.eu, 2           ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.i107
  %gepdiff.i108 = sub nsw i64 %.idx.i107, %.idx23.i106
  %i.fc = ashr exact i64 %gepdiff.i108, 2
  %.not19.i109 = icmp eq i64 %i.fc, %i.ew
  br i1 %.not19.i109, label %.preheader.i110, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i110:                                  ; preds = %bb.x
  %.not2124.i111 = icmp samesign eq i64 %.idx23.i106, %.idx.i107
  br i1 %.not2124.i111, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117, label %.lr.ph.preheader.i112

.lr.ph.preheader.i112:                            ; preds = %.preheader.i110
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx23.i106
  br label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.y, %.lr.ph.preheader.i112
  %.01826.i114 = phi ptr [ %i.fh, %bb.y ], [ %i.fd, %.lr.ph.preheader.i112 ] ; 2 uses
  %.sroa.0.025.i115 = phi ptr [ %i.fi, %bb.y ], [ %i.es, %.lr.ph.preheader.i112 ] ; 2 uses
  %i.fe = load i32, ptr %.sroa.0.025.i115, align 4, !tbaa !259
  %i.ff = load i32, ptr %.01826.i114, align 4, !tbaa !629
  %i.fg = icmp eq i32 %i.ff, %i.fe
  br i1 %i.fg, label %bb.y, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.y:                                             ; preds = %.lr.ph.i113
  %i.fh = getelementptr inbounds nuw i8, ptr %.01826.i114, i64 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i115, i64 4
  %.not21.i116 = icmp eq ptr %i.fh, %i.fb
  br i1 %.not21.i116, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117, label %.lr.ph.i113, !llvm.loop !182

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117: ; preds = %bb.y, %.preheader.i110
  %i.fj = icmp ugt i64 %i.cq, %i.ew
  %i.fk = sub i64 %i.cq, %i.ew                    ; 5 uses
  br i1 %i.fj, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117
  %i.fl = load i64, ptr %i.g, align 8, !tbaa !790
  %i.fm = sub i64 %i.fl, %i.ev
  %.not.i.i.i124 = icmp ugt i64 %i.cq, %i.fm
  br i1 %.not.i.i.i124, label %bb.ac, label %.lr.ph.i.i.i.i.i125

.lr.ph.i.i.i.i.i125:                              ; preds = %bb.z
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.eu ; 5 uses
  %i.fo = add i64 %i.cq, %i.ev
  %xtraiter318 = and i64 %i.fk, 3                 ; 3 uses
  %i.fp = sub i64 %i.eu, %i.fo
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %.epil.preheader317, label %.lr.ph.i.i.i.i.i125.new

.lr.ph.i.i.i.i.i125.new:                          ; preds = %.lr.ph.i.i.i.i.i125
  %unroll_iter322 = and i64 %i.fk, -4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.i.i125.new
  %.06.i.i.i.i.i126 = phi i64 [ 0, %.lr.ph.i.i.i.i.i125.new ], [ %i.gg, %bb.aa ] ; 5 uses
  %niter323 = phi i64 [ 0, %.lr.ph.i.i.i.i.i125.new ], [ %niter323.next.3, %bb.aa ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  store i32 0, ptr %i.fr, align 4, !tbaa !629
  %i.fs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ft = add i32 %i.fs, 1
  store i32 %i.ft, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 0, ptr %i.fv, align 4, !tbaa !629
  %i.fw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i32 0, ptr %i.fz, align 4, !tbaa !629
  %i.ga = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !629
  %i.ge = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gg = add nuw i64 %.06.i.i.i.i.i126, 4        ; 2 uses
  %niter323.next.3 = add i64 %niter323, 4         ; 2 uses
  %niter323.ncmp.3 = icmp eq i64 %niter323.next.3, %unroll_iter322
  br i1 %niter323.ncmp.3, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa, label %bb.aa, !llvm.loop !204

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa: ; preds = %bb.aa
  %lcmp.mod320.not = icmp eq i64 %xtraiter318, 0
  br i1 %lcmp.mod320.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128, label %.epil.preheader317

.epil.preheader317:                               ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa, %.lr.ph.i.i.i.i.i125
  %.06.i.i.i.i.i126.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i125 ], [ %i.gg, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa ]
  %lcmp.mod321 = icmp ne i64 %xtraiter318, 0
  tail call void @llvm.assume(i1 %lcmp.mod321)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader317
  %.06.i.i.i.i.i126.epil = phi i64 [ %.06.i.i.i.i.i126.epil.init, %.epil.preheader317 ], [ %i.gk, %bb.ab ] ; 2 uses
  %epil.iter319 = phi i64 [ 0, %.epil.preheader317 ], [ %epil.iter319.next, %bb.ab ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126.epil
  store i32 0, ptr %i.gh, align 4, !tbaa !629
  %i.gi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gk = add nuw i64 %.06.i.i.i.i.i126.epil, 1
  %epil.iter319.next = add i64 %epil.iter319, 1   ; 2 uses
  %epil.iter319.cmp.not = icmp eq i64 %epil.iter319.next, %xtraiter318
  br i1 %epil.iter319.cmp.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128, label %bb.ab, !llvm.loop !6904

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128: ; preds = %bb.ab, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa
  %i.gl = add i64 %i.fk, %i.eu
  store i64 %i.gl, ptr %i.a, align 8, !tbaa !745
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit129
end_hunk_4
begin_hunk_5_@_ZN5boost9container4test20vector_capacity_testINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %bb.i, %.preheader.i
  %i.bh = load i64, ptr %i.g, align 8, !tbaa !794 ; 3 uses
  %.not.i56 = icmp eq i64 %i.bh, 0
  br i1 %.not.i56, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65, label %_ZNK5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8capacityEv.exit.i58

_ZNK5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8capacityEv.exit.i58: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit
  %i.bi = udiv i64 %i.bh, 10
  %i.bj = sub nuw i64 %i.bh, %i.bi                ; 3 uses
  %i.bk = shl i64 %i.bj, 1                        ; 6 uses
  %i.bl = icmp sgt i64 %i.bj, 0
  br i1 %i.bl, label %bb.j, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7reserveEm.exit60

bb.j:                                             ; preds = %_ZNK5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8capacityEv.exit.i58
  %i.bm = add i64 %i.bk, 8
  %i.bn = udiv i64 %i.bm, 9
  %i.bo = mul i64 %i.bn, 10                       ; 2 uses
  %.neg.i59 = sub i64 %i.av, %i.au
  %i.bp = add i64 %.neg.i59, %i.bo
  %i.bq = lshr i64 %i.bp, 1
  tail call void @_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE13reallocate_atEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.bo, i64 noundef %i.bq)
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7reserveEm.exit60

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7reserveEm.exit60: ; preds = %_ZNK5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8capacityEv.exit.i58, %bb.j
  %i.br = icmp ugt i64 %i.bk, 2305843009213693951
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7reserveEm.exit60
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.691) #28
  unreachable

bb.l:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7reserveEm.exit60
  %i.bs = load ptr, ptr %i.z, align 8, !tbaa !350
  %i.bt = load ptr, ptr %1, align 8, !tbaa !349   ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  %i.by = icmp ult i64 %i.bx, %i.bk
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !600 ; 2 uses
  br i1 %i.by, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61: ; preds = %bb.l
  %i.bz = ptrtoint ptr %.pre to i64
  %i.ca = sub i64 %i.bz, %i.bv
  %i.cb = shl i64 %i.bj, 3
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #29 ; 6 uses
  %i.cd = load ptr, ptr %1, align 8, !tbaa !349   ; 4 uses
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !600
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr align 4 %i.cd, i64 %i.ch, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62: ; preds = %bb.m, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i61
  %.not.i8.i63 = icmp eq ptr %i.cd, null
  br i1 %.not.i8.i63, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !350
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cl) #30
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i62
  store ptr %i.cc, ptr %1, align 8, !tbaa !349
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca ; 2 uses
  store ptr %i.cm, ptr %i.r, align 8, !tbaa !600
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bk
  store ptr %i.cn, ptr %i.z, align 8, !tbaa !350
  %.pre245 = ptrtoint ptr %i.cc to i64
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit65

_ZNSt6vectorIiSaIiEE7reserveEm.exit65:            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit, %bb.l, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64
  %.pre-phi246 = phi i64 [ %.pre-phi242, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bv, %bb.l ], [ %.pre245, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 5 uses
  %i.co = phi ptr [ %i.as, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bt, %bb.l ], [ %i.cc, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 7 uses
  %i.cp = phi ptr [ %i.at, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %.pre, %bb.l ], [ %i.cm, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 2 uses
  %i.cq = phi i64 [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit ], [ %i.bk, %bb.l ], [ %i.bk, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i64 ] ; 22 uses
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !765 ; 4 uses
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !766 ; 9 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 2 uses
  %i.cu = ptrtoint ptr %i.cp to i64
  %i.cv = sub i64 %i.cu, %.pre-phi246
  %i.cw = ashr exact i64 %i.cv, 2
  %.not.i66 = icmp eq i64 %i.ct, %i.cw
  br i1 %.not.i66, label %bb.o, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit65
  %i.cx = load ptr, ptr %0, align 8, !tbaa !767   ; 5 uses
  %.idx23.i68 = shl nuw nsw i64 %i.cs, 2          ; 3 uses
  %.idx.i69 = shl nuw nsw i64 %i.cr, 2            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i69
  %gepdiff.i70 = sub nsw i64 %.idx.i69, %.idx23.i68
  %i.cz = ashr exact i64 %gepdiff.i70, 2
  %.not19.i71 = icmp eq i64 %i.cz, %i.ct
  br i1 %.not19.i71, label %.preheader.i72, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i72:                                   ; preds = %bb.o
  %.not2124.i73 = icmp samesign eq i64 %.idx23.i68, %.idx.i69
  br i1 %.not2124.i73, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79, label %.lr.ph.preheader.i74

.lr.ph.preheader.i74:                             ; preds = %.preheader.i72
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx23.i68
  br label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.p, %.lr.ph.preheader.i74
  %.01826.i76 = phi ptr [ %i.de, %bb.p ], [ %i.da, %.lr.ph.preheader.i74 ] ; 2 uses
  %.sroa.0.025.i77 = phi ptr [ %i.df, %bb.p ], [ %i.co, %.lr.ph.preheader.i74 ] ; 2 uses
  %i.db = load i32, ptr %.sroa.0.025.i77, align 4, !tbaa !259
  %i.dc = load i32, ptr %.01826.i76, align 4, !tbaa !646
  %i.dd = icmp eq i32 %i.dc, %i.db
  br i1 %i.dd, label %bb.p, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.p:                                             ; preds = %.lr.ph.i75
  %i.de = getelementptr inbounds nuw i8, ptr %.01826.i76, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i77, i64 4
  %.not21.i78 = icmp eq ptr %i.de, %i.cy
  br i1 %.not21.i78, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79, label %.lr.ph.i75, !llvm.loop !184

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79: ; preds = %bb.p, %.preheader.i72
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cr
  %.not5.i.i.i.i = icmp eq i64 %i.cr, %i.cs
  br i1 %.not5.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i ], [ %i.dh, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i, align 4, !tbaa !646
  %i.di = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dk, %i.dg
  br i1 %.not.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !185

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit: ; preds = %.lr.ph.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit79
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !758
  %.not.i.i80 = icmp eq ptr %i.cp, %i.co
  br i1 %.not.i.i80, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit
  store ptr %i.co, ptr %i.r, align 8, !tbaa !600
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94: ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit
  %.not216 = icmp eq i64 %i.cq, 0
  br i1 %.not216, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94
  %i.dl = load i64, ptr %i.g, align 8, !tbaa !794
  %i.dm = sub i64 %i.dl, %i.cs
  %.not.i.i.i = icmp ugt i64 %i.cq, %i.dm
  br i1 %.not.i.i.i, label %bb.t, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs ; 5 uses
  %xtraiter = and i64 %i.cq, 2                    ; 2 uses
  %i.do = icmp ult i64 %i.cq, 4
  br i1 %i.do, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.new:                             ; preds = %.lr.ph.i.i.i.i.i
  %unroll_iter = and i64 %i.cq, 2305843009213693948
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i.new
  %.06.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %i.ee, %bb.r ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %niter.next.3, %bb.r ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  store i32 0, ptr %i.dp, align 4, !tbaa !646
  %i.dq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 0, ptr %i.dt, align 4, !tbaa !646
  %i.du = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 0, ptr %i.dx, align 4, !tbaa !646
  %i.dy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !646
  %i.ec = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ee = add nuw i64 %.06.i.i.i.i.i, 4           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, label %bb.r, !llvm.loop !222

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa: ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ee, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod316 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod316)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %.06.i.i.i.i.i.epil = phi i64 [ %.06.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.ei, %bb.s ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.06.i.i.i.i.i.epil
  store i32 0, ptr %i.ef, align 4, !tbaa !646
  %i.eg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ei = add nuw i64 %.06.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %bb.s, !llvm.loop !7789

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa
  %i.ej = add i64 %i.cs, %i.cq
  store i64 %i.ej, ptr %i.a, align 8, !tbaa !758
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100

bb.t:                                             ; preds = %bb.q
  tail call void @_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.cq, i64 noundef %i.cq)
  %.pre224 = load ptr, ptr %i.r, align 8, !tbaa !600 ; 2 uses
  %.pre225 = load ptr, ptr %1, align 8, !tbaa !349 ; 2 uses
  %.pre247 = ptrtoint ptr %.pre224 to i64
  %.pre249 = ptrtoint ptr %.pre225 to i64
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit94
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !758
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, %bb.t, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i
  %.pre-phi250 = phi i64 [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre249, %bb.t ], [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ] ; 4 uses
  %.pre-phi248 = phi i64 [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre247, %bb.t ], [ %.pre-phi246, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ]
  %i.ek = phi ptr [ %i.co, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre225, %bb.t ], [ %i.co, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ] ; 4 uses
  %i.el = phi ptr [ %i.co, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ], [ %.pre224, %bb.t ], [ %i.co, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ] ; 3 uses
  %i.em = sub i64 %.pre-phi248, %.pre-phi250
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ugt i64 %i.cq, %i.en
  br i1 %i.eo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100
  %i.ep = sub nuw nsw i64 %i.cq, %i.en
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ep)
  %.pre226 = load ptr, ptr %i.r, align 8, !tbaa !600
  %.pre227 = load ptr, ptr %1, align 8, !tbaa !349 ; 2 uses
  %.pre251 = ptrtoint ptr %.pre227 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

bb.v:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit100
  %i.eq = icmp ult i64 %i.cq, %i.en
  br i1 %i.eq, label %bb.w, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.cq ; 3 uses
  %.not.i.i101 = icmp eq ptr %i.el, %i.er
  br i1 %.not.i.i101, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102:     ; preds = %bb.w
  store ptr %i.er, ptr %i.r, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit103

_ZNSt6vectorIiSaIiEE6resizeEm.exit103:            ; preds = %bb.u, %bb.v, %bb.w, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102
  %.pre-phi252 = phi i64 [ %.pre251, %bb.u ], [ %.pre-phi250, %bb.v ], [ %.pre-phi250, %bb.w ], [ %.pre-phi250, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.es = phi ptr [ %.pre227, %bb.u ], [ %i.ek, %bb.v ], [ %i.ek, %bb.w ], [ %i.ek, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.et = phi ptr [ %.pre226, %bb.u ], [ %i.el, %bb.v ], [ %i.el, %bb.w ], [ %i.er, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i102 ] ; 3 uses
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !765 ; 7 uses
  %i.ev = load i64, ptr %i.c, align 8, !tbaa !766 ; 4 uses
  %i.ew = sub i64 %i.eu, %i.ev                    ; 5 uses
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ex, %.pre-phi252
  %i.ez = ashr exact i64 %i.ey, 2                 ; 3 uses
  %.not.i104 = icmp eq i64 %i.ew, %i.ez
  br i1 %.not.i104, label %bb.x, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit103
  %i.fa = load ptr, ptr %0, align 8, !tbaa !767   ; 5 uses
  %.idx23.i106 = shl nuw nsw i64 %i.ev, 2         ; 3 uses
  %.idx.i107 = shl nuw nsw i64 %i.eu, 2           ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.i107
  %gepdiff.i108 = sub nsw i64 %.idx.i107, %.idx23.i106
  %i.fc = ashr exact i64 %gepdiff.i108, 2
  %.not19.i109 = icmp eq i64 %i.fc, %i.ew
  br i1 %.not19.i109, label %.preheader.i110, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i110:                                  ; preds = %bb.x
  %.not2124.i111 = icmp samesign eq i64 %.idx23.i106, %.idx.i107
  br i1 %.not2124.i111, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117, label %.lr.ph.preheader.i112

.lr.ph.preheader.i112:                            ; preds = %.preheader.i110
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx23.i106
  br label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.y, %.lr.ph.preheader.i112
  %.01826.i114 = phi ptr [ %i.fh, %bb.y ], [ %i.fd, %.lr.ph.preheader.i112 ] ; 2 uses
  %.sroa.0.025.i115 = phi ptr [ %i.fi, %bb.y ], [ %i.es, %.lr.ph.preheader.i112 ] ; 2 uses
  %i.fe = load i32, ptr %.sroa.0.025.i115, align 4, !tbaa !259
  %i.ff = load i32, ptr %.01826.i114, align 4, !tbaa !646
  %i.fg = icmp eq i32 %i.ff, %i.fe
  br i1 %i.fg, label %bb.y, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.y:                                             ; preds = %.lr.ph.i113
  %i.fh = getelementptr inbounds nuw i8, ptr %.01826.i114, i64 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i115, i64 4
  %.not21.i116 = icmp eq ptr %i.fh, %i.fb
  br i1 %.not21.i116, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117, label %.lr.ph.i113, !llvm.loop !184

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117: ; preds = %bb.y, %.preheader.i110
  %i.fj = icmp ugt i64 %i.cq, %i.ew
  %i.fk = sub i64 %i.cq, %i.ew                    ; 5 uses
  br i1 %i.fj, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit117
  %i.fl = load i64, ptr %i.g, align 8, !tbaa !794
  %i.fm = sub i64 %i.fl, %i.ev
  %.not.i.i.i124 = icmp ugt i64 %i.cq, %i.fm
  br i1 %.not.i.i.i124, label %bb.ac, label %.lr.ph.i.i.i.i.i125

.lr.ph.i.i.i.i.i125:                              ; preds = %bb.z
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.eu ; 5 uses
  %i.fo = add i64 %i.cq, %i.ev
  %xtraiter318 = and i64 %i.fk, 3                 ; 3 uses
  %i.fp = sub i64 %i.eu, %i.fo
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %.epil.preheader317, label %.lr.ph.i.i.i.i.i125.new

.lr.ph.i.i.i.i.i125.new:                          ; preds = %.lr.ph.i.i.i.i.i125
  %unroll_iter322 = and i64 %i.fk, -4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.i.i125.new
  %.06.i.i.i.i.i126 = phi i64 [ 0, %.lr.ph.i.i.i.i.i125.new ], [ %i.gg, %bb.aa ] ; 5 uses
  %niter323 = phi i64 [ 0, %.lr.ph.i.i.i.i.i125.new ], [ %niter323.next.3, %bb.aa ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  store i32 0, ptr %i.fr, align 4, !tbaa !646
  %i.fs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ft = add i32 %i.fs, 1
  store i32 %i.ft, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 0, ptr %i.fv, align 4, !tbaa !646
  %i.fw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i32 0, ptr %i.fz, align 4, !tbaa !646
  %i.ga = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !646
  %i.ge = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gg = add nuw i64 %.06.i.i.i.i.i126, 4        ; 2 uses
  %niter323.next.3 = add i64 %niter323, 4         ; 2 uses
  %niter323.ncmp.3 = icmp eq i64 %niter323.next.3, %unroll_iter322
  br i1 %niter323.ncmp.3, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa, label %bb.aa, !llvm.loop !222

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa: ; preds = %bb.aa
  %lcmp.mod320.not = icmp eq i64 %xtraiter318, 0
  br i1 %lcmp.mod320.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128, label %.epil.preheader317

.epil.preheader317:                               ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa, %.lr.ph.i.i.i.i.i125
  %.06.i.i.i.i.i126.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i125 ], [ %i.gg, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa ]
  %lcmp.mod321 = icmp ne i64 %xtraiter318, 0
  tail call void @llvm.assume(i1 %lcmp.mod321)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader317
  %.06.i.i.i.i.i126.epil = phi i64 [ %.06.i.i.i.i.i126.epil.init, %.epil.preheader317 ], [ %i.gk, %bb.ab ] ; 2 uses
  %epil.iter319 = phi i64 [ 0, %.epil.preheader317 ], [ %epil.iter319.next, %bb.ab ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.06.i.i.i.i.i126.epil
  store i32 0, ptr %i.gh, align 4, !tbaa !646
  %i.gi = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gk = add nuw i64 %.06.i.i.i.i.i126.epil, 1
  %epil.iter319.next = add i64 %epil.iter319, 1   ; 2 uses
  %epil.iter319.cmp.not = icmp eq i64 %epil.iter319.next, %xtraiter318
  br i1 %epil.iter319.cmp.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128, label %bb.ab, !llvm.loop !7790

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128: ; preds = %bb.ab, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i128.unr-lcssa
  %i.gl = add i64 %i.fk, %i.eu
  store i64 %i.gl, ptr %i.a, align 8, !tbaa !758
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit129
end_hunk_5

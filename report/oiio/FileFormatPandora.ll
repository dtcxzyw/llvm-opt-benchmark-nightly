inline.NumInlined: 825
inline.NumDeleted: 324
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.p = alloca i32, align 4                      ; 8 uses
  %7 = alloca %"class.std::vector.9", align 16    ; 15 uses
  %8 = alloca %"class.std::vector.4", align 8     ; 13 uses
  %9 = alloca %"class.std::vector.9", align 16    ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.q = alloca i32, align 4                      ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !7
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %2, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !27
  %i.x = and i32 %i.w, 5
  %.not638 = icmp eq i32 %i.x, 0
  br i1 %.not638, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull @.str.5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.y) #23
  br label %bb.er

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !13
  store i8 0, ptr %i.aa, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ac, ptr %6, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !13
  store i8 0, ptr %i.ac, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23
  store i32 0, ptr %i.p, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 10 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 10 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 10 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.e
  %.sroa.32.0.ph = phi ptr [ null, %bb.e ], [ %.sroa.32.0.ph.be, %.outer.backedge ] ; 35 uses
  %.sroa.18.0.ph = phi ptr [ null, %bb.e ], [ %.sroa.18.0.ph.be, %.outer.backedge ] ; 12 uses
  %.sroa.0579.0.ph = phi ptr [ null, %bb.e ], [ %.sroa.0579.0.ph.be, %.outer.backedge ] ; 45 uses
  %.0603.ph = phi i32 [ 0, %bb.e ], [ %.0603.ph.be, %.outer.backedge ] ; 11 uses
  %.0113.ph = phi i32 [ 0, %bb.e ], [ %i.bk, %.outer.backedge ]
  %.096.ph = phi i1 [ false, %bb.e ], [ %.096.ph.be, %.outer.backedge ] ; 5 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.outer
  %.0113 = phi i32 [ %.0113.ph, %.outer ], [ %i.bk, %.backedge.backedge ]
  %i.bj = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_58nextlineERSiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.f unwind label %.loopexit.loopexit

bb.f:                                             ; preds = %.backedge
  br i1 %i.bj, label %bb.g, label %bb.cu

bb.g:                                             ; preds = %bb.f
  %i.bk = add nsw i32 %.0113, 1                   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.ae, ptr %12, align 8, !tbaa !9
  %i.bl = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.bm = load i64, ptr %i.ab, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  store i64 %i.bm, ptr %i.o, align 8, !tbaa !36
  %i.bn = icmp ugt i64 %i.bm, 15
  br i1 %i.bn, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.bo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc unwind label %bb.q     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bo, ptr %12, align 8, !tbaa !26
  %i.bp = load i64, ptr %i.o, align 8, !tbaa !36
  store i64 %i.bp, ptr %i.ae, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.g
  %i.bq = phi ptr [ %i.bo, %.noexc ], [ %i.ae, %bb.g ] ; 2 uses
  switch i64 %i.bm, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.br = load i8, ptr %i.bl, align 1, !tbaa !16
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !16
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bl, i64 %i.bm, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.bs = load i64, ptr %i.o, align 8, !tbaa !36  ; 2 uses
  store i64 %i.bs, ptr %i.af, align 8, !tbaa !13
  %i.bt = load ptr, ptr %12, align 8, !tbaa !26
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store i8 0, ptr %i.bu, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  invoke void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull %12)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.bv = load ptr, ptr %11, align 8, !tbaa !26, !noalias !37 ; 7 uses
  %i.bw = load i64, ptr %i.ag, align 8, !tbaa !13, !noalias !37 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  %.not6.i.i = icmp samesign eq i64 %i.bw, 0
  br i1 %.not6.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i, label %iter.check1458

iter.check1458:                                   ; preds = %bb.k
  %min.iters.check1443 = icmp ult i64 %i.bw, 8
  br i1 %min.iters.check1443, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check1444

vector.main.loop.iter.check1444:                  ; preds = %iter.check1458
  %min.iters.check1445 = icmp ult i64 %i.bw, 32
  br i1 %min.iters.check1445, label %vec.epilog.ph1462, label %vector.ph1446

vector.ph1446:                                    ; preds = %vector.main.loop.iter.check1444
  %n.mod.vf1447 = and i64 %i.bw, 24
  %n.vec1448 = and i64 %i.bw, -32                 ; 4 uses
  %i.by = getelementptr i8, ptr %i.bv, i64 %n.vec1448
  br label %vector.body1449

vector.body1449:                                  ; preds = %vector.body1449, %vector.ph1446
  %index1450 = phi i64 [ 0, %vector.ph1446 ], [ %index.next1454, %vector.body1449 ] ; 2 uses
  %next.gep1451 = getelementptr i8, ptr %i.bv, i64 %index1450 ; 3 uses
  %i.bz = getelementptr i8, ptr %next.gep1451, i64 16 ; 2 uses
  %wide.load1452 = load <16 x i8>, ptr %next.gep1451, align 1, !tbaa !16, !noalias !37 ; 3 uses
  %wide.load1453 = load <16 x i8>, ptr %i.bz, align 1, !tbaa !16, !noalias !37 ; 3 uses
  %i.ca = add <16 x i8> %wide.load1452, splat (i8 -65)
  %i.cb = add <16 x i8> %wide.load1453, splat (i8 -65)
  %i.cc = icmp ult <16 x i8> %i.ca, splat (i8 26)
  %i.cd = icmp ult <16 x i8> %i.cb, splat (i8 26)
  %37 = or disjoint <16 x i8> %wide.load1452, splat (i8 32)
  %i.ce = or disjoint <16 x i8> %wide.load1453, splat (i8 32)
  %i.cf = select <16 x i1> %i.cc, <16 x i8> %37, <16 x i8> %wide.load1452
  %38 = select <16 x i1> %i.cd, <16 x i8> %i.ce, <16 x i8> %wide.load1453
  store <16 x i8> %i.cf, ptr %next.gep1451, align 1, !tbaa !16, !noalias !37
  store <16 x i8> %38, ptr %i.bz, align 1, !tbaa !16, !noalias !37
  %index.next1454 = add nuw i64 %index1450, 32    ; 2 uses
  %i.cg = icmp eq i64 %index.next1454, %n.vec1448
  br i1 %i.cg, label %middle.block1455, label %vector.body1449, !llvm.loop !40

middle.block1455:                                 ; preds = %vector.body1449
  %cmp.n1456 = icmp eq i64 %i.bw, %n.vec1448
  br i1 %cmp.n1456, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check1460

vec.epilog.iter.check1460:                        ; preds = %middle.block1455
  %min.epilog.iters.check1461 = icmp eq i64 %n.mod.vf1447, 0
  br i1 %min.epilog.iters.check1461, label %.lr.ph.i.i.preheader, label %vec.epilog.ph1462, !prof !44

vec.epilog.ph1462:                                ; preds = %vector.main.loop.iter.check1444, %vec.epilog.iter.check1460
  %vec.epilog.resume.val1457 = phi i64 [ %n.vec1448, %vec.epilog.iter.check1460 ], [ 0, %vector.main.loop.iter.check1444 ]
  %n.vec1464 = and i64 %i.bw, -8                  ; 3 uses
  %i.ch = getelementptr i8, ptr %i.bv, i64 %n.vec1464
  br label %vec.epilog.vector.body1465

vec.epilog.vector.body1465:                       ; preds = %vec.epilog.vector.body1465, %vec.epilog.ph1462
  %index1466 = phi i64 [ %vec.epilog.resume.val1457, %vec.epilog.ph1462 ], [ %index.next1469, %vec.epilog.vector.body1465 ] ; 2 uses
  %next.gep1467 = getelementptr i8, ptr %i.bv, i64 %index1466 ; 2 uses
  %wide.load1468 = load <8 x i8>, ptr %next.gep1467, align 1, !tbaa !16, !noalias !37 ; 3 uses
  %i.ci = add <8 x i8> %wide.load1468, splat (i8 -65)
  %i.cj = icmp ult <8 x i8> %i.ci, splat (i8 26)
  %39 = or disjoint <8 x i8> %wide.load1468, splat (i8 32)
  %40 = select <8 x i1> %i.cj, <8 x i8> %39, <8 x i8> %wide.load1468
  store <8 x i8> %40, ptr %next.gep1467, align 1, !tbaa !16, !noalias !37
  %index.next1469 = add nuw i64 %index1466, 8     ; 2 uses
  %i.ck = icmp eq i64 %index.next1469, %n.vec1464
  br i1 %i.ck, label %vec.epilog.middle.block1470, label %vec.epilog.vector.body1465, !llvm.loop !45

vec.epilog.middle.block1470:                      ; preds = %vec.epilog.vector.body1465
  %cmp.n1471 = icmp eq i64 %i.bw, %n.vec1464
  br i1 %cmp.n1471, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check1458, %vec.epilog.iter.check1460, %vec.epilog.middle.block1470
  %.sroa.0.08.i.i.ph = phi ptr [ %i.bv, %iter.check1458 ], [ %i.by, %vec.epilog.iter.check1460 ], [ %i.ch, %vec.epilog.middle.block1470 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.co, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.cl = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !16, !noalias !37 ; 3 uses
  %i.cm = add i8 %i.cl, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.cm, 26
  %i.cn = or disjoint i8 %i.cl, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.cn, i8 %i.cl
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !16, !noalias !37
  %i.co = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.co, %i.bx
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !46

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block1470, %middle.block1455
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !26, !noalias !37
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %bb.k
  %i.cp = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.bv, %bb.k ] ; 2 uses
  store ptr %i.ah, ptr %10, align 8, !tbaa !9, !alias.scope !37
  %i.cq = icmp eq ptr %i.cp, %i.ai
  br i1 %i.cq, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.l:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.cr = load i64, ptr %i.ag, align 8, !tbaa !13, !noalias !37 ; 3 uses
  %i.cs = icmp ult i64 %i.cr, 16
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.cr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.ct, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.cp, ptr %10, align 8, !tbaa !26, !alias.scope !37
  %i.cu = load i64, ptr %i.ai, align 8, !tbaa !16, !noalias !37
  store i64 %i.cu, ptr %i.ah, align 8, !tbaa !16, !alias.scope !37
  %.pre4.i = load i64, ptr %i.ag, align 8, !tbaa !13, !noalias !37
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %i.cv = phi i64 [ %i.cr, %bb.l ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  store i64 %i.cv, ptr %i.aj, align 8, !tbaa !13, !alias.scope !37
  store ptr %i.ai, ptr %11, align 8, !tbaa !26, !noalias !37
  store i64 0, ptr %i.ag, align 8, !tbaa !13, !noalias !37
  store i8 0, ptr %i.ai, align 8, !tbaa !16, !noalias !37
  invoke void @_ZN11StringUtils18SplitByWhiteSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.9") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.cw = load ptr, ptr %7, align 16, !tbaa !47   ; 5 uses
  %i.cx = load ptr, ptr %i.ak, align 8, !tbaa !50 ; 2 uses
  %i.cy = load ptr, ptr %i.al, align 16, !tbaa !51
  %i.cz = load <2 x ptr>, ptr %9, align 16, !tbaa !52
  store <2 x ptr> %i.cz, ptr %7, align 16, !tbaa !52
  %i.da = load ptr, ptr %i.an, align 16, !tbaa !51
  store ptr %i.da, ptr %i.al, align 16, !tbaa !51
  %.not4.i.i.i.i.i = icmp eq ptr %i.cw, %i.cx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.dg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.cw, %bb.n ] ; 3 uses
  %i.db = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !16
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dg, %i.cx
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !53

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %bb.n
  %.not.i.i1.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.dh = ptrtoint ptr %i.cy to i64
  %i.di = ptrtoint ptr %i.cw to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.dj) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.o
  %i.dk = load ptr, ptr %9, align 16, !tbaa !47   ; 3 uses
  %i.dl = load ptr, ptr %i.am, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dk, %i.dl
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.dk, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.dm = load ptr, ptr %.05.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !16
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dr, %i.dl
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !53

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 16, !tbaa !47
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.ds = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.dk, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.dt = load ptr, ptr %i.an, align 16, !tbaa !51
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dw) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.p
  %i.dx = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.ah
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.dz = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  %i.eb = load ptr, ptr %11, align 8, !tbaa !26   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.ai
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ed = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  %i.ef = load ptr, ptr %12, align 8, !tbaa !26   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.ae
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.eh = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.ej = load ptr, ptr %7, align 16, !tbaa !52   ; 18 uses
  %i.ek = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 6 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %.backedge.backedge, label %bb.t

.backedge.backedge:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit
  br label %.backedge, !llvm.loop !54

.loopexit.loopexit:                               ; preds = %.backedge
  %lpad.loopexit649 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i436, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i426, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.bz, %bb.ap
  %.sroa.32.1.ph.ph = phi ptr [ %.sroa.32.9, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i436 ], [ %.sroa.32.8, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i426 ], [ %.sroa.32.0.ph, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.32.0.ph, %bb.bz ], [ %.sroa.32.0.ph, %bb.ap ]
  %.sroa.0579.1.ph.ph = phi ptr [ %.sroa.0579.9, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i436 ], [ %.sroa.0579.8, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i426 ], [ %.sroa.0579.0.ph, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0579.0.ph, %bb.bz ], [ %.sroa.0579.0.ph, %bb.ap ]
  %lpad.loopexit.split-lp650 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %bb.ch, %bb.cm, %bb.cr
  %.sroa.32.1.ph642 = phi ptr [ %.sroa.32.8, %bb.cm ], [ %.sroa.32.0.ph, %bb.ch ], [ %.sroa.32.9, %bb.cr ]
  %.sroa.0579.1.ph643 = phi ptr [ %.sroa.0579.8, %bb.cm ], [ %.sroa.0579.0.ph, %bb.ch ], [ %.sroa.0579.9, %bb.cr ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.q:                                             ; preds = %.noexc.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

bb.r:                                             ; preds = %bb.j
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

bb.s:                                             ; preds = %bb.m
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.ah
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %bb.s
  %i.er = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  %i.et = load ptr, ptr %11, align 8, !tbaa !26   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.ai
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %i.ev = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199, %bb.r
  %.pn128.pn = phi { ptr, i32 } [ %i.en, %bb.r ], [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199 ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ] ; 2 uses
  %i.ex = load ptr, ptr %12, align 8, !tbaa !26   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.ae
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %i.ez = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202, %bb.q
  %.pn128.pn.pn = phi { ptr, i32 } [ %i.em, %bb.q ], [ %.pn128.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202 ], [ %.pn128.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.loopexit

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !13 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit311.thread, label %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit

_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit: ; preds = %bb.t
  %i.fe = load ptr, ptr %i.ej, align 8, !tbaa !26 ; 4 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !16
  %i.fg = icmp eq i8 %i.ff, 35
  br i1 %i.fg, label %.backedge.backedge, label %.thread

.thread:                                          ; preds = %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit
  switch i64 %i.fc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit311.thread [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit243
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.thread
  %i.fh = load i32, ptr %i.fe, align 1
  %i.fi = xor i32 %i.fh, 1851877475
  %i.fj = getelementptr i8, ptr %i.fe, i64 3
  %i.fk = load i32, ptr %i.fj, align 1
  %i.fl = xor i32 %i.fk, 1818586734
  %i.fm = or i32 %i.fi, %i.fl
  %i.fn = icmp ne i32 %i.fm, 0
  %i.fo = zext i1 %i.fn to i32
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread605, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit311.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread605: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fq = ptrtoint ptr %i.ek to i64
  %i.fr = ptrtoint ptr %i.ej to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %.not161 = icmp eq i64 %i.fs, 64
  br i1 %.not161, label %bb.u, label %.critedge171.thread

bb.u:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread605
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  store ptr %i.ao, ptr %14, align 8, !tbaa !9
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !26 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  store i64 %i.fw, ptr %i.n, align 8, !tbaa !36
  %i.fx = icmp ugt i64 %i.fw, 15
  br i1 %i.fx, label %.noexc.i206, label %._crit_edge.i.i205

.noexc.i206:                                      ; preds = %bb.u
  %i.fy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc207 unwind label %bb.ab ; 2 uses

.noexc207:                                        ; preds = %.noexc.i206
  store ptr %i.fy, ptr %14, align 8, !tbaa !26
  %i.fz = load i64, ptr %i.n, align 8, !tbaa !36
  store i64 %i.fz, ptr %i.ao, align 8, !tbaa !16
  br label %._crit_edge.i.i205

._crit_edge.i.i205:                               ; preds = %.noexc207, %bb.u
  %i.ga = phi ptr [ %i.fy, %.noexc207 ], [ %i.ao, %bb.u ] ; 2 uses
  switch i64 %i.fw, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i205
  %i.gb = load i8, ptr %i.fu, align 1, !tbaa !16
  store i8 %i.gb, ptr %i.ga, align 1, !tbaa !16
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i205
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ga, ptr align 1 %i.fu, i64 %i.fw, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i205
  %i.gc = load i64, ptr %i.n, align 8, !tbaa !36  ; 2 uses
  store i64 %i.gc, ptr %i.ap, align 8, !tbaa !13
  %i.gd = load ptr, ptr %14, align 8, !tbaa !26
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gc
  store i8 0, ptr %i.ge, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.gf = load ptr, ptr %14, align 8, !tbaa !26, !noalias !55 ; 7 uses
  %i.gg = load i64, ptr %i.ap, align 8, !tbaa !13, !noalias !55 ; 9 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gg
  %.not6.i.i209 = icmp samesign eq i64 %i.gg, 0
  br i1 %.not6.i.i209, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i217, label %iter.check

iter.check:                                       ; preds = %bb.x
  %min.iters.check = icmp ult i64 %i.gg, 8
  br i1 %min.iters.check, label %.lr.ph.i.i210.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1313 = icmp ult i64 %i.gg, 32
  br i1 %min.iters.check1313, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.gg, 24
  %n.vec = and i64 %i.gg, -32                     ; 4 uses
  %i.gi = getelementptr i8, ptr %i.gf, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gf, i64 %index ; 3 uses
  %i.gj = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !16, !noalias !55 ; 3 uses
  %wide.load1314 = load <16 x i8>, ptr %i.gj, align 1, !tbaa !16, !noalias !55 ; 3 uses
  %i.gk = add <16 x i8> %wide.load, splat (i8 -65)
  %i.gl = add <16 x i8> %wide.load1314, splat (i8 -65)
  %i.gm = icmp ult <16 x i8> %i.gk, splat (i8 26)
  %i.gn = icmp ult <16 x i8> %i.gl, splat (i8 26)
  %41 = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.go = or disjoint <16 x i8> %wide.load1314, splat (i8 32)
  %i.gp = select <16 x i1> %i.gm, <16 x i8> %41, <16 x i8> %wide.load
  %42 = select <16 x i1> %i.gn, <16 x i8> %i.go, <16 x i8> %wide.load1314
  store <16 x i8> %i.gp, ptr %next.gep, align 1, !tbaa !16, !noalias !55
  store <16 x i8> %42, ptr %i.gj, align 1, !tbaa !16, !noalias !55
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gq = icmp eq i64 %index.next, %n.vec
  br i1 %i.gq, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gg, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i215, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i210.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1316 = and i64 %i.gg, -8                  ; 3 uses
  %i.gr = getelementptr i8, ptr %i.gf, i64 %n.vec1316
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1317 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1320, %vec.epilog.vector.body ] ; 2 uses
  %next.gep1318 = getelementptr i8, ptr %i.gf, i64 %index1317 ; 2 uses
  %wide.load1319 = load <8 x i8>, ptr %next.gep1318, align 1, !tbaa !16, !noalias !55 ; 3 uses
  %i.gs = add <8 x i8> %wide.load1319, splat (i8 -65)
  %i.gt = icmp ult <8 x i8> %i.gs, splat (i8 26)
  %43 = or disjoint <8 x i8> %wide.load1319, splat (i8 32)
  %44 = select <8 x i1> %i.gt, <8 x i8> %43, <8 x i8> %wide.load1319
  store <8 x i8> %44, ptr %next.gep1318, align 1, !tbaa !16, !noalias !55
  %index.next1320 = add nuw i64 %index1317, 8     ; 2 uses
  %i.gu = icmp eq i64 %index.next1320, %n.vec1316
  br i1 %i.gu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !59

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1321 = icmp eq i64 %i.gg, %n.vec1316
  br i1 %cmp.n1321, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i215, label %.lr.ph.i.i210.preheader

.lr.ph.i.i210.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i211.ph = phi ptr [ %i.gf, %iter.check ], [ %i.gi, %vec.epilog.iter.check ], [ %i.gr, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i210

.lr.ph.i.i210:                                    ; preds = %.lr.ph.i.i210.preheader, %.lr.ph.i.i210
  %.sroa.0.08.i.i211 = phi ptr [ %i.gy, %.lr.ph.i.i210 ], [ %.sroa.0.08.i.i211.ph, %.lr.ph.i.i210.preheader ] ; 3 uses
  %i.gv = load i8, ptr %.sroa.0.08.i.i211, align 1, !tbaa !16, !noalias !55 ; 3 uses
  %i.gw = add i8 %i.gv, -65
  %or.cond.i.i.i.i212 = icmp ult i8 %i.gw, 26
  %i.gx = or disjoint i8 %i.gv, 32
  %.0.i.i.i.i213 = select i1 %or.cond.i.i.i.i212, i8 %i.gx, i8 %i.gv
  store i8 %.0.i.i.i.i213, ptr %.sroa.0.08.i.i211, align 1, !tbaa !16, !noalias !55
  %i.gy = getelementptr i8, ptr %.sroa.0.08.i.i211, i64 1 ; 2 uses
  %.not.i.i214 = icmp eq ptr %i.gy, %i.gh
  br i1 %.not.i.i214, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i215, label %.lr.ph.i.i210, !llvm.loop !60

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i215: ; preds = %.lr.ph.i.i210, %vec.epilog.middle.block, %middle.block
  %.pre.i216 = load ptr, ptr %14, align 8, !tbaa !26, !noalias !55
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i217

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i217: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i215, %bb.x
  %i.gz = phi ptr [ %.pre.i216, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i215 ], [ %i.gf, %bb.x ] ; 3 uses
  store ptr %i.aq, ptr %13, align 8, !tbaa !9, !alias.scope !55
  %i.ha = icmp eq ptr %i.gz, %i.ao
  br i1 %i.ha, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

bb.y:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i217
  %i.hb = load i64, ptr %i.ap, align 8, !tbaa !13, !noalias !55 ; 3 uses
  %i.hc = icmp ult i64 %i.hb, 16
  call void @llvm.assume(i1 %i.hc)
  %i.hd = add nuw nsw i64 %i.hb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.hd, i1 false)
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i217
  store ptr %i.gz, ptr %13, align 8, !tbaa !26, !alias.scope !55
  %i.he = load i64, ptr %i.ao, align 8, !tbaa !16, !noalias !55
  store i64 %i.he, ptr %i.aq, align 8, !tbaa !16, !alias.scope !55
  %.pre4.i219 = load i64, ptr %i.ap, align 8, !tbaa !13, !noalias !55
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218, %bb.y
  %i.hf = phi ptr [ %i.aq, %bb.y ], [ %i.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218 ] ; 3 uses
  %i.hg = phi i64 [ %i.hb, %bb.y ], [ %.pre4.i219, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218 ] ; 3 uses
  store i64 %i.hg, ptr %i.ar, align 8, !tbaa !13, !alias.scope !55
  store ptr %i.ao, ptr %14, align 8, !tbaa !26, !noalias !55
  store i64 0, ptr %i.ap, align 8, !tbaa !13, !noalias !55
  store i8 0, ptr %i.ao, align 8, !tbaa !16, !noalias !55
  %i.hh = icmp eq i64 %i.hg, 2
  br i1 %i.hh, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.hi = load i16, ptr %i.hf, align 1
  %i.hj = icmp ne i16 %i.hi, 25651                ; 2 uses
  %i.hk = zext i1 %i.hj to i32                    ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.aa, %bb.z
  %.ph = phi i1 [ true, %bb.z ], [ %i.hj, %bb.aa ]
  %i.hl = icmp eq ptr %i.hf, %i.aq
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.thread: ; preds = %.critedge
  %i.hm = icmp ult i64 %i.hg, 16
  call void @llvm.assume(i1 %i.hm)
  br label %.critedge171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %.critedge
  %i.hn = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.ho) #24
  %.pre933 = load ptr, ptr %14, align 8, !tbaa !26 ; 2 uses
  %i.hp = icmp eq ptr %.pre933, %i.ao
  br i1 %i.hp, label %.critedge171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
  %i.hq = load i64, ptr %i.ao, align 8, !tbaa !16
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %.pre933, i64 noundef %i.hr) #24
  br label %.critedge171

.critedge171:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br i1 %.ph, label %.critedge171.thread, label %.outer.backedge

.critedge171.thread:                              ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread605, %.critedge171
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.hs = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.hs, ptr %15, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  store i64 51, ptr %i.m, align 8, !tbaa !36
  %i.ht = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc229 unwind label %bb.ac ; 3 uses

.noexc229:                                        ; preds = %.critedge171.thread
  store ptr %i.ht, ptr %15, align 8, !tbaa !26
  %i.hu = load i64, ptr %i.m, align 8, !tbaa !36  ; 3 uses
  store i64 %i.hu, ptr %i.hs, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.ht, ptr noundef nonnull align 1 dereferenceable(51) @.str.8, i64 51, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !13
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hu
  store i8 0, ptr %i.hw, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable637 unwind label %bb.ad

.unreachable637:                                  ; preds = %.noexc229
  unreachable

bb.ab:                                            ; preds = %.noexc.i206
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %.loopexit

bb.ac:                                            ; preds = %.critedge171.thread
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

bb.ad:                                            ; preds = %.noexc229
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ia = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.hs
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %bb.ad
  %i.ic = load i64, ptr %i.hs, align 8, !tbaa !16
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239, %bb.ac
  %.pn165 = phi { ptr, i32 } [ %i.hy, %bb.ac ], [ %i.hz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239 ], [ %i.hz, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit243: ; preds = %.thread
  %i.ie = load i16, ptr %i.fe, align 1
  %i.if = icmp ne i16 %i.ie, 28265
  %i.ig = zext i1 %i.if to i32
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit243.thread608, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit311.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit243.thread608: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #23
  store i32 0, ptr %i.q, align 4, !tbaa !3
  %i.ii = ptrtoint ptr %i.ek to i64
  %i.ij = ptrtoint ptr %i.ej to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %.not156 = icmp eq i64 %i.ik, 64
  br i1 %.not156, label %bb.ae, label %.noexc.i245

bb.ae:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit243.thread608
  %i.il = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !26
  %i.in = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511StringToIntEPiPKcb(ptr noundef nonnull %i.q, ptr noundef %i.im, i1 noundef zeroext false)
          to label %bb.af unwind label %.loopexit644

bb.af:                                            ; preds = %bb.ae
  br i1 %i.in, label %bb.ai, label %.noexc.i245

.noexc.i245:                                      ; preds = %bb.af, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit243.thread608
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.io = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.io, ptr %16, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  store i64 19, ptr %i.l, align 8, !tbaa !36
  %i.ip = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc246 unwind label %bb.ag ; 2 uses

.noexc246:                                        ; preds = %.noexc.i245
  store ptr %i.ip, ptr %16, align 8, !tbaa !26
  %i.iq = load i64, ptr %i.l, align 8, !tbaa !36  ; 3 uses
  store i64 %i.iq, ptr %i.io, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.ip, ptr noundef nonnull align 1 dereferenceable(19) @.str.10, i64 19, i1 false)
  %i.ir = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !13
  %i.is = load ptr, ptr %16, align 8, !tbaa !26
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.iq
  store i8 0, ptr %i.it, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable636 unwind label %bb.ah

.unreachable636:                                  ; preds = %.noexc246
  unreachable

.loopexit644:                                     ; preds = %bb.ae, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0579.0.ph, i64 noundef %i.jg) #24
  %.pre.pre = load i32, ptr %i.q, align 4, !tbaa !3
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.am, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %.pre = phi i32 [ %.pre.pre, %bb.am ], [ %i.ja, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jk
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jc
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.ak
  %i.jq = phi i32 [ %.pre, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.ja, %bb.ak ]
  %.sroa.32.7 = phi ptr [ %i.jp, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %.sroa.32.0.ph, %bb.ak ] ; 2 uses
  %.sroa.18.2 = phi ptr [ %i.jo, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %.sroa.18.0.ph, %bb.ak ]
  %.sroa.0579.7 = phi ptr [ %i.jm, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %.sroa.0579.0.ph, %bb.ak ] ; 2 uses
  %i.jr = invoke noundef i32 @_ZN16OpenColorIO_v2_528Get3DLutEdgeLenFromNumPixelsEi(i32 noundef %i.jq)
          to label %bb.an unwind label %.loopexit644

bb.an:                                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  br label %.outer.backedge

bb.ao:                                            ; preds = %.loopexit644, %.loopexit.split-lp645, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %.sroa.32.3 = phi ptr [ %.sroa.32.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %.sroa.32.2.ph, %.loopexit644 ], [ %.sroa.32.0.ph, %.loopexit.split-lp645 ]
  %.sroa.0579.3 = phi ptr [ %.sroa.0579.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %.sroa.0579.2.ph, %.loopexit644 ], [ %.sroa.0579.0.ph, %.loopexit.split-lp645 ]
  %.pn159 = phi { ptr, i32 } [ %.pn157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %lpad.loopexit646, %.loopexit644 ], [ %lpad.loopexit.split-lp647, %.loopexit.split-lp645 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257: ; preds = %.thread
  %.pre934 = load ptr, ptr %i.ej, align 8, !tbaa !26 ; 2 uses
  %i.js = load i16, ptr %.pre934, align 1
  %i.jt = xor i16 %i.js, 30063
  %i.ju = getelementptr i8, ptr %.pre934, i64 2
  %i.jv = load i8, ptr %i.ju, align 1
  %i.jw = zext i8 %i.jv to i16
  %i.jx = xor i16 %i.jw, 116
  %i.jy = or i16 %i.jt, %i.jx
  %i.jz = icmp ne i16 %i.jy, 0
  %i.ka = zext i1 %i.jz to i32
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257.thread611, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit311.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257.thread611: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257
  %i.kc = ptrtoint ptr %i.ek to i64
  %i.kd = ptrtoint ptr %i.ej to i64
  %i.ke = sub i64 %i.kc, %i.kd
  %.not153 = icmp eq i64 %i.ke, 64
  br i1 %.not153, label %bb.ap, label %.noexc.i259

bb.ap:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257.thread611
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !26
  %i.kh = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511StringToIntEPiPKcb(ptr noundef nonnull %i.p, ptr noundef %i.kg, i1 noundef zeroext false)
          to label %bb.aq unwind label %.loopexit.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.kh, label %.outer.backedge, label %.noexc.i259

.noexc.i259:                                      ; preds = %bb.aq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257.thread611
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.ki = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.ki, ptr %17, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  store i64 20, ptr %i.k, align 8, !tbaa !36
  %i.kj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc260 unwind label %bb.ar ; 2 uses

.noexc260:                                        ; preds = %.noexc.i259
  store ptr %i.kj, ptr %17, align 8, !tbaa !26
  %i.kk = load i64, ptr %i.k, align 8, !tbaa !36  ; 3 uses
  store i64 %i.kk, ptr %i.ki, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.kj, ptr noundef nonnull align 1 dereferenceable(20) @.str.12, i64 20, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !13
  %i.km = load ptr, ptr %17, align 8, !tbaa !26
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kk
  store i8 0, ptr %i.kn, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable635 unwind label %bb.as

.unreachable635:                                  ; preds = %.noexc260
  unreachable

bb.ar:                                            ; preds = %.noexc.i259
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267

bb.as:                                            ; preds = %.noexc260
  %i.kp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kq = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.ki
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265: ; preds = %bb.as
  %i.ks = load i64, ptr %i.ki, align 8, !tbaa !16
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.kt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265, %bb.ar
  %.pn154 = phi { ptr, i32 } [ %i.ko, %bb.ar ], [ %i.kp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265 ], [ %i.kp, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269: ; preds = %.thread
  %.pre935 = load ptr, ptr %i.ej, align 8, !tbaa !26 ; 4 uses
  %i.ku = load i32, ptr %.pre935, align 1
  %i.kv = xor i32 %i.ku, 1836216166
  %i.kw = getelementptr i8, ptr %.pre935, i64 4
  %i.kx = load i16, ptr %i.kw, align 1
  %i.ky = zext i16 %i.kx to i32
  %i.kz = xor i32 %i.ky, 29793
  %i.la = or i32 %i.kv, %i.kz
  %i.lb = icmp ne i32 %i.la, 0
  %i.lc = zext i1 %i.lb to i32
  %i.ld = icmp eq i32 %i.lc, 0
  br i1 %i.ld, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269.thread614, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit311

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269.thread614: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269
  %i.le = ptrtoint ptr %i.ek to i64
  %i.lf = ptrtoint ptr %i.ej to i64
  %i.lg = sub i64 %i.le, %i.lf
  %.not147 = icmp eq i64 %i.lg, 64
  br i1 %.not147, label %bb.at, label %.critedge174.thread

bb.at:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269.thread614
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  store ptr %i.be, ptr %19, align 8, !tbaa !9
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !26 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  store i64 %i.lk, ptr %i.j, align 8, !tbaa !36
  %i.ll = icmp ugt i64 %i.lk, 15
  br i1 %i.ll, label %.noexc.i271, label %._crit_edge.i.i270

.noexc.i271:                                      ; preds = %bb.at
  %i.lm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc272 unwind label %bb.ba ; 2 uses

.noexc272:                                        ; preds = %.noexc.i271
  store ptr %i.lm, ptr %19, align 8, !tbaa !26
  %i.ln = load i64, ptr %i.j, align 8, !tbaa !36
  store i64 %i.ln, ptr %i.be, align 8, !tbaa !16
  br label %._crit_edge.i.i270

._crit_edge.i.i270:                               ; preds = %.noexc272, %bb.at
  %i.lo = phi ptr [ %i.lm, %.noexc272 ], [ %i.be, %bb.at ] ; 2 uses
  switch i64 %i.lk, label %bb.av [
    i64 1, label %bb.au
    i64 0, label %bb.aw
  ]

bb.au:                                            ; preds = %._crit_edge.i.i270
  %i.lp = load i8, ptr %i.li, align 1, !tbaa !16
  store i8 %i.lp, ptr %i.lo, align 1, !tbaa !16
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge.i.i270
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lo, ptr align 1 %i.li, i64 %i.lk, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %._crit_edge.i.i270
  %i.lq = load i64, ptr %i.j, align 8, !tbaa !36  ; 2 uses
  store i64 %i.lq, ptr %i.bf, align 8, !tbaa !13
  %i.lr = load ptr, ptr %19, align 8, !tbaa !26
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lq
  store i8 0, ptr %i.ls, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.lt = load ptr, ptr %19, align 8, !tbaa !26, !noalias !61 ; 7 uses
  %i.lu = load i64, ptr %i.bf, align 8, !tbaa !13, !noalias !61 ; 9 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.lu
  %.not6.i.i274 = icmp samesign eq i64 %i.lu, 0
  br i1 %.not6.i.i274, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i282, label %iter.check1338

iter.check1338:                                   ; preds = %bb.aw
  %min.iters.check1323 = icmp ult i64 %i.lu, 8
  br i1 %min.iters.check1323, label %.lr.ph.i.i275.preheader, label %vector.main.loop.iter.check1324

vector.main.loop.iter.check1324:                  ; preds = %iter.check1338
  %min.iters.check1325 = icmp ult i64 %i.lu, 32
  br i1 %min.iters.check1325, label %vec.epilog.ph1342, label %vector.ph1326

vector.ph1326:                                    ; preds = %vector.main.loop.iter.check1324
  %n.mod.vf1327 = and i64 %i.lu, 24
  %n.vec1328 = and i64 %i.lu, -32                 ; 4 uses
  %i.lw = getelementptr i8, ptr %i.lt, i64 %n.vec1328
  br label %vector.body1329

vector.body1329:                                  ; preds = %vector.body1329, %vector.ph1326
  %index1330 = phi i64 [ 0, %vector.ph1326 ], [ %index.next1334, %vector.body1329 ] ; 2 uses
  %next.gep1331 = getelementptr i8, ptr %i.lt, i64 %index1330 ; 3 uses
  %i.lx = getelementptr i8, ptr %next.gep1331, i64 16 ; 2 uses
  %wide.load1332 = load <16 x i8>, ptr %next.gep1331, align 1, !tbaa !16, !noalias !61 ; 3 uses
  %wide.load1333 = load <16 x i8>, ptr %i.lx, align 1, !tbaa !16, !noalias !61 ; 3 uses
  %i.ly = add <16 x i8> %wide.load1332, splat (i8 -65)
  %i.lz = add <16 x i8> %wide.load1333, splat (i8 -65)
  %i.ma = icmp ult <16 x i8> %i.ly, splat (i8 26)
  %i.mb = icmp ult <16 x i8> %i.lz, splat (i8 26)
  %45 = or disjoint <16 x i8> %wide.load1332, splat (i8 32)
  %i.mc = or disjoint <16 x i8> %wide.load1333, splat (i8 32)
  %i.md = select <16 x i1> %i.ma, <16 x i8> %45, <16 x i8> %wide.load1332
  %46 = select <16 x i1> %i.mb, <16 x i8> %i.mc, <16 x i8> %wide.load1333
  store <16 x i8> %i.md, ptr %next.gep1331, align 1, !tbaa !16, !noalias !61
  store <16 x i8> %46, ptr %i.lx, align 1, !tbaa !16, !noalias !61
  %index.next1334 = add nuw i64 %index1330, 32    ; 2 uses
  %i.me = icmp eq i64 %index.next1334, %n.vec1328
  br i1 %i.me, label %middle.block1335, label %vector.body1329, !llvm.loop !64

middle.block1335:                                 ; preds = %vector.body1329
  %cmp.n1336 = icmp eq i64 %i.lu, %n.vec1328
  br i1 %cmp.n1336, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i280, label %vec.epilog.iter.check1340

vec.epilog.iter.check1340:                        ; preds = %middle.block1335
  %min.epilog.iters.check1341 = icmp eq i64 %n.mod.vf1327, 0
  br i1 %min.epilog.iters.check1341, label %.lr.ph.i.i275.preheader, label %vec.epilog.ph1342, !prof !44

vec.epilog.ph1342:                                ; preds = %vector.main.loop.iter.check1324, %vec.epilog.iter.check1340
  %vec.epilog.resume.val1337 = phi i64 [ %n.vec1328, %vec.epilog.iter.check1340 ], [ 0, %vector.main.loop.iter.check1324 ]
  %n.vec1344 = and i64 %i.lu, -8                  ; 3 uses
  %i.mf = getelementptr i8, ptr %i.lt, i64 %n.vec1344
  br label %vec.epilog.vector.body1345

vec.epilog.vector.body1345:                       ; preds = %vec.epilog.vector.body1345, %vec.epilog.ph1342
  %index1346 = phi i64 [ %vec.epilog.resume.val1337, %vec.epilog.ph1342 ], [ %index.next1349, %vec.epilog.vector.body1345 ] ; 2 uses
  %next.gep1347 = getelementptr i8, ptr %i.lt, i64 %index1346 ; 2 uses
  %wide.load1348 = load <8 x i8>, ptr %next.gep1347, align 1, !tbaa !16, !noalias !61 ; 3 uses
  %i.mg = add <8 x i8> %wide.load1348, splat (i8 -65)
  %i.mh = icmp ult <8 x i8> %i.mg, splat (i8 26)
  %47 = or disjoint <8 x i8> %wide.load1348, splat (i8 32)
  %48 = select <8 x i1> %i.mh, <8 x i8> %47, <8 x i8> %wide.load1348
  store <8 x i8> %48, ptr %next.gep1347, align 1, !tbaa !16, !noalias !61
  %index.next1349 = add nuw i64 %index1346, 8     ; 2 uses
  %i.mi = icmp eq i64 %index.next1349, %n.vec1344
  br i1 %i.mi, label %vec.epilog.middle.block1350, label %vec.epilog.vector.body1345, !llvm.loop !65

vec.epilog.middle.block1350:                      ; preds = %vec.epilog.vector.body1345
  %cmp.n1351 = icmp eq i64 %i.lu, %n.vec1344
  br i1 %cmp.n1351, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i280, label %.lr.ph.i.i275.preheader

.lr.ph.i.i275.preheader:                          ; preds = %iter.check1338, %vec.epilog.iter.check1340, %vec.epilog.middle.block1350
  %.sroa.0.08.i.i276.ph = phi ptr [ %i.lt, %iter.check1338 ], [ %i.lw, %vec.epilog.iter.check1340 ], [ %i.mf, %vec.epilog.middle.block1350 ]
  br label %.lr.ph.i.i275

.lr.ph.i.i275:                                    ; preds = %.lr.ph.i.i275.preheader, %.lr.ph.i.i275
  %.sroa.0.08.i.i276 = phi ptr [ %i.mm, %.lr.ph.i.i275 ], [ %.sroa.0.08.i.i276.ph, %.lr.ph.i.i275.preheader ] ; 3 uses
  %i.mj = load i8, ptr %.sroa.0.08.i.i276, align 1, !tbaa !16, !noalias !61 ; 3 uses
  %i.mk = add i8 %i.mj, -65
  %or.cond.i.i.i.i277 = icmp ult i8 %i.mk, 26
  %i.ml = or disjoint i8 %i.mj, 32
  %.0.i.i.i.i278 = select i1 %or.cond.i.i.i.i277, i8 %i.ml, i8 %i.mj
  store i8 %.0.i.i.i.i278, ptr %.sroa.0.08.i.i276, align 1, !tbaa !16, !noalias !61
  %i.mm = getelementptr i8, ptr %.sroa.0.08.i.i276, i64 1 ; 2 uses
  %.not.i.i279 = icmp eq ptr %i.mm, %i.lv
  br i1 %.not.i.i279, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i280, label %.lr.ph.i.i275, !llvm.loop !66

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i280: ; preds = %.lr.ph.i.i275, %vec.epilog.middle.block1350, %middle.block1335
  %.pre.i281 = load ptr, ptr %19, align 8, !tbaa !26, !noalias !61
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i282

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i282: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i280, %bb.aw
  %i.mn = phi ptr [ %.pre.i281, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i280 ], [ %i.lt, %bb.aw ] ; 3 uses
  store ptr %i.bg, ptr %18, align 8, !tbaa !9, !alias.scope !61
  %i.mo = icmp eq ptr %i.mn, %i.be
  br i1 %i.mo, label %bb.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

bb.ax:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i282
  %i.mp = load i64, ptr %i.bf, align 8, !tbaa !13, !noalias !61 ; 3 uses
  %i.mq = icmp ult i64 %i.mp, 16
  call void @llvm.assume(i1 %i.mq)
  %i.mr = add nuw nsw i64 %i.mp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.mr, i1 false)
  br label %bb.ay

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i282
  store ptr %i.mn, ptr %18, align 8, !tbaa !26, !alias.scope !61
  %i.ms = load i64, ptr %i.be, align 8, !tbaa !16, !noalias !61
  store i64 %i.ms, ptr %i.bg, align 8, !tbaa !16, !alias.scope !61
  %.pre4.i284 = load i64, ptr %i.bf, align 8, !tbaa !13, !noalias !61
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283, %bb.ax
  %i.mt = phi ptr [ %i.bg, %bb.ax ], [ %i.mn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283 ] ; 4 uses
  %i.mu = phi i64 [ %i.mp, %bb.ax ], [ %.pre4.i284, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283 ] ; 3 uses
  store i64 %i.mu, ptr %i.bh, align 8, !tbaa !13, !alias.scope !61
  store ptr %i.be, ptr %19, align 8, !tbaa !26, !noalias !61
  store i64 0, ptr %i.bf, align 8, !tbaa !13, !noalias !61
  store i8 0, ptr %i.be, align 8, !tbaa !16, !noalias !61
  %i.mv = icmp eq i64 %i.mu, 3
  br i1 %i.mv, label %bb.az, label %.critedge173

bb.az:                                            ; preds = %bb.ay
  %i.mw = load i16, ptr %i.mt, align 1
  %i.mx = xor i16 %i.mw, 30060
  %i.my = getelementptr i8, ptr %i.mt, i64 2
  %i.mz = load i8, ptr %i.my, align 1
  %i.na = zext i8 %i.mz to i16
  %i.nb = xor i16 %i.na, 116
  %i.nc = or i16 %i.mx, %i.nb
  %i.nd = icmp ne i16 %i.nc, 0                    ; 2 uses
  %i.ne = zext i1 %i.nd to i32                    ; 0 uses
  br label %.critedge173

.critedge173:                                     ; preds = %bb.az, %bb.ay
  %.ph615 = phi i1 [ true, %bb.ay ], [ %i.nd, %bb.az ]
  %i.nf = icmp eq ptr %i.mt, %i.bg
  br i1 %i.nf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290.thread: ; preds = %.critedge173
  %i.ng = icmp ult i64 %i.mu, 16
  call void @llvm.assume(i1 %i.ng)
  br label %.critedge174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290: ; preds = %.critedge173
  %i.nh = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.ni) #24
  %.pre939 = load ptr, ptr %19, align 8, !tbaa !26 ; 2 uses
  %i.nj = icmp eq ptr %.pre939, %i.be
  br i1 %i.nj, label %.critedge174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290
  %i.nk = load i64, ptr %i.be, align 8, !tbaa !16
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %.pre939, i64 noundef %i.nl) #24
  br label %.critedge174

.critedge174:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br i1 %.ph615, label %.critedge174.thread, label %.outer.backedge

.critedge174.thread:                              ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269.thread614, %.critedge174
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.nm = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  store ptr %i.nm, ptr %20, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  store i64 48, ptr %i.i, align 8, !tbaa !36
  %i.nn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc296 unwind label %bb.bb ; 3 uses

.noexc296:                                        ; preds = %.critedge174.thread
  store ptr %i.nn, ptr %20, align 8, !tbaa !26
  %i.no = load i64, ptr %i.i, align 8, !tbaa !36  ; 3 uses
  store i64 %i.no, ptr %i.nm, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.nn, ptr noundef nonnull align 1 dereferenceable(48) @.str.15, i64 48, i1 false)
  %i.np = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.no, ptr %i.np, align 8, !tbaa !13
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.no
  store i8 0, ptr %i.nq, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable634 unwind label %bb.bc

.unreachable634:                                  ; preds = %.noexc296
  unreachable

bb.ba:                                            ; preds = %.noexc.i271
  %i.nr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.loopexit

bb.bb:                                            ; preds = %.critedge174.thread
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309

bb.bc:                                            ; preds = %.noexc296
  %i.nt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nu = load ptr, ptr %20, align 8, !tbaa !26   ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.nm
  br i1 %i.nv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307: ; preds = %bb.bc
  %i.nw = load i64, ptr %i.nm, align 8, !tbaa !16
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.nx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307, %bb.bb
  %.pn151 = phi { ptr, i32 } [ %i.ns, %bb.bb ], [ %i.nt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307 ], [ %i.nt, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit311: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269
  %i.ny = load i32, ptr %.pre935, align 1
  %i.nz = xor i32 %i.ny, 1970037110
  %i.oa = getelementptr i8, ptr %.pre935, i64 4
  %i.ob = load i16, ptr %i.oa, align 1
  %i.oc = zext i16 %i.ob to i32
  %i.od = xor i32 %i.oc, 29541
  %i.oe = or i32 %i.nz, %i.od
  %i.of = icmp ne i32 %i.oe, 0
  %i.og = zext i1 %i.of to i32
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit311.thread618, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit311.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit311.thread618: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit311
  %i.oi = ptrtoint ptr %i.ek to i64
  %i.oj = ptrtoint ptr %i.ej to i64
  %i.ok = sub i64 %i.oi, %i.oj
  %.not135 = icmp eq i64 %i.ok, 128
  br i1 %.not135, label %bb.bd, label %.critedge183.thread

bb.bd:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit311.thread618
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  store ptr %i.as, ptr %22, align 8, !tbaa !9
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !26 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store i64 %i.oo, ptr %i.h, align 8, !tbaa !36
  %i.op = icmp ugt i64 %i.oo, 15
  br i1 %i.op, label %.noexc.i313, label %._crit_edge.i.i312

.noexc.i313:                                      ; preds = %bb.bd
  %i.oq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc314 unwind label %bb.bu ; 2 uses

.noexc314:                                        ; preds = %.noexc.i313
  store ptr %i.oq, ptr %22, align 8, !tbaa !26
  %i.or = load i64, ptr %i.h, align 8, !tbaa !36
  store i64 %i.or, ptr %i.as, align 8, !tbaa !16
  br label %._crit_edge.i.i312

._crit_edge.i.i312:                               ; preds = %.noexc314, %bb.bd
  %i.os = phi ptr [ %i.oq, %.noexc314 ], [ %i.as, %bb.bd ] ; 2 uses
  switch i64 %i.oo, label %bb.bf [
    i64 1, label %bb.be
    i64 0, label %bb.bg
  ]

bb.be:                                            ; preds = %._crit_edge.i.i312
  %i.ot = load i8, ptr %i.om, align 1, !tbaa !16
  store i8 %i.ot, ptr %i.os, align 1, !tbaa !16
  br label %bb.bg

bb.bf:                                            ; preds = %._crit_edge.i.i312
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.os, ptr align 1 %i.om, i64 %i.oo, i1 false)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %._crit_edge.i.i312
  %i.ou = load i64, ptr %i.h, align 8, !tbaa !36  ; 2 uses
  store i64 %i.ou, ptr %i.at, align 8, !tbaa !13
  %i.ov = load ptr, ptr %22, align 8, !tbaa !26
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.ou
  store i8 0, ptr %i.ow, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.ox = load ptr, ptr %22, align 8, !tbaa !26, !noalias !67 ; 7 uses
  %i.oy = load i64, ptr %i.at, align 8, !tbaa !13, !noalias !67 ; 9 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.oy
  %.not6.i.i316 = icmp samesign eq i64 %i.oy, 0
  br i1 %.not6.i.i316, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i324, label %iter.check1428

iter.check1428:                                   ; preds = %bb.bg
  %min.iters.check1413 = icmp ult i64 %i.oy, 8
  br i1 %min.iters.check1413, label %.lr.ph.i.i317.preheader, label %vector.main.loop.iter.check1414

vector.main.loop.iter.check1414:                  ; preds = %iter.check1428
  %min.iters.check1415 = icmp ult i64 %i.oy, 32
  br i1 %min.iters.check1415, label %vec.epilog.ph1432, label %vector.ph1416

vector.ph1416:                                    ; preds = %vector.main.loop.iter.check1414
  %n.mod.vf1417 = and i64 %i.oy, 24
  %n.vec1418 = and i64 %i.oy, -32                 ; 4 uses
  %i.pa = getelementptr i8, ptr %i.ox, i64 %n.vec1418
  br label %vector.body1419

vector.body1419:                                  ; preds = %vector.body1419, %vector.ph1416
  %index1420 = phi i64 [ 0, %vector.ph1416 ], [ %index.next1424, %vector.body1419 ] ; 2 uses
  %next.gep1421 = getelementptr i8, ptr %i.ox, i64 %index1420 ; 3 uses
  %i.pb = getelementptr i8, ptr %next.gep1421, i64 16 ; 2 uses
  %wide.load1422 = load <16 x i8>, ptr %next.gep1421, align 1, !tbaa !16, !noalias !67 ; 3 uses
  %wide.load1423 = load <16 x i8>, ptr %i.pb, align 1, !tbaa !16, !noalias !67 ; 3 uses
  %i.pc = add <16 x i8> %wide.load1422, splat (i8 -65)
  %i.pd = add <16 x i8> %wide.load1423, splat (i8 -65)
  %i.pe = icmp ult <16 x i8> %i.pc, splat (i8 26)
  %i.pf = icmp ult <16 x i8> %i.pd, splat (i8 26)
  %49 = or disjoint <16 x i8> %wide.load1422, splat (i8 32)
  %i.pg = or disjoint <16 x i8> %wide.load1423, splat (i8 32)
  %i.ph = select <16 x i1> %i.pe, <16 x i8> %49, <16 x i8> %wide.load1422
  %50 = select <16 x i1> %i.pf, <16 x i8> %i.pg, <16 x i8> %wide.load1423
  store <16 x i8> %i.ph, ptr %next.gep1421, align 1, !tbaa !16, !noalias !67
  store <16 x i8> %50, ptr %i.pb, align 1, !tbaa !16, !noalias !67
  %index.next1424 = add nuw i64 %index1420, 32    ; 2 uses
  %i.pi = icmp eq i64 %index.next1424, %n.vec1418
  br i1 %i.pi, label %middle.block1425, label %vector.body1419, !llvm.loop !70

middle.block1425:                                 ; preds = %vector.body1419
  %cmp.n1426 = icmp eq i64 %i.oy, %n.vec1418
  br i1 %cmp.n1426, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i322, label %vec.epilog.iter.check1430

vec.epilog.iter.check1430:                        ; preds = %middle.block1425
  %min.epilog.iters.check1431 = icmp eq i64 %n.mod.vf1417, 0
  br i1 %min.epilog.iters.check1431, label %.lr.ph.i.i317.preheader, label %vec.epilog.ph1432, !prof !44

vec.epilog.ph1432:                                ; preds = %vector.main.loop.iter.check1414, %vec.epilog.iter.check1430
  %vec.epilog.resume.val1427 = phi i64 [ %n.vec1418, %vec.epilog.iter.check1430 ], [ 0, %vector.main.loop.iter.check1414 ]
  %n.vec1434 = and i64 %i.oy, -8                  ; 3 uses
  %i.pj = getelementptr i8, ptr %i.ox, i64 %n.vec1434
  br label %vec.epilog.vector.body1435

vec.epilog.vector.body1435:                       ; preds = %vec.epilog.vector.body1435, %vec.epilog.ph1432
  %index1436 = phi i64 [ %vec.epilog.resume.val1427, %vec.epilog.ph1432 ], [ %index.next1439, %vec.epilog.vector.body1435 ] ; 2 uses
  %next.gep1437 = getelementptr i8, ptr %i.ox, i64 %index1436 ; 2 uses
  %wide.load1438 = load <8 x i8>, ptr %next.gep1437, align 1, !tbaa !16, !noalias !67 ; 3 uses
  %i.pk = add <8 x i8> %wide.load1438, splat (i8 -65)
  %i.pl = icmp ult <8 x i8> %i.pk, splat (i8 26)
  %51 = or disjoint <8 x i8> %wide.load1438, splat (i8 32)
  %52 = select <8 x i1> %i.pl, <8 x i8> %51, <8 x i8> %wide.load1438
  store <8 x i8> %52, ptr %next.gep1437, align 1, !tbaa !16, !noalias !67
  %index.next1439 = add nuw i64 %index1436, 8     ; 2 uses
  %i.pm = icmp eq i64 %index.next1439, %n.vec1434
  br i1 %i.pm, label %vec.epilog.middle.block1440, label %vec.epilog.vector.body1435, !llvm.loop !71

vec.epilog.middle.block1440:                      ; preds = %vec.epilog.vector.body1435
  %cmp.n1441 = icmp eq i64 %i.oy, %n.vec1434
  br i1 %cmp.n1441, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i322, label %.lr.ph.i.i317.preheader

.lr.ph.i.i317.preheader:                          ; preds = %iter.check1428, %vec.epilog.iter.check1430, %vec.epilog.middle.block1440
  %.sroa.0.08.i.i318.ph = phi ptr [ %i.ox, %iter.check1428 ], [ %i.pa, %vec.epilog.iter.check1430 ], [ %i.pj, %vec.epilog.middle.block1440 ]
  br label %.lr.ph.i.i317

.lr.ph.i.i317:                                    ; preds = %.lr.ph.i.i317.preheader, %.lr.ph.i.i317
  %.sroa.0.08.i.i318 = phi ptr [ %i.pq, %.lr.ph.i.i317 ], [ %.sroa.0.08.i.i318.ph, %.lr.ph.i.i317.preheader ] ; 3 uses
  %i.pn = load i8, ptr %.sroa.0.08.i.i318, align 1, !tbaa !16, !noalias !67 ; 3 uses
  %i.po = add i8 %i.pn, -65
  %or.cond.i.i.i.i319 = icmp ult i8 %i.po, 26
  %i.pp = or disjoint i8 %i.pn, 32
  %.0.i.i.i.i320 = select i1 %or.cond.i.i.i.i319, i8 %i.pp, i8 %i.pn
  store i8 %.0.i.i.i.i320, ptr %.sroa.0.08.i.i318, align 1, !tbaa !16, !noalias !67
  %i.pq = getelementptr i8, ptr %.sroa.0.08.i.i318, i64 1 ; 2 uses
  %.not.i.i321 = icmp eq ptr %i.pq, %i.oz
  br i1 %.not.i.i321, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i322, label %.lr.ph.i.i317, !llvm.loop !72

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i322: ; preds = %.lr.ph.i.i317, %vec.epilog.middle.block1440, %middle.block1425
  %.pre.i323 = load ptr, ptr %22, align 8, !tbaa !26, !noalias !67
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i324

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i324: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i322, %bb.bg
  %i.pr = phi ptr [ %.pre.i323, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i322 ], [ %i.ox, %bb.bg ] ; 3 uses
  store ptr %i.au, ptr %21, align 8, !tbaa !9, !alias.scope !67
  %i.ps = icmp eq ptr %i.pr, %i.as
  br i1 %i.ps, label %bb.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325

bb.bh:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i324
  %i.pt = load i64, ptr %i.at, align 8, !tbaa !13, !noalias !67 ; 3 uses
  %i.pu = icmp ult i64 %i.pt, 16
  call void @llvm.assume(i1 %i.pu)
  %i.pv = add nuw nsw i64 %i.pt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.pv, i1 false)
  br label %bb.bi

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i324
  store ptr %i.pr, ptr %21, align 8, !tbaa !26, !alias.scope !67
  %i.pw = load i64, ptr %i.as, align 8, !tbaa !16, !noalias !67
  store i64 %i.pw, ptr %i.au, align 8, !tbaa !16, !alias.scope !67
  %.pre4.i326 = load i64, ptr %i.at, align 8, !tbaa !13, !noalias !67
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325, %bb.bh
  %i.px = phi ptr [ %i.au, %bb.bh ], [ %i.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325 ] ; 4 uses
  %i.py = phi i64 [ %i.pt, %bb.bh ], [ %.pre4.i326, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325 ] ; 2 uses
  store i64 %i.py, ptr %i.av, align 8, !tbaa !13, !alias.scope !67
  store ptr %i.as, ptr %22, align 8, !tbaa !26, !noalias !67
  store i64 0, ptr %i.at, align 8, !tbaa !13, !noalias !67
  store i8 0, ptr %i.as, align 8, !tbaa !16, !noalias !67
  %i.pz = icmp eq i64 %i.py, 3
  br i1 %i.pz, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit329, label %.critedge182

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit329: ; preds = %bb.bi
  %i.qa = load i16, ptr %i.px, align 1
  %i.qb = xor i16 %i.qa, 25970
  %i.qc = getelementptr i8, ptr %i.px, i64 2
  %i.qd = load i8, ptr %i.qc, align 1
  %i.qe = zext i8 %i.qd to i16
  %i.qf = xor i16 %i.qe, 100
  %i.qg = or i16 %i.qb, %i.qf
  %i.qh = icmp ne i16 %i.qg, 0
  %i.qi = zext i1 %i.qh to i32
  %.not640 = icmp eq i32 %i.qi, 0
  br i1 %.not640, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit329.thread619, label %.critedge182

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit329.thread619: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit329
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.qj = load ptr, ptr %7, align 16, !tbaa !47   ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 64
  store ptr %i.aw, ptr %24, align 8, !tbaa !9
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !26 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 72
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store i64 %i.qn, ptr %i.g, align 8, !tbaa !36
  %i.qo = icmp ugt i64 %i.qn, 15
  br i1 %i.qo, label %.noexc.i331, label %._crit_edge.i.i330

.noexc.i331:                                      ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit329.thread619
  %i.qp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc332 unwind label %bb.bv ; 2 uses

.noexc332:                                        ; preds = %.noexc.i331
  store ptr %i.qp, ptr %24, align 8, !tbaa !26
  %i.qq = load i64, ptr %i.g, align 8, !tbaa !36
  store i64 %i.qq, ptr %i.aw, align 8, !tbaa !16
  br label %._crit_edge.i.i330

._crit_edge.i.i330:                               ; preds = %.noexc332, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit329.thread619
  %i.qr = phi ptr [ %i.qp, %.noexc332 ], [ %i.aw, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit329.thread619 ] ; 2 uses
  switch i64 %i.qn, label %bb.bk [
    i64 1, label %bb.bj
    i64 0, label %bb.bl
  ]

bb.bj:                                            ; preds = %._crit_edge.i.i330
  %i.qs = load i8, ptr %i.ql, align 1, !tbaa !16
  store i8 %i.qs, ptr %i.qr, align 1, !tbaa !16
  br label %bb.bl

bb.bk:                                            ; preds = %._crit_edge.i.i330
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qr, ptr align 1 %i.ql, i64 %i.qn, i1 false)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %._crit_edge.i.i330
  %i.qt = load i64, ptr %i.g, align 8, !tbaa !36  ; 2 uses
  store i64 %i.qt, ptr %i.ax, align 8, !tbaa !13
  %i.qu = load ptr, ptr %24, align 8, !tbaa !26
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qt
  store i8 0, ptr %i.qv, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.qw = load ptr, ptr %24, align 8, !tbaa !26, !noalias !73 ; 7 uses
  %i.qx = load i64, ptr %i.ax, align 8, !tbaa !13, !noalias !73 ; 9 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.qx
  %.not6.i.i334 = icmp samesign eq i64 %i.qx, 0
  br i1 %.not6.i.i334, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i342, label %iter.check1398

iter.check1398:                                   ; preds = %bb.bl
  %min.iters.check1383 = icmp ult i64 %i.qx, 8
  br i1 %min.iters.check1383, label %.lr.ph.i.i335.preheader, label %vector.main.loop.iter.check1384

vector.main.loop.iter.check1384:                  ; preds = %iter.check1398
  %min.iters.check1385 = icmp ult i64 %i.qx, 32
  br i1 %min.iters.check1385, label %vec.epilog.ph1402, label %vector.ph1386

vector.ph1386:                                    ; preds = %vector.main.loop.iter.check1384
  %n.mod.vf1387 = and i64 %i.qx, 24
  %n.vec1388 = and i64 %i.qx, -32                 ; 4 uses
  %i.qz = getelementptr i8, ptr %i.qw, i64 %n.vec1388
  br label %vector.body1389

vector.body1389:                                  ; preds = %vector.body1389, %vector.ph1386
  %index1390 = phi i64 [ 0, %vector.ph1386 ], [ %index.next1394, %vector.body1389 ] ; 2 uses
  %next.gep1391 = getelementptr i8, ptr %i.qw, i64 %index1390 ; 3 uses
  %i.ra = getelementptr i8, ptr %next.gep1391, i64 16 ; 2 uses
  %wide.load1392 = load <16 x i8>, ptr %next.gep1391, align 1, !tbaa !16, !noalias !73 ; 3 uses
  %wide.load1393 = load <16 x i8>, ptr %i.ra, align 1, !tbaa !16, !noalias !73 ; 3 uses
  %i.rb = add <16 x i8> %wide.load1392, splat (i8 -65)
  %i.rc = add <16 x i8> %wide.load1393, splat (i8 -65)
  %i.rd = icmp ult <16 x i8> %i.rb, splat (i8 26)
  %i.re = icmp ult <16 x i8> %i.rc, splat (i8 26)
  %53 = or disjoint <16 x i8> %wide.load1392, splat (i8 32)
  %i.rf = or disjoint <16 x i8> %wide.load1393, splat (i8 32)
  %i.rg = select <16 x i1> %i.rd, <16 x i8> %53, <16 x i8> %wide.load1392
  %54 = select <16 x i1> %i.re, <16 x i8> %i.rf, <16 x i8> %wide.load1393
  store <16 x i8> %i.rg, ptr %next.gep1391, align 1, !tbaa !16, !noalias !73
  store <16 x i8> %54, ptr %i.ra, align 1, !tbaa !16, !noalias !73
  %index.next1394 = add nuw i64 %index1390, 32    ; 2 uses
  %i.rh = icmp eq i64 %index.next1394, %n.vec1388
  br i1 %i.rh, label %middle.block1395, label %vector.body1389, !llvm.loop !76

middle.block1395:                                 ; preds = %vector.body1389
  %cmp.n1396 = icmp eq i64 %i.qx, %n.vec1388
  br i1 %cmp.n1396, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i340, label %vec.epilog.iter.check1400

vec.epilog.iter.check1400:                        ; preds = %middle.block1395
  %min.epilog.iters.check1401 = icmp eq i64 %n.mod.vf1387, 0
  br i1 %min.epilog.iters.check1401, label %.lr.ph.i.i335.preheader, label %vec.epilog.ph1402, !prof !44

vec.epilog.ph1402:                                ; preds = %vector.main.loop.iter.check1384, %vec.epilog.iter.check1400
  %vec.epilog.resume.val1397 = phi i64 [ %n.vec1388, %vec.epilog.iter.check1400 ], [ 0, %vector.main.loop.iter.check1384 ]
  %n.vec1404 = and i64 %i.qx, -8                  ; 3 uses
  %i.ri = getelementptr i8, ptr %i.qw, i64 %n.vec1404
  br label %vec.epilog.vector.body1405

vec.epilog.vector.body1405:                       ; preds = %vec.epilog.vector.body1405, %vec.epilog.ph1402
  %index1406 = phi i64 [ %vec.epilog.resume.val1397, %vec.epilog.ph1402 ], [ %index.next1409, %vec.epilog.vector.body1405 ] ; 2 uses
  %next.gep1407 = getelementptr i8, ptr %i.qw, i64 %index1406 ; 2 uses
  %wide.load1408 = load <8 x i8>, ptr %next.gep1407, align 1, !tbaa !16, !noalias !73 ; 3 uses
  %i.rj = add <8 x i8> %wide.load1408, splat (i8 -65)
  %i.rk = icmp ult <8 x i8> %i.rj, splat (i8 26)
  %55 = or disjoint <8 x i8> %wide.load1408, splat (i8 32)
  %56 = select <8 x i1> %i.rk, <8 x i8> %55, <8 x i8> %wide.load1408
  store <8 x i8> %56, ptr %next.gep1407, align 1, !tbaa !16, !noalias !73
  %index.next1409 = add nuw i64 %index1406, 8     ; 2 uses
  %i.rl = icmp eq i64 %index.next1409, %n.vec1404
  br i1 %i.rl, label %vec.epilog.middle.block1410, label %vec.epilog.vector.body1405, !llvm.loop !77

vec.epilog.middle.block1410:                      ; preds = %vec.epilog.vector.body1405
  %cmp.n1411 = icmp eq i64 %i.qx, %n.vec1404
  br i1 %cmp.n1411, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i340, label %.lr.ph.i.i335.preheader

.lr.ph.i.i335.preheader:                          ; preds = %iter.check1398, %vec.epilog.iter.check1400, %vec.epilog.middle.block1410
  %.sroa.0.08.i.i336.ph = phi ptr [ %i.qw, %iter.check1398 ], [ %i.qz, %vec.epilog.iter.check1400 ], [ %i.ri, %vec.epilog.middle.block1410 ]
  br label %.lr.ph.i.i335

.lr.ph.i.i335:                                    ; preds = %.lr.ph.i.i335.preheader, %.lr.ph.i.i335
  %.sroa.0.08.i.i336 = phi ptr [ %i.rp, %.lr.ph.i.i335 ], [ %.sroa.0.08.i.i336.ph, %.lr.ph.i.i335.preheader ] ; 3 uses
  %i.rm = load i8, ptr %.sroa.0.08.i.i336, align 1, !tbaa !16, !noalias !73 ; 3 uses
  %i.rn = add i8 %i.rm, -65
  %or.cond.i.i.i.i337 = icmp ult i8 %i.rn, 26
  %i.ro = or disjoint i8 %i.rm, 32
  %.0.i.i.i.i338 = select i1 %or.cond.i.i.i.i337, i8 %i.ro, i8 %i.rm
  store i8 %.0.i.i.i.i338, ptr %.sroa.0.08.i.i336, align 1, !tbaa !16, !noalias !73
  %i.rp = getelementptr i8, ptr %.sroa.0.08.i.i336, i64 1 ; 2 uses
  %.not.i.i339 = icmp eq ptr %i.rp, %i.qy
  br i1 %.not.i.i339, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i340, label %.lr.ph.i.i335, !llvm.loop !78

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i340: ; preds = %.lr.ph.i.i335, %vec.epilog.middle.block1410, %middle.block1395
  %.pre.i341 = load ptr, ptr %24, align 8, !tbaa !26, !noalias !73
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i342

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i342: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i340, %bb.bl
  %i.rq = phi ptr [ %.pre.i341, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i340 ], [ %i.qw, %bb.bl ] ; 3 uses
  store ptr %i.ay, ptr %23, align 8, !tbaa !9, !alias.scope !73
  %i.rr = icmp eq ptr %i.rq, %i.aw
  br i1 %i.rr, label %bb.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

bb.bm:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i342
  %i.rs = load i64, ptr %i.ax, align 8, !tbaa !13, !noalias !73 ; 3 uses
  %i.rt = icmp ult i64 %i.rs, 16
  call void @llvm.assume(i1 %i.rt)
  %i.ru = add nuw nsw i64 %i.rs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.ru, i1 false)
  br label %bb.bn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i342
  store ptr %i.rq, ptr %23, align 8, !tbaa !26, !alias.scope !73
  %i.rv = load i64, ptr %i.aw, align 8, !tbaa !16, !noalias !73
  store i64 %i.rv, ptr %i.ay, align 8, !tbaa !16, !alias.scope !73
  %.pre4.i344 = load i64, ptr %i.ax, align 8, !tbaa !13, !noalias !73
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343, %bb.bm
  %i.rw = phi ptr [ %i.ay, %bb.bm ], [ %i.rq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343 ] ; 4 uses
  %i.rx = phi i64 [ %i.rs, %bb.bm ], [ %.pre4.i344, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343 ] ; 2 uses
  store i64 %i.rx, ptr %i.az, align 8, !tbaa !13, !alias.scope !73
  store ptr %i.aw, ptr %24, align 8, !tbaa !26, !noalias !73
  store i64 0, ptr %i.ax, align 8, !tbaa !13, !noalias !73
  store i8 0, ptr %i.aw, align 8, !tbaa !16, !noalias !73
  %i.ry = icmp eq i64 %i.rx, 5
  br i1 %i.ry, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347, label %.critedge179

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347: ; preds = %bb.bn
  %i.rz = load i32, ptr %i.rw, align 1
  %i.sa = xor i32 %i.rz, 1701147239
  %i.sb = getelementptr i8, ptr %i.rw, i64 4
  %i.sc = load i8, ptr %i.sb, align 1
  %i.sd = zext i8 %i.sc to i32
  %i.se = xor i32 %i.sd, 110
  %i.sf = or i32 %i.sa, %i.se
  %i.sg = icmp ne i32 %i.sf, 0
  %i.sh = zext i1 %i.sg to i32
  %.not641 = icmp eq i32 %i.sh, 0
  br i1 %.not641, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347.thread620, label %.critedge179

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347.thread620: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  %i.si = load ptr, ptr %7, align 16, !tbaa !47   ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 96
  store ptr %i.ba, ptr %26, align 8, !tbaa !9
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !26 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 104
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 %i.sm, ptr %i.f, align 8, !tbaa !36
  %i.sn = icmp ugt i64 %i.sm, 15
  br i1 %i.sn, label %.noexc.i349, label %._crit_edge.i.i348

.noexc.i349:                                      ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347.thread620
  %i.so = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc350 unwind label %bb.bw ; 2 uses

.noexc350:                                        ; preds = %.noexc.i349
  store ptr %i.so, ptr %26, align 8, !tbaa !26
  %i.sp = load i64, ptr %i.f, align 8, !tbaa !36
  store i64 %i.sp, ptr %i.ba, align 8, !tbaa !16
  br label %._crit_edge.i.i348

._crit_edge.i.i348:                               ; preds = %.noexc350, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347.thread620
  %i.sq = phi ptr [ %i.so, %.noexc350 ], [ %i.ba, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347.thread620 ] ; 2 uses
  switch i64 %i.sm, label %bb.bp [
    i64 1, label %bb.bo
    i64 0, label %bb.bq
  ]

bb.bo:                                            ; preds = %._crit_edge.i.i348
  %i.sr = load i8, ptr %i.sk, align 1, !tbaa !16
  store i8 %i.sr, ptr %i.sq, align 1, !tbaa !16
  br label %bb.bq

bb.bp:                                            ; preds = %._crit_edge.i.i348
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sq, ptr align 1 %i.sk, i64 %i.sm, i1 false)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %._crit_edge.i.i348
  %i.ss = load i64, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  store i64 %i.ss, ptr %i.bb, align 8, !tbaa !13
  %i.st = load ptr, ptr %26, align 8, !tbaa !26
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.ss
  store i8 0, ptr %i.su, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.sv = load ptr, ptr %26, align 8, !tbaa !26, !noalias !79 ; 7 uses
  %i.sw = load i64, ptr %i.bb, align 8, !tbaa !13, !noalias !79 ; 9 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sw
  %.not6.i.i352 = icmp samesign eq i64 %i.sw, 0
  br i1 %.not6.i.i352, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i360, label %iter.check1368

iter.check1368:                                   ; preds = %bb.bq
  %min.iters.check1353 = icmp ult i64 %i.sw, 8
  br i1 %min.iters.check1353, label %.lr.ph.i.i353.preheader, label %vector.main.loop.iter.check1354

vector.main.loop.iter.check1354:                  ; preds = %iter.check1368
  %min.iters.check1355 = icmp ult i64 %i.sw, 32
  br i1 %min.iters.check1355, label %vec.epilog.ph1372, label %vector.ph1356

vector.ph1356:                                    ; preds = %vector.main.loop.iter.check1354
  %n.mod.vf1357 = and i64 %i.sw, 24
  %n.vec1358 = and i64 %i.sw, -32                 ; 4 uses
  %i.sy = getelementptr i8, ptr %i.sv, i64 %n.vec1358
  br label %vector.body1359

vector.body1359:                                  ; preds = %vector.body1359, %vector.ph1356
  %index1360 = phi i64 [ 0, %vector.ph1356 ], [ %index.next1364, %vector.body1359 ] ; 2 uses
  %next.gep1361 = getelementptr i8, ptr %i.sv, i64 %index1360 ; 3 uses
  %i.sz = getelementptr i8, ptr %next.gep1361, i64 16 ; 2 uses
  %wide.load1362 = load <16 x i8>, ptr %next.gep1361, align 1, !tbaa !16, !noalias !79 ; 3 uses
  %wide.load1363 = load <16 x i8>, ptr %i.sz, align 1, !tbaa !16, !noalias !79 ; 3 uses
  %i.ta = add <16 x i8> %wide.load1362, splat (i8 -65)
  %i.tb = add <16 x i8> %wide.load1363, splat (i8 -65)
  %i.tc = icmp ult <16 x i8> %i.ta, splat (i8 26)
  %i.td = icmp ult <16 x i8> %i.tb, splat (i8 26)
  %57 = or disjoint <16 x i8> %wide.load1362, splat (i8 32)
  %i.te = or disjoint <16 x i8> %wide.load1363, splat (i8 32)
  %i.tf = select <16 x i1> %i.tc, <16 x i8> %57, <16 x i8> %wide.load1362
  %58 = select <16 x i1> %i.td, <16 x i8> %i.te, <16 x i8> %wide.load1363
  store <16 x i8> %i.tf, ptr %next.gep1361, align 1, !tbaa !16, !noalias !79
  store <16 x i8> %58, ptr %i.sz, align 1, !tbaa !16, !noalias !79
  %index.next1364 = add nuw i64 %index1360, 32    ; 2 uses
  %i.tg = icmp eq i64 %index.next1364, %n.vec1358
  br i1 %i.tg, label %middle.block1365, label %vector.body1359, !llvm.loop !82

middle.block1365:                                 ; preds = %vector.body1359
  %cmp.n1366 = icmp eq i64 %i.sw, %n.vec1358
  br i1 %cmp.n1366, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i358, label %vec.epilog.iter.check1370

vec.epilog.iter.check1370:                        ; preds = %middle.block1365
  %min.epilog.iters.check1371 = icmp eq i64 %n.mod.vf1357, 0
  br i1 %min.epilog.iters.check1371, label %.lr.ph.i.i353.preheader, label %vec.epilog.ph1372, !prof !44

vec.epilog.ph1372:                                ; preds = %vector.main.loop.iter.check1354, %vec.epilog.iter.check1370
  %vec.epilog.resume.val1367 = phi i64 [ %n.vec1358, %vec.epilog.iter.check1370 ], [ 0, %vector.main.loop.iter.check1354 ]
  %n.vec1374 = and i64 %i.sw, -8                  ; 3 uses
  %i.th = getelementptr i8, ptr %i.sv, i64 %n.vec1374
  br label %vec.epilog.vector.body1375

vec.epilog.vector.body1375:                       ; preds = %vec.epilog.vector.body1375, %vec.epilog.ph1372
  %index1376 = phi i64 [ %vec.epilog.resume.val1367, %vec.epilog.ph1372 ], [ %index.next1379, %vec.epilog.vector.body1375 ] ; 2 uses
  %next.gep1377 = getelementptr i8, ptr %i.sv, i64 %index1376 ; 2 uses
  %wide.load1378 = load <8 x i8>, ptr %next.gep1377, align 1, !tbaa !16, !noalias !79 ; 3 uses
  %i.ti = add <8 x i8> %wide.load1378, splat (i8 -65)
  %i.tj = icmp ult <8 x i8> %i.ti, splat (i8 26)
  %59 = or disjoint <8 x i8> %wide.load1378, splat (i8 32)
  %60 = select <8 x i1> %i.tj, <8 x i8> %59, <8 x i8> %wide.load1378
  store <8 x i8> %60, ptr %next.gep1377, align 1, !tbaa !16, !noalias !79
  %index.next1379 = add nuw i64 %index1376, 8     ; 2 uses
  %i.tk = icmp eq i64 %index.next1379, %n.vec1374
  br i1 %i.tk, label %vec.epilog.middle.block1380, label %vec.epilog.vector.body1375, !llvm.loop !83

vec.epilog.middle.block1380:                      ; preds = %vec.epilog.vector.body1375
  %cmp.n1381 = icmp eq i64 %i.sw, %n.vec1374
  br i1 %cmp.n1381, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i358, label %.lr.ph.i.i353.preheader

.lr.ph.i.i353.preheader:                          ; preds = %iter.check1368, %vec.epilog.iter.check1370, %vec.epilog.middle.block1380
  %.sroa.0.08.i.i354.ph = phi ptr [ %i.sv, %iter.check1368 ], [ %i.sy, %vec.epilog.iter.check1370 ], [ %i.th, %vec.epilog.middle.block1380 ]
  br label %.lr.ph.i.i353

.lr.ph.i.i353:                                    ; preds = %.lr.ph.i.i353.preheader, %.lr.ph.i.i353
  %.sroa.0.08.i.i354 = phi ptr [ %i.to, %.lr.ph.i.i353 ], [ %.sroa.0.08.i.i354.ph, %.lr.ph.i.i353.preheader ] ; 3 uses
  %i.tl = load i8, ptr %.sroa.0.08.i.i354, align 1, !tbaa !16, !noalias !79 ; 3 uses
  %i.tm = add i8 %i.tl, -65
  %or.cond.i.i.i.i355 = icmp ult i8 %i.tm, 26
  %i.tn = or disjoint i8 %i.tl, 32
  %.0.i.i.i.i356 = select i1 %or.cond.i.i.i.i355, i8 %i.tn, i8 %i.tl
  store i8 %.0.i.i.i.i356, ptr %.sroa.0.08.i.i354, align 1, !tbaa !16, !noalias !79
  %i.to = getelementptr i8, ptr %.sroa.0.08.i.i354, i64 1 ; 2 uses
  %.not.i.i357 = icmp eq ptr %i.to, %i.sx
  br i1 %.not.i.i357, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i358, label %.lr.ph.i.i353, !llvm.loop !84

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i358: ; preds = %.lr.ph.i.i353, %vec.epilog.middle.block1380, %middle.block1365
  %.pre.i359 = load ptr, ptr %26, align 8, !tbaa !26, !noalias !79
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i360

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i360: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i358, %bb.bq
  %i.tp = phi ptr [ %.pre.i359, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i358 ], [ %i.sv, %bb.bq ] ; 3 uses
  store ptr %i.bc, ptr %25, align 8, !tbaa !9, !alias.scope !79
  %i.tq = icmp eq ptr %i.tp, %i.ba
  br i1 %i.tq, label %bb.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361

bb.br:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i360
  %i.tr = load i64, ptr %i.bb, align 8, !tbaa !13, !noalias !79 ; 3 uses
  %i.ts = icmp ult i64 %i.tr, 16
  call void @llvm.assume(i1 %i.ts)
  %i.tt = add nuw nsw i64 %i.tr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.tt, i1 false)
  br label %bb.bs

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i360
  store ptr %i.tp, ptr %25, align 8, !tbaa !26, !alias.scope !79
  %i.tu = load i64, ptr %i.ba, align 8, !tbaa !16, !noalias !79
  store i64 %i.tu, ptr %i.bc, align 8, !tbaa !16, !alias.scope !79
  %.pre4.i362 = load i64, ptr %i.bb, align 8, !tbaa !13, !noalias !79
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361, %bb.br
  %i.tv = phi ptr [ %i.bc, %bb.br ], [ %i.tp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361 ] ; 3 uses
  %i.tw = phi i64 [ %i.tr, %bb.br ], [ %.pre4.i362, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361 ] ; 3 uses
  store i64 %i.tw, ptr %i.bd, align 8, !tbaa !13, !alias.scope !79
  store ptr %i.ba, ptr %26, align 8, !tbaa !26, !noalias !79
  store i64 0, ptr %i.bb, align 8, !tbaa !13, !noalias !79
  store i8 0, ptr %i.ba, align 8, !tbaa !16, !noalias !79
  %i.tx = icmp eq i64 %i.tw, 4
  br i1 %i.tx, label %bb.bt, label %.critedge176

bb.bt:                                            ; preds = %bb.bs
  %i.ty = load i32, ptr %i.tv, align 1
  %i.tz = icmp ne i32 %i.ty, 1702194274           ; 2 uses
  %i.ua = zext i1 %i.tz to i32                    ; 0 uses
  br label %.critedge176

.critedge176:                                     ; preds = %bb.bs, %bb.bt
  %i.ub = phi i1 [ %i.tz, %bb.bt ], [ true, %bb.bs ]
  %i.uc = icmp eq ptr %i.tv, %i.bc
  br i1 %i.uc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368.thread: ; preds = %.critedge176
  %i.ud = icmp ult i64 %i.tw, 16
  call void @llvm.assume(i1 %i.ud)
  br label %.critedge177.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368: ; preds = %.critedge176
  %i.ue = load i64, ptr %i.bc, align 8, !tbaa !16
  %i.uf = add i64 %i.ue, 1
  call void @_ZdlPvm(ptr noundef %i.tv, i64 noundef %i.uf) #24
  %.pre936 = load ptr, ptr %26, align 8, !tbaa !26 ; 2 uses
  %i.ug = icmp eq ptr %.pre936, %i.ba
  br i1 %i.ug, label %.critedge177.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368
  %i.uh = load i64, ptr %i.ba, align 8, !tbaa !16
  %i.ui = add i64 %i.uh, 1
  call void @_ZdlPvm(ptr noundef %.pre936, i64 noundef %i.ui) #24
  br label %.critedge177.thread

.critedge177.thread:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  %.pre937 = load ptr, ptr %23, align 8, !tbaa !26
  br label %.critedge179

.critedge179:                                     ; preds = %bb.bn, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347, %.critedge177.thread
  %i.uj = phi ptr [ %.pre937, %.critedge177.thread ], [ %i.rw, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347 ], [ %i.rw, %bb.bn ] ; 2 uses
  %i.uk = phi i1 [ %i.ub, %.critedge177.thread ], [ true, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347 ], [ true, %bb.bn ]
  %i.ul = icmp eq ptr %i.uj, %i.ay
  br i1 %i.ul, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372: ; preds = %.critedge179
  %i.um = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.un = add i64 %i.um, 1
  call void @_ZdlPvm(ptr noundef %i.uj, i64 noundef %i.un) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374: ; preds = %.critedge179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372
  %i.uo = load ptr, ptr %24, align 8, !tbaa !26   ; 2 uses
  %i.up = icmp eq ptr %i.uo, %i.aw
  br i1 %i.up, label %.critedge180.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374
  %i.uq = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.ur = add i64 %i.uq, 1
  call void @_ZdlPvm(ptr noundef %i.uo, i64 noundef %i.ur) #24
  br label %.critedge180.thread

.critedge180.thread:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %.pre938 = load ptr, ptr %21, align 8, !tbaa !26
  br label %.critedge182

.critedge182:                                     ; preds = %bb.bi, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit329, %.critedge180.thread
  %i.us = phi ptr [ %.pre938, %.critedge180.thread ], [ %i.px, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit329 ], [ %i.px, %bb.bi ] ; 2 uses
  %i.ut = phi i1 [ %i.uk, %.critedge180.thread ], [ true, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit329 ], [ true, %bb.bi ]
  %i.uu = icmp eq ptr %i.us, %i.au
  br i1 %i.uu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378: ; preds = %.critedge182
  %i.uv = load i64, ptr %i.au, align 8, !tbaa !16
  %i.uw = add i64 %i.uv, 1
  call void @_ZdlPvm(ptr noundef %i.us, i64 noundef %i.uw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380: ; preds = %.critedge182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378
  %i.ux = load ptr, ptr %22, align 8, !tbaa !26   ; 2 uses
  %i.uy = icmp eq ptr %i.ux, %i.as
  br i1 %i.uy, label %.critedge183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380
  %i.uz = load i64, ptr %i.as, align 8, !tbaa !16
  %i.va = add i64 %i.uz, 1
  call void @_ZdlPvm(ptr noundef %i.ux, i64 noundef %i.va) #24
  br label %.critedge183

.critedge183:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br i1 %i.ut, label %.critedge183.thread, label %.outer.backedge

.critedge183.thread:                              ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit311.thread618, %.critedge183
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  %i.vb = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  store ptr %i.vb, ptr %27, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 63, ptr %i.e, align 8, !tbaa !36
  %i.vc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc386 unwind label %bb.bx ; 3 uses

.noexc386:                                        ; preds = %.critedge183.thread
  store ptr %i.vc, ptr %27, align 8, !tbaa !26
  %i.vd = load i64, ptr %i.e, align 8, !tbaa !36  ; 3 uses
  store i64 %i.vd, ptr %i.vb, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.vc, ptr noundef nonnull align 1 dereferenceable(63) @.str.20, i64 63, i1 false)
  %i.ve = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.vd, ptr %i.ve, align 8, !tbaa !13
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 %i.vd
  store i8 0, ptr %i.vf, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable633 unwind label %bb.by

.unreachable633:                                  ; preds = %.noexc386
  unreachable

bb.bu:                                            ; preds = %.noexc.i313
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

bb.bv:                                            ; preds = %.noexc.i331
  %i.vh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

bb.bw:                                            ; preds = %.noexc.i349
  %i.vi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  %i.vj = load ptr, ptr %23, align 8, !tbaa !26   ; 2 uses
  %i.vk = icmp eq ptr %i.vj, %i.ay
  br i1 %i.vk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397: ; preds = %bb.bw
  %i.vl = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.vm = add i64 %i.vl, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397
end_hunk_1

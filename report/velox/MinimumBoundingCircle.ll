Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/MinimumBoundingCircle?download=true
inline.NumInlined: 432
inline.NumDeleted: 226
begin_hunk_0_@_ZN4geos9algorithm21MinimumBoundingCircle19computeCirclePointsEv:bb.a
  %2 = alloca %"class.std::unique_ptr.26", align 8 ; 7 uses
  %3 = alloca %"class.std::vector", align 8       ; 11 uses
  %4 = alloca %"class.geos::geom::Coordinate", align 8 ; 18 uses
  %5 = alloca %"class.geos::geom::Coordinate", align 16 ; 21 uses
  %6 = alloca %"class.geos::geom::Coordinate", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.34", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  br i1 %i.e, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(40) %i.f)
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(40) %i.m) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !41   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54
  %.not.i = icmp eq ptr %i.s, %i.u
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !53
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.w, ptr %i.r, align 8, !tbaa !41
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !17   ; 5 uses
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.f, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ac = sdiv exact i64 %i.aa, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 384307168202282325)
  %i.ag = select i1 %i.ae, i64 384307168202282325, i64 %i.af ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ah = mul nuw nsw i64 %i.ag, 24
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !53
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.x, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !53, !alias.scope !105
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.s
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !81

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #15
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.ai, ptr %i.l, align 8, !tbaa !17
  store ptr %i.am, ptr %i.r, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.an, ptr %i.t, align 8, !tbaa !54
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.ao = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 264
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(40) %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.as = load ptr, ptr %1, align 8, !tbaa !38    ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.26") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %i.as)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.aw = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %3, align 8, !tbaa !12    ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !12 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -24 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load <2 x double>, ptr %i.ba, align 8
  %i.bg = load <2 x double>, ptr %i.bd, align 8
  %i.bh = fcmp oeq <2 x double> %i.bf, %i.bg      ; 2 uses
  %i.bi = extractelement <2 x i1> %i.bh, i64 0
  %i.bj = extractelement <2 x i1> %i.bh, i64 1
  %.0.i = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %.0.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !41
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit119

bb.m:                                             ; preds = %bb.o, %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bm = phi ptr [ %i.bd, %bb.k ], [ %i.bc, %bb.j ] ; 4 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.ba to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 24                ; 2 uses
  %i.br = icmp ult i64 %i.bq, 3
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.bb unwind label %bb.m      ; 0 uses

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %.not11.i = icmp eq ptr %i.ba, %i.bm
  br i1 %.not11.i, label %_ZN4geos9algorithm21MinimumBoundingCircle11lowestPointERSt6vectorINS_4geom10CoordinateESaIS4_EE.exit.thread, label %.lr.ph.preheader.i

_ZN4geos9algorithm21MinimumBoundingCircle11lowestPointERSt6vectorINS_4geom10CoordinateESaIS4_EE.exit.thread: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x double> splat (double +qnan), ptr %5, align 16, !tbaa !18, !alias.scope !106
  store double +qnan, ptr %i.bu, align 16, !tbaa !57, !alias.scope !106
  br label %_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_.exit

.lr.ph.preheader.i:                               ; preds = %bb.p
  %.pre.i = load double, ptr %i.be, align 8, !tbaa !52, !noalias !107
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.bw = phi double [ %i.cb, %.lr.ph.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %.013.i = phi ptr [ %spec.select.i, %.lr.ph.i ], [ %i.ba, %.lr.ph.preheader.i ]
  %.sroa.08.012.i = phi ptr [ %i.ca, %.lr.ph.i ], [ %i.ba, %.lr.ph.preheader.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 8
  %i.by = load double, ptr %i.bx, align 8, !tbaa !52, !noalias !107 ; 2 uses
  %i.bz = fcmp olt double %i.by, %i.bw            ; 2 uses
  %spec.select.i = select i1 %i.bz, ptr %.sroa.08.012.i, ptr %.013.i ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 24 ; 2 uses
  %.not.i22 = icmp eq ptr %i.ca, %i.bm
  %i.cb = select i1 %i.bz, double %i.by, double %i.bw
  br i1 %.not.i22, label %.lr.ph.i23, label %.lr.ph.i

.lr.ph.i23:                                       ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %spec.select.i, i64 24, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x double> splat (double +qnan), ptr %5, align 16, !tbaa !18, !alias.scope !108
  store double +qnan, ptr %i.cc, align 16, !tbaa !57, !alias.scope !108
  %i.cd = load double, ptr %4, align 8, !tbaa !15, !noalias !108 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cf = load double, ptr %i.ce, align 8, !noalias !108 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph.i23
  %.02130.i = phi double [ +inf, %.lr.ph.i23 ], [ %.2.i, %bb.t ] ; 3 uses
  %.sroa.025.029.i = phi ptr [ %i.ba, %.lr.ph.i23 ], [ %i.cu, %bb.t ] ; 4 uses
  %i.cg = load double, ptr %.sroa.025.029.i, align 8, !tbaa !15, !noalias !108 ; 2 uses
  %i.ch = fcmp oeq double %i.cg, %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.025.029.i, i64 8
  %i.cj = load double, ptr %i.ci, align 8, !noalias !108 ; 2 uses
  %i.ck = fcmp oeq double %i.cj, %i.cf
  %.0.i.i.i = select i1 %i.ch, i1 %i.ck, i1 false
  br i1 %.0.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = fsub double %i.cg, %i.cd                ; 2 uses
  %i.cm = fsub double %i.cj, %i.cf                ; 3 uses
  %i.cn = fcmp olt double %i.cm, 0.000000e+00
  %i.co = fneg double %i.cm
  %spec.select.i24 = select i1 %i.cn, double %i.co, double %i.cm ; 3 uses
  %i.cp = fmul double %i.cl, %i.cl
  %i.cq = fmul double %spec.select.i24, %spec.select.i24
  %i.cr = fadd double %i.cp, %i.cq
  %sqrt.i = call double @llvm.sqrt.f64(double %i.cr)
  %i.cs = fdiv double %spec.select.i24, %sqrt.i   ; 2 uses
  %i.ct = fcmp olt double %i.cs, %.02130.i
  br i1 %i.ct, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.025.029.i, i64 24, i1 false), !tbaa.struct !53
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.2.i = phi double [ %.02130.i, %bb.q ], [ %i.cs, %bb.s ], [ %.02130.i, %bb.r ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.025.029.i, i64 24 ; 2 uses
  %.not.i25 = icmp eq ptr %i.cu, %i.bm
  br i1 %.not.i25, label %_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_.exit.loopexit, label %bb.q

_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_.exit.loopexit: ; preds = %bb.t
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_.exit

_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_.exit: ; preds = %_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_.exit.loopexit, %_ZN4geos9algorithm21MinimumBoundingCircle11lowestPointERSt6vectorINS_4geom10CoordinateESaIS4_EE.exit.thread
  %i.cv = phi ptr [ %i.bv, %_ZN4geos9algorithm21MinimumBoundingCircle11lowestPointERSt6vectorINS_4geom10CoordinateESaIS4_EE.exit.thread ], [ %9, %_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_.exit.loopexit ]
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.u

bb.u:                                             ; preds = %_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_.exit, %bb.au
  %i.cx = phi i64 [ 1, %_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_.exit ], [ %i.hy, %bb.au ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.cy = load ptr, ptr %3, align 8, !tbaa !17, !noalias !109 ; 4 uses
  %i.cz = load ptr, ptr %i.bb, align 8, !tbaa !12, !noalias !109 ; 2 uses
  %.not24.i = icmp eq ptr %i.cy, %i.cz
  br i1 %.not24.i, label %.loopexit127, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.u, %bb.x
  %.027.i = phi ptr [ %.2.i28, %bb.x ], [ %i.cy, %bb.u ] ; 3 uses
  %.01626.i = phi double [ %.218.i, %bb.x ], [ +inf, %bb.u ] ; 4 uses
  %.sroa.021.025.i = phi ptr [ %i.dn, %bb.x ], [ %i.cy, %bb.u ] ; 5 uses
  %i.da = load double, ptr %.sroa.021.025.i, align 8, !tbaa !15, !noalias !109 ; 2 uses
  %i.db = load double, ptr %4, align 8, !tbaa !15, !noalias !109
  %i.dc = fcmp oeq double %i.da, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.021.025.i, i64 8
  %i.de = load double, ptr %i.dd, align 8, !noalias !109 ; 2 uses
  %i.df = load double, ptr %i.cw, align 8, !noalias !109
  %i.dg = fcmp oeq double %i.de, %i.df
  %.0.i.i.i27 = select i1 %i.dc, i1 %i.dg, i1 false
  br i1 %.0.i.i.i27, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i26
  %i.dh = load double, ptr %5, align 16, !tbaa !15, !noalias !109
  %i.di = fcmp oeq double %i.da, %i.dh
  %i.dj = load double, ptr %i.cv, align 8, !noalias !109
  %i.dk = fcmp oeq double %i.de, %i.dj
  %.0.i.i20.i = select i1 %i.di, i1 %i.dk, i1 false
  br i1 %.0.i.i20.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = invoke noundef double @_ZN4geos9algorithm5Angle12angleBetweenERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021.025.i, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.w
  %i.dm = fcmp olt double %i.dl, %.01626.i        ; 2 uses
  %.117.i = select i1 %i.dm, double %i.dl, double %.01626.i
  %.1.i = select i1 %i.dm, ptr %.sroa.021.025.i, ptr %.027.i
  br label %bb.x

bb.x:                                             ; preds = %.noexc, %bb.v, %.lr.ph.i26
  %.218.i = phi double [ %.117.i, %.noexc ], [ %.01626.i, %.lr.ph.i26 ], [ %.01626.i, %bb.v ]
  %.2.i28 = phi ptr [ %.1.i, %.noexc ], [ %.027.i, %.lr.ph.i26 ], [ %.027.i, %bb.v ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.021.025.i, i64 24 ; 2 uses
  %.not.i29 = icmp eq ptr %i.dn, %i.cz
  br i1 %.not.i29, label %.loopexit127, label %.lr.ph.i26

.loopexit127:                                     ; preds = %bb.x, %bb.u
  %.0.lcssa.i30 = phi ptr [ %i.cy, %bb.u ], [ %.2.i28, %bb.x ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.0.lcssa.i30, i64 24, i1 false), !tbaa.struct !53
  %i.do = invoke noundef zeroext i1 @_ZN4geos9algorithm5Angle8isObtuseERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit

bb.y:                                             ; preds = %.loopexit127
  br i1 %i.do, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !41 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !54
  %.not.i31 = icmp eq ptr %i.dr, %i.dt
  br i1 %.not.i31, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !53
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !41
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24 ; 2 uses
  store ptr %i.dv, ptr %i.dq, align 8, !tbaa !41
  %.pre142 = load ptr, ptr %i.ds, align 8, !tbaa !54
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit46

bb.ab:                                            ; preds = %bb.z
  %i.dw = load ptr, ptr %i.dp, align 8, !tbaa !17 ; 5 uses
  %i.dx = ptrtoint ptr %i.dr to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy                    ; 3 uses
  %i.ea = icmp eq i64 %i.dz, 9223372036854775800
  br i1 %i.ea, label %.invoke, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i32

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i32: ; preds = %bb.ab
  %i.eb = sdiv exact i64 %i.dz, 24                ; 3 uses
  %.sroa.speculated.i.i.i33 = call i64 @llvm.umax.i64(i64 %i.eb, i64 1)
  %i.ec = add nsw i64 %.sroa.speculated.i.i.i33, %i.eb ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.eb
  %i.ee = call i64 @llvm.umin.i64(i64 %i.ec, i64 384307168202282325)
  %i.ef = select i1 %i.ed, i64 384307168202282325, i64 %i.ee ; 3 uses
  %.not.i.i.i34 = icmp ne i64 %i.ef, 0
  call void @llvm.assume(i1 %.not.i.i.i34)
  %i.eg = mul nuw nsw i64 %i.ef, 24
  %i.eh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eg) #16
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !53
  %.not10.i.i.i.i.i.i35 = icmp eq ptr %i.dw, %i.dr
  br i1 %.not10.i.i.i.i.i.i35, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i40, label %.lr.ph.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i36:                             ; preds = %.noexc45, %.lr.ph.i.i.i.i.i.i36
  %.012.i.i.i.i.i.i37 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i36 ], [ %i.eh, %.noexc45 ] ; 2 uses
  %.0911.i.i.i.i.i.i38 = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i36 ], [ %i.dw, %.noexc45 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i37, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i38, i64 24, i1 false), !tbaa.struct !53, !alias.scope !110
  %i.ej = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i38, i64 24 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i37, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i39 = icmp eq ptr %i.ej, %i.dr
  br i1 %.not.i.i.i.i.i.i39, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i40, label %.lr.ph.i.i.i.i.i.i36, !llvm.loop !81

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i40: ; preds = %.lr.ph.i.i.i.i.i.i36, %.noexc45
  %.0.lcssa.i.i.i.i.i.i41 = phi ptr [ %i.eh, %.noexc45 ], [ %i.ek, %.lr.ph.i.i.i.i.i.i36 ]
  %i.el = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i41, i64 24 ; 2 uses
  %.not.i23.i.i42 = icmp eq ptr %i.dw, null
  br i1 %.not.i23.i.i42, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i43, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i40
  call void @_ZdlPv(ptr noundef nonnull %i.dw) #15
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i43

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i43: ; preds = %bb.ac, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i40
  store ptr %i.eh, ptr %i.dp, align 8, !tbaa !17
  store ptr %i.el, ptr %i.dq, align 8, !tbaa !41
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %i.ef ; 2 uses
  store ptr %i.em, ptr %i.ds, align 8, !tbaa !54
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit46

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit46: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i43, %bb.aa
  %i.en = phi ptr [ %i.em, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i43 ], [ %.pre142, %bb.aa ] ; 4 uses
  %i.eo = phi ptr [ %i.el, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i43 ], [ %i.dv, %bb.aa ] ; 2 uses
  %.not.i47 = icmp eq ptr %i.eo, %i.en
  br i1 %.not.i47, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !53
  %i.ep = load ptr, ptr %i.dq, align 8, !tbaa !41
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store ptr %i.eq, ptr %i.dq, align 8, !tbaa !41
  br label %.critedge

bb.ae:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit46
  %i.er = load ptr, ptr %i.dp, align 8, !tbaa !17 ; 5 uses
  %i.es = ptrtoint ptr %i.en to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 3 uses
  %i.ev = icmp eq i64 %i.eu, 9223372036854775800
  br i1 %i.ev, label %.invoke, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i48

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i48: ; preds = %bb.ae
  %i.ew = sdiv exact i64 %i.eu, 24                ; 3 uses
  %.sroa.speculated.i.i.i49 = call i64 @llvm.umax.i64(i64 %i.ew, i64 1)
  %i.ex = add nsw i64 %.sroa.speculated.i.i.i49, %i.ew ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.ew
  %i.ez = call i64 @llvm.umin.i64(i64 %i.ex, i64 384307168202282325)
  %i.fa = select i1 %i.ey, i64 384307168202282325, i64 %i.ez ; 3 uses
  %.not.i.i.i50 = icmp ne i64 %i.fa, 0
  call void @llvm.assume(i1 %.not.i.i.i50)
  %i.fb = mul nuw nsw i64 %i.fa, 24
  %i.fc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fb) #16
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc61:                                         ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i48
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !53
  %.not10.i.i.i.i.i.i51 = icmp eq ptr %i.er, %i.en
  br i1 %.not10.i.i.i.i.i.i51, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i56, label %.lr.ph.i.i.i.i.i.i52

.lr.ph.i.i.i.i.i.i52:                             ; preds = %.noexc61, %.lr.ph.i.i.i.i.i.i52
  %.012.i.i.i.i.i.i53 = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i52 ], [ %i.fc, %.noexc61 ] ; 2 uses
  %.0911.i.i.i.i.i.i54 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i52 ], [ %i.er, %.noexc61 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i53, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i54, i64 24, i1 false), !tbaa.struct !53, !alias.scope !111
  %i.fe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i54, i64 24 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i53, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i55 = icmp eq ptr %i.fe, %i.en
  br i1 %.not.i.i.i.i.i.i55, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i56, label %.lr.ph.i.i.i.i.i.i52, !llvm.loop !81

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i56: ; preds = %.lr.ph.i.i.i.i.i.i52, %.noexc61
  %.0.lcssa.i.i.i.i.i.i57 = phi ptr [ %i.fc, %.noexc61 ], [ %i.ff, %.lr.ph.i.i.i.i.i.i52 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i57, i64 24
  %.not.i23.i.i58 = icmp eq ptr %i.er, null
  br i1 %.not.i23.i.i58, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i59, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i56
  call void @_ZdlPv(ptr noundef nonnull %i.er) #15
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i59

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i59: ; preds = %bb.af, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i56
  store ptr %i.fc, ptr %i.dp, align 8, !tbaa !17
  store ptr %i.fg, ptr %i.dq, align 8, !tbaa !41
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.fa
  store ptr %i.fh, ptr %i.ds, align 8, !tbaa !54
  br label %.critedge

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

end_hunk_0

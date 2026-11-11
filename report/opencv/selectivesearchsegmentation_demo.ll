Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/selectivesearchsegmentation_demo?download=true
inline.NumInlined: 127
inline.NumDeleted: 71
begin_hunk_0_@main:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !28
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #11
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 %i.g, ptr %i.a, align 8, !tbaa !29
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc51 unwind label %bb.m   ; 2 uses

.noexc51:                                         ; preds = %.noexc.i
  store ptr %i.i, ptr %3, align 8, !tbaa !31
  %i.j = load i64, ptr %i.a, align 8, !tbaa !29
  store i64 %i.j, ptr %i.e, align 8, !tbaa !11
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc51, %bb.e
  %i.k = phi ptr [ %i.i, %.noexc51 ], [ %i.e, %bb.e ] ; 2 uses
  switch i64 %i.g, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.d, align 1, !tbaa !11
  store i8 %i.l, ptr %i.k, align 1, !tbaa !11
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.d, i64 %i.g, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !32
  %i.o = load ptr, ptr %3, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  invoke void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.s = load i64, ptr %i.e, align 8, !tbaa !11
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  invoke void @_ZN2cv8ximgproc12segmentation33createSelectiveSearchSegmentationEv(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr") align 8 %4)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load ptr, ptr %4, align 8, !tbaa !35     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.v, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !38
  store i32 16842752, ptr %5, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.x, align 8, !tbaa !41
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !11
  switch i8 %i.ad, label %bb.s [
    i8 115, label %bb.l
    i8 102, label %.invoke
    i8 113, label %bb.r
  ]

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i32 noundef 200, float noundef 8.000000e-01)
          to label %bb.t unwind label %bb.q

bb.m:                                             ; preds = %.noexc.i, %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.n:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.e
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.n
  %i.am = load i64, ptr %i.e, align 8, !tbaa !11
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.aj, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.av

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.p:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.at

bb.q:                                             ; preds = %.invoke, %bb.s, %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.r:                                             ; preds = %bb.k
  br label %.invoke

.invoke:                                          ; preds = %bb.k, %bb.r
  %.sink101 = phi i64 [ 88, %bb.r ], [ 80, %bb.k ]
  %i.ar = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink101
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i32 noundef 150, i32 noundef 150, float noundef 8.000000e-01)
          to label %bb.t unwind label %bb.q

bb.s:                                             ; preds = %bb.k
  invoke fastcc void @_ZL4helpv()
          to label %bb.am unwind label %bb.q

bb.t:                                             ; preds = %.invoke, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.av = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 144
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.az = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 0)
          to label %.preheader unwind label %bb.x

.preheader:                                       ; preds = %bb.u
  %sext.mask80 = and i32 %i.az, 255
  %.not81 = icmp eq i32 %sext.mask80, 113
  br i1 %.not81, label %._crit_edge, label %.lr.ph83

.lr.ph83:                                         ; preds = %.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 22
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph83, %bb.ae
  %.02082 = phi i32 [ 10, %.lr.ph83 ], [ %.222, %bb.ae ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bk = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.bl = load ptr, ptr %i.ba, align 8, !tbaa !43 ; 2 uses
  %.not7377 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not7377, label %._crit_edge.i.i55, label %.lr.ph

._crit_edge.i.i55:                                ; preds = %bb.ac, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  store ptr %i.be, ptr %10, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.be, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  store i64 6, ptr %i.bf, align 8, !tbaa !32
  store i8 0, ptr %i.bj, align 2, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  store i32 0, ptr %i.bg, align 8, !tbaa !37
  store i32 0, ptr %i.bh, align 4, !tbaa !38
  store i32 16842752, ptr %11, align 8, !tbaa !40
  store ptr %7, ptr %i.bi, align 8, !tbaa !41
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.ad unwind label %bb.af

bb.x:                                             ; preds = %bb.t, %bb.u
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.y:                                             ; preds = %bb.v
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.lr.ph:                                           ; preds = %bb.w, %bb.ac
  %i.bo = phi ptr [ %i.bs, %bb.ac ], [ %i.bl, %bb.w ]
  %.01879 = phi i32 [ %i.bp, %bb.ac ], [ 0, %bb.w ] ; 2 uses
  %.sroa.069.078 = phi ptr [ %i.bt, %bb.ac ], [ %i.bk, %bb.w ] ; 3 uses
  %i.bp = add nuw nsw i32 %.01879, 1
  %i.bq = icmp slt i32 %.01879, %.02082
  br i1 %i.bq, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  store i64 0, ptr %i.bc, align 8
  store i32 50397184, ptr %8, align 8, !tbaa !40
  store ptr %7, ptr %i.bb, align 8, !tbaa !41
  %.sroa.0.0.copyload = load i64, ptr %.sroa.069.078, align 4, !tbaa !16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.069.078, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.bd, align 8, !tbaa !45
  invoke void @_ZN2cv9rectangleERKNS_17_InputOutputArrayENS_5Rect_IiEERKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 1, i32 noundef 8, i32 noundef 0)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  %.pre = load ptr, ptr %i.ba, align 8, !tbaa !43
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.ah

bb.ac:                                            ; preds = %.lr.ph, %bb.aa
  %i.bs = phi ptr [ %i.bo, %.lr.ph ], [ %.pre, %bb.aa ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.069.078, i64 16 ; 2 uses
  %.not73 = icmp eq ptr %i.bt, %i.bs
  br i1 %.not73, label %._crit_edge.i.i55, label %.lr.ph, !llvm.loop !22

bb.ad:                                            ; preds = %._crit_edge.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  %i.bu = load ptr, ptr %10, align 8, !tbaa !31   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.be
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.ad
  %i.bw = load i64, ptr %i.be, align 8, !tbaa !11
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %i.by = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 0)
          to label %bb.ae unwind label %bb.ag     ; 2 uses

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.bz = shl i32 %i.by, 24                       ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 1677721600
  %i.cb = add nsw i32 %.02082, 10
  %spec.select = select i1 %i.ca, i32 %i.cb, i32 %.02082
  %i.cc = icmp eq i32 %i.bz, 1627389952
  %i.cd = icmp sgt i32 %.02082, 10
  %or.cond = select i1 %i.cc, i1 %i.cd, i1 false
  %i.ce = add nsw i32 %.02082, -10
  %.222 = select i1 %or.cond, i32 %i.ce, i32 %spec.select
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %sext.mask = and i32 %i.by, 255
  %.not = icmp eq i32 %sext.mask, 113
  br i1 %.not, label %._crit_edge, label %bb.v, !llvm.loop !23

bb.af:                                            ; preds = %._crit_edge.i.i55
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  %i.cg = load ptr, ptr %10, align 8, !tbaa !31   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.be
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.af
  %i.ci = load i64, ptr %i.be, align 8, !tbaa !11
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %bb.ab
  %.pn42.pn = phi { ptr, i32 } [ %i.br, %bb.ab ], [ %i.ck, %bb.ag ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.y
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %bb.ah ], [ %i.bn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.ak

._crit_edge:                                      ; preds = %bb.ae, %.preheader
  %i.cl = load ptr, ptr %6, align 8, !tbaa !48    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !49
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #12
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit:     ; preds = %._crit_edge, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.am

bb.ak:                                            ; preds = %bb.x, %bb.ai
  %.pn42.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.x ], [ %.pn42.pn.pn, %bb.ai ]
  %i.cr = load ptr, ptr %6, align 8, !tbaa !48    ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit66, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !49
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #12
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit66

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit66:   ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.at

bb.am:                                            ; preds = %bb.s, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit
  %.0 = phi i32 [ 0, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit ], [ -2, %bb.s ]
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !17 ; 8 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation27SelectiveSearchSegmentationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.cz, align 8, !tbaa !19
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !20
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !15
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #10, !inline_history !24
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !15
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #10, !inline_history !24
  br label %_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation27SelectiveSearchSegmentationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ap:                                            ; preds = %bb.an
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i67 = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i67, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dl = add nsw i32 %i.dc, -1
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.dm = atomicrmw volatile add ptr %i.cz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i = phi i32 [ %i.dc, %bb.aq ], [ %i.dm, %bb.ar ]
  %i.dn = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dn, label %bb.as, label %_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation27SelectiveSearchSegmentationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #10
  br label %_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation27SelectiveSearchSegmentationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation27SelectiveSearchSegmentationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.am, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.aw

bb.at:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit66, %bb.q, %bb.p
  %.pn42.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit66 ], [ %i.aq, %bb.q ], [ %i.ap, %bb.p ]
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation27SelectiveSearchSegmentationELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #10
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.o
  %.pn42.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn.pn, %bb.at ], [ %i.ao, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #10
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.pn42.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn.pn.pn, %bb.au ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  resume { ptr, i32 } %.pn42.pn.pn.pn.pn.pn.pn.pn

bb.aw:                                            ; preds = %_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation27SelectiveSearchSegmentationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ %.0, %_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation27SelectiveSearchSegmentationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL4helpv() unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #11
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load i8, ptr %i.g, align 8, !tbaa !72
  %.not.i1.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 67
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.f)
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef signext i8 %i.m(ptr noundef nonnull align 8 dereferenceable(570) %i.f, i8 noundef signext 10), !inline_history !50
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.j, %bb.c ], [ %i.n, %bb.d ]
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o) ; 4 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.1, i64 noundef 103) ; 0 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 240
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/nbsearch?download=true
inline.NumInlined: 744
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl9shiftCellEPKiPf:bb.a

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.v = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ac, %bb.b ]
  %i.w = phi i32 [ %i.a, %.lr.ph ], [ %i.y, %bb.b ]
  %i.x = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.aa, %bb.b ]
  %i.y = add nsw i32 %i.w, %i.j                   ; 3 uses
  %i.z = load <2 x float>, ptr %i.i, align 8, !tbaa !81
  %i.aa = fadd <2 x float> %i.x, %i.z             ; 5 uses
  %i.ab = load float, ptr %i.n, align 8, !tbaa !81
  %i.ac = fadd float %i.v, %i.ab                  ; 3 uses
  store <2 x float> %i.aa, ptr %2, align 4, !tbaa !81
  store float %i.ac, ptr %i.f, align 4, !tbaa !81
  %i.ad = icmp slt i32 %i.y, 0
  br i1 %i.ad, label %bb.b, label %.preheader.loopexit, !llvm.loop !2

bb.c:                                             ; preds = %.lr.ph24, %bb.c
  %i.ae = phi float [ %i.q, %.lr.ph24 ], [ %i.aj, %bb.c ]
  %i.af = phi i32 [ %.lcssa21, %.lr.ph24 ], [ %i.ah, %bb.c ]
  %i.ag = phi <2 x float> [ %i.t, %.lr.ph24 ], [ %i.al, %bb.c ]
  %i.ah = sub nsw i32 %i.af, %i.j                 ; 3 uses
  %i.ai = load float, ptr %i.u, align 8, !tbaa !81
  %i.aj = fsub float %i.ae, %i.ai                 ; 3 uses
  %i.ak = load <2 x float>, ptr %i.i, align 8, !tbaa !81
  %i.al = fsub <2 x float> %i.ag, %i.ak           ; 4 uses
  store <2 x float> %i.al, ptr %2, align 4, !tbaa !81
  store float %i.aj, ptr %i.f, align 4, !tbaa !81
  %.not = icmp slt i32 %i.ah, %i.j
  br i1 %.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !3

.loopexit.loopexit:                               ; preds = %bb.c
  %i.am = extractelement <2 x float> %i.al, i64 1
  %i.an = extractelement <2 x float> %i.al, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.a
  %i.ao = phi float [ %i.q, %.preheader ], [ 0.000000e+00, %bb.a ], [ %i.aj, %.loopexit.loopexit ] ; 3 uses
  %i.ap = phi float [ %i.r, %.preheader ], [ 0.000000e+00, %bb.a ], [ %i.am, %.loopexit.loopexit ] ; 3 uses
  %i.aq = phi float [ %i.s, %.preheader ], [ 0.000000e+00, %bb.a ], [ %i.an, %.loopexit.loopexit ] ; 3 uses
  %.sroa.0.0 = phi i32 [ %.lcssa21, %.preheader ], [ %i.a, %bb.a ], [ %i.ah, %.loopexit.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !47 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 443
  %i.au = load i8, ptr %i.at, align 1, !tbaa !46, !range !94, !noundef !91
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %.preheader20.1, label %.loopexit.1

.preheader20.1:                                   ; preds = %.loopexit
  %i.aw = icmp slt i32 %i.c, 0
  br i1 %i.aw, label %.lr.ph.1, label %.preheader.1

.lr.ph.1:                                         ; preds = %.preheader20.1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.az = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.ap, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.1
  %i.bb = phi float [ %i.ao, %.lr.ph.1 ], [ %i.bg, %bb.d ]
  %i.bc = phi i32 [ %i.c, %.lr.ph.1 ], [ %i.be, %bb.d ]
  %i.bd = phi <2 x float> [ %i.ba, %.lr.ph.1 ], [ %i.bi, %bb.d ]
  %i.be = add nsw i32 %i.bc, %i.as                ; 3 uses
  %i.bf = load float, ptr %i.ay, align 4, !tbaa !81
  %i.bg = fadd float %i.bb, %i.bf                 ; 3 uses
  %i.bh = load <2 x float>, ptr %i.ax, align 4, !tbaa !81
  %i.bi = fadd <2 x float> %i.bd, %i.bh           ; 4 uses
  store <2 x float> %i.bi, ptr %2, align 4, !tbaa !81
  store float %i.bg, ptr %i.f, align 4, !tbaa !81
  %i.bj = icmp slt i32 %i.be, 0
  br i1 %i.bj, label %bb.d, label %.preheader.1.loopexit, !llvm.loop !2

.preheader.1.loopexit:                            ; preds = %bb.d
  %i.bk = extractelement <2 x float> %i.bi, i64 1
  %i.bl = extractelement <2 x float> %i.bi, i64 0
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1.loopexit, %.preheader20.1
  %i.bm = phi float [ %i.ao, %.preheader20.1 ], [ %i.bg, %.preheader.1.loopexit ] ; 2 uses
  %i.bn = phi float [ %i.ap, %.preheader20.1 ], [ %i.bk, %.preheader.1.loopexit ] ; 2 uses
  %i.bo = phi float [ %i.aq, %.preheader20.1 ], [ %i.bl, %.preheader.1.loopexit ] ; 2 uses
  %.lcssa21.1 = phi i32 [ %i.c, %.preheader20.1 ], [ %i.be, %.preheader.1.loopexit ] ; 3 uses
  %.not23.1 = icmp slt i32 %.lcssa21.1, %i.as
  br i1 %.not23.1, label %.loopexit.1, label %.lr.ph24.1

.lr.ph24.1:                                       ; preds = %.preheader.1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.br = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.bn, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph24.1
  %i.bt = phi float [ %i.bm, %.lr.ph24.1 ], [ %i.by, %bb.e ]
  %i.bu = phi i32 [ %.lcssa21.1, %.lr.ph24.1 ], [ %i.bw, %bb.e ]
  %i.bv = phi <2 x float> [ %i.bs, %.lr.ph24.1 ], [ %i.ca, %bb.e ]
  %i.bw = sub nsw i32 %i.bu, %i.as                ; 3 uses
  %i.bx = load float, ptr %i.bq, align 4, !tbaa !81
  %i.by = fsub float %i.bt, %i.bx                 ; 3 uses
  %i.bz = load <2 x float>, ptr %i.bp, align 4, !tbaa !81
  %i.ca = fsub <2 x float> %i.bv, %i.bz           ; 4 uses
  store <2 x float> %i.ca, ptr %2, align 4, !tbaa !81
  store float %i.by, ptr %i.f, align 4, !tbaa !81
  %.not.1 = icmp slt i32 %i.bw, %i.as
  br i1 %.not.1, label %.loopexit.1.loopexit, label %bb.e, !llvm.loop !3

.loopexit.1.loopexit:                             ; preds = %bb.e
  %i.cb = extractelement <2 x float> %i.ca, i64 1
  %i.cc = extractelement <2 x float> %i.ca, i64 0
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.loopexit.1.loopexit, %.preheader.1, %.loopexit
  %i.cd = phi float [ %i.bm, %.preheader.1 ], [ %i.ao, %.loopexit ], [ %i.by, %.loopexit.1.loopexit ] ; 2 uses
  %i.ce = phi float [ %i.bn, %.preheader.1 ], [ %i.ap, %.loopexit ], [ %i.cb, %.loopexit.1.loopexit ] ; 2 uses
  %i.cf = phi float [ %i.bo, %.preheader.1 ], [ %i.aq, %.loopexit ], [ %i.cc, %.loopexit.1.loopexit ] ; 2 uses
  %.sroa.7.0 = phi i32 [ %.lcssa21.1, %.preheader.1 ], [ %i.c, %.loopexit ], [ %i.bw, %.loopexit.1.loopexit ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !47 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !46, !range !94, !noundef !91
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %.preheader20.2, label %.loopexit.2

.preheader20.2:                                   ; preds = %.loopexit.1
  %i.cl = icmp slt i32 %i.e, 0
  br i1 %i.cl, label %.lr.ph.2, label %.preheader.2

.lr.ph.2:                                         ; preds = %.preheader20.2
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.co = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %i.ce, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.2
  %i.cq = phi float [ %i.cd, %.lr.ph.2 ], [ %i.cv, %bb.f ]
  %i.cr = phi i32 [ %i.e, %.lr.ph.2 ], [ %i.ct, %bb.f ]
  %i.cs = phi <2 x float> [ %i.cp, %.lr.ph.2 ], [ %i.cx, %bb.f ]
  %i.ct = add nsw i32 %i.cr, %i.ch                ; 3 uses
  %i.cu = load float, ptr %i.cn, align 8, !tbaa !81
  %i.cv = fadd float %i.cq, %i.cu                 ; 3 uses
  %i.cw = load <2 x float>, ptr %i.cm, align 8, !tbaa !81
  %i.cx = fadd <2 x float> %i.cs, %i.cw           ; 4 uses
  store <2 x float> %i.cx, ptr %2, align 4, !tbaa !81
  store float %i.cv, ptr %i.f, align 4, !tbaa !81
  %i.cy = icmp slt i32 %i.ct, 0
  br i1 %i.cy, label %bb.f, label %.preheader.2.loopexit, !llvm.loop !2

.preheader.2.loopexit:                            ; preds = %bb.f
  %i.cz = extractelement <2 x float> %i.cx, i64 1
  %i.da = extractelement <2 x float> %i.cx, i64 0
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2.loopexit, %.preheader20.2
  %i.db = phi float [ %i.cd, %.preheader20.2 ], [ %i.cv, %.preheader.2.loopexit ]
  %i.dc = phi float [ %i.ce, %.preheader20.2 ], [ %i.cz, %.preheader.2.loopexit ]
  %i.dd = phi float [ %i.cf, %.preheader20.2 ], [ %i.da, %.preheader.2.loopexit ]
  %.lcssa21.2 = phi i32 [ %i.e, %.preheader20.2 ], [ %i.ct, %.preheader.2.loopexit ] ; 3 uses
  %.not23.2 = icmp slt i32 %.lcssa21.2, %i.ch
  br i1 %.not23.2, label %.loopexit.2, label %.lr.ph24.2

.lr.ph24.2:                                       ; preds = %.preheader.2
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dg = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.dc, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph24.2
  %i.di = phi float [ %i.db, %.lr.ph24.2 ], [ %i.dn, %bb.g ]
  %i.dj = phi i32 [ %.lcssa21.2, %.lr.ph24.2 ], [ %i.dl, %bb.g ]
  %i.dk = phi <2 x float> [ %i.dh, %.lr.ph24.2 ], [ %i.dp, %bb.g ]
  %i.dl = sub nsw i32 %i.dj, %i.ch                ; 3 uses
  %i.dm = load float, ptr %i.df, align 8, !tbaa !81
  %i.dn = fsub float %i.di, %i.dm                 ; 2 uses
  %i.do = load <2 x float>, ptr %i.de, align 8, !tbaa !81
  %i.dp = fsub <2 x float> %i.dk, %i.do           ; 2 uses
  store <2 x float> %i.dp, ptr %2, align 4, !tbaa !81
  store float %i.dn, ptr %i.f, align 4, !tbaa !81
  %.not.2 = icmp slt i32 %i.dl, %i.ch
  br i1 %.not.2, label %.loopexit.2, label %bb.g, !llvm.loop !3

.loopexit.2:                                      ; preds = %bb.g, %.preheader.2, %.loopexit.1
  %.sroa.12.0 = phi i32 [ %.lcssa21.2, %.preheader.2 ], [ %i.e, %.loopexit.1 ], [ %i.dl, %bb.g ]
  %i.dq = mul i32 %i.as, %.sroa.12.0
  %reass.add.i = add i32 %i.dq, %.sroa.7.0
  %reass.mul.i = mul i32 %reass.add.i, %i.j
  %i.dr = add i32 %reass.mul.i, %.sroa.0.0
  ret i32 %i.dr
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx8internal30AnalysisNeighborhoodSearchImpl4initENS_20AnalysisNeighborhood10SearchModeEbPKNS_11ListOfListsIiEEPK5t_pbcRKNS_29AnalysisNeighborhoodPositionsE(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.gmx::NotImplementedError", align 8 ; 4 uses
  %8 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %9 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %10 = alloca %"class.gmx::NotImplementedError", align 8 ; 4 uses
  %11 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %12 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = alloca [3 x [3 x float]], align 16       ; 6 uses
  %i.b = alloca [3 x float], align 4              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !106
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx8internal30AnalysisNeighborhoodSearchImpl4initENS_20AnalysisNeighborhood10SearchModeEbPKNS_11ListOfListsIiEEPK5t_pbcRKNS_29AnalysisNeighborhoodPositionsEENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 878) #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = zext i1 %2 to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.f, ptr %i.g, align 4, !tbaa !44
  %i.h = icmp ne ptr %4, null                     ; 2 uses
  %or.cond = and i1 %2, %i.h
  br i1 %or.cond, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %4, align 4, !tbaa !102    ; 2 uses
  switch i32 %i.i, label %bb.e [
    i32 1, label %.thread94
    i32 0, label %bb.l
    i32 2, label %._crit_edge
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [32 x i8], ptr @_Z14c_pbcTypeNamesB5cxx11, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !111
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.3, ptr noundef %i.l)
  %i.m = call ptr @__cxa_allocate_exception(i64 24) #35 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %bb.g unwind label %.thread84

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx19NotImplementedErrorE, i64 16), ptr %7, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %9, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx8internal30AnalysisNeighborhoodSearchImpl4initENS_20AnalysisNeighborhood10SearchModeEbPKNS_11ListOfListsIiEEPK5t_pbcRKNS_29AnalysisNeighborhoodPositionsE, ptr %i.n, align 8, !tbaa !112
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.4, ptr %.sroa.476.0..sroa_idx, align 8, !tbaa !112
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 887, ptr %.sroa.577.0..sroa_idx, align 8, !tbaa !47
  invoke void @_ZN3gmxlsINS_19NotImplementedErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::NotImplementedError") align 8 %i.m, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr %i.m, ptr nonnull @_ZTIN3gmx19NotImplementedErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #39
          to label %bb.al unwind label %bb.i

.thread:                                          ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread84:                                        ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #35
  br label %.sink.split

bb.i:                                             ; preds = %bb.g, %bb.h
  %.045 = phi i1 [ false, %bb.h ], [ true, %bb.g ]
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #35
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br i1 %.045, label %bb.j, label %bb.k

.sink.split:                                      ; preds = %.thread, %.thread84
  %.pn69.pn83.ph = phi { ptr, i32 } [ %i.p, %.thread84 ], [ %i.o, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i
  %.pn69.pn83 = phi { ptr, i32 } [ %i.q, %bb.i ], [ %.pn69.pn83.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.m) #35
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn69.pn82 = phi { ptr, i32 } [ %.pn69.pn83, %bb.j ], [ %i.q, %bb.i ]
  %i.r = load ptr, ptr %6, align 8, !tbaa !111    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.u = load i64, ptr %i.s, align 8, !tbaa !56
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.ak

bb.l:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.x = load float, ptr %i.w, align 4, !tbaa !81
  %i.y = tail call noundef float @llvm.fabs.f32(float %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = load float, ptr %i.z, align 4, !tbaa !81
  %i.ab = fmul float %i.aa, f0x34000000           ; 2 uses
  %i.ac = fcmp ogt float %i.y, %i.ab
  br i1 %i.ac, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !81
  %i.af = tail call noundef float @llvm.fabs.f32(float %i.ae)
  %i.ag = fcmp ogt float %i.af, %i.ab
  br i1 %i.ag, label %bb.n, label %._crit_edge

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ah = tail call ptr @__cxa_allocate_exception(i64 24) #35 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull @.str.5)
          to label %bb.o unwind label %.thread87

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %bb.p unwind label %.thread91

bb.p:                                             ; preds = %bb.o
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx19NotImplementedErrorE, i64 16), ptr %10, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %12, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx8internal30AnalysisNeighborhoodSearchImpl4initENS_20AnalysisNeighborhood10SearchModeEbPKNS_11ListOfListsIiEEPK5t_pbcRKNS_29AnalysisNeighborhoodPositionsE, ptr %i.ai, align 8, !tbaa !112
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr @.str.4, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !112
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 895, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !47
  invoke void @_ZN3gmxlsINS_19NotImplementedErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::NotImplementedError") align 8 %i.ah, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr %i.ah, ptr nonnull @_ZTIN3gmx19NotImplementedErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #39
          to label %bb.al unwind label %bb.r

.thread87:                                        ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split119

.thread91:                                        ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #35
  br label %.sink.split119

bb.r:                                             ; preds = %bb.p, %bb.q
  %.044 = phi i1 [ false, %bb.q ], [ true, %bb.p ]
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #35
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br i1 %.044, label %bb.s, label %bb.ak

.sink.split119:                                   ; preds = %.thread87, %.thread91
  %.pn.pn90.ph = phi { ptr, i32 } [ %i.ak, %.thread91 ], [ %i.aj, %.thread87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.s

bb.s:                                             ; preds = %.sink.split119, %bb.r
  %.pn.pn90 = phi { ptr, i32 } [ %i.al, %bb.r ], [ %.pn.pn90.ph, %.sink.split119 ]
  call void @__cxa_free_exception(ptr %i.ah) #35
  br label %bb.ak

._crit_edge:                                      ; preds = %bb.d, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.an = load <4 x float>, ptr %i.am, align 4, !tbaa !81
  store <4 x float> %i.an, ptr %i.a, align 16, !tbaa !81
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aq = load <2 x float>, ptr %i.ao, align 4, !tbaa !81
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %13 = shufflevector <2 x float> %i.aq, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %13, ptr %i.ap, align 16, !tbaa !81
  store float 0.000000e+00, ptr %i.ar, align 16, !tbaa !81
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %i.as, i32 noundef 2, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.v

bb.t:                                             ; preds = %bb.c
  br i1 %i.h, label %.thread94, label %bb.u

.thread94:                                        ; preds = %bb.d, %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.at, ptr noundef nonnull align 4 dereferenceable(384) %4, i64 384, i1 false), !tbaa.struct !189
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.au, align 8, !tbaa !113
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.av, i8 0, i64 36, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %.thread94, %bb.u, %._crit_edge
  %i.aw = load i32, ptr %5, align 8, !tbaa !114   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !45
  %i.ay = icmp eq i32 %1, 1
  br i1 %i.ay, label %.thread117, label %bb.w

.thread117:                                       ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i8 0, ptr %i.az, align 8, !tbaa !93
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !115 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !116
  br label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.bd = load i8, ptr %0, align 8, !tbaa !41, !range !94, !noundef !91
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.x, label %._crit_edge108

._crit_edge108:                                   ; preds = %bb.w
  %.phi.trans.insert109 = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.pre110 = load i8, ptr %.phi.trans.insert109, align 8, !tbaa !93, !range !94
  %i.bf = trunc nuw i8 %.pre110 to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !115 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !116
  br i1 %i.bf, label %bb.y, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !190
  %i.bm = call noundef zeroext i1 @_ZN3gmx8internal30AnalysisNeighborhoodSearchImpl8initGridERK5t_pbciPA3_Kfb(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef nonnull align 4 dereferenceable(384) %i.bj, i32 noundef %i.aw, ptr noundef %i.bl, i1 zeroext poison) ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bo = zext i1 %i.bm to i8
  store i8 %i.bo, ptr %i.bn, align 8, !tbaa !93
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !115 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !116
  br i1 %i.bm, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %._crit_edge108, %bb.x
  %i.bs = phi ptr [ %i.bi, %._crit_edge108 ], [ %i.br, %bb.x ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.bu = load i32, ptr %i.ax, align 8, !tbaa !45
  %i.bv = sext i32 %i.bu to i64
  call void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 noundef %i.bv)
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !70
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !117
  %i.by = load i32, ptr %i.ax, align 8, !tbaa !45
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph98, label %.loopexit

.lr.ph98:                                         ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph98, %bb.ab
  %indvars.iv101 = phi i64 [ 0, %.lr.ph98 ], [ %indvars.iv.next102, %bb.ab ] ; 5 uses
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !116 ; 2 uses
  %.not66 = icmp eq ptr %i.cb, null
  %i.cc = trunc nuw nsw i64 %indvars.iv101 to i32
  br i1 %.not66, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv101
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !47
  %i.cf = sext i32 %i.ce to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %indvars.iv101, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  %i.ch = load ptr, ptr %i.ca, align 8, !tbaa !190
  %i.ci = getelementptr inbounds [12 x i8], ptr %i.ch, i64 %i.cg
  %i.cj = load ptr, ptr %i.bt, align 8, !tbaa !70
  %i.ck = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %indvars.iv101
  call void @_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl18mapPointToGridCellEPKfPfS4_(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef %i.ci, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ck)
  call void @_ZN3gmx8internal30AnalysisNeighborhoodSearchImpl13addToGridCellEPKfi(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef nonnull %i.b, i32 noundef %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.cl = load i32, ptr %i.ax, align 8, !tbaa !45
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next102, %i.cm
  br i1 %i.cn, label %bb.z, label %.loopexit, !llvm.loop !185

bb.ac:                                            ; preds = %._crit_edge108, %.thread117, %bb.x
  %i.co = phi ptr [ %i.bc, %.thread117 ], [ %i.br, %bb.x ], [ %i.bi, %._crit_edge108 ]
  %i.cp = phi ptr [ %i.bb, %.thread117 ], [ %i.bq, %bb.x ], [ %i.bh, %._crit_edge108 ]
  %.not63 = icmp eq ptr %i.cp, null
  br i1 %.not63, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.cr = load i32, ptr %i.ax, align 8, !tbaa !45
  %i.cs = sext i32 %i.cr to i64
  call void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 noundef %i.cs)
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !70 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !117
  %i.cv = load i32, ptr %i.ax, align 8, !tbaa !45 ; 3 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ad
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !190 ; 5 uses
  %i.cz = load ptr, ptr %i.co, align 8, !tbaa !116 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.cv to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.da = icmp ult i32 %i.cv, 4
  br i1 %i.da, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.ae ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.ae ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !47
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [12 x i8], ptr %i.cy, i64 %i.dd ; 3 uses
  %i.df = getelementptr inbounds nuw [12 x i8], ptr %i.ct, i64 %indvars.iv ; 3 uses
  %i.dg = load float, ptr %i.de, align 4, !tbaa !81
  store float %i.dg, ptr %i.df, align 4, !tbaa !81
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !81
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store float %i.di, ptr %i.dj, align 4, !tbaa !81
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !81
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store float %i.dl, ptr %i.dm, align 4, !tbaa !81
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !47
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [12 x i8], ptr %i.cy, i64 %i.dp ; 3 uses
  %i.dr = getelementptr inbounds nuw [12 x i8], ptr %i.ct, i64 %indvars.iv.next ; 3 uses
  %i.ds = load float, ptr %i.dq, align 4, !tbaa !81
  store float %i.ds, ptr %i.dr, align 4, !tbaa !81
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.du = load float, ptr %i.dt, align 4, !tbaa !81
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store float %i.du, ptr %i.dv, align 4, !tbaa !81
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !81
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store float %i.dx, ptr %i.dy, align 4, !tbaa !81
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.1
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !47
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [12 x i8], ptr %i.cy, i64 %i.eb ; 3 uses
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %i.ct, i64 %indvars.iv.next.1 ; 3 uses
  %i.ee = load float, ptr %i.ec, align 4, !tbaa !81
  store float %i.ee, ptr %i.ed, align 4, !tbaa !81
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !81
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store float %i.eg, ptr %i.eh, align 4, !tbaa !81
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !81
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store float %i.ej, ptr %i.ek, align 4, !tbaa !81
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.2
  %i.em = load i32, ptr %i.el, align 4, !tbaa !47
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [12 x i8], ptr %i.cy, i64 %i.en ; 3 uses
  %i.ep = getelementptr inbounds nuw [12 x i8], ptr %i.ct, i64 %indvars.iv.next.2 ; 3 uses
  %i.eq = load float, ptr %i.eo, align 4, !tbaa !81
  store float %i.eq, ptr %i.ep, align 4, !tbaa !81
end_hunk_0

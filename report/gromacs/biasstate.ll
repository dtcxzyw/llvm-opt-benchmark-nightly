inline.NumInlined: 2109
inline.NumDeleted: 970
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN3gmx9BiasState18initGridPointStateERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNS_10BiasParamsERKNS_15CorrelationGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:bb.a

bb.am:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i
  %i.dc = icmp eq i32 %i.ci, 1
  br i1 %i.dc, label %bb.an, label %bb.aw

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #33
  %i.dd = load ptr, ptr %7, align 8, !tbaa !69
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull @.str.49, ptr noundef %i.dd, i32 noundef 1)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.de = call ptr @__cxa_allocate_exception(i64 24) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #33
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %23, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.ap unwind label %.thread297.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(56) %23)
          to label %bb.aq unwind label %.thread302.i

bb.aq:                                            ; preds = %bb.ap
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %22, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #33
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %24, align 8, !tbaa !65
  %i.df = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL32readUserPmfAndTargetDistributionENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiPSt6vectorINS_10PointStateESaISG_EE, ptr %i.df, align 8, !tbaa !67
  %.sroa.4278.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr @.str.3, ptr %.sroa.4278.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.5279.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i32 1860, ptr %.sroa.5279.0..sroa_idx.i, align 8, !tbaa !54
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.de, ptr noundef nonnull align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr %i.de, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.de unwind label %bb.at

bb.as:                                            ; preds = %bb.an
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i

.thread297.i:                                     ; preds = %bb.ao
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split434.i

.thread302.i:                                     ; preds = %bb.ap
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %23) #33
  br label %.sink.split434.i

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.0119.i = phi i1 [ false, %bb.ar ], [ true, %bb.aq ]
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %24) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #33
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %23) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  br i1 %.0119.i, label %bb.au, label %bb.av

.sink.split434.i:                                 ; preds = %.thread302.i, %.thread297.i
  %.pn167.pn301.ph.i = phi { ptr, i32 } [ %i.di, %.thread302.i ], [ %i.dh, %.thread297.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  br label %bb.au

bb.au:                                            ; preds = %.sink.split434.i, %bb.at
  %.pn167.pn301.i = phi { ptr, i32 } [ %i.dj, %bb.at ], [ %.pn167.pn301.ph.i, %.sink.split434.i ]
  call void @__cxa_free_exception(ptr %i.de) #33
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn167.pn300.i = phi { ptr, i32 } [ %.pn167.pn301.i, %bb.au ], [ %i.dj, %bb.at ] ; 2 uses
  %i.dk = load ptr, ptr %21, align 8, !tbaa !69   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i: ; preds = %bb.av
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !72
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i, %bb.as
  %.pn167.pn.pn.i = phi { ptr, i32 } [ %i.dg, %bb.as ], [ %.pn167.pn300.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i ], [ %.pn167.pn300.i, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  br label %bb.da

bb.aw:                                            ; preds = %bb.am
  %i.dp = sdiv exact i64 %i.g, 40                 ; 3 uses
  %i.dq = trunc i64 %i.dp to i32                  ; 2 uses
  %i.dr = add i32 %i.dq, 2                        ; 3 uses
  %i.ds = icmp eq i32 %i.dr, %i.cg
  %.0126.v.i = select i1 %i.ds, i32 1, i32 4
  %.0126.i = add nsw i32 %.0126.v.i, %i.dq        ; 2 uses
  %i.dt = icmp sgt i32 %i.dr, %i.cg
  br i1 %i.dt, label %bb.ax, label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #33
  %i.du = load ptr, ptr %7, align 8, !tbaa !69
  %i.dv = load ptr, ptr %12, align 8, !tbaa !69
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull @.str.50, ptr noundef %i.du, i32 noundef %i.dr, ptr noundef %i.dv)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.dw = call ptr @__cxa_allocate_exception(i64 24) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #33
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.az unwind label %.thread305.i

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(56) %27)
          to label %bb.ba unwind label %.thread310.i

bb.ba:                                            ; preds = %bb.az
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %26, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #33
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %28, align 8, !tbaa !65
  %i.dx = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL32readUserPmfAndTargetDistributionENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiPSt6vectorINS_10PointStateESaISG_EE, ptr %i.dx, align 8, !tbaa !67
  %.sroa.4274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr @.str.3, ptr %.sroa.4274.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.5275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %28, i64 24
  store i32 1890, ptr %.sroa.5275.0..sroa_idx.i, align 8, !tbaa !54
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.dw, ptr noundef nonnull align 8 %26, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  invoke void @__cxa_throw(ptr %i.dw, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.de unwind label %bb.bd

bb.bc:                                            ; preds = %bb.ax
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i

.thread305.i:                                     ; preds = %bb.ay
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split435.i

.thread310.i:                                     ; preds = %bb.az
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %27) #33
  br label %.sink.split435.i

bb.bd:                                            ; preds = %bb.bb, %bb.ba
  %.0127.i = phi i1 [ false, %bb.bb ], [ true, %bb.ba ]
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %28) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #33
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #33
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %27) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  br i1 %.0127.i, label %bb.be, label %bb.bf

.sink.split435.i:                                 ; preds = %.thread310.i, %.thread305.i
  %.pn162.pn309.ph.i = phi { ptr, i32 } [ %i.ea, %.thread310.i ], [ %i.dz, %.thread305.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  br label %bb.be

bb.be:                                            ; preds = %.sink.split435.i, %bb.bd
  %.pn162.pn309.i = phi { ptr, i32 } [ %i.eb, %bb.bd ], [ %.pn162.pn309.ph.i, %.sink.split435.i ]
  call void @__cxa_free_exception(ptr %i.dw) #33
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn162.pn308.i = phi { ptr, i32 } [ %.pn162.pn309.i, %bb.be ], [ %i.eb, %bb.bd ] ; 2 uses
  %i.ec = load ptr, ptr %25, align 8, !tbaa !69   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201.i: ; preds = %bb.bf
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !72
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201.i, %bb.bc
  %.pn162.pn.pn.i = phi { ptr, i32 } [ %i.dy, %bb.bc ], [ %.pn162.pn308.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201.i ], [ %.pn162.pn308.i, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  br label %bb.da

bb.bg:                                            ; preds = %bb.aw
  %.sroa.7270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 56
  %.sroa.7270.0.copyload.i = load ptr, ptr %.sroa.7270.0..sroa_idx.i, align 8, !tbaa !113 ; 3 uses
  %i.eh = load ptr, ptr %15, align 8, !tbaa !110, !noalias !442
  %.not.not21.i.i = icmp sgt i32 %i.cg, 0
  br i1 %.not.not21.i.i, label %.preheader.us.preheader.i.i, label %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.thread.i

.preheader.us.preheader.i.i:                      ; preds = %bb.bg
  %storemerge23.i.i = add i64 %i.ch, 4294967295
  %i.ei = and i64 %storemerge23.i.i, 4294967295
  %wide.trip.count.i.i = and i64 %i.ce, 2147483647
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %indvars.iv32.in.i.i = phi i64 [ %i.ei, %.preheader.us.preheader.i.i ], [ %indvars.iv.next33.i.i, %._crit_edge.us.i.i ] ; 2 uses
  %.01224.us.i.i = phi i32 [ 0, %.preheader.us.preheader.i.i ], [ %i.em, %._crit_edge.us.i.i ] ; 2 uses
  %invariant.gep.us.i.i = getelementptr [8 x i8], ptr %i.eh, i64 %indvars.iv32.in.i.i
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bi
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.bi, !llvm.loop !445

bb.bi:                                            ; preds = %bb.bh, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.bh ] ; 2 uses
  %i.ej = mul nsw i64 %indvars.iv.i.i, %i.ch
  %gep.us.i.i = getelementptr [8 x i8], ptr %invariant.gep.us.i.i, i64 %i.ej
  %i.ek = load double, ptr %gep.us.i.i, align 8, !tbaa !58
  %i.el = fcmp une double %i.ek, 0.000000e+00
  br i1 %i.el, label %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.i, label %bb.bh

._crit_edge.us.i.i:                               ; preds = %bb.bh
  %i.em = add nuw nsw i32 %.01224.us.i.i, 1       ; 2 uses
  %indvars.iv.next33.i.i = add nsw i64 %indvars.iv32.in.i.i, -1
  %exitcond35.not.i.i = icmp eq i32 %i.em, %i.ci
  br i1 %exitcond35.not.i.i, label %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.i, label %.preheader.us.i.i, !llvm.loop !446

_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.i: ; preds = %._crit_edge.us.i.i, %bb.bi
  %.01220.i.i = phi i32 [ %.01224.us.i.i, %bb.bi ], [ %i.ci, %._crit_edge.us.i.i ] ; 2 uses
  %i.en = icmp sgt i32 %.01220.i.i, 1
  br i1 %i.en, label %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.thread.i, label %.preheader347.i

.preheader347.i:                                  ; preds = %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.i
  %.not362.i = icmp eq ptr %3, %2
  br i1 %.not362.i, label %._crit_edge.i, label %.lr.ph357.i

.lr.ph357.i:                                      ; preds = %.preheader347.i
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.bt

_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.thread.i: ; preds = %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.i, %bb.bg
  %.01220.i314.i = phi i32 [ %.01220.i.i, %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.i ], [ %i.ci, %bb.bg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #33
  %i.ep = load ptr, ptr %7, align 8, !tbaa !69
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull @.str.51, i32 noundef %.01220.i314.i, ptr noundef %i.ep)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.thread.i
  %i.eq = call ptr @__cxa_allocate_exception(i64 24) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #33
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %31, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.bk unwind label %.thread315.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(56) %31)
          to label %bb.bl unwind label %.thread320.i

bb.bl:                                            ; preds = %bb.bk
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %30, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #33
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %32, align 8, !tbaa !65
  %i.er = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL32readUserPmfAndTargetDistributionENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiPSt6vectorINS_10PointStateESaISG_EE, ptr %i.er, align 8, !tbaa !67
  %.sroa.4263.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr @.str.3, ptr %.sroa.4263.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.5264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %32, i64 24
  store i32 1905, ptr %.sroa.5264.0..sroa_idx.i, align 8, !tbaa !54
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.eq, ptr noundef nonnull align 8 %30, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  invoke void @__cxa_throw(ptr %i.eq, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.de unwind label %bb.bo

bb.bn:                                            ; preds = %_ZN3gmxL21countTrailingZeroRowsERKNS_13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEii.exit.thread.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i

.thread315.i:                                     ; preds = %bb.bj
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split436.i

.thread320.i:                                     ; preds = %bb.bk
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %31) #33
  br label %.sink.split436.i

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %.0123.i = phi i1 [ false, %bb.bm ], [ true, %bb.bl ]
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %32) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #33
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %30) #33
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %31) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  br i1 %.0123.i, label %bb.bp, label %bb.bq

.sink.split436.i:                                 ; preds = %.thread320.i, %.thread315.i
  %.pn157.pn319.ph.i = phi { ptr, i32 } [ %i.eu, %.thread320.i ], [ %i.et, %.thread315.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split436.i, %bb.bo
  %.pn157.pn319.i = phi { ptr, i32 } [ %i.ev, %bb.bo ], [ %.pn157.pn319.ph.i, %.sink.split436.i ]
  call void @__cxa_free_exception(ptr %i.eq) #33
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn157.pn318.i = phi { ptr, i32 } [ %.pn157.pn319.i, %bb.bp ], [ %i.ev, %bb.bo ] ; 2 uses
  %i.ew = load ptr, ptr %29, align 8, !tbaa !69   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i: ; preds = %bb.bq
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !72
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i, %bb.bn
  %.pn157.pn.pn.i = phi { ptr, i32 } [ %i.es, %bb.bn ], [ %.pn157.pn318.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i ], [ %.pn157.pn318.i, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #33
  br label %bb.da

._crit_edge.i:                                    ; preds = %.loopexit.i, %.preheader347.i
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #33
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !35 ; 2 uses
  %i.fd = load ptr, ptr %4, align 8, !tbaa !38    ; 2 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = sdiv exact i64 %i.fg, 72                ; 4 uses
  %i.fi = icmp ugt i64 %i.fh, 2305843009213693951
  br i1 %i.fi, label %bb.br, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.br:                                            ; preds = %._crit_edge.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #30
          to label %.noexc211.i unwind label %bb.bv

.noexc211.i:                                      ; preds = %bb.br
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge.i
  %.not.i.i.i.i.i = icmp eq ptr %i.fc, %i.fd
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i.i, label %bb.bs

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  br label %bb.bu

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.fj = shl nuw nsw i64 %i.fh, 2
  %i.fk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fj) #31
          to label %.noexc212.i unwind label %bb.bv ; 4 uses

.noexc212.i:                                      ; preds = %bb.bs
  store ptr %i.fk, ptr %33, align 8, !tbaa !178
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fh
  %i.fm = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !276
  store i32 0, ptr %i.fk, align 4, !tbaa !54
  %i.fn = getelementptr i8, ptr %i.fk, i64 4      ; 3 uses
  %i.fo = add nsw i64 %i.fh, -1                   ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %bb.bu, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc212.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fo, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.fn, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !54
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx.i.i.i.i.i.i.i.i
  br label %bb.bu

bb.bt:                                            ; preds = %.loopexit.i, %.lr.ph357.i
  %.0122355.i = phi i64 [ 0, %.lr.ph357.i ], [ %i.gu, %.loopexit.i ] ; 3 uses
  %i.fr = getelementptr inbounds [40 x i8], ptr %2, i64 %.0122355.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !447 ; 4 uses
  %i.fu = fcmp oeq double %i.ft, 1.000000e+00
  br i1 %i.fu, label %.loopexit.i, label %.preheader346.i

.preheader346.i:                                  ; preds = %bb.bt
  %i.fv = load ptr, ptr %i.eo, align 8, !tbaa !9  ; 2 uses
  %i.fw = load ptr, ptr %i.k, align 8, !tbaa !13  ; 2 uses
  %.not363.i = icmp eq ptr %i.fv, %i.fw
  br i1 %.not363.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %.preheader346.i
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = sdiv exact i64 %i.fz, 96                ; 8 uses
  %i.gb = mul i64 %.0122355.i, %i.ch
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7270.0.copyload.i, i64 %i.gb ; 3 uses
  %min.iters.check = icmp ult i64 %i.ga, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check133 = icmp ult i64 %i.ga, 16
  br i1 %min.iters.check133, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gd = and i64 %i.ga, 12
  %n.vec = and i64 %i.ga, -16                     ; 4 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ft, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %index ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 64 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 96 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.ge, align 8, !tbaa !58
  %wide.load134 = load <4 x double>, ptr %i.gf, align 8, !tbaa !58
  %wide.load135 = load <4 x double>, ptr %i.gg, align 8, !tbaa !58
  %wide.load136 = load <4 x double>, ptr %i.gh, align 8, !tbaa !58
  %i.gi = fmul <4 x double> %broadcast.splat, %wide.load
end_hunk_0

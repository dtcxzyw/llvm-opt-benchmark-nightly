inline.NumInlined: 519
inline.NumDeleted: 257
begin_hunk_0_@_ZN4geos9geomgraph20EdgeIntersectionList15createSplitEdgeEPKNS0_16EdgeIntersectionES4_:bb.a
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit89

.loopexit.split-lp:                               ; preds = %.invoke142
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit89

bb.i:                                             ; preds = %.lr.ph
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 104
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !42 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i64 noundef %.0108)
          to label %bb.j unwind label %.loopexit  ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not.i53 = icmp eq ptr %i.aw, %i.at
  br i1 %.not.i53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !tbaa.struct !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  store ptr %i.bx, ptr %i.aj, align 8, !tbaa !58
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit52

bb.l:                                             ; preds = %bb.j
  %i.by = ptrtoint ptr %i.at to i64
  %i.bz = ptrtoint ptr %i.au to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %.invoke142, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i54

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i54: ; preds = %bb.l
  %i.cc = sdiv exact i64 %i.ca, 24                ; 3 uses
  %.sroa.speculated.i.i.i55 = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i55, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 384307168202282325)
  %i.cg = select i1 %i.ce, i64 384307168202282325, i64 %i.cf ; 3 uses
  %.not.i.i.i56 = icmp ne i64 %i.cg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i56)
  %i.ch = mul nuw nsw i64 %i.cg, 24
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #16
          to label %.noexc67 unwind label %.loopexit ; 6 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i54
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ca
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !tbaa.struct !19
  %.not10.i.i.i.i.i.i57 = icmp eq ptr %i.au, %i.at
  br i1 %.not10.i.i.i.i.i.i57, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i62, label %.lr.ph.i.i.i.i.i.i58

.lr.ph.i.i.i.i.i.i58:                             ; preds = %.noexc67, %.lr.ph.i.i.i.i.i.i58
  %.012.i.i.i.i.i.i59 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i58 ], [ %i.ci, %.noexc67 ] ; 2 uses
  %.0911.i.i.i.i.i.i60 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i58 ], [ %i.au, %.noexc67 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i59, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i60, i64 24, i1 false), !tbaa.struct !19, !alias.scope !65
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i60, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i59, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i61 = icmp eq ptr %i.ck, %i.at
  br i1 %.not.i.i.i.i.i.i61, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i62, label %.lr.ph.i.i.i.i.i.i58, !llvm.loop !64

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i62: ; preds = %.lr.ph.i.i.i.i.i.i58, %.noexc67
  %.0.lcssa.i.i.i.i.i.i63 = phi ptr [ %i.ci, %.noexc67 ], [ %i.cl, %.lr.ph.i.i.i.i.i.i58 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i63, i64 24 ; 2 uses
  %.not.i23.i.i64 = icmp eq ptr %i.au, null
  br i1 %.not.i23.i.i64, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i65, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i62
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #17
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i65

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i65: ; preds = %bb.m, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i62
  store ptr %i.ci, ptr %3, align 8, !tbaa !55
  store ptr %i.cm, ptr %i.aj, align 8, !tbaa !58
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.cg ; 3 uses
  store ptr %i.cn, ptr %i.aa, align 8, !tbaa !59
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit52

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit52: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i65, %bb.k, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i49, %bb.f
  %i.co = phi ptr [ %i.cn, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i65 ], [ %i.at, %bb.k ], [ %i.bp, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i49 ], [ %i.at, %bb.f ] ; 2 uses
  %i.cp = phi ptr [ %i.ci, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i65 ], [ %i.au, %bb.k ], [ %i.bk, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i49 ], [ %i.au, %bb.f ] ; 2 uses
  %i.cq = phi ptr [ %i.cn, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i65 ], [ %i.at, %bb.k ], [ %i.bp, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i49 ], [ %i.av, %bb.f ]
  %i.cr = phi ptr [ %i.cm, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i65 ], [ %i.bx, %bb.k ], [ %i.bo, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i49 ], [ %i.az, %bb.f ] ; 2 uses
  %.0 = add i64 %.0108, 1                         ; 2 uses
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %.not = icmp ugt i64 %.0, %i.cs
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !69

bb.n:                                             ; preds = %._crit_edge
  %.not.i69 = icmp eq ptr %i.ar, %i.aq
  br i1 %.not.i69, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !19
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.ct, ptr %i.aj, align 8, !tbaa !58
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit84

bb.p:                                             ; preds = %bb.n
  %i.cu = ptrtoint ptr %i.aq to i64
  %i.cv = ptrtoint ptr %i.ap to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 3 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.cx, label %.invoke, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i70

.invoke:                                          ; preds = %.thread, %bb.p
  %i.cy = phi ptr [ @.str.3, %bb.p ], [ @.str.4, %.thread ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.cy) #18
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i70: ; preds = %bb.p
  %i.cz = sdiv exact i64 %i.cw, 24                ; 3 uses
  %.sroa.speculated.i.i.i71 = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i71, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.da, i64 384307168202282325)
  %i.dd = select i1 %i.db, i64 384307168202282325, i64 %i.dc ; 3 uses
  %.not.i.i.i72 = icmp ne i64 %i.dd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i72)
  %i.de = mul nuw nsw i64 %i.dd, 24
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #16
          to label %.noexc83 unwind label %bb.d   ; 5 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i70
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !19
  %.not10.i.i.i.i.i.i73 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not10.i.i.i.i.i.i73, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i78, label %.lr.ph.i.i.i.i.i.i74

.lr.ph.i.i.i.i.i.i74:                             ; preds = %.noexc83, %.lr.ph.i.i.i.i.i.i74
  %.012.i.i.i.i.i.i75 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i74 ], [ %i.df, %.noexc83 ] ; 2 uses
  %.0911.i.i.i.i.i.i76 = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i74 ], [ %i.ap, %.noexc83 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i75, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i76, i64 24, i1 false), !tbaa.struct !19, !alias.scope !70
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i76, i64 24 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i75, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i77 = icmp eq ptr %i.dh, %i.aq
  br i1 %.not.i.i.i.i.i.i77, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i78, label %.lr.ph.i.i.i.i.i.i74, !llvm.loop !64

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i78: ; preds = %.lr.ph.i.i.i.i.i.i74, %.noexc83
  %.0.lcssa.i.i.i.i.i.i79 = phi ptr [ %i.df, %.noexc83 ], [ %i.di, %.lr.ph.i.i.i.i.i.i74 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i79, i64 24
  %.not.i23.i.i80 = icmp eq ptr %i.ap, null
  br i1 %.not.i23.i.i80, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i81, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i78
  tail call void @_ZdlPv(ptr noundef nonnull %i.ap) #17
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i81

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i81: ; preds = %bb.q, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i78
  store ptr %i.df, ptr %3, align 8, !tbaa !55
  store ptr %i.dj, ptr %i.aj, align 8, !tbaa !58
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.dd
  store ptr %i.dk, ptr %i.aa, align 8, !tbaa !59
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit84

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit84: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i81, %bb.o, %._crit_edge
  %i.dl = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16
          to label %bb.r unwind label %bb.v       ; 5 uses

bb.r:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit84
  invoke void @_ZN4geos4geom23CoordinateArraySequenceC1EOSt6vectorINS0_10CoordinateESaIS3_EEm(ptr noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.dm = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #16
          to label %bb.t unwind label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i88 ; 3 uses

bb.t:                                             ; preds = %bb.s
  %i.dn = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  invoke void @_ZN4geos9geomgraph4EdgeC1EPNS_4geom18CoordinateSequenceERKNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(152) %i.dm, ptr noundef nonnull %i.dl, ptr noundef nonnull align 1 dereferenceable(8) %i.do)
          to label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit unwind label %.thread95

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.t
  %i.dp = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %.not.i.i.i86 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.dp) #17
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %i.dm

bb.v:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit84
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit89

bb.w:                                             ; preds = %bb.r
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit89.sink.split

.thread95:                                        ; preds = %bb.t
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit89.sink.split

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i88: ; preds = %bb.s
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !40
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dl) #19, !inline_history !74
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit89

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit89.sink.split: ; preds = %.thread95, %bb.w
  %.sink = phi ptr [ %i.dl, %bb.w ], [ %i.dm, %.thread95 ]
  %.pn31.ph = phi { ptr, i32 } [ %i.dr, %bb.w ], [ %i.ds, %.thread95 ]
  call void @_ZdlPv(ptr noundef nonnull %.sink) #17
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit89

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit89: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit89.sink.split, %.loopexit, %.loopexit.split-lp, %bb.v, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i88, %bb.d
  %.pn31 = phi { ptr, i32 } [ %i.dt, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i88 ], [ %i.as, %bb.d ], [ %i.dq, %bb.v ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn31.ph, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit89.sink.split ]
  %i.dx = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit91, label %bb.x

bb.x:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit89
  call void @_ZdlPv(ptr noundef nonnull %i.dx) #17
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit91

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit91: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit89, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn31
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

declare void @_ZN4geos4geom23CoordinateArraySequenceC1EOSt6vectorINS0_10CoordinateESaIS3_EEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

declare void @_ZN4geos9geomgraph4EdgeC1EPNS_4geom18CoordinateSequenceERKNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef, ptr noundef nonnull align 1 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos9geomgraph20EdgeIntersectionList5printB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos9geomgraphlsERSoRKNS0_20EdgeIntersectionListE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !81, !alias.scope !84
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !85, !alias.scope !84
  store i8 0, ptr %i.c, align 8, !tbaa !87, !alias.scope !84
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88, !noalias !84 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !84 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92, !noalias !84 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !93, !alias.scope !84 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.q) #17
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.t = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !40
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.v = getelementptr i8, ptr %i.t, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %2, i64 %i.w
  store ptr %i.u, ptr %i.x, align 8, !tbaa !40
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.y, ptr %i.a, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.z, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !93 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.ab) #17
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.z, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ae) #19
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.af, ptr %2, align 8, !tbaa !40
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !94
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.al) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.f:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos9geomgraphlsERSoRKNS0_20EdgeIntersectionListE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 14) ; 0 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !40
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !96   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #18
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !109
  %.not.i1.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.k = load i8, ptr %i.j, align 1, !tbaa !87
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.g)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.g, i8 noundef signext 10), !inline_history !115
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 0 uses
  %i.r = tail call ptr @_ZNK4geos9geomgraph20EdgeIntersectionList5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17   ; 2 uses
  %.not15 = icmp eq ptr %i.r, %i.t
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret ptr %0

.lr.ph:                                           ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11
  %.sroa.012.016 = phi ptr [ %i.at, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11 ], [ %i.r, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ] ; 4 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.012.016) ; 2 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.1, i64 noundef 9) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef %i.x) ; 2 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.2, i64 noundef 8) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !22
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, double noundef %i.ab) ; 0 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !40
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !96 ; 6 uses
end_hunk_0

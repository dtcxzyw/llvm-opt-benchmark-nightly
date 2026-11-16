Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGLTFMeshFileLoader?download=true
inline.NumInlined: 12819
inline.NumDeleted: 6981
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE4makeERKN10tiniergltf4GlTFEm:bb.a
_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit78: ; preds = %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.ec) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit80

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit80: ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit78, %bb.ag, %bb.ad
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fx, %bb.ag ], [ %i.fy, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit78 ], [ %.pn, %bb.ad ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !450
  %.not.i.i81 = icmp eq i8 %i.ga, -1
  br i1 %.not.i.i81, label %bb.ai, label %bb.ah, !prof !318

bb.ah:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit80
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !60
  %i.gd = icmp ne i8 %i.gc, 1
  %i.ge = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i82 = icmp eq ptr %i.ge, null
  %or.cond.i.i.i83 = select i1 %i.gd, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i82
  br i1 %or.cond.i.i.i83, label %bb.ai, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i84

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i84: ; preds = %bb.ah
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !176
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.ge to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gj) #31
  br label %bb.ai

bb.ai:                                            ; preds = %bb.u, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit80, %bb.ah, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i84
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eo, %bb.u ], [ %.pn.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit80 ], [ %.pn.pn.pn, %bb.ah ], [ %.pn.pn.pn, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i84 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i86 = icmp eq ptr %.sroa.0158.0228, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit87, label %bb.aj

bb.aj:                                            ; preds = %.thread230, %bb.ai
  %.pn41237 = phi { ptr, i32 } [ %i.bt, %.thread230 ], [ %.pn.pn.pn.pn, %bb.ai ]
  %.sroa.15.0223236 = phi i64 [ %i.bd, %.thread230 ], [ %.sroa.15.0222, %bb.ai ]
  %.sroa.0158.0227235 = phi ptr [ %i.z, %.thread230 ], [ %.sroa.0158.0228, %bb.ai ] ; 2 uses
  %i.gk = ptrtoint ptr %.sroa.0158.0227235 to i64
  %i.gl = sub i64 %.sroa.15.0223236, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0158.0227235, i64 noundef %i.gl) #31
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit87

bb.ak:                                            ; preds = %bb.g
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.gm, align 8, !tbaa !425
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.go = load i8, ptr %i.gn, align 8, !tbaa !425 ; 2 uses
  switch i8 %i.go, label %bb.ao [
    i8 0, label %bb.al
    i8 1, label %bb.am
    i8 2, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEEC2ERKS5_.exit
  ]

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 16, i1 false), !tbaa.struct !381
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEEC2ERKS5_.exit

bb.am:                                            ; preds = %bb.ak
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !954 ; 3 uses
  %i.gr = load ptr, ptr %3, align 8, !tbaa !428   ; 3 uses
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sub i64 %i.gs, %i.gt                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gq, %i.gr
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gv = icmp ugt i64 %i.gu, 9223372036854775744
  br i1 %i.gv, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.an
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.ap

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.an
  %i.gw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #32
          to label %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge unwind label %bb.ap

_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !955
  %.pre190 = load ptr, ptr %i.gp, align 8, !tbaa !955
  br label %.noexc4.i.i.i.i.i.i.i

.noexc4.i.i.i.i.i.i.i:                            ; preds = %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge, %bb.am
  %i.gx = phi ptr [ %i.gq, %bb.am ], [ %.pre190, %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ] ; 2 uses
  %i.gy = phi ptr [ %i.gr, %bb.am ], [ %.pre, %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ] ; 2 uses
  %i.gz = phi ptr [ null, %bb.am ], [ %i.gw, %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ] ; 4 uses
  store ptr %i.gz, ptr %0, align 8, !tbaa !428
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gu
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !429
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gy, %i.gx
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorISA_SaISA_EESt5tupleIJEEEEC1ERKSI_EUlOT_T0_E_RKSt7variantIJSC_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_ST_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc4.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.he, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gz, %.noexc4.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gy, %.noexc4.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.013.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !290
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hd, %i.gx
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorISA_SaISA_EESt5tupleIJEEEEC1ERKSI_EUlOT_T0_E_RKSt7variantIJSC_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_ST_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !948

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorISA_SaISA_EESt5tupleIJEEEEC1ERKSI_EUlOT_T0_E_RKSt7variantIJSC_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_ST_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc4.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gz, %.noexc4.i.i.i.i.i.i.i ], [ %i.he, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ha, align 8, !tbaa !954
  %.pre191 = load i8, ptr %i.gn, align 8, !tbaa !425
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEEC2ERKS5_.exit

bb.ao:                                            ; preds = %bb.ak
  unreachable

bb.ap:                                            ; preds = %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorIS7_SaIS7_EESt5tupleIJEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(40) %0) #30
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit87

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEEC2ERKS5_.exit: ; preds = %bb.ak, %bb.al, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorISA_SaISA_EESt5tupleIJEEEEC1ERKSI_EUlOT_T0_E_RKSt7variantIJSC_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_ST_.exit.i.i.i.i.i.i.i.i.i
  %i.hg = phi i8 [ %i.go, %bb.ak ], [ 0, %bb.al ], [ %.pre191, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorISA_SaISA_EESt5tupleIJEEEEC1ERKSI_EUlOT_T0_E_RKSt7variantIJSC_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_ST_.exit.i.i.i.i.i.i.i.i.i ]
  store i8 %i.hg, ptr %i.gm, align 8, !tbaa !425
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !424
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !424
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit76

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit76: ; preds = %bb.af, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEEC2ERKS5_.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !425
  %i.hm = icmp eq i8 %i.hl, 1
  br i1 %i.hm, label %bb.aq, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit89

bb.aq:                                            ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit76
  %i.hn = load ptr, ptr %3, align 8, !tbaa !428   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i88 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i88, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit89, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !429
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.hn to i64
  %i.hs = sub i64 %i.hq, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hs) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit89

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit89: ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit76, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit87: ; preds = %bb.ap, %bb.j, %bb.ai, %bb.aj
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn41237, %bb.aj ], [ %i.bk, %bb.j ], [ %.pn.pn.pn.pn, %bb.ai ], [ %i.hf, %bb.ap ]
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !425
  %i.hv = icmp eq i8 %i.hu, 1
  br i1 %i.hv, label %bb.as, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit91

bb.as:                                            ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit87
  %i.hw = load ptr, ptr %3, align 8, !tbaa !428   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i90 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i90, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit91, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !429
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hw to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef %i.ib) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit91

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit91: ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit87, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.au

bb.au:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit91, %bb.f
  %.pn45 = phi { ptr, i32 } [ %i.q, %bb.f ], [ %.pn41.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit91 ]
  resume { ptr, i32 } %.pn45

bb.av:                                            ; preds = %bb.z
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL17convertHandednessIN4core8CMatrix4IfEEET_RKS3_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  %2 = load <2 x float>, ptr %i.b, align 4, !tbaa !412, !noalias !960 ; 3 uses
  %3 = load <2 x float>, ptr %i.e, align 4, !tbaa !412, !noalias !960 ; 3 uses
  %4 = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %5 = fmul <4 x float> %4, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 3 uses
  %6 = extractelement <4 x float> %5, i64 2
  %7 = extractelement <2 x float> %2, i64 0
  %8 = fadd float %7, %6
  %9 = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %10 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %9, <4 x float> zeroinitializer, <4 x float> %5) ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.l = load <2 x float>, ptr %1, align 4, !tbaa !412, !noalias !960 ; 3 uses
  %11 = fmul <2 x float> %i.l, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %13 = load <2 x float>, ptr %i.a, align 4, !tbaa !412, !noalias !960 ; 4 uses
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> <float 1.000000e+00, float 0.000000e+00>, <2 x float> %i.l)
  %15 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> zeroinitializer, <2 x float> %14)
  %i.m = load <2 x float>, ptr %i.c, align 4, !tbaa !412, !noalias !960 ; 4 uses
  %i.n = load float, ptr %i.d, align 4, !tbaa !412, !noalias !960
  %17 = extractelement <2 x float> %i.m, i64 0
  %18 = extractelement <4 x float> %10, i64 2
  %19 = fsub float %18, %17
  %20 = shufflevector <2 x float> %i.m, <2 x float> %i.l, <4 x i32> <i32 0, i32 0, i32 poison, i32 2>
  %21 = insertelement <4 x float> %20, float -0.000000e+00, i64 2
  %22 = insertelement <4 x float> poison, float %8, i64 0
  %23 = shufflevector <4 x float> %22, <4 x float> %10, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %24 = insertelement <4 x float> %23, float %19, i64 2
  %25 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %26 = shufflevector <4 x float> %24, <4 x float> %25, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %27 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %21, <4 x float> zeroinitializer, <4 x float> %26) ; 2 uses
  %28 = extractelement <4 x float> %27, i64 3
  %29 = extractelement <2 x float> %13, i64 0
  %30 = fsub float %28, %29
  %31 = shufflevector <2 x float> %i.m, <2 x float> %13, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %32 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %31, <4 x float> zeroinitializer, <4 x float> %27) ; 3 uses
  %33 = load <2 x float>, ptr %i.f, align 4, !tbaa !412, !noalias !960 ; 4 uses
  %34 = load float, ptr %i.g, align 4, !tbaa !412, !noalias !960
  %35 = extractelement <2 x float> %33, i64 0
  %36 = extractelement <4 x float> %10, i64 3
  %37 = fsub float %36, %35
  %i.o = load <2 x float>, ptr %i.h, align 4, !tbaa !412, !noalias !960 ; 3 uses
  %i.p = load float, ptr %i.i, align 4, !tbaa !412, !noalias !960
  %38 = fmul float %i.p, 0.000000e+00             ; 2 uses
  %39 = shufflevector <2 x float> %3, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %40 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %41 = insertelement <2 x float> %40, float %38, i64 1
  %42 = fadd <2 x float> %39, %41                 ; 2 uses
  %43 = shufflevector <2 x float> %i.m, <2 x float> %33, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %44 = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %45 = shufflevector <4 x float> %44, <4 x float> %43, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %46 = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %47 = shufflevector <4 x float> %10, <4 x float> %46, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %48 = insertelement <4 x float> %47, float %38, i64 1
  %49 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %45, <4 x float> zeroinitializer, <4 x float> %48) ; 4 uses
  %i.q = extractelement <4 x float> %49, i64 2
  %50 = fadd float %i.n, %i.q                     ; 2 uses
  %51 = extractelement <4 x float> %49, i64 3
  %i.r = fadd float %34, %51                      ; 2 uses
  %i.s = shufflevector <2 x float> %33, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.t = shufflevector <4 x float> %i.s, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.u = shufflevector <2 x float> %42, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.v = shufflevector <4 x float> %i.u, <4 x float> %10, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.w = insertelement <4 x float> %i.v, float %37, i64 2
  %i.x = insertelement <4 x float> %i.w, float %i.r, i64 3
  %i.y = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> zeroinitializer, <4 x float> %i.x)
  %i.z = shufflevector <2 x float> %33, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> zeroinitializer, <4 x float> %i.y) ; 2 uses
  %i.ab = load <2 x float>, ptr %i.j, align 4, !tbaa !412, !noalias !960 ; 3 uses
  %i.ac = load float, ptr %i.k, align 4, !tbaa !412, !noalias !960
  %52 = extractelement <2 x float> %i.ab, i64 0   ; 2 uses
  %i.ad = extractelement <4 x float> %49, i64 1   ; 2 uses
  %i.ae = fsub float %i.ad, %52
  %i.af = tail call float @llvm.fmuladd.f32(float %52, float 0.000000e+00, float %i.ad)
  %i.ag = fadd float %i.ac, %i.af                 ; 2 uses
  %i.ah = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aj = shufflevector <2 x float> %42, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %53 = shufflevector <4 x float> %i.aj, <4 x float> %49, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ak = insertelement <4 x float> %53, float %i.ae, i64 2
  %i.al = insertelement <4 x float> %i.ak, float %i.ag, i64 3
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> zeroinitializer, <4 x float> %i.al)
  %i.an = shufflevector <2 x float> %i.ab, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> zeroinitializer, <4 x float> %i.am) ; 2 uses
  %i.ap = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1> ; 2 uses
  %i.ar = fmul <4 x float> %i.aq, %32
  %i.as = fadd <4 x float> %i.aq, %32             ; 2 uses
  %i.at = shufflevector <4 x float> %i.ar, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %54 = fmul float %50, 0.000000e+00              ; 2 uses
  %55 = shufflevector <4 x float> %i.ap, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %56 = insertelement <4 x float> poison, float %30, i64 2
  %57 = insertelement <4 x float> %56, float %54, i64 3
  %58 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %59 = shufflevector <4 x float> %58, <4 x float> %57, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %55, <4 x float> zeroinitializer, <4 x float> %59) ; 2 uses
  %i.av = fadd <4 x float> %i.at, %i.au
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> zeroinitializer, <4 x float> %i.av)
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> zeroinitializer, <4 x float> %i.aw)
  store <4 x float> %i.ax, ptr %0, align 4, !tbaa !412, !alias.scope !961
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = shufflevector <4 x float> %i.au, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ba = insertelement <4 x float> %32, float %50, i64 3
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> zeroinitializer, <4 x float> %i.ba)
  %i.bc = insertelement <4 x float> %i.aa, float %i.r, i64 3 ; 3 uses
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> zeroinitializer, <4 x float> %i.bb)
  %i.be = insertelement <4 x float> %i.ao, float %i.ag, i64 3 ; 3 uses
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> zeroinitializer, <4 x float> %i.bd)
  store <4 x float> %i.bf, ptr %i.ay, align 4, !tbaa !412, !alias.scope !961
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %60 = insertelement <4 x float> %i.at, float %54, i64 3
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> zeroinitializer, <4 x float> %60) ; 2 uses
  %i.bi = fsub <4 x float> %i.bh, %i.bc
  %i.bj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> zeroinitializer, <4 x float> %i.bi)
  store <4 x float> %i.bj, ptr %i.bg, align 4, !tbaa !412, !alias.scope !961
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> zeroinitializer, <4 x float> %i.bh)
  %i.bm = fadd <4 x float> %i.bl, %i.be
  store <4 x float> %i.bm, ptr %i.bk, align 4, !tbaa !412, !alias.scope !961
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene19CGLTFMeshFileLoader13MeshExtractor13loadAnimationEm(ptr noundef nonnull align 8 dereferenceable(784) %0, i64 noundef %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.582", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.605", align 8 ; 11 uses
  %6 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.628", align 8 ; 11 uses
  %7 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.605", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !188  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 88                  ; 2 uses
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNKSt6vectorIN10tiniergltf9AnimationESaIS1_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %1, i64 noundef %i.i) #34
  unreachable

_ZNKSt6vectorIN10tiniergltf9AnimationESaIS1_EE2atEm.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %1 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !452  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !452  ; 2 uses
  %.not327 = icmp eq ptr %i.k, %i.m
  br i1 %.not327, label %._crit_edge330, label %.lr.ph329

.lr.ph329:                                        ; preds = %_ZNKSt6vectorIN10tiniergltf9AnimationESaIS1_EE2atEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %.sroa.4.0..sroa_idx.i154 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i169 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.c

._crit_edge330:                                   ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit, %_ZNKSt6vectorIN10tiniergltf9AnimationESaIS1_EE2atEm.exit
  ret void

bb.c:                                             ; preds = %.lr.ph329, %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit
  %.sroa.0212.0328 = phi ptr [ %i.k, %.lr.ph329 ], [ %i.jl, %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit ] ; 5 uses
  %i.ad = load i64, ptr %.sroa.0212.0328, align 8, !tbaa !456 ; 3 uses
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !459
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !460 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 24                ; 2 uses
  %.not.i.i85 = icmp ult i64 %i.ad, %i.aj
  br i1 %.not.i.i85, label %_ZNKSt6vectorIN10tiniergltf16AnimationSamplerESaIS1_EE2atEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.ad, i64 noundef %i.aj) #34
  unreachable

_ZNKSt6vectorIN10tiniergltf16AnimationSamplerESaIS1_EE2atEm.exit: ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ad ; 5 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val.val = load i32, ptr %i.al, align 8, !tbaa !463
  switch i32 %.val.val, label %bb.f [
    i32 2, label %"_ZZN5scene19CGLTFMeshFileLoader13MeshExtractor13loadAnimationEmENK3$_0clEv.exit"
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf16AnimationSamplerESaIS1_EE2atEm.exit
  br label %"_ZZN5scene19CGLTFMeshFileLoader13MeshExtractor13loadAnimationEmENK3$_0clEv.exit"

bb.f:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf16AnimationSamplerESaIS1_EE2atEm.exit
  %i.am = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull @.str.37)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
  unreachable

common.resume:                                    ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit201, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.an, %bb.h ], [ %.pn81.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit201 ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.am) #30
  br label %common.resume

"_ZZN5scene19CGLTFMeshFileLoader13MeshExtractor13loadAnimationEmENK3$_0clEv.exit": ; preds = %_ZNKSt6vectorIN10tiniergltf16AnimationSamplerESaIS1_EE2atEm.exit, %bb.e
  %.0.i = phi i8 [ 1, %bb.e ], [ 0, %_ZNKSt6vectorIN10tiniergltf16AnimationSamplerESaIS1_EE2atEm.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !464
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorIfE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.582") align 8 %3, ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.ao)
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !473 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0212.0328, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !264, !range !80, !noundef !81
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.k, label %bb.i

bb.i:                                             ; preds = %"_ZZN5scene19CGLTFMeshFileLoader13MeshExtractor13loadAnimationEmENK3$_0clEv.exit"
  %i.at = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull @.str.8)
          to label %.invoke unwind label %bb.j

.invoke:                                          ; preds = %bb.i, %bb.bf
  %i.au = phi ptr [ %i.jc, %bb.bf ], [ %i.at, %bb.i ]
  invoke void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.at) #30
  br label %bb.bk

bb.k:                                             ; preds = %"_ZZN5scene19CGLTFMeshFileLoader13MeshExtractor13loadAnimationEmENK3$_0clEv.exit"
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0212.0328, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !181 ; 3 uses
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !341
  %i.az = load ptr, ptr %i.q, align 8, !tbaa !190 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3                 ; 2 uses
  %.not.i.i86 = icmp ult i64 %i.ax, %i.bd
  br i1 %.not.i.i86, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.ax, i64 noundef %i.bd) #34
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !343 ; 13 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !414
  %i.bi = icmp eq i8 %i.bh, 1
  br i1 %i.bi, label %.noexc.i, label %bb.r

.noexc.i:                                         ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %i.z, ptr %4, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 50, ptr %i.a, align 8, !tbaa !181
  %i.bj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc87 unwind label %bb.p   ; 3 uses

.noexc87:                                         ; preds = %.noexc.i
  store ptr %i.bj, ptr %4, align 8, !tbaa !61
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !181 ; 3 uses
  store i64 %i.bk, ptr %i.z, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %i.bj, ptr noundef nonnull align 1 dereferenceable(50) @.str.9, i64 50, i1 false)
  store i64 %i.bk, ptr %i.aa, align 8, !tbaa !59
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  store i8 0, ptr %i.bl, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %i.ab, ptr %2, align 8, !tbaa !183
  %i.bm = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.n unwind label %bb.q       ; 0 uses

bb.n:                                             ; preds = %.noexc87
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.bn = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.z
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_0

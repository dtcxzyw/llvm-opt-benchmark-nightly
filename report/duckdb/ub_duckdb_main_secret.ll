Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_main_secret?download=true
inline.NumInlined: 5469
inline.NumDeleted: 2421
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6duckdb13SecretManager16DropSecretByNameENS_18CatalogTransactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15OnEntryNotFoundENS_17SecretPersistTypeES9_:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(49) %i.z)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %i.ad, label %bb.u, label %bb.ae

bb.r:                                             ; preds = %bb.s, %bb.p
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.s:                                             ; preds = %bb.o
  %i.af = load ptr, ptr %.sroa.0124.0164, align 8, !tbaa !169 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(49) %i.af)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  br i1 %i.aj, label %bb.ae, label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.o, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.ak = load ptr, ptr %.sroa.0124.0164, align 8, !tbaa !169 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !65
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.490") align 8 %10, ptr noundef nonnull align 8 dereferenceable(49) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull %1)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.ao = load ptr, ptr %10, align 8, !tbaa !152
  %.not143 = icmp eq ptr %i.ao, null
  br i1 %.not143, label %_ZNSt10unique_ptrIN6duckdb11SecretEntryESt14default_deleteIS1_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ap = load ptr, ptr %.sroa.0124.0164, align 8, !tbaa !169 ; 2 uses
  %i.aq = load ptr, ptr %i.v, align 8, !tbaa !348
  %.not.i.i64 = icmp eq ptr %i.y, %i.aq
  br i1 %.not.i.i64, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ar = ptrtoint ptr %i.ap to i64
  store i64 %i.ar, ptr %i.y, align 8
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !349
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store ptr %i.at, ptr %i.u, align 8, !tbaa !349
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit79

bb.y:                                             ; preds = %bb.w
  %i.au = load ptr, ptr %6, align 8, !tbaa !350   ; 5 uses
  %i.av = ptrtoint ptr %i.y to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.z, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i65

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc77 unwind label %.loopexit.split-lp150

.noexc77:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i65: ; preds = %bb.y
  %i.az = ashr exact i64 %i.ax, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i66 = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i.i66, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = call i64 @llvm.umin.i64(i64 %i.ba, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 3 uses
  %.not.i.i.i.i67 = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i67)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #34
          to label %.noexc78 unwind label %.loopexit149 ; 5 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i65
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  %i.bh = ptrtoint ptr %i.ap to i64
  store i64 %i.bh, ptr %i.bg, align 8
  %.not10.i.i.i.i.i.i.i68 = icmp eq ptr %i.au, %i.y
  br i1 %.not10.i.i.i.i.i.i.i68, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i73, label %.lr.ph.i.i.i.i.i.i.i69

.lr.ph.i.i.i.i.i.i.i69:                           ; preds = %.noexc78, %.lr.ph.i.i.i.i.i.i.i69
  %.012.i.i.i.i.i.i.i70 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i69 ], [ %i.bf, %.noexc78 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i71 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i69 ], [ %i.au, %.noexc78 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !798)
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %i.bi = load i64, ptr %.0911.i.i.i.i.i.i.i71, align 8, !alias.scope !799, !noalias !798
  store i64 %i.bi, ptr %.012.i.i.i.i.i.i.i70, align 8, !alias.scope !798, !noalias !799
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i71, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i70, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i72 = icmp eq ptr %i.bj, %i.y
  br i1 %.not.i.i.i.i.i.i.i72, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i73, label %.lr.ph.i.i.i.i.i.i.i69, !llvm.loop !28

_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i73: ; preds = %.lr.ph.i.i.i.i.i.i.i69, %.noexc78
  %.0.lcssa.i.i.i.i.i.i.i74 = phi ptr [ %i.bf, %.noexc78 ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i69 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i23.i.i.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i23.i.i.i75, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i76, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i73
  call void @_ZdlPv(ptr noundef nonnull %i.au) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i76

_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i76: ; preds = %bb.aa, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i73
  store ptr %i.bf, ptr %6, align 8, !tbaa !350
  store ptr %i.bl, ptr %i.u, align 8, !tbaa !349
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.bm, ptr %i.v, align 8, !tbaa !348
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit79

bb.ab:                                            ; preds = %bb.u
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit149:                                     ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i65
  %lpad.loopexit151 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp150:                            ; preds = %bb.z
  %lpad.loopexit.split-lp152 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp150, %.loopexit149
  %lpad.phi153 = phi { ptr, i32 } [ %lpad.loopexit151, %.loopexit149 ], [ %lpad.loopexit.split-lp152, %.loopexit.split-lp150 ]
  call void @_ZNSt10unique_ptrIN6duckdb11SecretEntryESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #30
  br label %bb.af

_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit79: ; preds = %bb.x, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i76
  %i.bo = phi ptr [ %i.at, %bb.x ], [ %i.bl, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i76 ] ; 2 uses
  %.pr = load ptr, ptr %10, align 8, !tbaa !152   ; 5 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb11SecretEntryESt14default_deleteIS1_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit79
  %i.bp = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !154 ; 3 uses
  %.not.i.i.i.i80 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i80, label %_ZNSt10unique_ptrIKN6duckdb10BaseSecretESt14default_deleteIS2_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIKN6duckdb10BaseSecretEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIKN6duckdb10BaseSecretEEclEPS2_.exit.i.i.i.i: ; preds = %bb.ad
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !65
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dead_on_return(129) dereferenceable(129) %i.bq) #30, !inline_history !7
  br label %_ZNSt10unique_ptrIKN6duckdb10BaseSecretESt14default_deleteIS2_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIKN6duckdb10BaseSecretESt14default_deleteIS2_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIKN6duckdb10BaseSecretEEclEPS2_.exit.i.i.i.i, %bb.ad
  %i.bu = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !61 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.pr, i64 24
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNKSt14default_deleteIN6duckdb11SecretEntryEEclEPS1_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIKN6duckdb10BaseSecretESt14default_deleteIS2_EED2Ev.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.bv) #31
  br label %_ZNKSt14default_deleteIN6duckdb11SecretEntryEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb11SecretEntryEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIKN6duckdb10BaseSecretESt14default_deleteIS2_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.pr) #31
  br label %_ZNSt10unique_ptrIN6duckdb11SecretEntryESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11SecretEntryESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit79, %_ZNKSt14default_deleteIN6duckdb11SecretEntryEEclEPS1_.exit.i
  %i.by = phi ptr [ %i.y, %bb.v ], [ %i.bo, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit79 ], [ %i.bo, %_ZNKSt14default_deleteIN6duckdb11SecretEntryEEclEPS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.ae

bb.ae:                                            ; preds = %bb.t, %bb.q, %_ZNSt10unique_ptrIN6duckdb11SecretEntryESt14default_deleteIS1_EED2Ev.exit
  %i.bz = phi ptr [ %i.y, %bb.t ], [ %i.y, %bb.q ], [ %i.by, %_ZNSt10unique_ptrIN6duckdb11SecretEntryESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0124.0164, i64 8 ; 2 uses
  %.not141 = icmp eq ptr %i.ca, %i.t
  br i1 %.not141, label %._crit_edge, label %bb.o

bb.af:                                            ; preds = %bb.ac, %bb.ab
  %.pn58 = phi { ptr, i32 } [ %lpad.phi153, %bb.ac ], [ %i.bn, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.r
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %bb.af ], [ %i.ae, %bb.r ]
  %.not.i.i.i81 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit82, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef nonnull %i.r) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit82

_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit82: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.bo

_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit
  %i.cb = phi ptr [ %.pre, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit ], [ %i.l, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 4 uses
  %i.cc = phi ptr [ %i.w, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit ], [ %i.p, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 3 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp ugt i64 %i.cf, 8
  br i1 %i.cg, label %bb.ai, label %bb.av

bb.ai:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.ch, ptr %11, align 8, !tbaa !60
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.ci, align 8, !tbaa !59
  store i8 0, ptr %i.ch, align 8, !tbaa !63
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %21 = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  br label %bb.aj

._crit_edge169:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #30
  %i.cj = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %.sroa.0117.0166 = phi ptr [ %i.cb, %bb.ai ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.ck = load ptr, ptr %.sroa.0117.0166, align 8, !tbaa !169 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !65
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.cn(ptr noundef nonnull align 8 dereferenceable(49) %i.ck)
          to label %bb.ak unwind label %bb.ao     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !61, !noalias !800
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !59, !noalias !800 ; 3 uses
  store ptr %20, ptr %12, align 8, !tbaa !60, !alias.scope !801
  store i64 0, ptr %21, align 8, !tbaa !59, !alias.scope !801
  store i8 0, ptr %20, align 8, !tbaa !63, !alias.scope !801
  %i.cs = add i64 %i.cr, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.cs)
          to label %bb.al unwind label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.ct = load i64, ptr %21, align 8, !tbaa !59, !alias.scope !801
  %i.cu = sub i64 4611686018427387903, %i.ct
  %i.cv = icmp ult i64 %i.cu, %i.cr
  br i1 %i.cv, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.al
  %i.cw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.cp, i64 noundef %i.cr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cx = load i64, ptr %21, align 8, !tbaa !59, !alias.scope !801
  %i.cy = icmp eq i64 %i.cx, 4611686018427387903
  br i1 %i.cy, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #32
          to label %.cont.i.i unwind label %.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp:                               ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.da = load ptr, ptr %12, align 8, !tbaa !61, !alias.scope !801 ; 2 uses
  %i.db = icmp eq ptr %i.da, %20
  br i1 %i.db, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.am
  call void @_ZdlPv(ptr noundef %i.da) #31
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.dc = load i64, ptr %21, align 8, !tbaa !59   ; 2 uses
  %i.dd = load i64, ptr %i.ci, align 8, !tbaa !59
  %i.de = sub i64 4611686018427387903, %i.dd
  %i.df = icmp ult i64 %i.de, %i.dc
  br i1 %i.df, label %bb.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.an:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #32
          to label %.noexc83 unwind label %.loopexit.split-lp145

.noexc83:                                         ; preds = %bb.an
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.dg = load ptr, ptr %12, align 8, !tbaa !61
  %i.dh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.dg, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit144 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.di = load ptr, ptr %12, align 8, !tbaa !61   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %20
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.di) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0117.0166, i64 8 ; 2 uses
  %.not142 = icmp eq ptr %i.dk, %i.cc
  br i1 %.not142, label %._crit_edge169, label %bb.aj

bb.ao:                                            ; preds = %bb.aj
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit144:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit146 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp145:                            ; preds = %bb.an
  %lpad.loopexit.split-lp147 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp145, %.loopexit144
  %lpad.phi148 = phi { ptr, i32 } [ %lpad.loopexit146, %.loopexit144 ], [ %lpad.loopexit.split-lp147, %.loopexit.split-lp145 ] ; 2 uses
  %i.dm = load ptr, ptr %12, align 8, !tbaa !61   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %20
  br i1 %i.dn, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.ap
  call void @_ZdlPv(ptr noundef %i.dm) #31
  br label %.body

.body:                                            ; preds = %bb.ap, %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn55 = phi { ptr, i32 } [ %lpad.phi148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.dl, %bb.ao ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.phi, %bb.am ], [ %lpad.phi148, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.au

bb.aq:                                            ; preds = %._crit_edge169
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_EEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.bq unwind label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread: ; preds = %._crit_edge169
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.027 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dq = load ptr, ptr %13, align 8, !tbaa !61   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.dq) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.027, label %bb.at, label %bb.au

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.027, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn53137 = phi { ptr, i32 } [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ]
  call void @__cxa_free_exception(ptr %i.cj) #30
  br label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.at, %.body
  %.pn55.pn = phi { ptr, i32 } [ %.pn55, %.body ], [ %.pn53137, %bb.at ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ]
  %i.dt = load ptr, ptr %11, align 8, !tbaa !61   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.ch
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.au
  call void @_ZdlPv(ptr noundef %i.dt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.bo

bb.av:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit
  %i.dv = icmp eq ptr %i.cb, %i.cc
  br i1 %i.dv, label %bb.aw, label %bb.bj

bb.aw:                                            ; preds = %bb.av
  %i.dw = icmp eq i8 %3, 0
  br i1 %i.dw, label %bb.ax, label %bb.bm

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.dx, ptr %15, align 8, !tbaa !60
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.dy, align 8, !tbaa !59
  store i8 0, ptr %i.dx, align 8, !tbaa !63
  %i.dz = load i64, ptr %i.a, align 8, !tbaa !59
end_hunk_0

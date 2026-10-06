Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-memory-hybrid-idx?download=true
inline.NumInlined: 1406
inline.NumDeleted: 697
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS1_S1_S1_PK12llama_ubatchjb:bb.a
  %i.fc = mul nuw nsw i64 %.0214998, %i.z         ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !103
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !18
  %i.fg = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.fh = invoke noundef nonnull align 8 dereferenceable(12440) ptr @_ZNK14llama_kv_cache9get_cellsEi(ptr noundef nonnull align 8 dereferenceable(352) %i.fg, i32 noundef %i.ff)
          to label %bb.ag unwind label %bb.ai     ; 14 uses

bb.ag:                                            ; preds = %bb.af
  %i.fi = load i64, ptr %i.a, align 8, !tbaa !94
  %i.fj = mul nsw i64 %i.fi, %.0214998
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.fj
  %i.fl = load i64, ptr %i.c, align 8, !tbaa !94
  %i.fm = load i64, ptr %i.b, align 8, !tbaa !94
  %i.fn = mul nsw i64 %i.fm, %i.fl                ; 3 uses
  %i.fo = mul i64 %i.fn, %.0214998
  %i.fp = getelementptr [4 x i8], ptr %i.ae, i64 %i.fo ; 2 uses
  %.not5.i.i.i295 = icmp eq i64 %i.fn, 0
  br i1 %.not5.i.i.i295, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit299, label %.lr.ph.i.i.i296.preheader

.lr.ph.i.i.i296.preheader:                        ; preds = %bb.ag
  %.idx446 = shl i64 %i.fn, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fp, i8 0, i64 %.idx446, i1 false), !tbaa !18
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit299

_ZSt4fillIPiiEvT_S1_RKT0_.exit299:                ; preds = %.lr.ph.i.i.i296.preheader, %bb.ag
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 152
  br label %bb.aj

bb.ah:                                            ; preds = %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread
  %.not.i.i = icmp eq ptr %.sroa.14.0987, %.sroa.0420.0986
  %spec.select = select i1 %.not.i.i, ptr %.sroa.14.0987, ptr %.sroa.0420.0986 ; 2 uses
  %.not.i.i300 = icmp eq ptr %.sroa.10415.0990, %.sroa.0410.0989
  %.sroa.10415.4 = select i1 %.not.i.i300, ptr %.sroa.10415.0990, ptr %.sroa.0410.0989 ; 2 uses
  %.not.i.i303 = icmp eq ptr %.sroa.10.0993, %.sroa.0402.0992
  %.sroa.10.4 = select i1 %.not.i.i303, ptr %.sroa.10.0993, ptr %.sroa.0402.0992 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.fr = zext i1 %i.gf to i8
  store i8 %i.fr, ptr %i.d, align 1, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i8 0, ptr %i.e, align 1, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i8 0, ptr %i.f, align 1, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store i8 0, ptr %i.g, align 1, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store ptr %8, ptr %17, align 8, !tbaa !298
  store ptr %9, ptr %i.bq, align 8, !tbaa !298
  store ptr %10, ptr %i.br, align 8, !tbaa !298
  store ptr %11, ptr %i.bs, align 8, !tbaa !298
  store ptr %12, ptr %i.bt, align 8, !tbaa !298
  store ptr %13, ptr %i.bu, align 8, !tbaa !298
  store ptr %14, ptr %i.bv, align 8, !tbaa !299
  store ptr %15, ptr %i.bw, align 8, !tbaa !298
  store ptr %i.e, ptr %i.bx, align 8, !tbaa !300
  store ptr %i.f, ptr %i.by, align 8, !tbaa !300
  store ptr %i.a, ptr %i.bz, align 8, !tbaa !301
  store ptr %i.fh, ptr %i.ca, align 8, !tbaa !302
  store ptr %i.g, ptr %i.cb, align 8, !tbaa !300
  store ptr %16, ptr %i.cc, align 8, !tbaa !298
  store ptr %i.c, ptr %i.cd, align 8, !tbaa !301
  store ptr %i.b, ptr %i.ce, align 8, !tbaa !301
  store ptr %i.d, ptr %i.cf, align 8, !tbaa !300
  invoke fastcc void @"_ZZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS1_S1_S1_PK12llama_ubatchjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(136) %17)
          to label %bb.ak unwind label %.loopexit466

bb.ai:                                            ; preds = %bb.af
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.aj:                                            ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit299, %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread
  %indvars.iv = phi i64 [ 0, %_ZSt4fillIPiiEvT_S1_RKT0_.exit299 ], [ %indvars.iv.next, %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread ] ; 3 uses
  %.0212806 = phi i32 [ 0, %_ZSt4fillIPiiEvT_S1_RKT0_.exit299 ], [ %i.gd, %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [48 x i8], ptr %i.fq, i64 %indvars.iv ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !97
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread, label %_ZNK14llama_kv_cells11seq_pos_minEi.exit

_ZNK14llama_kv_cells11seq_pos_minEi.exit:         ; preds = %bb.aj
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !89
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !304
  %.fr = freeze i32 %i.ga
  %i.gb = icmp sgt i32 %.fr, -1
  %i.gc = zext i1 %i.gb to i32
  %spec.select442 = add nuw nsw i32 %.0212806, %i.gc
  br label %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread

_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread:  ; preds = %_ZNK14llama_kv_cells11seq_pos_minEi.exit, %bb.aj
  %i.gd = phi i32 [ %.0212806, %bb.aj ], [ %spec.select442, %_ZNK14llama_kv_cells11seq_pos_minEi.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ge = icmp samesign ult i64 %indvars.iv, 255
  %i.gf = icmp slt i32 %i.gd, 2                   ; 2 uses
  %i.gg = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %i.gg, label %bb.aj, label %bb.ah, !llvm.loop !275

bb.ak:                                            ; preds = %bb.ah
  %i.gh = load i8, ptr %i.f, align 1, !tbaa !104, !range !109, !noundef !110
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.al, label %bb.ca

bb.al:                                            ; preds = %bb.ak
  %i.gj = load i32, ptr %i.cg, align 4, !tbaa !305
  %i.gk = icmp ugt i32 %i.gj, 2
  %i.gl = load i8, ptr %i.d, align 1, !range !109
  %i.gm = trunc nuw i8 %i.gl to i1
  %or.cond = select i1 %i.gk, i1 %i.gm, i1 false
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEE5clearEv.exit308, label %bb.ca

_ZNSt6vectorIiSaIiEE5clearEv.exit308:             ; preds = %bb.al
  %.not.i.i306 = icmp eq ptr %.sroa.16.0996, %.sroa.0.0995
  %spec.select443 = select i1 %.not.i.i306, ptr %.sroa.16.0996, ptr %.sroa.0.0995 ; 2 uses
  %i.gn = load i64, ptr %i.a, align 8, !tbaa !94  ; 6 uses
  %i.go = icmp ugt i64 %i.gn, 2305843009213693951
  br i1 %i.go, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit308
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #26
          to label %.noexc309 unwind label %.loopexit.split-lp467

.noexc309:                                        ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit308
  %i.gp = ptrtoint ptr %.sroa.26.0997 to i64
  %i.gq = ptrtoint ptr %.sroa.0.0995 to i64       ; 2 uses
  %i.gr = sub i64 %i.gp, %i.gq                    ; 2 uses
  %i.gs = ashr exact i64 %i.gr, 2
  %i.gt = icmp ult i64 %i.gs, %i.gn
  br i1 %i.gt, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.an
  %i.gu = ptrtoint ptr %spec.select443 to i64
  %i.gv = sub i64 %i.gu, %i.gq                    ; 3 uses
  %i.gw = shl nuw nsw i64 %i.gn, 2
  %i.gx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gw) #22
          to label %.noexc310 unwind label %.loopexit466 ; 4 uses

.noexc310:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.gy = icmp sgt i64 %i.gv, 0
  br i1 %i.gy, label %bb.ao, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.ao:                                            ; preds = %.noexc310
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gx, ptr align 4 %.sroa.0.0995, i64 %i.gv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.ao, %.noexc310
  %.not.i8.i = icmp eq ptr %.sroa.0.0995, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0995, i64 noundef %i.gr) #25
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !94
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.ap, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %.pre = phi i64 [ %.pre.pre, %bb.ap ], [ %i.gn, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gv
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.gn
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %bb.an, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
  %i.hb = phi i64 [ %.pre, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.gn, %bb.an ] ; 4 uses
  %.sroa.0.7 = phi ptr [ %i.gx, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %.sroa.0.0995, %bb.an ] ; 2 uses
  %.sroa.16.5 = phi ptr [ %i.gz, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %spec.select443, %bb.an ] ; 2 uses
  %.sroa.26.7 = phi ptr [ %i.ha, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %.sroa.26.0997, %bb.an ] ; 2 uses
  %i.hc = icmp sgt i64 %i.hb, 0
  br i1 %i.hc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  br label %bb.bl

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.7, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.0.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 28 uses
  %.sroa.16.1.lcssa = phi ptr [ %.sroa.16.5, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.16.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 9 uses
  %.sroa.26.1.lcssa = phi ptr [ %.sroa.26.7, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.26.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  %.lcssa478 = phi i64 [ %i.hb, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.mw, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  %.not.i.i311 = icmp eq ptr %.sroa.0.1.lcssa, %.sroa.16.1.lcssa
  br i1 %.not.i.i311, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS9_S9_S9_PK12llama_ubatchjbE3$_1EvT_SE_T0_.exit", label %bb.aq

bb.aq:                                            ; preds = %._crit_edge
  %i.he = ptrtoint ptr %.sroa.16.1.lcssa to i64
  %i.hf = ptrtoint ptr %.sroa.0.1.lcssa to i64    ; 2 uses
  %i.hg = sub i64 %i.he, %i.hf                    ; 2 uses
  %i.hh = ashr exact i64 %i.hg, 2
  %i.hi = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hh, i1 true)
  %i.hj = shl nuw nsw i64 %i.hi, 1
  %i.hk = xor i64 %i.hj, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_SH_T0_T1_"(ptr %.sroa.0.1.lcssa, ptr %.sroa.16.1.lcssa, i64 noundef %i.hk, ptr nonnull readonly %i.fh)
  %i.hl = icmp sgt i64 %i.hg, 64
  br i1 %i.hl, label %bb.ar, label %.preheader.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fh, i64 56 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fh, i64 80 ; 3 uses
  %scevgep.i.i = getelementptr i8, ptr %.sroa.0.1.lcssa, i64 4
  %.pre10.i.i = load ptr, ptr %i.hm, align 8, !tbaa !83
  br label %bb.as

bb.as:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i, %bb.ar
  %18 = phi ptr [ %.pre10.i.i, %bb.ar ], [ %19, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i ] ; 7 uses
  %.sroa.0.024.i.idx.i.i = phi i64 [ 4, %bb.ar ], [ %.sroa.0.024.i.add.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i ] ; 4 uses
  %.pn23.i.i.i = phi ptr [ %.sroa.0.1.lcssa, %bb.ar ], [ %.sroa.0.024.i.ptr.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i ]
  %.sroa.0.024.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1.lcssa, i64 %.sroa.0.024.i.idx.i.i ; 3 uses
  %i.ho = load i32, ptr %.sroa.0.024.i.ptr.i.i, align 4, !tbaa !18 ; 2 uses
  %i.hp = load i32, ptr %.sroa.0.1.lcssa, align 4, !tbaa !18 ; 2 uses
  %i.hq = zext i32 %i.ho to i64                   ; 3 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %i.hq ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !18 ; 3 uses
  %i.ht = zext i32 %i.hp to i64                   ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !18 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.hs, %i.hv
  br i1 %.not.i.i.i.i.i, label %bb.at, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.as
  %i.hw = icmp slt i32 %i.hs, %i.hv
  br i1 %i.hw, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.i.preheader": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.i.i.i", %bb.au, %.split.i.i.i
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.i"

bb.at:                                            ; preds = %bb.as
  %i.hx = load ptr, ptr %i.hn, align 8, !tbaa !113 ; 2 uses
  %i.hy = getelementptr inbounds nuw [12 x i8], ptr %i.hx, i64 %i.hq ; 2 uses
  %i.hz = getelementptr inbounds nuw [12 x i8], ptr %i.hx, i64 %i.ht ; 2 uses
  %i.ia = load i32, ptr %i.hy, align 4, !tbaa !115
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !116 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !116 ; 2 uses
  %i.if = icmp sgt i32 %i.ie, %i.ic
  br i1 %i.if, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread.i.i.i", label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ig = icmp eq i32 %i.ie, %i.ic
  br i1 %i.ig, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.i.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.i.i.i": ; preds = %bb.au
  %i.ih = load i32, ptr %i.hz, align 4, !tbaa !115
  %i.ii = icmp sgt i32 %i.ih, %i.ia
  br i1 %i.ii, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.i.i.i", %bb.at, %.split.i.i.i
  %i.ij = icmp samesign ugt i64 %.sroa.0.024.i.idx.i.i, 4
  br i1 %i.ij, label %bb.av, label %bb.aw, !prof !117

bb.av:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread.i.i.i"
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0.1.lcssa, i64 %.sroa.0.024.i.idx.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.hm, align 8, !tbaa !83
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i

bb.aw:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread.i.i.i"
  %i.ik = getelementptr inbounds nuw i8, ptr %.pn23.i.i.i, i64 4
  store i32 %i.hp, ptr %i.ik, align 4, !tbaa !18
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.i.preheader", %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i.i"
  %i.il = phi i32 [ %.pre.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i.i" ], [ %i.hs, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.i.preheader" ] ; 2 uses
  %.sroa.06.0.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i.i" ], [ %.sroa.0.024.i.ptr.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.i.preheader" ] ; 5 uses
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i.i.i, i64 -4 ; 2 uses
  %i.im = load i32, ptr %.sroa.0.0.i.i.i.i, align 4, !tbaa !18 ; 2 uses
  %i.in = zext i32 %i.im to i64                   ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !18 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.il, %i.ip
  br i1 %.not.i.i.i.i.i.i, label %bb.ax, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.i"
  %i.iq = icmp slt i32 %i.il, %i.ip
  br i1 %i.iq, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i.i", label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i

bb.ax:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.i"
  %i.ir = load ptr, ptr %i.hn, align 8, !tbaa !113 ; 2 uses
  %i.is = getelementptr inbounds nuw [12 x i8], ptr %i.ir, i64 %i.hq ; 2 uses
  %i.it = getelementptr inbounds nuw [12 x i8], ptr %i.ir, i64 %i.in ; 2 uses
  %i.iu = load i32, ptr %i.is, align 4, !tbaa !115
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !116 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !116 ; 2 uses
  %i.iz = icmp sgt i32 %i.iy, %i.iw
  br i1 %i.iz, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i.i", label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ja = icmp eq i32 %i.iy, %i.iw
  br i1 %i.ja, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i.i", label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i.i": ; preds = %bb.ay
  %i.jb = load i32, ptr %i.it, align 4, !tbaa !115
  %i.jc = icmp sgt i32 %i.jb, %i.iu
  br i1 %i.jc, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i.i", label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i.i", %bb.ax, %.split.i.i.i.i
  store i32 %i.im, ptr %.sroa.06.0.i.i.i.i, align 4, !tbaa !18
  %.pre.i.i.i = load i32, ptr %i.hr, align 4, !tbaa !18
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.i", !llvm.loop !276

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i.i", %bb.ay, %.split.i.i.i.i, %bb.aw, %bb.av
  %19 = phi ptr [ %18, %bb.aw ], [ %.pre.i.i, %bb.av ], [ %18, %.split.i.i.i.i ], [ %18, %bb.ay ], [ %18, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i.i" ] ; 3 uses
  %.sink.i.i.i = phi ptr [ %.sroa.0.1.lcssa, %bb.aw ], [ %.sroa.0.1.lcssa, %bb.av ], [ %.sroa.06.0.i.i.i.i, %.split.i.i.i.i ], [ %.sroa.06.0.i.i.i.i, %bb.ay ], [ %.sroa.06.0.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i.i" ]
  store i32 %i.ho, ptr %.sink.i.i.i, align 4, !tbaa !18
  %.sroa.0.024.i.add.i.i = add nuw nsw i64 %.sroa.0.024.i.idx.i.i, 4 ; 2 uses
  %.not.i.i.i312 = icmp eq i64 %.sroa.0.024.i.add.i.i, 64
  br i1 %.not.i.i.i312, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_SH_T0_.exit.i.i", label %bb.as, !llvm.loop !277

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_SH_T0_.exit.i.i": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.1.lcssa, i64 64 ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.jd, %.sroa.16.1.lcssa
  br i1 %.not7.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS9_S9_S9_PK12llama_ubatchjbE3$_1EvT_SE_T0_.exitthread-pre-split", label %bb.az

bb.az:                                            ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_SH_T0_.exit.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_T0_.exit.i.i.i.i"
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.jz, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_T0_.exit.i.i.i.i" ], [ %i.jd, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_SH_T0_.exit.i.i" ] ; 3 uses
  %i.je = load i32, ptr %.sroa.0.08.i.i.i.i, align 4, !tbaa !18 ; 2 uses
  %i.jf = zext i32 %i.je to i64                   ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %i.jf
  br label %bb.ba

bb.ba:                                            ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i.i.i", %bb.az
  %.sroa.06.0.i.i.i.i.i = phi ptr [ %.sroa.0.08.i.i.i.i, %bb.az ], [ %.sroa.0.0.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i.i.i.i, i64 -4 ; 2 uses
  %i.jh = load i32, ptr %.sroa.0.0.i.i.i.i.i, align 4, !tbaa !18 ; 2 uses
  %i.ji = load i32, ptr %i.jg, align 4, !tbaa !18 ; 2 uses
  %i.jj = zext i32 %i.jh to i64                   ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !18 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ji, %i.jl
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bb, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.ba
  %i.jm = icmp slt i32 %i.ji, %i.jl
  br i1 %i.jm, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i.i.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_T0_.exit.i.i.i.i"

bb.bb:                                            ; preds = %bb.ba
  %i.jn = load ptr, ptr %i.hn, align 8, !tbaa !113 ; 2 uses
  %i.jo = getelementptr inbounds nuw [12 x i8], ptr %i.jn, i64 %i.jf ; 2 uses
  %i.jp = getelementptr inbounds nuw [12 x i8], ptr %i.jn, i64 %i.jj ; 2 uses
  %i.jq = load i32, ptr %i.jo, align 4, !tbaa !115
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !116 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !116 ; 2 uses
  %i.jv = icmp sgt i32 %i.ju, %i.js
  br i1 %i.jv, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i.i.i", label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jw = icmp eq i32 %i.ju, %i.js
  br i1 %i.jw, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i.i.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_T0_.exit.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i.i.i": ; preds = %bb.bc
  %i.jx = load i32, ptr %i.jp, align 4, !tbaa !115
  %i.jy = icmp sgt i32 %i.jx, %i.jq
  br i1 %i.jy, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i.i.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_T0_.exit.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i.i.i", %bb.bb, %.split.i.i.i.i.i
  store i32 %i.jh, ptr %.sroa.06.0.i.i.i.i.i, align 4, !tbaa !18
  br label %bb.ba, !llvm.loop !276

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_T0_.exit.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i.i.i", %bb.bc, %.split.i.i.i.i.i
  store i32 %i.je, ptr %.sroa.06.0.i.i.i.i.i, align 4, !tbaa !18
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i313 = icmp eq ptr %i.jz, %.sroa.16.1.lcssa
  br i1 %.not.i.i.i.i313, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS9_S9_S9_PK12llama_ubatchjbE3$_1EvT_SE_T0_.exitthread-pre-split", label %bb.az, !llvm.loop !278

.preheader.i.i:                                   ; preds = %bb.aq
  %.sroa.0.021.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1.lcssa, i64 4 ; 2 uses
  %.not22.i.i = icmp eq ptr %.sroa.0.021.i.i, %.sroa.16.1.lcssa
  br i1 %.not22.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS9_S9_S9_PK12llama_ubatchjbE3$_1EvT_SE_T0_.exitthread-pre-split", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.kb = getelementptr inbounds nuw i8, ptr %i.fh, i64 80 ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.024.i.i = phi ptr [ %.sroa.0.021.i.i, %.lr.ph.i.i ], [ %.sroa.0.0.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i ] ; 5 uses
  %.pn23.i.i = phi ptr [ %.sroa.0.1.lcssa, %.lr.ph.i.i ], [ %.sroa.0.024.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i ] ; 2 uses
  %i.kc = load i32, ptr %.sroa.0.024.i.i, align 4, !tbaa !18 ; 2 uses
  %i.kd = load i32, ptr %.sroa.0.1.lcssa, align 4, !tbaa !18 ; 2 uses
  %i.ke = zext i32 %i.kc to i64                   ; 3 uses
  %i.kf = load ptr, ptr %i.ka, align 8, !tbaa !83 ; 3 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.ke ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !18 ; 3 uses
  %i.ki = zext i32 %i.kd to i64                   ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !18 ; 2 uses
  %.not.i.i.i7.i = icmp eq i32 %i.kh, %i.kk
  br i1 %.not.i.i.i7.i, label %bb.be, label %.split.i.i

.split.i.i:                                       ; preds = %bb.bd
  %i.kl = icmp slt i32 %i.kh, %i.kk
  br i1 %i.kl, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.preheader": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.i.i", %bb.bf, %.split.i.i
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i"

bb.be:                                            ; preds = %bb.bd
  %i.km = load ptr, ptr %i.kb, align 8, !tbaa !113 ; 2 uses
  %i.kn = getelementptr inbounds nuw [12 x i8], ptr %i.km, i64 %i.ke ; 2 uses
  %i.ko = getelementptr inbounds nuw [12 x i8], ptr %i.km, i64 %i.ki ; 2 uses
  %i.kp = load i32, ptr %i.kn, align 4, !tbaa !115
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !116 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !116 ; 2 uses
  %i.ku = icmp sgt i32 %i.kt, %i.kr
  br i1 %i.ku, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread.i.i", label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kv = icmp eq i32 %i.kt, %i.kr
  br i1 %i.kv, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.i.i": ; preds = %bb.bf
  %i.kw = load i32, ptr %i.ko, align 4, !tbaa !115
  %i.kx = icmp sgt i32 %i.kw, %i.kp
  br i1 %i.kx, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.i.i", %bb.be, %.split.i.i
  %i.ky = ptrtoint ptr %.sroa.0.024.i.i to i64
  %i.kz = sub i64 %i.ky, %i.hf                    ; 3 uses
  %i.la = ashr exact i64 %i.kz, 2                 ; 2 uses
  %i.lb = icmp sgt i64 %i.la, 1
  br i1 %i.lb, label %bb.bg, label %bb.bh, !prof !117

bb.bg:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread.i.i"
  %i.lc = getelementptr inbounds nuw i8, ptr %.pn23.i.i, i64 8
  %i.ld = sub nsw i64 0, %i.la
  %i.le = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.ld
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.le, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0.1.lcssa, i64 %i.kz, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i

bb.bh:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread.i.i"
  %i.lf = icmp eq i64 %i.kz, 4
  br i1 %i.lf, label %bb.bi, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.lg = getelementptr inbounds nuw i8, ptr %.pn23.i.i, i64 4
  store i32 %i.kd, ptr %i.lg, align 4, !tbaa !18
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.preheader", %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i"
  %i.lh = phi i32 [ %.pre.i.i.a, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i" ], [ %i.kh, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.preheader" ] ; 2 uses
  %.sroa.06.0.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i" ], [ %.sroa.0.024.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.preheader" ] ; 5 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i.i, i64 -4 ; 2 uses
  %i.li = load i32, ptr %.sroa.0.0.i.i.i, align 4, !tbaa !18 ; 2 uses
  %i.lj = zext i32 %i.li to i64                   ; 2 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.lj
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !18 ; 2 uses
  %.not.i.i.i.i8.i = icmp eq i32 %i.lh, %i.ll
  br i1 %.not.i.i.i.i8.i, label %bb.bj, label %.split.i.i9.i

.split.i.i9.i:                                    ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i"
  %i.lm = icmp slt i32 %i.lh, %i.ll
  br i1 %i.lm, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i", label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i

bb.bj:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i"
  %i.ln = load ptr, ptr %i.kb, align 8, !tbaa !113 ; 2 uses
  %i.lo = getelementptr inbounds nuw [12 x i8], ptr %i.ln, i64 %i.ke ; 2 uses
  %i.lp = getelementptr inbounds nuw [12 x i8], ptr %i.ln, i64 %i.lj ; 2 uses
  %i.lq = load i32, ptr %i.lo, align 4, !tbaa !115
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !116 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !116 ; 2 uses
  %i.lv = icmp sgt i32 %i.lu, %i.ls
  br i1 %i.lv, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i", label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lw = icmp eq i32 %i.lu, %i.ls
  br i1 %i.lw, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i", label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i": ; preds = %bb.bk
  %i.lx = load i32, ptr %i.lp, align 4, !tbaa !115
  %i.ly = icmp sgt i32 %i.lx, %i.lq
  br i1 %i.ly, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i", label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i", %bb.bj, %.split.i.i9.i
  store i32 %i.li, ptr %.sroa.06.0.i.i.i, align 4, !tbaa !18
  %.pre.i.i.a = load i32, ptr %i.kg, align 4, !tbaa !18
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i", !llvm.loop !276

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i", %bb.bk, %.split.i.i9.i, %bb.bi, %bb.bh, %bb.bg
  %.sink.i.i = phi ptr [ %.sroa.0.1.lcssa, %bb.bi ], [ %.sroa.0.1.lcssa, %bb.bg ], [ %.sroa.0.1.lcssa, %bb.bh ], [ %.sroa.06.0.i.i.i, %.split.i.i9.i ], [ %.sroa.06.0.i.i.i, %bb.bk ], [ %.sroa.06.0.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i.i" ]
  store i32 %i.kc, ptr %.sink.i.i, align 4, !tbaa !18
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i.i, i64 4 ; 2 uses
  %.not.i10.i = icmp eq ptr %.sroa.0.0.i.i, %.sroa.16.1.lcssa
  br i1 %.not.i10.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS9_S9_S9_PK12llama_ubatchjbE3$_1EvT_SE_T0_.exitthread-pre-split", label %bb.bd, !llvm.loop !277

.loopexit466:                                     ; preds = %bb.ah, %._crit_edge817, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %.sroa.0.2.ph = phi ptr [ %.sroa.0.0995, %bb.ah ], [ %.sroa.0.0995, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ %.sroa.0.1.lcssa, %._crit_edge817 ]
  %.sroa.26.2.ph = phi ptr [ %.sroa.26.0997, %bb.ah ], [ %.sroa.26.0997, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ %.sroa.26.1.lcssa, %._crit_edge817 ]
  %lpad.loopexit470 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

.loopexit.split-lp467:                            ; preds = %bb.cb, %bb.am
  %.sroa.0.2.ph468 = phi ptr [ %.sroa.0.4, %bb.cb ], [ %.sroa.0.0995, %bb.am ]
  %.sroa.26.2.ph469 = phi ptr [ %.sroa.26.4, %bb.cb ], [ %.sroa.26.0997, %bb.am ]
  %lpad.loopexit.split-lp471 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.bl:                                            ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.pre12461249 = phi i64 [ %i.hb, %.lr.ph ], [ %.pre12461250, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %i.lz = phi i64 [ %i.hb, %.lr.ph ], [ %i.mw, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.0210811 = phi i64 [ 0, %.lr.ph ], [ %i.mx, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.26.1810 = phi ptr [ %.sroa.26.7, %.lr.ph ], [ %.sroa.26.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 6 uses
  %.sroa.16.1809 = phi ptr [ %.sroa.16.5, %.lr.ph ], [ %.sroa.16.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  %.sroa.0.1808 = phi ptr [ %.sroa.0.7, %.lr.ph ], [ %.sroa.0.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 8 uses
  %i.ma = trunc i64 %.0210811 to i32              ; 2 uses
  %i.mb = and i64 %.0210811, 4294967295
  %i.mc = load ptr, ptr %i.hd, align 8, !tbaa !83
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.mb
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/mapfile.cc.X86_64?download=true
inline.NumInlined: 1826
inline.NumDeleted: 914
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_:bb.a
  %i.af = icmp eq ptr %i.u, %i.ae                 ; 2 uses
  br i1 %i.af, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = sext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !201
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.aj
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %bb.d ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.c ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = and i8 %i.an, 15
  %i.ap = icmp eq i8 %i.ao, 10
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !344, !range !158, !noundef !159
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.af, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.av = load i32, ptr %i.au, align 4, !tbaa !198
  %i.aw = sext i32 %i.av to i64
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !201
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.aw
  br label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i1.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ay, %bb.g ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.f ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i1.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = and i8 %i.ba, 15
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bb, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.bc = load i64, ptr %i.t, align 8, !tbaa !206 ; 3 uses
  %i.bd = and i64 %i.bc, 3
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.bd, 0
  %.not524.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bc, 0
  %.not5.i.i.i.i.i.i.i.i.i.i.i = or i1 %.not524.i.i.i.i.i.i.i.i.i.i.i, %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE6insertERNSM_8accessorEOSK_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE6insertERNSM_8accessorEOSK_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.be = inttoptr i64 %i.bc to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store ptr null, ptr %1, align 8, !tbaa !209
  store i8 0, ptr %i.c, align 8, !tbaa !210
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !346, !nonnull !159, !align !169
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %i.be, ptr %2, align 8, !tbaa !348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.bg = call noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE6lookupILb1ES7_PFPNSM_4nodeERNSH_INS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketEEERSJ_PKSD_EEEbRKT0_SY_PNSM_14const_accessorEbT1_SP_(ptr noundef nonnull align 8 dereferenceable(570) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE28allocate_node_move_constructERNSH_INS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketEEERSJ_PKSD_, ptr noundef null) ; 0 uses
  %i.bh = load ptr, ptr %i.e, align 8, !tbaa !217 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE6insertERNSM_8accessorEOSK_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !218
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #21
  br label %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE6insertERNSM_8accessorEOSK_.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !220 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !349 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 40 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !218
  %.not.i9.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.u, ptr %i.bp, align 8, !tbaa !191
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !349
  br label %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !217 ; 4 uses
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 5 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.k, label %_ZNKSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #22
  unreachable

_ZNKSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i10.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i10.i.i.i.i.i.i.i.i.i.i.i)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #23 ; 4 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.bw ; 2 uses
  store ptr %i.u, ptr %i.cf, align 8, !tbaa !191
  %i.cg = icmp sgt i64 %i.bw, 0
  br i1 %i.cg, label %bb.l, label %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr align 8 %i.bt, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.not.i17.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = load ptr, ptr %i.bq, align 8, !tbaa !218
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.ck) #21
  br label %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ce, ptr %i.bn, align 8, !tbaa !217
  store ptr %i.ch, ptr %i.bo, align 8, !tbaa !349
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.cl, ptr %i.bq, align 8, !tbaa !218
  br label %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  store ptr null, ptr %i.d, align 8, !tbaa !220
  %i.cm = load ptr, ptr %1, align 8, !tbaa !209   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE14const_accessorD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i
  store ptr null, ptr %1, align 8, !tbaa !209
  %i.cn = load i8, ptr %i.c, align 8, !tbaa !210, !range !158, !noundef !159
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cp = atomicrmw and ptr %i.cm, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE14const_accessorD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cq = atomicrmw add ptr %i.cm, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE14const_accessorD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE14const_accessorD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o, %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.q

bb.q:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE14const_accessorD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.019.025.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.m
  br i1 %i.cs, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL7get_mapINS3_6X86_64EEENS1_19concurrent_hash_mapIPNS3_12InputSectionIT_EESt6vectorIPNS3_6SymbolIS8_EESaISE_EENS0_2d116tbb_hash_compareISA_EENSH_13tbb_allocatorISt4pairIKSA_SG_EEEEERNS3_7ContextIS8_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSV_NS1_11feeder_implISW_SV_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSW_OS8_PT0_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL7get_mapINS3_6X86_64EEENS1_19concurrent_hash_mapIPNS3_12InputSectionIT_EESt6vectorIPNS3_6SymbolIS8_EESaISE_EENS0_2d116tbb_hash_compareISA_EENSH_13tbb_allocatorISt4pairIKSA_SG_EEEEERNS3_7ContextIS8_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSV_NS1_11feeder_implISW_SV_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSW_OS8_PT0_.exit.i.i.i.i.i: ; preds = %bb.q, %bb.b
  %i.ct = add i64 %.02.i.i.i.i.i, 1               ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ct, %.0.val
  br i1 %.not.i.i.i.i.i, label %_ZN3tbb6detail2d06invokeIRKNS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS7_6X86_64EEESt6vectorISB_SaISB_EEEEZNS7_L7get_mapIS9_EENS3_19concurrent_hash_mapIPNS7_12InputSectionIT_EESD_IPNS7_6SymbolISK_EESaISP_EENS0_2d116tbb_hash_compareISM_EENSS_13tbb_allocatorISt4pairIKSM_SR_EEEEERNS7_7ContextISK_EEEUlSB_E_SB_EEJRNSS_13blocked_rangeImEEEEENSt13invoke_resultISK_JDpT0_EE4typeEOSK_DpOS1C_.exit, label %bb.b, !llvm.loop !317

_ZN3tbb6detail2d06invokeIRKNS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS7_6X86_64EEESt6vectorISB_SaISB_EEEEZNS7_L7get_mapIS9_EENS3_19concurrent_hash_mapIPNS7_12InputSectionIT_EESD_IPNS7_6SymbolISK_EESaISP_EENS0_2d116tbb_hash_compareISM_EENSS_13tbb_allocatorISt4pairIKSM_SR_EEEEERNS7_7ContextISK_EEEUlSB_E_SB_EEJRNSS_13blocked_rangeImEEEEENSt13invoke_resultISK_JDpT0_EE4typeEOSK_DpOS1C_.exit: ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL7get_mapINS3_6X86_64EEENS1_19concurrent_hash_mapIPNS3_12InputSectionIT_EESt6vectorIPNS3_6SymbolIS8_EESaISE_EENS0_2d116tbb_hash_compareISA_EENSH_13tbb_allocatorISt4pairIKSA_SG_EEEEERNS3_7ContextIS8_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSV_NS1_11feeder_implISW_SV_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSW_OS8_PT0_.exit.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE6lookupILb1ES7_PFPNSM_4nodeERNSH_INS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketEEERSJ_PKSD_EEEbRKT0_SY_PNSM_14const_accessorEbT1_SP_(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !221
  %i.b = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not48 = icmp eq ptr %3, null
  %i.g = zext i1 %4 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.085 = phi i64 [ %i.d, %bb.a ], [ %.085.be, %.backedge.backedge ] ; 8 uses
  %.040 = phi ptr [ %6, %bb.a ], [ %.040.be, %.backedge.backedge ] ; 4 uses
  %.035 = phi i64 [ 0, %bb.a ], [ %.035.be, %.backedge.backedge ] ; 5 uses
  %i.i = and i64 %.085, %i.b                      ; 3 uses
  %i.j = or i64 %i.i, 1
  %i.k = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true) ; 2 uses
  %i.l = xor i64 %i.k, 63
  %i.m = lshr exact i64 -9223372036854775808, %i.k
  %i.n = and i64 %i.m, -2
  %i.o = sub i64 %i.i, %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.l
  %i.q = load atomic ptr, ptr %i.p acquire, align 8 ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.o ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 6 uses
  %i.t = load atomic ptr, ptr %i.s acquire, align 8
  %i.u = icmp eq ptr %i.t, inttoptr (i64 3 to ptr)
  br i1 %i.u, label %bb.b, label %.preheader9.i.i.preheader

.preheader9.i.i.preheader:                        ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i.i, %bb.b, %.backedge
  br label %.preheader9.i.i.outer

bb.b:                                             ; preds = %.backedge
  %i.v = load atomic i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.w = and i64 %i.v, -3
  %.not.i.i3.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i3.i, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i.i, label %.preheader9.i.i.preheader

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i.i: ; preds = %bb.b
  %i.x = cmpxchg ptr %i.r, i64 %i.v, i64 1 seq_cst seq_cst, align 8
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %bb.c, label %.preheader9.i.i.preheader

bb.c:                                             ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i.i
  %i.z = load atomic ptr, ptr %i.s monotonic, align 8
  %i.aa = icmp eq ptr %i.z, inttoptr (i64 3 to ptr)
  br i1 %i.aa, label %bb.d, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE15bucket_accessorC2EPSM_mb.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13rehash_bucketEPNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketEm(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull %i.r, i64 noundef %i.i), !inline_history !3
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE15bucket_accessorC2EPSM_mb.exit

.preheader9.i.i:                                  ; preds = %.preheader9.i.i.outer, %bb.i
  %i.ab = load atomic i64, ptr %i.r monotonic, align 8
  %i.ac = and i64 %i.ab, 3
  %.not.i4.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i4.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.preheader9.i.i
  %i.ad = atomicrmw add ptr %i.r, i64 4 seq_cst, align 8
  %i.ae = and i64 %i.ad, 1
  %.not5.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not5.not.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE15bucket_accessorC2EPSM_mb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = atomicrmw add ptr %i.r, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader9.i.i
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = icmp sgt i32 %.sroa.0.0.i3.i.i.ph, 0
  br i1 %i.ag, label %.lr.ph.i.i.i7.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i

.lr.ph.i.i.i7.i.i.preheader:                      ; preds = %bb.h
  %xtraiter = and i32 %.sroa.0.0.i3.i.i.ph, 7     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i7.i.i.prol.loopexit, label %.lr.ph.i.i.i7.i.i.prol

.lr.ph.i.i.i7.i.i.prol:                           ; preds = %.lr.ph.i.i.i7.i.i.preheader, %.lr.ph.i.i.i7.i.i.prol
  %.01.i.i.i8.i.i.prol = phi i32 [ %i.ah, %.lr.ph.i.i.i7.i.i.prol ], [ %.sroa.0.0.i3.i.i.ph, %.lr.ph.i.i.i7.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i7.i.i.prol ], [ 0, %.lr.ph.i.i.i7.i.i.preheader ]
  %i.ah = add nsw i32 %.01.i.i.i8.i.i.prol, -1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i7.i.i.prol.loopexit, label %.lr.ph.i.i.i7.i.i.prol, !llvm.loop !350

.lr.ph.i.i.i7.i.i.prol.loopexit:                  ; preds = %.lr.ph.i.i.i7.i.i.prol, %.lr.ph.i.i.i7.i.i.preheader
  %.01.i.i.i8.i.i.unr = phi i32 [ %.sroa.0.0.i3.i.i.ph, %.lr.ph.i.i.i7.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i7.i.i.prol ]
  %i.ai = icmp ult i32 %.sroa.0.0.i3.i.i.ph, 8
  br i1 %i.ai, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i, label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %.lr.ph.i.i.i7.i.i.prol.loopexit, %.lr.ph.i.i.i7.i.i
  %.01.i.i.i8.i.i = phi i32 [ %i.aj, %.lr.ph.i.i.i7.i.i ], [ %.01.i.i.i8.i.i.unr, %.lr.ph.i.i.i7.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.aj = add nsw i32 %.01.i.i.i8.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.ak = icmp sgt i32 %.01.i.i.i8.i.i, 8
  br i1 %i.ak, label %.lr.ph.i.i.i7.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i, !llvm.loop !0

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i: ; preds = %.lr.ph.i.i.i7.i.i.prol.loopexit, %.lr.ph.i.i.i7.i.i, %bb.h
  %i.al = shl i32 %.sroa.0.0.i3.i.i.ph, 1
  br label %.preheader9.i.i.outer, !llvm.loop !4

.preheader9.i.i.outer:                            ; preds = %.preheader9.i.i.preheader, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i
  %.sroa.0.0.i3.i.i.ph = phi i32 [ 1, %.preheader9.i.i.preheader ], [ %i.al, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i ] ; 7 uses
  %i.am = icmp slt i32 %.sroa.0.0.i3.i.i.ph, 17
  br label %.preheader9.i.i

bb.i:                                             ; preds = %bb.g
  %i.an = tail call noundef i32 @sched_yield() #11, !inline_history !5 ; 0 uses
  br label %.preheader9.i.i, !llvm.loop !4

_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE15bucket_accessorC2EPSM_mb.exit: ; preds = %bb.e, %bb.c, %bb.d
  %.sroa.11.4 = phi i8 [ 1, %bb.d ], [ 1, %bb.c ], [ 0, %bb.e ] ; 3 uses
  %i.ao = load atomic ptr, ptr %i.s monotonic, align 8 ; 3 uses
  %i.ap = icmp ugt ptr %i.ao, inttoptr (i64 63 to ptr)
  br i1 %i.ap, label %.lr.ph.i, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit

.lr.ph.i:                                         ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE15bucket_accessorC2EPSM_mb.exit
  %i.aq = load ptr, ptr %1, align 8, !tbaa !221
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i
  %.07.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.au, %bb.k ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !221
  %i.at = icmp eq ptr %i.aq, %i.as
  br i1 %i.at, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSL_6bucketEPNS1_18hash_map_node_baseISK_EEm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %.07.i, align 8, !tbaa !227 ; 3 uses
  %i.av = icmp ugt ptr %i.au, inttoptr (i64 63 to ptr)
  br i1 %i.av, label %bb.j, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit, !llvm.loop !6

_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit: ; preds = %bb.k, %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE15bucket_accessorC2EPSM_mb.exit
  %.0.lcssa.i = phi ptr [ %i.ao, %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE15bucket_accessorC2EPSM_mb.exit ], [ %i.au, %bb.k ] ; 2 uses
  %.not = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not, label %bb.l, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSL_6bucketEPNS1_18hash_map_node_baseISK_EEm.exit

bb.l:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit
  %.not47 = icmp eq ptr %.040, null
  br i1 %.not47, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #11, !inline_history !351
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.141 = phi ptr [ %.040, %bb.l ], [ %i.aw, %bb.m ] ; 8 uses
  %i.ax = trunc nuw i8 %.sroa.11.4 to i1
  br i1 %i.ax, label %.critedge, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %bb.n
  %i.ay = tail call noundef zeroext i1 @_ZN3tbb6detail2d113spin_rw_mutex7upgradeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  br i1 %i.ay, label %.critedge, label %bb.o

bb.o:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit
  %i.az = load atomic ptr, ptr %i.s monotonic, align 8 ; 3 uses
  %i.ba = icmp ugt ptr %i.az, inttoptr (i64 63 to ptr)
  br i1 %i.ba, label %.lr.ph.i52, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit54

.lr.ph.i52:                                       ; preds = %bb.o
  %i.bb = load ptr, ptr %1, align 8, !tbaa !221
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i52
  %.07.i53 = phi ptr [ %i.az, %.lr.ph.i52 ], [ %i.bf, %bb.q ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i53, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !221
  %i.be = icmp eq ptr %i.bb, %i.bd
  br i1 %i.be, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit54, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = load ptr, ptr %.07.i53, align 8, !tbaa !227 ; 3 uses
  %i.bg = icmp ugt ptr %i.bf, inttoptr (i64 63 to ptr)
  br i1 %i.bg, label %bb.p, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit54, !llvm.loop !6

_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit54: ; preds = %bb.p, %bb.q, %bb.o
  %.0.lcssa.i51 = phi ptr [ %i.az, %bb.o ], [ %.07.i53, %bb.p ], [ %i.bf, %bb.q ] ; 3 uses
  %i.bh = icmp ugt ptr %.0.lcssa.i51, inttoptr (i64 63 to ptr)
  br i1 %i.bh, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, label %.critedge, !llvm.loop !352

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit: ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit54
  %i.bi = atomicrmw add ptr %i.r, i64 3 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSL_6bucketEPNS1_18hash_map_node_baseISK_EEm.exit

.critedge:                                        ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit54, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %bb.n
  %.033.lcssa = phi ptr [ null, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit ], [ null, %bb.n ], [ %.0.lcssa.i51, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit54 ] ; 2 uses
  %i.bj = load atomic i64, ptr %i.c acquire, align 8 ; 6 uses
  %.not.i = icmp eq i64 %.085, %i.bj
  br i1 %.not.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.bk = xor i64 %i.bj, %.085
  %i.bl = and i64 %i.bk, %i.b
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = add i64 %.085, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.012.i.i = phi i64 [ %i.bm, %bb.s ], [ %i.bo, %bb.t ] ; 2 uses
  %i.bn = and i64 %.012.i.i, %i.b
  %.not13.i.i = icmp eq i64 %i.bn, 0
  %i.bo = shl i64 %.012.i.i, 1                    ; 2 uses
  br i1 %.not13.i.i, label %bb.t, label %bb.u, !llvm.loop !7

bb.u:                                             ; preds = %bb.t
  %i.bp = add i64 %i.bo, -1
  %i.bq = and i64 %i.bp, %i.b                     ; 2 uses
  %i.br = or i64 %i.bq, 1
  %i.bs = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 true) ; 2 uses
  %i.bt = xor i64 %i.bs, 63
  %i.bu = lshr exact i64 -9223372036854775808, %i.bs
  %i.bv = and i64 %i.bu, -2
  %i.bw = sub i64 %i.bq, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bt
  %i.by = load atomic ptr, ptr %i.bx acquire, align 8
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load atomic ptr, ptr %i.ca acquire, align 8
  %i.cc = icmp eq ptr %i.cb, inttoptr (i64 3 to ptr)
  br i1 %i.cc, label %bb.v, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread

bb.v:                                             ; preds = %bb.r, %bb.u, %.critedge
  %.5.ph = phi i64 [ %.085, %.critedge ], [ %i.bj, %bb.u ], [ %i.bj, %bb.r ] ; 5 uses
  %i.cd = atomicrmw add ptr %i.f, i64 1 seq_cst, align 8
  %i.ce = add i64 %i.cd, 1
  %i.cf = load atomic ptr, ptr %i.s monotonic, align 8
  store ptr %i.cf, ptr %.141, align 8, !tbaa !227
  store atomic ptr %.141, ptr %i.s monotonic, align 8
  %.not.i60 = icmp ult i64 %i.ce, %.5.ph
  br i1 %.not.i60, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSL_6bucketEPNS1_18hash_map_node_baseISK_EEm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = add i64 %.5.ph, 1
  %i.ch = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = xor i64 %i.ch, 63                       ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ci ; 2 uses
  %i.ck = load atomic ptr, ptr %i.cj acquire, align 8
  %.not12.i = icmp eq ptr %i.ck, null
  br i1 %.not12.i, label %bb.x, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSL_6bucketEPNS1_18hash_map_node_baseISK_EEm.exit

bb.x:                                             ; preds = %bb.w
  %i.cl = cmpxchg ptr %i.cj, ptr null, ptr inttoptr (i64 2 to ptr) seq_cst seq_cst, align 8
  %i.cm = extractvalue { ptr, i1 } %i.cl, 1
  %spec.select.i = select i1 %i.cm, i64 %i.ci, i64 0
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSL_6bucketEPNS1_18hash_map_node_baseISK_EEm.exit

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSL_6bucketEPNS1_18hash_map_node_baseISK_EEm.exit: ; preds = %bb.j, %bb.x, %bb.w, %bb.v, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit
  %.186 = phi i64 [ %.085, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit ], [ %.085, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit ], [ %.5.ph, %bb.x ], [ %.5.ph, %bb.v ], [ %.5.ph, %bb.w ], [ %.085, %bb.j ] ; 3 uses
  %.sroa.11.2 = phi i8 [ %.sroa.11.4, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit ], [ 0, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit ], [ 1, %bb.x ], [ 1, %bb.v ], [ 1, %bb.w ], [ %.sroa.11.4, %bb.j ] ; 2 uses
  %.242 = phi ptr [ %.040, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit ], [ %.141, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit ], [ null, %bb.x ], [ null, %bb.v ], [ null, %bb.w ], [ %.040, %bb.j ] ; 4 uses
  %.038 = phi i1 [ false, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit ], [ false, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit ], [ true, %bb.x ], [ true, %bb.v ], [ true, %bb.w ], [ false, %bb.j ] ; 3 uses
  %.136 = phi i64 [ %.035, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit ], [ %.035, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit ], [ %spec.select.i, %bb.x ], [ 0, %bb.v ], [ 0, %bb.w ], [ %.035, %bb.j ] ; 4 uses
  %.134 = phi ptr [ %.0.lcssa.i, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13search_bucketIS7_EEPNSM_4nodeERKT_PNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketE.exit ], [ %.0.lcssa.i51, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit ], [ %.141, %bb.x ], [ %.141, %bb.v ], [ %.141, %bb.w ], [ %.07.i, %bb.j ] ; 4 uses
  br i1 %.not48, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit, label %bb.y

bb.y:                                             ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSL_6bucketEPNS1_18hash_map_node_baseISK_EEm.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %.134, i64 8 ; 9 uses
  %i.co = load atomic i64, ptr %i.cn monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cp = and i64 %i.co, -3
  %.not.i.i61 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i61, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.cq = and i64 %i.co, 3
  %.not.i7.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i7.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cr = atomicrmw add ptr %i.cn, i64 4 seq_cst, align 8
  %i.cs = and i64 %i.cr, 1
  %.not5.not.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not5.not.i.i, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = atomicrmw add ptr %i.cn, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.ad

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i: ; preds = %bb.z
  %i.cu = cmpxchg ptr %i.cn, i64 %i.co, i64 1 seq_cst seq_cst, align 8
  %i.cv = extractvalue { i64, i1 } %i.cu, 1
  br i1 %i.cv, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split, label %bb.ad

bb.ad:                                            ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.z, %bb.aa, %bb.ac
  tail call void @llvm.x86.sse2.pause()
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, %bb.ad
  %.sroa.0.0 = phi i32 [ 2, %bb.ad ], [ %i.dk, %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit ] ; 7 uses
  %i.cw = load atomic i64, ptr %i.cn monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cx = and i64 %i.cw, -3
  %.not.i.i65 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i65, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i66, label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %i.cy = and i64 %i.cw, 3
  %.not.i7.i62 = icmp eq i64 %i.cy, 0
  br i1 %.not.i7.i62, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cz = atomicrmw add ptr %i.cn, i64 4 seq_cst, align 8
  %i.da = and i64 %i.cz, 1
  %.not5.not.i.i63 = icmp eq i64 %i.da, 0
  br i1 %.not5.not.i.i63, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.db = atomicrmw add ptr %i.cn, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.aj

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i66: ; preds = %bb.af
  %i.dc = cmpxchg ptr %i.cn, i64 %i.cw, i64 1 seq_cst seq_cst, align 8
  %i.dd = extractvalue { i64, i1 } %i.dc, 1
  br i1 %i.dd, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split, label %bb.aj

bb.aj:                                            ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i66, %bb.af, %bb.ag, %bb.ai
  %i.de = icmp sgt i32 %.sroa.0.0, 0
  br i1 %i.de, label %.lr.ph.i.i.preheader, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.aj
  %xtraiter195 = and i32 %.sroa.0.0, 6            ; 2 uses
  %lcmp.mod196.not = icmp eq i32 %xtraiter195, 0
  br i1 %lcmp.mod196.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.01.i.i.prol = phi i32 [ %i.df, %.lr.ph.i.i.prol ], [ %.sroa.0.0, %.lr.ph.i.i.preheader ]
  %prol.iter197 = phi i32 [ %prol.iter197.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.df = add nsw i32 %.01.i.i.prol, -1           ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter197.next = add i32 %prol.iter197, 1   ; 2 uses
  %prol.iter197.cmp.not = icmp eq i32 %prol.iter197.next, %xtraiter195
  br i1 %prol.iter197.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !353

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01.i.i.unr = phi i32 [ %.sroa.0.0, %.lr.ph.i.i.preheader ], [ %i.df, %.lr.ph.i.i.prol ]
  %i.dg = icmp ult i32 %.sroa.0.0, 8
  br i1 %i.dg, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01.i.i = phi i32 [ %i.dh, %.lr.ph.i.i ], [ %.01.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.dh = add nsw i32 %.01.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.di = icmp sgt i32 %.01.i.i, 8
  br i1 %i.di, label %.lr.ph.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i, !llvm.loop !0

_ZN3tbb6detail2d013machine_pauseEi.exit.i:        ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %i.dj = icmp samesign ult i32 %.sroa.0.0, 16
  br i1 %i.dj, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, label %bb.ak

_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit: ; preds = %bb.aj, %_ZN3tbb6detail2d013machine_pauseEi.exit.i
  %i.dk = shl i32 %.sroa.0.0, 1
  br label %bb.ae, !llvm.loop !354

bb.ak:                                            ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i
  %i.dl = trunc nuw i8 %.sroa.11.2 to i1
  br i1 %i.dl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dm = atomicrmw and ptr %i.r, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

bb.am:                                            ; preds = %bb.ak
  %i.dn = atomicrmw add ptr %i.r, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split: ; preds = %bb.ah, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i66, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.ab
  store ptr %i.cn, ptr %3, align 8, !tbaa !209
  store i8 %i.g, ptr %i.h, align 8, !tbaa !210
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit: ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSL_6bucketEPNS1_18hash_map_node_baseISK_EEm.exit
  %.1 = phi i32 [ 6, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSL_6bucketEPNS1_18hash_map_node_baseISK_EEm.exit ], [ 0, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split ] ; 3 uses
  %.not.i68 = icmp eq ptr %i.q, null
  br i1 %.not.i68, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit, label %bb.an

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread: ; preds = %bb.u
  %.not.i68163 = icmp eq ptr %i.q, null
  br i1 %.not.i68163, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit, label %bb.ao

bb.an:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit
  %i.do = trunc nuw i8 %.sroa.11.2 to i1
  br i1 %i.do, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread, %bb.an
  %.4164184 = phi i64 [ %.186, %bb.an ], [ %i.bj, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread ]
  %.3166183 = phi ptr [ %.242, %bb.an ], [ %.141, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread ]
  %.139167182 = phi i1 [ %.038, %bb.an ], [ false, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread ]
  %.237168181 = phi i64 [ %.136, %bb.an ], [ %.035, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread ]
  %.2169180 = phi ptr [ %.134, %bb.an ], [ %.033.lcssa, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread ]
  %.1170179 = phi i32 [ %.1, %bb.an ], [ 2, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread ]
  %i.dp = atomicrmw and ptr %i.r, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit

bb.ap:                                            ; preds = %bb.an
  %i.dq = atomicrmw add ptr %i.r, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit: ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit, %bb.ao, %bb.ap
  %.1113 = phi i32 [ %.1, %bb.ap ], [ %.1, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit ], [ %.1170179, %bb.ao ], [ 2, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread ]
  %.2112 = phi ptr [ %.134, %bb.ap ], [ %.134, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit ], [ %.2169180, %bb.ao ], [ %.033.lcssa, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread ]
  %.237111 = phi i64 [ %.136, %bb.ap ], [ %.136, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit ], [ %.237168181, %bb.ao ], [ %.035, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread ] ; 7 uses
  %.139110 = phi i1 [ %.038, %bb.ap ], [ %.038, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit ], [ %.139167182, %bb.ao ], [ false, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread ]
  %.3109 = phi ptr [ %.242, %bb.ap ], [ %.242, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit ], [ %.3166183, %bb.ao ], [ %.141, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread ] ; 5 uses
  %.4108 = phi i64 [ %.186, %bb.ap ], [ %.186, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit ], [ %.4164184, %bb.ao ], [ %i.bj, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread ]
  switch i32 %.1113, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.unreachabledefault [
    i32 0, label %bb.aq
    i32 2, label %.backedge.backedge
    i32 6, label %.loopexit
  ]

.backedge.backedge:                               ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2
  %.085.be = phi i64 [ %.4108, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit ], [ %i.ds, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ]
  %.040.be = phi ptr [ %.3109, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit ], [ %.242, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ]
  %.035.be = phi i64 [ %.237111, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit ], [ %.136, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ]
  br label %.backedge

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2: ; preds = %bb.am, %bb.al
  %i.dr = tail call noundef i32 @sched_yield() #11 ; 0 uses
  %i.ds = load atomic i64, ptr %i.c acquire, align 8
  br label %.backedge.backedge

bb.aq:                                            ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.2112, ptr %i.dt, align 8, !tbaa !220
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.b, ptr %i.du, align 8, !tbaa !228
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit, %bb.aq
  %.not49 = icmp eq i64 %.237111, 0
  br i1 %.not49, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %.loopexit
  %i.dv = icmp ugt i64 %.237111, 7
  br i1 %i.dv, label %.new, label %bb.as

.new:                                             ; preds = %bb.ar
  %i.dw = shl i64 16, %.237111
  %i.dx = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef %i.dw) #11 ; 5 uses
  %i.dy = shl nuw i64 1, %.237111
  %unroll_iter = and i64 %i.dy, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.new
  %.06.i.i.i = phi i64 [ 0, %.new ], [ %i.ek, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %.06.i.i.i ; 2 uses
  store i64 0, ptr %i.dz, align 8, !tbaa !229
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.ea, align 8, !tbaa !357
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %.06.i.i.i ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i64 0, ptr %i.ec, align 8, !tbaa !229
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.ed, align 8, !tbaa !357
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %.06.i.i.i ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  store i64 0, ptr %i.ef, align 8, !tbaa !229
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  store ptr inttoptr (i64 3 to ptr), ptr %i.eg, align 8, !tbaa !357
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %.06.i.i.i ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  store i64 0, ptr %i.ei, align 8, !tbaa !229
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  store ptr inttoptr (i64 3 to ptr), ptr %i.ej, align 8, !tbaa !357
  %i.ek = add nuw i64 %.06.i.i.i, 4
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSL_6bucketEmb.exit.i, label %.lr.ph.i.i.i, !llvm.loop !355

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSL_6bucketEmb.exit.i: ; preds = %.lr.ph.i.i.i
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.237111
  store atomic ptr %i.dx, ptr %i.el release, align 8
  %i.em = shl i64 2, %.237111
  %i.en = add i64 %i.em, -1
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit

bb.as:                                            ; preds = %bb.ar
  %i.eo = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 4064) #11 ; 9 uses
  br label %.lr.ph.i.i10.i

.lr.ph.i.i10.i:                                   ; preds = %.lr.ph.i.i10.i, %bb.as
  %.06.i.i11.i = phi i64 [ 0, %bb.as ], [ %i.eu, %.lr.ph.i.i10.i ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %.06.i.i11.i ; 2 uses
  store i64 0, ptr %i.ep, align 8, !tbaa !229
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.eq, align 8, !tbaa !357
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %.06.i.i11.i ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store i64 0, ptr %i.es, align 8, !tbaa !229
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.et, align 8, !tbaa !357
  %i.eu = add nuw nsw i64 %.06.i.i11.i, 2         ; 2 uses
  %exitcond.not.i.i12.i.1 = icmp eq i64 %i.eu, 254
  br i1 %exitcond.not.i.i12.i.1, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSL_6bucketEmb.exit14.i, label %.lr.ph.i.i10.i, !llvm.loop !355

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSL_6bucketEmb.exit14.i: ; preds = %.lr.ph.i.i10.i
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic ptr %i.eo, ptr %i.ev release, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store atomic ptr %i.ex, ptr %i.ew release, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  store atomic ptr %i.ez, ptr %i.ey release, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 224
  store atomic ptr %i.fb, ptr %i.fa release, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 480
  store atomic ptr %i.fd, ptr %i.fc release, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eo, i64 992
  store atomic ptr %i.ff, ptr %i.fe release, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eo, i64 2016
  store atomic ptr %i.fh, ptr %i.fg release, align 8
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit: ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSL_6bucketEmb.exit.i, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSL_6bucketEmb.exit14.i
  %.037.i = phi i64 [ %i.en, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSL_6bucketEmb.exit.i ], [ 255, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSL_6bucketEmb.exit14.i ]
  store atomic i64 %.037.i, ptr %i.c release, align 8
  br label %bb.at

bb.at:                                            ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold12InputSectionINS6_6X86_64EEESt6vectorIPNS6_6SymbolIS8_EESaISF_EEEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit, %.loopexit
  %.not50 = icmp eq ptr %.3109, null
  br i1 %.not50, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fi = getelementptr inbounds nuw i8, ptr %.3109, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !217 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE11delete_nodeEPNS1_18hash_map_node_baseINSE_13spin_rw_mutexEEE.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fk = getelementptr inbounds nuw i8, ptr %.3109, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !218
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fj to i64
  %i.fo = sub i64 %i.fm, %i.fn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fo) #21
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE11delete_nodeEPNS1_18hash_map_node_baseINSE_13spin_rw_mutexEEE.exit

_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE11delete_nodeEPNS1_18hash_map_node_baseINSE_13spin_rw_mutexEEE.exit: ; preds = %bb.au, %bb.av
  tail call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %.3109) #11
  br label %bb.aw

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.unreachabledefault: ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit
  unreachable

bb.aw:                                            ; preds = %bb.at, %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE11delete_nodeEPNS1_18hash_map_node_baseINSE_13spin_rw_mutexEEE.exit
  ret i1 %.139110
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE28allocate_node_move_constructERNSH_INS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketEEERSJ_PKSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 48) #11 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !229
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %1, align 8, !tbaa !221
  %i.e = load ptr, ptr %2, align 8, !tbaa !217
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !230
  %i.h = insertelement <4 x ptr> poison, ptr %i.d, i64 0
  %i.i = insertelement <4 x ptr> %i.h, ptr %i.e, i64 1
  %i.j = shufflevector <2 x ptr> %i.g, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.k = shufflevector <4 x ptr> %i.i, <4 x ptr> %i.j, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.k, ptr %i.c, align 8, !tbaa !92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13rehash_bucketEPNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketEm(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store atomic ptr null, ptr %i.a release, align 8
  %i.b = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true) ; 2 uses
  %i.c = lshr i64 9223372036854775807, %i.b
  %i.d = and i64 %i.c, %2                         ; 3 uses
  %i.e = or i64 %i.d, 1
  %i.f = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true) ; 2 uses
  %i.g = xor i64 %i.f, 63
  %i.h = lshr exact i64 -9223372036854775808, %i.f
  %i.i = and i64 %i.h, 9223372036854775806
  %i.j = sub nsw i64 %i.d, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.g
  %i.m = load atomic ptr, ptr %i.l acquire, align 8
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.j ; 18 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = icmp eq ptr %i.p, inttoptr (i64 3 to ptr)
  br i1 %i.q, label %bb.b, label %.preheader9.i.i.preheader

.preheader9.i.i.preheader:                        ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i.i, %bb.b, %bb.a
  br label %.preheader9.i.i.outer

bb.b:                                             ; preds = %bb.a
  %i.r = load atomic i64, ptr %i.n monotonic, align 8 ; 2 uses
  %i.s = and i64 %i.r, -3
  %.not.i.i3.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i3.i, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i.i, label %.preheader9.i.i.preheader

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i.i: ; preds = %bb.b
  %i.t = cmpxchg ptr %i.n, i64 %i.r, i64 1 seq_cst seq_cst, align 8
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %bb.c, label %.preheader9.i.i.preheader

bb.c:                                             ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i.i
  %i.v = load atomic ptr, ptr %i.o monotonic, align 8
  %i.w = icmp eq ptr %i.v, inttoptr (i64 3 to ptr)
  br i1 %i.w, label %bb.d, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE15bucket_accessorC2EPSM_mb.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE13rehash_bucketEPNS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketEm(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull %i.n, i64 noundef %i.d), !inline_history !3
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE15bucket_accessorC2EPSM_mb.exit

.preheader9.i.i:                                  ; preds = %.preheader9.i.i.outer, %bb.i
  %i.x = load atomic i64, ptr %i.n monotonic, align 8
  %i.y = and i64 %i.x, 3
  %.not.i4.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i4.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.preheader9.i.i
  %i.z = atomicrmw add ptr %i.n, i64 4 seq_cst, align 8
  %i.aa = and i64 %i.z, 1
  %.not5.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not5.not.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE15bucket_accessorC2EPSM_mb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = atomicrmw add ptr %i.n, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader9.i.i
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp sgt i32 %.sroa.0.0.i3.i.i.ph, 0
  br i1 %i.ac, label %.lr.ph.i.i.i7.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i

.lr.ph.i.i.i7.i.i.preheader:                      ; preds = %bb.h
  %xtraiter = and i32 %.sroa.0.0.i3.i.i.ph, 7     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i7.i.i.prol.loopexit, label %.lr.ph.i.i.i7.i.i.prol

.lr.ph.i.i.i7.i.i.prol:                           ; preds = %.lr.ph.i.i.i7.i.i.preheader, %.lr.ph.i.i.i7.i.i.prol
  %.01.i.i.i8.i.i.prol = phi i32 [ %i.ad, %.lr.ph.i.i.i7.i.i.prol ], [ %.sroa.0.0.i3.i.i.ph, %.lr.ph.i.i.i7.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i7.i.i.prol ], [ 0, %.lr.ph.i.i.i7.i.i.preheader ]
  %i.ad = add nsw i32 %.01.i.i.i8.i.i.prol, -1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i7.i.i.prol.loopexit, label %.lr.ph.i.i.i7.i.i.prol, !llvm.loop !358

.lr.ph.i.i.i7.i.i.prol.loopexit:                  ; preds = %.lr.ph.i.i.i7.i.i.prol, %.lr.ph.i.i.i7.i.i.preheader
  %.01.i.i.i8.i.i.unr = phi i32 [ %.sroa.0.0.i3.i.i.ph, %.lr.ph.i.i.i7.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i7.i.i.prol ]
  %i.ae = icmp ult i32 %.sroa.0.0.i3.i.i.ph, 8
  br i1 %i.ae, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i, label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %.lr.ph.i.i.i7.i.i.prol.loopexit, %.lr.ph.i.i.i7.i.i
  %.01.i.i.i8.i.i = phi i32 [ %i.af, %.lr.ph.i.i.i7.i.i ], [ %.01.i.i.i8.i.i.unr, %.lr.ph.i.i.i7.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.af = add nsw i32 %.01.i.i.i8.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.ag = icmp sgt i32 %.01.i.i.i8.i.i, 8
  br i1 %i.ag, label %.lr.ph.i.i.i7.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i, !llvm.loop !0

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i: ; preds = %.lr.ph.i.i.i7.i.i.prol.loopexit, %.lr.ph.i.i.i7.i.i, %bb.h
  %i.ah = shl i32 %.sroa.0.0.i3.i.i.ph, 1
  br label %.preheader9.i.i.outer, !llvm.loop !4

.preheader9.i.i.outer:                            ; preds = %.preheader9.i.i.preheader, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i
  %.sroa.0.0.i3.i.i.ph = phi i32 [ 1, %.preheader9.i.i.preheader ], [ %i.ah, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i ] ; 7 uses
  %i.ai = icmp slt i32 %.sroa.0.0.i3.i.i.ph, 17
  br label %.preheader9.i.i

bb.i:                                             ; preds = %bb.g
  %i.aj = tail call noundef i32 @sched_yield() #11, !inline_history !5 ; 0 uses
  br label %.preheader9.i.i, !llvm.loop !4

_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE15bucket_accessorC2EPSM_mb.exit: ; preds = %bb.e, %bb.c, %bb.d
  %.sroa.8.5 = phi i8 [ 1, %bb.d ], [ 1, %bb.c ], [ 0, %bb.e ] ; 2 uses
  %i.ak = lshr i64 -2, %i.b
  %i.al = or i64 %i.ak, 1
  %i.am = load atomic ptr, ptr %i.o acquire, align 8 ; 2 uses
  %i.an = icmp ugt ptr %i.am, inttoptr (i64 63 to ptr)
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.loopexit:                                        ; preds = %bb.n
  %i.ao = load atomic ptr, ptr %i.o acquire, align 8 ; 2 uses
  %i.ap = icmp ugt ptr %i.ao, inttoptr (i64 63 to ptr)
  br i1 %i.ap, label %.lr.ph.backedge, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE15bucket_accessorC2EPSM_mb.exit, %.lr.ph.backedge
  %.sroa.8.1 = phi i8 [ %.sroa.8.1.be, %.lr.ph.backedge ], [ %.sroa.8.5, %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE15bucket_accessorC2EPSM_mb.exit ] ; 2 uses
  %.02340 = phi ptr [ %.02340.be, %.lr.ph.backedge ], [ %i.am, %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE15bucket_accessorC2EPSM_mb.exit ] ; 6 uses
  %.02539 = phi ptr [ %.02539.be, %.lr.ph.backedge ], [ null, %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE15bucket_accessorC2EPSM_mb.exit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02340, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !221
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.al, %i.as
  %i.au = icmp eq i64 %i.at, %2
  br i1 %i.au, label %bb.j, label %bb.v

bb.j:                                             ; preds = %.lr.ph
  %i.av = trunc nuw i8 %.sroa.8.1 to i1
  br i1 %i.av, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load atomic i64, ptr %i.n monotonic, align 8 ; 3 uses
  %i.ax = and i64 %i.aw, -4
  %i.ay = icmp eq i64 %i.ax, 4
  %i.az = and i64 %i.aw, 2
  %.not13.i = icmp eq i64 %i.az, 0
  %or.cond14.i = or i1 %i.ay, %.not13.i
  br i1 %or.cond14.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.k, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %.0815.i = phi i64 [ %i.bf, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i ], [ %i.aw, %bb.k ] ; 2 uses
  %i.ba = or i64 %.0815.i, 3
  %i.bb = cmpxchg ptr %i.n, i64 %.0815.i, i64 %i.ba seq_cst seq_cst, align 8 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 1
  br i1 %i.bc, label %.preheader.i, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.bd = load atomic i64, ptr %i.n monotonic, align 8
  %i.be = and i64 %i.bd, -4
  %.not217.i = icmp eq i64 %i.be, 4
  br i1 %.not217.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, label %.lr.ph19.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i: ; preds = %.lr.ph.i
  %i.bf = extractvalue { i64, i1 } %i.bb, 0       ; 3 uses
  %i.bg = and i64 %i.bf, -4
  %i.bh = icmp eq i64 %i.bg, 4
  %i.bi = and i64 %i.bf, 2
  %.not.i28 = icmp eq i64 %i.bi, 0
  %or.cond.i = or i1 %i.bh, %.not.i28
  br i1 %or.cond.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8

.lr.ph19.i:                                       ; preds = %.preheader.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %.sroa.0.018.i = phi i32 [ %.sroa.0.1.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i ], [ 1, %.preheader.i ] ; 8 uses
  %i.bj = icmp slt i32 %.sroa.0.018.i, 17
  br i1 %i.bj, label %bb.l, label %bb.m
end_hunk_0

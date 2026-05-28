inline.NumInlined: 4880
inline.NumDeleted: 1990
begin_hunk_0_@"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_0E9_M_invokeERKSt9_Any_dataS5_":bb.a
  br i1 %.not.i.i.i13.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !3, !noalias !821
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4, !noalias !821
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ax, %bb.n ], [ %i.bh, %bb.o ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bi, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !57

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #26, !noalias !821
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !49, !noalias !821 ; 8 uses
  %.not.i.i14.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i14.i.i.i, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8, !noalias !821 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bl, align 8, !tbaa !51, !noalias !821
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !53, !noalias !821
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !54, !noalias !821
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !821
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #26, !noalias !821, !inline_history !824
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !54, !noalias !821
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !821
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #26, !noalias !821, !inline_history !824
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !821
  %.not.i.i.i15.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i15.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3, !noalias !821
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4, !noalias !821
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i17.i.i.i = phi i32 [ %i.bo, %bb.t ], [ %i.by, %bb.u ]
  %i.bz = icmp eq i32 %.0.i.i.i.i17.i.i.i, 1
  br i1 %i.bz, label %bb.v, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !57

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #26, !noalias !821
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16.i.i.i, %bb.r, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.ca = load ptr, ptr %i.ac, align 8, !tbaa !49, !noalias !821 ; 8 uses
  %.not.i.i18.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i18.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8, !noalias !821 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cb, align 8, !tbaa !51, !noalias !821
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !53, !noalias !821
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !54, !noalias !821
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !821
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #26, !noalias !821, !inline_history !825
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !54, !noalias !821
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !821
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #26, !noalias !821, !inline_history !825
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !821
  %.not.i.i.i19.i.i.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i19.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !3, !noalias !821
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4, !noalias !821
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i21.i.i.i = phi i32 [ %i.ce, %bb.z ], [ %i.co, %bb.aa ]
  %i.cp = icmp eq i32 %.0.i.i.i.i21.i.i.i, 1
  br i1 %i.cp, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !57

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #26, !noalias !821
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20.i.i.i, %bb.x, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.cq = load ptr, ptr %4, align 8, !tbaa !37, !noalias !821 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !40, !noalias !821
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #27, !noalias !821
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !821
  br label %bb.af

bb.ac:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.j
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #26, !noalias !821
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn.i.i.i = phi { ptr, i32 } [ %i.cw, %bb.ad ], [ %i.cv, %bb.ac ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26, !noalias !821
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26, !noalias !821
  %i.cx = load ptr, ptr %4, align 8, !tbaa !37, !noalias !821 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i: ; preds = %bb.ae
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !40, !noalias !821
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #27, !noalias !821
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !821
  resume { ptr, i32 } %.pn.i.i.i

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %.critedge.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !826, !noalias !821, !nonnull !115, !align !619 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !827, !noalias !821 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !355, !noalias !821
  %.not.i.i.i.i = icmp eq ptr %i.df, %i.dh
  br i1 %.not.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 %.0.lcssa.i.i.i, ptr %i.df, align 1, !tbaa !40, !noalias !821
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !827, !noalias !821
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store ptr %i.dj, ptr %i.de, align 8, !tbaa !827, !noalias !821
  br label %"_ZSt10__invoke_rIN5arrow6StatusERZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_0JRKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

bb.ah:                                            ; preds = %bb.af
  %i.dk = load ptr, ptr %i.dd, align 8, !tbaa !353, !noalias !821 ; 4 uses
  %i.dl = ptrtoint ptr %i.df to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 8 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775807
  br i1 %i.do, label %bb.ai, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #29, !noalias !821
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.ah
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.dp = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.dn ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.dn
  %i.dr = call i64 @llvm.umin.i64(i64 %i.dp, i64 9223372036854775807)
  %i.ds = select i1 %i.dq, i64 9223372036854775807, i64 %i.dr ; 3 uses
  %.not.i.i.i25.i.i.i = icmp ne i64 %i.ds, 0
  call void @llvm.assume(i1 %.not.i.i.i25.i.i.i)
  %7 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #28, !noalias !821 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %i.dn ; 2 uses
  store i8 %.0.lcssa.i.i.i, ptr %8, align 1, !tbaa !40, !noalias !821
  %9 = icmp sgt i64 %i.dn, 0
  br i1 %9, label %bb.aj, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i

bb.aj:                                            ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %i.dk, i64 %i.dn, i1 false), !noalias !821
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.aj, %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dn) #27, !noalias !821
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.ak, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %7, ptr %i.dd, align 8, !tbaa !353, !noalias !821
  store ptr %i.dt, ptr %i.de, align 8, !tbaa !827, !noalias !821
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 %i.ds
  store ptr %i.du, ptr %i.dg, align 8, !tbaa !355, !noalias !821
  br label %"_ZSt10__invoke_rIN5arrow6StatusERZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_0JRKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

"_ZSt10__invoke_rIN5arrow6StatusERZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_0JRKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %bb.ag, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !95, !alias.scope !828
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !818
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !818
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !818
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_12_GLOBAL__N_120EnumeratedStatisticsEEZNKS0_11RecordBatch19MakeStatisticsArrayEPNS0_10MemoryPoolEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS1_10MemoryPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS_10MemoryPoolEE3$_0", ptr %0, align 8, !tbaa !831
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS1_10MemoryPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !50
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS1_10MemoryPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !833
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS1_10MemoryPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK5arrow11RecordBatch19MakeStatisticsArrayEPNS1_10MemoryPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !171    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #29
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !50
  store ptr null, ptr %i.r, align 8, !tbaa !49
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !50
  store ptr null, ptr %2, align 8, !tbaa !92
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !837, !noalias !834
  store ptr null, ptr %i.t, align 8, !tbaa !49, !alias.scope !837, !noalias !834
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !50, !alias.scope !834, !noalias !837
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !92, !alias.scope !837, !noalias !834
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !839

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !50, !alias.scope !843, !noalias !840
  store ptr null, ptr %i.y, align 8, !tbaa !49, !alias.scope !843, !noalias !840
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !50, !alias.scope !840, !noalias !843
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !92, !alias.scope !843, !noalias !840
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !839

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !173
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #27
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !171
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !170
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !173
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow14NumericBuilderINS4_9Int32TypeEEESaIvEJRPNS4_10MemoryPoolEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #28, !noalias !845 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow14NumericBuilderINS0_9Int32TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !343    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %i.f, align 8, !tbaa !848
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 64, ptr %i.g, align 8, !tbaa !854
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.e, ptr %i.i, align 8, !tbaa !385
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.j, align 8, !tbaa !390
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.l, align 8, !tbaa !391
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_9Int32TypeEEE, i64 16), ptr %i.d, align 8, !tbaa !54
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev()
          to label %.noexc.i.i.i unwind label %.body.i ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49, !noalias !855 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.n, align 8, !tbaa !50, !noalias !855
  store <2 x ptr> %i.r, ptr %i.o, align 8, !tbaa !50, !alias.scope !855
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow14NumericBuilderINS1_9Int32TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.noexc.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !855
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3, !noalias !855
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !3, !noalias !855
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow14NumericBuilderINS1_9Int32TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4, !noalias !855 ; 0 uses
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow14NumericBuilderINS1_9Int32TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

.body.i:                                          ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %i.d) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 232) #27
  resume { ptr, i32 } %i.x

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow14NumericBuilderINS1_9Int32TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %.noexc.i.i.i, %bb.c, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr %i.e, ptr %i.z, align 8, !tbaa !385
end_hunk_0

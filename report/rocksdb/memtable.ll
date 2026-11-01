Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/memtable?download=true
inline.NumInlined: 3338
inline.NumDeleted: 1581
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7rocksdb12MergeContext11PushOperandERKNS_5SliceEb:bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !1057 ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !587
  %.not.i.i = icmp eq ptr %i.dn, %i.dp
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit
  store ptr %i.dj, ptr %i.dn, align 8, !tbaa !383
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 %i.dl, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !169
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store ptr %i.dq, ptr %i.dm, align 8, !tbaa !1057
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE9push_backERKS1_.exit

bb.t:                                             ; preds = %_ZNSt6vectorISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EE12emplace_backIJPS6_EEERS9_DpOT_.exit
  %i.dr = load ptr, ptr %i.dd, align 8, !tbaa !586 ; 5 uses
  %i.ds = ptrtoint ptr %i.dn to i64
  %i.dt = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 3 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775792
  br i1 %i.dv, label %bb.u, label %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #36
  unreachable

_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.dw = ashr exact i64 %i.du, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 576460752303423487)
  %i.ea = select i1 %i.dy, i64 576460752303423487, i64 %i.dz ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ea, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.eb = shl nuw nsw i64 %i.ea, 4
  %i.ec = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #37 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.du ; 2 uses
  store ptr %i.dj, ptr %i.ed, align 8, !tbaa !383
  %.sroa.5.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %i.dl, ptr %.sroa.5.0..sroa_idx24, align 8, !tbaa !169
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.dr, %i.dn
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i ], [ %i.ec, %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i ], [ %i.dr, %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !531, !alias.scope !1062
  %i.ee = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ee, %i.dn
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1047

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ec, %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ef, %.lr.ph.i.i.i.i.i.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.eh = load ptr, ptr %i.do, align 8, !tbaa !587
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %i.dt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.ej) #38
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.v, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.ec, ptr %i.dd, align 8, !tbaa !586
  store ptr %i.eg, ptr %i.dm, align 8, !tbaa !1057
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %i.ea
  store ptr %i.ek, ptr %i.do, align 8, !tbaa !587
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE9push_backERKS1_.exit

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.i, %.noexc.i, %.noexc9.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 32) #38
  resume { ptr, i32 } %lpad.thr_comm

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.s, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb12MergeContext10InitializeEv(ptr noundef nonnull align 8 dereferenceable(25) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !602
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EES7_ISB_EE5resetEPSB_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #37 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !602  ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !602
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrISt6vectorIN7rocksdb5SliceESaIS2_EESt14default_deleteIS4_EE5resetEPS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !586  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorIN7rocksdb5SliceESaIS2_EEEclEPS4_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !587
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #38
  br label %_ZNKSt14default_deleteISt6vectorIN7rocksdb5SliceESaIS2_EEEclEPS4_.exit.i.i

_ZNKSt14default_deleteISt6vectorIN7rocksdb5SliceESaIS2_EEEclEPS4_.exit.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #38
  br label %_ZNSt10unique_ptrISt6vectorIN7rocksdb5SliceESaIS2_EESt14default_deleteIS4_EE5resetEPS4_.exit

_ZNSt10unique_ptrISt6vectorIN7rocksdb5SliceESaIS2_EESt14default_deleteIS4_EE5resetEPS4_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteISt6vectorIN7rocksdb5SliceESaIS2_EEEclEPS4_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #37 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !606  ; 6 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !606
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt10unique_ptrISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EES7_ISB_EE5resetEPSB_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrISt6vectorIN7rocksdb5SliceESaIS2_EESt14default_deleteIS4_EE5resetEPS4_.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !612  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !609  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.n, %bb.e ] ; 2 uses
  %i.q = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !611 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.u = load i64, ptr %i.s, align 8, !tbaa !55
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 32) #38
  br label %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i2 = icmp eq ptr %i.w, %i.p
  br i1 %.not.i.i.i.i.i.i2, label %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1063

_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !612
  br label %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.e
  %i.x = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.n, %bb.e ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS7_EESaIS9_EEEclEPSB_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !610
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #38
  br label %_ZNKSt14default_deleteISt6vectorISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS7_EESaIS9_EEEclEPSB_.exit.i.i

_ZNKSt14default_deleteISt6vectorISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS7_EESaIS9_EEEclEPSB_.exit.i.i: ; preds = %bb.g, %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 24) #38
  br label %_ZNSt10unique_ptrISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EES7_ISB_EE5resetEPSB_.exit

_ZNSt10unique_ptrISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EES7_ISB_EE5resetEPSB_.exit: ; preds = %_ZNKSt14default_deleteISt6vectorISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS7_EESaIS9_EEEclEPSB_.exit.i.i, %_ZNSt10unique_ptrISt6vectorIN7rocksdb5SliceESaIS2_EESt14default_deleteIS4_EE5resetEPS4_.exit, %bb.a
  ret void
}

declare void @_ZN7rocksdb11MergeHelper18TimedFullMergeImplEPKNS_13MergeOperatorERKNS_5SliceEOSt7variantIJSt9monostateS4_St6vectorINS_10WideColumnESaISA_EEEERKS9_IS4_SaIS4_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNS1_14OpFailureScopeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZN7rocksdb23WideColumnSerialization33ResolveDefaultColumnBlobReferenceERKNS_5SliceES3_PKNS_11BlobFetcherERNS_13PinnableSliceE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(89)) local_unnamed_addr #6

declare void @_ZN7rocksdb23WideColumnSerialization21ResolveEntityForMergeERKNS_5SliceES3_PKNS_11BlobFetcherEPNS_24PrefetchBufferCollectionERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS1_(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_16WideBaseValueTagESH_RKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::unique_ptr.271", align 8 ; 5 uses
  %13 = alloca %"class.std::variant", align 16    ; 11 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.std::vector.360", align 16 ; 12 uses
  %16 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  %i.a = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 4 uses
  store i8 0, ptr %i.a, align 8, !tbaa !605
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !531
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  invoke void @_ZN7rocksdb23WideColumnSerialization11DeserializeERKNS_5SliceERSt6vectorINS_10WideColumnESaIS5_EEPS4_ISt4pairImNS_9BlobIndexEESaISB_EE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef null)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %16, align 8, !tbaa !382
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %_ZNSt7variantIJSt9monostateN7rocksdb5SliceESt6vectorINS1_10WideColumnESaIS4_EEEEaSIS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_S2_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %17 = load <4 x i8>, ptr %16, align 8, !tbaa !55
  store <4 x i8> %17, ptr %0, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %16, i64 4
  %18 = load i8, ptr %i.e, align 4, !tbaa !524, !range !104, !noundef !105
  store i8 %18, ptr %i.d, align 4, !tbaa !524
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.g = getelementptr inbounds nuw i8, ptr %16, i64 5
  %i.h = load i8, ptr %i.g, align 1, !tbaa !523
  store i8 %i.h, ptr %i.f, align 1, !tbaa !523
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.j = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !383  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2ERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.271") align 8 %12, ptr noundef nonnull %i.k)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !383
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %.body

_ZN7rocksdb6StatusC2ERKS0_.exit:                  ; preds = %bb.c, %bb.e
  %storemerge = phi ptr [ %.pre.i, %bb.e ], [ null, %bb.c ]
  store ptr %storemerge, ptr %i.i, align 8, !tbaa !383
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.h:                                             ; preds = %_ZNSt7variantIJSt9monostateN7rocksdb5SliceESt6vectorINS1_10WideColumnESaIS4_EEEEaSIS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_S2_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.l, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !383  ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.p, null
  br i1 %.not.i.i14, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i15

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i15: ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.p) #38
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZNSt7variantIJSt9monostateN7rocksdb5SliceESt6vectorINS1_10WideColumnESaIS4_EEEEaSIS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_S2_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit: ; preds = %bb.b
  %i.q = load <2 x ptr>, ptr %15, align 16, !tbaa !552
  store <2 x ptr> %i.q, ptr %13, align 16, !tbaa !552
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !600
  store ptr %i.t, ptr %i.r, align 16, !tbaa !600
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  store i8 2, ptr %i.a, align 8, !tbaa !605
  invoke void @_ZN7rocksdb11MergeHelper18TimedFullMergeImplEPKNS_13MergeOperatorERKNS_5SliceEOSt7variantIJSt9monostateS4_St6vectorINS_10WideColumnESaISA_EEEERKS9_IS4_SaIS4_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNS1_14OpFailureScopeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8, ptr noundef %9, ptr noundef %10, ptr noundef %11)
          to label %bb.i unwind label %bb.h

bb.i:                                             ; preds = %_ZN7rocksdb6StatusC2ERKS0_.exit, %_ZNSt7variantIJSt9monostateN7rocksdb5SliceESt6vectorINS1_10WideColumnESaIS4_EEEEaSIS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_S2_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !383  ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.v, null
  br i1 %.not.i.i16, label %_ZN7rocksdb6StatusD2Ev.exit18, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i17

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i17: ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.v) #38
  br label %_ZN7rocksdb6StatusD2Ev.exit18

_ZN7rocksdb6StatusD2Ev.exit18:                    ; preds = %bb.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  %i.w = load ptr, ptr %15, align 16, !tbaa !599  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit18
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !600
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #38
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit18, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  %i.ac = load i8, ptr %i.a, align 8, !tbaa !605
  %i.ad = icmp eq i8 %i.ac, 2
  br i1 %i.ad, label %bb.k, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit

bb.k:                                             ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit
  %i.ae = load ptr, ptr %13, align 16, !tbaa !599 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !600
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #38
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit: ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  ret void

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i15, %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  %i.ak = load ptr, ptr %15, align 16, !tbaa !599 ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit20, label %bb.m

bb.m:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !600
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #38
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit20

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit20: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  %i.aq = load i8, ptr %i.a, align 8, !tbaa !605
  %i.ar = icmp eq i8 %i.aq, 2
  br i1 %i.ar, label %bb.n, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit22

bb.n:                                             ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit20
  %i.as = load ptr, ptr %13, align 16, !tbaa !599 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i21 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i21, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit22, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.au = load ptr, ptr %i.at, align 16, !tbaa !600
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #38
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit22

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit22: ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit20, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  resume { ptr, i32 } %.pn
}

declare void @_ZN7rocksdb23WideColumnSerialization11DeserializeERKNS_5SliceERSt6vectorINS_10WideColumnESaIS5_EEPS4_ISt4pairImNS_9BlobIndexEESaISB_EE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #6

declare void @_ZN7rocksdb19PinnableWideColumns21BuildColumnsForEntityEv(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

declare void @_ZN7rocksdb4port7RWMutex9WriteLockEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

declare void @_ZN7rocksdb12AllocTracker14DoneAllocatingEv(ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFN7rocksdb6StatusEPKcbESt5_BindIFMNS0_8MemTableEFS1_S3_bEPS6_St12_PlaceholderILi1EESA_ILi2EEEEE9_M_invokeERKSt9_Any_dataOS3_Ob(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !339    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !337, !noalias !1077
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !55, !noalias !1077 ; 3 uses
  %.elt4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.unpack5.i.i.i.i.i.i = load i64, ptr %.elt4.i.i.i.i.i.i, align 8, !tbaa !55, !noalias !1077
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack5.i.i.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !49, !noalias !1077
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1077, !nosanitize !105
  br label %_ZSt10__invoke_rIN7rocksdb6StatusERSt5_BindIFMNS0_8MemTableEFS1_PKcbEPS3_St12_PlaceholderILi1EES9_ILi2EEEEJS5_bEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i.i.i to ptr
  br label %_ZSt10__invoke_rIN7rocksdb6StatusERSt5_BindIFMNS0_8MemTableEFS1_PKcbEPS3_St12_PlaceholderILi1EES9_ILi2EEEEJS5_bEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit

_ZSt10__invoke_rIN7rocksdb6StatusERSt5_BindIFMNS0_8MemTableEFS1_PKcbEPS3_St12_PlaceholderILi1EES9_ILi2EEEEJS5_bEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load ptr, ptr %2, align 8, !tbaa !383, !noalias !1077
  %i.m = load i8, ptr %3, align 1, !tbaa !440, !range !104, !noalias !1077, !noundef !105
  %i.n = trunc nuw i8 %i.m to i1
  tail call void %i.k(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 16 dereferenceable(10624) %i.d, ptr noundef %i.l, i1 noundef zeroext %i.n), !inline_history !1076
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/example?download=true
inline.NumInlined: 58056
inline.NumDeleted: 19618
loop-unroll.NumCompletelyUnrolled: 81
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN7cinatra16coro_http_serverD2Ev:bb.a
  unreachable

_ZNSt14_Function_baseD2Ev.exit17:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 888
  call void @_ZN7cinatra16coro_http_routerD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %i.bm) #45
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !303 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit17
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !295
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !303 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !295
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !303 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !295
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !303 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !295
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.cl) #45
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !521 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !522 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cn, %i.cp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ] ; 3 uses
  %i.cq = load ptr, ptr %.05.i.i.i, align 8, !tbaa !303 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !295
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #58
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.cv, %i.cp
  br i1 %.not.i.i.i27, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.cm, align 8, !tbaa !521
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.cw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !524
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #58
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.aa
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !303 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !295
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !303 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !295
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 464
  call void @_ZN4asio6detail14io_object_implINS0_22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEENS_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.do) #45
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !491 ; 8 uses
  %.not.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrISt5mutexLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.dr, align 8, !tbaa !480
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !481
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !279
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #45, !inline_history !9
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !279
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #45, !inline_history !9
  br label %_ZNSt12__shared_ptrISt5mutexLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !295
  %.not.i.i.i34 = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i34, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 8, !tbaa !296
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i = phi i32 [ %i.du, %bb.ae ], [ %i.ee, %bb.af ]
  %i.ef = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ef, label %bb.ag, label %_ZNSt12__shared_ptrISt5mutexLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !300

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #45
  br label %_ZNSt12__shared_ptrISt5mutexLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt5mutexLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ag
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 376
  call void @_ZNSt10_HashtableImSt4pairIKmSt10shared_ptrIN7cinatra20coro_http_connectionEEESaIS6_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.eg) #45
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @_ZNSt7promiseIvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.eh) #45
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 312
  call void @_ZNSt7promiseIvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ei) #45
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ej, align 8, !tbaa !502
  %.not.i35 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i35, label %_ZNSt6threadD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt12__shared_ptrISt5mutexLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZSt9terminatev() #57
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %_ZNSt12__shared_ptrISt5mutexLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !478, !range !518, !noundef !469
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ai, label %_ZNSt14_Optional_baseIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEELb0ELb0EED2Ev.exit

bb.ai:                                            ; preds = %_ZNSt6threadD2Ev.exit
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 0, ptr %i.ek, align 8, !tbaa !478
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !471
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke void @_ZN4asio6detail28reactive_socket_service_base7destroyERNS1_24base_implementation_typeE(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %i.eq)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !453
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !477
  invoke void %i.eu(ptr noundef nonnull align 8 dereferenceable(56) %i.er)
          to label %_ZNSt14_Optional_baseIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEELb0ELb0EED2Ev.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #57
  unreachable

bb.al:                                            ; preds = %bb.ai
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #57
  unreachable

_ZNSt14_Optional_baseIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6threadD2Ev.exit, %bb.aj
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !471
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN4asio6detail28reactive_socket_service_base7destroyERNS1_24base_implementation_typeE(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(16) %i.fc)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %_ZNSt14_Optional_baseIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEELb0ELb0EED2Ev.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !453
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !477
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(56) %i.fd)
          to label %_ZN4asio21basic_socket_acceptorINS_2ip3tcpENS_15any_io_executorEED2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #57
  unreachable

bb.ao:                                            ; preds = %_ZNSt14_Optional_baseIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEELb0ELb0EED2Ev.exit
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #57
  unreachable

_ZN4asio21basic_socket_acceptorINS_2ip3tcpENS_15any_io_executorEED2Ev.exit: ; preds = %bb.am
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !303 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZN4asio21basic_socket_acceptorINS_2ip3tcpENS_15any_io_executorEED2Ev.exit
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !295
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZN4asio21basic_socket_acceptorINS_2ip3tcpENS_15any_io_executorEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !449 ; 3 uses
  %.not.i39 = icmp eq ptr %i.fs, null
  br i1 %.not.i39, label %_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit, label %_ZNKSt14default_deleteIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEEclEPS7_.exit.i

_ZNKSt14default_deleteIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEEclEPS7_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !279
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(56) %i.fs) #45, !inline_history !1
  br label %_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit

_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt14default_deleteIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEEclEPS7_.exit.i
  %i.fw = load ptr, ptr %0, align 8, !tbaa !327   ; 3 uses
  %.not.i40 = icmp eq ptr %i.fw, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN7coro_io15io_context_poolESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7coro_io15io_context_poolEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7coro_io15io_context_poolEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit
  call void @_ZN7coro_io15io_context_poolD2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %i.fw) #45
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef 120) #58
  br label %_ZNSt10unique_ptrIN7coro_io15io_context_poolESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7coro_io15io_context_poolESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS7_EED2Ev.exit, %_ZNKSt14default_deleteIN7coro_io15io_context_poolEEclEPS1_.exit.i
  ret void

bb.ap:                                            ; preds = %bb.t, %bb.n, %bb.l, %bb.u, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.j, %bb.s, %bb.ap, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.m, %bb.j ], [ %i.fx, %bb.ap ], [ %i.an, %bb.s ]
  %i.fy = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.fy) #57
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail11LazyPromiseIvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %2) #45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #45
  %i.b = load ptr, ptr %2, align 8, !tbaa !591
  store ptr null, ptr %2, align 8, !tbaa !591
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !591  ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !591
  store ptr %i.b, ptr %i.a, align 8, !tbaa !591
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #45
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.a
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #45
  %.pr = load ptr, ptr %2, align 8, !tbaa !591
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #45
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #45
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: coro_only_destroy_when_complete mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @_Z15chunked_upload1RN7cinatra16coro_http_clientE(ptr dead_on_unwind nofree writable writeonly sret(%"class.async_simple::coro::Lazy.217") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(4448) %1) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(968) ptr @_ZnamRKSt9nothrow_t(i64 noundef 968, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #62 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.c, align 1
  store ptr @_Z15chunked_upload1RN7cinatra16coro_http_clientE.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_Z15chunked_upload1RN7cinatra16coro_http_clientE.destroy, ptr %destroy.addr, align 8
  %.reload.addr175 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 944
  store ptr %1, ptr %.spill.addr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.reload.addr175, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i8 0, ptr %i.d, align 8, !tbaa !588
  store ptr %i.a, ptr %0, align 8, !tbaa !325, !alias.scope !4238
  %index.addr176 = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  store i8 0, ptr %index.addr176, align 8
  br label %AfterCoroEnd

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !325, !alias.scope !4239
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7coro_io19basic_seq_coro_fileILNS_14execution_typeE1EE4openESt17basic_string_viewIcSt11char_traitsIcEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(617) %0, i64 %1, ptr %2, i32 noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #45
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !299
  %i.b = icmp eq ptr %2, null
  %i.c = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.c, %i.b
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.990) #59
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 15
  br i1 %i.d, label %bb.c, label %._crit_edge.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !524
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #58
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrISt5mutexLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !491  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !480
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !481
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !279
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #45, !inline_history !12
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !279
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #45, !inline_history !12
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !295
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !296
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !300

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #45
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7promiseIvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.391", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !755    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt13__future_base12_Result_baseENS1_8_DeleterEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !491  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNKSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EE6uniqueEv.exit.thread, label %_ZNKSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EE6uniqueEv.exit

_ZNKSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EE6uniqueEv.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load atomic i32, ptr %i.d monotonic, align 8
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_ZNSt10unique_ptrINSt13__future_base12_Result_baseENS1_8_DeleterEED2Ev.exit, label %_ZNKSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EE6uniqueEv.exit.thread

_ZNKSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EE6uniqueEv.exit.thread: ; preds = %bb.b, %_ZNKSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EE6uniqueEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !493
  store ptr null, ptr %i.g, align 8, !tbaa !493
  store ptr %i.h, ptr %1, align 8, !tbaa !484
  invoke void @_ZNSt13__future_base13_State_baseV216_M_break_promiseESt10unique_ptrINS_12_Result_baseENS2_8_DeleterEE(ptr noundef nonnull align 8 dereferenceable(28) %i.a, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %_ZNKSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EE6uniqueEv.exit.thread
  %i.i = load ptr, ptr %1, align 8, !tbaa !756    ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt13__future_base12_Result_baseENS1_8_DeleterEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !279
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_ZNSt10unique_ptrINSt13__future_base12_Result_baseENS1_8_DeleterEED2Ev.exit unwind label %bb.e, !inline_history !24

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #57
  unreachable

_ZNSt10unique_ptrINSt13__future_base12_Result_baseENS1_8_DeleterEED2Ev.exit: ; preds = %bb.d, %bb.c, %_ZNKSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EE6uniqueEv.exit, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !493  ; 3 uses
  %.not.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrINSt13__future_base7_ResultIvEENS0_12_Result_base8_DeleterEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrINSt13__future_base12_Result_baseENS1_8_DeleterEED2Ev.exit
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !279
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %_ZNSt10unique_ptrINSt13__future_base7_ResultIvEENS0_12_Result_base8_DeleterEED2Ev.exit unwind label %bb.g, !inline_history !24

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #57
  unreachable

_ZNSt10unique_ptrINSt13__future_base7_ResultIvEENS0_12_Result_base8_DeleterEED2Ev.exit: ; preds = %_ZNSt10unique_ptrINSt13__future_base12_Result_baseENS1_8_DeleterEED2Ev.exit, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !491  ; 8 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrINSt13__future_base7_ResultIvEENS0_12_Result_base8_DeleterEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !480
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !481
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !279
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #45, !inline_history !25
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !279
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #45, !inline_history !25
  br label %_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !295
  %.not.i.i.i2 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !296
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !300

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #45
  br label %_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrINSt13__future_base7_ResultIvEENS0_12_Result_base8_DeleterEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  ret void

bb.n:                                             ; preds = %_ZNKSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EE6uniqueEv.exit.thread
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #57
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !478, !range !518, !noundef !469
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !478
  %i.d = load ptr, ptr %0, align 8, !tbaa !471
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4asio6detail28reactive_socket_service_base7destroyERNS1_24base_implementation_typeE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !453
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !477
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_ZNSt17_Optional_payloadIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEELb0ELb0ELb0EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #57
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #57
  unreachable

_ZNSt17_Optional_payloadIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio21basic_socket_acceptorINS_2ip3tcpENS_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !471
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4asio6detail28reactive_socket_service_base7destroyERNS1_24base_implementation_typeE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !453
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !477
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_ZN4asio6detail14io_object_implINS0_23reactive_socket_serviceINS_2ip3tcpEEENS_15any_io_executorEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #57
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #57
  unreachable

_ZN4asio6detail14io_object_implINS0_23reactive_socket_serviceINS_2ip3tcpEEENS_15any_io_executorEED2Ev.exit: ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN7coro_io15io_context_poolESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !327    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN7coro_io15io_context_poolEEclEPS1_.exit

_ZNKSt14default_deleteIN7coro_io15io_context_poolEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN7coro_io15io_context_poolD2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %i.a) #45
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #58
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN7coro_io15io_context_poolEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io15io_context_poolC2Emb(ptr noundef nonnull align 8 dereferenceable(113) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.351", align 16 ; 9 uses
  %4 = alloca %"class.std::shared_ptr.354", align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4473)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %i.d = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #60
          to label %.noexc unwind label %bb.g     ; 9 uses

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.f, align 8, !tbaa !480, !noalias !4473
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !481, !noalias !4473
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base13_State_baseV2ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !279, !noalias !4473
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt13__future_base13_State_baseV2E, i64 16), ptr %i.h, align 8, !tbaa !279, !noalias !4473
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !484, !noalias !4473
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 0, ptr %i.j, align 8, !tbaa !486, !noalias !4473
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i8 0, ptr %i.k, align 4, !tbaa !488, !noalias !4473
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 0, ptr %i.l, align 8, !tbaa !490, !noalias !4473
  store ptr %i.d, ptr %i.e, align 8, !tbaa !491, !alias.scope !4473
  store ptr %i.h, ptr %i.c, align 8, !tbaa !492, !alias.scope !4473
  %i.m = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #60
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %.noexc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  invoke void @_ZNSt13__future_base12_Result_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 16) #58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.n, %bb.c ]
  tail call void @_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %i.c) #45
  br label %.body

bb.f:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt13__future_base7_ResultIvEE, i64 16), ptr %i.m, align 16, !tbaa !279
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.m, ptr %i.p, align 8, !tbaa !493
  %i.q = zext i1 %2 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.r, align 8, !tbaa !505
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.s, align 4, !tbaa !490
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.q, ptr %i.t, align 8, !tbaa !771
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %1, i64 1) ; 2 uses
  %i.u = atomicrmw add ptr @_ZN7coro_io15io_context_pool17total_thread_num_E, i64 %spec.store.select seq_cst, align 8 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

bb.i:                                             ; preds = %bb.f, %_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.067 = phi i64 [ 0, %bb.f ], [ %i.fa, %_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  %i.ae = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #60
          to label %bb.j unwind label %bb.ax      ; 7 uses

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4asio10io_contextC2Ei(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i32 noundef 1)
          to label %bb.k unwind label %bb.ay

bb.k:                                             ; preds = %bb.j
  store ptr %i.ae, ptr %3, align 16, !tbaa !773
  store ptr null, ptr %i.v, align 8, !tbaa !491
  %i.af = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #60
          to label %bb.p unwind label %bb.l       ; 5 uses

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = call ptr @__cxa_begin_catch(ptr %i.ah) #45 ; 0 uses
  call void @_ZN4asio17execution_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ae) #45
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 16) #58
  invoke void @__cxa_rethrow() #59
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
end_hunk_1
begin_hunk_2_@_ZN7cinatra16coro_http_server6listenEv:bb.a

bb.ep:                                            ; preds = %bb.eo
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.eq unwind label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.qv = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #45 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit264

bb.er:                                            ; preds = %bb.ep
  %i.qw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  br label %common.resume

_ZN7easylog6loggerILm0EE8instanceEv.exit264:      ; preds = %bb.en, %bb.eo, %bb.eq
  %i.qx = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.qy = icmp slt i32 %i.qx, 6
  br i1 %i.qy, label %bb.eu, label %bb.fe

bb.es:                                            ; preds = %_ZN4asio21basic_socket_acceptorINS_2ip3tcpENS_15any_io_executorEE12get_executorEv.exit260
  %i.qz = landingpad { ptr, i32 }
          cleanup
  %i.ra = load ptr, ptr %i.pr, align 8, !tbaa !453
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !477
  invoke void %i.rb(ptr noundef nonnull align 8 dereferenceable(56) %20)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit265 unwind label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.rc = landingpad { ptr, i32 }
          catch ptr null
  %i.rd = extractvalue { ptr, i32 } %i.rc, 0
  call void @__clang_call_terminate(ptr %i.rd) #57
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit265: ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #45
  br label %bb.gw

bb.eu:                                            ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit264
  %i.re = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #45 ; 2 uses
  %i.rf = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv() ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8 ; 2 uses
  %i.rh = load atomic i64, ptr %i.rg monotonic, align 8
  %i.ri = icmp slt i64 %i.rh, 1
  br i1 %i.ri, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit268.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit268

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit268: ; preds = %bb.eu
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rf, i64 24
  %.sroa.0.0.copyload.i2.i.i266 = load i64, ptr %i.rj, align 8, !tbaa !502
  %i.rk = sub nsw i64 %i.re, %.sroa.0.0.copyload.i2.i.i266
  %i.rl = sdiv i64 %i.rk, 1000000
  %i.rm = load atomic i64, ptr %i.rg monotonic, align 8
  %i.rn = srem i64 %i.rl, %i.rm
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %i.rp = load atomic i64, ptr %i.ro monotonic, align 8
  %i.rq = icmp slt i64 %i.rn, %i.rp
  br i1 %i.rq, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit268.thread, label %bb.fe

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit268.thread: ; preds = %bb.eu, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit268
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #45
  store i8 91, ptr %23, align 1, !alias.scope !5093
  %.sroa.0.i.sroa.4.0..sroa_idx.i269 = getelementptr inbounds nuw i8, ptr %23, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.i.sroa.4.0..sroa_idx.i269, ptr noundef nonnull align 1 dereferenceable(24) @__const._ZZN7cinatra16coro_http_server6listenEvENKUlvE3_clEv.prefix, i64 24, i1 false), !tbaa.struct !516
  %.sroa.0.i.sroa.5.0..sroa_idx.i270 = getelementptr inbounds nuw i8, ptr %23, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i270, ptr noundef nonnull align 1 dereferenceable(3) @.str.1041, i64 3, i1 false), !tbaa.struct !517
  call void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %22, i64 %i.re, i32 noundef 5, i64 27, ptr nonnull %23)
  %i.rr = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA26_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %22, ptr noundef nonnull align 1 dereferenceable(26) @.str.1036)
          to label %bb.ev unwind label %bb.fa

bb.ev:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit268.thread
  %i.rs = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA9_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.rr, ptr noundef nonnull align 1 dereferenceable(9) @.str.1033)
          to label %bb.ew unwind label %bb.fa

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #45
  %i.rt = load ptr, ptr %i.qr, align 8, !tbaa !279, !noalias !5094
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 32
  %i.rv = load ptr, ptr %i.ru, align 8, !noalias !5094
  invoke void %i.rv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(8) %i.qr, i32 noundef %i.qq)
          to label %_ZNKSt10error_code7messageB5cxx11Ev.exit273 unwind label %bb.fb, !inline_history !30

_ZNKSt10error_code7messageB5cxx11Ev.exit273:      ; preds = %bb.ew
  %i.rw = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.rs, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.ex unwind label %bb.fc

bb.ex:                                            ; preds = %_ZNKSt10error_code7messageB5cxx11Ev.exit273
  %i.rx = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.ey unwind label %bb.fc

bb.ey:                                            ; preds = %bb.ex
  %i.ry = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !518, !noundef !469
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit275, label %bb.ez, !prof !300

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) %i.rx, ptr noundef nonnull align 8 dereferenceable(80) %i.rw)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit275 unwind label %bb.fc

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit275: ; preds = %bb.ey, %bb.ez
  %i.sa = load ptr, ptr %24, align 8, !tbaa !303  ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.sc = icmp eq ptr %i.sa, %i.sb
  br i1 %i.sc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit275
  %i.sd = load i64, ptr %i.sb, align 8, !tbaa !295
  %i.se = add i64 %i.sd, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.se) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit275, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #45
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %22) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #45
  br label %bb.fe

bb.fa:                                            ; preds = %bb.ev, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit268.thread
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fb:                                            ; preds = %bb.ew
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

bb.fc:                                            ; preds = %bb.ez, %bb.ex, %_ZNKSt10error_code7messageB5cxx11Ev.exit273
  %i.sh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.si = load ptr, ptr %24, align 8, !tbaa !303  ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.sk = icmp eq ptr %i.si, %i.sj
  br i1 %i.sk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %bb.fc
  %i.sl = load i64, ptr %i.sj, align 8, !tbaa !295
  %i.sm = add i64 %i.sl, 1
  call void @_ZdlPvm(ptr noundef %i.si, i64 noundef %i.sm) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279, %bb.fb
  %.pn58 = phi { ptr, i32 } [ %i.sg, %bb.fb ], [ %i.sh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279 ], [ %i.sh, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #45
  br label %bb.fd

bb.fd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, %bb.fa
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ], [ %i.sf, %bb.fa ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %22) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #45
  br label %bb.gw

bb.fe:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit268, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, %_ZN7easylog6loggerILm0EE8instanceEv.exit264
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #45
  store i32 0, ptr %1, align 8, !tbaa !440
  %i.sn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.bf, ptr %i.sn, align 8, !tbaa !441
  %i.so = load i32, ptr %i.lo, align 8, !tbaa !474 ; 2 uses
  %.not.i.i.i282 = icmp eq i32 %i.so, -1
  br i1 %.not.i.i.i282, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  %i.sp = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.sq = icmp eq i8 %i.sp, 0
  br i1 %i.sq, label %bb.fg, label %_ZN7coro_io6detail18close_acceptor_nowERN4asio21basic_socket_acceptorINS1_2ip3tcpENS1_15any_io_executorEEE.exit, !prof !274

bb.fg:                                            ; preds = %bb.ff
  %i.sr = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #45
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.sr, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7coro_io6detail18close_acceptor_nowERN4asio21basic_socket_acceptorINS1_2ip3tcpENS1_15any_io_executorEEE.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ss = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #45 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #45
  br label %_ZN7coro_io6detail18close_acceptor_nowERN4asio21basic_socket_acceptorINS1_2ip3tcpENS1_15any_io_executorEEE.exit

bb.fi:                                            ; preds = %bb.fe
  %i.st = load ptr, ptr %i.bg, align 8, !tbaa !471
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 40
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !1126, !nonnull !469, !align !470
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZN4asio6detail13epoll_reactor10cancel_opsEiRPNS1_16descriptor_stateE(ptr noundef nonnull align 8 dereferenceable(216) %i.sv, i32 noundef %i.so, ptr noundef nonnull align 8 dereferenceable(8) %i.sw)
  br label %_ZN7coro_io6detail18close_acceptor_nowERN4asio21basic_socket_acceptorINS1_2ip3tcpENS1_15any_io_executorEEE.exit

_ZN7coro_io6detail18close_acceptor_nowERN4asio21basic_socket_acceptorINS1_2ip3tcpENS1_15any_io_executorEEE.exit: ; preds = %bb.ff, %bb.fg, %bb.fh, %bb.fi
  %.sink18.i.i.i = phi i32 [ 0, %bb.fi ], [ 9, %bb.ff ], [ 9, %bb.fg ], [ 9, %bb.fh ]
  %.sink.i.i.i = phi ptr [ %i.bf, %bb.fi ], [ @_ZZN4asio15system_categoryEvE8instance, %bb.ff ], [ @_ZZN4asio15system_categoryEvE8instance, %bb.fg ], [ @_ZZN4asio15system_categoryEvE8instance, %bb.fh ]
  store i32 %.sink18.i.i.i, ptr %1, align 8, !tbaa !296
  store ptr %.sink.i.i.i, ptr %i.sn, align 8, !tbaa !528
  %i.sx = load ptr, ptr %i.bg, align 8, !tbaa !471
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 40
  %i.sz = call { i32, ptr } @_ZN4asio6detail28reactive_socket_service_base5closeERNS1_24base_implementation_typeERSt10error_code(ptr noundef nonnull align 8 dereferenceable(24) %i.sy, ptr noundef nonnull align 8 dereferenceable(16) %i.lo, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #45
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.tb = load i8, ptr %i.ta, align 8, !tbaa !478, !range !518, !noundef !469
  %i.tc = trunc nuw i8 %i.tb to i1
  br i1 %i.tc, label %bb.fj, label %_ZNSt8optionalIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEEE5resetEv.exit

bb.fj:                                            ; preds = %_ZN7coro_io6detail18close_acceptor_nowERN4asio21basic_socket_acceptorINS1_2ip3tcpENS1_15any_io_executorEEE.exit
  store i8 0, ptr %i.ta, align 8, !tbaa !478
  %i.td = load ptr, ptr %i.pq, align 8, !tbaa !471
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 40
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke void @_ZN4asio6detail28reactive_socket_service_base7destroyERNS1_24base_implementation_typeE(ptr noundef nonnull align 8 dereferenceable(24) %i.te, ptr noundef nonnull align 8 dereferenceable(16) %i.tf)
          to label %bb.fk unwind label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !453
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !477
  invoke void %i.tj(ptr noundef nonnull align 8 dereferenceable(56) %i.tg)
          to label %_ZNSt8optionalIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEEE5resetEv.exit unwind label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.tk = landingpad { ptr, i32 }
          catch ptr null
  %i.tl = extractvalue { ptr, i32 } %i.tk, 0
  call void @__clang_call_terminate(ptr %i.tl) #57
  unreachable

bb.fm:                                            ; preds = %bb.fj
  %i.tm = landingpad { ptr, i32 }
          catch ptr null
  %i.tn = extractvalue { ptr, i32 } %i.tm, 0
  call void @__clang_call_terminate(ptr %i.tn) #57
  unreachable

bb.fn:                                            ; preds = %_ZN7coro_io6detail22make_ipv4_any_endpointEt.exit
  br i1 %i.qt, label %bb.fo, label %_ZN7easylog6loggerILm0EE8instanceEv.exit284, !prof !274

bb.fo:                                            ; preds = %bb.fn
  %i.to = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  %.not.i283 = icmp eq i32 %i.to, 0
  br i1 %.not.i283, label %_ZN7easylog6loggerILm0EE8instanceEv.exit284, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.fq unwind label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.tp = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #45 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit284

bb.fr:                                            ; preds = %bb.fp
  %i.tq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  br label %common.resume

_ZN7easylog6loggerILm0EE8instanceEv.exit284:      ; preds = %bb.fn, %bb.fo, %bb.fq
  %i.tr = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.ts = icmp slt i32 %i.tr, 4
  br i1 %i.ts, label %bb.fs, label %bb.fz

bb.fs:                                            ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit284
  %i.tt = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #45 ; 2 uses
  %i.tu = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv() ; 3 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 8 ; 2 uses
  %i.tw = load atomic i64, ptr %i.tv monotonic, align 8
  %i.tx = icmp slt i64 %i.tw, 1
  br i1 %i.tx, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit287.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit287

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit287: ; preds = %bb.fs
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 24
  %.sroa.0.0.copyload.i2.i.i285 = load i64, ptr %i.ty, align 8, !tbaa !502
  %i.tz = sub nsw i64 %i.tt, %.sroa.0.0.copyload.i2.i.i285
  %i.ua = sdiv i64 %i.tz, 1000000
  %i.ub = load atomic i64, ptr %i.tv monotonic, align 8
  %i.uc = srem i64 %i.ua, %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.ue = load atomic i64, ptr %i.ud monotonic, align 8
  %i.uf = icmp slt i64 %i.uc, %i.ue
  br i1 %i.uf, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit287.thread, label %bb.fz

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit287.thread: ; preds = %bb.fs, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit287
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #45
  store i8 91, ptr %26, align 1, !alias.scope !5095
  %.sroa.0.i.sroa.4.0..sroa_idx.i288 = getelementptr inbounds nuw i8, ptr %26, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.i.sroa.4.0..sroa_idx.i288, ptr noundef nonnull align 1 dereferenceable(24) @__const._ZZN7cinatra16coro_http_server6listenEvENKUlvE4_clEv.prefix, i64 24, i1 false), !tbaa.struct !516
  %.sroa.0.i.sroa.5.0..sroa_idx.i289 = getelementptr inbounds nuw i8, ptr %26, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i289, ptr noundef nonnull align 1 dereferenceable(3) @.str.1041, i64 3, i1 false), !tbaa.struct !517
  call void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %25, i64 %i.tt, i32 noundef 3, i64 27, ptr nonnull %26)
  %i.ug = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA18_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %25, ptr noundef nonnull align 1 dereferenceable(18) @.str.1037)
          to label %bb.ft unwind label %bb.fy

bb.ft:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit287.thread
  %i.uh = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsItEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ug, ptr noundef nonnull align 2 dereferenceable(2) %i.bw)
          to label %bb.fu unwind label %bb.fy

bb.fu:                                            ; preds = %bb.ft
  %i.ui = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA14_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.uh, ptr noundef nonnull align 1 dereferenceable(14) @.str.1038)
          to label %bb.fv unwind label %bb.fy

bb.fv:                                            ; preds = %bb.fu
  %i.uj = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.fw unwind label %bb.fy

bb.fw:                                            ; preds = %bb.fv
  %i.uk = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !518, !noundef !469
  %i.ul = trunc nuw i8 %i.uk to i1
  br i1 %i.ul, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit292, label %bb.fx, !prof !300

bb.fx:                                            ; preds = %bb.fw
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) %i.uj, ptr noundef nonnull align 8 dereferenceable(80) %i.ui)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit292 unwind label %bb.fy

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit292: ; preds = %bb.fw, %bb.fx
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %25) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #45
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fx, %bb.fv, %bb.fu, %bb.ft, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit287.thread
  %i.um = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %25) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #45
  br label %bb.gw

bb.fz:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit287, %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit292, %_ZN7easylog6loggerILm0EE8instanceEv.exit284, %bb.eg
  %i.un = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.uo = icmp eq i8 %i.un, 0
  br i1 %i.uo, label %bb.ga, label %_ZN7easylog6loggerILm0EE8instanceEv.exit294, !prof !274

bb.ga:                                            ; preds = %bb.fz
  %i.up = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  %.not.i293 = icmp eq i32 %i.up, 0
  br i1 %.not.i293, label %_ZN7easylog6loggerILm0EE8instanceEv.exit294, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.gc unwind label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.uq = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #45 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit294

bb.gd:                                            ; preds = %bb.gb
  %i.ur = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  br label %common.resume

_ZN7easylog6loggerILm0EE8instanceEv.exit294:      ; preds = %bb.fz, %bb.ga, %bb.gc
  %i.us = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.ut = icmp slt i32 %i.us, 4
  br i1 %i.ut, label %bb.ge, label %_ZNSt8optionalIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEEE5resetEv.exit

bb.ge:                                            ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit294
  %i.uu = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #45 ; 2 uses
  %i.uv = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.uw = icmp eq i8 %i.uv, 0
  br i1 %i.uw, label %bb.gf, label %_ZN7easylog6loggerILm0EE8instanceEv.exit296, !prof !274

bb.gf:                                            ; preds = %bb.ge
  %i.ux = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  %.not.i295 = icmp eq i32 %i.ux, 0
  br i1 %.not.i295, label %_ZN7easylog6loggerILm0EE8instanceEv.exit296, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.gh unwind label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.uy = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #45 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit296

bb.gi:                                            ; preds = %bb.gg
  %i.uz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  br label %common.resume

_ZN7easylog6loggerILm0EE8instanceEv.exit296:      ; preds = %bb.ge, %bb.gf, %bb.gh
  %i.va = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.vb = icmp slt i64 %i.va, 1
  br i1 %i.vb, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit299.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit299

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit299: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit296
  %.sroa.0.0.copyload.i2.i.i297 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 24), align 8, !tbaa !502
  %i.vc = sub nsw i64 %i.uu, %.sroa.0.0.copyload.i2.i.i297
  %i.vd = sdiv i64 %i.vc, 1000000
  %i.ve = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.vf = srem i64 %i.vd, %i.ve
  %i.vg = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 16) monotonic, align 8
  %i.vh = icmp slt i64 %i.vf, %i.vg
  br i1 %i.vh, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit299.thread, label %_ZNSt8optionalIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEEE5resetEv.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit299.thread: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit296, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit299
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #45
  store i8 91, ptr %28, align 1, !alias.scope !5096
  %.sroa.0.i.sroa.4.0..sroa_idx.i300 = getelementptr inbounds nuw i8, ptr %28, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.i.sroa.4.0..sroa_idx.i300, ptr noundef nonnull align 1 dereferenceable(24) @__const._ZZN7cinatra16coro_http_server6listenEvENKUlvE5_clEv.prefix, i64 24, i1 false), !tbaa.struct !516
end_hunk_2
begin_hunk_3_@_ZN7easylog8record_tlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_:bb.a
  %i.g = sub i64 9223372036854775807, %i.f
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.992) #59
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.i = add i64 %i.f, %i.d                       ; 3 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !303  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.m = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.n = load i64, ptr %i.k, align 8, !tbaa !295
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.o = phi i64 [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.i, %i.o
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f ; 2 uses
  %cond.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.b, align 1, !tbaa !295
  store i8 %i.q, ptr %i.p, align 1, !tbaa !295
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.f, i64 noundef 0, ptr noundef %i.b, i64 noundef %i.d)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.i, ptr %i.e, align 8, !tbaa !304
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !303
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i
  store i8 0, ptr %i.s, align 1, !tbaa !295
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA9_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(9) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #45 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !304  ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.992) #59
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !303  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.l = load i64, ptr %i.i, align 8, !tbaa !295
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.g, %i.m
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.b, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i = icmp eq i64 %i.b, 1
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %1, align 1, !tbaa !295
  store i8 %i.o, ptr %i.n, align 1, !tbaa !295
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.b)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !304
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !303
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !295
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA26_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(26) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #45 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !304  ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.992) #59
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !303  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.l = load i64, ptr %i.i, align 8, !tbaa !295
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.g, %i.m
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.b, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i = icmp eq i64 %i.b, 1
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %1, align 1, !tbaa !295
  store i8 %i.o, ptr %i.n, align 1, !tbaa !295
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.b)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !304
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !303
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !295
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt8optionalIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEEE7emplaceIJS4_EEENSt9enable_ifIX18is_constructible_vIS5_DpT_EERS5_E4typeEDpOS9_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.asio::execution_context::service::key", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"struct.asio::execution::context_as_t", align 1 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !478, !range !518, !noundef !469
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt19_Optional_base_implIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 8, !tbaa !478
  %i.e = load ptr, ptr %0, align 8, !tbaa !471
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4asio6detail28reactive_socket_service_base7destroyERNS1_24base_implementation_typeE(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !453
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !477
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %_ZNSt19_Optional_base_implIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #57
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #57
  unreachable

_ZNSt19_Optional_base_implIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit: ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !794
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !455
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !964
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !453
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !965
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(56) %1), !inline_history !5122
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  call void %i.r(ptr noundef nonnull %i.a, ptr noundef %i.w, ptr noundef nonnull %3), !inline_history !5122
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !458  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  store ptr @_ZTIN4asio6detail14typeid_wrapperINS0_23reactive_socket_serviceINS_2ip3tcpEEEEE, ptr %2, align 8, !tbaa !462
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !463
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !468, !nonnull !469, !align !470
  %i.ac = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4asio6detail16service_registry14do_use_serviceERKNS_17execution_context7service3keyEPFPS3_PvES8_(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @_ZN4asio6detail16service_registry6createINS0_23reactive_socket_serviceINS_2ip3tcpEEENS_17execution_contextEEEPNS7_7serviceEPv, ptr noundef nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  store ptr %i.ac, ptr %0, align 8, !tbaa !471
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !453 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !453
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !452
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !452
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !473
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %_ZNSt19_Optional_base_implIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS4_EEEvDpOT_.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt19_Optional_base_implIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #57
  unreachable

_ZNSt19_Optional_base_implIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS4_EEEvDpOT_.exit: ; preds = %_ZNSt19_Optional_base_implIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !455
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !455
  store i32 -1, ptr %i.ao, align 8, !tbaa !474
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.ar, align 4, !tbaa !475
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.as, align 8, !tbaa !476
  store i8 1, ptr %i.b, align 8, !tbaa !478
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA14_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(14) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #45 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !304  ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.992) #59
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !303  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.l = load i64, ptr %i.i, align 8, !tbaa !295
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.g, %i.m
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.b, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i = icmp eq i64 %i.b, 1
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %1, align 1, !tbaa !295
  store i8 %i.o, ptr %i.n, align 1, !tbaa !295
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.b)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !304
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !303
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !295
  ret ptr %0
}

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.easylog::record_t", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !1073, !range !518, !noundef !469
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1075
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !5125 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !5125 ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZN7easylog6loggerILm0EE21apply_extra_appendersERNS_8record_tE.exit, label %.preheader.i, !prof !820

.preheader.i:                                     ; preds = %bb.c, %_ZNKSt8functionIFvRN7easylog8record_tEEEclES2_.exit.i
  %.sroa.05.08.i = phi ptr [ %i.o, %_ZNKSt8functionIFvRN7easylog8record_tEEEclES2_.exit.i ], [ %i.g, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !513
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt8functionIFvRN7easylog8record_tEEEclES2_.exit.i

bb.d:                                             ; preds = %.preheader.i
  tail call void @_ZSt25__throw_bad_function_callv() #59
  unreachable

_ZNKSt8functionIFvRN7easylog8record_tEEEclES2_.exit.i: ; preds = %.preheader.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !5127
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.08.i, ptr noundef nonnull align 8 dereferenceable(80) %1), !inline_history !5123
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 32 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.i
  br i1 %i.p, label %_ZN7easylog6loggerILm0EE21apply_extra_appendersERNS_8record_tE.exit, label %.preheader.i
end_hunk_3
begin_hunk_4_@_ZN7cinatra16coro_http_client14handle_chunkedISt17basic_string_viewIcSt11char_traitsIcEEEEN12async_simple4coro4LazyISt10error_codeEERNS_9resp_dataENS_11req_contextIT_EE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !299
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !303  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %.from.539, label %.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !325, !alias.scope !9849
  br label %AfterCoroEnd

.from.539:                                        ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !304  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %AfterCoroSuspend

.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit
  store ptr %i.h, ptr %i.e, align 8, !tbaa !303
  %i.o = load i64, ptr %i.i, align 8, !tbaa !295
  store i64 %i.o, ptr %i.g, align 8, !tbaa !295
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !304
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %.from.539, %.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.p = phi i64 [ %.pre, %.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.l, %.from.539 ]
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i64 %i.p, ptr %i.r, align 8, !tbaa !304
  store ptr %i.i, ptr %i.f, align 8, !tbaa !303
  store i64 0, ptr %i.q, align 8, !tbaa !304
  store i8 0, ptr %i.i, align 8, !tbaa !295
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr699, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.u, align 8, !tbaa !535
  store ptr %i.a, ptr %0, align 8, !tbaa !325, !alias.scope !9850
  %index.addr700 = getelementptr inbounds nuw i8, ptr %i.a, i64 285
  store i8 0, ptr %index.addr700, align 1
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %AfterCoroSuspend, %bb.b
  ret void
}

; Function Attrs: coro_only_destroy_when_complete mustprogress uwtable
define linkonce_odr dso_local void @_ZN7cinatra16coro_http_client16handle_multipartISt17basic_string_viewIcSt11char_traitsIcEEEEN12async_simple4coro4LazyISt10error_codeEERNS_9resp_dataENS_11req_contextIT_EE(ptr dead_on_unwind writable sret(%"class.async_simple::coro::Lazy.296") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4448) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr nofreeobj noundef align 8 dereferenceable(64) %3) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(736) ptr @_ZnamRKSt9nothrow_t(i64 noundef 736, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #62 ; 14 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 728
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.c, align 1
  store ptr @_ZN7cinatra16coro_http_client16handle_multipartISt17basic_string_viewIcSt11char_traitsIcEEEEN12async_simple4coro4LazyISt10error_codeEERNS_9resp_dataENS_11req_contextIT_EE.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN7cinatra16coro_http_client16handle_multipartISt17basic_string_viewIcSt11char_traitsIcEEEEN12async_simple4coro4LazyISt10error_codeEERNS_9resp_dataENS_11req_contextIT_EE.destroy, ptr %destroy.addr, align 8
  %.reload.addr359 = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %.reload.addr367 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 680
  store ptr %1, ptr %.spill.addr, align 8
  %i.d = load i32, ptr %3, align 8, !tbaa !3861
  store i32 %i.d, ptr %.reload.addr359, align 8, !tbaa !3861
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !299
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !303  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %.from.269, label %.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !325, !alias.scope !9855
  br label %AfterCoroEnd

.from.269:                                        ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !304  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %AfterCoroSuspend

.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit
  store ptr %i.h, ptr %i.e, align 8, !tbaa !303
  %i.o = load i64, ptr %i.i, align 8, !tbaa !295
  store i64 %i.o, ptr %i.g, align 8, !tbaa !295
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !304
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %.from.269, %.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.p = phi i64 [ %.pre, %.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.l, %.from.269 ]
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  store i64 %i.p, ptr %i.r, align 8, !tbaa !304
  store ptr %i.i, ptr %i.f, align 8, !tbaa !303
  store i64 0, ptr %i.q, align 8, !tbaa !304
  store i8 0, ptr %i.i, align 8, !tbaa !295
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr367, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.u, align 8, !tbaa !535
  store ptr %i.a, ptr %0, align 8, !tbaa !325, !alias.scope !9856
  %index.addr368 = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store i8 0, ptr %index.addr368, align 8
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %AfterCoroSuspend, %bb.b
  ret void
}

; Function Attrs: coro_only_destroy_when_complete mustprogress uwtable
define linkonce_odr dso_local void @_ZN7cinatra16coro_http_client21handle_entire_contentINS_11req_contextISt17basic_string_viewIcSt11char_traitsIcEEEEEEN12async_simple4coro4LazyIvEERNS_9resp_dataEmbRT_(ptr dead_on_unwind writable sret(%"class.async_simple::coro::Lazy") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4448) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 noundef %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(64) %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(128) ptr @_ZnamRKSt9nothrow_t(i64 noundef 128, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #62 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.c, align 1
  store ptr @_ZN7cinatra16coro_http_client21handle_entire_contentINS_11req_contextISt17basic_string_viewIcSt11char_traitsIcEEEEEEN12async_simple4coro4LazyIvEERNS_9resp_dataEmbRT_.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN7cinatra16coro_http_client21handle_entire_contentINS_11req_contextISt17basic_string_viewIcSt11char_traitsIcEEEEEEN12async_simple4coro4LazyIvEERNS_9resp_dataEmbRT_.destroy, ptr %destroy.addr, align 8
  %.reload.addr159 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr153 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %5, ptr %.spill.addr153, align 8
  %.spill.addr150 = getelementptr inbounds nuw i8, ptr %i.a, i64 117
  store i1 %4, ptr %.spill.addr150, align 1
  %.spill.addr141 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %3, ptr %.spill.addr141, align 8
  %.spill.addr132 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %2, ptr %.spill.addr132, align 8
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %1, ptr %.spill.addr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr159, i8 0, i64 32, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !325, !alias.scope !9861
  %index.addr160 = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store i8 0, ptr %index.addr160, align 4
  br label %AfterCoroEnd

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !325, !alias.scope !9862
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPN7cinatra11http_headerESt4spanIS3_Lm18446744073709551615EEEENS0_5__ops10_Iter_predIZNS2_16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRS3_E_EEET_SK_SK_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN7cinatra11http_headerESt4spanIS3_Lm18446744073709551615EEEENS0_5__ops10_Iter_predIZNS2_16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRS3_E_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2, ptr %3) ; 6 uses
  %i.b = icmp eq ptr %i.a, %1
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.07.021 = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = icmp eq ptr %.sroa.07.021, %1
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.07.026 = phi ptr [ %.sroa.07.021, %.lr.ph ], [ %.sroa.07.0, %bb.h ] ; 3 uses
  %.sroa.013.023 = phi ptr [ %i.a, %.lr.ph ], [ %.sroa.013.1, %bb.h ] ; 4 uses
  %.pn22 = phi ptr [ %i.a, %.lr.ph ], [ %.sroa.07.026, %bb.h ] ; 2 uses
  %i.d = load i8, ptr %2, align 1, !tbaa !592, !range !518, !noundef !469
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.pn22, i64 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %3, align 8, !tbaa !502 ; 5 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !593 ; 2 uses
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  %i.h = load i64, ptr %i.f, align 8, !tbaa !520  ; 4 uses
  br i1 %i.g, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread19, label %bb.d

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread19: ; preds = %bb.c
  store i8 1, ptr %2, align 1, !tbaa !592
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %.not.i.i.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.not.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn22, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1112 ; 3 uses
  %.not2531.i.i.i.i = icmp ult i64 %i.h, %.sroa.0.0.copyload.i.i
  br i1 %.not2531.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  %i.l = load i8, ptr %.sroa.2.0.copyload.i.i, align 1, !tbaa !295
  %i.m = sext i8 %i.l to i32
  %i.n = ptrtoint ptr %i.k to i64
  %invariant.op = sub i64 1, %.sroa.0.0.copyload.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.033.i.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i.i ], [ %i.t, %bb.g ]
  %.02032.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.r, %bb.g ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i.i.i, %invariant.op ; 2 uses
  %i.o = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.o, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.f
  %i.p = tail call ptr @memchr(ptr noundef %.02032.i.i.i.i, i32 noundef %i.m, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass) #45 ; 4 uses
  %.not26.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not26.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i)
  %i.q = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.n, %i.s                       ; 2 uses
  %.not25.i.i.i.i = icmp ult i64 %i.t, %.sroa.0.0.copyload.i.i
  br i1 %.not25.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread, label %bb.f, !llvm.loop !3

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = ptrtoint ptr %i.j to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ne i64 %i.w, -1                     ; 2 uses
  %i.y = zext i1 %i.x to i8
  store i8 %i.y, ptr %2, align 1, !tbaa !592
  br i1 %i.x, label %bb.h, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread: ; preds = %bb.g, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, %bb.f, %bb.e, %bb.d, %bb.b, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.013.023, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.026, i64 32, i1 false), !tbaa.struct !9864
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.023, i64 32
  br label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread19, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread
  %.sroa.013.1 = phi ptr [ %.sroa.013.023, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit ], [ %i.z, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread ], [ %.sroa.013.023, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread19 ] ; 2 uses
  %.sroa.07.0 = getelementptr inbounds nuw i8, ptr %.sroa.07.026, i64 32 ; 2 uses
  %i.aa = icmp eq ptr %.sroa.07.0, %1
  br i1 %i.aa, label %.loopexit, label %bb.b, !llvm.loop !9863

.loopexit:                                        ; preds = %bb.h, %.preheader, %bb.a
  %.sroa.013.2 = phi ptr [ %i.a, %bb.a ], [ %i.a, %.preheader ], [ %.sroa.013.1, %bb.h ]
  ret ptr %.sroa.013.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN7cinatra11http_headerESt4spanIS3_Lm18446744073709551615EEEENS0_5__ops10_Iter_predIZNS2_16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRS3_E_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr i64 %i.c, 7                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.pre = load i8, ptr %2, align 1, !tbaa !592, !range !518
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread
  %i.f = phi i8 [ %.pre, %.lr.ph ], [ %i.cm, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread ]
  %.0230 = phi i64 [ %i.d, %.lr.ph ], [ %i.co, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread ] ; 2 uses
  %.sroa.0145.0223 = phi ptr [ %0, %.lr.ph ], [ %i.cn, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread ] ; 17 uses
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0145.0223, i64 16
  %.sroa.0.0.copyload.i.i = load i64, ptr %3, align 8, !tbaa !502 ; 5 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !593 ; 2 uses
  %i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  %i.j = load i64, ptr %i.h, align 8, !tbaa !520  ; 4 uses
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread157, label %bb.d

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread157: ; preds = %bb.c
  store i8 1, ptr %2, align 1, !tbaa !592
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.not.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread155, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0145.0223, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1112 ; 3 uses
  %.not2531.i.i.i.i = icmp ult i64 %i.j, %.sroa.0.0.copyload.i.i
  br i1 %.not2531.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread155, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  %i.n = load i8, ptr %.sroa.2.0.copyload.i.i, align 1, !tbaa !295
  %i.o = sext i8 %i.n to i32
  %i.p = ptrtoint ptr %i.m to i64
  %invariant.op = sub i64 1, %.sroa.0.0.copyload.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.033.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i ], [ %i.v, %bb.g ]
  %.02032.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %i.t, %bb.g ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i.i.i, %invariant.op ; 2 uses
  %i.q = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread155, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.f
  %i.r = tail call ptr @memchr(ptr noundef %.02032.i.i.i.i, i32 noundef %i.o, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass) #45 ; 4 uses
  %.not26.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not26.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread155, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.r, ptr nonnull %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i)
  %i.s = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.s, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.p, %i.u                       ; 2 uses
  %.not25.i.i.i.i = icmp ult i64 %i.v, %.sroa.0.0.copyload.i.i
  br i1 %.not25.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread155, label %bb.f, !llvm.loop !3

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread155: ; preds = %bb.f, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, %bb.g, %bb.d, %bb.e
  store i8 0, ptr %2, align 1, !tbaa !592
  br label %bb.h

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = ptrtoint ptr %i.l to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ne i64 %i.y, -1                     ; 2 uses
  %i.aa = zext i1 %i.z to i8
  store i8 %i.aa, ptr %2, align 1, !tbaa !592
  br i1 %i.z, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread155, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0145.0223, i64 48
  %.sroa.0.0.copyload.i.i16 = load i64, ptr %3, align 8, !tbaa !502 ; 5 uses
  %.sroa.2.0.copyload.i.i18 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !593 ; 2 uses
  %i.ac = icmp eq i64 %.sroa.0.0.copyload.i.i16, 0
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !520 ; 4 uses
  br i1 %i.ac, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit34.thread162, label %bb.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit34.thread162: ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0145.0223, i64 32
  store i8 1, ptr %2, align 1, !tbaa !592
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  %.not.i.i.not.i.i19 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.not.i.i19, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit34.thread160, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0145.0223, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1112 ; 3 uses
  %.not2531.i.i.i.i20 = icmp ult i64 %i.ad, %.sroa.0.0.copyload.i.i16
  br i1 %.not2531.i.i.i.i20, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit34.thread160, label %.lr.ph.i.i.i.i21

.lr.ph.i.i.i.i21:                                 ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  %i.ai = load i8, ptr %.sroa.2.0.copyload.i.i18, align 1, !tbaa !295
  %i.aj = sext i8 %i.ai to i32
  %i.ak = ptrtoint ptr %i.ah to i64
  %invariant.op354 = sub i64 1, %.sroa.0.0.copyload.i.i16
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i21
  %.033.i.i.i.i22 = phi i64 [ %i.ad, %.lr.ph.i.i.i.i21 ], [ %i.aq, %bb.l ]
  %.02032.i.i.i.i23 = phi ptr [ %i.ag, %.lr.ph.i.i.i.i21 ], [ %i.ao, %bb.l ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i25.reass.reass.reass = add i64 %.033.i.i.i.i22, %invariant.op354 ; 2 uses
  %i.al = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i25.reass.reass.reass, 0
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit34.thread160, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i26

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i26: ; preds = %bb.k
  %i.am = tail call ptr @memchr(ptr noundef %.02032.i.i.i.i23, i32 noundef %i.aj, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i25.reass.reass.reass) #45 ; 4 uses
  %.not26.i.i.i.i27 = icmp eq ptr %i.am, null
  br i1 %.not26.i.i.i.i27, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit34.thread160, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i28

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i28: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i26
  %bcmp.i.i.i.i29 = tail call i32 @bcmp(ptr nonnull %i.am, ptr nonnull %.sroa.2.0.copyload.i.i18, i64 %.sroa.0.0.copyload.i.i16)
  %i.an = icmp eq i32 %bcmp.i.i.i.i29, 0
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit34, label %bb.l

bb.l:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ak, %i.ap                    ; 2 uses
  %.not25.i.i.i.i30 = icmp ult i64 %i.aq, %.sroa.0.0.copyload.i.i16
  br i1 %.not25.i.i.i.i30, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit34.thread160, label %bb.k, !llvm.loop !3

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit34.thread160: ; preds = %bb.k, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i26, %bb.l, %bb.i, %bb.j
  store i8 0, ptr %2, align 1, !tbaa !592
  br label %bb.m

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit34: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i28
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = ptrtoint ptr %i.ag to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ne i64 %i.at, -1                   ; 2 uses
  %i.av = zext i1 %i.au to i8
  store i8 %i.av, ptr %2, align 1, !tbaa !592
  br i1 %i.au, label %.loopexit.split.loop.exit211, label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit34, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit34.thread160
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0145.0223, i64 80
  %.sroa.0.0.copyload.i.i35 = load i64, ptr %3, align 8, !tbaa !502 ; 5 uses
  %.sroa.2.0.copyload.i.i37 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !593 ; 2 uses
  %i.ax = icmp eq i64 %.sroa.0.0.copyload.i.i35, 0
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !520 ; 4 uses
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit53.thread167, label %bb.n

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit53.thread167: ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0145.0223, i64 64
  store i8 1, ptr %2, align 1, !tbaa !592
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  %.not.i.i.not.i.i38 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.not.i.i38, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit53.thread165, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0145.0223, i64 88
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1112 ; 3 uses
  %.not2531.i.i.i.i39 = icmp ult i64 %i.ay, %.sroa.0.0.copyload.i.i35
  br i1 %.not2531.i.i.i.i39, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit53.thread165, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ay
  %i.bd = load i8, ptr %.sroa.2.0.copyload.i.i37, align 1, !tbaa !295
  %i.be = sext i8 %i.bd to i32
  %i.bf = ptrtoint ptr %i.bc to i64
  %invariant.op355 = sub i64 1, %.sroa.0.0.copyload.i.i35
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i.i.i40
  %.033.i.i.i.i41 = phi i64 [ %i.ay, %.lr.ph.i.i.i.i40 ], [ %i.bl, %bb.q ]
  %.02032.i.i.i.i42 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i40 ], [ %i.bj, %bb.q ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i44.reass.reass.reass = add i64 %.033.i.i.i.i41, %invariant.op355 ; 2 uses
  %i.bg = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i44.reass.reass.reass, 0
  br i1 %i.bg, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit53.thread165, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i45

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i45: ; preds = %bb.p
  %i.bh = tail call ptr @memchr(ptr noundef %.02032.i.i.i.i42, i32 noundef %i.be, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i44.reass.reass.reass) #45 ; 4 uses
  %.not26.i.i.i.i46 = icmp eq ptr %i.bh, null
  br i1 %.not26.i.i.i.i46, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit53.thread165, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i47

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i47: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i45
  %bcmp.i.i.i.i48 = tail call i32 @bcmp(ptr nonnull %i.bh, ptr nonnull %.sroa.2.0.copyload.i.i37, i64 %.sroa.0.0.copyload.i.i35)
  %i.bi = icmp eq i32 %bcmp.i.i.i.i48, 0
  br i1 %i.bi, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit53, label %bb.q

bb.q:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i47
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bf, %i.bk                    ; 2 uses
  %.not25.i.i.i.i49 = icmp ult i64 %i.bl, %.sroa.0.0.copyload.i.i35
  br i1 %.not25.i.i.i.i49, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit53.thread165, label %bb.p, !llvm.loop !3

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit53.thread165: ; preds = %bb.p, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i45, %bb.q, %bb.n, %bb.o
  store i8 0, ptr %2, align 1, !tbaa !592
  br label %bb.r

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit53: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i47
  %i.bm = ptrtoint ptr %i.bh to i64
  %i.bn = ptrtoint ptr %i.bb to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp ne i64 %i.bo, -1                   ; 2 uses
  %i.bq = zext i1 %i.bp to i8
  store i8 %i.bq, ptr %2, align 1, !tbaa !592
  br i1 %i.bp, label %.loopexit.split.loop.exit213, label %bb.r

bb.r:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit53, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit53.thread165
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0145.0223, i64 112
  %.sroa.0.0.copyload.i.i54 = load i64, ptr %3, align 8, !tbaa !502 ; 5 uses
  %.sroa.2.0.copyload.i.i56 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !593 ; 2 uses
  %i.bs = icmp eq i64 %.sroa.0.0.copyload.i.i54, 0
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !520 ; 4 uses
  br i1 %i.bs, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread172, label %bb.s

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread172: ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0145.0223, i64 96
  store i8 1, ptr %2, align 1, !tbaa !592
  br label %.loopexit

bb.s:                                             ; preds = %bb.r
  %.not.i.i.not.i.i57 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.not.i.i57, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread170, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0145.0223, i64 120
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1112 ; 3 uses
  %.not2531.i.i.i.i58 = icmp ult i64 %i.bt, %.sroa.0.0.copyload.i.i54
  br i1 %.not2531.i.i.i.i58, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread170, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bt
  %i.by = load i8, ptr %.sroa.2.0.copyload.i.i56, align 1, !tbaa !295
  %i.bz = sext i8 %i.by to i32
  %i.ca = ptrtoint ptr %i.bx to i64
  %invariant.op356 = sub i64 1, %.sroa.0.0.copyload.i.i54
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph.i.i.i.i59
  %.033.i.i.i.i60 = phi i64 [ %i.bt, %.lr.ph.i.i.i.i59 ], [ %i.cg, %bb.v ]
  %.02032.i.i.i.i61 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i59 ], [ %i.ce, %bb.v ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i63.reass.reass.reass = add i64 %.033.i.i.i.i60, %invariant.op356 ; 2 uses
  %i.cb = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i63.reass.reass.reass, 0
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread170, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i64

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i64: ; preds = %bb.u
  %i.cc = tail call ptr @memchr(ptr noundef %.02032.i.i.i.i61, i32 noundef %i.bz, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i63.reass.reass.reass) #45 ; 4 uses
  %.not26.i.i.i.i65 = icmp eq ptr %i.cc, null
  br i1 %.not26.i.i.i.i65, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread170, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i66

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i66: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i64
  %bcmp.i.i.i.i67 = tail call i32 @bcmp(ptr nonnull %i.cc, ptr nonnull %.sroa.2.0.copyload.i.i56, i64 %.sroa.0.0.copyload.i.i54)
  %i.cd = icmp eq i32 %bcmp.i.i.i.i67, 0
  br i1 %i.cd, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72, label %bb.v

bb.v:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i66
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.ca, %i.cf                    ; 2 uses
  %.not25.i.i.i.i68 = icmp ult i64 %i.cg, %.sroa.0.0.copyload.i.i54
  br i1 %.not25.i.i.i.i68, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread170, label %bb.u, !llvm.loop !3

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread170: ; preds = %bb.u, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i64, %bb.v, %bb.s, %bb.t
  store i8 0, ptr %2, align 1, !tbaa !592
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i66
  %i.ch = ptrtoint ptr %i.cc to i64
  %i.ci = ptrtoint ptr %i.bw to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = icmp ne i64 %i.cj, -1                   ; 2 uses
  %i.cl = zext i1 %i.ck to i8
  store i8 %i.cl, ptr %2, align 1, !tbaa !592
  br i1 %i.ck, label %.loopexit.split.loop.exit215, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread170, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72
  %i.cm = phi i8 [ 0, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72 ], [ 0, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread170 ], [ 1, %bb.b ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0145.0223, i64 128 ; 3 uses
  %i.co = add nsw i64 %.0230, -1
  %i.cp = icmp sgt i64 %.0230, 1
  br i1 %i.cp, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !9865

._crit_edge.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread
  %.pre258 = ptrtoint ptr %i.cn to i64
  %.pre259 = sub i64 %i.a, %.pre258
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi260 = phi i64 [ %.pre259, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.0145.0.lcssa = phi ptr [ %i.cn, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 7 uses
  %i.cq = ashr exact i64 %.pre-phi260, 5
  switch i64 %i.cq, label %.loopexit [
    i64 3, label %bb.w
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge256
  ]

._crit_edge._crit_edge256:                        ; preds = %._crit_edge
  %.pre257 = load i8, ptr %2, align 1, !tbaa !592, !range !518
  br label %bb.ai

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre255 = load i8, ptr %2, align 1, !tbaa !592, !range !518
  br label %bb.ac

bb.w:                                             ; preds = %._crit_edge
  %i.cr = load i8, ptr %2, align 1, !tbaa !592, !range !518, !noundef !469
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.lcssa, i64 16
  %.sroa.0.0.copyload.i.i73 = load i64, ptr %3, align 8, !tbaa !502 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i74 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i75 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i74, align 8, !tbaa !593 ; 2 uses
  %i.cu = icmp eq i64 %.sroa.0.0.copyload.i.i73, 0
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !520 ; 4 uses
  br i1 %i.cu, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91.thread177, label %bb.y

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91.thread177: ; preds = %bb.x
  store i8 1, ptr %2, align 1, !tbaa !592
  br label %.loopexit

bb.y:                                             ; preds = %bb.x
  %.not.i.i.not.i.i76 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.not.i.i76, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.lcssa, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1112 ; 3 uses
  %.not2531.i.i.i.i77 = icmp ult i64 %i.cv, %.sroa.0.0.copyload.i.i73
  br i1 %.not2531.i.i.i.i77, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91.thread, label %.lr.ph.i.i.i.i78

.lr.ph.i.i.i.i78:                                 ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv
  %i.cz = load i8, ptr %.sroa.2.0.copyload.i.i75, align 1, !tbaa !295
  %i.da = sext i8 %i.cz to i32
  %i.db = ptrtoint ptr %i.cy to i64
  %invariant.op357 = sub i64 1, %.sroa.0.0.copyload.i.i73
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph.i.i.i.i78
  %.033.i.i.i.i79 = phi i64 [ %i.cv, %.lr.ph.i.i.i.i78 ], [ %i.dh, %bb.ab ]
  %.02032.i.i.i.i80 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i78 ], [ %i.df, %bb.ab ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i82.reass.reass.reass = add i64 %.033.i.i.i.i79, %invariant.op357 ; 2 uses
  %i.dc = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i82.reass.reass.reass, 0
  br i1 %i.dc, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i83

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i83: ; preds = %bb.aa
  %i.dd = tail call ptr @memchr(ptr noundef %.02032.i.i.i.i80, i32 noundef %i.da, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i82.reass.reass.reass) #45 ; 4 uses
  %.not26.i.i.i.i84 = icmp eq ptr %i.dd, null
  br i1 %.not26.i.i.i.i84, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i85

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i85: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i83
  %bcmp.i.i.i.i86 = tail call i32 @bcmp(ptr nonnull %i.dd, ptr nonnull %.sroa.2.0.copyload.i.i75, i64 %.sroa.0.0.copyload.i.i73)
  %i.de = icmp eq i32 %bcmp.i.i.i.i86, 0
  br i1 %i.de, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i85
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 1 ; 2 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.db, %i.dg                    ; 2 uses
  %.not25.i.i.i.i87 = icmp ult i64 %i.dh, %.sroa.0.0.copyload.i.i73
  br i1 %.not25.i.i.i.i87, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91.thread, label %bb.aa, !llvm.loop !3

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i85
  %i.di = ptrtoint ptr %i.dd to i64
  %i.dj = ptrtoint ptr %i.cx to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = icmp ne i64 %i.dk, -1                   ; 2 uses
  %i.dm = zext i1 %i.dl to i8
  store i8 %i.dm, ptr %2, align 1, !tbaa !592
  br i1 %i.dl, label %.loopexit, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91.thread: ; preds = %bb.ab, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i83, %bb.aa, %bb.z, %bb.y, %bb.w, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91
  %4 = phi i8 [ 1, %bb.w ], [ 0, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91 ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i83 ], [ 0, %bb.ab ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.lcssa, i64 32
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge._crit_edge, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91.thread
  %i.do = phi i8 [ %4, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91.thread ], [ %.pre255, %._crit_edge._crit_edge ]
  %.sroa.0145.1 = phi ptr [ %i.dn, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91.thread ], [ %.sroa.0145.0.lcssa, %._crit_edge._crit_edge ] ; 5 uses
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0145.1, i64 16
  %.sroa.0.0.copyload.i.i92 = load i64, ptr %3, align 8, !tbaa !502 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i93 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i94 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i93, align 8, !tbaa !593 ; 2 uses
  %i.dr = icmp eq i64 %.sroa.0.0.copyload.i.i92, 0
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !520 ; 4 uses
  br i1 %i.dr, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread182, label %bb.ae

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread182: ; preds = %bb.ad
  store i8 1, ptr %2, align 1, !tbaa !592
  br label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i.not.i.i95 = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.not.i.i95, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread180, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0145.1, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1112 ; 3 uses
  %.not2531.i.i.i.i96 = icmp ult i64 %i.ds, %.sroa.0.0.copyload.i.i92
  br i1 %.not2531.i.i.i.i96, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread180, label %.lr.ph.i.i.i.i97

.lr.ph.i.i.i.i97:                                 ; preds = %bb.af
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  %i.dw = load i8, ptr %.sroa.2.0.copyload.i.i94, align 1, !tbaa !295
  %i.dx = sext i8 %i.dw to i32
  %i.dy = ptrtoint ptr %i.dv to i64
  %invariant.op358 = sub i64 1, %.sroa.0.0.copyload.i.i92
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.lr.ph.i.i.i.i97
  %.033.i.i.i.i98 = phi i64 [ %i.ds, %.lr.ph.i.i.i.i97 ], [ %i.ee, %bb.ah ]
  %.02032.i.i.i.i99 = phi ptr [ %i.du, %.lr.ph.i.i.i.i97 ], [ %i.ec, %bb.ah ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i101.reass.reass.reass = add i64 %.033.i.i.i.i98, %invariant.op358 ; 2 uses
  %i.dz = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i101.reass.reass.reass, 0
  br i1 %i.dz, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread180, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i102

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i102: ; preds = %bb.ag
  %i.ea = tail call ptr @memchr(ptr noundef %.02032.i.i.i.i99, i32 noundef %i.dx, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i101.reass.reass.reass) #45 ; 4 uses
  %.not26.i.i.i.i103 = icmp eq ptr %i.ea, null
  br i1 %.not26.i.i.i.i103, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread180, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i104

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i104: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i102
  %bcmp.i.i.i.i105 = tail call i32 @bcmp(ptr nonnull %i.ea, ptr nonnull %.sroa.2.0.copyload.i.i94, i64 %.sroa.0.0.copyload.i.i92)
  %i.eb = icmp eq i32 %bcmp.i.i.i.i105, 0
  br i1 %i.eb, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i104
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 1 ; 2 uses
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.dy, %i.ed                    ; 2 uses
  %.not25.i.i.i.i106 = icmp ult i64 %i.ee, %.sroa.0.0.copyload.i.i92
  br i1 %.not25.i.i.i.i106, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread180, label %bb.ag, !llvm.loop !3

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread180: ; preds = %bb.ag, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i102, %bb.ah, %bb.ae, %bb.af
  store i8 0, ptr %2, align 1, !tbaa !592
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i104
  %i.ef = ptrtoint ptr %i.ea to i64
  %i.eg = ptrtoint ptr %i.du to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = icmp ne i64 %i.eh, -1                   ; 2 uses
  %i.ej = zext i1 %i.ei to i8
  store i8 %i.ej, ptr %2, align 1, !tbaa !592
  br i1 %i.ei, label %.loopexit, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread: ; preds = %bb.ac, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread180, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110
  %i.ek = phi i8 [ 1, %bb.ac ], [ 0, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread180 ], [ 0, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110 ]
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0145.1, i64 32
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge._crit_edge256, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread
  %i.em = phi i8 [ %i.ek, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread ], [ %.pre257, %._crit_edge._crit_edge256 ]
  %.sroa.0145.2 = phi ptr [ %i.el, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread ], [ %.sroa.0145.0.lcssa, %._crit_edge._crit_edge256 ] ; 4 uses
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0145.2, i64 16
  %.sroa.0.0.copyload.i.i111 = load i64, ptr %3, align 8, !tbaa !502 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i112 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i113 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i112, align 8, !tbaa !593 ; 2 uses
  %i.ep = icmp eq i64 %.sroa.0.0.copyload.i.i111, 0
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !520 ; 4 uses
  br i1 %i.ep, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129.thread187, label %bb.ak

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129.thread187: ; preds = %bb.aj
  store i8 1, ptr %2, align 1, !tbaa !592
  br label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.not.i.i114 = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i.not.i.i114, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129.thread185, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0145.2, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !1112 ; 3 uses
  %.not2531.i.i.i.i115 = icmp ult i64 %i.eq, %.sroa.0.0.copyload.i.i111
  br i1 %.not2531.i.i.i.i115, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129.thread185, label %.lr.ph.i.i.i.i116

.lr.ph.i.i.i.i116:                                ; preds = %bb.al
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.eq
  %i.eu = load i8, ptr %.sroa.2.0.copyload.i.i113, align 1, !tbaa !295
  %i.ev = sext i8 %i.eu to i32
  %i.ew = ptrtoint ptr %i.et to i64
  %invariant.op359 = sub i64 1, %.sroa.0.0.copyload.i.i111
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %.lr.ph.i.i.i.i116
  %.033.i.i.i.i117 = phi i64 [ %i.eq, %.lr.ph.i.i.i.i116 ], [ %i.fc, %bb.an ]
  %.02032.i.i.i.i118 = phi ptr [ %i.es, %.lr.ph.i.i.i.i116 ], [ %i.fa, %bb.an ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i120.reass.reass.reass = add i64 %.033.i.i.i.i117, %invariant.op359 ; 2 uses
  %i.ex = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i120.reass.reass.reass, 0
  br i1 %i.ex, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129.thread185, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i121

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i121: ; preds = %bb.am
  %i.ey = tail call ptr @memchr(ptr noundef %.02032.i.i.i.i118, i32 noundef %i.ev, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i120.reass.reass.reass) #45 ; 4 uses
  %.not26.i.i.i.i122 = icmp eq ptr %i.ey, null
  br i1 %.not26.i.i.i.i122, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129.thread185, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i123

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i123: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i121
  %bcmp.i.i.i.i124 = tail call i32 @bcmp(ptr nonnull %i.ey, ptr nonnull %.sroa.2.0.copyload.i.i113, i64 %.sroa.0.0.copyload.i.i111)
  %i.ez = icmp eq i32 %bcmp.i.i.i.i124, 0
  br i1 %i.ez, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129, label %bb.an

bb.an:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i123
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 1 ; 2 uses
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = sub i64 %i.ew, %i.fb                    ; 2 uses
  %.not25.i.i.i.i125 = icmp ult i64 %i.fc, %.sroa.0.0.copyload.i.i111
  br i1 %.not25.i.i.i.i125, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129.thread185, label %bb.am, !llvm.loop !3

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129.thread185: ; preds = %bb.am, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i121, %bb.an, %bb.ak, %bb.al
  store i8 0, ptr %2, align 1, !tbaa !592
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i123
  %i.fd = ptrtoint ptr %i.ey to i64
  %i.fe = ptrtoint ptr %i.es to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = icmp ne i64 %i.ff, -1                   ; 2 uses
  %i.fh = zext i1 %i.fg to i8
  store i8 %i.fh, ptr %2, align 1, !tbaa !592
  br i1 %i.fg, label %.loopexit, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129.thread: ; preds = %bb.ai, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129.thread185, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129
  br label %.loopexit

.loopexit.split.loop.exit211:                     ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit34
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0145.0223, i64 32
  br label %.loopexit

.loopexit.split.loop.exit213:                     ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit53
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0145.0223, i64 64
  br label %.loopexit

.loopexit.split.loop.exit215:                     ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0145.0223, i64 96
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit, %.loopexit.split.loop.exit211, %.loopexit.split.loop.exit213, %.loopexit.split.loop.exit215, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129.thread187, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread182, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91.thread177, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread172, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit53.thread167, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit34.thread162, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread157, %._crit_edge, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129.thread, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.0145.1, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110 ], [ %i.bu, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit72.thread172 ], [ %.sroa.0145.0.lcssa, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91.thread177 ], [ %.sroa.0145.1, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit110.thread182 ], [ %.sroa.0145.2, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129 ], [ %.sroa.0145.2, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129.thread187 ], [ %.sroa.0145.0.lcssa, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit91 ], [ %1, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit129.thread ], [ %1, %._crit_edge ], [ %.sroa.0145.0223, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit.thread157 ], [ %i.ae, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit34.thread162 ], [ %i.az, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit53.thread167 ], [ %i.fj, %.loopexit.split.loop.exit213 ], [ %i.fi, %.loopexit.split.loop.exit211 ], [ %i.fk, %.loopexit.split.loop.exit215 ], [ %.sroa.0145.0223, %_ZN9__gnu_cxx5__ops10_Iter_predIZN7cinatra16coro_http_server21remove_result_headersERNS2_9resp_dataESt17basic_string_viewIcSt11char_traitsIcEEEUlRNS2_11http_headerEE_EclINS_17__normal_iteratorIPSA_St4spanISA_Lm18446744073709551615EEEEEEbT_.exit ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io11client_poolIN7cinatra16coro_http_clientENS_15io_context_poolEE7enqueueERNS_6detail12client_queueISt10unique_ptrIS2_St14default_deleteIS2_EEEESA_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr noundef nonnull align 8 dereferenceable(2984) %0, ptr noundef nonnull align 8 dereferenceable(1264) %1, ptr nofreeobj noundef align 8 dereferenceable(8) %2, i64 %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %5 = alloca %"struct.refvalue::meta_string.1829", align 1 ; 7 uses
  %6 = alloca %"class.async_simple::coro::Lazy", align 8 ; 8 uses
  %7 = alloca %"class.async_simple::coro::Lazy", align 8 ; 8 uses
  %8 = alloca %"class.async_simple::coro::LazyLocalBase", align 8 ; 9 uses
  %9 = alloca %class.anon.4363, align 1           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1240
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 seq_cst, align 8
  %i.f = getelementptr inbounds [616 x i8], ptr %1, i64 %i.b
  %i.g = tail call noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7cinatra16coro_http_clientESt14default_deleteIS5_EENS1_28ConcurrentQueueDefaultTraitsEE28get_or_add_implicit_producerEv(ptr noundef nonnull align 8 dereferenceable(612) %i.f) ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN7coro_io6detail12client_queueISt10unique_ptrIN7cinatra16coro_http_clientESt14default_deleteIS4_EEE7enqueueEOS7_.exit.thread, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7cinatra16coro_http_clientESt14default_deleteIS5_EENS1_28ConcurrentQueueDefaultTraitsEE7enqueueEOS8_.exit.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7cinatra16coro_http_clientESt14default_deleteIS5_EENS1_28ConcurrentQueueDefaultTraitsEE7enqueueEOS8_.exit.i: ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7cinatra16coro_http_clientESt14default_deleteIS5_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7enqueueILNSA_14AllocationModeE0ES8_EEbOT0_(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.i, label %_ZN7coro_io6detail12client_queueISt10unique_ptrIN7cinatra16coro_http_clientESt14default_deleteIS4_EEE7enqueueEOS7_.exit, label %_ZN7coro_io6detail12client_queueISt10unique_ptrIN7cinatra16coro_http_clientESt14default_deleteIS4_EEE7enqueueEOS7_.exit.thread

_ZN7coro_io6detail12client_queueISt10unique_ptrIN7cinatra16coro_http_clientESt14default_deleteIS4_EEE7enqueueEOS7_.exit.thread: ; preds = %bb.a, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7cinatra16coro_http_clientESt14default_deleteIS5_EENS1_28ConcurrentQueueDefaultTraitsEE7enqueueEOS8_.exit.i
end_hunk_4

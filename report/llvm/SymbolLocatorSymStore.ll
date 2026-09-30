Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SymbolLocatorSymStore?download=true
inline.NumInlined: 1740
inline.NumDeleted: 940
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12lldb_private21SymbolLocatorSymStore26LocateExecutableSymbolFileERKNS_10ModuleSpecERKNS_12FileSpecListE:bb.a

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i44.i: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i47.i, %_ZNSt6vectorIN12lldb_private21SymbolLocatorSymStore11LookupEntryESaIS2_EE9push_backEOS2_.exit43.i
  %i.mr = load ptr, ptr %69, align 8, !tbaa !24, !noalias !260 ; 2 uses
  %i.ms = icmp eq ptr %i.mr, %i.gi
  br i1 %i.ms, label %_ZN12lldb_private21SymbolLocatorSymStore11LookupEntryD2Ev.exit49.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i44.i
  %i.mt = load i64, ptr %i.gi, align 8, !tbaa !15, !noalias !260
  %i.mu = add i64 %i.mt, 1
  call void @_ZdlPvm(ptr noundef %i.mr, i64 noundef %i.mu) #22
  br label %_ZN12lldb_private21SymbolLocatorSymStore11LookupEntryD2Ev.exit49.i

_ZN12lldb_private21SymbolLocatorSymStore11LookupEntryD2Ev.exit49.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i44.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45.i
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #21, !noalias !260
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.068.083.i, i64 72 ; 2 uses
  %.not78.i = icmp eq ptr %i.mv, %i.gh
  br i1 %.not78.i, label %._crit_edge85.i, label %bb.bc

bb.bq:                                            ; preds = %_ZN12lldb_private21SymbolLocatorSymStore11LookupEntryD2Ev.exit63.i, %.lr.ph88.i
  %.sroa.064.087.i = phi ptr [ %i.kb, %.lr.ph88.i ], [ %i.oh, %_ZN12lldb_private21SymbolLocatorSymStore11LookupEntryD2Ev.exit63.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #21, !noalias !260
  %i.mw = load ptr, ptr %.sroa.064.087.i, align 8, !tbaa !28 ; 3 uses
  %.not.i.i50.i = icmp eq ptr %i.mw, null
  br i1 %.not.i.i50.i, label %_ZNK12lldb_private4Args8ArgEntry3refEv.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mw) #21
  br label %_ZNK12lldb_private4Args8ArgEntry3refEv.exit.i

_ZNK12lldb_private4Args8ArgEntry3refEv.exit.i:    ; preds = %bb.br, %bb.bq
  %.sroa.0.0.i.i.i = phi i64 [ %i.mx, %bb.br ], [ 0, %bb.bq ]
  call fastcc void @_ZN12_GLOBAL__N_115MakeLookupEntryEN4llvm9StringRefE(ptr dead_on_unwind noalias writable align 8 %71, ptr %i.mw, i64 %.sroa.0.0.i.i.i)
  %i.my = load ptr, ptr %i.ke, align 8, !tbaa !52, !alias.scope !260 ; 11 uses
  %i.mz = load ptr, ptr %i.kf, align 8, !tbaa !57, !alias.scope !260
  %.not.i.i51.i = icmp eq ptr %i.my, %i.mz
  br i1 %.not.i.i51.i, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %_ZNK12lldb_private4Args8ArgEntry3refEv.exit.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 16 ; 3 uses
  store ptr %i.na, ptr %i.my, align 8, !tbaa !21
  %i.nb = load ptr, ptr %71, align 8, !tbaa !24, !noalias !260 ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.kg
  br i1 %i.nc, label %bb.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52.i

bb.bt:                                            ; preds = %bb.bs
  %i.nd = load i64, ptr %i.kh, align 8, !tbaa !25, !noalias !260 ; 3 uses
  %i.ne = icmp ult i64 %i.nd, 16
  call void @llvm.assume(i1 %i.ne)
  %i.nf = add nuw nsw i64 %i.nd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.na, ptr noundef nonnull align 8 dereferenceable(1) %i.kg, i64 %i.nf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52.i: ; preds = %bb.bs
  store ptr %i.nb, ptr %i.my, align 8, !tbaa !24
  %i.ng = load i64, ptr %i.kg, align 8, !tbaa !15, !noalias !260
  store i64 %i.ng, ptr %i.na, align 8, !tbaa !15
  %.pre97.i = load i64, ptr %i.kh, align 8, !tbaa !25, !noalias !260
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i53.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i53.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52.i, %bb.bt
  %i.nh = phi i64 [ %.pre97.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52.i ], [ %i.nd, %bb.bt ]
  %i.ni = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  store i64 %i.nh, ptr %i.ni, align 8, !tbaa !25
  store ptr %i.kg, ptr %71, align 8, !tbaa !24, !noalias !260
  store i64 0, ptr %i.kh, align 8, !tbaa !25, !noalias !260
  store i8 0, ptr %i.kg, align 8, !tbaa !15, !noalias !260
  %i.nj = getelementptr inbounds nuw i8, ptr %i.my, i64 32 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.my, i64 64 ; 2 uses
  store i8 0, ptr %i.nk, align 8, !tbaa !54
  %i.nl = load i8, ptr %i.kj, align 8, !tbaa !54, !range !55, !noalias !260, !noundef !56
  %i.nm = trunc nuw i8 %i.nl to i1
  br i1 %i.nm, label %bb.bu, label %_ZN12lldb_private21SymbolLocatorSymStore11LookupEntryC2EOS1_.exit.i.i54.i

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i53.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.my, i64 48 ; 3 uses
  store ptr %i.nn, ptr %i.nj, align 8, !tbaa !21
  %i.no = load ptr, ptr %i.ki, align 8, !tbaa !24, !noalias !260 ; 2 uses
  %i.np = icmp eq ptr %i.no, %i.kk
  br i1 %i.np, label %bb.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i55.i

bb.bv:                                            ; preds = %bb.bu
  %i.nq = load i64, ptr %i.kl, align 8, !tbaa !25, !noalias !260 ; 3 uses
  %i.nr = icmp ult i64 %i.nq, 16
  call void @llvm.assume(i1 %i.nr)
  %i.ns = add nuw nsw i64 %i.nq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.nn, ptr noundef nonnull align 8 dereferenceable(1) %i.kk, i64 %i.ns, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i56.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i55.i: ; preds = %bb.bu
  store ptr %i.no, ptr %i.nj, align 8, !tbaa !24
  %i.nt = load i64, ptr %i.kk, align 8, !tbaa !15, !noalias !260
  store i64 %i.nt, ptr %i.nn, align 8, !tbaa !15
  %.pre98.i = load i64, ptr %i.kl, align 8, !tbaa !25, !noalias !260
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i56.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i56.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i55.i, %bb.bv
  %i.nu = phi i64 [ %.pre98.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i55.i ], [ %i.nq, %bb.bv ]
  %i.nv = getelementptr inbounds nuw i8, ptr %i.my, i64 40
  store i64 %i.nu, ptr %i.nv, align 8, !tbaa !25
  store ptr %i.kk, ptr %i.ki, align 8, !tbaa !24, !noalias !260
  store i64 0, ptr %i.kl, align 8, !tbaa !25, !noalias !260
  store i8 0, ptr %i.kk, align 8, !tbaa !15, !noalias !260
  store i8 1, ptr %i.nk, align 8, !tbaa !54
  br label %_ZN12lldb_private21SymbolLocatorSymStore11LookupEntryC2EOS1_.exit.i.i54.i

_ZN12lldb_private21SymbolLocatorSymStore11LookupEntryC2EOS1_.exit.i.i54.i: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i56.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i53.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.my, i64 72
  store ptr %i.nw, ptr %i.ke, align 8, !tbaa !52, !alias.scope !260
  br label %_ZNSt6vectorIN12lldb_private21SymbolLocatorSymStore11LookupEntryESaIS2_EE9push_backEOS2_.exit57.i

bb.bw:                                            ; preds = %_ZNK12lldb_private4Args8ArgEntry3refEv.exit.i
  call void @_ZNSt6vectorIN12lldb_private21SymbolLocatorSymStore11LookupEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %79, ptr %i.my, ptr noundef nonnull align 8 dereferenceable(72) %71)
  br label %_ZNSt6vectorIN12lldb_private21SymbolLocatorSymStore11LookupEntryESaIS2_EE9push_backEOS2_.exit57.i

_ZNSt6vectorIN12lldb_private21SymbolLocatorSymStore11LookupEntryESaIS2_EE9push_backEOS2_.exit57.i: ; preds = %bb.bw, %_ZN12lldb_private21SymbolLocatorSymStore11LookupEntryC2EOS1_.exit.i.i54.i
  %i.nx = load i8, ptr %i.kj, align 8, !tbaa !54, !range !55, !noalias !260, !noundef !56
  %i.ny = trunc nuw i8 %i.nx to i1
  store i8 0, ptr %i.kj, align 8, !tbaa !54, !noalias !260
  br i1 %i.ny, label %bb.bx, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i58.i

bb.bx:                                            ; preds = %_ZNSt6vectorIN12lldb_private21SymbolLocatorSymStore11LookupEntryESaIS2_EE9push_backEOS2_.exit57.i
  %i.nz = load ptr, ptr %i.ki, align 8, !tbaa !24, !noalias !260 ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.kk
  br i1 %i.oa, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i61.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i61.i: ; preds = %bb.bx
  %i.ob = load i64, ptr %i.kk, align 8, !tbaa !15, !noalias !260
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.oc) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i58.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i58.i: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i61.i, %_ZNSt6vectorIN12lldb_private21SymbolLocatorSymStore11LookupEntryESaIS2_EE9push_backEOS2_.exit57.i
  %i.od = load ptr, ptr %71, align 8, !tbaa !24, !noalias !260 ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.kg
  br i1 %i.oe, label %_ZN12lldb_private21SymbolLocatorSymStore11LookupEntryD2Ev.exit63.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i58.i
  %i.of = load i64, ptr %i.kg, align 8, !tbaa !15, !noalias !260
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #22
  br label %_ZN12lldb_private21SymbolLocatorSymStore11LookupEntryD2Ev.exit63.i

_ZN12lldb_private21SymbolLocatorSymStore11LookupEntryD2Ev.exit63.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i58.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59.i
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #21, !noalias !260
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.064.087.i, i64 16 ; 2 uses
  %.not79.i = icmp eq ptr %i.oh, %i.kd
  br i1 %.not79.i, label %_ZN12_GLOBAL__N_120GetGlobalLookupOrderEv.exit, label %bb.bq

_ZN12_GLOBAL__N_120GetGlobalLookupOrderEv.exit:   ; preds = %_ZN12lldb_private21SymbolLocatorSymStore11LookupEntryD2Ev.exit63.i, %_ZL25GetGlobalPluginPropertiesv.exit.i
  call void @_ZN12lldb_private4ArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %70) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #21, !noalias !260
  %i.oi = load ptr, ptr %79, align 8, !tbaa !261  ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 3 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !261 ; 2 uses
  %.not111131 = icmp eq ptr %i.oi, %i.ok
  br i1 %.not111131, label %_ZSt8_DestroyIPN12lldb_private21SymbolLocatorSymStore11LookupEntryEEvT_S4_.exit.i70, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_120GetGlobalLookupOrderEv.exit
  %i.ol = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.om = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 4 uses
  %i.on = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %60, i64 32 ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 8 uses
  %i.os = getelementptr inbounds nuw i8, ptr %52, i64 12 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 5 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.ov = ptrtoint ptr %53 to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %54, i64 32 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %54, i64 33 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %55, i64 32 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %55, i64 33 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 10 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 8 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %61, i64 24
  %i.pf = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.pg = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.ph = ptrtoint ptr %50 to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i69.i = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.pj = getelementptr inbounds nuw i8, ptr %23, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i70.i = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.pk = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.pl = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 2 uses
  %i.pm = ptrtoint ptr %i.pl to i64
  %.sroa.4.0..sroa_idx.i.i.i.i71.i = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.pn = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.po = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.pp = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.pq = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.pr = getelementptr inbounds nuw i8, ptr %19, i64 44
  %i.ps = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.pt = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.pu = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.px = insertelement <2 x ptr> poison, ptr %50, i64 0
  %i.py = insertelement <2 x ptr> %i.px, ptr %21, i64 1
  %i.pz = ptrtoint <2 x ptr> %i.py to <2 x i64>
  %i.qa = insertelement <2 x ptr> poison, ptr %21, i64 0
  %i.qb = insertelement <2 x ptr> %i.qa, ptr %50, i64 1
  %i.qc = ptrtoint <2 x ptr> %i.qb to <2 x i64>
  %i.qd = getelementptr inbounds nuw i8, ptr %26, i64 56 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i7.i.i = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.qe = getelementptr inbounds nuw i8, ptr %26, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i8.i.i = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.qf = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.qg = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %26, i64 48
  %.ptr.1.i.i.i.i.i59.i = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.qi = ptrtoint ptr %i.qh to i64
  %i.qj = ptrtoint ptr %i.qg to i64
  %.sroa.4.0..sroa_idx.i.i.i9.i.i = getelementptr inbounds nuw i8, ptr %26, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i60.i = getelementptr inbounds nuw i8, ptr %26, i64 80
  %i.qk = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.ql = getelementptr inbounds nuw i8, ptr %25, i64 33
  %i.qm = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.qn = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.qo = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.qp = ptrtoint ptr %20 to i64
  %i.qq = getelementptr inbounds nuw i8, ptr %31, i64 64 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i10.i.i = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.qr = getelementptr inbounds nuw i8, ptr %31, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i11.i.i = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.qs = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.qt = getelementptr inbounds nuw i8, ptr %31, i64 40 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %31, i64 48
  %i.qv = getelementptr inbounds nuw i8, ptr %31, i64 56 ; 2 uses
  %.ptr.1.i.i.i.i12.i.i = getelementptr inbounds nuw i8, ptr %31, i64 80
  %.ptr.2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %31, i64 96
  %i.qw = ptrtoint ptr %i.qv to i64
  %i.qx = ptrtoint ptr %i.qu to i64
  %i.qy = ptrtoint ptr %i.qt to i64
  %.sroa.4.0..sroa_idx.i.i.i13.i.i = getelementptr inbounds nuw i8, ptr %31, i64 72
  %.sroa.6.0..sroa_idx.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %31, i64 88
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %31, i64 104
  %i.qz = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.rc = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.rd = getelementptr inbounds nuw i8, ptr %18, i64 44
  %i.re = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.rf = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.rg = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ri = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 7 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 4 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %34, i64 24 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.rm = getelementptr inbounds nuw i8, ptr %34, i64 40
  %i.rn = getelementptr inbounds nuw i8, ptr %34, i64 48 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.rp = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 5 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.rs = getelementptr inbounds nuw i8, ptr %37, i64 32 ; 6 uses
  %i.rt = ptrtoint ptr %14 to i64
  %i.ru = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.rv = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.rw = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.rx = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %i.ry = ptrtoint ptr %i.rx to i64
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.rz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.sb = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.sc = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.sd = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.se = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.sf = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.sg = getelementptr inbounds nuw i8, ptr %36, i64 176 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.si = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 9 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.sl = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.sm = ptrtoint ptr %30 to i64                 ; 4 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %40, i64 80 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i26.i.i = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.so = getelementptr inbounds nuw i8, ptr %40, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i27.i.i = getelementptr inbounds nuw i8, ptr %40, i64 24
  %i.sp = getelementptr inbounds nuw i8, ptr %40, i64 32
  %i.sq = getelementptr inbounds nuw i8, ptr %40, i64 40 ; 4 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %40, i64 56 ; 5 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %40, i64 48
  %i.st = getelementptr inbounds nuw i8, ptr %40, i64 72 ; 2 uses
  %.ptr.1.i.i.i.i28.i.i = getelementptr inbounds nuw i8, ptr %40, i64 96
  %i.su = ptrtoint ptr %i.st to i64
  %i.sv = ptrtoint ptr %i.sq to i64
  %.sroa.4.0..sroa_idx.i.i.i29.i.i = getelementptr inbounds nuw i8, ptr %40, i64 88
  %.sroa.6.0..sroa_idx.i.i.i30.i.i = getelementptr inbounds nuw i8, ptr %40, i64 104
  %i.sw = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.sy = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.sz = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ta = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.tb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.tc = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.td = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.te = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 9 uses
  %.phi.trans.insert.i.i42.i.i = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 4 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ti = getelementptr inbounds nuw i8, ptr %45, i64 80 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i46.i.i = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.tj = getelementptr inbounds nuw i8, ptr %45, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i47.i.i = getelementptr inbounds nuw i8, ptr %45, i64 24
  %i.tk = getelementptr inbounds nuw i8, ptr %45, i64 32
  %i.tl = getelementptr inbounds nuw i8, ptr %45, i64 40 ; 4 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %45, i64 56 ; 5 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %45, i64 48
  %i.to = getelementptr inbounds nuw i8, ptr %45, i64 72 ; 2 uses
  %.ptr.1.i.i.i.i49.i.i = getelementptr inbounds nuw i8, ptr %45, i64 96
  %i.tp = ptrtoint ptr %i.to to i64
  %i.tq = ptrtoint ptr %i.tl to i64
  %.sroa.4.0..sroa_idx.i.i.i50.i.i = getelementptr inbounds nuw i8, ptr %45, i64 88
  %.sroa.6.0..sroa_idx.i.i.i51.i.i = getelementptr inbounds nuw i8, ptr %45, i64 104
  %i.tr = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.tt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.tu = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.tv = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.tw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.tx = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ty = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %i.tz = insertelement <2 x ptr> %i.ty, ptr %30, i64 1
  %i.ua = ptrtoint <2 x ptr> %i.tz to <2 x i64>
  %i.ub = getelementptr inbounds nuw i8, ptr %49, i64 56 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i71.i.i = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.uc = getelementptr inbounds nuw i8, ptr %49, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i72.i.i = getelementptr inbounds nuw i8, ptr %49, i64 24
  %i.ud = getelementptr inbounds nuw i8, ptr %49, i64 32
  %i.ue = getelementptr inbounds nuw i8, ptr %49, i64 40 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %49, i64 48
  %.ptr.1.i.i.i.i73.i.i = getelementptr inbounds nuw i8, ptr %49, i64 72
  %i.ug = ptrtoint ptr %i.uf to i64
  %i.uh = ptrtoint ptr %i.ue to i64
  %.sroa.4.0..sroa_idx.i.i.i74.i.i = getelementptr inbounds nuw i8, ptr %49, i64 64
  %.sroa.6.0..sroa_idx.i.i.i75.i.i = getelementptr inbounds nuw i8, ptr %49, i64 80
  %i.ui = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.uk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ul = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.um = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.un = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.uo = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.up = getelementptr inbounds nuw i8, ptr %36, i64 208 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %36, i64 192 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %36, i64 152 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %36, i64 160
  %i.ut = getelementptr inbounds nuw i8, ptr %36, i64 168
  %i.uu = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.uv = ptrtoint ptr %57 to i64
  %i.uw = insertelement <2 x ptr> poison, ptr %58, i64 0
  %i.ux = insertelement <2 x ptr> %i.uw, ptr %57, i64 1
  %i.uy = ptrtoint <2 x ptr> %i.ux to <2 x i64>
  %i.uz = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i75.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.va = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i76.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.vb = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.vc = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.ptr.1.i.i.i.i.i77.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ve = ptrtoint ptr %i.vd to i64
  %i.vf = ptrtoint ptr %i.vc to i64
  %.sroa.4.0..sroa_idx.i.i.i.i78.i = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i79.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.vg = getelementptr inbounds nuw i8, ptr %62, i64 24 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 6 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 5 uses
  %i.vj = insertelement <2 x ptr> poison, ptr %59, i64 0
  %i.vk = insertelement <2 x ptr> %i.vj, ptr %57, i64 1 ; 2 uses
  %i.vl = ptrtoint <2 x ptr> %i.vk to <2 x i64>
  %i.vm = ptrtoint <2 x ptr> %i.vk to <2 x i64>
  %i.vn = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i82.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.vo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i83.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.vp = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.vq = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.ptr.1.i.i.i.i.i84.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.vs = ptrtoint ptr %i.vr to i64
  %i.vt = ptrtoint ptr %i.vq to i64
  %.sroa.4.0..sroa_idx.i.i.i.i85.i = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i86.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.vu = getelementptr inbounds nuw i8, ptr %51, i64 56 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.vv = getelementptr inbounds nuw i8, ptr %51, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 24
  %i.vw = getelementptr inbounds nuw i8, ptr %51, i64 32
  %i.vx = getelementptr inbounds nuw i8, ptr %51, i64 40 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %51, i64 48
  %.ptr.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 72
end_hunk_0
begin_hunk_1_@_ZN12lldb_private21SymbolLocatorSymStore26LocateExecutableSymbolFileERKNS_10ModuleSpecERKNS_12FileSpecListE:bb.a
_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %.pre.i29.i.i = load ptr, ptr %52, align 8, !tbaa !67, !noalias !267
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i, %bb.cy
  %i.abu = phi ptr [ %.pre.i29.i.i, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i ], [ %i.abk, %bb.cy ] ; 2 uses
  %i.abv = icmp eq ptr %i.abu, %i.oq
  br i1 %i.abv, label %_ZN12_GLOBAL__N_119SelectSymStoreCacheESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE.exit.i, label %bb.cz

bb.cz:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i
  call void @free(ptr noundef %i.abu) #21, !noalias !265
  br label %_ZN12_GLOBAL__N_119SelectSymStoreCacheESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE.exit.i

_ZN12_GLOBAL__N_119SelectSymStoreCacheESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE.exit.i: ; preds = %bb.cz, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21, !noalias !267
  %i.abw = load i8, ptr %i.op, align 8, !tbaa !54, !range !55, !noalias !265, !noundef !56
  %i.abx = trunc nuw i8 %i.abw to i1
  store i8 0, ptr %i.op, align 8, !tbaa !54, !noalias !265
  br i1 %i.abx, label %bb.da, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.da:                                            ; preds = %_ZN12_GLOBAL__N_119SelectSymStoreCacheESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE.exit.i
  %i.aby = load ptr, ptr %60, align 8, !tbaa !24, !noalias !265 ; 2 uses
  %i.abz = icmp eq ptr %i.aby, %i.ot
  br i1 %i.abz, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.da
  %i.aca = load i64, ptr %i.ot, align 8, !tbaa !15, !noalias !265
  %i.acb = add i64 %i.aca, 1
  call void @_ZdlPvm(ptr noundef %i.aby, i64 noundef %i.acb) #22, !noalias !265
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZN12_GLOBAL__N_119SelectSymStoreCacheESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #21, !noalias !265
  %i.acc = load ptr, ptr %59, align 8, !tbaa !24, !noalias !265
  %i.acd = load i64, ptr %i.pd, align 8, !tbaa !25, !noalias !265
  %.sroa.0124.0.copyload.i = load ptr, ptr %57, align 8, !tbaa !28, !noalias !265
  %.sroa.2125.0.copyload.i = load i64, ptr %i.om, align 8, !tbaa !29, !noalias !265
  call fastcc void @_ZN12_GLOBAL__N_123FindFileInLocalSymStoreEN4llvm9StringRefES1_S1_(ptr dead_on_unwind noalias writable align 8 %61, ptr %i.acc, i64 %i.acd, ptr %i.wk, i64 %i.wl, ptr %.sroa.0124.0.copyload.i, i64 %.sroa.2125.0.copyload.i), !noalias !265
  %i.ace = load i8, ptr %i.pe, align 8, !tbaa !46, !range !55, !noalias !265, !noundef !56
  %i.acf = trunc nuw i8 %i.ace to i1
  br i1 %i.acf, label %bb.db, label %bb.de

bb.db:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %.not40.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not40.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21, !noalias !265
  store ptr @.str.33, ptr %51, align 8, !tbaa !28, !alias.scope !270, !noalias !265
  store i64 31, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !29, !alias.scope !270, !noalias !265
  store ptr %i.vu, ptr %i.vv, align 8, !tbaa !31, !alias.scope !270, !noalias !265
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !29, !alias.scope !270, !noalias !265
  store i8 1, ptr %i.vw, align 8, !tbaa !36, !alias.scope !270, !noalias !265
  store <2 x i64> %i.vl, ptr %i.vx, align 8, !tbaa !72, !alias.scope !270, !noalias !265
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_, ptr %i.vu, align 8, !alias.scope !270, !noalias !265
  store i64 %i.vz, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !270, !noalias !265
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i.i.i, align 8, !alias.scope !270, !noalias !265
  store i64 %i.wa, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !15, !alias.scope !270, !noalias !265
  call void @_ZN12lldb_private3Log6FormatEN4llvm9StringRefES2_RKNS1_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i.i, ptr nonnull @.str.3, i64 102, ptr nonnull @__func__._ZN12_GLOBAL__N_119LocateSymStoreEntryERKN12lldb_private21SymbolLocatorSymStore11LookupEntryEN4llvm9StringRefES6_, i64 19, ptr noundef nonnull align 8 dereferenceable(33) %51) #21, !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21, !noalias !265
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.087, ptr noundef nonnull align 8 dereferenceable(24) %61, i64 24, i1 false), !tbaa.struct !77
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21, !noalias !265
  br label %bb.fl

bb.de:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0119.i), !noalias !265
  %.sroa.017.0.copyload.i = load ptr, ptr %58, align 8, !tbaa !28, !noalias !265
  %.sroa.218.0.copyload.i = load i64, ptr %i.on, align 8, !tbaa !29, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %50), !noalias !265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(16) %57, i64 16, i1 false), !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %20), !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %21), !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %22), !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %32), !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %39), !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %42), !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %44), !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %47), !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %48), !noalias !265
  store ptr %.sroa.017.0.copyload.i, ptr %20, align 8, !noalias !271
  store i64 %.sroa.218.0.copyload.i, ptr %i.pf, align 8, !noalias !271
  store ptr %i.wk, ptr %21, align 8, !noalias !271
  store i64 %i.wl, ptr %i.pg, align 8, !noalias !271
  %.sroa.03.0.copyload.i.i = load ptr, ptr %50, align 8, !tbaa !28, !noalias !271 ; 4 uses
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !29, !noalias !271 ; 3 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 %.sroa.24.0.copyload.i.i
  %.not62.i.i.i = icmp samesign eq i64 %.sroa.24.0.copyload.i.i, 0
  br i1 %.not62.i.i.i, label %_ZN12_GLOBAL__N_119HasUnsafeCharactersEN4llvm9StringRefE.exit.thread.i.i, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %bb.de, %bb.df
  %.04063.i.i.i = phi ptr [ %i.acl, %bb.df ], [ %.sroa.03.0.copyload.i.i, %bb.de ] ; 2 uses
  %i.ach = load i8, ptr %.04063.i.i.i, align 1, !tbaa !15, !noalias !271
  %.fr61.i.i.i = freeze i8 %i.ach                 ; 3 uses
  %i.aci = and i8 %.fr61.i.i.i, -33
  %i.acj = add i8 %i.aci, -65
  %or.cond43.i.i.i = icmp ult i8 %i.acj, 26
  %i.ack = add i8 %.fr61.i.i.i, -48
  %or.cond8.i.i.i = icmp ult i8 %i.ack, 10
  %or.cond.i.i.i = or i1 %or.cond8.i.i.i, %or.cond43.i.i.i
  br i1 %or.cond.i.i.i, label %bb.df, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %.lr.ph.i.i.i42
  switch i8 %.fr61.i.i.i, label %_ZN12_GLOBAL__N_119HasUnsafeCharactersEN4llvm9StringRefE.exit.thread100.i.i [
    i8 126, label %bb.df
    i8 95, label %bb.df
    i8 46, label %bb.df
    i8 45, label %bb.df
  ]

bb.df:                                            ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %.lr.ph.i.i.i42
  %i.acl = getelementptr inbounds nuw i8, ptr %.04063.i.i.i, i64 1 ; 2 uses
  %.not.i.i58.i = icmp eq ptr %i.acl, %i.acg
  br i1 %.not.i.i58.i, label %._crit_edge.i.i.i43, label %.lr.ph.i.i.i42

._crit_edge.i.i.i43:                              ; preds = %bb.df
  switch i64 %.sroa.24.0.copyload.i.i, label %_ZN12_GLOBAL__N_119HasUnsafeCharactersEN4llvm9StringRefE.exit.thread.i.i [
    i64 1, label %_ZN12_GLOBAL__N_119HasUnsafeCharactersEN4llvm9StringRefE.exit.i.i
    i64 2, label %.split.i.i
  ]

.split.i.i:                                       ; preds = %._crit_edge.i.i.i43
  %i.acm = load i16, ptr %.sroa.03.0.copyload.i.i, align 1
  %i.acn = icmp ne i16 %i.acm, 11822
  %i.aco = zext i1 %i.acn to i32
  %i.acp = icmp eq i32 %i.aco, 0
  br i1 %i.acp, label %_ZN12_GLOBAL__N_119HasUnsafeCharactersEN4llvm9StringRefE.exit.thread100.i.i, label %_ZN12_GLOBAL__N_119HasUnsafeCharactersEN4llvm9StringRefE.exit.thread.i.i

_ZN12_GLOBAL__N_119HasUnsafeCharactersEN4llvm9StringRefE.exit.i.i: ; preds = %._crit_edge.i.i.i43
  %lhsc.i.i.i = load i8, ptr %.sroa.03.0.copyload.i.i, align 1, !noalias !271
  %i.acq = icmp eq i8 %lhsc.i.i.i, 46
  br i1 %i.acq, label %_ZN12_GLOBAL__N_119HasUnsafeCharactersEN4llvm9StringRefE.exit.thread100.i.i, label %_ZN12_GLOBAL__N_119HasUnsafeCharactersEN4llvm9StringRefE.exit.thread.i.i

_ZN12_GLOBAL__N_119HasUnsafeCharactersEN4llvm9StringRefE.exit.thread100.i.i: ; preds = %switch.early.test.i.i.i, %_ZN12_GLOBAL__N_119HasUnsafeCharactersEN4llvm9StringRefE.exit.i.i, %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21, !noalias !271
  store ptr @.str.39, ptr %23, align 8, !tbaa !28, !alias.scope !272, !noalias !271
  store i64 72, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i69.i, align 8, !tbaa !29, !alias.scope !272, !noalias !271
  store ptr %i.pi, ptr %i.pj, align 8, !tbaa !31, !alias.scope !272, !noalias !271
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i70.i, align 8, !tbaa !29, !alias.scope !272, !noalias !271
  store i8 1, ptr %i.pk, align 8, !tbaa !36, !alias.scope !272, !noalias !271
  store i64 %i.ph, ptr %i.pl, align 8, !tbaa !79, !alias.scope !272, !noalias !271
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_, ptr %i.pi, align 8, !alias.scope !272, !noalias !271
  store i64 %i.pm, ptr %.sroa.4.0..sroa_idx.i.i.i.i71.i, align 8, !tbaa !15, !alias.scope !272, !noalias !271
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  store ptr %i.pn, ptr %22, align 8, !tbaa !21, !alias.scope !275, !noalias !271
  store i64 0, ptr %i.po, align 8, !tbaa !25, !alias.scope !275, !noalias !271
  store i8 0, ptr %i.pn, align 8, !tbaa !15, !alias.scope !275, !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21, !noalias !276
  store i32 0, ptr %i.pp, align 8, !tbaa !40, !noalias !276
  store i8 0, ptr %i.pq, align 8, !tbaa !41, !noalias !276
  store i32 1, ptr %i.pr, align 4, !tbaa !42, !noalias !276
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ps, i8 0, i64 24, i1 false), !noalias !276
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %19, align 8, !tbaa !17, !noalias !276
  store ptr %22, ptr %i.pt, align 8, !tbaa !27, !noalias !276
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef null, i64 noundef 0, i32 noundef 0) #21, !noalias !271
  %i.acr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(33) %23) #21, !noalias !271 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %19) #21, !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21, !noalias !276
  call void @_ZN12lldb_private8Debugger13ReportWarningENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalImEPSt9once_flag(ptr nofree noundef nonnull align 8 dereferenceable(32) %22, i64 undef, i8 0, ptr noundef null) #21, !noalias !271
  %i.acs = load ptr, ptr %22, align 8, !tbaa !24, !noalias !271 ; 2 uses
  %i.act = icmp eq ptr %i.acs, %i.pn
  br i1 %i.act, label %_ZN12_GLOBAL__N_133RequestFileFromSymStoreServerHTTPEN4llvm9StringRefES1_S1_.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72.i: ; preds = %_ZN12_GLOBAL__N_119HasUnsafeCharactersEN4llvm9StringRefE.exit.thread100.i.i
  %i.acu = load i64, ptr %i.pn, align 8, !tbaa !15, !noalias !271
  %i.acv = add i64 %i.acu, 1
  call void @_ZdlPvm(ptr noundef %i.acs, i64 noundef %i.acv) #22, !noalias !271
  br label %_ZN12_GLOBAL__N_133RequestFileFromSymStoreServerHTTPEN4llvm9StringRefES1_S1_.exit.thread.i

_ZN12_GLOBAL__N_133RequestFileFromSymStoreServerHTTPEN4llvm9StringRefES1_S1_.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_119HasUnsafeCharactersEN4llvm9StringRefE.exit.thread100.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21, !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %50), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %20), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %21), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %22), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %32), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %39), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %42), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %44), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %47), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %48), !noalias !265
  br label %bb.fk

_ZN12_GLOBAL__N_119HasUnsafeCharactersEN4llvm9StringRefE.exit.thread.i.i: ; preds = %_ZN12_GLOBAL__N_119HasUnsafeCharactersEN4llvm9StringRefE.exit.i.i, %.split.i.i, %._crit_edge.i.i.i43, %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21, !noalias !271
  store ptr %i.pu, ptr %24, align 8, !tbaa !47, !noalias !271
  store i64 0, ptr %i.pv, align 8, !tbaa !44, !noalias !271
  store i64 128, ptr %i.pw, align 8, !tbaa !80, !noalias !271
  call void @_ZN4llvm3sys4path21system_temp_directoryEbRNS_15SmallVectorImplIcEE(i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %24) #21, !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21, !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21, !noalias !271
  store ptr @.str.40, ptr %26, align 8, !tbaa !28, !alias.scope !277, !noalias !271
  store i64 21, ptr %.sroa.22.0..sroa_idx.i.i.i.i7.i.i, align 8, !tbaa !29, !alias.scope !277, !noalias !271
  store ptr %i.qd, ptr %i.qe, align 8, !tbaa !31, !alias.scope !277, !noalias !271
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i8.i.i, align 8, !tbaa !29, !alias.scope !277, !noalias !271
  store i8 1, ptr %i.qf, align 8, !tbaa !36, !alias.scope !277, !noalias !271
  store <2 x i64> %i.pz, ptr %i.qg, align 8, !tbaa !79, !alias.scope !277, !noalias !271
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_, ptr %i.qd, align 8, !alias.scope !277, !noalias !271
  store i64 %i.qi, ptr %.sroa.4.0..sroa_idx.i.i.i9.i.i, align 8, !alias.scope !277, !noalias !271
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i.i59.i, align 8, !alias.scope !277, !noalias !271
  store i64 %i.qj, ptr %.sroa.6.0..sroa_idx.i.i.i.i60.i, align 8, !tbaa !15, !alias.scope !277, !noalias !271
  store i8 7, ptr %i.qk, align 8, !tbaa !13, !noalias !271
  store i8 1, ptr %i.ql, align 1, !tbaa !14, !noalias !271
  store ptr %26, ptr %25, align 8, !tbaa !15, !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21, !noalias !271
  store i16 257, ptr %i.qm, align 8, !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21, !noalias !271
  store i16 257, ptr %i.qn, align 8, !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21, !noalias !271
  store i16 257, ptr %i.qo, align 8, !noalias !271
  call void @_ZN4llvm3sys4path6appendERNS_15SmallVectorImplIcEERKNS_5TwineES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(34) %25, ptr noundef nonnull align 8 dereferenceable(34) %27, ptr noundef nonnull align 8 dereferenceable(34) %28, ptr noundef nonnull align 8 dereferenceable(34) %29) #21, !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21, !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21, !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21, !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21, !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21, !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21, !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21, !noalias !271
  store ptr @.str.41, ptr %31, align 8, !tbaa !28, !alias.scope !278, !noalias !271
  store i64 15, ptr %.sroa.22.0..sroa_idx.i.i.i.i10.i.i, align 8, !tbaa !29, !alias.scope !278, !noalias !271
  store ptr %i.qq, ptr %i.qr, align 8, !tbaa !31, !alias.scope !278, !noalias !271
  store i64 3, ptr %.sroa.2.0..sroa_idx.i.i.i.i11.i.i, align 8, !tbaa !29, !alias.scope !278, !noalias !271
  store i8 1, ptr %i.qs, align 8, !tbaa !36, !alias.scope !278, !noalias !271
  store <2 x i64> %i.qc, ptr %i.qt, align 8, !tbaa !79, !alias.scope !278, !noalias !271
  store i64 %i.qp, ptr %i.qv, align 8, !tbaa !79, !alias.scope !278, !noalias !271
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_, ptr %i.qq, align 8, !alias.scope !278, !noalias !271
  store i64 %i.qw, ptr %.sroa.4.0..sroa_idx.i.i.i13.i.i, align 8, !alias.scope !278, !noalias !271
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i12.i.i, align 8, !alias.scope !278, !noalias !271
  store i64 %i.qx, ptr %.sroa.6.0..sroa_idx.i.i.i14.i.i, align 8, !alias.scope !278, !noalias !271
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_, ptr %.ptr.2.i.i.i.i.i.i, align 8, !alias.scope !278, !noalias !271
  store i64 %i.qy, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !15, !alias.scope !278, !noalias !271
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  store ptr %i.qz, ptr %30, align 8, !tbaa !21, !alias.scope !281, !noalias !271
  store i64 0, ptr %i.ra, align 8, !tbaa !25, !alias.scope !281, !noalias !271
  store i8 0, ptr %i.qz, align 8, !tbaa !15, !alias.scope !281, !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21, !noalias !282
  store i32 0, ptr %i.rb, align 8, !tbaa !40, !noalias !282
  store i8 0, ptr %i.rc, align 8, !tbaa !41, !noalias !282
  store i32 1, ptr %i.rd, align 4, !tbaa !42, !noalias !282
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.re, i8 0, i64 24, i1 false), !noalias !282
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %18, align 8, !tbaa !17, !noalias !282
  store ptr %30, ptr %i.rf, align 8, !tbaa !27, !noalias !282
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef null, i64 noundef 0, i32 noundef 0) #21, !noalias !271
  %i.acw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 8 dereferenceable(33) %31) #21, !noalias !271 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %18) #21, !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21, !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21, !noalias !271
  %i.acx = call noundef zeroext i1 @_ZN4llvm10HTTPClient11isAvailableEv() #21, !noalias !271
  br i1 %i.acx, label %bb.dg, label %._crit_edge.i.i.i61.i

._crit_edge.i.i.i61.i:                            ; preds = %_ZN12_GLOBAL__N_119HasUnsafeCharactersEN4llvm9StringRefE.exit.thread.i.i
  store ptr %i.rg, ptr %32, align 8, !tbaa !21, !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21, !noalias !271
  store i64 50, ptr %i.b, align 8, !tbaa !29, !noalias !271
  %i.acy = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #21, !noalias !271 ; 3 uses
  store ptr %i.acy, ptr %32, align 8, !tbaa !24, !noalias !271
  %i.acz = load i64, ptr %i.b, align 8, !tbaa !29, !noalias !271 ; 3 uses
  store i64 %i.acz, ptr %i.rg, align 8, !tbaa !15, !noalias !271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %i.acy, ptr noundef nonnull align 1 dereferenceable(50) @.str.42, i64 50, i1 false), !noalias !271
  store i64 %i.acz, ptr %i.rh, align 8, !tbaa !25, !noalias !271
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acy, i64 %i.acz
  store i8 0, ptr %i.ada, align 1, !tbaa !15, !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21, !noalias !271
  call void @_ZN12lldb_private8Debugger13ReportWarningENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalImEPSt9once_flag(ptr nofree noundef nonnull align 8 dereferenceable(32) %32, i64 undef, i8 0, ptr noundef null) #21, !noalias !271
  %i.adb = load ptr, ptr %32, align 8, !tbaa !24, !noalias !271 ; 2 uses
  %i.adc = icmp eq ptr %i.adb, %i.rg
  br i1 %i.adc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i: ; preds = %._crit_edge.i.i.i61.i
  %i.add = load i64, ptr %i.rg, align 8, !tbaa !15, !noalias !271
  %i.ade = add i64 %i.add, 1
  call void @_ZdlPvm(ptr noundef %i.adb, i64 noundef %i.ade) #22, !noalias !271
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i

bb.dg:                                            ; preds = %_ZN12_GLOBAL__N_119HasUnsafeCharactersEN4llvm9StringRefE.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21, !noalias !271
  call void @_ZN4llvm10HTTPClientC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %33) #21, !noalias !271
  %i.adf = load atomic i8, ptr @_ZGVZL25GetGlobalPluginPropertiesvE10g_settings acquire, align 8, !noalias !271
  %i.adg = icmp eq i8 %i.adf, 0
  br i1 %i.adg, label %bb.dh, label %_ZL25GetGlobalPluginPropertiesv.exit.i62.i, !prof !58

bb.dh:                                            ; preds = %bb.dg
  %i.adh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL25GetGlobalPluginPropertiesvE10g_settings) #21, !noalias !271
  %.not.i18.i.i = icmp eq i32 %i.adh, 0
  br i1 %.not.i18.i.i, label %_ZL25GetGlobalPluginPropertiesv.exit.i62.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call fastcc void @_ZN12_GLOBAL__N_116PluginPropertiesC2Ev(), !noalias !271
  %i.adi = call i32 @__cxa_atexit(ptr nonnull @_ZN12lldb_private10PropertiesD2Ev, ptr nonnull @_ZZL25GetGlobalPluginPropertiesvE10g_settings, ptr nonnull @__dso_handle) #21, !noalias !271 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL25GetGlobalPluginPropertiesvE10g_settings) #21, !noalias !271
  br label %_ZL25GetGlobalPluginPropertiesv.exit.i62.i

_ZL25GetGlobalPluginPropertiesv.exit.i62.i:       ; preds = %bb.di, %bb.dh, %bb.dg
  %i.adj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25GetGlobalPluginPropertiesvE10g_settings, i64 8), align 8, !tbaa !63, !noalias !271 ; 2 uses
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !17, !noalias !271
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 176
  %i.adm = load ptr, ptr %i.adl, align 8, !noalias !271
  %i.adn = call noundef ptr %i.adm(ptr noundef nonnull align 8 dereferenceable(232) %i.adj, i64 noundef 3, ptr noundef null) #21, !noalias !271, !inline_history !192 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.adn, null
  br i1 %.not.i.i.i.i.i, label %_ZNK12_GLOBAL__N_116PluginProperties10GetTimeoutEv.exit.i.i, label %bb.dj

bb.dj:                                            ; preds = %_ZL25GetGlobalPluginPropertiesv.exit.i62.i
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 64
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !285, !noalias !271 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.adp, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK12_GLOBAL__N_116PluginProperties10GetTimeoutEv.exit.i.i, label %.critedge.i.i.i.i63.i

.critedge.i.i.i.i63.i:                            ; preds = %bb.dj
  %i.adq = call { i64, i8 } @_ZNK12lldb_private11OptionValue14GetUInt64ValueEv(ptr noundef nonnull align 8 dereferenceable(104) %i.adp) #21, !noalias !271 ; 2 uses
  %i.adr = extractvalue { i64, i8 } %i.adq, 0
  %i.ads = extractvalue { i64, i8 } %i.adq, 1
  %i.adt = trunc nuw i8 %i.ads to i1
  %i.adu = mul nsw i64 %i.adr, 1000
  %i.adv = select i1 %i.adt, i64 %i.adu, i64 60000
  br label %_ZNK12_GLOBAL__N_116PluginProperties10GetTimeoutEv.exit.i.i

_ZNK12_GLOBAL__N_116PluginProperties10GetTimeoutEv.exit.i.i: ; preds = %.critedge.i.i.i.i63.i, %bb.dj, %_ZL25GetGlobalPluginPropertiesv.exit.i62.i
  %.sroa.2.1.i.i.i.i.i = phi i64 [ %i.adv, %.critedge.i.i.i.i63.i ], [ 60000, %bb.dj ], [ 60000, %_ZL25GetGlobalPluginPropertiesv.exit.i62.i ]
  call void @_ZN4llvm10HTTPClient10setTimeoutENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 %.sroa.2.1.i.i.i.i.i) #21, !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21, !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21, !noalias !271
  %i.adw = load ptr, ptr %24, align 8, !tbaa !47, !noalias !271 ; 3 uses
  %i.adx = load i64, ptr %i.pv, align 8, !tbaa !44, !noalias !271 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %.not.i19.i.i = icmp eq ptr %i.adw, null
  store ptr %i.ri, ptr %35, align 8, !tbaa !21, !alias.scope !286, !noalias !271
  br i1 %.not.i19.i.i, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %_ZNK12_GLOBAL__N_116PluginProperties10GetTimeoutEv.exit.i.i
  store i64 0, ptr %i.rj, align 8, !tbaa !25, !alias.scope !286, !noalias !271
  store i8 0, ptr %i.ri, align 8, !tbaa !15, !alias.scope !286, !noalias !271
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i

bb.dl:                                            ; preds = %_ZNK12_GLOBAL__N_116PluginProperties10GetTimeoutEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !287
  store i64 %i.adx, ptr %i.a, align 8, !tbaa !29, !noalias !287
  %i.ady = icmp ugt i64 %i.adx, 15
  br i1 %i.ady, label %bb.dm, label %._crit_edge.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dl
  %i.adz = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21, !noalias !271 ; 2 uses
  store ptr %i.adz, ptr %35, align 8, !tbaa !24, !alias.scope !286, !noalias !271
  %i.aea = load i64, ptr %i.a, align 8, !tbaa !29, !noalias !287
  store i64 %i.aea, ptr %i.ri, align 8, !tbaa !15, !alias.scope !286, !noalias !271
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.dm, %bb.dl
  %i.aeb = phi ptr [ %i.adz, %bb.dm ], [ %i.ri, %bb.dl ] ; 2 uses
  switch i64 %i.adx, label %bb.do [
    i64 1, label %bb.dn
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i
  ]

bb.dn:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.aec = load i8, ptr %i.adw, align 1, !tbaa !15, !noalias !271
  store i8 %i.aec, ptr %i.aeb, align 1, !tbaa !15, !noalias !271
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i

bb.do:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aeb, ptr nonnull align 1 %i.adw, i64 %i.adx, i1 false), !noalias !271
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i: ; preds = %bb.do, %bb.dn, %._crit_edge.i.i.i.i.i
  %i.aed = load i64, ptr %i.a, align 8, !tbaa !29, !noalias !287 ; 2 uses
  store i64 %i.aed, ptr %i.rj, align 8, !tbaa !25, !alias.scope !286, !noalias !271
  %i.aee = load ptr, ptr %35, align 8, !tbaa !24, !alias.scope !286, !noalias !271
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.aed
  store i8 0, ptr %i.aef, align 1, !tbaa !15, !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !287
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i, %bb.dk
  %i.aeg = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23, !noalias !271 ; 5 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16 ; 3 uses
  store ptr %i.aeh, ptr %i.aeg, align 8, !tbaa !21, !noalias !271
  %i.aei = load ptr, ptr %35, align 8, !tbaa !24, !noalias !271 ; 2 uses
  %i.aej = icmp eq ptr %i.aei, %i.ri
  br i1 %i.aej, label %bb.dp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i64.i

bb.dp:                                            ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i
  %i.aek = load i64, ptr %i.rj, align 8, !tbaa !25, !noalias !271 ; 3 uses
  %i.ael = icmp ult i64 %i.aek, 16
  call void @llvm.assume(i1 %i.ael)
  %i.aem = add nuw nsw i64 %i.aek, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aeh, ptr noundef nonnull align 8 dereferenceable(1) %i.ri, i64 %i.aem, i1 false), !noalias !271
  br label %"_ZZN12_GLOBAL__N_133RequestFileFromSymStoreServerHTTPEN4llvm9StringRefES1_S1_EN3$_0D2Ev.exit.i.i"

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i64.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i
  store ptr %i.aei, ptr %i.aeg, align 8, !tbaa !24, !noalias !271
  %i.aen = load i64, ptr %i.ri, align 8, !tbaa !15, !noalias !271
  store i64 %i.aen, ptr %i.aeh, align 8, !tbaa !15, !noalias !271
  %.pre.i.i.i.i.i = load i64, ptr %i.rj, align 8, !tbaa !25, !noalias !271
  br label %"_ZZN12_GLOBAL__N_133RequestFileFromSymStoreServerHTTPEN4llvm9StringRefES1_S1_EN3$_0D2Ev.exit.i.i"

"_ZZN12_GLOBAL__N_133RequestFileFromSymStoreServerHTTPEN4llvm9StringRefES1_S1_EN3$_0D2Ev.exit.i.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i64.i, %bb.dp
  %i.aeo = phi i64 [ %i.aek, %bb.dp ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i64.i ]
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  store i64 %i.aeo, ptr %i.aep, align 8, !tbaa !25, !noalias !271
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm27StreamedHTTPResponseHandlerE, i64 16), ptr %34, align 8, !tbaa !17, !noalias !271
  store ptr %i.aeg, ptr %i.rk, align 8, !noalias !271
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !15, !noalias !271
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFN4llvm8ExpectedISt10unique_ptrINS0_16CachedFileStreamESt14default_deleteIS3_EEEEvEZN12_GLOBAL__N_133RequestFileFromSymStoreServerHTTPENS0_9StringRefESA_SA_E3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFN4llvm8ExpectedISt10unique_ptrINS0_16CachedFileStreamESt14default_deleteIS3_EEEEvEZN12_GLOBAL__N_133RequestFileFromSymStoreServerHTTPENS0_9StringRefESA_SA_E3$_0E9_M_invokeERKSt9_Any_data">, ptr %i.rl, align 8, !tbaa !72, !noalias !271
  store ptr %33, ptr %i.rm, align 8, !tbaa !289, !noalias !271
  store ptr null, ptr %i.rn, align 8, !tbaa !291, !noalias !271
  %.pre116.i.i = load i64, ptr %i.ra, align 8, !tbaa !25, !noalias !271
  %.pre.i.i = load ptr, ptr %30, align 8, !tbaa !24, !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21, !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21, !noalias !271
  call void @_ZN4llvm11HTTPRequestC1ENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(216) %36, ptr %.pre.i.i, i64 %.pre116.i.i) #21, !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #21, !noalias !271
  %i.aeq = load atomic i8, ptr @_ZGVZL25GetGlobalPluginPropertiesvE10g_settings acquire, align 8, !noalias !271
  %i.aer = icmp eq i8 %i.aeq, 0
  br i1 %i.aer, label %bb.dq, label %_ZL25GetGlobalPluginPropertiesv.exit22.i.i, !prof !58

bb.dq:                                            ; preds = %"_ZZN12_GLOBAL__N_133RequestFileFromSymStoreServerHTTPEN4llvm9StringRefES1_S1_EN3$_0D2Ev.exit.i.i"
  %i.aes = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL25GetGlobalPluginPropertiesvE10g_settings) #21, !noalias !271
  %.not.i21.i.i = icmp eq i32 %i.aes, 0
  br i1 %.not.i21.i.i, label %_ZL25GetGlobalPluginPropertiesv.exit22.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call fastcc void @_ZN12_GLOBAL__N_116PluginPropertiesC2Ev(), !noalias !271
  %i.aet = call i32 @__cxa_atexit(ptr nonnull @_ZN12lldb_private10PropertiesD2Ev, ptr nonnull @_ZZL25GetGlobalPluginPropertiesvE10g_settings, ptr nonnull @__dso_handle) #21, !noalias !271 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL25GetGlobalPluginPropertiesvE10g_settings) #21, !noalias !271
end_hunk_1

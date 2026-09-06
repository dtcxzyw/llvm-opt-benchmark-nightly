Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3EmitMk?download=true
inline.NumInlined: 2881
inline.NumDeleted: 783
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9EmitGroup7processEv:bb.a
  %.pn97 = phi { ptr, i32 } [ %i.rr, %bb.dq ], [ %i.rs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283 ], [ %i.rs, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.dw

bb.ds:                                            ; preds = %bb.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(112) %29)
          to label %bb.dt unwind label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.rx = load ptr, ptr %33, align 8, !tbaa !23
  %i.ry = load i64, ptr %i.pt, align 8, !tbaa !24
  %i.rz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.rx, i64 noundef %i.ry)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit287 unwind label %bb.dv ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit287: ; preds = %bb.dt
  %i.sa = load ptr, ptr %33, align 8, !tbaa !23   ; 2 uses
  %i.sb = icmp eq ptr %i.sa, %i.pu
  br i1 %i.sb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit287
  %i.sc = load i64, ptr %i.pu, align 8, !tbaa !25
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.sd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit287, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EE9push_backEOS2_.exit

bb.du:                                            ; preds = %bb.ds
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

bb.dv:                                            ; preds = %bb.dt
  %i.sf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sg = load ptr, ptr %33, align 8, !tbaa !23   ; 2 uses
  %i.sh = icmp eq ptr %i.sg, %i.pu
  br i1 %i.sh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291: ; preds = %bb.dv
  %i.si = load i64, ptr %i.pu, align 8, !tbaa !25
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sg, i64 noundef %i.sj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291, %bb.du
  %.pn100 = phi { ptr, i32 } [ %i.se, %bb.du ], [ %i.sf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291 ], [ %i.sf, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %bb.dw

bb.dw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %bb.dn
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293 ], [ %i.rk, %bb.dn ], [ %.pn97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285 ], [ %.pn95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %bb.ek

bb.dx:                                            ; preds = %bb.df
  %i.sk = sdiv exact i64 %i.qf, 40
  %i.sl = add i64 %i.sk, %.051333                 ; 2 uses
  %i.sm = load i64, ptr %.sroa.0297.0332, align 8, !tbaa !233
  %i.sn = add i64 %i.sm, %.049334                 ; 2 uses
  %i.so = load ptr, ptr %i.pm, align 8, !tbaa !234 ; 4 uses
  %i.sp = load ptr, ptr %i.pn, align 8, !tbaa !235
  %.not.i.i = icmp eq ptr %i.so, %i.sp
  br i1 %.not.i.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  store ptr %.sroa.0297.0332, ptr %i.so, align 8, !tbaa !229
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  store ptr %i.sq, ptr %i.pm, align 8, !tbaa !234
  br label %_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EE9push_backEOS2_.exit

bb.dz:                                            ; preds = %bb.dx
  %i.sr = load ptr, ptr %i.pl, align 8, !tbaa !236 ; 4 uses
  %i.ss = ptrtoint ptr %i.so to i64
  %i.st = ptrtoint ptr %i.sr to i64               ; 2 uses
  %i.su = sub i64 %i.ss, %i.st                    ; 5 uses
  %i.sv = icmp eq i64 %i.su, 9223372036854775800
  br i1 %i.sv, label %bb.ea, label %_ZNKSt6vectorIPN9EmitGroup8WorkListESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ea:                                            ; preds = %bb.dz
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #26
  unreachable

_ZNKSt6vectorIPN9EmitGroup8WorkListESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dz
  %i.sw = ashr exact i64 %i.su, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.sw, i64 1)
  %i.sx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.sw ; 2 uses
  %i.sy = icmp ult i64 %i.sx, %i.sw
  %i.sz = call i64 @llvm.umin.i64(i64 %i.sx, i64 1152921504606846975)
  %i.ta = select i1 %i.sy, i64 1152921504606846975, i64 %i.sz ; 3 uses
  %.not.i.i.i.i294 = icmp ne i64 %i.ta, 0
  call void @llvm.assume(i1 %.not.i.i.i.i294)
  %i.tb = shl nuw nsw i64 %i.ta, 3
  %i.tc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tb) #28 ; 4 uses
  %i.td = getelementptr inbounds i8, ptr %i.tc, i64 %i.su ; 2 uses
  store ptr %.sroa.0297.0332, ptr %i.td, align 8, !tbaa !229
  %i.te = icmp sgt i64 %i.su, 0
  br i1 %i.te, label %bb.eb, label %_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.eb:                                            ; preds = %_ZNKSt6vectorIPN9EmitGroup8WorkListESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tc, ptr align 8 %i.sr, i64 %i.su, i1 false)
  br label %_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.eb, %_ZNKSt6vectorIPN9EmitGroup8WorkListESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.sr, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ec

bb.ec:                                            ; preds = %_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.tg = load ptr, ptr %i.pn, align 8, !tbaa !235
  %i.th = ptrtoint ptr %i.tg to i64
  %i.ti = sub i64 %i.th, %i.st
  call void @_ZdlPvm(ptr noundef nonnull %i.sr, i64 noundef %i.ti) #24
  br label %_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ec, %_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.tc, ptr %i.pl, align 8, !tbaa !236
  store ptr %i.tf, ptr %i.pm, align 8, !tbaa !234
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %i.ta
  store ptr %i.tj, ptr %i.pn, align 8, !tbaa !235
  br label %_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.dy, %bb.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, %bb.de
  %.152 = phi i64 [ %.051333, %bb.de ], [ %.051333, %bb.dg ], [ %.051333, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ], [ %i.sl, %bb.dy ], [ %i.sl, %_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %.150 = phi i64 [ %.049334, %bb.de ], [ %.049334, %bb.dg ], [ %.049334, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ], [ %i.sn, %bb.dy ], [ %i.sn, %_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.0297.0332, i64 48 ; 2 uses
  %.not307 = icmp eq ptr %i.tk, %i.pk
  br i1 %.not307, label %._crit_edge, label %bb.de

bb.ed:                                            ; preds = %._crit_edge
  call void @_ZN9EmitGroup13dumpWorkListsERSo(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.pv)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %._crit_edge
  %i.tl = call noundef zeroext i1 @_ZN9EmitGroup18fallbackNoGroupingEm(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 noundef %.051.lcssa)
  br i1 %i.tl, label %bb.ej, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !237 ; 4 uses
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !237 ; 4 uses
  %.not.i.i295 = icmp eq ptr %i.tn, %i.tp
  br i1 %.not.i.i295, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN9EmitGroup8WorkListESt6vectorIS4_SaIS4_EEEEZNS2_7processEvEUlPKS3_SB_E_EvT_SD_T0_.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.tq = ptrtoint ptr %i.tp to i64
  %i.tr = ptrtoint ptr %i.tn to i64
  %i.ts = sub i64 %i.tq, %i.tr
  %i.tt = ashr exact i64 %i.ts, 3
  %i.tu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.tt, i1 true)
  %i.tv = shl nuw nsw i64 %i.tu, 1
  %i.tw = xor i64 %i.tv, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN9EmitGroup8WorkListESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_7processEvEUlPKS3_SD_E_EEEvT_SG_T0_T1_(ptr %i.tn, ptr %i.tp, i64 noundef %i.tw)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN9EmitGroup8WorkListESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_7processEvEUlPKS3_SD_E_EEEvT_SG_T0_(ptr %i.tn, ptr %i.tp)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN9EmitGroup8WorkListESt6vectorIS4_SaIS4_EEEEZNS2_7processEvEUlPKS3_SB_E_EvT_SD_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN9EmitGroup8WorkListESt6vectorIS4_SaIS4_EEEEZNS2_7processEvEUlPKS3_SB_E_EvT_SD_T0_.exit: ; preds = %bb.ef, %bb.eg
  call void @_ZN9EmitGroup13assignBucketsEm(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 noundef %.049.lcssa)
  call void @_ZN9EmitGroup15buildOutputListEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.tx = load ptr, ptr %i.pf, align 8, !tbaa !222 ; 2 uses
  %.not309 = icmp eq ptr %i.tx, null
  br i1 %.not309, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN9EmitGroup8WorkListESt6vectorIS4_SaIS4_EEEEZNS2_7processEvEUlPKS3_SB_E_EvT_SD_T0_.exit
  call void @_ZNK9EmitGroup14dumpOutputListERSo(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.tx)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN9EmitGroup8WorkListESt6vectorIS4_SaIS4_EEEEZNS2_7processEvEUlPKS3_SB_E_EvT_SD_T0_.exit
  call void @_ZNK9EmitGroup15assertFilesSameEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.ee, %bb.bp
  ret void

bb.ek:                                            ; preds = %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, %bb.dw, %bb.av, %bb.af, %bb.p
  %.pn103.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %bb.p ], [ %.pn72.pn, %bb.av ], [ %.pn64.pn, %bb.af ], [ %.pn103.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264 ], [ %.pn100.pn, %bb.dw ], [ %.pn80.pn, %bb.bm ]
  resume { ptr, i32 } %.pn103.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9EmitGroup27FileOrConcatenatedFilesListESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !176    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 56
  %i.g = icmp ugt i64 %2, 164703072086692425
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN9EmitGroup27FileOrConcatenatedFilesListEE8allocateEmPKv.exit.i.i.i, !prof !17

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIN9EmitGroup27FileOrConcatenatedFilesListEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN9EmitGroup27FileOrConcatenatedFilesListEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN9EmitGroup27FileOrConcatenatedFilesListEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !176
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !177
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !128
  %i.m = load ptr, ptr %1, align 8, !tbaa !129    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !129  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup27FileOrConcatenatedFilesListESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN9EmitGroup27FileOrConcatenatedFilesListEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN9EmitGroup27FileOrConcatenatedFilesListEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN9EmitGroup27FileOrConcatenatedFilesListEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN9EmitGroup27FileOrConcatenatedFilesListC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN9EmitGroup27FileOrConcatenatedFilesListEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN9EmitGroup27FileOrConcatenatedFilesListEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup27FileOrConcatenatedFilesListESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !674

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #23 ; 0 uses
  invoke void @_ZSt8_DestroyIPN9EmitGroup27FileOrConcatenatedFilesListEEvT_S3_(ptr noundef %i.i, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #26
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #27
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup27FileOrConcatenatedFilesListESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN9EmitGroup27FileOrConcatenatedFilesListEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN9EmitGroup27FileOrConcatenatedFilesListEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !177
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !176    ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN9EmitGroup27FileOrConcatenatedFilesListESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !128
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #24
  br label %_ZNSt12_Vector_baseIN9EmitGroup27FileOrConcatenatedFilesListESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN9EmitGroup27FileOrConcatenatedFilesListESaIS1_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9EmitGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !236  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !235
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EED2Ev.exit

_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !222  ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISt14basic_ofstreamIcSt11char_traitsIcEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteISt14basic_ofstreamIcSt11char_traitsIcEEEclEPS3_.exit.i

_ZNKSt14default_deleteISt14basic_ofstreamIcSt11char_traitsIcEEEclEPS3_.exit.i: ; preds = %_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EED2Ev.exit
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(248) %i.i) #23, !inline_history !675
  br label %_ZNSt10unique_ptrISt14basic_ofstreamIcSt11char_traitsIcEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrISt14basic_ofstreamIcSt11char_traitsIcEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN9EmitGroup8WorkListESaIS2_EED2Ev.exit, %_ZNKSt14default_deleteISt14basic_ofstreamIcSt11char_traitsIcEEEclEPS3_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !238  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !239  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN9EmitGroup8WorkListES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrISt14basic_ofstreamIcSt11char_traitsIcEESt14default_deleteIS3_EED2Ev.exit, %_ZSt8_DestroyIN9EmitGroup8WorkListEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyIN9EmitGroup8WorkListEEvPT_.exit.i.i.i ], [ %i.n, %_ZNSt10unique_ptrISt14basic_ofstreamIcSt11char_traitsIcEESt14default_deleteIS3_EED2Ev.exit ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !130  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !122  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN9EmitGroup17FilenameWithScoreES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyIN9EmitGroup17FilenameWithScoreEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN9EmitGroup17FilenameWithScoreEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyIN9EmitGroup17FilenameWithScoreEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !25
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #24
  br label %_ZSt8_DestroyIN9EmitGroup17FilenameWithScoreEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN9EmitGroup17FilenameWithScoreEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN9EmitGroup17FilenameWithScoreES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN9EmitGroup17FilenameWithScoreES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN9EmitGroup17FilenameWithScoreEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !130
  br label %_ZSt8_DestroyIPN9EmitGroup17FilenameWithScoreES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN9EmitGroup17FilenameWithScoreES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN9EmitGroup17FilenameWithScoreES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.aa = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN9EmitGroup17FilenameWithScoreES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN9EmitGroup8WorkListEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN9EmitGroup17FilenameWithScoreES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !119
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #24
  br label %_ZSt8_DestroyIN9EmitGroup8WorkListEEvPT_.exit.i.i.i

_ZSt8_DestroyIN9EmitGroup8WorkListEEvPT_.exit.i.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPN9EmitGroup17FilenameWithScoreES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.ag, %i.p
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPN9EmitGroup8WorkListES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !676

_ZSt8_DestroyIPN9EmitGroup8WorkListES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN9EmitGroup8WorkListEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.m, align 8, !tbaa !238
  br label %_ZSt8_DestroyIPN9EmitGroup8WorkListES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN9EmitGroup8WorkListES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN9EmitGroup8WorkListES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrISt14basic_ofstreamIcSt11char_traitsIcEESt14default_deleteIS3_EED2Ev.exit
  %i.ah = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN9EmitGroup8WorkListES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.n, %_ZNSt10unique_ptrISt14basic_ofstreamIcSt11char_traitsIcEESt14default_deleteIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN9EmitGroup8WorkListESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN9EmitGroup8WorkListES1_EvT_S3_RSaIT0_E.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !240
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #24
  br label %_ZNSt6vectorIN9EmitGroup8WorkListESaIS1_EED2Ev.exit

_ZNSt6vectorIN9EmitGroup8WorkListESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9EmitGroup8WorkListES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN9EmitGroup8WorkListESaIS1_EED2Ev.exit
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !25
end_hunk_0
begin_hunk_1_@_ZN9EmitGroup18fallbackNoGroupingEm:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.hc, %.pre109
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.fn, align 8, !tbaa !136
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN9EmitGroup27FileOrConcatenatedFilesListESaIS1_EE9push_backEOS1_.exit
  %i.hd = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %.pre108, %_ZNSt6vectorIN9EmitGroup27FileOrConcatenatedFilesListESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.he = load ptr, ptr %i.fr, align 8, !tbaa !138
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hd to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hh) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.thread, %bb.aq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.hi = load ptr, ptr %12, align 8, !tbaa !23   ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.fl
  br i1 %i.hj, label %_ZN9EmitGroup27FileOrConcatenatedFilesListD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.hk = load i64, ptr %i.fl, align 8, !tbaa !25
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #24
  br label %_ZN9EmitGroup27FileOrConcatenatedFilesListD2Ev.exit

_ZN9EmitGroup27FileOrConcatenatedFilesListD2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.097.0106, i64 40 ; 2 uses
  %.not104 = icmp eq ptr %i.hm, %i.fk
  br i1 %.not104, label %.loopexit, label %bb.aj

bb.ar:                                            ; preds = %bb.ap, %.noexc.i.i.i.i
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9EmitGroup27FileOrConcatenatedFilesListD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.as

.loopexit:                                        ; preds = %_ZN9EmitGroup27FileOrConcatenatedFilesListD2Ev.exit, %.thread150, %.thread
  %.123101 = phi i1 [ false, %.thread150 ], [ true, %.thread ], [ true, %_ZN9EmitGroup27FileOrConcatenatedFilesListD2Ev.exit ]
  ret i1 %.123101

bb.as:                                            ; preds = %bb.ar, %bb.ai, %bb.q
  %.pn41 = phi { ptr, i32 } [ %i.hn, %bb.ar ], [ %.pn38.pn, %bb.ai ], [ %.pn30.pn, %bb.q ]
  resume { ptr, i32 } %.pn41
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9dumpLevelv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %1 = alloca %"class.std::allocator", align 1    ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load i32, ptr @_ZZL9dumpLevelvE7s_level, align 4, !tbaa !31 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.l, !prof !17

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef i32 @_ZNK9V3Options9dumpLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !25
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = invoke noundef i32 @_ZNK9V3Options12dumpSrcLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !25
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.o = call i32 @llvm.umax.i32(i32 %i.c, i32 %i.i) ; 3 uses
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1914), align 2, !tbaa !76, !range !77, !noundef !78
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.thread, label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.h:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.h
  %i.w = load i64, ptr %i.u, align 8, !tbaa !25
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.g
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.j:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.i
  %.pn16 = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.z, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.k

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  store i32 %i.o, ptr @_ZZL9dumpLevelvE7s_level, align 4, !tbaa !31
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  resume { ptr, i32 } %.pn16.pn

bb.l:                                             ; preds = %bb.a, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.114 = phi i32 [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.o, %.thread ], [ %i.a, %bb.a ]
  ret i32 %.114
}

declare void @_ZN8V3Global13debugFilenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(1920), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9EmitGroup21dumpLogScoreHistogramERSo(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !122  ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !130    ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 40                  ; 3 uses
  %5 = icmp ugt i64 %i.k, 1152921504606846975
  br i1 %5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.555) #26
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %bb.d, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28
          to label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i unwind label %.loopexit.split-lp ; 2 uses

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %.pre = load ptr, ptr %0, align 8, !tbaa !117
  %.pre220 = load ptr, ptr %i.e, align 8, !tbaa !117
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %i.o = phi ptr [ %.pre220, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.pre, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.g, %bb.c ] ; 2 uses
  %.sroa.22.2 = phi ptr [ %i.n, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.c ] ; 3 uses
  %.sroa.13.0 = phi ptr [ %i.m, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.c ] ; 4 uses
  %.not6.i = icmp eq ptr %i.p, %i.o
  br i1 %.not6.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i
  %.sroa.22.3 = phi ptr [ %.sroa.22.4, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i ], [ %.sroa.22.2, %bb.d ] ; 4 uses
  %.sroa.0160.3 = phi ptr [ %.sroa.0160.4, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i ], [ %.sroa.13.0, %bb.d ] ; 7 uses
  %i.q = phi ptr [ %i.ak, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i ], [ %.sroa.22.2, %bb.d ] ; 3 uses
  %i.r = phi ptr [ %.sroa.13.1, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i ], [ %.sroa.13.0, %bb.d ] ; 3 uses
  %.sroa.03.07.i = phi ptr [ %i.al, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i ], [ %i.p, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !121  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  store i64 %i.t, ptr %i.r, align 8, !tbaa !83
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = ptrtoint ptr %.sroa.0160.3 to i64        ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 5 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.g, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #26
          to label %.noexc63 unwind label %.loopexit.split-lp

.noexc63:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.f
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ac, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #28
          to label %.noexc64 unwind label %.loopexit ; 4 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.w ; 2 uses
  store i64 %i.t, ptr %i.af, align 8, !tbaa !83
  %i.ag = icmp sgt i64 %i.w, 0
  br i1 %i.ag, label %bb.h, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i

bb.h:                                             ; preds = %.noexc64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 8 %.sroa.0160.3, i64 %i.w, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.h, %.noexc64
  %.not.i17.i.i.i.i.i = icmp eq ptr %.sroa.0160.3, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i
  %i.ah = ptrtoint ptr %.sroa.22.3 to i64
  %i.ai = sub i64 %i.ah, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0160.3, i64 noundef %i.ai) #24
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac ; 2 uses
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i

_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i, %bb.e
  %.sroa.22.4 = phi ptr [ %i.aj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.22.3, %bb.e ] ; 5 uses
  %.pn180 = phi ptr [ %i.af, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i ], [ %i.r, %bb.e ]
  %.sroa.0160.4 = phi ptr [ %i.ae, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0160.3, %bb.e ] ; 9 uses
  %i.ak = phi ptr [ %i.aj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i ], [ %i.q, %bb.e ]
  %.sroa.13.1 = getelementptr inbounds nuw i8, ptr %.pn180, i64 8 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.al, %i.o
  br i1 %.not.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit, label %.lr.ph.i, !llvm.loop !677

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i
  %.not.i.i = icmp eq ptr %.sroa.0160.4, %.sroa.13.1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit
  %i.am = ptrtoint ptr %.sroa.13.1 to i64
  %i.an = ptrtoint ptr %.sroa.0160.4 to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ap, i1 true)
  %i.ar = shl nuw nsw i64 %i.aq, 1
  %i.as = xor i64 %i.ar, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.sroa.0160.4, ptr nonnull %.sroa.13.1, i64 noundef %i.as)
          to label %.noexc65 unwind label %.loopexit.split-lp

.noexc65:                                         ; preds = %bb.j
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %.sroa.0160.4, ptr nonnull %.sroa.13.1)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit unwind label %.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit: ; preds = %bb.d, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit, %.noexc65
  %.not.i.i258 = phi i1 [ false, %.noexc65 ], [ true, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit ], [ true, %bb.d ]
  %.sroa.0160.5255 = phi ptr [ %.sroa.0160.4, %.noexc65 ], [ %.sroa.0160.4, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit ], [ %.sroa.13.0, %bb.d ] ; 8 uses
  %.sroa.13.2254 = phi ptr [ %.sroa.13.1, %.noexc65 ], [ %.sroa.13.1, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit ], [ %.sroa.13.0, %bb.d ] ; 2 uses
  %.sroa.22.5251 = phi ptr [ %.sroa.22.4, %.noexc65 ], [ %.sroa.22.4, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit ], [ %.sroa.22.2, %bb.d ] ; 5 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.13.2254, i64 -8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !83 ; 6 uses
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.556, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.au)
          to label %_ZNSolsEl.exit unwind label %bb.x ; 4 uses

_ZNSolsEl.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !25
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !27
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !241
  %.not.i69 = icmp eq i64 %i.bc, 0
  br i1 %.not.i69, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSolsEl.exit
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %bb.m unwind label %bb.x       ; 0 uses

bb.l:                                             ; preds = %_ZNSolsEl.exit
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext 10)
          to label %bb.m unwind label %bb.x       ; 0 uses

bb.m:                                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %i.bf = call i64 @llvm.abs.i64(i64 %i.au, i1 false) ; 5 uses
  %i.bg = icmp ult i64 %i.bf, 10
  br i1 %i.bg, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %bb.s
  %.029.i.i = phi i32 [ %i.bo, %bb.s ], [ 1, %bb.m ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.bn, %bb.s ], [ %i.bf, %bb.m ] ; 5 uses
  %i.bh = icmp ult i64 %.02328.i.i, 100
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.bi = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.bj = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bl = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bn = udiv i64 %.02328.i.i, 10000
  %i.bo = add i32 %.029.i.i, 4                    ; 2 uses
  %i.bp = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.bp, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !680
end_hunk_1

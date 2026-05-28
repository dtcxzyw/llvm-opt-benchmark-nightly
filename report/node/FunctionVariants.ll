inline.NumInlined: 3160
inline.NumDeleted: 1113
begin_hunk_0_@_ZNK4LIEF5MachO16FunctionVariants17RuntimeTableEntry9to_stringB5cxx11Ev:bb.a
  br label %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EEC2ERKS6_.exit

_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EEC2ERKS6_.exit: ; preds = %.thread, %bb.q, %bb.r, %bb.s
  %i.df = phi ptr [ %i.db, %bb.q ], [ %i.db, %bb.r ], [ %i.db, %bb.s ], [ %i.cy, %.thread ] ; 3 uses
  %i.dg = phi ptr [ %i.da, %bb.q ], [ %i.da, %bb.r ], [ %i.da, %bb.s ], [ null, %.thread ] ; 5 uses
  %i.dh = icmp eq ptr %i.dg, %i.df
  br i1 %i.dh, label %bb.t, label %.preheader

bb.t:                                             ; preds = %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EEC2ERKS6_.exit
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.3, i64 noundef 12) #25 ; 0 uses
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit41: ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store ptr %.sroa.074.1, ptr %15, align 8, !alias.scope !64
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %.sroa.777.1, ptr %i.dj, align 8, !alias.scope !64
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @.str.5, ptr %i.dk, align 8, !alias.scope !64
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !64
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store ptr %.sroa.068.1, ptr %16, align 8, !alias.scope !67
  %i.dl = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %.sroa.7.1, ptr %i.dl, align 8, !alias.scope !67
  %i.dm = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr @.str.6, ptr %i.dm, align 8, !alias.scope !67
  %.sroa.2.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i12, align 8, !alias.scope !67
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !70
  store ptr %15, ptr %8, align 16, !noalias !70
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customINS0_9join_viewIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEESD_cEENS0_9formatterISE_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.dn, align 8, !noalias !70
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %16, ptr %i.do, align 16, !noalias !70
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customINS0_9join_viewIN9__gnu_cxx17__normal_iteratorIPPKcSt6vectorISA_SaISA_EEEESF_cEENS0_9formatterISG_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.dp, align 8, !noalias !70
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !73
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.ds, align 8, !noalias !73
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.dr, align 8, !noalias !73
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.dt, ptr %5, align 8, !noalias !73
  store i64 500, ptr %i.dq, align 8, !noalias !73
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !73
  store ptr @.str.4, ptr %2, align 8, !noalias !73
  %.sroa.2.0..sroa_idx.i14.i36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %.sroa.2.0..sroa_idx.i14.i36, align 8, !noalias !73
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.du, align 8, !noalias !73
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %5, ptr %i.dv, align 8, !noalias !73
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 255, ptr %i.dw, align 8, !noalias !73
  %.sroa.2.0..sroa_idx.i15.i37 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %8, ptr %.sroa.2.0..sroa_idx.i15.i37, align 8, !noalias !73
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %i.dx, align 8, !noalias !73
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.4, i64 11, ptr noundef nonnull align 8 dereferenceable(56) %2), !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !73
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.dy = load i64, ptr %i.ds, align 8, !noalias !79 ; 6 uses
  %i.dz = icmp ult i64 %i.dy, 4611686018427387903
  call void @llvm.assume(i1 %i.dz)
  %i.ea = load ptr, ptr %5, align 8, !noalias !79 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.eb, ptr %14, align 8, !alias.scope !79
  %i.ec = icmp eq ptr %i.ea, null
  %i.ed = icmp ne i64 %i.dy, 0
  %or.cond.i.i.i13 = and i1 %i.ed, %i.ec
  br i1 %or.cond.i.i.i13, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit41
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.257) #26
  unreachable

bb.v:                                             ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !79
  store i64 %i.dy, ptr %i.a, align 8, !noalias !79
  %i.ee = icmp samesign ugt i64 %i.dy, 15
  br i1 %i.ee, label %bb.w, label %._crit_edge.i.i.i.i14

bb.w:                                             ; preds = %bb.v
  %i.ef = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #25 ; 2 uses
  store ptr %i.ef, ptr %14, align 8, !alias.scope !79
  %i.eg = load i64, ptr %i.a, align 8, !noalias !79
  store i64 %i.eg, ptr %i.eb, align 8, !alias.scope !79
  br label %._crit_edge.i.i.i.i14

._crit_edge.i.i.i.i14:                            ; preds = %bb.w, %bb.v
  %i.eh = phi ptr [ %i.ef, %bb.w ], [ %i.eb, %bb.v ] ; 2 uses
  switch i64 %i.dy, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i15
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i.i14
  %i.ei = load i8, ptr %i.ea, align 1
  store i8 %i.ei, ptr %i.eh, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i15

bb.y:                                             ; preds = %._crit_edge.i.i.i.i14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eh, ptr align 1 %i.ea, i64 %i.dy, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i15

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i15: ; preds = %bb.y, %bb.x, %._crit_edge.i.i.i.i14
  %i.ej = load i64, ptr %i.a, align 8, !noalias !79 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.ej, ptr %i.ek, align 8, !alias.scope !79
  %i.el = load ptr, ptr %14, align 8, !alias.scope !79
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ej
  store i8 0, ptr %i.em, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !79
  %i.en = load ptr, ptr %5, align 8, !noalias !73 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.en, %i.dt
  br i1 %.not.i.i.i16, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit17, label %bb.z

bb.z:                                             ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i15
  call void @free(ptr noundef %i.en) #25
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit17

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit17: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i15, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !70
  %i.eo = load ptr, ptr %14, align 8
  %i.ep = load i64, ptr %i.ek, align 8
  %i.eq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %i.eo, i64 noundef %i.ep) #25 ; 0 uses
  %i.er = load ptr, ptr %14, align 8              ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.eb
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit17
  %i.et = load i64, ptr %i.eb, align 8
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %.not.i.i.i21 = icmp eq ptr %.sroa.068.1, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.ev = ptrtoint ptr %.sroa.12.1 to i64
  %i.ew = ptrtoint ptr %.sroa.068.1 to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.068.1, i64 noundef %i.ex) #27
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.aa
  %.not.i.i.i22 = icmp eq ptr %.sroa.074.1, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit
  %i.ey = ptrtoint ptr %.sroa.1280.1 to i64
  %i.ez = ptrtoint ptr %.sroa.074.1 to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.1, i64 noundef %i.fa) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

.preheader:                                       ; preds = %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EEC2ERKS6_.exit, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit
  %.sroa.074.0120 = phi ptr [ %.sroa.074.1, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit ], [ null, %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EEC2ERKS6_.exit ] ; 5 uses
  %.sroa.777.0119 = phi ptr [ %.sroa.777.1, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit ], [ null, %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EEC2ERKS6_.exit ] ; 4 uses
  %.sroa.1280.0118 = phi ptr [ %.sroa.1280.1, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit ], [ null, %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EEC2ERKS6_.exit ] ; 2 uses
  %.sroa.068.0117 = phi ptr [ %.sroa.068.1, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit ], [ null, %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EEC2ERKS6_.exit ] ; 5 uses
  %.sroa.7.0116 = phi ptr [ %.sroa.7.1, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit ], [ null, %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EEC2ERKS6_.exit ] ; 4 uses
  %.sroa.12.0115 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit ], [ null, %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EEC2ERKS6_.exit ] ; 2 uses
  %.sroa.065.0114 = phi ptr [ %i.ga, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit ], [ %i.dg, %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EEC2ERKS6_.exit ] ; 2 uses
  %i.fb = load i32, ptr %.sroa.065.0114, align 4  ; 2 uses
  %i.fc = trunc i32 %i.fb to i8                   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.777.0119, %.sroa.1280.0118
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader
  store i8 %i.fc, ptr %.sroa.777.0119, align 1
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.ad:                                            ; preds = %.preheader
  %i.fd = ptrtoint ptr %.sroa.777.0119 to i64
  %i.fe = ptrtoint ptr %.sroa.074.0120 to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 8 uses
  %i.fg = icmp eq i64 %i.ff, 9223372036854775807
  br i1 %i.fg, label %bb.ae, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.158) #26
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ad
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ff, i64 1)
  %i.fh = add i64 %.sroa.speculated.i.i.i.i, %i.ff ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.ff
  %i.fj = call i64 @llvm.umin.i64(i64 %i.fh, i64 9223372036854775807)
  %i.fk = select i1 %i.fi, i64 9223372036854775807, i64 %i.fj ; 3 uses
  %.not.i.i.i.i23 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i.i.i23, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i, label %17

17:                                               ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fk) #28
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i: ; preds = %17, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %19 = phi ptr [ %18, %17 ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i ] ; 4 uses
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %i.ff ; 2 uses
  store i8 %i.fc, ptr %20, align 1
  %21 = icmp sgt i64 %i.ff, 0
  br i1 %21, label %bb.af, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.af:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %19, ptr align 1 %.sroa.074.0120, i64 %i.ff, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.af, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.074.0120, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0120, i64 noundef %i.ff) #27
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.ag, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %19, i64 %i.fk
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %bb.ac, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %.sroa.1280.1 = phi ptr [ %i.fl, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %.sroa.1280.0118, %bb.ac ] ; 2 uses
  %.pn = phi ptr [ %20, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %.sroa.777.0119, %bb.ac ]
  %.sroa.074.1 = phi ptr [ %19, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %.sroa.074.0120, %bb.ac ] ; 5 uses
  %.sroa.777.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  switch i32 %i.fb, label %bb.cv [
    i32 3145728, label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit
    i32 3145729, label %bb.ah
    i32 3145730, label %bb.ai
    i32 3145731, label %bb.aj
    i32 3145732, label %bb.ak
    i32 3145733, label %bb.al
    i32 3145734, label %bb.am
    i32 3145735, label %bb.an
    i32 3145736, label %bb.ao
    i32 3145737, label %bb.ap
    i32 3145738, label %bb.aq
    i32 3145739, label %bb.ar
    i32 3145740, label %bb.as
    i32 3145741, label %bb.at
    i32 3145742, label %bb.au
    i32 3145743, label %bb.av
    i32 3145744, label %bb.aw
    i32 3145745, label %bb.ax
    i32 3145746, label %bb.ay
    i32 3145747, label %bb.az
    i32 3145748, label %bb.ba
    i32 3145749, label %bb.bb
    i32 3145750, label %bb.bc
    i32 3145751, label %bb.bd
    i32 3145752, label %bb.be
    i32 3145753, label %bb.bf
    i32 3145754, label %bb.bg
    i32 3145755, label %bb.bh
    i32 3145756, label %bb.bi
    i32 3145757, label %bb.bj
    i32 3145758, label %bb.bk
    i32 3145759, label %bb.bl
    i32 3145760, label %bb.bm
    i32 3145761, label %bb.bn
    i32 3145762, label %bb.bo
    i32 3145763, label %bb.bp
    i32 3145764, label %bb.bq
    i32 3145765, label %bb.br
    i32 3145772, label %bb.bs
    i32 3145773, label %bb.bt
    i32 3145774, label %bb.bu
    i32 3145775, label %bb.bv
    i32 3145776, label %bb.bw
    i32 3145777, label %bb.bx
    i32 3145778, label %bb.by
    i32 3145779, label %bb.bz
    i32 3145780, label %bb.ca
    i32 3145781, label %bb.cb
    i32 3145782, label %bb.cc
    i32 3145783, label %bb.cd
    i32 3145784, label %bb.ce
    i32 1048576, label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit
    i32 1048577, label %bb.cf
    i32 1048579, label %bb.cg
    i32 2097152, label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit
    i32 2097153, label %bb.ch
    i32 2097154, label %bb.ci
    i32 2097155, label %bb.cj
    i32 4194304, label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit
    i32 4194305, label %bb.ck
    i32 4194306, label %bb.cl
    i32 4194307, label %bb.cm
    i32 4194308, label %bb.cn
    i32 4194309, label %bb.co
    i32 4194310, label %bb.cp
    i32 4194311, label %bb.cq
    i32 4194312, label %bb.cr
    i32 4194313, label %bb.cs
    i32 4194314, label %bb.ct
    i32 4194315, label %bb.cu
  ]

bb.ah:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.ai:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.aj:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.ak:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.al:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.am:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.an:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.ao:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.ap:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.aq:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.ar:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.as:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.at:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.au:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.av:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.aw:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.ax:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.ay:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.az:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.ba:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bb:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bc:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bd:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.be:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bf:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bg:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bh:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bi:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bj:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bk:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bl:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bm:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bn:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bo:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bp:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bq:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.br:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bs:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bt:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bu:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bv:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

bb.bw:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  br label %_ZN4LIEF5MachOL11pretty_nameENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE.exit

end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELFDumper?download=true
inline.NumInlined: 48625
inline.NumDeleted: 9668
loop-unroll.NumCompletelyUnrolled: 193
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 236
begin_hunk_0_@_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE34getSymbolIndexesForFunctionAddressEmSt8optionalIPKNS2_13Elf_Shdr_ImplIS5_EEE:bb.a
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !269 ; 2 uses
  %i.dv = icmp ult i64 %i.du, 16
  call void @llvm.assume(i1 %i.dv)
  %i.dw = add nuw nsw i64 %i.du, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.dr, i64 %i.dw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.dq, ptr %10, align 8, !tbaa !349, !alias.scope !7821
  %i.dx = load i64, ptr %i.dr, align 8, !tbaa !270
  store i64 %i.dx, ptr %i.ad, align 8, !tbaa !270, !alias.scope !7821
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.s
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !269
  store i64 %i.dz, ptr %i.ae, align 8, !tbaa !269, !alias.scope !7821
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !349
  store i64 0, ptr %i.dy, align 8, !tbaa !269
  store i8 0, ptr %i.dr, align 8, !tbaa !270
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i
  store i8 4, ptr %i.af, align 8, !tbaa !352
  store i8 1, ptr %i.ag, align 1, !tbaa !353
  store ptr %10, ptr %9, align 8, !tbaa !270
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(34) %9) #31
  %i.ea = load ptr, ptr %10, align 8, !tbaa !349  ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.ad
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.ec = load i64, ptr %i.ad, align 8, !tbaa !270
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %i.ee = load ptr, ptr %13, align 8, !tbaa !349  ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.ac
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eg = load i64, ptr %i.ac, align 8, !tbaa !270
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  %i.ei = load ptr, ptr %14, align 8, !tbaa !348  ; 3 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !250
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.ei) #31, !inline_history !0
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.en = load ptr, ptr %11, align 8, !tbaa !349  ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.z
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.ep = load i64, ptr %i.z, align 8, !tbaa !270
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  %i.er = load ptr, ptr %12, align 8, !tbaa !349  ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.x
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.et = load i64, ptr %i.x, align 8, !tbaa !270
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.ev = load ptr, ptr %8, align 8, !tbaa !349   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.ah
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.ex = load i64, ptr %i.ah, align 8, !tbaa !270
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.u:                                             ; preds = %_ZNK4llvm6object13ELFObjectFileINS0_7ELFTypeILNS_10endiannessE1ELb0EEEE11toSymbolRefEPKNS0_13Elf_Shdr_ImplIS4_EEj.exit
  %i.ez = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ez, 0 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1079 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 24 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !672
  %.not.i62 = icmp eq ptr %i.fc, %i.fe
  br i1 %.not.i62, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.ai, ptr %i.fc, align 4, !tbaa !396
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store ptr %i.ff, ptr %i.fb, align 8, !tbaa !1079
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.w:                                             ; preds = %bb.u
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !671 ; 4 uses
  %i.fh = ptrtoint ptr %i.fc to i64
  %i.fi = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fj = sub i64 %i.fh, %i.fi                    ; 5 uses
  %i.fk = icmp eq i64 %i.fj, 9223372036854775804
  br i1 %i.fk, label %bb.x, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #33
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.fl = ashr exact i64 %i.fj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fl, i64 1)
  %i.fm = add nsw i64 %.sroa.speculated.i.i.i, %i.fl ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.fl
  %i.fo = call i64 @llvm.umin.i64(i64 %i.fm, i64 2305843009213693951)
  %i.fp = select i1 %i.fn, i64 2305843009213693951, i64 %i.fo ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fq = shl nuw nsw i64 %i.fp, 2
  %i.fr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fq) #30 ; 4 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 %i.fj ; 2 uses
  store i32 %i.ai, ptr %i.fs, align 4, !tbaa !396
  %i.ft = icmp sgt i64 %i.fj, 0
  br i1 %i.ft, label %bb.y, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.y:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fr, ptr align 4 %i.fg, i64 %i.fj, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.y, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %.not.i17.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.fv = load ptr, ptr %i.fd, align 8, !tbaa !672
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.fw, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fx) #32
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.z, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.fr, ptr %i.fa, align 8, !tbaa !671
  store ptr %i.fu, ptr %i.fb, align 8, !tbaa !1079
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fp
  store ptr %i.fy, ptr %i.fd, align 8, !tbaa !672
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.032 = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ 0, %bb.v ], [ 0, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %.1 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.0169, %bb.v ], [ %.0169, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ] ; 2 uses
  %i.fz = load i8, ptr %i.v, align 8
  %i.ga = trunc i8 %i.fz to i1
  br i1 %i.ga, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.gb = load ptr, ptr %7, align 8, !tbaa !346   ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i64, label %bb.ab, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.aa
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !250
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(8) %i.gb) #31, !inline_history !79
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i, %bb.aa, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br i1 %i.bj, label %._crit_edge.loopexit, label %.thread

.thread:                                          ; preds = %bb.ab, %bb.d, %bb.e
  %.2153 = phi i1 [ %.0169, %bb.d ], [ %.1, %bb.ab ], [ %.0169, %bb.e ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.039168, i64 16 ; 2 uses
  %.not40 = icmp eq ptr %i.gf, %i.s
  br i1 %.not40, label %._crit_edge.loopexit, label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.ab, %.thread
  %.234.ph = phi i32 [ 2, %.thread ], [ %.032, %bb.ab ]
  %.3.ph = phi i1 [ %.2153, %.thread ], [ %.1, %bb.ab ]
  %i.gg = and i32 %.234.ph, -3
  %i.gh = icmp eq i32 %i.gg, 0
  br label %._crit_edge

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i66: ; preds = %_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb0EEEE7symbolsEPKNS0_13Elf_Shdr_ImplIS4_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !7822)
  %i.gi = load i64, ptr %6, align 8, !tbaa !346, !noalias !7822
  %i.gj = inttoptr i64 %i.gi to ptr
  store ptr null, ptr %6, align 8, !tbaa !346, !noalias !7822
  store ptr %i.gj, ptr %18, align 8, !tbaa !348, !alias.scope !7822
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr nofree noundef nonnull align 8 dereferenceable(8) %18) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !7823)
  %i.gk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.734, i64 noundef 33) #31, !noalias !7823 ; 6 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.gl, ptr %16, align 8, !tbaa !268, !alias.scope !7823
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !349 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 5 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i66
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !269 ; 3 uses
  %i.gr = icmp ult i64 %i.gq, 16
  call void @llvm.assume(i1 %i.gr)
  %i.gs = add nuw nsw i64 %i.gq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gl, ptr noundef nonnull align 8 dereferenceable(1) %i.gn, i64 %i.gs, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i66
  store ptr %i.gm, ptr %16, align 8, !tbaa !349, !alias.scope !7823
  %i.gt = load i64, ptr %i.gn, align 8, !tbaa !270
  store i64 %i.gt, ptr %i.gl, align 8, !tbaa !270, !alias.scope !7823
  %.phi.trans.insert.i68 = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i68, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.gu = phi i64 [ %i.gq, %bb.ac ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.gu, ptr %i.gw, align 8, !tbaa !269, !alias.scope !7823
  store ptr %i.gn, ptr %i.gk, align 8, !tbaa !349
  store i64 0, ptr %i.gv, align 8, !tbaa !269
  store i8 0, ptr %i.gn, align 8, !tbaa !270
  %i.gx = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 4, ptr %i.gx, align 8, !tbaa !352
  %i.gy = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.gy, align 1, !tbaa !353
  store ptr %16, ptr %15, align 8, !tbaa !270
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(34) %15) #31
  %i.gz = load ptr, ptr %16, align 8, !tbaa !349  ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gl
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.hb = load i64, ptr %i.gl, align 8, !tbaa !270
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %i.hd = load ptr, ptr %17, align 8, !tbaa !349  ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !270
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  %i.hi = load ptr, ptr %18, align 8, !tbaa !348  ; 3 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZN4llvm5ErrorD2Ev.exit77, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.hk = load ptr, ptr %i.hi, align 8, !tbaa !250
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(8) %i.hi) #31, !inline_history !0
  br label %_ZN4llvm5ErrorD2Ev.exit77

_ZN4llvm5ErrorD2Ev.exit77:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit, %_ZN4llvm5ErrorD2Ev.exit77
  %.335 = phi i1 [ true, %_ZN4llvm5ErrorD2Ev.exit77 ], [ true, %bb.c ], [ %i.gh, %._crit_edge.loopexit ]
  %.5 = phi i1 [ false, %_ZN4llvm5ErrorD2Ev.exit77 ], [ false, %bb.c ], [ %.3.ph, %._crit_edge.loopexit ]
  %i.hn = load i8, ptr %i.m, align 8
  %i.ho = trunc i8 %i.hn to i1
  br i1 %i.ho, label %bb.ae, label %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEEEEED2Ev.exit

bb.ae:                                            ; preds = %._crit_edge
  %i.hp = load ptr, ptr %6, align 8, !tbaa !346   ; 3 uses
  %.not.i.i79 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i79, label %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEEEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i80

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i80: ; preds = %bb.ae
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !250
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(8) %i.hp) #31, !inline_history !45
  br label %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEEEEED2Ev.exit

_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEEEEED2Ev.exit: ; preds = %._crit_edge, %bb.ae, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %.335, label %bb.af, label %bb.ba

bb.af:                                            ; preds = %bb.b, %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEEEEED2Ev.exit, %bb.a
  %i.ht = load ptr, ptr %i.d, align 8, !tbaa !1082, !noalias !7824 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !1083, !noalias !7824 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 1060
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !1084, !noalias !7824 ; 4 uses
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %.loopexit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hz = add i32 %i.hx, -1                       ; 2 uses
  %i.ia = mul i64 %2, -4658895280553007687        ; 2 uses
  %i.ib = lshr i64 %i.ia, 31
  %i.ic = xor i64 %i.ib, %i.ia
  %i.id = trunc i64 %i.ic to i32
  %i.ie = and i32 %i.hz, %i.id                    ; 3 uses
  %i.if = zext i32 %i.ie to i64                   ; 2 uses
  %i.ig = lshr i64 %i.if, 5
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !396, !noalias !7825
  %i.ij = and i32 %i.ie, 31
  %i.ik = lshr i32 %i.ii, %i.ij
  %i.il = trunc i32 %i.ik to i1
  br i1 %i.il, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !507

.lr.ph.i.i.i.i:                                   ; preds = %bb.ag, %bb.ah
  %i.im = phi i64 [ %i.is, %bb.ah ], [ %i.if, %bb.ag ]
  %.017.i.i.i.i = phi i32 [ %i.ir, %bb.ah ], [ %i.ie, %bb.ag ]
  %i.in = getelementptr inbounds nuw [32 x i8], ptr %i.ht, i64 %i.im ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !340, !noalias !7825
  %i.ip = icmp eq i64 %2, %i.io
  br i1 %i.ip, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit, label %bb.ah, !prof !425

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i
  %i.iq = add nuw i32 %.017.i.i.i.i, 1
  %i.ir = and i32 %i.iq, %i.hz                    ; 3 uses
  %i.is = zext i32 %i.ir to i64                   ; 2 uses
  %i.it = lshr i64 %i.is, 5
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !396, !noalias !7825
  %i.iw = and i32 %i.ir, 31
  %i.ix = lshr i32 %i.iv, %i.iw
  %i.iy = trunc i32 %i.ix to i1
  br i1 %i.iy, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !508

.loopexit.i.i:                                    ; preds = %bb.ah, %bb.ag, %bb.af
  %i.iz = zext i32 %i.hx to i64                   ; 2 uses
  %i.ja = getelementptr inbounds nuw [32 x i8], ptr %i.ht, i64 %i.iz
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre192 = zext i32 %i.hx to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre192, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit ], [ %i.iz, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.in, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit ], [ %i.ja, %.loopexit.i.i ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.ht, i64 %.pre-phi
  %i.jc = icmp eq ptr %.lcssa.sink.i.i, %i.jb
  br i1 %i.jc, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit
  %i.jd = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !613 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !613 ; 3 uses
  %.not162174 = icmp eq ptr %i.je, %i.jg
  br i1 %.not162174, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.ai
  %i.jh = trunc nuw i8 %4 to i1
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 1020
  %i.jn = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.jp = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.jq = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.js = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lET_SF_SF_SF_T1_SG_T0_SG_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !92

_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS5_10endiannessE1ELb0EEEEESt6vectorISA_SaISA_EEEEEET_SG_SG_SG_.exit: ; preds = %._crit_edge.i.i, %._crit_edge69.i.i, %.lr.ph.i.i.i, %bb.z, %bb.y, %bb.n, %bb.b, %_ZSt13move_backwardIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit, %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit
  %.sroa.032.0 = phi ptr [ %i.p, %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit ], [ %2, %bb.n ], [ %i.ag, %_ZSt13move_backwardIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit ], [ %0, %bb.b ], [ %0, %bb.z ], [ %2, %bb.y ], [ %1, %.lr.ph.i.i.i ], [ %i.av, %._crit_edge69.i.i ], [ %i.av, %._crit_edge.i.i ]
  ret ptr %.sroa.032.0
}

declare { ptr, i64 } @_ZN4llvm6sframe11getVersionsEv() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsINS_6sframe5FlagsES3_Lj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEES7_S7_S7_NS_8ArrayRefINS_9FlagEntryEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i8 noundef zeroext %3, ptr %4, i64 %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, ptr noundef byval(%"class.llvm::ArrayRef.1044") align 8 %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %10 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %11 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SmallVector.1054", align 8 ; 13 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %.sroa.020.0.copyload = load ptr, ptr %9, align 8, !tbaa !1094
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.221.0.copyload = load i64, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !340 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.b, ptr %12, align 8, !tbaa !312
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  store i32 0, ptr %i.c, align 8, !tbaa !313
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 10, ptr %i.d, align 4, !tbaa !314
  %.idx.i = mul nuw nsw i64 %.sroa.221.0.copyload, 24
  %i.e = icmp ugt i64 %.sroa.221.0.copyload, 10
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(256) %12, ptr noundef nonnull %i.b, i64 noundef %.sroa.221.0.copyload, i64 noundef 24) #31
  %.pre8.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !313
  %i.f = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %12, align 8, !tbaa !312
  br label %bb.b

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.221.0.copyload, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i
  %i.g = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ %i.b, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.f, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 8 %.sroa.020.0.copyload, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !313
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %bb.b
  %i.i = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.j = trunc i64 %.sroa.221.0.copyload to i32
  %i.k = add i32 %i.i, %i.j                       ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !313
  %.idx = shl nuw nsw i64 %5, 2
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.not193 = icmp eq i64 %5, 0
  br i1 %.not193, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre196 = load i32, ptr %i.c, align 8, !tbaa !313
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.n = phi i32 [ %.pre196, %._crit_edge.loopexit ], [ %i.k, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %.idx.i39 = mul nuw nsw i64 %i.o, 24
  %i.p = load ptr, ptr %12, align 8, !tbaa !312   ; 19 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i39 ; 3 uses
  %i.r = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = xor i64 %i.s, 126
  call void @_ZSt16__introsort_loopIPN4llvm9FlagEntryElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef %i.p, ptr noundef nonnull %i.q, i64 noundef %i.t, ptr nonnull @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_)
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = icmp ugt i32 %i.n, 16
  br i1 %i.v, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %scevgep.i = getelementptr i8, ptr %i.p, i64 24
  %.sroa.2.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.020.i.idx.i = phi i64 [ 24, %bb.d ], [ %.020.i.add.i, %bb.h ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.p, %bb.d ], [ %.020.i.ptr.i, %bb.h ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.020.i.idx.i ; 9 uses
  %.sroa.22.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %.sroa.22.0.copyload.i134 = load i64, ptr %.sroa.22.0..sroa_idx.i133, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i136 = load i64, ptr %.sroa.2.0..sroa_idx.i135, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i137 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i136, i64 %.sroa.22.0.copyload.i134) ; 2 uses
  %i.w = icmp eq i64 %.sroa.speculated.i.i.i137, 0
  br i1 %i.w, label %.thread.i.i.i146, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138: ; preds = %bb.e
  %.sroa.0.0.copyload.i139 = load ptr, ptr %i.p, align 8, !tbaa !355
  %.sroa.01.0.copyload.i140 = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355 ; 2 uses
  %i.x = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i140, ptr noundef %.sroa.0.0.copyload.i139, i64 noundef %.sroa.speculated.i.i.i137) #34
  %.fr.i.i.i141 = freeze i32 %i.x                 ; 2 uses
  %.not.not.i.i.i142 = icmp eq i32 %.fr.i.i.i141, 0
  br i1 %.not.not.i.i.i142, label %.thread.i.i.i146, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147

.thread.i.i.i146:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138, %bb.e
  %i.y = icmp ult i64 %.sroa.22.0.copyload.i134, %.sroa.2.0.copyload.i136
  br i1 %i.y, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167, label %.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge

.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge: ; preds = %.thread.i.i.i146
  %.sroa.0150.0.copyload.pre = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138
  %i.z = icmp slt i32 %.fr.i.i.i141, 0
  br i1 %i.z, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167: ; preds = %.thread.i.i.i146, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.ptr.i, i64 24, i1 false), !tbaa.struct !974
  %i.aa = icmp samesign ugt i64 %.020.i.idx.i, 24
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !425

bb.f:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

bb.g:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.h

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread: ; preds = %.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147
  %.sroa.0150.0.copyload = phi ptr [ %.sroa.0150.0.copyload.pre, %.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge ], [ %.sroa.01.0.copyload.i140, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147 ] ; 3 uses
  %.sroa.8.0..020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..020.i.ptr.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %.sroa.2.0.copyload.i121 = load i64, ptr %.sroa.2.0..sroa_idx.i120, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i122 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i121, i64 %.sroa.22.0.copyload.i134) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i122, 0
  br i1 %i.ac, label %.thread.i.i.i131, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread
  %.sroa.0.0.copyload.i124 = load ptr, ptr %.pn19.i.i, align 8, !tbaa !355
  %i.ad = call i32 @memcmp(ptr noundef %.sroa.0150.0.copyload, ptr noundef %.sroa.0.0.copyload.i124, i64 noundef %.sroa.speculated.i.i.i122) #34
  %.fr.i.i.i126 = freeze i32 %i.ad                ; 2 uses
  %.not.not.i.i.i127 = icmp eq i32 %.fr.i.i.i126, 0
  br i1 %.not.not.i.i.i127, label %.thread.i.i.i131, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132

.thread.i.i.i131:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread
  %i.ae = icmp ult i64 %.sroa.22.0.copyload.i134, %.sroa.2.0.copyload.i121
  br i1 %i.ae, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123
  %i.af = icmp slt i32 %.fr.i.i.i126, 0
  br i1 %i.af, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.thread.i.i.i131, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117 ], [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117 ], [ %.020.i.ptr.i, %.lr.ph.i.i.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i105 = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -16
  %.sroa.2.0.copyload.i106 = load i64, ptr %.sroa.2.0..sroa_idx.i105, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i107 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i106, i64 %.sroa.22.0.copyload.i134) ; 2 uses
  %i.ag = icmp eq i64 %.sroa.speculated.i.i.i107, 0
  br i1 %i.ag, label %.thread.i.i.i116, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i109 = load ptr, ptr %.0.i.i.i, align 8, !tbaa !355
  %i.ah = call i32 @memcmp(ptr noundef %.sroa.0150.0.copyload, ptr noundef %.sroa.0.0.copyload.i109, i64 noundef %.sroa.speculated.i.i.i107) #34
  %.fr.i.i.i111 = freeze i32 %i.ah                ; 2 uses
  %.not.not.i.i.i112 = icmp eq i32 %.fr.i.i.i111, 0
  %.inv.i.i.i113 = icmp sgt i32 %.fr.i.i.i111, -1
  %spec.select.i.i.i114 = select i1 %.inv.i.i.i113, i32 1, i32 -1
  br i1 %.not.not.i.i.i112, label %.thread.i.i.i116, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117

.thread.i.i.i116:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108, %.lr.ph.i.i.i
  %i.ai = icmp ult i64 %.sroa.22.0.copyload.i134, %.sroa.2.0.copyload.i106
  br i1 %i.ai, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117: ; preds = %.thread.i.i.i116, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108
  %.1.i.i.i115 = phi i32 [ %spec.select.i.i.i114, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108 ], [ -1, %.thread.i.i.i116 ]
  %i.aj = icmp slt i32 %.1.i.i.i115, 0
  br i1 %i.aj, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i: ; preds = %.thread.i.i.i116, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117, %.thread.i.i.i131, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132 ], [ %.020.i.ptr.i, %.thread.i.i.i131 ], [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117 ], [ %.012.i.i.i, %.thread.i.i.i116 ] ; 3 uses
  store ptr %.sroa.0150.0.copyload, ptr %.09.lcssa.i.i.i, align 8, !tbaa !355
  %.sroa.6.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i134, ptr %.sroa.6.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 24 ; 2 uses
  %.not.i.i = icmp eq i64 %.020.i.add.i, 384
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, label %bb.e, !llvm.loop !94

_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i: ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 384
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.au, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i ], [ %i.ak, %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i ] ; 8 uses
  %.sroa.0154.0.copyload = load ptr, ptr %.08.i.i, align 8, !tbaa !355 ; 3 uses
  %.sroa.6156.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %i.al = load <2 x i64>, ptr %.sroa.6156.0..08.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.6156.0.copyload = load i64, ptr %.sroa.6156.0..08.i.i.sroa_idx, align 8, !tbaa !340 ; 4 uses
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i90 = getelementptr inbounds i8, ptr %.08.i.i, i64 -16
  %.sroa.2.0.copyload.i91 = load i64, ptr %.sroa.2.0..sroa_idx.i90, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i92 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i91, i64 %.sroa.6156.0.copyload) ; 2 uses
  %i.am = icmp eq i64 %.sroa.speculated.i.i.i92, 0
  br i1 %i.am, label %.thread.i.i.i101, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93: ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i94 = load ptr, ptr %.010.i.i.i, align 8, !tbaa !355
  %i.an = call i32 @memcmp(ptr noundef %.sroa.0154.0.copyload, ptr noundef %.sroa.0.0.copyload.i94, i64 noundef %.sroa.speculated.i.i.i92) #34
  %.fr.i.i.i96 = freeze i32 %i.an                 ; 2 uses
  %.not.not.i.i.i97 = icmp eq i32 %.fr.i.i.i96, 0
  br i1 %.not.not.i.i.i97, label %.thread.i.i.i101, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102

.thread.i.i.i101:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93, %.lr.ph.i.i
  %i.ao = icmp ult i64 %.sroa.6156.0.copyload, %.sroa.2.0.copyload.i91
  br i1 %i.ao, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93
  %i.ap = icmp slt i32 %.fr.i.i.i96, 0
  br i1 %i.ap, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i.preheader:                         ; preds = %.thread.i.i.i101, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102
  br label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i14.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87 ], [ %.010.i.i.i, %.lr.ph.i.i14.i.preheader ] ; 6 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87 ], [ %.08.i.i, %.lr.ph.i.i14.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i15.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i75 = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16
  %.sroa.2.0.copyload.i76 = load i64, ptr %.sroa.2.0..sroa_idx.i75, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i77 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i76, i64 %.sroa.6156.0.copyload) ; 2 uses
  %i.aq = icmp eq i64 %.sroa.speculated.i.i.i77, 0
  br i1 %i.aq, label %.thread.i.i.i86, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78: ; preds = %.lr.ph.i.i14.i
  %.sroa.0.0.copyload.i79 = load ptr, ptr %.0.i.i17.i, align 8, !tbaa !355
  %i.ar = call i32 @memcmp(ptr noundef %.sroa.0154.0.copyload, ptr noundef %.sroa.0.0.copyload.i79, i64 noundef %.sroa.speculated.i.i.i77) #34
  %.fr.i.i.i81 = freeze i32 %i.ar                 ; 2 uses
  %.not.not.i.i.i82 = icmp eq i32 %.fr.i.i.i81, 0
  %.inv.i.i.i83 = icmp sgt i32 %.fr.i.i.i81, -1
  %spec.select.i.i.i84 = select i1 %.inv.i.i.i83, i32 1, i32 -1
  br i1 %.not.not.i.i.i82, label %.thread.i.i.i86, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87

.thread.i.i.i86:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78, %.lr.ph.i.i14.i
  %i.as = icmp ult i64 %.sroa.6156.0.copyload, %.sroa.2.0.copyload.i76
  br i1 %i.as, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87: ; preds = %.thread.i.i.i86, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78
  %.1.i.i.i85 = phi i32 [ %spec.select.i.i.i84, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78 ], [ -1, %.thread.i.i.i86 ]
  %i.at = icmp slt i32 %.1.i.i.i85, 0
  br i1 %i.at, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i: ; preds = %.thread.i.i.i86, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87, %.thread.i.i.i101, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102 ], [ %.08.i.i, %.thread.i.i.i101 ], [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87 ], [ %.012.i.i15.i, %.thread.i.i.i86 ] ; 2 uses
  store ptr %.sroa.0154.0.copyload, ptr %.09.lcssa.i.i12.i, align 8, !tbaa !355
  %.sroa.6156.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store <2 x i64> %i.al, ptr %.sroa.6156.0..09.lcssa.i.i12.i.sroa_idx, align 8, !tbaa !340
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.au, %i.q
  br i1 %.not.i13.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !95

bb.i:                                             ; preds = %bb.c
  %.not18.i.i = icmp eq i32 %i.n, 1
  br i1 %.not18.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.i
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.2.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.m
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.m ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.m ], [ %i.p, %.lr.ph.i19.i.preheader ] ; 5 uses
  %.sroa.22.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.22.0.copyload.i59 = load i64, ptr %.sroa.22.0..sroa_idx.i58, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i61 = load i64, ptr %.sroa.2.0..sroa_idx.i60, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i62 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i61, i64 %.sroa.22.0.copyload.i59) ; 2 uses
  %i.av = icmp eq i64 %.sroa.speculated.i.i.i62, 0
  br i1 %i.av, label %.thread.i.i.i71, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63: ; preds = %.lr.ph.i19.i
  %.sroa.0.0.copyload.i64 = load ptr, ptr %i.p, align 8, !tbaa !355
  %.sroa.01.0.copyload.i65 = load ptr, ptr %.020.i20.i, align 8, !tbaa !355 ; 2 uses
  %i.aw = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i65, ptr noundef %.sroa.0.0.copyload.i64, i64 noundef %.sroa.speculated.i.i.i62) #34
  %.fr.i.i.i66 = freeze i32 %i.aw                 ; 2 uses
  %.not.not.i.i.i67 = icmp eq i32 %.fr.i.i.i66, 0
  br i1 %.not.not.i.i.i67, label %.thread.i.i.i71, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72

.thread.i.i.i71:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63, %.lr.ph.i19.i
  %i.ax = icmp ult i64 %.sroa.22.0.copyload.i59, %.sroa.2.0.copyload.i61
  br i1 %i.ax, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179, label %.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge

.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge: ; preds = %.thread.i.i.i71
  %.sroa.0160.0.copyload.pre = load ptr, ptr %.020.i20.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63
  %i.ay = icmp slt i32 %.fr.i.i.i66, 0
  br i1 %i.ay, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179: ; preds = %.thread.i.i.i71, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %.020.i20.i, i64 24, i1 false), !tbaa.struct !974
  %i.az = ptrtoint ptr %.020.i20.i to i64
  %i.ba = sub i64 %i.az, %i.u                     ; 4 uses
  %i.bb = icmp sgt i64 %i.ba, 24
  br i1 %i.bb, label %bb.j, label %bb.k, !prof !425

bb.j:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 48
  %.neg25.i31.i = udiv exact i64 %i.ba, 24
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %i.bd = getelementptr inbounds [24 x i8], ptr %i.bc, i64 %.neg25.neg.i32.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ba, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.k:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179
  %i.be = icmp eq i64 %i.ba, 24
  br i1 %i.be, label %bb.l, label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.m

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread: ; preds = %.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72
  %.sroa.0160.0.copyload = phi ptr [ %.sroa.0160.0.copyload.pre, %.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge ], [ %.sroa.01.0.copyload.i65, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72 ] ; 3 uses
  %.sroa.8164.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16
  %.sroa.8164.0.copyload = load i64, ptr %.sroa.8164.0..020.i20.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %.sroa.2.0.copyload.i46 = load i64, ptr %.sroa.2.0..sroa_idx.i45, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i47 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i46, i64 %.sroa.22.0.copyload.i59) ; 2 uses
  %i.bg = icmp eq i64 %.sroa.speculated.i.i.i47, 0
  br i1 %i.bg, label %.thread.i.i.i56, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread
  %.sroa.0.0.copyload.i49 = load ptr, ptr %.pn19.i21.i, align 8, !tbaa !355
  %i.bh = call i32 @memcmp(ptr noundef %.sroa.0160.0.copyload, ptr noundef %.sroa.0.0.copyload.i49, i64 noundef %.sroa.speculated.i.i.i47) #34
  %.fr.i.i.i51 = freeze i32 %i.bh                 ; 2 uses
  %.not.not.i.i.i52 = icmp eq i32 %.fr.i.i.i51, 0
  br i1 %.not.not.i.i.i52, label %.thread.i.i.i56, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57

.thread.i.i.i56:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread
  %i.bi = icmp ult i64 %.sroa.22.0.copyload.i59, %.sroa.2.0.copyload.i46
  br i1 %i.bi, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48
  %i.bj = icmp slt i32 %.fr.i.i.i51, 0
  br i1 %i.bj, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i.preheader:                         ; preds = %.thread.i.i.i56, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.pn19.i21.i, %.lr.ph.i.i26.i.preheader ] ; 6 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.020.i20.i, %.lr.ph.i.i26.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i27.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i40 = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16
  %.sroa.2.0.copyload.i41 = load i64, ptr %.sroa.2.0..sroa_idx.i40, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i41, i64 %.sroa.22.0.copyload.i59) ; 2 uses
  %i.bk = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.bk, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i26.i
  %.sroa.0.0.copyload.i42 = load ptr, ptr %.0.i.i29.i, align 8, !tbaa !355
  %i.bl = call i32 @memcmp(ptr noundef %.sroa.0160.0.copyload, ptr noundef %.sroa.0.0.copyload.i42, i64 noundef %.sroa.speculated.i.i.i) #34
  %.fr.i.i.i = freeze i32 %i.bl                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %.inv.i.i.i = icmp sgt i32 %.fr.i.i.i, -1
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %.lr.ph.i.i26.i
  %i.bm = icmp ult i64 %.sroa.22.0.copyload.i59, %.sroa.2.0.copyload.i41
  br i1 %i.bm, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit: ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i ], [ -1, %.thread.i.i.i ]
  %i.bn = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.bn, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i: ; preds = %.thread.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, %.thread.i.i.i56, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57 ], [ %.020.i20.i, %.thread.i.i.i56 ], [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.012.i.i27.i, %.thread.i.i.i ] ; 3 uses
  store ptr %.sroa.0160.0.copyload, ptr %.09.lcssa.i.i23.i, align 8, !tbaa !355
  %.sroa.6162.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i64 %.sroa.22.0.copyload.i59, ptr %.sroa.6162.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8164.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 16
  store i64 %.sroa.8164.0.copyload, ptr %.sroa.8164.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 24 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.q
  br i1 %.not.i25.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !94

_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, %bb.i, %._crit_edge
  %i.bo = zext i8 %3 to i64
  %i.bp = load ptr, ptr %12, align 8, !tbaa !312
  %i.bq = load i32, ptr %i.c, align 8, !tbaa !313
  %i.br = zext i32 %i.bq to i64
  %i.bs = load ptr, ptr %0, align 8, !tbaa !250
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 312
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.bo, ptr %i.bp, i64 %i.br) #31
  %i.bv = load ptr, ptr %12, align 8, !tbaa !312  ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.b
  br i1 %i.bw, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit
  call void @free(ptr noundef %i.bv) #31
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit: ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  ret void

bb.o:                                             ; preds = %.lr.ph, %bb.x
  %.0194 = phi ptr [ %4, %.lr.ph ], [ %i.cx, %bb.x ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0194, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !8021 ; 10 uses
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = and i8 %i.by, %6
  %.not35 = icmp eq i8 %i.ca, 0
  br i1 %.not35, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cb = and i8 %i.by, %7
  %.not36 = icmp eq i8 %i.cb, 0
  br i1 %.not36, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cc = and i8 %i.by, %8
  %.not37 = icmp eq i8 %i.cc, 0
  %spec.select = select i1 %.not37, i8 0, i8 %8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.034 = phi i8 [ %spec.select, %bb.r ], [ %6, %bb.p ], [ %7, %bb.q ] ; 2 uses
  %i.cd = and i8 %.034, %i.by
  %.not38 = icmp eq i8 %i.cd, 0
  br i1 %.not38, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ce = and i8 %i.by, %3
  %i.cf = icmp eq i8 %i.ce, %i.by
  br i1 %i.cf, label %bb.u, label %bb.x

.critedge:                                        ; preds = %bb.s
  %i.cg = and i8 %.034, %3
  %i.ch = icmp eq i8 %i.cg, %i.by
  br i1 %i.ch, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.critedge, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.ci = load i16, ptr %.0194, align 2, !tbaa !389
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.0194, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0194, i64 2
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !270
  %i.cn = zext i8 %i.cm to i64                    ; 2 uses
  store ptr %i.ck, ptr %13, align 8
  store i64 %i.cn, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i8 %i.by, ptr %i.a, align 1, !tbaa !1096
  %i.co = load i32, ptr %i.c, align 8, !tbaa !313 ; 3 uses
  %i.cp = load i32, ptr %i.d, align 4, !tbaa !314
  %.not.i = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i, label %bb.w, label %bb.v, !prof !425

bb.v:                                             ; preds = %bb.u
  %i.cq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE18growAndEmplaceBackIJNS_9StringRefENS_6sframe5FlagsEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_6sframe5FlagsEEEERS1_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.cr = zext i32 %i.co to i64
  %i.cs = load ptr, ptr %12, align 8, !tbaa !312
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %i.cr ; 3 uses
  store ptr %i.ck, ptr %i.ct, align 8, !tbaa !355
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %i.cn, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !340
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = zext i8 %i.by to i64
  store i64 %i.cv, ptr %i.cu, align 8, !tbaa !1098
  %i.cw = add nuw i32 %i.co, 1
  store i32 %i.cw, ptr %i.c, align 8, !tbaa !313
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_6sframe5FlagsEEEERS1_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_6sframe5FlagsEEEERS1_DpOT_.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %.critedge, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_6sframe5FlagsEEEERS1_DpOT_.exit, %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %.0194, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cx, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %bb.o
}

declare { ptr, i64 } @_ZN4llvm6sframe8getFlagsEv() local_unnamed_addr #4

declare { ptr, i64 } @_ZN4llvm6sframe7getABIsEv() local_unnamed_addr #4

declare void @_ZNK4llvm6object12SFrameParserILNS_10endiannessE1EE12getAuxHeaderEv(ptr dead_on_unwind writable sret(%"class.llvm::Expected.291") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #0 comdat align 2 {
bb.a:
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !340 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !340 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload, i64 %.sroa.22.0.copyload) ; 2 uses
  %i.a = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.a, label %.thread.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i: ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !355
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !355
  %i.b = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.speculated.i.i) #34
  %.fr.i.i = freeze i32 %i.b                      ; 2 uses
  %.not.not.i.i = icmp eq i32 %.fr.i.i, 0
  %.inv.i.i = icmp sgt i32 %.fr.i.i, -1
  %spec.select.i.i = select i1 %.inv.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i, label %.thread.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit

.thread.i.i:                                      ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i, %bb.a
  %i.c = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  br i1 %i.c, label %_ZN4llvmltENS_9StringRefES0_.exit, label %bb.b

bb.b:                                             ; preds = %.thread.i.i
  %i.d = icmp ult i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.e = select i1 %i.d, i32 -1, i32 1
  br label %_ZN4llvmltENS_9StringRefES0_.exit

_ZN4llvmltENS_9StringRefES0_.exit:                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i, %.thread.i.i, %bb.b
  %.1.i.i = phi i32 [ %spec.select.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i ], [ %i.e, %bb.b ], [ 0, %.thread.i.i ]
  %i.f = icmp slt i32 %.1.i.i, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE18growAndEmplaceBackIJNS_9StringRefENS_6sframe5FlagsEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.llvm::FlagEntry", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !355
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !340
  %i.a = load i8, ptr %2, align 1, !tbaa !1096
  store ptr %.sroa.0.0.copyload, ptr %3, align 8, !tbaa !355
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !340
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = zext i8 %i.a to i64
  store i64 %i.c, ptr %i.b, align 8, !tbaa !1098
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !313  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !314
  %.not.i = icmp ult i32 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !425

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre = load i32, ptr %i.d, align 8, !tbaa !313
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !312
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.k = load i32, ptr %i.d, align 8, !tbaa !313
  %i.l = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %i.d, align 8, !tbaa !313
end_hunk_1
begin_hunk_2_@_ZN4llvm13ScopedPrinter9printEnumINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEjLj2EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE:bb.a
  store i8 10, ptr %i.av, align 1
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !372
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.az, ptr %i.au, align 8, !tbaa !372
  br label %_ZN4llvm13ScopedPrinter8printHexINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEEvNS_9StringRefET_.exit

_ZN4llvm13ScopedPrinter8printHexINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEEvNS_9StringRefET_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm13ScopedPrinter8printHexINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEEvNS_9StringRefET_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEjLj2EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEESA_SA_SA_NS_8ArrayRefINS_9FlagEntryEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i32 %3, ptr %4, i64 %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef byval(%"class.llvm::ArrayRef.1044") align 8 %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %10 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %11 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SmallVector.1054", align 8 ; 13 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %.sroa.021.0.copyload = load ptr, ptr %9, align 8, !tbaa !1094
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.222.0.copyload = load i64, ptr %.sroa.222.0..sroa_idx, align 8, !tbaa !340 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.b, ptr %12, align 8, !tbaa !312
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  store i32 0, ptr %i.c, align 8, !tbaa !313
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 10, ptr %i.d, align 4, !tbaa !314
  %.idx.i = mul nuw nsw i64 %.sroa.222.0.copyload, 24
  %i.e = icmp ugt i64 %.sroa.222.0.copyload, 10
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(256) %12, ptr noundef nonnull %i.b, i64 noundef %.sroa.222.0.copyload, i64 noundef 24) #31
  %.pre8.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !313
  %i.f = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %12, align 8, !tbaa !312
  br label %bb.b

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.222.0.copyload, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i
  %i.g = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ %i.b, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.f, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 8 %.sroa.021.0.copyload, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !313
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %bb.b
  %i.i = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.j = trunc i64 %.sroa.222.0.copyload to i32
  %i.k = add i32 %i.i, %i.j                       ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !313
  %.idx = mul nuw nsw i64 %5, 12
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.not195 = icmp eq i64 %5, 0
  br i1 %.not195, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre198 = load i32, ptr %i.c, align 8, !tbaa !313
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.n = phi i32 [ %.pre198, %._crit_edge.loopexit ], [ %i.k, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %.idx.i37 = mul nuw nsw i64 %i.o, 24
  %i.p = load ptr, ptr %12, align 8, !tbaa !312   ; 19 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i37 ; 3 uses
  %i.r = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = xor i64 %i.s, 126
  call void @_ZSt16__introsort_loopIPN4llvm9FlagEntryElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef %i.p, ptr noundef nonnull %i.q, i64 noundef %i.t, ptr nonnull @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_)
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = icmp ugt i32 %i.n, 16
  br i1 %i.v, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %scevgep.i = getelementptr i8, ptr %i.p, i64 24
  %.sroa.2.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.020.i.idx.i = phi i64 [ 24, %bb.d ], [ %.020.i.add.i, %bb.h ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.p, %bb.d ], [ %.020.i.ptr.i, %bb.h ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.020.i.idx.i ; 9 uses
  %.sroa.22.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %.sroa.22.0.copyload.i133 = load i64, ptr %.sroa.22.0..sroa_idx.i132, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i135 = load i64, ptr %.sroa.2.0..sroa_idx.i134, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i136 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i135, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.w = icmp eq i64 %.sroa.speculated.i.i.i136, 0
  br i1 %i.w, label %.thread.i.i.i145, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137: ; preds = %bb.e
  %.sroa.0.0.copyload.i138 = load ptr, ptr %i.p, align 8, !tbaa !355
  %.sroa.01.0.copyload.i139 = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355 ; 2 uses
  %i.x = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i139, ptr noundef %.sroa.0.0.copyload.i138, i64 noundef %.sroa.speculated.i.i.i136) #34
  %.fr.i.i.i140 = freeze i32 %i.x                 ; 2 uses
  %.not.not.i.i.i141 = icmp eq i32 %.fr.i.i.i140, 0
  br i1 %.not.not.i.i.i141, label %.thread.i.i.i145, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146

.thread.i.i.i145:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137, %bb.e
  %i.y = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i135
  br i1 %i.y, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169, label %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge

.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge: ; preds = %.thread.i.i.i145
  %.sroa.0152.0.copyload.pre = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137
  %i.z = icmp slt i32 %.fr.i.i.i140, 0
  br i1 %i.z, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169: ; preds = %.thread.i.i.i145, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.ptr.i, i64 24, i1 false), !tbaa.struct !974
  %i.aa = icmp samesign ugt i64 %.020.i.idx.i, 24
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !425

bb.f:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

bb.g:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.h

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread: ; preds = %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146
  %.sroa.0152.0.copyload = phi ptr [ %.sroa.0152.0.copyload.pre, %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge ], [ %.sroa.01.0.copyload.i139, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146 ] ; 3 uses
  %.sroa.8.0..020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..020.i.ptr.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %.sroa.2.0.copyload.i120 = load i64, ptr %.sroa.2.0..sroa_idx.i119, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i121 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i120, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i121, 0
  br i1 %i.ac, label %.thread.i.i.i130, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread
  %.sroa.0.0.copyload.i123 = load ptr, ptr %.pn19.i.i, align 8, !tbaa !355
  %i.ad = call i32 @memcmp(ptr noundef %.sroa.0152.0.copyload, ptr noundef %.sroa.0.0.copyload.i123, i64 noundef %.sroa.speculated.i.i.i121) #34
  %.fr.i.i.i125 = freeze i32 %i.ad                ; 2 uses
  %.not.not.i.i.i126 = icmp eq i32 %.fr.i.i.i125, 0
  br i1 %.not.not.i.i.i126, label %.thread.i.i.i130, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131

.thread.i.i.i130:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread
  %i.ae = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i120
  br i1 %i.ae, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122
  %i.af = icmp slt i32 %.fr.i.i.i125, 0
  br i1 %i.af, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.thread.i.i.i130, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.020.i.ptr.i, %.lr.ph.i.i.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i104 = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -16
  %.sroa.2.0.copyload.i105 = load i64, ptr %.sroa.2.0..sroa_idx.i104, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i106 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i105, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.ag = icmp eq i64 %.sroa.speculated.i.i.i106, 0
  br i1 %i.ag, label %.thread.i.i.i115, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i108 = load ptr, ptr %.0.i.i.i, align 8, !tbaa !355
  %i.ah = call i32 @memcmp(ptr noundef %.sroa.0152.0.copyload, ptr noundef %.sroa.0.0.copyload.i108, i64 noundef %.sroa.speculated.i.i.i106) #34
  %.fr.i.i.i110 = freeze i32 %i.ah                ; 2 uses
  %.not.not.i.i.i111 = icmp eq i32 %.fr.i.i.i110, 0
  %.inv.i.i.i112 = icmp sgt i32 %.fr.i.i.i110, -1
  %spec.select.i.i.i113 = select i1 %.inv.i.i.i112, i32 1, i32 -1
  br i1 %.not.not.i.i.i111, label %.thread.i.i.i115, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116

.thread.i.i.i115:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107, %.lr.ph.i.i.i
  %i.ai = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i105
  br i1 %i.ai, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116: ; preds = %.thread.i.i.i115, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107
  %.1.i.i.i114 = phi i32 [ %spec.select.i.i.i113, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107 ], [ -1, %.thread.i.i.i115 ]
  %i.aj = icmp slt i32 %.1.i.i.i114, 0
  br i1 %i.aj, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i: ; preds = %.thread.i.i.i115, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116, %.thread.i.i.i130, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131 ], [ %.020.i.ptr.i, %.thread.i.i.i130 ], [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.012.i.i.i, %.thread.i.i.i115 ] ; 3 uses
  store ptr %.sroa.0152.0.copyload, ptr %.09.lcssa.i.i.i, align 8, !tbaa !355
  %.sroa.6.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i133, ptr %.sroa.6.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 24 ; 2 uses
  %.not.i.i = icmp eq i64 %.020.i.add.i, 384
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, label %bb.e, !llvm.loop !94

_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i: ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 384
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.au, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i ], [ %i.ak, %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i ] ; 8 uses
  %.sroa.0156.0.copyload = load ptr, ptr %.08.i.i, align 8, !tbaa !355 ; 3 uses
  %.sroa.6158.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %i.al = load <2 x i64>, ptr %.sroa.6158.0..08.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.6158.0.copyload = load i64, ptr %.sroa.6158.0..08.i.i.sroa_idx, align 8, !tbaa !340 ; 4 uses
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i89 = getelementptr inbounds i8, ptr %.08.i.i, i64 -16
  %.sroa.2.0.copyload.i90 = load i64, ptr %.sroa.2.0..sroa_idx.i89, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i91 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i90, i64 %.sroa.6158.0.copyload) ; 2 uses
  %i.am = icmp eq i64 %.sroa.speculated.i.i.i91, 0
  br i1 %i.am, label %.thread.i.i.i100, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92: ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i93 = load ptr, ptr %.010.i.i.i, align 8, !tbaa !355
  %i.an = call i32 @memcmp(ptr noundef %.sroa.0156.0.copyload, ptr noundef %.sroa.0.0.copyload.i93, i64 noundef %.sroa.speculated.i.i.i91) #34
  %.fr.i.i.i95 = freeze i32 %i.an                 ; 2 uses
  %.not.not.i.i.i96 = icmp eq i32 %.fr.i.i.i95, 0
  br i1 %.not.not.i.i.i96, label %.thread.i.i.i100, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101

.thread.i.i.i100:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92, %.lr.ph.i.i
  %i.ao = icmp ult i64 %.sroa.6158.0.copyload, %.sroa.2.0.copyload.i90
  br i1 %i.ao, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92
  %i.ap = icmp slt i32 %.fr.i.i.i95, 0
  br i1 %i.ap, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i.preheader:                         ; preds = %.thread.i.i.i100, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101
  br label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i14.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.010.i.i.i, %.lr.ph.i.i14.i.preheader ] ; 6 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.08.i.i, %.lr.ph.i.i14.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i15.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i74 = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16
  %.sroa.2.0.copyload.i75 = load i64, ptr %.sroa.2.0..sroa_idx.i74, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i76 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i75, i64 %.sroa.6158.0.copyload) ; 2 uses
  %i.aq = icmp eq i64 %.sroa.speculated.i.i.i76, 0
  br i1 %i.aq, label %.thread.i.i.i85, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77: ; preds = %.lr.ph.i.i14.i
  %.sroa.0.0.copyload.i78 = load ptr, ptr %.0.i.i17.i, align 8, !tbaa !355
  %i.ar = call i32 @memcmp(ptr noundef %.sroa.0156.0.copyload, ptr noundef %.sroa.0.0.copyload.i78, i64 noundef %.sroa.speculated.i.i.i76) #34
  %.fr.i.i.i80 = freeze i32 %i.ar                 ; 2 uses
  %.not.not.i.i.i81 = icmp eq i32 %.fr.i.i.i80, 0
  %.inv.i.i.i82 = icmp sgt i32 %.fr.i.i.i80, -1
  %spec.select.i.i.i83 = select i1 %.inv.i.i.i82, i32 1, i32 -1
  br i1 %.not.not.i.i.i81, label %.thread.i.i.i85, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86

.thread.i.i.i85:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77, %.lr.ph.i.i14.i
  %i.as = icmp ult i64 %.sroa.6158.0.copyload, %.sroa.2.0.copyload.i75
  br i1 %i.as, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86: ; preds = %.thread.i.i.i85, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77
  %.1.i.i.i84 = phi i32 [ %spec.select.i.i.i83, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77 ], [ -1, %.thread.i.i.i85 ]
  %i.at = icmp slt i32 %.1.i.i.i84, 0
  br i1 %i.at, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i: ; preds = %.thread.i.i.i85, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86, %.thread.i.i.i100, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101 ], [ %.08.i.i, %.thread.i.i.i100 ], [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.012.i.i15.i, %.thread.i.i.i85 ] ; 2 uses
  store ptr %.sroa.0156.0.copyload, ptr %.09.lcssa.i.i12.i, align 8, !tbaa !355
  %.sroa.6158.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store <2 x i64> %i.al, ptr %.sroa.6158.0..09.lcssa.i.i12.i.sroa_idx, align 8, !tbaa !340
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.au, %i.q
  br i1 %.not.i13.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !95

bb.i:                                             ; preds = %bb.c
  %.not18.i.i = icmp eq i32 %i.n, 1
  br i1 %.not18.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.i
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.2.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.m
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.m ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.m ], [ %i.p, %.lr.ph.i19.i.preheader ] ; 5 uses
  %.sroa.22.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.22.0.copyload.i58 = load i64, ptr %.sroa.22.0..sroa_idx.i57, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i60 = load i64, ptr %.sroa.2.0..sroa_idx.i59, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i61 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i60, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.av = icmp eq i64 %.sroa.speculated.i.i.i61, 0
  br i1 %i.av, label %.thread.i.i.i70, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62: ; preds = %.lr.ph.i19.i
  %.sroa.0.0.copyload.i63 = load ptr, ptr %i.p, align 8, !tbaa !355
  %.sroa.01.0.copyload.i64 = load ptr, ptr %.020.i20.i, align 8, !tbaa !355 ; 2 uses
  %i.aw = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i64, ptr noundef %.sroa.0.0.copyload.i63, i64 noundef %.sroa.speculated.i.i.i61) #34
  %.fr.i.i.i65 = freeze i32 %i.aw                 ; 2 uses
  %.not.not.i.i.i66 = icmp eq i32 %.fr.i.i.i65, 0
  br i1 %.not.not.i.i.i66, label %.thread.i.i.i70, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71

.thread.i.i.i70:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62, %.lr.ph.i19.i
  %i.ax = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i60
  br i1 %i.ax, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181, label %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge

.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge: ; preds = %.thread.i.i.i70
  %.sroa.0162.0.copyload.pre = load ptr, ptr %.020.i20.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62
  %i.ay = icmp slt i32 %.fr.i.i.i65, 0
  br i1 %i.ay, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181: ; preds = %.thread.i.i.i70, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %.020.i20.i, i64 24, i1 false), !tbaa.struct !974
  %i.az = ptrtoint ptr %.020.i20.i to i64
  %i.ba = sub i64 %i.az, %i.u                     ; 4 uses
  %i.bb = icmp sgt i64 %i.ba, 24
  br i1 %i.bb, label %bb.j, label %bb.k, !prof !425

bb.j:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 48
  %.neg25.i31.i = udiv exact i64 %i.ba, 24
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %i.bd = getelementptr inbounds [24 x i8], ptr %i.bc, i64 %.neg25.neg.i32.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ba, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.k:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181
  %i.be = icmp eq i64 %i.ba, 24
  br i1 %i.be, label %bb.l, label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.m

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread: ; preds = %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71
  %.sroa.0162.0.copyload = phi ptr [ %.sroa.0162.0.copyload.pre, %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge ], [ %.sroa.01.0.copyload.i64, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71 ] ; 3 uses
  %.sroa.8166.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16
  %.sroa.8166.0.copyload = load i64, ptr %.sroa.8166.0..020.i20.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %.sroa.2.0.copyload.i45 = load i64, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i46 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i45, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.bg = icmp eq i64 %.sroa.speculated.i.i.i46, 0
  br i1 %i.bg, label %.thread.i.i.i55, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread
  %.sroa.0.0.copyload.i48 = load ptr, ptr %.pn19.i21.i, align 8, !tbaa !355
  %i.bh = call i32 @memcmp(ptr noundef %.sroa.0162.0.copyload, ptr noundef %.sroa.0.0.copyload.i48, i64 noundef %.sroa.speculated.i.i.i46) #34
  %.fr.i.i.i50 = freeze i32 %i.bh                 ; 2 uses
  %.not.not.i.i.i51 = icmp eq i32 %.fr.i.i.i50, 0
  br i1 %.not.not.i.i.i51, label %.thread.i.i.i55, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56

.thread.i.i.i55:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread
  %i.bi = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i45
  br i1 %i.bi, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47
  %i.bj = icmp slt i32 %.fr.i.i.i50, 0
  br i1 %i.bj, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i.preheader:                         ; preds = %.thread.i.i.i55, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.pn19.i21.i, %.lr.ph.i.i26.i.preheader ] ; 6 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.020.i20.i, %.lr.ph.i.i26.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i27.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i39 = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16
  %.sroa.2.0.copyload.i40 = load i64, ptr %.sroa.2.0..sroa_idx.i39, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i40, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.bk = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.bk, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i26.i
  %.sroa.0.0.copyload.i41 = load ptr, ptr %.0.i.i29.i, align 8, !tbaa !355
  %i.bl = call i32 @memcmp(ptr noundef %.sroa.0162.0.copyload, ptr noundef %.sroa.0.0.copyload.i41, i64 noundef %.sroa.speculated.i.i.i) #34
  %.fr.i.i.i = freeze i32 %i.bl                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %.inv.i.i.i = icmp sgt i32 %.fr.i.i.i, -1
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %.lr.ph.i.i26.i
  %i.bm = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i40
  br i1 %i.bm, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit: ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i ], [ -1, %.thread.i.i.i ]
  %i.bn = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.bn, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i: ; preds = %.thread.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, %.thread.i.i.i55, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56 ], [ %.020.i20.i, %.thread.i.i.i55 ], [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.012.i.i27.i, %.thread.i.i.i ] ; 3 uses
  store ptr %.sroa.0162.0.copyload, ptr %.09.lcssa.i.i23.i, align 8, !tbaa !355
  %.sroa.6164.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i64 %.sroa.22.0.copyload.i58, ptr %.sroa.6164.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8166.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 16
  store i64 %.sroa.8166.0.copyload, ptr %.sroa.8166.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 24 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.q
  br i1 %.not.i25.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !94

_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, %bb.i, %._crit_edge
  %i.bo = zext i32 %3 to i64
  %i.bp = load ptr, ptr %12, align 8, !tbaa !312
  %i.bq = load i32, ptr %i.c, align 8, !tbaa !313
  %i.br = zext i32 %i.bq to i64
  %i.bs = load ptr, ptr %0, align 8, !tbaa !250
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 312
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.bo, ptr %i.bp, i64 %i.br) #31
  %i.bv = load ptr, ptr %12, align 8, !tbaa !312  ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.b
  br i1 %i.bw, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit
  call void @free(ptr noundef %i.bv) #31
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit: ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  ret void

bb.o:                                             ; preds = %.lr.ph, %bb.x
  %.0196 = phi ptr [ %4, %.lr.ph ], [ %i.cx, %bb.x ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0196, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !828 ; 10 uses
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = and i32 %i.by, %6
  %.not33 = icmp eq i32 %i.ca, 0
  br i1 %.not33, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cb = and i32 %i.by, %7
  %.not34 = icmp eq i32 %i.cb, 0
  br i1 %.not34, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cc = and i32 %i.by, %8
  %.not35 = icmp eq i32 %i.cc, 0
  %spec.select = select i1 %.not35, i32 0, i32 %8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.032 = phi i32 [ %spec.select, %bb.r ], [ %6, %bb.p ], [ %7, %bb.q ] ; 2 uses
  %i.cd = and i32 %.032, %i.by
  %.not36 = icmp eq i32 %i.cd, 0
  br i1 %.not36, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ce = and i32 %i.by, %3
  %i.cf = icmp eq i32 %i.ce, %i.by
  br i1 %i.cf, label %bb.u, label %bb.x

.critedge:                                        ; preds = %bb.s
  %i.cg = and i32 %.032, %3
  %i.ch = icmp eq i32 %i.cg, %i.by
  br i1 %i.ch, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.critedge, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.ci = load i16, ptr %.0196, align 4, !tbaa !389
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.0196, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0196, i64 4
  %i.cm = load i8, ptr %i.cl, align 4, !tbaa !270
  %i.cn = zext i8 %i.cm to i64                    ; 2 uses
  store ptr %i.ck, ptr %13, align 8
  store i64 %i.cn, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 %i.by, ptr %i.a, align 4, !tbaa !396
  %i.co = load i32, ptr %i.c, align 8, !tbaa !313 ; 3 uses
  %i.cp = load i32, ptr %i.d, align 4, !tbaa !314
  %.not.i = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i, label %bb.w, label %bb.v, !prof !425

bb.v:                                             ; preds = %bb.u
  %i.cq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE18growAndEmplaceBackIJNS_9StringRefEjEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.cr = zext i32 %i.co to i64
  %i.cs = load ptr, ptr %12, align 8, !tbaa !312
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %i.cr ; 3 uses
  store ptr %i.ck, ptr %i.ct, align 8, !tbaa !355
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %i.cn, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !340
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = zext i32 %i.by to i64
  store i64 %i.cv, ptr %i.cu, align 8, !tbaa !1098
  %i.cw = add nuw i32 %i.co, 1
  store i32 %i.cw, ptr %i.c, align 8, !tbaa !313
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %.critedge, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit, %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %.0196, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.cx, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %bb.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEvNS_9StringRefET_(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i32 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.1264", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !312
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !313
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 10, ptr %i.d, align 4, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 1, ptr %i.a, align 8, !tbaa !340
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %.not10 = icmp eq i32 %3, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm15SmallVectorImplINS_9HexNumberEE12emplace_backIJRmEEERS1_DpOT_.exit
  %i.f = phi i64 [ %i.q, %_ZN4llvm15SmallVectorImplINS_9HexNumberEE12emplace_backIJRmEEERS1_DpOT_.exit ], [ 1, %bb.a ]
  %.011 = phi i64 [ %i.o, %_ZN4llvm15SmallVectorImplINS_9HexNumberEE12emplace_backIJRmEEERS1_DpOT_.exit ], [ %i.e, %bb.a ] ; 2 uses
  %i.g = and i64 %.011, 1
  %.not7 = icmp eq i64 %i.g, 0
  br i1 %.not7, label %_ZN4llvm15SmallVectorImplINS_9HexNumberEE12emplace_backIJRmEEERS1_DpOT_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.c, align 8, !tbaa !313  ; 3 uses
  %i.i = load i32, ptr %i.d, align 4, !tbaa !314
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !425

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9HexNumberELb1EE18growAndEmplaceBackIJRmEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_9HexNumberEE12emplace_backIJRmEEERS1_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %4, align 8, !tbaa !312
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  store i64 %i.f, ptr %i.m, align 8, !tbaa !476
  %i.n = add nuw i32 %i.h, 1
  store i32 %i.n, ptr %i.c, align 8, !tbaa !313
  br label %_ZN4llvm15SmallVectorImplINS_9HexNumberEE12emplace_backIJRmEEERS1_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_9HexNumberEE12emplace_backIJRmEEERS1_DpOT_.exit: ; preds = %bb.d, %bb.c, %.lr.ph
  %i.o = lshr i64 %.011, 1                        ; 2 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !340
  %i.q = shl i64 %i.p, 1                          ; 2 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !340
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !9167

._crit_edge.loopexit:                             ; preds = %_ZN4llvm15SmallVectorImplINS_9HexNumberEE12emplace_backIJRmEEERS1_DpOT_.exit
  %.pre = load ptr, ptr %4, align 8, !tbaa !312
  %.pre12 = load i32, ptr %i.c, align 8, !tbaa !313
  %i.r = zext i32 %.pre12 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.s = phi i64 [ %i.r, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.t = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !250
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 320
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.e, ptr %i.t, i64 %i.s) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.x = load ptr, ptr %4, align 8, !tbaa !312    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.b
  br i1 %i.y, label %_ZN4llvm11SmallVectorINS_9HexNumberELj10EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.x) #31
  br label %_ZN4llvm11SmallVectorINS_9HexNumberELj10EED2Ev.exit

_ZN4llvm11SmallVectorINS_9HexNumberELj10EED2Ev.exit: ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void
end_hunk_2
begin_hunk_3_@_ZN4llvm23SmallVectorTemplateBaseINS_9HexNumberELb1EE18growAndEmplaceBackIJRmEEERS1_DpOT_:bb.a
  %i.i = load i32, ptr %i.b, align 8, !tbaa !313
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !313
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9HexNumberELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_9HexNumberELb1EE9push_backES1_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !312
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter11printNumberINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEvNS_9StringRefES7_T_(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, ptr %3, i64 %4, i32 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9170)
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.a, ptr %8, align 8, !tbaa !268, !alias.scope !9170
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !269, !alias.scope !9170
  store i8 0, ptr %i.a, align 8, !tbaa !270, !alias.scope !9170
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !9170
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !391, !noalias !9170
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !392, !noalias !9170
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !393, !noalias !9170
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !noalias !9170
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %6, align 8, !tbaa !250, !noalias !9170
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %8, ptr %i.g, align 8, !tbaa !395, !noalias !9170
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef null, i64 noundef 0, i32 noundef 0) #31
  %i.h = zext i32 %5 to i64
  %i.i = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %6, i64 noundef %i.h) #31 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !9170
  %i.j = load ptr, ptr %8, align 8, !tbaa !349
  store ptr %i.j, ptr %7, align 8, !tbaa !271
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = load i64, ptr %i.b, align 8, !tbaa !269
  store i64 %i.l, ptr %i.k, align 8, !tbaa !272
  %i.m = load ptr, ptr %0, align 8, !tbaa !250
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 360
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %7) #31
  %i.p = load ptr, ptr %8, align 8, !tbaa !349    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.r = load i64, ptr %i.a, align 8, !tbaa !270
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEvNS_9StringRefET_RNS_15SmallVectorImplINS_9FlagEntryEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.llvm::FlagEntry", align 8  ; 4 uses
  %6 = alloca %"struct.llvm::FlagEntry", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !313  ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.c, 24
  %i.d = load ptr, ptr %4, align 8, !tbaa !312    ; 19 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i ; 3 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = xor i64 %i.g, 126
  tail call void @_ZSt16__introsort_loopIPN4llvm9FlagEntryElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef %i.d, ptr noundef nonnull %i.e, i64 noundef %i.h, ptr nonnull @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_)
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = icmp ugt i32 %i.b, 16
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %scevgep.i = getelementptr i8, ptr %i.d, i64 24
  %.sroa.2.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.020.i.idx.i = phi i64 [ 24, %bb.c ], [ %.020.i.add.i, %bb.g ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.d, %bb.c ], [ %.020.i.ptr.i, %bb.g ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.020.i.idx.i ; 9 uses
  %.sroa.22.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %.sroa.22.0.copyload.i99 = load i64, ptr %.sroa.22.0..sroa_idx.i98, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i101 = load i64, ptr %.sroa.2.0..sroa_idx.i100, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i102 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i101, i64 %.sroa.22.0.copyload.i99) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i102, 0
  br i1 %i.k, label %.thread.i.i.i111, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i103

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i103: ; preds = %bb.d
  %.sroa.0.0.copyload.i104 = load ptr, ptr %i.d, align 8, !tbaa !355
  %.sroa.01.0.copyload.i105 = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355 ; 2 uses
  %i.l = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i105, ptr noundef %.sroa.0.0.copyload.i104, i64 noundef %.sroa.speculated.i.i.i102) #34
  %.fr.i.i.i106 = freeze i32 %i.l                 ; 2 uses
  %.not.not.i.i.i107 = icmp eq i32 %.fr.i.i.i106, 0
  br i1 %.not.not.i.i.i107, label %.thread.i.i.i111, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112

.thread.i.i.i111:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i103, %bb.d
  %i.m = icmp ult i64 %.sroa.22.0.copyload.i99, %.sroa.2.0.copyload.i101
  br i1 %i.m, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130, label %.thread.i.i.i111._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread_crit_edge

.thread.i.i.i111._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread_crit_edge: ; preds = %.thread.i.i.i111
  %.sroa.0113.0.copyload.pre = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i103
  %i.n = icmp slt i32 %.fr.i.i.i106, 0
  br i1 %i.n, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130: ; preds = %.thread.i.i.i111, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.ptr.i, i64 24, i1 false), !tbaa.struct !974
  %i.o = icmp samesign ugt i64 %.020.i.idx.i, 24
  br i1 %i.o, label %bb.e, label %bb.f, !prof !425

bb.e:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

bb.f:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130
  %i.p = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.g

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread: ; preds = %.thread.i.i.i111._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112
  %.sroa.0113.0.copyload = phi ptr [ %.sroa.0113.0.copyload.pre, %.thread.i.i.i111._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread_crit_edge ], [ %.sroa.01.0.copyload.i105, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112 ] ; 3 uses
  %.sroa.8.0..020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..020.i.ptr.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %.sroa.2.0.copyload.i86 = load i64, ptr %.sroa.2.0..sroa_idx.i85, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i87 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i86, i64 %.sroa.22.0.copyload.i99) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i87, 0
  br i1 %i.q, label %.thread.i.i.i96, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i88

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i88: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread
  %.sroa.0.0.copyload.i89 = load ptr, ptr %.pn19.i.i, align 8, !tbaa !355
  %i.r = tail call i32 @memcmp(ptr noundef %.sroa.0113.0.copyload, ptr noundef %.sroa.0.0.copyload.i89, i64 noundef %.sroa.speculated.i.i.i87) #34
  %.fr.i.i.i91 = freeze i32 %i.r                  ; 2 uses
  %.not.not.i.i.i92 = icmp eq i32 %.fr.i.i.i91, 0
  br i1 %.not.not.i.i.i92, label %.thread.i.i.i96, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97

.thread.i.i.i96:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i88, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread
  %i.s = icmp ult i64 %.sroa.22.0.copyload.i99, %.sroa.2.0.copyload.i86
  br i1 %i.s, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i88
  %i.t = icmp slt i32 %.fr.i.i.i91, 0
  br i1 %i.t, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.thread.i.i.i96, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82 ], [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82 ], [ %.020.i.ptr.i, %.lr.ph.i.i.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i70 = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -16
  %.sroa.2.0.copyload.i71 = load i64, ptr %.sroa.2.0..sroa_idx.i70, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i72 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i71, i64 %.sroa.22.0.copyload.i99) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i72, 0
  br i1 %i.u, label %.thread.i.i.i81, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i74 = load ptr, ptr %.0.i.i.i, align 8, !tbaa !355
  %i.v = tail call i32 @memcmp(ptr noundef %.sroa.0113.0.copyload, ptr noundef %.sroa.0.0.copyload.i74, i64 noundef %.sroa.speculated.i.i.i72) #34
  %.fr.i.i.i76 = freeze i32 %i.v                  ; 2 uses
  %.not.not.i.i.i77 = icmp eq i32 %.fr.i.i.i76, 0
  %.inv.i.i.i78 = icmp sgt i32 %.fr.i.i.i76, -1
  %spec.select.i.i.i79 = select i1 %.inv.i.i.i78, i32 1, i32 -1
  br i1 %.not.not.i.i.i77, label %.thread.i.i.i81, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82

.thread.i.i.i81:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73, %.lr.ph.i.i.i
  %i.w = icmp ult i64 %.sroa.22.0.copyload.i99, %.sroa.2.0.copyload.i71
  br i1 %i.w, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82: ; preds = %.thread.i.i.i81, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73
  %.1.i.i.i80 = phi i32 [ %spec.select.i.i.i79, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73 ], [ -1, %.thread.i.i.i81 ]
  %i.x = icmp slt i32 %.1.i.i.i80, 0
  br i1 %i.x, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i: ; preds = %.thread.i.i.i81, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82, %.thread.i.i.i96, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97 ], [ %.020.i.ptr.i, %.thread.i.i.i96 ], [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82 ], [ %.012.i.i.i, %.thread.i.i.i81 ] ; 3 uses
  store ptr %.sroa.0113.0.copyload, ptr %.09.lcssa.i.i.i, align 8, !tbaa !355
  %.sroa.6.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i99, ptr %.sroa.6.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 24 ; 2 uses
  %.not.i.i = icmp eq i64 %.020.i.add.i, 384
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, label %bb.d, !llvm.loop !94

_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.ai, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i ], [ %i.y, %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i ] ; 8 uses
  %.sroa.0117.0.copyload = load ptr, ptr %.08.i.i, align 8, !tbaa !355 ; 3 uses
  %.sroa.6119.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %i.z = load <2 x i64>, ptr %.sroa.6119.0..08.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.6119.0.copyload = load i64, ptr %.sroa.6119.0..08.i.i.sroa_idx, align 8, !tbaa !340 ; 4 uses
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i55 = getelementptr inbounds i8, ptr %.08.i.i, i64 -16
  %.sroa.2.0.copyload.i56 = load i64, ptr %.sroa.2.0..sroa_idx.i55, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i57 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i56, i64 %.sroa.6119.0.copyload) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i57, 0
  br i1 %i.aa, label %.thread.i.i.i66, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i58

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i58: ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i59 = load ptr, ptr %.010.i.i.i, align 8, !tbaa !355
  %i.ab = tail call i32 @memcmp(ptr noundef %.sroa.0117.0.copyload, ptr noundef %.sroa.0.0.copyload.i59, i64 noundef %.sroa.speculated.i.i.i57) #34
  %.fr.i.i.i61 = freeze i32 %i.ab                 ; 2 uses
  %.not.not.i.i.i62 = icmp eq i32 %.fr.i.i.i61, 0
  br i1 %.not.not.i.i.i62, label %.thread.i.i.i66, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67

.thread.i.i.i66:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i58, %.lr.ph.i.i
  %i.ac = icmp ult i64 %.sroa.6119.0.copyload, %.sroa.2.0.copyload.i56
  br i1 %i.ac, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i58
  %i.ad = icmp slt i32 %.fr.i.i.i61, 0
  br i1 %i.ad, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i.preheader:                         ; preds = %.thread.i.i.i66, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67
  br label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i14.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52 ], [ %.010.i.i.i, %.lr.ph.i.i14.i.preheader ] ; 6 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52 ], [ %.08.i.i, %.lr.ph.i.i14.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i15.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i40 = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16
  %.sroa.2.0.copyload.i41 = load i64, ptr %.sroa.2.0..sroa_idx.i40, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i42 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i41, i64 %.sroa.6119.0.copyload) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i42, 0
  br i1 %i.ae, label %.thread.i.i.i51, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43: ; preds = %.lr.ph.i.i14.i
  %.sroa.0.0.copyload.i44 = load ptr, ptr %.0.i.i17.i, align 8, !tbaa !355
  %i.af = tail call i32 @memcmp(ptr noundef %.sroa.0117.0.copyload, ptr noundef %.sroa.0.0.copyload.i44, i64 noundef %.sroa.speculated.i.i.i42) #34
  %.fr.i.i.i46 = freeze i32 %i.af                 ; 2 uses
  %.not.not.i.i.i47 = icmp eq i32 %.fr.i.i.i46, 0
  %.inv.i.i.i48 = icmp sgt i32 %.fr.i.i.i46, -1
  %spec.select.i.i.i49 = select i1 %.inv.i.i.i48, i32 1, i32 -1
  br i1 %.not.not.i.i.i47, label %.thread.i.i.i51, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52

.thread.i.i.i51:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43, %.lr.ph.i.i14.i
  %i.ag = icmp ult i64 %.sroa.6119.0.copyload, %.sroa.2.0.copyload.i41
  br i1 %i.ag, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52: ; preds = %.thread.i.i.i51, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43
  %.1.i.i.i50 = phi i32 [ %spec.select.i.i.i49, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43 ], [ -1, %.thread.i.i.i51 ]
  %i.ah = icmp slt i32 %.1.i.i.i50, 0
  br i1 %i.ah, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i: ; preds = %.thread.i.i.i51, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52, %.thread.i.i.i66, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67 ], [ %.08.i.i, %.thread.i.i.i66 ], [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52 ], [ %.012.i.i15.i, %.thread.i.i.i51 ] ; 2 uses
  store ptr %.sroa.0117.0.copyload, ptr %.09.lcssa.i.i12.i, align 8, !tbaa !355
  %.sroa.6119.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store <2 x i64> %i.z, ptr %.sroa.6119.0..09.lcssa.i.i12.i.sroa_idx, align 8, !tbaa !340
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.ai, %i.e
  br i1 %.not.i13.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !95

bb.h:                                             ; preds = %bb.b
  %.not18.i.i = icmp eq i32 %i.b, 1
  br i1 %.not18.i.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.h
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.2.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.l
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.l ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.l ], [ %i.d, %.lr.ph.i19.i.preheader ] ; 5 uses
  %.sroa.22.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.22.0.copyload.i24 = load i64, ptr %.sroa.22.0..sroa_idx.i23, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i26 = load i64, ptr %.sroa.2.0..sroa_idx.i25, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i27 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i26, i64 %.sroa.22.0.copyload.i24) ; 2 uses
  %i.aj = icmp eq i64 %.sroa.speculated.i.i.i27, 0
  br i1 %i.aj, label %.thread.i.i.i36, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28: ; preds = %.lr.ph.i19.i
  %.sroa.0.0.copyload.i29 = load ptr, ptr %i.d, align 8, !tbaa !355
  %.sroa.01.0.copyload.i30 = load ptr, ptr %.020.i20.i, align 8, !tbaa !355 ; 2 uses
  %i.ak = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i30, ptr noundef %.sroa.0.0.copyload.i29, i64 noundef %.sroa.speculated.i.i.i27) #34
  %.fr.i.i.i31 = freeze i32 %i.ak                 ; 2 uses
  %.not.not.i.i.i32 = icmp eq i32 %.fr.i.i.i31, 0
  br i1 %.not.not.i.i.i32, label %.thread.i.i.i36, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37

.thread.i.i.i36:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28, %.lr.ph.i19.i
  %i.al = icmp ult i64 %.sroa.22.0.copyload.i24, %.sroa.2.0.copyload.i26
  br i1 %i.al, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142, label %.thread.i.i.i36._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread_crit_edge

.thread.i.i.i36._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread_crit_edge: ; preds = %.thread.i.i.i36
  %.sroa.0123.0.copyload.pre = load ptr, ptr %.020.i20.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28
  %i.am = icmp slt i32 %.fr.i.i.i31, 0
  br i1 %i.am, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142: ; preds = %.thread.i.i.i36, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.020.i20.i, i64 24, i1 false), !tbaa.struct !974
  %i.an = ptrtoint ptr %.020.i20.i to i64
  %i.ao = sub i64 %i.an, %i.i                     ; 4 uses
  %i.ap = icmp sgt i64 %i.ao, 24
  br i1 %i.ap, label %bb.i, label %bb.j, !prof !425

bb.i:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 48
  %.neg25.i31.i = udiv exact i64 %i.ao, 24
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %i.ar = getelementptr inbounds [24 x i8], ptr %i.aq, i64 %.neg25.neg.i32.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.ao, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.j:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142
  %i.as = icmp eq i64 %i.ao, 24
  br i1 %i.as, label %bb.k, label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i: ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.l

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread: ; preds = %.thread.i.i.i36._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37
  %.sroa.0123.0.copyload = phi ptr [ %.sroa.0123.0.copyload.pre, %.thread.i.i.i36._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread_crit_edge ], [ %.sroa.01.0.copyload.i30, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37 ] ; 3 uses
  %.sroa.8127.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16
  %.sroa.8127.0.copyload = load i64, ptr %.sroa.8127.0..020.i20.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %.sroa.2.0.copyload.i11 = load i64, ptr %.sroa.2.0..sroa_idx.i10, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i11, i64 %.sroa.22.0.copyload.i24) ; 2 uses
  %i.au = icmp eq i64 %.sroa.speculated.i.i.i12, 0
  br i1 %i.au, label %.thread.i.i.i21, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i13

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i13: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread
  %.sroa.0.0.copyload.i14 = load ptr, ptr %.pn19.i21.i, align 8, !tbaa !355
  %i.av = tail call i32 @memcmp(ptr noundef %.sroa.0123.0.copyload, ptr noundef %.sroa.0.0.copyload.i14, i64 noundef %.sroa.speculated.i.i.i12) #34
  %.fr.i.i.i16 = freeze i32 %i.av                 ; 2 uses
  %.not.not.i.i.i17 = icmp eq i32 %.fr.i.i.i16, 0
  br i1 %.not.not.i.i.i17, label %.thread.i.i.i21, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22

.thread.i.i.i21:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i13, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread
  %i.aw = icmp ult i64 %.sroa.22.0.copyload.i24, %.sroa.2.0.copyload.i11
  br i1 %i.aw, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i13
  %i.ax = icmp slt i32 %.fr.i.i.i16, 0
  br i1 %i.ax, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i.preheader:                         ; preds = %.thread.i.i.i21, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.pn19.i21.i, %.lr.ph.i.i26.i.preheader ] ; 6 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.020.i20.i, %.lr.ph.i.i26.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i27.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i, i64 %.sroa.22.0.copyload.i24) ; 2 uses
  %i.ay = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.ay, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i26.i
  %.sroa.0.0.copyload.i = load ptr, ptr %.0.i.i29.i, align 8, !tbaa !355
  %i.az = tail call i32 @memcmp(ptr noundef %.sroa.0123.0.copyload, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.speculated.i.i.i) #34
  %.fr.i.i.i = freeze i32 %i.az                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %.inv.i.i.i = icmp sgt i32 %.fr.i.i.i, -1
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %.lr.ph.i.i26.i
  %i.ba = icmp ult i64 %.sroa.22.0.copyload.i24, %.sroa.2.0.copyload.i
  br i1 %i.ba, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit: ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i ], [ -1, %.thread.i.i.i ]
  %i.bb = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.bb, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i: ; preds = %.thread.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, %.thread.i.i.i21, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22 ], [ %.020.i20.i, %.thread.i.i.i21 ], [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.012.i.i27.i, %.thread.i.i.i ] ; 3 uses
  store ptr %.sroa.0123.0.copyload, ptr %.09.lcssa.i.i23.i, align 8, !tbaa !355
  %.sroa.6125.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i64 %.sroa.22.0.copyload.i24, ptr %.sroa.6125.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8127.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 16
  store i64 %.sroa.8127.0.copyload, ptr %.sroa.8127.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  br label %bb.l

bb.l:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 24 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.e
  br i1 %.not.i25.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !94

_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit: ; preds = %bb.l, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, %bb.h, %bb.a
  %i.bc = zext i32 %3 to i64
  %i.bd = load ptr, ptr %4, align 8, !tbaa !312
  %i.be = load i32, ptr %i.a, align 8, !tbaa !313
  %i.bf = zext i32 %i.be to i64
  %i.bg = load ptr, ptr %0, align 8, !tbaa !250
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 312
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.bc, ptr %i.bd, i64 %i.bf) #31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4llvm12function_refIFvRKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEEEE11callback_fnIZN12_GLOBAL__N_113LLVMELFDumperIS5_E18printDependentLibsEvEUlS8_E_EEvlS8_(i64 %0, ptr nofree nonnull readnone align 1 captures(none) %1) #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvNS_9StringRefEmEE11callback_fnIZN12_GLOBAL__N_113LLVMELFDumperINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEE18printDependentLibsEvEUlS1_mE_EEvlS1_m(i64 noundef %0, ptr %1, i64 %2, i64 %3) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1117
  %i.b = getelementptr i8, ptr %.val, i64 1152
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !1109 ; 2 uses
  %i.c = load ptr, ptr %.val.val, align 8, !tbaa !250
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(44) %.val.val, ptr %1, i64 %2) #31, !inline_history !9171
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter11printNumberImEEvNS_9StringRefES2_T_(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, ptr %3, i64 %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9174)
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.a, ptr %8, align 8, !tbaa !268, !alias.scope !9174
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !269, !alias.scope !9174
  store i8 0, ptr %i.a, align 8, !tbaa !270, !alias.scope !9174
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !9174
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !391, !noalias !9174
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !392, !noalias !9174
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !393, !noalias !9174
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !noalias !9174
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %6, align 8, !tbaa !250, !noalias !9174
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %8, ptr %i.g, align 8, !tbaa !395, !noalias !9174
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef null, i64 noundef 0, i32 noundef 0) #31
  %i.h = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %6, i64 noundef %5) #31 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !9174
  %i.i = load ptr, ptr %8, align 8, !tbaa !349
  store ptr %i.i, ptr %7, align 8, !tbaa !271
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = load i64, ptr %i.b, align 8, !tbaa !269
  store i64 %i.k, ptr %i.j, align 8, !tbaa !272
  %i.l = load ptr, ptr %0, align 8, !tbaa !250
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %7) #31
  %i.o = load ptr, ptr %8, align 8, !tbaa !349    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.q = load i64, ptr %i.a, align 8, !tbaa !270
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb0EEEE25getSectionContentsAsArrayINS0_18Elf_CGProfile_ImplIS4_EEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.1277") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %.0.copyload.i.i.i = load i32, ptr %i.a, align 1
  %.not = icmp eq i32 %.0.copyload.i.i.i, 8
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb0EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !9291)
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !9291 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !268, !alias.scope !9291
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !349  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !269  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %7, align 8, !tbaa !349, !alias.scope !9291
  %i.k = load i64, ptr %i.e, align 8, !tbaa !270
  store i64 %i.k, ptr %i.c, align 8, !tbaa !270, !alias.scope !9291
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !269, !alias.scope !9291
  store ptr %i.e, ptr %i.b, align 8, !tbaa !349
  store i64 0, ptr %i.m, align 8, !tbaa !269
  store i8 0, ptr %i.e, align 8, !tbaa !270
  call void @llvm.experimental.noalias.scope.decl(metadata !9292)
  %i.o = add i64 %i.l, -4611686018427387870
  %i.p = icmp ult i64 %i.o, 34
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !9292
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.173, i64 noundef 34) #31, !noalias !9292 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !268, !alias.scope !9292
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !349  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
end_hunk_3
begin_hunk_4_@_ZNSt17_Function_handlerIFvvEZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb0EEEE15printStackSizesEvEUlvE0_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation:bb.a

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb0EEEE15printStackSizesEvEUlvE0_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb0EEEE15printStackSizesEvEUlvE0_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !457
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb0EEEE15printStackSizesEvEUlvE0_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb0EEEE15printStackSizesEvEUlvE0_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb0EEEE15printStackSizesEvEUlvE0_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsItjLj2EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEES5_S5_S5_NS_8ArrayRefINS_9FlagEntryEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i16 noundef zeroext %3, ptr %4, i64 %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef byval(%"class.llvm::ArrayRef.1044") align 8 %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %10 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %11 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SmallVector.1054", align 8 ; 13 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %.sroa.020.0.copyload = load ptr, ptr %9, align 8, !tbaa !1094
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.221.0.copyload = load i64, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !340 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.b, ptr %12, align 8, !tbaa !312
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  store i32 0, ptr %i.c, align 8, !tbaa !313
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 10, ptr %i.d, align 4, !tbaa !314
  %.idx.i = mul nuw nsw i64 %.sroa.221.0.copyload, 24
  %i.e = icmp ugt i64 %.sroa.221.0.copyload, 10
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(256) %12, ptr noundef nonnull %i.b, i64 noundef %.sroa.221.0.copyload, i64 noundef 24) #31
  %.pre8.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !313
  %i.f = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %12, align 8, !tbaa !312
  br label %bb.b

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.221.0.copyload, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i
  %i.g = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ %i.b, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.f, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 8 %.sroa.020.0.copyload, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !313
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %bb.b
  %i.i = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.j = trunc i64 %.sroa.221.0.copyload to i32
  %i.k = add i32 %i.i, %i.j                       ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !313
  %.idx = mul nuw nsw i64 %5, 12
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.not193 = icmp eq i64 %5, 0
  br i1 %.not193, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.m = zext i16 %3 to i32                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre196 = load i32, ptr %i.c, align 8, !tbaa !313
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.o = phi i32 [ %.pre196, %._crit_edge.loopexit ], [ %i.k, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.idx.i39 = mul nuw nsw i64 %i.p, 24
  %i.q = load ptr, ptr %12, align 8, !tbaa !312   ; 19 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i39 ; 3 uses
  %i.s = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  call void @_ZSt16__introsort_loopIPN4llvm9FlagEntryElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef %i.q, ptr noundef nonnull %i.r, i64 noundef %i.u, ptr nonnull @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_)
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = icmp ugt i32 %i.o, 16
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %scevgep.i = getelementptr i8, ptr %i.q, i64 24
  %.sroa.2.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.020.i.idx.i = phi i64 [ 24, %bb.d ], [ %.020.i.add.i, %bb.h ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.q, %bb.d ], [ %.020.i.ptr.i, %bb.h ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.020.i.idx.i ; 9 uses
  %.sroa.22.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %.sroa.22.0.copyload.i134 = load i64, ptr %.sroa.22.0..sroa_idx.i133, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i136 = load i64, ptr %.sroa.2.0..sroa_idx.i135, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i137 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i136, i64 %.sroa.22.0.copyload.i134) ; 2 uses
  %i.x = icmp eq i64 %.sroa.speculated.i.i.i137, 0
  br i1 %i.x, label %.thread.i.i.i146, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138: ; preds = %bb.e
  %.sroa.0.0.copyload.i139 = load ptr, ptr %i.q, align 8, !tbaa !355
  %.sroa.01.0.copyload.i140 = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355 ; 2 uses
  %i.y = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i140, ptr noundef %.sroa.0.0.copyload.i139, i64 noundef %.sroa.speculated.i.i.i137) #34
  %.fr.i.i.i141 = freeze i32 %i.y                 ; 2 uses
  %.not.not.i.i.i142 = icmp eq i32 %.fr.i.i.i141, 0
  br i1 %.not.not.i.i.i142, label %.thread.i.i.i146, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147

.thread.i.i.i146:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138, %bb.e
  %i.z = icmp ult i64 %.sroa.22.0.copyload.i134, %.sroa.2.0.copyload.i136
  br i1 %i.z, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167, label %.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge

.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge: ; preds = %.thread.i.i.i146
  %.sroa.0150.0.copyload.pre = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138
  %i.aa = icmp slt i32 %.fr.i.i.i141, 0
  br i1 %i.aa, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167: ; preds = %.thread.i.i.i146, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.ptr.i, i64 24, i1 false), !tbaa.struct !974
  %i.ab = icmp samesign ugt i64 %.020.i.idx.i, 24
  br i1 %i.ab, label %bb.f, label %bb.g, !prof !425

bb.f:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

bb.g:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.h

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread: ; preds = %.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147
  %.sroa.0150.0.copyload = phi ptr [ %.sroa.0150.0.copyload.pre, %.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge ], [ %.sroa.01.0.copyload.i140, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147 ] ; 3 uses
  %.sroa.8.0..020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..020.i.ptr.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %.sroa.2.0.copyload.i121 = load i64, ptr %.sroa.2.0..sroa_idx.i120, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i122 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i121, i64 %.sroa.22.0.copyload.i134) ; 2 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i.i.i122, 0
  br i1 %i.ad, label %.thread.i.i.i131, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread
  %.sroa.0.0.copyload.i124 = load ptr, ptr %.pn19.i.i, align 8, !tbaa !355
  %i.ae = call i32 @memcmp(ptr noundef %.sroa.0150.0.copyload, ptr noundef %.sroa.0.0.copyload.i124, i64 noundef %.sroa.speculated.i.i.i122) #34
  %.fr.i.i.i126 = freeze i32 %i.ae                ; 2 uses
  %.not.not.i.i.i127 = icmp eq i32 %.fr.i.i.i126, 0
  br i1 %.not.not.i.i.i127, label %.thread.i.i.i131, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132

.thread.i.i.i131:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread
  %i.af = icmp ult i64 %.sroa.22.0.copyload.i134, %.sroa.2.0.copyload.i121
  br i1 %i.af, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123
  %i.ag = icmp slt i32 %.fr.i.i.i126, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.thread.i.i.i131, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117 ], [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117 ], [ %.020.i.ptr.i, %.lr.ph.i.i.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i105 = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -16
  %.sroa.2.0.copyload.i106 = load i64, ptr %.sroa.2.0..sroa_idx.i105, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i107 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i106, i64 %.sroa.22.0.copyload.i134) ; 2 uses
  %i.ah = icmp eq i64 %.sroa.speculated.i.i.i107, 0
  br i1 %i.ah, label %.thread.i.i.i116, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i109 = load ptr, ptr %.0.i.i.i, align 8, !tbaa !355
  %i.ai = call i32 @memcmp(ptr noundef %.sroa.0150.0.copyload, ptr noundef %.sroa.0.0.copyload.i109, i64 noundef %.sroa.speculated.i.i.i107) #34
  %.fr.i.i.i111 = freeze i32 %i.ai                ; 2 uses
  %.not.not.i.i.i112 = icmp eq i32 %.fr.i.i.i111, 0
  %.inv.i.i.i113 = icmp sgt i32 %.fr.i.i.i111, -1
  %spec.select.i.i.i114 = select i1 %.inv.i.i.i113, i32 1, i32 -1
  br i1 %.not.not.i.i.i112, label %.thread.i.i.i116, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117

.thread.i.i.i116:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108, %.lr.ph.i.i.i
  %i.aj = icmp ult i64 %.sroa.22.0.copyload.i134, %.sroa.2.0.copyload.i106
  br i1 %i.aj, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117: ; preds = %.thread.i.i.i116, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108
  %.1.i.i.i115 = phi i32 [ %spec.select.i.i.i114, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108 ], [ -1, %.thread.i.i.i116 ]
  %i.ak = icmp slt i32 %.1.i.i.i115, 0
  br i1 %i.ak, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i: ; preds = %.thread.i.i.i116, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117, %.thread.i.i.i131, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132 ], [ %.020.i.ptr.i, %.thread.i.i.i131 ], [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117 ], [ %.012.i.i.i, %.thread.i.i.i116 ] ; 3 uses
  store ptr %.sroa.0150.0.copyload, ptr %.09.lcssa.i.i.i, align 8, !tbaa !355
  %.sroa.6.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i134, ptr %.sroa.6.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 24 ; 2 uses
  %.not.i.i = icmp eq i64 %.020.i.add.i, 384
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, label %bb.e, !llvm.loop !94

_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i: ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.av, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i ], [ %i.al, %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i ] ; 8 uses
  %.sroa.0154.0.copyload = load ptr, ptr %.08.i.i, align 8, !tbaa !355 ; 3 uses
  %.sroa.6156.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %i.am = load <2 x i64>, ptr %.sroa.6156.0..08.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.6156.0.copyload = load i64, ptr %.sroa.6156.0..08.i.i.sroa_idx, align 8, !tbaa !340 ; 4 uses
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i90 = getelementptr inbounds i8, ptr %.08.i.i, i64 -16
  %.sroa.2.0.copyload.i91 = load i64, ptr %.sroa.2.0..sroa_idx.i90, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i92 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i91, i64 %.sroa.6156.0.copyload) ; 2 uses
  %i.an = icmp eq i64 %.sroa.speculated.i.i.i92, 0
  br i1 %i.an, label %.thread.i.i.i101, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93: ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i94 = load ptr, ptr %.010.i.i.i, align 8, !tbaa !355
  %i.ao = call i32 @memcmp(ptr noundef %.sroa.0154.0.copyload, ptr noundef %.sroa.0.0.copyload.i94, i64 noundef %.sroa.speculated.i.i.i92) #34
  %.fr.i.i.i96 = freeze i32 %i.ao                 ; 2 uses
  %.not.not.i.i.i97 = icmp eq i32 %.fr.i.i.i96, 0
  br i1 %.not.not.i.i.i97, label %.thread.i.i.i101, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102

.thread.i.i.i101:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93, %.lr.ph.i.i
  %i.ap = icmp ult i64 %.sroa.6156.0.copyload, %.sroa.2.0.copyload.i91
  br i1 %i.ap, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93
  %i.aq = icmp slt i32 %.fr.i.i.i96, 0
  br i1 %i.aq, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i.preheader:                         ; preds = %.thread.i.i.i101, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102
  br label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i14.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87 ], [ %.010.i.i.i, %.lr.ph.i.i14.i.preheader ] ; 6 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87 ], [ %.08.i.i, %.lr.ph.i.i14.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i15.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i75 = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16
  %.sroa.2.0.copyload.i76 = load i64, ptr %.sroa.2.0..sroa_idx.i75, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i77 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i76, i64 %.sroa.6156.0.copyload) ; 2 uses
  %i.ar = icmp eq i64 %.sroa.speculated.i.i.i77, 0
  br i1 %i.ar, label %.thread.i.i.i86, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78: ; preds = %.lr.ph.i.i14.i
  %.sroa.0.0.copyload.i79 = load ptr, ptr %.0.i.i17.i, align 8, !tbaa !355
  %i.as = call i32 @memcmp(ptr noundef %.sroa.0154.0.copyload, ptr noundef %.sroa.0.0.copyload.i79, i64 noundef %.sroa.speculated.i.i.i77) #34
  %.fr.i.i.i81 = freeze i32 %i.as                 ; 2 uses
  %.not.not.i.i.i82 = icmp eq i32 %.fr.i.i.i81, 0
  %.inv.i.i.i83 = icmp sgt i32 %.fr.i.i.i81, -1
  %spec.select.i.i.i84 = select i1 %.inv.i.i.i83, i32 1, i32 -1
  br i1 %.not.not.i.i.i82, label %.thread.i.i.i86, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87

.thread.i.i.i86:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78, %.lr.ph.i.i14.i
  %i.at = icmp ult i64 %.sroa.6156.0.copyload, %.sroa.2.0.copyload.i76
  br i1 %i.at, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87: ; preds = %.thread.i.i.i86, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78
  %.1.i.i.i85 = phi i32 [ %spec.select.i.i.i84, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78 ], [ -1, %.thread.i.i.i86 ]
  %i.au = icmp slt i32 %.1.i.i.i85, 0
  br i1 %i.au, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i: ; preds = %.thread.i.i.i86, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87, %.thread.i.i.i101, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102 ], [ %.08.i.i, %.thread.i.i.i101 ], [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87 ], [ %.012.i.i15.i, %.thread.i.i.i86 ] ; 2 uses
  store ptr %.sroa.0154.0.copyload, ptr %.09.lcssa.i.i12.i, align 8, !tbaa !355
  %.sroa.6156.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store <2 x i64> %i.am, ptr %.sroa.6156.0..09.lcssa.i.i12.i.sroa_idx, align 8, !tbaa !340
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.av, %i.r
  br i1 %.not.i13.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !95

bb.i:                                             ; preds = %bb.c
  %.not18.i.i = icmp eq i32 %i.o, 1
  br i1 %.not18.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.i
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.2.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.m
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.m ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.m ], [ %i.q, %.lr.ph.i19.i.preheader ] ; 5 uses
  %.sroa.22.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.22.0.copyload.i59 = load i64, ptr %.sroa.22.0..sroa_idx.i58, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i61 = load i64, ptr %.sroa.2.0..sroa_idx.i60, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i62 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i61, i64 %.sroa.22.0.copyload.i59) ; 2 uses
  %i.aw = icmp eq i64 %.sroa.speculated.i.i.i62, 0
  br i1 %i.aw, label %.thread.i.i.i71, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63: ; preds = %.lr.ph.i19.i
  %.sroa.0.0.copyload.i64 = load ptr, ptr %i.q, align 8, !tbaa !355
  %.sroa.01.0.copyload.i65 = load ptr, ptr %.020.i20.i, align 8, !tbaa !355 ; 2 uses
  %i.ax = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i65, ptr noundef %.sroa.0.0.copyload.i64, i64 noundef %.sroa.speculated.i.i.i62) #34
  %.fr.i.i.i66 = freeze i32 %i.ax                 ; 2 uses
  %.not.not.i.i.i67 = icmp eq i32 %.fr.i.i.i66, 0
  br i1 %.not.not.i.i.i67, label %.thread.i.i.i71, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72

.thread.i.i.i71:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63, %.lr.ph.i19.i
  %i.ay = icmp ult i64 %.sroa.22.0.copyload.i59, %.sroa.2.0.copyload.i61
  br i1 %i.ay, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179, label %.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge

.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge: ; preds = %.thread.i.i.i71
  %.sroa.0160.0.copyload.pre = load ptr, ptr %.020.i20.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63
  %i.az = icmp slt i32 %.fr.i.i.i66, 0
  br i1 %i.az, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179: ; preds = %.thread.i.i.i71, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %.020.i20.i, i64 24, i1 false), !tbaa.struct !974
  %i.ba = ptrtoint ptr %.020.i20.i to i64
  %i.bb = sub i64 %i.ba, %i.v                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 24
  br i1 %i.bc, label %bb.j, label %bb.k, !prof !425

bb.j:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 48
  %.neg25.i31.i = udiv exact i64 %i.bb, 24
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %i.be = getelementptr inbounds [24 x i8], ptr %i.bd, i64 %.neg25.neg.i32.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.bb, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.k:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179
  %i.bf = icmp eq i64 %i.bb, 24
  br i1 %i.bf, label %bb.l, label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.m

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread: ; preds = %.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72
  %.sroa.0160.0.copyload = phi ptr [ %.sroa.0160.0.copyload.pre, %.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge ], [ %.sroa.01.0.copyload.i65, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72 ] ; 3 uses
  %.sroa.8164.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16
  %.sroa.8164.0.copyload = load i64, ptr %.sroa.8164.0..020.i20.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %.sroa.2.0.copyload.i46 = load i64, ptr %.sroa.2.0..sroa_idx.i45, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i47 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i46, i64 %.sroa.22.0.copyload.i59) ; 2 uses
  %i.bh = icmp eq i64 %.sroa.speculated.i.i.i47, 0
  br i1 %i.bh, label %.thread.i.i.i56, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread
  %.sroa.0.0.copyload.i49 = load ptr, ptr %.pn19.i21.i, align 8, !tbaa !355
  %i.bi = call i32 @memcmp(ptr noundef %.sroa.0160.0.copyload, ptr noundef %.sroa.0.0.copyload.i49, i64 noundef %.sroa.speculated.i.i.i47) #34
  %.fr.i.i.i51 = freeze i32 %i.bi                 ; 2 uses
  %.not.not.i.i.i52 = icmp eq i32 %.fr.i.i.i51, 0
  br i1 %.not.not.i.i.i52, label %.thread.i.i.i56, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57

.thread.i.i.i56:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread
  %i.bj = icmp ult i64 %.sroa.22.0.copyload.i59, %.sroa.2.0.copyload.i46
  br i1 %i.bj, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48
  %i.bk = icmp slt i32 %.fr.i.i.i51, 0
  br i1 %i.bk, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i.preheader:                         ; preds = %.thread.i.i.i56, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.pn19.i21.i, %.lr.ph.i.i26.i.preheader ] ; 6 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.020.i20.i, %.lr.ph.i.i26.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i27.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i40 = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16
  %.sroa.2.0.copyload.i41 = load i64, ptr %.sroa.2.0..sroa_idx.i40, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i41, i64 %.sroa.22.0.copyload.i59) ; 2 uses
  %i.bl = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.bl, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i26.i
  %.sroa.0.0.copyload.i42 = load ptr, ptr %.0.i.i29.i, align 8, !tbaa !355
  %i.bm = call i32 @memcmp(ptr noundef %.sroa.0160.0.copyload, ptr noundef %.sroa.0.0.copyload.i42, i64 noundef %.sroa.speculated.i.i.i) #34
  %.fr.i.i.i = freeze i32 %i.bm                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %.inv.i.i.i = icmp sgt i32 %.fr.i.i.i, -1
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %.lr.ph.i.i26.i
  %i.bn = icmp ult i64 %.sroa.22.0.copyload.i59, %.sroa.2.0.copyload.i41
  br i1 %i.bn, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit: ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i ], [ -1, %.thread.i.i.i ]
  %i.bo = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.bo, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i: ; preds = %.thread.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, %.thread.i.i.i56, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57 ], [ %.020.i20.i, %.thread.i.i.i56 ], [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.012.i.i27.i, %.thread.i.i.i ] ; 3 uses
  store ptr %.sroa.0160.0.copyload, ptr %.09.lcssa.i.i23.i, align 8, !tbaa !355
  %.sroa.6162.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i64 %.sroa.22.0.copyload.i59, ptr %.sroa.6162.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8164.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 16
  store i64 %.sroa.8164.0.copyload, ptr %.sroa.8164.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 24 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.r
  br i1 %.not.i25.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !94

_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, %bb.i, %._crit_edge
  %i.bp = zext i16 %3 to i64
  %i.bq = load ptr, ptr %12, align 8, !tbaa !312
  %i.br = load i32, ptr %i.c, align 8, !tbaa !313
  %i.bs = zext i32 %i.br to i64
  %i.bt = load ptr, ptr %0, align 8, !tbaa !250
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 312
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.bp, ptr %i.bq, i64 %i.bs) #31
  %i.bw = load ptr, ptr %12, align 8, !tbaa !312  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.b
  br i1 %i.bx, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit
  call void @free(ptr noundef %i.bw) #31
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit: ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  ret void

bb.o:                                             ; preds = %.lr.ph, %bb.x
  %.0194 = phi ptr [ %4, %.lr.ph ], [ %i.cy, %bb.x ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0194, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !828 ; 10 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = and i32 %i.bz, %6
  %.not35 = icmp eq i32 %i.cb, 0
  br i1 %.not35, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cc = and i32 %i.bz, %7
  %.not36 = icmp eq i32 %i.cc, 0
  br i1 %.not36, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cd = and i32 %i.bz, %8
  %.not37 = icmp eq i32 %i.cd, 0
  %spec.select = select i1 %.not37, i32 0, i32 %8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.034 = phi i32 [ %spec.select, %bb.r ], [ %6, %bb.p ], [ %7, %bb.q ] ; 2 uses
  %i.ce = and i32 %.034, %i.bz
  %.not38 = icmp eq i32 %i.ce, 0
  br i1 %.not38, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cf = and i32 %i.bz, %i.m
  %i.cg = icmp eq i32 %i.cf, %i.bz
  br i1 %i.cg, label %bb.u, label %bb.x

.critedge:                                        ; preds = %bb.s
  %i.ch = and i32 %.034, %i.m
  %i.ci = icmp eq i32 %i.ch, %i.bz
  br i1 %i.ci, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.critedge, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.cj = load i16, ptr %.0194, align 4, !tbaa !389
  %i.ck = zext i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.0194, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0194, i64 4
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !270
  %i.co = zext i8 %i.cn to i64                    ; 2 uses
  store ptr %i.cl, ptr %13, align 8
  store i64 %i.co, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !396
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !313 ; 3 uses
  %i.cq = load i32, ptr %i.d, align 4, !tbaa !314
  %.not.i = icmp ult i32 %i.cp, %i.cq
  br i1 %.not.i, label %bb.w, label %bb.v, !prof !425

bb.v:                                             ; preds = %bb.u
  %i.cr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE18growAndEmplaceBackIJNS_9StringRefEjEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.cs = zext i32 %i.cp to i64
  %i.ct = load ptr, ptr %12, align 8, !tbaa !312
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.cs ; 3 uses
  store ptr %i.cl, ptr %i.cu, align 8, !tbaa !355
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.co, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !340
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = zext nneg i32 %i.bz to i64
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !1098
  %i.cx = add nuw i32 %i.cp, 1
  store i32 %i.cx, ptr %i.c, align 8, !tbaa !313
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %.critedge, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit, %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %.0194, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.cy, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %bb.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsIjjLj2EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEES5_S5_S5_NS_8ArrayRefINS_9FlagEntryEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i32 noundef %3, ptr %4, i64 %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef byval(%"class.llvm::ArrayRef.1044") align 8 %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %10 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %11 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SmallVector.1054", align 8 ; 13 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %.sroa.020.0.copyload = load ptr, ptr %9, align 8, !tbaa !1094
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.221.0.copyload = load i64, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !340 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.b, ptr %12, align 8, !tbaa !312
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  store i32 0, ptr %i.c, align 8, !tbaa !313
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 10, ptr %i.d, align 4, !tbaa !314
  %.idx.i = mul nuw nsw i64 %.sroa.221.0.copyload, 24
  %i.e = icmp ugt i64 %.sroa.221.0.copyload, 10
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(256) %12, ptr noundef nonnull %i.b, i64 noundef %.sroa.221.0.copyload, i64 noundef 24) #31
  %.pre8.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !313
  %i.f = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %12, align 8, !tbaa !312
  br label %bb.b

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.221.0.copyload, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i
  %i.g = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ %i.b, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.f, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 8 %.sroa.020.0.copyload, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !313
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %bb.b
  %i.i = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.j = trunc i64 %.sroa.221.0.copyload to i32
  %i.k = add i32 %i.i, %i.j                       ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !313
  %.idx = mul nuw nsw i64 %5, 12
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.not193 = icmp eq i64 %5, 0
  br i1 %.not193, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre196 = load i32, ptr %i.c, align 8, !tbaa !313
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.n = phi i32 [ %.pre196, %._crit_edge.loopexit ], [ %i.k, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %.idx.i39 = mul nuw nsw i64 %i.o, 24
  %i.p = load ptr, ptr %12, align 8, !tbaa !312   ; 19 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i39 ; 3 uses
  %i.r = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = xor i64 %i.s, 126
  call void @_ZSt16__introsort_loopIPN4llvm9FlagEntryElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef %i.p, ptr noundef nonnull %i.q, i64 noundef %i.t, ptr nonnull @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_)
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = icmp ugt i32 %i.n, 16
  br i1 %i.v, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %scevgep.i = getelementptr i8, ptr %i.p, i64 24
  %.sroa.2.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.020.i.idx.i = phi i64 [ 24, %bb.d ], [ %.020.i.add.i, %bb.h ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.p, %bb.d ], [ %.020.i.ptr.i, %bb.h ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.020.i.idx.i ; 9 uses
  %.sroa.22.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %.sroa.22.0.copyload.i134 = load i64, ptr %.sroa.22.0..sroa_idx.i133, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i136 = load i64, ptr %.sroa.2.0..sroa_idx.i135, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i137 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i136, i64 %.sroa.22.0.copyload.i134) ; 2 uses
  %i.w = icmp eq i64 %.sroa.speculated.i.i.i137, 0
  br i1 %i.w, label %.thread.i.i.i146, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138: ; preds = %bb.e
  %.sroa.0.0.copyload.i139 = load ptr, ptr %i.p, align 8, !tbaa !355
  %.sroa.01.0.copyload.i140 = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355 ; 2 uses
  %i.x = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i140, ptr noundef %.sroa.0.0.copyload.i139, i64 noundef %.sroa.speculated.i.i.i137) #34
  %.fr.i.i.i141 = freeze i32 %i.x                 ; 2 uses
  %.not.not.i.i.i142 = icmp eq i32 %.fr.i.i.i141, 0
  br i1 %.not.not.i.i.i142, label %.thread.i.i.i146, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147

.thread.i.i.i146:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138, %bb.e
  %i.y = icmp ult i64 %.sroa.22.0.copyload.i134, %.sroa.2.0.copyload.i136
  br i1 %i.y, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167, label %.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge

.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge: ; preds = %.thread.i.i.i146
  %.sroa.0150.0.copyload.pre = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138
  %i.z = icmp slt i32 %.fr.i.i.i141, 0
  br i1 %i.z, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167: ; preds = %.thread.i.i.i146, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.ptr.i, i64 24, i1 false), !tbaa.struct !974
  %i.aa = icmp samesign ugt i64 %.020.i.idx.i, 24
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !425

bb.f:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

bb.g:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.h

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread: ; preds = %.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147
  %.sroa.0150.0.copyload = phi ptr [ %.sroa.0150.0.copyload.pre, %.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge ], [ %.sroa.01.0.copyload.i140, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147 ] ; 3 uses
  %.sroa.8.0..020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..020.i.ptr.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %.sroa.2.0.copyload.i121 = load i64, ptr %.sroa.2.0..sroa_idx.i120, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i122 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i121, i64 %.sroa.22.0.copyload.i134) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i122, 0
  br i1 %i.ac, label %.thread.i.i.i131, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread
  %.sroa.0.0.copyload.i124 = load ptr, ptr %.pn19.i.i, align 8, !tbaa !355
  %i.ad = call i32 @memcmp(ptr noundef %.sroa.0150.0.copyload, ptr noundef %.sroa.0.0.copyload.i124, i64 noundef %.sroa.speculated.i.i.i122) #34
  %.fr.i.i.i126 = freeze i32 %i.ad                ; 2 uses
  %.not.not.i.i.i127 = icmp eq i32 %.fr.i.i.i126, 0
  br i1 %.not.not.i.i.i127, label %.thread.i.i.i131, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132

.thread.i.i.i131:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread
  %i.ae = icmp ult i64 %.sroa.22.0.copyload.i134, %.sroa.2.0.copyload.i121
  br i1 %i.ae, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123
  %i.af = icmp slt i32 %.fr.i.i.i126, 0
  br i1 %i.af, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.thread.i.i.i131, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117 ], [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117 ], [ %.020.i.ptr.i, %.lr.ph.i.i.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i105 = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -16
  %.sroa.2.0.copyload.i106 = load i64, ptr %.sroa.2.0..sroa_idx.i105, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i107 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i106, i64 %.sroa.22.0.copyload.i134) ; 2 uses
  %i.ag = icmp eq i64 %.sroa.speculated.i.i.i107, 0
  br i1 %i.ag, label %.thread.i.i.i116, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i109 = load ptr, ptr %.0.i.i.i, align 8, !tbaa !355
  %i.ah = call i32 @memcmp(ptr noundef %.sroa.0150.0.copyload, ptr noundef %.sroa.0.0.copyload.i109, i64 noundef %.sroa.speculated.i.i.i107) #34
  %.fr.i.i.i111 = freeze i32 %i.ah                ; 2 uses
  %.not.not.i.i.i112 = icmp eq i32 %.fr.i.i.i111, 0
  %.inv.i.i.i113 = icmp sgt i32 %.fr.i.i.i111, -1
  %spec.select.i.i.i114 = select i1 %.inv.i.i.i113, i32 1, i32 -1
  br i1 %.not.not.i.i.i112, label %.thread.i.i.i116, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117

.thread.i.i.i116:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108, %.lr.ph.i.i.i
  %i.ai = icmp ult i64 %.sroa.22.0.copyload.i134, %.sroa.2.0.copyload.i106
  br i1 %i.ai, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117: ; preds = %.thread.i.i.i116, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108
  %.1.i.i.i115 = phi i32 [ %spec.select.i.i.i114, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108 ], [ -1, %.thread.i.i.i116 ]
  %i.aj = icmp slt i32 %.1.i.i.i115, 0
  br i1 %i.aj, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i: ; preds = %.thread.i.i.i116, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117, %.thread.i.i.i131, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132 ], [ %.020.i.ptr.i, %.thread.i.i.i131 ], [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117 ], [ %.012.i.i.i, %.thread.i.i.i116 ] ; 3 uses
  store ptr %.sroa.0150.0.copyload, ptr %.09.lcssa.i.i.i, align 8, !tbaa !355
  %.sroa.6.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i134, ptr %.sroa.6.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 24 ; 2 uses
  %.not.i.i = icmp eq i64 %.020.i.add.i, 384
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, label %bb.e, !llvm.loop !94

_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i: ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 384
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.au, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i ], [ %i.ak, %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i ] ; 8 uses
  %.sroa.0154.0.copyload = load ptr, ptr %.08.i.i, align 8, !tbaa !355 ; 3 uses
  %.sroa.6156.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %i.al = load <2 x i64>, ptr %.sroa.6156.0..08.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.6156.0.copyload = load i64, ptr %.sroa.6156.0..08.i.i.sroa_idx, align 8, !tbaa !340 ; 4 uses
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i90 = getelementptr inbounds i8, ptr %.08.i.i, i64 -16
  %.sroa.2.0.copyload.i91 = load i64, ptr %.sroa.2.0..sroa_idx.i90, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i92 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i91, i64 %.sroa.6156.0.copyload) ; 2 uses
  %i.am = icmp eq i64 %.sroa.speculated.i.i.i92, 0
  br i1 %i.am, label %.thread.i.i.i101, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93: ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i94 = load ptr, ptr %.010.i.i.i, align 8, !tbaa !355
  %i.an = call i32 @memcmp(ptr noundef %.sroa.0154.0.copyload, ptr noundef %.sroa.0.0.copyload.i94, i64 noundef %.sroa.speculated.i.i.i92) #34
  %.fr.i.i.i96 = freeze i32 %i.an                 ; 2 uses
  %.not.not.i.i.i97 = icmp eq i32 %.fr.i.i.i96, 0
  br i1 %.not.not.i.i.i97, label %.thread.i.i.i101, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102

.thread.i.i.i101:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93, %.lr.ph.i.i
  %i.ao = icmp ult i64 %.sroa.6156.0.copyload, %.sroa.2.0.copyload.i91
  br i1 %i.ao, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93
  %i.ap = icmp slt i32 %.fr.i.i.i96, 0
  br i1 %i.ap, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i.preheader:                         ; preds = %.thread.i.i.i101, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102
  br label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i14.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87 ], [ %.010.i.i.i, %.lr.ph.i.i14.i.preheader ] ; 6 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87 ], [ %.08.i.i, %.lr.ph.i.i14.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i15.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i75 = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16
  %.sroa.2.0.copyload.i76 = load i64, ptr %.sroa.2.0..sroa_idx.i75, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i77 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i76, i64 %.sroa.6156.0.copyload) ; 2 uses
  %i.aq = icmp eq i64 %.sroa.speculated.i.i.i77, 0
  br i1 %i.aq, label %.thread.i.i.i86, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78: ; preds = %.lr.ph.i.i14.i
  %.sroa.0.0.copyload.i79 = load ptr, ptr %.0.i.i17.i, align 8, !tbaa !355
  %i.ar = call i32 @memcmp(ptr noundef %.sroa.0154.0.copyload, ptr noundef %.sroa.0.0.copyload.i79, i64 noundef %.sroa.speculated.i.i.i77) #34
  %.fr.i.i.i81 = freeze i32 %i.ar                 ; 2 uses
  %.not.not.i.i.i82 = icmp eq i32 %.fr.i.i.i81, 0
  %.inv.i.i.i83 = icmp sgt i32 %.fr.i.i.i81, -1
  %spec.select.i.i.i84 = select i1 %.inv.i.i.i83, i32 1, i32 -1
  br i1 %.not.not.i.i.i82, label %.thread.i.i.i86, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87

.thread.i.i.i86:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78, %.lr.ph.i.i14.i
  %i.as = icmp ult i64 %.sroa.6156.0.copyload, %.sroa.2.0.copyload.i76
  br i1 %i.as, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87: ; preds = %.thread.i.i.i86, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78
  %.1.i.i.i85 = phi i32 [ %spec.select.i.i.i84, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78 ], [ -1, %.thread.i.i.i86 ]
  %i.at = icmp slt i32 %.1.i.i.i85, 0
  br i1 %i.at, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i: ; preds = %.thread.i.i.i86, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87, %.thread.i.i.i101, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102 ], [ %.08.i.i, %.thread.i.i.i101 ], [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87 ], [ %.012.i.i15.i, %.thread.i.i.i86 ] ; 2 uses
  store ptr %.sroa.0154.0.copyload, ptr %.09.lcssa.i.i12.i, align 8, !tbaa !355
  %.sroa.6156.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store <2 x i64> %i.al, ptr %.sroa.6156.0..09.lcssa.i.i12.i.sroa_idx, align 8, !tbaa !340
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.au, %i.q
  br i1 %.not.i13.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !95

bb.i:                                             ; preds = %bb.c
  %.not18.i.i = icmp eq i32 %i.n, 1
  br i1 %.not18.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.i
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.2.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.m
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.m ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.m ], [ %i.p, %.lr.ph.i19.i.preheader ] ; 5 uses
  %.sroa.22.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.22.0.copyload.i59 = load i64, ptr %.sroa.22.0..sroa_idx.i58, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i61 = load i64, ptr %.sroa.2.0..sroa_idx.i60, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i62 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i61, i64 %.sroa.22.0.copyload.i59) ; 2 uses
  %i.av = icmp eq i64 %.sroa.speculated.i.i.i62, 0
  br i1 %i.av, label %.thread.i.i.i71, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63: ; preds = %.lr.ph.i19.i
  %.sroa.0.0.copyload.i64 = load ptr, ptr %i.p, align 8, !tbaa !355
  %.sroa.01.0.copyload.i65 = load ptr, ptr %.020.i20.i, align 8, !tbaa !355 ; 2 uses
  %i.aw = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i65, ptr noundef %.sroa.0.0.copyload.i64, i64 noundef %.sroa.speculated.i.i.i62) #34
  %.fr.i.i.i66 = freeze i32 %i.aw                 ; 2 uses
  %.not.not.i.i.i67 = icmp eq i32 %.fr.i.i.i66, 0
  br i1 %.not.not.i.i.i67, label %.thread.i.i.i71, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72

.thread.i.i.i71:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63, %.lr.ph.i19.i
  %i.ax = icmp ult i64 %.sroa.22.0.copyload.i59, %.sroa.2.0.copyload.i61
  br i1 %i.ax, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179, label %.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge

.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge: ; preds = %.thread.i.i.i71
  %.sroa.0160.0.copyload.pre = load ptr, ptr %.020.i20.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63
  %i.ay = icmp slt i32 %.fr.i.i.i66, 0
  br i1 %i.ay, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179: ; preds = %.thread.i.i.i71, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %.020.i20.i, i64 24, i1 false), !tbaa.struct !974
  %i.az = ptrtoint ptr %.020.i20.i to i64
  %i.ba = sub i64 %i.az, %i.u                     ; 4 uses
  %i.bb = icmp sgt i64 %i.ba, 24
  br i1 %i.bb, label %bb.j, label %bb.k, !prof !425

bb.j:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 48
  %.neg25.i31.i = udiv exact i64 %i.ba, 24
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %i.bd = getelementptr inbounds [24 x i8], ptr %i.bc, i64 %.neg25.neg.i32.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ba, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.k:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179
  %i.be = icmp eq i64 %i.ba, 24
  br i1 %i.be, label %bb.l, label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.m

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread: ; preds = %.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72
  %.sroa.0160.0.copyload = phi ptr [ %.sroa.0160.0.copyload.pre, %.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge ], [ %.sroa.01.0.copyload.i65, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72 ] ; 3 uses
  %.sroa.8164.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16
  %.sroa.8164.0.copyload = load i64, ptr %.sroa.8164.0..020.i20.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %.sroa.2.0.copyload.i46 = load i64, ptr %.sroa.2.0..sroa_idx.i45, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i47 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i46, i64 %.sroa.22.0.copyload.i59) ; 2 uses
  %i.bg = icmp eq i64 %.sroa.speculated.i.i.i47, 0
  br i1 %i.bg, label %.thread.i.i.i56, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread
  %.sroa.0.0.copyload.i49 = load ptr, ptr %.pn19.i21.i, align 8, !tbaa !355
  %i.bh = call i32 @memcmp(ptr noundef %.sroa.0160.0.copyload, ptr noundef %.sroa.0.0.copyload.i49, i64 noundef %.sroa.speculated.i.i.i47) #34
  %.fr.i.i.i51 = freeze i32 %i.bh                 ; 2 uses
  %.not.not.i.i.i52 = icmp eq i32 %.fr.i.i.i51, 0
  br i1 %.not.not.i.i.i52, label %.thread.i.i.i56, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57

.thread.i.i.i56:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread
  %i.bi = icmp ult i64 %.sroa.22.0.copyload.i59, %.sroa.2.0.copyload.i46
  br i1 %i.bi, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48
  %i.bj = icmp slt i32 %.fr.i.i.i51, 0
  br i1 %i.bj, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i.preheader:                         ; preds = %.thread.i.i.i56, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.pn19.i21.i, %.lr.ph.i.i26.i.preheader ] ; 6 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.020.i20.i, %.lr.ph.i.i26.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i27.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i40 = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16
  %.sroa.2.0.copyload.i41 = load i64, ptr %.sroa.2.0..sroa_idx.i40, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i41, i64 %.sroa.22.0.copyload.i59) ; 2 uses
  %i.bk = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.bk, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i26.i
  %.sroa.0.0.copyload.i42 = load ptr, ptr %.0.i.i29.i, align 8, !tbaa !355
  %i.bl = call i32 @memcmp(ptr noundef %.sroa.0160.0.copyload, ptr noundef %.sroa.0.0.copyload.i42, i64 noundef %.sroa.speculated.i.i.i) #34
  %.fr.i.i.i = freeze i32 %i.bl                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %.inv.i.i.i = icmp sgt i32 %.fr.i.i.i, -1
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %.lr.ph.i.i26.i
  %i.bm = icmp ult i64 %.sroa.22.0.copyload.i59, %.sroa.2.0.copyload.i41
  br i1 %i.bm, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit: ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i ], [ -1, %.thread.i.i.i ]
  %i.bn = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.bn, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i: ; preds = %.thread.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, %.thread.i.i.i56, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57 ], [ %.020.i20.i, %.thread.i.i.i56 ], [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.012.i.i27.i, %.thread.i.i.i ] ; 3 uses
  store ptr %.sroa.0160.0.copyload, ptr %.09.lcssa.i.i23.i, align 8, !tbaa !355
  %.sroa.6162.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i64 %.sroa.22.0.copyload.i59, ptr %.sroa.6162.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8164.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 16
  store i64 %.sroa.8164.0.copyload, ptr %.sroa.8164.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 24 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.q
  br i1 %.not.i25.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !94

_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, %bb.i, %._crit_edge
  %i.bo = zext i32 %3 to i64
  %i.bp = load ptr, ptr %12, align 8, !tbaa !312
  %i.bq = load i32, ptr %i.c, align 8, !tbaa !313
  %i.br = zext i32 %i.bq to i64
  %i.bs = load ptr, ptr %0, align 8, !tbaa !250
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 312
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.bo, ptr %i.bp, i64 %i.br) #31
  %i.bv = load ptr, ptr %12, align 8, !tbaa !312  ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.b
  br i1 %i.bw, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit
  call void @free(ptr noundef %i.bv) #31
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit: ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  ret void

bb.o:                                             ; preds = %.lr.ph, %bb.x
  %.0194 = phi ptr [ %4, %.lr.ph ], [ %i.cx, %bb.x ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0194, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !828 ; 10 uses
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = and i32 %i.by, %6
  %.not35 = icmp eq i32 %i.ca, 0
  br i1 %.not35, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cb = and i32 %i.by, %7
  %.not36 = icmp eq i32 %i.cb, 0
  br i1 %.not36, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cc = and i32 %i.by, %8
  %.not37 = icmp eq i32 %i.cc, 0
  %spec.select = select i1 %.not37, i32 0, i32 %8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.034 = phi i32 [ %spec.select, %bb.r ], [ %6, %bb.p ], [ %7, %bb.q ] ; 2 uses
  %i.cd = and i32 %.034, %i.by
  %.not38 = icmp eq i32 %i.cd, 0
  br i1 %.not38, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ce = and i32 %i.by, %3
  %i.cf = icmp eq i32 %i.ce, %i.by
  br i1 %i.cf, label %bb.u, label %bb.x

.critedge:                                        ; preds = %bb.s
  %i.cg = and i32 %.034, %3
  %i.ch = icmp eq i32 %i.cg, %i.by
  br i1 %i.ch, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.critedge, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.ci = load i16, ptr %.0194, align 4, !tbaa !389
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.0194, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0194, i64 4
  %i.cm = load i8, ptr %i.cl, align 4, !tbaa !270
  %i.cn = zext i8 %i.cm to i64                    ; 2 uses
  store ptr %i.ck, ptr %13, align 8
  store i64 %i.cn, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 %i.by, ptr %i.a, align 4, !tbaa !396
  %i.co = load i32, ptr %i.c, align 8, !tbaa !313 ; 3 uses
  %i.cp = load i32, ptr %i.d, align 4, !tbaa !314
  %.not.i = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i, label %bb.w, label %bb.v, !prof !425

bb.v:                                             ; preds = %bb.u
  %i.cq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE18growAndEmplaceBackIJNS_9StringRefEjEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.cr = zext i32 %i.co to i64
  %i.cs = load ptr, ptr %12, align 8, !tbaa !312
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %i.cr ; 3 uses
  store ptr %i.ck, ptr %i.ct, align 8, !tbaa !355
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %i.cn, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !340
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = zext i32 %i.by to i64
  store i64 %i.cv, ptr %i.cu, align 8, !tbaa !1098
  %i.cw = add nuw i32 %i.co, 1
  store i32 %i.cw, ptr %i.c, align 8, !tbaa !313
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %.critedge, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit, %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %.0194, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.cx, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %bb.o
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE21printSymbolOtherFieldERKNS2_12Elf_Sym_ImplIS5_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1160) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1266", align 8 ; 12 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !337, !nonnull !248, !align !338
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !271
  %i.f = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30, !noalias !9463 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL16ElfSymOtherFlags, i64 12), ptr %i.g, align 8, !tbaa !387, !noalias !9463
  store i64 ptrtoint (ptr @_ZL16ElfSymOtherFlags to i64), ptr %i.f, align 8, !noalias !9463
  %i.h = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30, !noalias !9463 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL16ElfSymOtherFlags, i64 24), ptr %i.i, align 8, !tbaa !387, !noalias !9463
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !9463
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 5 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 16) #32, !noalias !9463
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %.0.copyload.i.i.i.i = load i16, ptr %i.l, align 1, !noalias !9463
  switch i16 %.0.copyload.i.i.i.i, label %.lr.ph [
    i16 8, label %bb.b
    i16 183, label %.preheader25.i
    i16 243, label %.preheader27.i
  ]

.preheader27.i:                                   ; preds = %bb.a
  store ptr @_ZL21ElfRISCVSymOtherFlags, ptr %i.j, align 8, !tbaa !387, !noalias !9463
  br label %.lr.ph

.preheader25.i:                                   ; preds = %bb.a
  store ptr @_ZL23ElfAArch64SymOtherFlags, ptr %i.j, align 8, !tbaa !387, !noalias !9463
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.n = load i8, ptr %i.m, align 1, !tbaa !770, !noalias !9463
  %i.o = icmp ugt i8 %i.n, -17
  br i1 %i.o, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.b
  store ptr @_ZL22ElfMips16SymOtherFlags, ptr %i.j, align 8, !tbaa !387, !noalias !9463
  %i.p = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !9463 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL22ElfMips16SymOtherFlags, i64 12), ptr %i.q, align 8, !tbaa !387, !noalias !9463
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !9463
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #32, !noalias !9463
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL22ElfMips16SymOtherFlags, i64 24), ptr %i.r, align 8, !tbaa !387, !noalias !9463
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  store ptr @_ZL20ElfMipsSymOtherFlags, ptr %i.j, align 8, !tbaa !387, !noalias !9463
  %i.u = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !9463 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL20ElfMipsSymOtherFlags, i64 12), ptr %i.v, align 8, !tbaa !387, !noalias !9463
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !9463
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #32, !noalias !9463
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL20ElfMipsSymOtherFlags, i64 24), ptr %i.w, align 8, !tbaa !387, !noalias !9463
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL20ElfMipsSymOtherFlags, i64 36), ptr %i.y, align 8, !tbaa !387, !noalias !9463
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader27.i, %.preheader25.i, %bb.c, %.preheader.i, %bb.a
  %.sroa.031.0 = phi ptr [ %i.h, %bb.a ], [ %i.p, %.preheader.i ], [ %i.h, %.preheader27.i ], [ %i.u, %bb.c ], [ %i.h, %.preheader25.i ] ; 3 uses
  %.sroa.8.0 = phi ptr [ %i.j, %bb.a ], [ %i.t, %.preheader.i ], [ %i.k, %.preheader27.i ], [ %i.z, %bb.c ], [ %i.k, %.preheader25.i ]
  %.sroa.18.0 = phi ptr [ %i.k, %bb.a ], [ %i.s, %.preheader.i ], [ %i.k, %.preheader27.i ], [ %i.x, %bb.c ], [ %i.k, %.preheader25.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
end_hunk_4
begin_hunk_5_@_ZNK12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE18printSymbolSectionERKNS2_12Elf_Sym_ImplIS5_EEjNS2_10DataRegionINS1_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEE:bb.a
  %i.co = load i32, ptr %8, align 8, !tbaa !396
  %i.cp = zext i32 %i.co to i64
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !250
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 344
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(44) %i.cn, ptr nonnull @.str.1084, i64 7, ptr nonnull @.str.114, i64 3, i64 %i.cp) #31, !inline_history !107
  br label %bb.r

bb.q:                                             ; preds = %_ZNK12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE20getSymbolSectionNameERKNS2_12Elf_Sym_ImplIS5_EEj.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1109, !nonnull !248, !align !338 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %10, align 8, !tbaa !355
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !340
  %i.cv = load i32, ptr %8, align 8, !tbaa !396
  %i.cw = zext i32 %i.cv to i64
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !250
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 344
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(44) %i.cu, ptr nonnull @.str.1084, i64 7, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 %i.cw) #31, !inline_history !107
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4llvm5ErrorD2Ev.exit11
  %i.da = load i8, ptr %i.bb, align 8
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.s, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.dc = load ptr, ptr %10, align 8, !tbaa !346  ; 3 uses
  %.not.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.s
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !250
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.dc) #31, !inline_history !1
  br label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit:       ; preds = %bb.r, %bb.s, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit
  %i.dg = load i8, ptr %i.s, align 8
  %i.dh = trunc i8 %i.dg to i1
  br i1 %i.dh, label %bb.u, label %_ZN4llvm8ExpectedIjED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.di = load ptr, ptr %8, align 8, !tbaa !346   ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.di, null
  br i1 %.not.i.i19, label %_ZN4llvm8ExpectedIjED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i20

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i20: ; preds = %bb.u
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !250
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.di) #31, !inline_history !47
  br label %_ZN4llvm8ExpectedIjED2Ev.exit

_ZN4llvm8ExpectedIjED2Ev.exit:                    ; preds = %bb.t, %bb.u, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.v

bb.v:                                             ; preds = %.sink.split.i, %_ZN4llvm8ExpectedIjED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsIhEEvNS_9StringRefET_RNS_15SmallVectorImplINS_9FlagEntryEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i8 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.llvm::FlagEntry", align 8  ; 4 uses
  %6 = alloca %"struct.llvm::FlagEntry", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !313  ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.c, 24
  %i.d = load ptr, ptr %4, align 8, !tbaa !312    ; 19 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i ; 3 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = xor i64 %i.g, 126
  tail call void @_ZSt16__introsort_loopIPN4llvm9FlagEntryElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef %i.d, ptr noundef nonnull %i.e, i64 noundef %i.h, ptr nonnull @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_)
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = icmp ugt i32 %i.b, 16
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %scevgep.i = getelementptr i8, ptr %i.d, i64 24
  %.sroa.2.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.020.i.idx.i = phi i64 [ 24, %bb.c ], [ %.020.i.add.i, %bb.g ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.d, %bb.c ], [ %.020.i.ptr.i, %bb.g ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.020.i.idx.i ; 9 uses
  %.sroa.22.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %.sroa.22.0.copyload.i97 = load i64, ptr %.sroa.22.0..sroa_idx.i96, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i99 = load i64, ptr %.sroa.2.0..sroa_idx.i98, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i100 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i99, i64 %.sroa.22.0.copyload.i97) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i100, 0
  br i1 %i.k, label %.thread.i.i.i109, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i101

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i101: ; preds = %bb.d
  %.sroa.0.0.copyload.i102 = load ptr, ptr %i.d, align 8, !tbaa !355
  %.sroa.01.0.copyload.i103 = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355 ; 2 uses
  %i.l = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i103, ptr noundef %.sroa.0.0.copyload.i102, i64 noundef %.sroa.speculated.i.i.i100) #34
  %.fr.i.i.i104 = freeze i32 %i.l                 ; 2 uses
  %.not.not.i.i.i105 = icmp eq i32 %.fr.i.i.i104, 0
  br i1 %.not.not.i.i.i105, label %.thread.i.i.i109, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110

.thread.i.i.i109:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i101, %bb.d
  %i.m = icmp ult i64 %.sroa.22.0.copyload.i97, %.sroa.2.0.copyload.i99
  br i1 %i.m, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110.thread128, label %.thread.i.i.i109._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110.thread_crit_edge

.thread.i.i.i109._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110.thread_crit_edge: ; preds = %.thread.i.i.i109
  %.sroa.0111.0.copyload.pre = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i101
  %i.n = icmp slt i32 %.fr.i.i.i104, 0
  br i1 %i.n, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110.thread128, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110.thread128: ; preds = %.thread.i.i.i109, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.ptr.i, i64 24, i1 false), !tbaa.struct !974
  %i.o = icmp samesign ugt i64 %.020.i.idx.i, 24
  br i1 %i.o, label %bb.e, label %bb.f, !prof !425

bb.e:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110.thread128
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

bb.f:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110.thread128
  %i.p = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.g

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110.thread: ; preds = %.thread.i.i.i109._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110
  %.sroa.0111.0.copyload = phi ptr [ %.sroa.0111.0.copyload.pre, %.thread.i.i.i109._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110.thread_crit_edge ], [ %.sroa.01.0.copyload.i103, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110 ] ; 3 uses
  %.sroa.8.0..020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..020.i.ptr.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %.sroa.2.0.copyload.i84 = load i64, ptr %.sroa.2.0..sroa_idx.i83, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i85 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i84, i64 %.sroa.22.0.copyload.i97) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i85, 0
  br i1 %i.q, label %.thread.i.i.i94, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i86

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i86: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110.thread
  %.sroa.0.0.copyload.i87 = load ptr, ptr %.pn19.i.i, align 8, !tbaa !355
  %i.r = tail call i32 @memcmp(ptr noundef %.sroa.0111.0.copyload, ptr noundef %.sroa.0.0.copyload.i87, i64 noundef %.sroa.speculated.i.i.i85) #34
  %.fr.i.i.i89 = freeze i32 %i.r                  ; 2 uses
  %.not.not.i.i.i90 = icmp eq i32 %.fr.i.i.i89, 0
  br i1 %.not.not.i.i.i90, label %.thread.i.i.i94, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit95

.thread.i.i.i94:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i86, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit110.thread
  %i.s = icmp ult i64 %.sroa.22.0.copyload.i97, %.sroa.2.0.copyload.i84
  br i1 %i.s, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit95: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i86
  %i.t = icmp slt i32 %.fr.i.i.i89, 0
  br i1 %i.t, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.thread.i.i.i94, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit95
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit80
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit80 ], [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit80 ], [ %.020.i.ptr.i, %.lr.ph.i.i.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i68 = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -16
  %.sroa.2.0.copyload.i69 = load i64, ptr %.sroa.2.0..sroa_idx.i68, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i70 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i69, i64 %.sroa.22.0.copyload.i97) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i70, 0
  br i1 %i.u, label %.thread.i.i.i79, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i71

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i71: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i72 = load ptr, ptr %.0.i.i.i, align 8, !tbaa !355
  %i.v = tail call i32 @memcmp(ptr noundef %.sroa.0111.0.copyload, ptr noundef %.sroa.0.0.copyload.i72, i64 noundef %.sroa.speculated.i.i.i70) #34
  %.fr.i.i.i74 = freeze i32 %i.v                  ; 2 uses
  %.not.not.i.i.i75 = icmp eq i32 %.fr.i.i.i74, 0
  %.inv.i.i.i76 = icmp sgt i32 %.fr.i.i.i74, -1
  %spec.select.i.i.i77 = select i1 %.inv.i.i.i76, i32 1, i32 -1
  br i1 %.not.not.i.i.i75, label %.thread.i.i.i79, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit80

.thread.i.i.i79:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i71, %.lr.ph.i.i.i
  %i.w = icmp ult i64 %.sroa.22.0.copyload.i97, %.sroa.2.0.copyload.i69
  br i1 %i.w, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit80, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit80: ; preds = %.thread.i.i.i79, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i71
  %.1.i.i.i78 = phi i32 [ %spec.select.i.i.i77, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i71 ], [ -1, %.thread.i.i.i79 ]
  %i.x = icmp slt i32 %.1.i.i.i78, 0
  br i1 %i.x, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i: ; preds = %.thread.i.i.i79, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit80, %.thread.i.i.i94, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit95
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit95 ], [ %.020.i.ptr.i, %.thread.i.i.i94 ], [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit80 ], [ %.012.i.i.i, %.thread.i.i.i79 ] ; 3 uses
  store ptr %.sroa.0111.0.copyload, ptr %.09.lcssa.i.i.i, align 8, !tbaa !355
  %.sroa.6.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i97, ptr %.sroa.6.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 24 ; 2 uses
  %.not.i.i = icmp eq i64 %.020.i.add.i, 384
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, label %bb.d, !llvm.loop !94

_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.ai, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i ], [ %i.y, %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i ] ; 8 uses
  %.sroa.0115.0.copyload = load ptr, ptr %.08.i.i, align 8, !tbaa !355 ; 3 uses
  %.sroa.6117.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %i.z = load <2 x i64>, ptr %.sroa.6117.0..08.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.6117.0.copyload = load i64, ptr %.sroa.6117.0..08.i.i.sroa_idx, align 8, !tbaa !340 ; 4 uses
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i53 = getelementptr inbounds i8, ptr %.08.i.i, i64 -16
  %.sroa.2.0.copyload.i54 = load i64, ptr %.sroa.2.0..sroa_idx.i53, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i55 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i54, i64 %.sroa.6117.0.copyload) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i55, 0
  br i1 %i.aa, label %.thread.i.i.i64, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i56

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i56: ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i57 = load ptr, ptr %.010.i.i.i, align 8, !tbaa !355
  %i.ab = tail call i32 @memcmp(ptr noundef %.sroa.0115.0.copyload, ptr noundef %.sroa.0.0.copyload.i57, i64 noundef %.sroa.speculated.i.i.i55) #34
  %.fr.i.i.i59 = freeze i32 %i.ab                 ; 2 uses
  %.not.not.i.i.i60 = icmp eq i32 %.fr.i.i.i59, 0
  br i1 %.not.not.i.i.i60, label %.thread.i.i.i64, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit65

.thread.i.i.i64:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i56, %.lr.ph.i.i
  %i.ac = icmp ult i64 %.sroa.6117.0.copyload, %.sroa.2.0.copyload.i54
  br i1 %i.ac, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit65: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i56
  %i.ad = icmp slt i32 %.fr.i.i.i59, 0
  br i1 %i.ad, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i.preheader:                         ; preds = %.thread.i.i.i64, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit65
  br label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i14.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit50
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit50 ], [ %.010.i.i.i, %.lr.ph.i.i14.i.preheader ] ; 6 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit50 ], [ %.08.i.i, %.lr.ph.i.i14.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i15.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i38 = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16
  %.sroa.2.0.copyload.i39 = load i64, ptr %.sroa.2.0..sroa_idx.i38, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i40 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i39, i64 %.sroa.6117.0.copyload) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i40, 0
  br i1 %i.ae, label %.thread.i.i.i49, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i41

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i41: ; preds = %.lr.ph.i.i14.i
  %.sroa.0.0.copyload.i42 = load ptr, ptr %.0.i.i17.i, align 8, !tbaa !355
  %i.af = tail call i32 @memcmp(ptr noundef %.sroa.0115.0.copyload, ptr noundef %.sroa.0.0.copyload.i42, i64 noundef %.sroa.speculated.i.i.i40) #34
  %.fr.i.i.i44 = freeze i32 %i.af                 ; 2 uses
  %.not.not.i.i.i45 = icmp eq i32 %.fr.i.i.i44, 0
  %.inv.i.i.i46 = icmp sgt i32 %.fr.i.i.i44, -1
  %spec.select.i.i.i47 = select i1 %.inv.i.i.i46, i32 1, i32 -1
  br i1 %.not.not.i.i.i45, label %.thread.i.i.i49, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit50

.thread.i.i.i49:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i41, %.lr.ph.i.i14.i
  %i.ag = icmp ult i64 %.sroa.6117.0.copyload, %.sroa.2.0.copyload.i39
  br i1 %i.ag, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit50, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit50: ; preds = %.thread.i.i.i49, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i41
  %.1.i.i.i48 = phi i32 [ %spec.select.i.i.i47, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i41 ], [ -1, %.thread.i.i.i49 ]
  %i.ah = icmp slt i32 %.1.i.i.i48, 0
  br i1 %i.ah, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i: ; preds = %.thread.i.i.i49, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit50, %.thread.i.i.i64, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit65
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit65 ], [ %.08.i.i, %.thread.i.i.i64 ], [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit50 ], [ %.012.i.i15.i, %.thread.i.i.i49 ] ; 2 uses
  store ptr %.sroa.0115.0.copyload, ptr %.09.lcssa.i.i12.i, align 8, !tbaa !355
  %.sroa.6117.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store <2 x i64> %i.z, ptr %.sroa.6117.0..09.lcssa.i.i12.i.sroa_idx, align 8, !tbaa !340
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.ai, %i.e
  br i1 %.not.i13.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !95

bb.h:                                             ; preds = %bb.b
  %.not18.i.i = icmp eq i32 %i.b, 1
  br i1 %.not18.i.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.h
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.2.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.l
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.l ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.l ], [ %i.d, %.lr.ph.i19.i.preheader ] ; 5 uses
  %.sroa.22.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.22.0.copyload.i22 = load i64, ptr %.sroa.22.0..sroa_idx.i21, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i24 = load i64, ptr %.sroa.2.0..sroa_idx.i23, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i25 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i24, i64 %.sroa.22.0.copyload.i22) ; 2 uses
  %i.aj = icmp eq i64 %.sroa.speculated.i.i.i25, 0
  br i1 %i.aj, label %.thread.i.i.i34, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i26

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i26: ; preds = %.lr.ph.i19.i
  %.sroa.0.0.copyload.i27 = load ptr, ptr %i.d, align 8, !tbaa !355
  %.sroa.01.0.copyload.i28 = load ptr, ptr %.020.i20.i, align 8, !tbaa !355 ; 2 uses
  %i.ak = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i28, ptr noundef %.sroa.0.0.copyload.i27, i64 noundef %.sroa.speculated.i.i.i25) #34
  %.fr.i.i.i29 = freeze i32 %i.ak                 ; 2 uses
  %.not.not.i.i.i30 = icmp eq i32 %.fr.i.i.i29, 0
  br i1 %.not.not.i.i.i30, label %.thread.i.i.i34, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35

.thread.i.i.i34:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i26, %.lr.ph.i19.i
  %i.al = icmp ult i64 %.sroa.22.0.copyload.i22, %.sroa.2.0.copyload.i24
  br i1 %i.al, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35.thread140, label %.thread.i.i.i34._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35.thread_crit_edge

.thread.i.i.i34._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35.thread_crit_edge: ; preds = %.thread.i.i.i34
  %.sroa.0121.0.copyload.pre = load ptr, ptr %.020.i20.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i26
  %i.am = icmp slt i32 %.fr.i.i.i29, 0
  br i1 %i.am, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35.thread140, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35.thread140: ; preds = %.thread.i.i.i34, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.020.i20.i, i64 24, i1 false), !tbaa.struct !974
  %i.an = ptrtoint ptr %.020.i20.i to i64
  %i.ao = sub i64 %i.an, %i.i                     ; 4 uses
  %i.ap = icmp sgt i64 %i.ao, 24
  br i1 %i.ap, label %bb.i, label %bb.j, !prof !425

bb.i:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35.thread140
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 48
  %.neg25.i31.i = udiv exact i64 %i.ao, 24
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %i.ar = getelementptr inbounds [24 x i8], ptr %i.aq, i64 %.neg25.neg.i32.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.ao, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.j:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35.thread140
  %i.as = icmp eq i64 %i.ao, 24
  br i1 %i.as, label %bb.k, label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i: ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.l

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35.thread: ; preds = %.thread.i.i.i34._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35
  %.sroa.0121.0.copyload = phi ptr [ %.sroa.0121.0.copyload.pre, %.thread.i.i.i34._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35.thread_crit_edge ], [ %.sroa.01.0.copyload.i28, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35 ] ; 3 uses
  %.sroa.8125.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16
  %.sroa.8125.0.copyload = load i64, ptr %.sroa.8125.0..020.i20.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %.sroa.2.0.copyload.i9 = load i64, ptr %.sroa.2.0..sroa_idx.i8, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i10 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i9, i64 %.sroa.22.0.copyload.i22) ; 2 uses
  %i.au = icmp eq i64 %.sroa.speculated.i.i.i10, 0
  br i1 %i.au, label %.thread.i.i.i19, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i11

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i11: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35.thread
  %.sroa.0.0.copyload.i12 = load ptr, ptr %.pn19.i21.i, align 8, !tbaa !355
  %i.av = tail call i32 @memcmp(ptr noundef %.sroa.0121.0.copyload, ptr noundef %.sroa.0.0.copyload.i12, i64 noundef %.sroa.speculated.i.i.i10) #34
  %.fr.i.i.i14 = freeze i32 %i.av                 ; 2 uses
  %.not.not.i.i.i15 = icmp eq i32 %.fr.i.i.i14, 0
  br i1 %.not.not.i.i.i15, label %.thread.i.i.i19, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit20

.thread.i.i.i19:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i11, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit35.thread
  %i.aw = icmp ult i64 %.sroa.22.0.copyload.i22, %.sroa.2.0.copyload.i9
  br i1 %i.aw, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit20: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i11
  %i.ax = icmp slt i32 %.fr.i.i.i14, 0
  br i1 %i.ax, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i.preheader:                         ; preds = %.thread.i.i.i19, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit20
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.pn19.i21.i, %.lr.ph.i.i26.i.preheader ] ; 6 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.020.i20.i, %.lr.ph.i.i26.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i27.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i, i64 %.sroa.22.0.copyload.i22) ; 2 uses
  %i.ay = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.ay, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i26.i
  %.sroa.0.0.copyload.i = load ptr, ptr %.0.i.i29.i, align 8, !tbaa !355
  %i.az = tail call i32 @memcmp(ptr noundef %.sroa.0121.0.copyload, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.speculated.i.i.i) #34
  %.fr.i.i.i = freeze i32 %i.az                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %.inv.i.i.i = icmp sgt i32 %.fr.i.i.i, -1
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %.lr.ph.i.i26.i
  %i.ba = icmp ult i64 %.sroa.22.0.copyload.i22, %.sroa.2.0.copyload.i
  br i1 %i.ba, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit: ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i ], [ -1, %.thread.i.i.i ]
  %i.bb = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.bb, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i: ; preds = %.thread.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, %.thread.i.i.i19, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit20
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit20 ], [ %.020.i20.i, %.thread.i.i.i19 ], [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.012.i.i27.i, %.thread.i.i.i ] ; 3 uses
  store ptr %.sroa.0121.0.copyload, ptr %.09.lcssa.i.i23.i, align 8, !tbaa !355
  %.sroa.6123.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i64 %.sroa.22.0.copyload.i22, ptr %.sroa.6123.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8125.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 16
  store i64 %.sroa.8125.0.copyload, ptr %.sroa.8125.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  br label %bb.l

bb.l:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 24 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.e
  br i1 %.not.i25.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !94

_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit: ; preds = %bb.l, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, %bb.h, %bb.a
  %i.bc = zext i8 %3 to i64
  %i.bd = load ptr, ptr %4, align 8, !tbaa !312
  %i.be = load i32, ptr %i.a, align 8, !tbaa !313
  %i.bf = zext i32 %i.be to i64
  %i.bg = load ptr, ptr %0, align 8, !tbaa !250
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 312
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.bc, ptr %i.bd, i64 %i.bf) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEjLj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEESA_SA_SA_NS_8ArrayRefINS_9FlagEntryEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i32 %3, ptr %4, i64 %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef byval(%"class.llvm::ArrayRef.1044") align 8 %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %10 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %11 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SmallVector.1054", align 8 ; 13 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %.sroa.021.0.copyload = load ptr, ptr %9, align 8, !tbaa !1094
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.222.0.copyload = load i64, ptr %.sroa.222.0..sroa_idx, align 8, !tbaa !340 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.b, ptr %12, align 8, !tbaa !312
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  store i32 0, ptr %i.c, align 8, !tbaa !313
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 10, ptr %i.d, align 4, !tbaa !314
  %.idx.i = mul nuw nsw i64 %.sroa.222.0.copyload, 24
  %i.e = icmp ugt i64 %.sroa.222.0.copyload, 10
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(256) %12, ptr noundef nonnull %i.b, i64 noundef %.sroa.222.0.copyload, i64 noundef 24) #31
  %.pre8.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !313
  %i.f = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %12, align 8, !tbaa !312
  br label %bb.b

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.222.0.copyload, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i
  %i.g = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ %i.b, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.f, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 8 %.sroa.021.0.copyload, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !313
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %bb.b
  %i.i = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.j = trunc i64 %.sroa.222.0.copyload to i32
  %i.k = add i32 %i.i, %i.j                       ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !313
  %.idx = shl nuw nsw i64 %5, 3
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.not195 = icmp eq i64 %5, 0
  br i1 %.not195, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre198 = load i32, ptr %i.c, align 8, !tbaa !313
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.n = phi i32 [ %.pre198, %._crit_edge.loopexit ], [ %i.k, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %.idx.i37 = mul nuw nsw i64 %i.o, 24
  %i.p = load ptr, ptr %12, align 8, !tbaa !312   ; 19 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i37 ; 3 uses
  %i.r = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = xor i64 %i.s, 126
  call void @_ZSt16__introsort_loopIPN4llvm9FlagEntryElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef %i.p, ptr noundef nonnull %i.q, i64 noundef %i.t, ptr nonnull @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_)
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = icmp ugt i32 %i.n, 16
  br i1 %i.v, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %scevgep.i = getelementptr i8, ptr %i.p, i64 24
  %.sroa.2.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.020.i.idx.i = phi i64 [ 24, %bb.d ], [ %.020.i.add.i, %bb.h ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.p, %bb.d ], [ %.020.i.ptr.i, %bb.h ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.020.i.idx.i ; 9 uses
  %.sroa.22.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %.sroa.22.0.copyload.i133 = load i64, ptr %.sroa.22.0..sroa_idx.i132, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i135 = load i64, ptr %.sroa.2.0..sroa_idx.i134, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i136 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i135, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.w = icmp eq i64 %.sroa.speculated.i.i.i136, 0
  br i1 %i.w, label %.thread.i.i.i145, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137: ; preds = %bb.e
  %.sroa.0.0.copyload.i138 = load ptr, ptr %i.p, align 8, !tbaa !355
  %.sroa.01.0.copyload.i139 = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355 ; 2 uses
  %i.x = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i139, ptr noundef %.sroa.0.0.copyload.i138, i64 noundef %.sroa.speculated.i.i.i136) #34
  %.fr.i.i.i140 = freeze i32 %i.x                 ; 2 uses
  %.not.not.i.i.i141 = icmp eq i32 %.fr.i.i.i140, 0
  br i1 %.not.not.i.i.i141, label %.thread.i.i.i145, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146

.thread.i.i.i145:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137, %bb.e
  %i.y = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i135
  br i1 %i.y, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169, label %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge

.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge: ; preds = %.thread.i.i.i145
  %.sroa.0152.0.copyload.pre = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137
  %i.z = icmp slt i32 %.fr.i.i.i140, 0
  br i1 %i.z, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169: ; preds = %.thread.i.i.i145, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.ptr.i, i64 24, i1 false), !tbaa.struct !974
  %i.aa = icmp samesign ugt i64 %.020.i.idx.i, 24
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !425

bb.f:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

bb.g:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.h

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread: ; preds = %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146
  %.sroa.0152.0.copyload = phi ptr [ %.sroa.0152.0.copyload.pre, %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge ], [ %.sroa.01.0.copyload.i139, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146 ] ; 3 uses
  %.sroa.8.0..020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..020.i.ptr.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %.sroa.2.0.copyload.i120 = load i64, ptr %.sroa.2.0..sroa_idx.i119, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i121 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i120, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i121, 0
  br i1 %i.ac, label %.thread.i.i.i130, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread
  %.sroa.0.0.copyload.i123 = load ptr, ptr %.pn19.i.i, align 8, !tbaa !355
  %i.ad = call i32 @memcmp(ptr noundef %.sroa.0152.0.copyload, ptr noundef %.sroa.0.0.copyload.i123, i64 noundef %.sroa.speculated.i.i.i121) #34
  %.fr.i.i.i125 = freeze i32 %i.ad                ; 2 uses
  %.not.not.i.i.i126 = icmp eq i32 %.fr.i.i.i125, 0
  br i1 %.not.not.i.i.i126, label %.thread.i.i.i130, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131

.thread.i.i.i130:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread
  %i.ae = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i120
  br i1 %i.ae, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122
  %i.af = icmp slt i32 %.fr.i.i.i125, 0
  br i1 %i.af, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.thread.i.i.i130, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.020.i.ptr.i, %.lr.ph.i.i.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i104 = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -16
  %.sroa.2.0.copyload.i105 = load i64, ptr %.sroa.2.0..sroa_idx.i104, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i106 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i105, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.ag = icmp eq i64 %.sroa.speculated.i.i.i106, 0
  br i1 %i.ag, label %.thread.i.i.i115, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i108 = load ptr, ptr %.0.i.i.i, align 8, !tbaa !355
  %i.ah = call i32 @memcmp(ptr noundef %.sroa.0152.0.copyload, ptr noundef %.sroa.0.0.copyload.i108, i64 noundef %.sroa.speculated.i.i.i106) #34
  %.fr.i.i.i110 = freeze i32 %i.ah                ; 2 uses
  %.not.not.i.i.i111 = icmp eq i32 %.fr.i.i.i110, 0
  %.inv.i.i.i112 = icmp sgt i32 %.fr.i.i.i110, -1
  %spec.select.i.i.i113 = select i1 %.inv.i.i.i112, i32 1, i32 -1
  br i1 %.not.not.i.i.i111, label %.thread.i.i.i115, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116

.thread.i.i.i115:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107, %.lr.ph.i.i.i
  %i.ai = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i105
  br i1 %i.ai, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116: ; preds = %.thread.i.i.i115, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107
  %.1.i.i.i114 = phi i32 [ %spec.select.i.i.i113, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107 ], [ -1, %.thread.i.i.i115 ]
  %i.aj = icmp slt i32 %.1.i.i.i114, 0
  br i1 %i.aj, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i: ; preds = %.thread.i.i.i115, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116, %.thread.i.i.i130, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131 ], [ %.020.i.ptr.i, %.thread.i.i.i130 ], [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.012.i.i.i, %.thread.i.i.i115 ] ; 3 uses
  store ptr %.sroa.0152.0.copyload, ptr %.09.lcssa.i.i.i, align 8, !tbaa !355
  %.sroa.6.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i133, ptr %.sroa.6.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 24 ; 2 uses
  %.not.i.i = icmp eq i64 %.020.i.add.i, 384
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, label %bb.e, !llvm.loop !94

_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i: ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 384
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.au, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i ], [ %i.ak, %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i ] ; 8 uses
  %.sroa.0156.0.copyload = load ptr, ptr %.08.i.i, align 8, !tbaa !355 ; 3 uses
  %.sroa.6158.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %i.al = load <2 x i64>, ptr %.sroa.6158.0..08.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.6158.0.copyload = load i64, ptr %.sroa.6158.0..08.i.i.sroa_idx, align 8, !tbaa !340 ; 4 uses
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i89 = getelementptr inbounds i8, ptr %.08.i.i, i64 -16
  %.sroa.2.0.copyload.i90 = load i64, ptr %.sroa.2.0..sroa_idx.i89, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i91 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i90, i64 %.sroa.6158.0.copyload) ; 2 uses
  %i.am = icmp eq i64 %.sroa.speculated.i.i.i91, 0
  br i1 %i.am, label %.thread.i.i.i100, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92: ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i93 = load ptr, ptr %.010.i.i.i, align 8, !tbaa !355
  %i.an = call i32 @memcmp(ptr noundef %.sroa.0156.0.copyload, ptr noundef %.sroa.0.0.copyload.i93, i64 noundef %.sroa.speculated.i.i.i91) #34
  %.fr.i.i.i95 = freeze i32 %i.an                 ; 2 uses
  %.not.not.i.i.i96 = icmp eq i32 %.fr.i.i.i95, 0
  br i1 %.not.not.i.i.i96, label %.thread.i.i.i100, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101

.thread.i.i.i100:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92, %.lr.ph.i.i
  %i.ao = icmp ult i64 %.sroa.6158.0.copyload, %.sroa.2.0.copyload.i90
  br i1 %i.ao, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92
  %i.ap = icmp slt i32 %.fr.i.i.i95, 0
  br i1 %i.ap, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i.preheader:                         ; preds = %.thread.i.i.i100, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101
  br label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i14.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.010.i.i.i, %.lr.ph.i.i14.i.preheader ] ; 6 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.08.i.i, %.lr.ph.i.i14.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i15.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i74 = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16
  %.sroa.2.0.copyload.i75 = load i64, ptr %.sroa.2.0..sroa_idx.i74, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i76 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i75, i64 %.sroa.6158.0.copyload) ; 2 uses
  %i.aq = icmp eq i64 %.sroa.speculated.i.i.i76, 0
  br i1 %i.aq, label %.thread.i.i.i85, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77: ; preds = %.lr.ph.i.i14.i
  %.sroa.0.0.copyload.i78 = load ptr, ptr %.0.i.i17.i, align 8, !tbaa !355
  %i.ar = call i32 @memcmp(ptr noundef %.sroa.0156.0.copyload, ptr noundef %.sroa.0.0.copyload.i78, i64 noundef %.sroa.speculated.i.i.i76) #34
  %.fr.i.i.i80 = freeze i32 %i.ar                 ; 2 uses
  %.not.not.i.i.i81 = icmp eq i32 %.fr.i.i.i80, 0
  %.inv.i.i.i82 = icmp sgt i32 %.fr.i.i.i80, -1
  %spec.select.i.i.i83 = select i1 %.inv.i.i.i82, i32 1, i32 -1
  br i1 %.not.not.i.i.i81, label %.thread.i.i.i85, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86

.thread.i.i.i85:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77, %.lr.ph.i.i14.i
  %i.as = icmp ult i64 %.sroa.6158.0.copyload, %.sroa.2.0.copyload.i75
  br i1 %i.as, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86: ; preds = %.thread.i.i.i85, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77
  %.1.i.i.i84 = phi i32 [ %spec.select.i.i.i83, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77 ], [ -1, %.thread.i.i.i85 ]
  %i.at = icmp slt i32 %.1.i.i.i84, 0
  br i1 %i.at, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i: ; preds = %.thread.i.i.i85, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86, %.thread.i.i.i100, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101 ], [ %.08.i.i, %.thread.i.i.i100 ], [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.012.i.i15.i, %.thread.i.i.i85 ] ; 2 uses
  store ptr %.sroa.0156.0.copyload, ptr %.09.lcssa.i.i12.i, align 8, !tbaa !355
  %.sroa.6158.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store <2 x i64> %i.al, ptr %.sroa.6158.0..09.lcssa.i.i12.i.sroa_idx, align 8, !tbaa !340
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.au, %i.q
  br i1 %.not.i13.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !95

bb.i:                                             ; preds = %bb.c
  %.not18.i.i = icmp eq i32 %i.n, 1
  br i1 %.not18.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.i
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.2.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.m
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.m ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.m ], [ %i.p, %.lr.ph.i19.i.preheader ] ; 5 uses
  %.sroa.22.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.22.0.copyload.i58 = load i64, ptr %.sroa.22.0..sroa_idx.i57, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i60 = load i64, ptr %.sroa.2.0..sroa_idx.i59, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i61 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i60, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.av = icmp eq i64 %.sroa.speculated.i.i.i61, 0
  br i1 %i.av, label %.thread.i.i.i70, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62: ; preds = %.lr.ph.i19.i
  %.sroa.0.0.copyload.i63 = load ptr, ptr %i.p, align 8, !tbaa !355
  %.sroa.01.0.copyload.i64 = load ptr, ptr %.020.i20.i, align 8, !tbaa !355 ; 2 uses
  %i.aw = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i64, ptr noundef %.sroa.0.0.copyload.i63, i64 noundef %.sroa.speculated.i.i.i61) #34
  %.fr.i.i.i65 = freeze i32 %i.aw                 ; 2 uses
  %.not.not.i.i.i66 = icmp eq i32 %.fr.i.i.i65, 0
  br i1 %.not.not.i.i.i66, label %.thread.i.i.i70, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71

.thread.i.i.i70:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62, %.lr.ph.i19.i
  %i.ax = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i60
  br i1 %i.ax, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181, label %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge

.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge: ; preds = %.thread.i.i.i70
  %.sroa.0162.0.copyload.pre = load ptr, ptr %.020.i20.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62
  %i.ay = icmp slt i32 %.fr.i.i.i65, 0
  br i1 %i.ay, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181: ; preds = %.thread.i.i.i70, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %.020.i20.i, i64 24, i1 false), !tbaa.struct !974
  %i.az = ptrtoint ptr %.020.i20.i to i64
  %i.ba = sub i64 %i.az, %i.u                     ; 4 uses
  %i.bb = icmp sgt i64 %i.ba, 24
  br i1 %i.bb, label %bb.j, label %bb.k, !prof !425

bb.j:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 48
  %.neg25.i31.i = udiv exact i64 %i.ba, 24
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %i.bd = getelementptr inbounds [24 x i8], ptr %i.bc, i64 %.neg25.neg.i32.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ba, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.k:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181
  %i.be = icmp eq i64 %i.ba, 24
  br i1 %i.be, label %bb.l, label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.m

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread: ; preds = %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71
  %.sroa.0162.0.copyload = phi ptr [ %.sroa.0162.0.copyload.pre, %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge ], [ %.sroa.01.0.copyload.i64, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71 ] ; 3 uses
  %.sroa.8166.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16
  %.sroa.8166.0.copyload = load i64, ptr %.sroa.8166.0..020.i20.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %.sroa.2.0.copyload.i45 = load i64, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i46 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i45, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.bg = icmp eq i64 %.sroa.speculated.i.i.i46, 0
  br i1 %i.bg, label %.thread.i.i.i55, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread
  %.sroa.0.0.copyload.i48 = load ptr, ptr %.pn19.i21.i, align 8, !tbaa !355
  %i.bh = call i32 @memcmp(ptr noundef %.sroa.0162.0.copyload, ptr noundef %.sroa.0.0.copyload.i48, i64 noundef %.sroa.speculated.i.i.i46) #34
  %.fr.i.i.i50 = freeze i32 %i.bh                 ; 2 uses
  %.not.not.i.i.i51 = icmp eq i32 %.fr.i.i.i50, 0
  br i1 %.not.not.i.i.i51, label %.thread.i.i.i55, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56

.thread.i.i.i55:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread
  %i.bi = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i45
  br i1 %i.bi, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47
  %i.bj = icmp slt i32 %.fr.i.i.i50, 0
  br i1 %i.bj, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i.preheader:                         ; preds = %.thread.i.i.i55, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.pn19.i21.i, %.lr.ph.i.i26.i.preheader ] ; 6 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.020.i20.i, %.lr.ph.i.i26.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i27.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i39 = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16
  %.sroa.2.0.copyload.i40 = load i64, ptr %.sroa.2.0..sroa_idx.i39, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i40, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.bk = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.bk, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i26.i
  %.sroa.0.0.copyload.i41 = load ptr, ptr %.0.i.i29.i, align 8, !tbaa !355
  %i.bl = call i32 @memcmp(ptr noundef %.sroa.0162.0.copyload, ptr noundef %.sroa.0.0.copyload.i41, i64 noundef %.sroa.speculated.i.i.i) #34
  %.fr.i.i.i = freeze i32 %i.bl                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %.inv.i.i.i = icmp sgt i32 %.fr.i.i.i, -1
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %.lr.ph.i.i26.i
  %i.bm = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i40
  br i1 %i.bm, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit: ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i ], [ -1, %.thread.i.i.i ]
  %i.bn = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.bn, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i: ; preds = %.thread.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, %.thread.i.i.i55, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56 ], [ %.020.i20.i, %.thread.i.i.i55 ], [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.012.i.i27.i, %.thread.i.i.i ] ; 3 uses
  store ptr %.sroa.0162.0.copyload, ptr %.09.lcssa.i.i23.i, align 8, !tbaa !355
  %.sroa.6164.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i64 %.sroa.22.0.copyload.i58, ptr %.sroa.6164.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8166.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 16
  store i64 %.sroa.8166.0.copyload, ptr %.sroa.8166.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 24 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.q
  br i1 %.not.i25.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !94

_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, %bb.i, %._crit_edge
  %i.bo = zext i32 %3 to i64
  %i.bp = load ptr, ptr %12, align 8, !tbaa !312
  %i.bq = load i32, ptr %i.c, align 8, !tbaa !313
  %i.br = zext i32 %i.bq to i64
  %i.bs = load ptr, ptr %0, align 8, !tbaa !250
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 312
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.bo, ptr %i.bp, i64 %i.br) #31
  %i.bv = load ptr, ptr %12, align 8, !tbaa !312  ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.b
  br i1 %i.bw, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit
  call void @free(ptr noundef %i.bv) #31
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit: ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  ret void

bb.o:                                             ; preds = %.lr.ph, %bb.x
  %.0196 = phi ptr [ %4, %.lr.ph ], [ %i.cx, %bb.x ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0196, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !780 ; 10 uses
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = and i32 %i.by, %6
  %.not33 = icmp eq i32 %i.ca, 0
  br i1 %.not33, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cb = and i32 %i.by, %7
  %.not34 = icmp eq i32 %i.cb, 0
  br i1 %.not34, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cc = and i32 %i.by, %8
  %.not35 = icmp eq i32 %i.cc, 0
  %spec.select = select i1 %.not35, i32 0, i32 %8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.032 = phi i32 [ %spec.select, %bb.r ], [ %6, %bb.p ], [ %7, %bb.q ] ; 2 uses
  %i.cd = and i32 %.032, %i.by
  %.not36 = icmp eq i32 %i.cd, 0
  br i1 %.not36, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ce = and i32 %i.by, %3
  %i.cf = icmp eq i32 %i.ce, %i.by
  br i1 %i.cf, label %bb.u, label %bb.x

.critedge:                                        ; preds = %bb.s
  %i.cg = and i32 %.032, %3
  %i.ch = icmp eq i32 %i.cg, %i.by
  br i1 %i.ch, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.critedge, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.ci = load i16, ptr %.0196, align 4, !tbaa !389
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.0196, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0196, i64 2
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !270
  %i.cn = zext i8 %i.cm to i64                    ; 2 uses
  store ptr %i.ck, ptr %13, align 8
  store i64 %i.cn, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 %i.by, ptr %i.a, align 4, !tbaa !396
  %i.co = load i32, ptr %i.c, align 8, !tbaa !313 ; 3 uses
  %i.cp = load i32, ptr %i.d, align 4, !tbaa !314
  %.not.i = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i, label %bb.w, label %bb.v, !prof !425

bb.v:                                             ; preds = %bb.u
  %i.cq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE18growAndEmplaceBackIJNS_9StringRefEjEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.cr = zext i32 %i.co to i64
  %i.cs = load ptr, ptr %12, align 8, !tbaa !312
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %i.cr ; 3 uses
  store ptr %i.ck, ptr %i.ct, align 8, !tbaa !355
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %i.cn, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !340
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = zext i32 %i.by to i64
  store i64 %i.cv, ptr %i.cu, align 8, !tbaa !1098
  %i.cw = add nuw i32 %i.co, 1
  store i32 %i.cw, ptr %i.c, align 8, !tbaa !313
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %.critedge, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit, %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %.0196, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cx, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %bb.o
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEEC2ERKNS2_13ELFObjectFileIS5_EERNS1_13ScopedPrinterE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 8 dereferenceable(209) %1, ptr noundef nonnull align 8 dereferenceable(44) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Expected.1461", align 8 ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Expected.1461", align 8 ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %9 = alloca %"class.llvm::Expected.1461", align 8 ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %12 = alloca %"class.llvm::Expected.1461", align 8 ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %15 = alloca %"class.llvm::Expected.1461", align 8 ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %18 = alloca %"class.llvm::Expected.1461", align 8 ; 4 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %21 = alloca %"class.llvm::Expected.1461", align 8 ; 4 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %24 = alloca %"class.llvm::Expected.1461", align 8 ; 4 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %27 = alloca %"class.llvm::Expected.1461", align 8 ; 4 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %29 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %30 = alloca %"class.llvm::Expected.1496", align 8 ; 9 uses
  %31 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %34 = alloca %"class.llvm::Error", align 8      ; 6 uses
  %35 = alloca %"class.llvm::Expected.1461", align 8 ; 6 uses
  %36 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 6 uses
  %37 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %38 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %39 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %40 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %41 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %43 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %44 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %47 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %50 = alloca %"struct.(anonymous namespace)::DynRegionInfo", align 8 ; 17 uses
  %51 = alloca %"struct.(anonymous namespace)::DynRegionInfo", align 8 ; 7 uses
  %52 = alloca %"class.llvm::Expected.145", align 8 ; 13 uses
  %53 = alloca %"struct.(anonymous namespace)::DynRegionInfo", align 8 ; 17 uses
  %54 = alloca %"class.llvm::Expected.145", align 8 ; 12 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %56 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %62 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %63 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %64 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %65 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %66 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %67 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %68 = alloca %"class.llvm::Expected.1461", align 8 ; 3 uses
  %69 = alloca %"class.llvm::Expected.145", align 8 ; 12 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %71 = alloca %"class.llvm::Expected.148", align 8 ; 8 uses
  %72 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE34getSymbolIndexesForFunctionAddressEmSt8optionalIPKNS2_13Elf_Shdr_ImplIS5_EEE:bb.a
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !269 ; 2 uses
  %i.dv = icmp ult i64 %i.du, 16
  call void @llvm.assume(i1 %i.dv)
  %i.dw = add nuw nsw i64 %i.du, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.dr, i64 %i.dw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.dq, ptr %10, align 8, !tbaa !349, !alias.scope !14782
  %i.dx = load i64, ptr %i.dr, align 8, !tbaa !270
  store i64 %i.dx, ptr %i.ad, align 8, !tbaa !270, !alias.scope !14782
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.s
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !269
  store i64 %i.dz, ptr %i.ae, align 8, !tbaa !269, !alias.scope !14782
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !349
  store i64 0, ptr %i.dy, align 8, !tbaa !269
  store i8 0, ptr %i.dr, align 8, !tbaa !270
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i
  store i8 4, ptr %i.af, align 8, !tbaa !352
  store i8 1, ptr %i.ag, align 1, !tbaa !353
  store ptr %10, ptr %9, align 8, !tbaa !270
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(34) %9) #31
  %i.ea = load ptr, ptr %10, align 8, !tbaa !349  ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.ad
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.ec = load i64, ptr %i.ad, align 8, !tbaa !270
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %i.ee = load ptr, ptr %13, align 8, !tbaa !349  ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.ac
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eg = load i64, ptr %i.ac, align 8, !tbaa !270
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  %i.ei = load ptr, ptr %14, align 8, !tbaa !348  ; 3 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !250
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.ei) #31, !inline_history !0
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.en = load ptr, ptr %11, align 8, !tbaa !349  ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.z
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.ep = load i64, ptr %i.z, align 8, !tbaa !270
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  %i.er = load ptr, ptr %12, align 8, !tbaa !349  ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.x
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.et = load i64, ptr %i.x, align 8, !tbaa !270
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.ev = load ptr, ptr %8, align 8, !tbaa !349   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.ah
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.ex = load i64, ptr %i.ah, align 8, !tbaa !270
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.u:                                             ; preds = %_ZNK4llvm6object13ELFObjectFileINS0_7ELFTypeILNS_10endiannessE0ELb0EEEE11toSymbolRefEPKNS0_13Elf_Shdr_ImplIS4_EEj.exit
  %i.ez = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ez, 0 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1079 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 24 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !672
  %.not.i62 = icmp eq ptr %i.fc, %i.fe
  br i1 %.not.i62, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.ai, ptr %i.fc, align 4, !tbaa !396
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store ptr %i.ff, ptr %i.fb, align 8, !tbaa !1079
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.w:                                             ; preds = %bb.u
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !671 ; 4 uses
  %i.fh = ptrtoint ptr %i.fc to i64
  %i.fi = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fj = sub i64 %i.fh, %i.fi                    ; 5 uses
  %i.fk = icmp eq i64 %i.fj, 9223372036854775804
  br i1 %i.fk, label %bb.x, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #33
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.fl = ashr exact i64 %i.fj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fl, i64 1)
  %i.fm = add nsw i64 %.sroa.speculated.i.i.i, %i.fl ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.fl
  %i.fo = call i64 @llvm.umin.i64(i64 %i.fm, i64 2305843009213693951)
  %i.fp = select i1 %i.fn, i64 2305843009213693951, i64 %i.fo ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fq = shl nuw nsw i64 %i.fp, 2
  %i.fr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fq) #30 ; 4 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 %i.fj ; 2 uses
  store i32 %i.ai, ptr %i.fs, align 4, !tbaa !396
  %i.ft = icmp sgt i64 %i.fj, 0
  br i1 %i.ft, label %bb.y, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.y:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fr, ptr align 4 %i.fg, i64 %i.fj, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.y, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %.not.i17.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.fv = load ptr, ptr %i.fd, align 8, !tbaa !672
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.fw, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fx) #32
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.z, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.fr, ptr %i.fa, align 8, !tbaa !671
  store ptr %i.fu, ptr %i.fb, align 8, !tbaa !1079
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fp
  store ptr %i.fy, ptr %i.fd, align 8, !tbaa !672
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.032 = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ 0, %bb.v ], [ 0, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %.1 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.0169, %bb.v ], [ %.0169, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ] ; 2 uses
  %i.fz = load i8, ptr %i.v, align 8
  %i.ga = trunc i8 %i.fz to i1
  br i1 %i.ga, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.gb = load ptr, ptr %7, align 8, !tbaa !346   ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i64, label %bb.ab, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.aa
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !250
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(8) %i.gb) #31, !inline_history !79
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i, %bb.aa, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br i1 %i.bj, label %._crit_edge.loopexit, label %.thread

.thread:                                          ; preds = %bb.ab, %bb.d, %bb.e
  %.2153 = phi i1 [ %.0169, %bb.d ], [ %.1, %bb.ab ], [ %.0169, %bb.e ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.039168, i64 16 ; 2 uses
  %.not40 = icmp eq ptr %i.gf, %i.s
  br i1 %.not40, label %._crit_edge.loopexit, label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.ab, %.thread
  %.234.ph = phi i32 [ 2, %.thread ], [ %.032, %bb.ab ]
  %.3.ph = phi i1 [ %.2153, %.thread ], [ %.1, %bb.ab ]
  %i.gg = and i32 %.234.ph, -3
  %i.gh = icmp eq i32 %i.gg, 0
  br label %._crit_edge

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i66: ; preds = %_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE0ELb0EEEE7symbolsEPKNS0_13Elf_Shdr_ImplIS4_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !14783)
  %i.gi = load i64, ptr %6, align 8, !tbaa !346, !noalias !14783
  %i.gj = inttoptr i64 %i.gi to ptr
  store ptr null, ptr %6, align 8, !tbaa !346, !noalias !14783
  store ptr %i.gj, ptr %18, align 8, !tbaa !348, !alias.scope !14783
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr nofree noundef nonnull align 8 dereferenceable(8) %18) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !14784)
  %i.gk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.734, i64 noundef 33) #31, !noalias !14784 ; 6 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.gl, ptr %16, align 8, !tbaa !268, !alias.scope !14784
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !349 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 5 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i66
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !269 ; 3 uses
  %i.gr = icmp ult i64 %i.gq, 16
  call void @llvm.assume(i1 %i.gr)
  %i.gs = add nuw nsw i64 %i.gq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gl, ptr noundef nonnull align 8 dereferenceable(1) %i.gn, i64 %i.gs, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i66
  store ptr %i.gm, ptr %16, align 8, !tbaa !349, !alias.scope !14784
  %i.gt = load i64, ptr %i.gn, align 8, !tbaa !270
  store i64 %i.gt, ptr %i.gl, align 8, !tbaa !270, !alias.scope !14784
  %.phi.trans.insert.i68 = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i68, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.gu = phi i64 [ %i.gq, %bb.ac ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.gu, ptr %i.gw, align 8, !tbaa !269, !alias.scope !14784
  store ptr %i.gn, ptr %i.gk, align 8, !tbaa !349
  store i64 0, ptr %i.gv, align 8, !tbaa !269
  store i8 0, ptr %i.gn, align 8, !tbaa !270
  %i.gx = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 4, ptr %i.gx, align 8, !tbaa !352
  %i.gy = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.gy, align 1, !tbaa !353
  store ptr %16, ptr %15, align 8, !tbaa !270
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(34) %15) #31
  %i.gz = load ptr, ptr %16, align 8, !tbaa !349  ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gl
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.hb = load i64, ptr %i.gl, align 8, !tbaa !270
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %i.hd = load ptr, ptr %17, align 8, !tbaa !349  ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !270
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  %i.hi = load ptr, ptr %18, align 8, !tbaa !348  ; 3 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZN4llvm5ErrorD2Ev.exit77, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.hk = load ptr, ptr %i.hi, align 8, !tbaa !250
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(8) %i.hi) #31, !inline_history !0
  br label %_ZN4llvm5ErrorD2Ev.exit77

_ZN4llvm5ErrorD2Ev.exit77:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit, %_ZN4llvm5ErrorD2Ev.exit77
  %.335 = phi i1 [ true, %_ZN4llvm5ErrorD2Ev.exit77 ], [ true, %bb.c ], [ %i.gh, %._crit_edge.loopexit ]
  %.5 = phi i1 [ false, %_ZN4llvm5ErrorD2Ev.exit77 ], [ false, %bb.c ], [ %.3.ph, %._crit_edge.loopexit ]
  %i.hn = load i8, ptr %i.m, align 8
  %i.ho = trunc i8 %i.hn to i1
  br i1 %i.ho, label %bb.ae, label %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEEEEED2Ev.exit

bb.ae:                                            ; preds = %._crit_edge
  %i.hp = load ptr, ptr %6, align 8, !tbaa !346   ; 3 uses
  %.not.i.i79 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i79, label %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEEEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i80

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i80: ; preds = %bb.ae
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !250
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(8) %i.hp) #31, !inline_history !144
  br label %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEEEEED2Ev.exit

_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEEEEED2Ev.exit: ; preds = %._crit_edge, %bb.ae, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %.335, label %bb.af, label %bb.ba

bb.af:                                            ; preds = %bb.b, %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEEEEED2Ev.exit, %bb.a
  %i.ht = load ptr, ptr %i.d, align 8, !tbaa !1082, !noalias !14785 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !1083, !noalias !14785 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 1060
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !1084, !noalias !14785 ; 4 uses
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %.loopexit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hz = add i32 %i.hx, -1                       ; 2 uses
  %i.ia = mul i64 %2, -4658895280553007687        ; 2 uses
  %i.ib = lshr i64 %i.ia, 31
  %i.ic = xor i64 %i.ib, %i.ia
  %i.id = trunc i64 %i.ic to i32
  %i.ie = and i32 %i.hz, %i.id                    ; 3 uses
  %i.if = zext i32 %i.ie to i64                   ; 2 uses
  %i.ig = lshr i64 %i.if, 5
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !396, !noalias !14786
  %i.ij = and i32 %i.ie, 31
  %i.ik = lshr i32 %i.ii, %i.ij
  %i.il = trunc i32 %i.ik to i1
  br i1 %i.il, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !507

.lr.ph.i.i.i.i:                                   ; preds = %bb.ag, %bb.ah
  %i.im = phi i64 [ %i.is, %bb.ah ], [ %i.if, %bb.ag ]
  %.017.i.i.i.i = phi i32 [ %i.ir, %bb.ah ], [ %i.ie, %bb.ag ]
  %i.in = getelementptr inbounds nuw [32 x i8], ptr %i.ht, i64 %i.im ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !340, !noalias !14786
  %i.ip = icmp eq i64 %2, %i.io
  br i1 %i.ip, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit, label %bb.ah, !prof !425

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i
  %i.iq = add nuw i32 %.017.i.i.i.i, 1
  %i.ir = and i32 %i.iq, %i.hz                    ; 3 uses
  %i.is = zext i32 %i.ir to i64                   ; 2 uses
  %i.it = lshr i64 %i.is, 5
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !396, !noalias !14786
  %i.iw = and i32 %i.ir, 31
  %i.ix = lshr i32 %i.iv, %i.iw
  %i.iy = trunc i32 %i.ix to i1
  br i1 %i.iy, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !508

.loopexit.i.i:                                    ; preds = %bb.ah, %bb.ag, %bb.af
  %i.iz = zext i32 %i.hx to i64                   ; 2 uses
  %i.ja = getelementptr inbounds nuw [32 x i8], ptr %i.ht, i64 %i.iz
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre192 = zext i32 %i.hx to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre192, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit ], [ %i.iz, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.in, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit ], [ %i.ja, %.loopexit.i.i ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.ht, i64 %.pre-phi
  %i.jc = icmp eq ptr %.lcssa.sink.i.i, %i.jb
  br i1 %i.jc, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit
  %i.jd = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !613 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !613 ; 3 uses
  %.not162174 = icmp eq ptr %i.je, %i.jg
  br i1 %.not162174, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.ai
  %i.jh = trunc nuw i8 %4 to i1
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 1020
  %i.jn = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.jp = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.jq = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.js = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
end_hunk_6
begin_hunk_7_@_ZNK12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE22printEmptyGroupMessageEv:bb.a
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.j, ptr noundef nonnull align 1 dereferenceable(41) @.str.1056, i64 41, i1 false)
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !372
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 41
  store ptr %i.q, ptr %i.i, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE0ELm1ELm1EEEjLj2EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEESA_SA_SA_NS_8ArrayRefINS_9FlagEntryEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i32 %3, ptr %4, i64 %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef byval(%"class.llvm::ArrayRef.1044") align 8 %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %10 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %11 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SmallVector.1054", align 8 ; 13 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %.sroa.021.0.copyload = load ptr, ptr %9, align 8, !tbaa !1094
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.222.0.copyload = load i64, ptr %.sroa.222.0..sroa_idx, align 8, !tbaa !340 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.b, ptr %12, align 8, !tbaa !312
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  store i32 0, ptr %i.c, align 8, !tbaa !313
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 10, ptr %i.d, align 4, !tbaa !314
  %.idx.i = mul nuw nsw i64 %.sroa.222.0.copyload, 24
  %i.e = icmp ugt i64 %.sroa.222.0.copyload, 10
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(256) %12, ptr noundef nonnull %i.b, i64 noundef %.sroa.222.0.copyload, i64 noundef 24) #31
  %.pre8.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !313
  %i.f = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %12, align 8, !tbaa !312
  br label %bb.b

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.222.0.copyload, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i
  %i.g = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ %i.b, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.f, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 8 %.sroa.021.0.copyload, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !313
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %bb.b
  %i.i = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.j = trunc i64 %.sroa.222.0.copyload to i32
  %i.k = add i32 %i.i, %i.j                       ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !313
  %.idx = mul nuw nsw i64 %5, 12
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.not195 = icmp eq i64 %5, 0
  br i1 %.not195, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.m = call i32 @llvm.bswap.i32(i32 %3)         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre198 = load i32, ptr %i.c, align 8, !tbaa !313
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.o = phi i32 [ %.pre198, %._crit_edge.loopexit ], [ %i.k, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.idx.i37 = mul nuw nsw i64 %i.p, 24
  %i.q = load ptr, ptr %12, align 8, !tbaa !312   ; 19 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i37 ; 3 uses
  %i.s = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  call void @_ZSt16__introsort_loopIPN4llvm9FlagEntryElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef %i.q, ptr noundef nonnull %i.r, i64 noundef %i.u, ptr nonnull @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_)
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = icmp ugt i32 %i.o, 16
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %scevgep.i = getelementptr i8, ptr %i.q, i64 24
  %.sroa.2.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.020.i.idx.i = phi i64 [ 24, %bb.d ], [ %.020.i.add.i, %bb.h ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.q, %bb.d ], [ %.020.i.ptr.i, %bb.h ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.020.i.idx.i ; 9 uses
  %.sroa.22.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %.sroa.22.0.copyload.i133 = load i64, ptr %.sroa.22.0..sroa_idx.i132, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i135 = load i64, ptr %.sroa.2.0..sroa_idx.i134, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i136 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i135, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.x = icmp eq i64 %.sroa.speculated.i.i.i136, 0
  br i1 %i.x, label %.thread.i.i.i145, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137: ; preds = %bb.e
  %.sroa.0.0.copyload.i138 = load ptr, ptr %i.q, align 8, !tbaa !355
  %.sroa.01.0.copyload.i139 = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355 ; 2 uses
  %i.y = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i139, ptr noundef %.sroa.0.0.copyload.i138, i64 noundef %.sroa.speculated.i.i.i136) #34
  %.fr.i.i.i140 = freeze i32 %i.y                 ; 2 uses
  %.not.not.i.i.i141 = icmp eq i32 %.fr.i.i.i140, 0
  br i1 %.not.not.i.i.i141, label %.thread.i.i.i145, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146

.thread.i.i.i145:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137, %bb.e
  %i.z = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i135
  br i1 %i.z, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169, label %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge

.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge: ; preds = %.thread.i.i.i145
  %.sroa.0152.0.copyload.pre = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137
  %i.aa = icmp slt i32 %.fr.i.i.i140, 0
  br i1 %i.aa, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169: ; preds = %.thread.i.i.i145, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.ptr.i, i64 24, i1 false), !tbaa.struct !974
  %i.ab = icmp samesign ugt i64 %.020.i.idx.i, 24
  br i1 %i.ab, label %bb.f, label %bb.g, !prof !425

bb.f:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

bb.g:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.h

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread: ; preds = %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146
  %.sroa.0152.0.copyload = phi ptr [ %.sroa.0152.0.copyload.pre, %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge ], [ %.sroa.01.0.copyload.i139, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146 ] ; 3 uses
  %.sroa.8.0..020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..020.i.ptr.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %.sroa.2.0.copyload.i120 = load i64, ptr %.sroa.2.0..sroa_idx.i119, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i121 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i120, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i.i.i121, 0
  br i1 %i.ad, label %.thread.i.i.i130, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread
  %.sroa.0.0.copyload.i123 = load ptr, ptr %.pn19.i.i, align 8, !tbaa !355
  %i.ae = call i32 @memcmp(ptr noundef %.sroa.0152.0.copyload, ptr noundef %.sroa.0.0.copyload.i123, i64 noundef %.sroa.speculated.i.i.i121) #34
  %.fr.i.i.i125 = freeze i32 %i.ae                ; 2 uses
  %.not.not.i.i.i126 = icmp eq i32 %.fr.i.i.i125, 0
  br i1 %.not.not.i.i.i126, label %.thread.i.i.i130, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131

.thread.i.i.i130:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread
  %i.af = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i120
  br i1 %i.af, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122
  %i.ag = icmp slt i32 %.fr.i.i.i125, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.thread.i.i.i130, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.020.i.ptr.i, %.lr.ph.i.i.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i104 = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -16
  %.sroa.2.0.copyload.i105 = load i64, ptr %.sroa.2.0..sroa_idx.i104, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i106 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i105, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.ah = icmp eq i64 %.sroa.speculated.i.i.i106, 0
  br i1 %i.ah, label %.thread.i.i.i115, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i108 = load ptr, ptr %.0.i.i.i, align 8, !tbaa !355
  %i.ai = call i32 @memcmp(ptr noundef %.sroa.0152.0.copyload, ptr noundef %.sroa.0.0.copyload.i108, i64 noundef %.sroa.speculated.i.i.i106) #34
  %.fr.i.i.i110 = freeze i32 %i.ai                ; 2 uses
  %.not.not.i.i.i111 = icmp eq i32 %.fr.i.i.i110, 0
  %.inv.i.i.i112 = icmp sgt i32 %.fr.i.i.i110, -1
  %spec.select.i.i.i113 = select i1 %.inv.i.i.i112, i32 1, i32 -1
  br i1 %.not.not.i.i.i111, label %.thread.i.i.i115, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116

.thread.i.i.i115:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107, %.lr.ph.i.i.i
  %i.aj = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i105
  br i1 %i.aj, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116: ; preds = %.thread.i.i.i115, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107
  %.1.i.i.i114 = phi i32 [ %spec.select.i.i.i113, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107 ], [ -1, %.thread.i.i.i115 ]
  %i.ak = icmp slt i32 %.1.i.i.i114, 0
  br i1 %i.ak, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i: ; preds = %.thread.i.i.i115, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116, %.thread.i.i.i130, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131 ], [ %.020.i.ptr.i, %.thread.i.i.i130 ], [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.012.i.i.i, %.thread.i.i.i115 ] ; 3 uses
  store ptr %.sroa.0152.0.copyload, ptr %.09.lcssa.i.i.i, align 8, !tbaa !355
  %.sroa.6.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i133, ptr %.sroa.6.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 24 ; 2 uses
  %.not.i.i = icmp eq i64 %.020.i.add.i, 384
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, label %bb.e, !llvm.loop !94

_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i: ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.av, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i ], [ %i.al, %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i ] ; 8 uses
  %.sroa.0156.0.copyload = load ptr, ptr %.08.i.i, align 8, !tbaa !355 ; 3 uses
  %.sroa.6158.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %i.am = load <2 x i64>, ptr %.sroa.6158.0..08.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.6158.0.copyload = load i64, ptr %.sroa.6158.0..08.i.i.sroa_idx, align 8, !tbaa !340 ; 4 uses
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i89 = getelementptr inbounds i8, ptr %.08.i.i, i64 -16
  %.sroa.2.0.copyload.i90 = load i64, ptr %.sroa.2.0..sroa_idx.i89, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i91 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i90, i64 %.sroa.6158.0.copyload) ; 2 uses
  %i.an = icmp eq i64 %.sroa.speculated.i.i.i91, 0
  br i1 %i.an, label %.thread.i.i.i100, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92: ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i93 = load ptr, ptr %.010.i.i.i, align 8, !tbaa !355
  %i.ao = call i32 @memcmp(ptr noundef %.sroa.0156.0.copyload, ptr noundef %.sroa.0.0.copyload.i93, i64 noundef %.sroa.speculated.i.i.i91) #34
  %.fr.i.i.i95 = freeze i32 %i.ao                 ; 2 uses
  %.not.not.i.i.i96 = icmp eq i32 %.fr.i.i.i95, 0
  br i1 %.not.not.i.i.i96, label %.thread.i.i.i100, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101

.thread.i.i.i100:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92, %.lr.ph.i.i
  %i.ap = icmp ult i64 %.sroa.6158.0.copyload, %.sroa.2.0.copyload.i90
  br i1 %i.ap, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92
  %i.aq = icmp slt i32 %.fr.i.i.i95, 0
  br i1 %i.aq, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i.preheader:                         ; preds = %.thread.i.i.i100, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101
  br label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i14.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.010.i.i.i, %.lr.ph.i.i14.i.preheader ] ; 6 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.08.i.i, %.lr.ph.i.i14.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i15.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i74 = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16
  %.sroa.2.0.copyload.i75 = load i64, ptr %.sroa.2.0..sroa_idx.i74, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i76 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i75, i64 %.sroa.6158.0.copyload) ; 2 uses
  %i.ar = icmp eq i64 %.sroa.speculated.i.i.i76, 0
  br i1 %i.ar, label %.thread.i.i.i85, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77: ; preds = %.lr.ph.i.i14.i
  %.sroa.0.0.copyload.i78 = load ptr, ptr %.0.i.i17.i, align 8, !tbaa !355
  %i.as = call i32 @memcmp(ptr noundef %.sroa.0156.0.copyload, ptr noundef %.sroa.0.0.copyload.i78, i64 noundef %.sroa.speculated.i.i.i76) #34
  %.fr.i.i.i80 = freeze i32 %i.as                 ; 2 uses
  %.not.not.i.i.i81 = icmp eq i32 %.fr.i.i.i80, 0
  %.inv.i.i.i82 = icmp sgt i32 %.fr.i.i.i80, -1
  %spec.select.i.i.i83 = select i1 %.inv.i.i.i82, i32 1, i32 -1
  br i1 %.not.not.i.i.i81, label %.thread.i.i.i85, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86

.thread.i.i.i85:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77, %.lr.ph.i.i14.i
  %i.at = icmp ult i64 %.sroa.6158.0.copyload, %.sroa.2.0.copyload.i75
  br i1 %i.at, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86: ; preds = %.thread.i.i.i85, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77
  %.1.i.i.i84 = phi i32 [ %spec.select.i.i.i83, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77 ], [ -1, %.thread.i.i.i85 ]
  %i.au = icmp slt i32 %.1.i.i.i84, 0
  br i1 %i.au, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i: ; preds = %.thread.i.i.i85, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86, %.thread.i.i.i100, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101 ], [ %.08.i.i, %.thread.i.i.i100 ], [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.012.i.i15.i, %.thread.i.i.i85 ] ; 2 uses
  store ptr %.sroa.0156.0.copyload, ptr %.09.lcssa.i.i12.i, align 8, !tbaa !355
  %.sroa.6158.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store <2 x i64> %i.am, ptr %.sroa.6158.0..09.lcssa.i.i12.i.sroa_idx, align 8, !tbaa !340
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.av, %i.r
  br i1 %.not.i13.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !95

bb.i:                                             ; preds = %bb.c
  %.not18.i.i = icmp eq i32 %i.o, 1
  br i1 %.not18.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.i
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.2.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.m
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.m ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.m ], [ %i.q, %.lr.ph.i19.i.preheader ] ; 5 uses
  %.sroa.22.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.22.0.copyload.i58 = load i64, ptr %.sroa.22.0..sroa_idx.i57, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i60 = load i64, ptr %.sroa.2.0..sroa_idx.i59, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i61 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i60, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.aw = icmp eq i64 %.sroa.speculated.i.i.i61, 0
  br i1 %i.aw, label %.thread.i.i.i70, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62: ; preds = %.lr.ph.i19.i
  %.sroa.0.0.copyload.i63 = load ptr, ptr %i.q, align 8, !tbaa !355
  %.sroa.01.0.copyload.i64 = load ptr, ptr %.020.i20.i, align 8, !tbaa !355 ; 2 uses
  %i.ax = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i64, ptr noundef %.sroa.0.0.copyload.i63, i64 noundef %.sroa.speculated.i.i.i61) #34
  %.fr.i.i.i65 = freeze i32 %i.ax                 ; 2 uses
  %.not.not.i.i.i66 = icmp eq i32 %.fr.i.i.i65, 0
  br i1 %.not.not.i.i.i66, label %.thread.i.i.i70, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71

.thread.i.i.i70:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62, %.lr.ph.i19.i
  %i.ay = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i60
  br i1 %i.ay, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181, label %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge

.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge: ; preds = %.thread.i.i.i70
  %.sroa.0162.0.copyload.pre = load ptr, ptr %.020.i20.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62
  %i.az = icmp slt i32 %.fr.i.i.i65, 0
  br i1 %i.az, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181: ; preds = %.thread.i.i.i70, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %.020.i20.i, i64 24, i1 false), !tbaa.struct !974
  %i.ba = ptrtoint ptr %.020.i20.i to i64
  %i.bb = sub i64 %i.ba, %i.v                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 24
  br i1 %i.bc, label %bb.j, label %bb.k, !prof !425

bb.j:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 48
  %.neg25.i31.i = udiv exact i64 %i.bb, 24
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %i.be = getelementptr inbounds [24 x i8], ptr %i.bd, i64 %.neg25.neg.i32.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.bb, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.k:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181
  %i.bf = icmp eq i64 %i.bb, 24
  br i1 %i.bf, label %bb.l, label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.m

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread: ; preds = %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71
  %.sroa.0162.0.copyload = phi ptr [ %.sroa.0162.0.copyload.pre, %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge ], [ %.sroa.01.0.copyload.i64, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71 ] ; 3 uses
  %.sroa.8166.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16
  %.sroa.8166.0.copyload = load i64, ptr %.sroa.8166.0..020.i20.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %.sroa.2.0.copyload.i45 = load i64, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i46 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i45, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.bh = icmp eq i64 %.sroa.speculated.i.i.i46, 0
  br i1 %i.bh, label %.thread.i.i.i55, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread
  %.sroa.0.0.copyload.i48 = load ptr, ptr %.pn19.i21.i, align 8, !tbaa !355
  %i.bi = call i32 @memcmp(ptr noundef %.sroa.0162.0.copyload, ptr noundef %.sroa.0.0.copyload.i48, i64 noundef %.sroa.speculated.i.i.i46) #34
  %.fr.i.i.i50 = freeze i32 %i.bi                 ; 2 uses
  %.not.not.i.i.i51 = icmp eq i32 %.fr.i.i.i50, 0
  br i1 %.not.not.i.i.i51, label %.thread.i.i.i55, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56

.thread.i.i.i55:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread
  %i.bj = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i45
  br i1 %i.bj, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47
  %i.bk = icmp slt i32 %.fr.i.i.i50, 0
  br i1 %i.bk, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i.preheader:                         ; preds = %.thread.i.i.i55, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.pn19.i21.i, %.lr.ph.i.i26.i.preheader ] ; 6 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.020.i20.i, %.lr.ph.i.i26.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i27.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i39 = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16
  %.sroa.2.0.copyload.i40 = load i64, ptr %.sroa.2.0..sroa_idx.i39, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i40, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.bl = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.bl, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i26.i
  %.sroa.0.0.copyload.i41 = load ptr, ptr %.0.i.i29.i, align 8, !tbaa !355
  %i.bm = call i32 @memcmp(ptr noundef %.sroa.0162.0.copyload, ptr noundef %.sroa.0.0.copyload.i41, i64 noundef %.sroa.speculated.i.i.i) #34
  %.fr.i.i.i = freeze i32 %i.bm                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %.inv.i.i.i = icmp sgt i32 %.fr.i.i.i, -1
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %.lr.ph.i.i26.i
  %i.bn = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i40
  br i1 %i.bn, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit: ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i ], [ -1, %.thread.i.i.i ]
  %i.bo = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.bo, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i: ; preds = %.thread.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, %.thread.i.i.i55, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56 ], [ %.020.i20.i, %.thread.i.i.i55 ], [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.012.i.i27.i, %.thread.i.i.i ] ; 3 uses
  store ptr %.sroa.0162.0.copyload, ptr %.09.lcssa.i.i23.i, align 8, !tbaa !355
  %.sroa.6164.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i64 %.sroa.22.0.copyload.i58, ptr %.sroa.6164.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8166.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 16
  store i64 %.sroa.8166.0.copyload, ptr %.sroa.8166.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 24 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.r
  br i1 %.not.i25.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !94

_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, %bb.i, %._crit_edge
  %i.bp = call noundef i32 @llvm.bswap.i32(i32 %3)
  %i.bq = zext i32 %i.bp to i64
  %i.br = load ptr, ptr %12, align 8, !tbaa !312
  %i.bs = load i32, ptr %i.c, align 8, !tbaa !313
  %i.bt = zext i32 %i.bs to i64
  %i.bu = load ptr, ptr %0, align 8, !tbaa !250
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 312
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.bq, ptr %i.br, i64 %i.bt) #31
  %i.bx = load ptr, ptr %12, align 8, !tbaa !312  ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.b
  br i1 %i.by, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit
  call void @free(ptr noundef %i.bx) #31
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit: ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  ret void

bb.o:                                             ; preds = %.lr.ph, %bb.x
  %.0196 = phi ptr [ %4, %.lr.ph ], [ %i.cz, %bb.x ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0196, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !828 ; 10 uses
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = and i32 %i.ca, %6
  %.not33 = icmp eq i32 %i.cc, 0
  br i1 %.not33, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cd = and i32 %i.ca, %7
  %.not34 = icmp eq i32 %i.cd, 0
  br i1 %.not34, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ce = and i32 %i.ca, %8
  %.not35 = icmp eq i32 %i.ce, 0
  %spec.select = select i1 %.not35, i32 0, i32 %8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.032 = phi i32 [ %spec.select, %bb.r ], [ %6, %bb.p ], [ %7, %bb.q ] ; 2 uses
  %i.cf = and i32 %.032, %i.ca
  %.not36 = icmp eq i32 %i.cf, 0
  br i1 %.not36, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cg = and i32 %i.ca, %i.m
  %i.ch = icmp eq i32 %i.cg, %i.ca
  br i1 %i.ch, label %bb.u, label %bb.x

.critedge:                                        ; preds = %bb.s
  %i.ci = and i32 %.032, %i.m
  %i.cj = icmp eq i32 %i.ci, %i.ca
  br i1 %i.cj, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.critedge, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.ck = load i16, ptr %.0196, align 4, !tbaa !389
  %i.cl = zext i16 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.0196, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0196, i64 4
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !270
  %i.cp = zext i8 %i.co to i64                    ; 2 uses
  store ptr %i.cm, ptr %13, align 8
  store i64 %i.cp, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !396
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !313 ; 3 uses
  %i.cr = load i32, ptr %i.d, align 4, !tbaa !314
  %.not.i = icmp ult i32 %i.cq, %i.cr
  br i1 %.not.i, label %bb.w, label %bb.v, !prof !425

bb.v:                                             ; preds = %bb.u
  %i.cs = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE18growAndEmplaceBackIJNS_9StringRefEjEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.ct = zext i32 %i.cq to i64
  %i.cu = load ptr, ptr %12, align 8, !tbaa !312
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.ct ; 3 uses
  store ptr %i.cm, ptr %i.cv, align 8, !tbaa !355
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.cp, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !340
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = zext i32 %i.ca to i64
  store i64 %i.cx, ptr %i.cw, align 8, !tbaa !1098
  %i.cy = add nuw i32 %i.cq, 1
  store i32 %i.cy, ptr %i.c, align 8, !tbaa !313
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %.critedge, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit, %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %.0196, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.cz, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %bb.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE0ELm1ELm1EEEEEvNS_9StringRefET_(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i32 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.1264", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !312
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !313
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 10, ptr %i.d, align 4, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 1, ptr %i.a, align 8, !tbaa !340
  %i.e = call noundef i32 @llvm.bswap.i32(i32 %3)
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %.not10 = icmp eq i32 %3, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm15SmallVectorImplINS_9HexNumberEE12emplace_backIJRmEEERS1_DpOT_.exit
  %i.g = phi i64 [ %i.r, %_ZN4llvm15SmallVectorImplINS_9HexNumberEE12emplace_backIJRmEEERS1_DpOT_.exit ], [ 1, %bb.a ]
  %.011 = phi i64 [ %i.p, %_ZN4llvm15SmallVectorImplINS_9HexNumberEE12emplace_backIJRmEEERS1_DpOT_.exit ], [ %i.f, %bb.a ] ; 2 uses
  %i.h = and i64 %.011, 1
  %.not7 = icmp eq i64 %i.h, 0
  br i1 %.not7, label %_ZN4llvm15SmallVectorImplINS_9HexNumberEE12emplace_backIJRmEEERS1_DpOT_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = load i32, ptr %i.c, align 8, !tbaa !313  ; 3 uses
  %i.j = load i32, ptr %i.d, align 4, !tbaa !314
  %.not.i = icmp ult i32 %i.i, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !425

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9HexNumberELb1EE18growAndEmplaceBackIJRmEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_9HexNumberEE12emplace_backIJRmEEERS1_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %4, align 8, !tbaa !312
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  store i64 %i.g, ptr %i.n, align 8, !tbaa !476
  %i.o = add nuw i32 %i.i, 1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !313
  br label %_ZN4llvm15SmallVectorImplINS_9HexNumberEE12emplace_backIJRmEEERS1_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_9HexNumberEE12emplace_backIJRmEEERS1_DpOT_.exit: ; preds = %bb.d, %bb.c, %.lr.ph
  %i.p = lshr i64 %.011, 1                        ; 2 uses
  %i.q = load i64, ptr %i.a, align 8, !tbaa !340
  %i.r = shl i64 %i.q, 1                          ; 2 uses
  store i64 %i.r, ptr %i.a, align 8, !tbaa !340
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !15990

._crit_edge.loopexit:                             ; preds = %_ZN4llvm15SmallVectorImplINS_9HexNumberEE12emplace_backIJRmEEERS1_DpOT_.exit
  %.pre = load ptr, ptr %4, align 8, !tbaa !312
  %.pre12 = load i32, ptr %i.c, align 8, !tbaa !313
  %i.s = zext i32 %.pre12 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.t = phi i64 [ %i.s, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.u = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  %i.v = load ptr, ptr %0, align 8, !tbaa !250
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 320
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.f, ptr %i.u, i64 %i.t) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.y = load ptr, ptr %4, align 8, !tbaa !312    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.b
  br i1 %i.z, label %_ZN4llvm11SmallVectorINS_9HexNumberELj10EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.y) #31
  br label %_ZN4llvm11SmallVectorINS_9HexNumberELj10EED2Ev.exit

_ZN4llvm11SmallVectorINS_9HexNumberELj10EED2Ev.exit: ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter11printNumberINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE0ELm1ELm1EEEEEvNS_9StringRefES7_T_(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, ptr %3, i64 %4, i32 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15993)
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.a, ptr %8, align 8, !tbaa !268, !alias.scope !15993
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !269, !alias.scope !15993
  store i8 0, ptr %i.a, align 8, !tbaa !270, !alias.scope !15993
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !15993
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !391, !noalias !15993
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !392, !noalias !15993
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !393, !noalias !15993
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !noalias !15993
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %6, align 8, !tbaa !250, !noalias !15993
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %8, ptr %i.g, align 8, !tbaa !395, !noalias !15993
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef null, i64 noundef 0, i32 noundef 0) #31
  %i.h = call noundef i32 @llvm.bswap.i32(i32 %5)
  %i.i = zext i32 %i.h to i64
  %i.j = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %6, i64 noundef %i.i) #31 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !15993
  %i.k = load ptr, ptr %8, align 8, !tbaa !349
  store ptr %i.k, ptr %7, align 8, !tbaa !271
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = load i64, ptr %i.b, align 8, !tbaa !269
  store i64 %i.m, ptr %i.l, align 8, !tbaa !272
  %i.n = load ptr, ptr %0, align 8, !tbaa !250
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 360
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %7) #31
  %i.q = load ptr, ptr %8, align 8, !tbaa !349    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.s = load i64, ptr %i.a, align 8, !tbaa !270
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE0ELm1ELm1EEEEEvNS_9StringRefET_RNS_15SmallVectorImplINS_9FlagEntryEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.llvm::FlagEntry", align 8  ; 4 uses
  %6 = alloca %"struct.llvm::FlagEntry", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !313  ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.c, 24
  %i.d = load ptr, ptr %4, align 8, !tbaa !312    ; 19 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i ; 3 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = xor i64 %i.g, 126
  tail call void @_ZSt16__introsort_loopIPN4llvm9FlagEntryElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef %i.d, ptr noundef nonnull %i.e, i64 noundef %i.h, ptr nonnull @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_)
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = icmp ugt i32 %i.b, 16
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %scevgep.i = getelementptr i8, ptr %i.d, i64 24
  %.sroa.2.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.020.i.idx.i = phi i64 [ 24, %bb.c ], [ %.020.i.add.i, %bb.g ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.d, %bb.c ], [ %.020.i.ptr.i, %bb.g ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.020.i.idx.i ; 9 uses
  %.sroa.22.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %.sroa.22.0.copyload.i99 = load i64, ptr %.sroa.22.0..sroa_idx.i98, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i101 = load i64, ptr %.sroa.2.0..sroa_idx.i100, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i102 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i101, i64 %.sroa.22.0.copyload.i99) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i102, 0
  br i1 %i.k, label %.thread.i.i.i111, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i103

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i103: ; preds = %bb.d
  %.sroa.0.0.copyload.i104 = load ptr, ptr %i.d, align 8, !tbaa !355
  %.sroa.01.0.copyload.i105 = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355 ; 2 uses
  %i.l = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i105, ptr noundef %.sroa.0.0.copyload.i104, i64 noundef %.sroa.speculated.i.i.i102) #34
  %.fr.i.i.i106 = freeze i32 %i.l                 ; 2 uses
  %.not.not.i.i.i107 = icmp eq i32 %.fr.i.i.i106, 0
  br i1 %.not.not.i.i.i107, label %.thread.i.i.i111, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112

.thread.i.i.i111:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i103, %bb.d
  %i.m = icmp ult i64 %.sroa.22.0.copyload.i99, %.sroa.2.0.copyload.i101
  br i1 %i.m, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130, label %.thread.i.i.i111._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread_crit_edge

.thread.i.i.i111._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread_crit_edge: ; preds = %.thread.i.i.i111
  %.sroa.0113.0.copyload.pre = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i103
  %i.n = icmp slt i32 %.fr.i.i.i106, 0
  br i1 %i.n, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130: ; preds = %.thread.i.i.i111, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.ptr.i, i64 24, i1 false), !tbaa.struct !974
  %i.o = icmp samesign ugt i64 %.020.i.idx.i, 24
  br i1 %i.o, label %bb.e, label %bb.f, !prof !425

bb.e:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

bb.f:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130
  %i.p = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.g

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread: ; preds = %.thread.i.i.i111._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112
  %.sroa.0113.0.copyload = phi ptr [ %.sroa.0113.0.copyload.pre, %.thread.i.i.i111._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread_crit_edge ], [ %.sroa.01.0.copyload.i105, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112 ] ; 3 uses
  %.sroa.8.0..020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..020.i.ptr.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %.sroa.2.0.copyload.i86 = load i64, ptr %.sroa.2.0..sroa_idx.i85, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i87 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i86, i64 %.sroa.22.0.copyload.i99) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i87, 0
  br i1 %i.q, label %.thread.i.i.i96, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i88

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i88: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread
  %.sroa.0.0.copyload.i89 = load ptr, ptr %.pn19.i.i, align 8, !tbaa !355
  %i.r = tail call i32 @memcmp(ptr noundef %.sroa.0113.0.copyload, ptr noundef %.sroa.0.0.copyload.i89, i64 noundef %.sroa.speculated.i.i.i87) #34
  %.fr.i.i.i91 = freeze i32 %i.r                  ; 2 uses
  %.not.not.i.i.i92 = icmp eq i32 %.fr.i.i.i91, 0
  br i1 %.not.not.i.i.i92, label %.thread.i.i.i96, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97

.thread.i.i.i96:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i88, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread
  %i.s = icmp ult i64 %.sroa.22.0.copyload.i99, %.sroa.2.0.copyload.i86
  br i1 %i.s, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i88
  %i.t = icmp slt i32 %.fr.i.i.i91, 0
  br i1 %i.t, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.thread.i.i.i96, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82 ], [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82 ], [ %.020.i.ptr.i, %.lr.ph.i.i.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i70 = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -16
  %.sroa.2.0.copyload.i71 = load i64, ptr %.sroa.2.0..sroa_idx.i70, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i72 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i71, i64 %.sroa.22.0.copyload.i99) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i72, 0
  br i1 %i.u, label %.thread.i.i.i81, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i74 = load ptr, ptr %.0.i.i.i, align 8, !tbaa !355
  %i.v = tail call i32 @memcmp(ptr noundef %.sroa.0113.0.copyload, ptr noundef %.sroa.0.0.copyload.i74, i64 noundef %.sroa.speculated.i.i.i72) #34
  %.fr.i.i.i76 = freeze i32 %i.v                  ; 2 uses
  %.not.not.i.i.i77 = icmp eq i32 %.fr.i.i.i76, 0
  %.inv.i.i.i78 = icmp sgt i32 %.fr.i.i.i76, -1
  %spec.select.i.i.i79 = select i1 %.inv.i.i.i78, i32 1, i32 -1
  br i1 %.not.not.i.i.i77, label %.thread.i.i.i81, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82

.thread.i.i.i81:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73, %.lr.ph.i.i.i
  %i.w = icmp ult i64 %.sroa.22.0.copyload.i99, %.sroa.2.0.copyload.i71
  br i1 %i.w, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82: ; preds = %.thread.i.i.i81, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73
  %.1.i.i.i80 = phi i32 [ %spec.select.i.i.i79, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73 ], [ -1, %.thread.i.i.i81 ]
  %i.x = icmp slt i32 %.1.i.i.i80, 0
  br i1 %i.x, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i: ; preds = %.thread.i.i.i81, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82, %.thread.i.i.i96, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97 ], [ %.020.i.ptr.i, %.thread.i.i.i96 ], [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82 ], [ %.012.i.i.i, %.thread.i.i.i81 ] ; 3 uses
  store ptr %.sroa.0113.0.copyload, ptr %.09.lcssa.i.i.i, align 8, !tbaa !355
  %.sroa.6.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i99, ptr %.sroa.6.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 24 ; 2 uses
  %.not.i.i = icmp eq i64 %.020.i.add.i, 384
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, label %bb.d, !llvm.loop !94

_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.ai, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i ], [ %i.y, %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i ] ; 8 uses
  %.sroa.0117.0.copyload = load ptr, ptr %.08.i.i, align 8, !tbaa !355 ; 3 uses
  %.sroa.6119.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %i.z = load <2 x i64>, ptr %.sroa.6119.0..08.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.6119.0.copyload = load i64, ptr %.sroa.6119.0..08.i.i.sroa_idx, align 8, !tbaa !340 ; 4 uses
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i55 = getelementptr inbounds i8, ptr %.08.i.i, i64 -16
  %.sroa.2.0.copyload.i56 = load i64, ptr %.sroa.2.0..sroa_idx.i55, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i57 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i56, i64 %.sroa.6119.0.copyload) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i57, 0
  br i1 %i.aa, label %.thread.i.i.i66, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i58

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i58: ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i59 = load ptr, ptr %.010.i.i.i, align 8, !tbaa !355
  %i.ab = tail call i32 @memcmp(ptr noundef %.sroa.0117.0.copyload, ptr noundef %.sroa.0.0.copyload.i59, i64 noundef %.sroa.speculated.i.i.i57) #34
  %.fr.i.i.i61 = freeze i32 %i.ab                 ; 2 uses
  %.not.not.i.i.i62 = icmp eq i32 %.fr.i.i.i61, 0
  br i1 %.not.not.i.i.i62, label %.thread.i.i.i66, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67

.thread.i.i.i66:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i58, %.lr.ph.i.i
  %i.ac = icmp ult i64 %.sroa.6119.0.copyload, %.sroa.2.0.copyload.i56
  br i1 %i.ac, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i58
  %i.ad = icmp slt i32 %.fr.i.i.i61, 0
  br i1 %i.ad, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i.preheader:                         ; preds = %.thread.i.i.i66, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67
  br label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i14.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52 ], [ %.010.i.i.i, %.lr.ph.i.i14.i.preheader ] ; 6 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52 ], [ %.08.i.i, %.lr.ph.i.i14.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i15.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i40 = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16
  %.sroa.2.0.copyload.i41 = load i64, ptr %.sroa.2.0..sroa_idx.i40, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i42 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i41, i64 %.sroa.6119.0.copyload) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i42, 0
  br i1 %i.ae, label %.thread.i.i.i51, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43: ; preds = %.lr.ph.i.i14.i
  %.sroa.0.0.copyload.i44 = load ptr, ptr %.0.i.i17.i, align 8, !tbaa !355
  %i.af = tail call i32 @memcmp(ptr noundef %.sroa.0117.0.copyload, ptr noundef %.sroa.0.0.copyload.i44, i64 noundef %.sroa.speculated.i.i.i42) #34
  %.fr.i.i.i46 = freeze i32 %i.af                 ; 2 uses
  %.not.not.i.i.i47 = icmp eq i32 %.fr.i.i.i46, 0
  %.inv.i.i.i48 = icmp sgt i32 %.fr.i.i.i46, -1
  %spec.select.i.i.i49 = select i1 %.inv.i.i.i48, i32 1, i32 -1
  br i1 %.not.not.i.i.i47, label %.thread.i.i.i51, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52

.thread.i.i.i51:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43, %.lr.ph.i.i14.i
  %i.ag = icmp ult i64 %.sroa.6119.0.copyload, %.sroa.2.0.copyload.i41
  br i1 %i.ag, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52: ; preds = %.thread.i.i.i51, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43
  %.1.i.i.i50 = phi i32 [ %spec.select.i.i.i49, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43 ], [ -1, %.thread.i.i.i51 ]
  %i.ah = icmp slt i32 %.1.i.i.i50, 0
  br i1 %i.ah, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i: ; preds = %.thread.i.i.i51, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52, %.thread.i.i.i66, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67 ], [ %.08.i.i, %.thread.i.i.i66 ], [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52 ], [ %.012.i.i15.i, %.thread.i.i.i51 ] ; 2 uses
  store ptr %.sroa.0117.0.copyload, ptr %.09.lcssa.i.i12.i, align 8, !tbaa !355
  %.sroa.6119.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store <2 x i64> %i.z, ptr %.sroa.6119.0..09.lcssa.i.i12.i.sroa_idx, align 8, !tbaa !340
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.ai, %i.e
  br i1 %.not.i13.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !95

bb.h:                                             ; preds = %bb.b
  %.not18.i.i = icmp eq i32 %i.b, 1
  br i1 %.not18.i.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.h
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.2.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.l
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.l ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.l ], [ %i.d, %.lr.ph.i19.i.preheader ] ; 5 uses
  %.sroa.22.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.22.0.copyload.i24 = load i64, ptr %.sroa.22.0..sroa_idx.i23, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i26 = load i64, ptr %.sroa.2.0..sroa_idx.i25, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i27 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i26, i64 %.sroa.22.0.copyload.i24) ; 2 uses
  %i.aj = icmp eq i64 %.sroa.speculated.i.i.i27, 0
  br i1 %i.aj, label %.thread.i.i.i36, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28: ; preds = %.lr.ph.i19.i
  %.sroa.0.0.copyload.i29 = load ptr, ptr %i.d, align 8, !tbaa !355
  %.sroa.01.0.copyload.i30 = load ptr, ptr %.020.i20.i, align 8, !tbaa !355 ; 2 uses
  %i.ak = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i30, ptr noundef %.sroa.0.0.copyload.i29, i64 noundef %.sroa.speculated.i.i.i27) #34
  %.fr.i.i.i31 = freeze i32 %i.ak                 ; 2 uses
  %.not.not.i.i.i32 = icmp eq i32 %.fr.i.i.i31, 0
  br i1 %.not.not.i.i.i32, label %.thread.i.i.i36, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37

.thread.i.i.i36:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28, %.lr.ph.i19.i
  %i.al = icmp ult i64 %.sroa.22.0.copyload.i24, %.sroa.2.0.copyload.i26
  br i1 %i.al, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142, label %.thread.i.i.i36._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread_crit_edge

.thread.i.i.i36._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread_crit_edge: ; preds = %.thread.i.i.i36
  %.sroa.0123.0.copyload.pre = load ptr, ptr %.020.i20.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28
  %i.am = icmp slt i32 %.fr.i.i.i31, 0
  br i1 %i.am, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142: ; preds = %.thread.i.i.i36, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.020.i20.i, i64 24, i1 false), !tbaa.struct !974
  %i.an = ptrtoint ptr %.020.i20.i to i64
  %i.ao = sub i64 %i.an, %i.i                     ; 4 uses
  %i.ap = icmp sgt i64 %i.ao, 24
  br i1 %i.ap, label %bb.i, label %bb.j, !prof !425

bb.i:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 48
  %.neg25.i31.i = udiv exact i64 %i.ao, 24
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %i.ar = getelementptr inbounds [24 x i8], ptr %i.aq, i64 %.neg25.neg.i32.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.ao, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.j:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142
  %i.as = icmp eq i64 %i.ao, 24
  br i1 %i.as, label %bb.k, label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i: ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.l

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread: ; preds = %.thread.i.i.i36._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37
  %.sroa.0123.0.copyload = phi ptr [ %.sroa.0123.0.copyload.pre, %.thread.i.i.i36._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread_crit_edge ], [ %.sroa.01.0.copyload.i30, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37 ] ; 3 uses
  %.sroa.8127.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16
  %.sroa.8127.0.copyload = load i64, ptr %.sroa.8127.0..020.i20.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %.sroa.2.0.copyload.i11 = load i64, ptr %.sroa.2.0..sroa_idx.i10, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i11, i64 %.sroa.22.0.copyload.i24) ; 2 uses
  %i.au = icmp eq i64 %.sroa.speculated.i.i.i12, 0
  br i1 %i.au, label %.thread.i.i.i21, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i13

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i13: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread
  %.sroa.0.0.copyload.i14 = load ptr, ptr %.pn19.i21.i, align 8, !tbaa !355
  %i.av = tail call i32 @memcmp(ptr noundef %.sroa.0123.0.copyload, ptr noundef %.sroa.0.0.copyload.i14, i64 noundef %.sroa.speculated.i.i.i12) #34
  %.fr.i.i.i16 = freeze i32 %i.av                 ; 2 uses
  %.not.not.i.i.i17 = icmp eq i32 %.fr.i.i.i16, 0
  br i1 %.not.not.i.i.i17, label %.thread.i.i.i21, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22

.thread.i.i.i21:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i13, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread
  %i.aw = icmp ult i64 %.sroa.22.0.copyload.i24, %.sroa.2.0.copyload.i11
  br i1 %i.aw, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i13
  %i.ax = icmp slt i32 %.fr.i.i.i16, 0
  br i1 %i.ax, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i.preheader:                         ; preds = %.thread.i.i.i21, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.pn19.i21.i, %.lr.ph.i.i26.i.preheader ] ; 6 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.020.i20.i, %.lr.ph.i.i26.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i27.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i, i64 %.sroa.22.0.copyload.i24) ; 2 uses
  %i.ay = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.ay, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i26.i
  %.sroa.0.0.copyload.i = load ptr, ptr %.0.i.i29.i, align 8, !tbaa !355
  %i.az = tail call i32 @memcmp(ptr noundef %.sroa.0123.0.copyload, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.speculated.i.i.i) #34
  %.fr.i.i.i = freeze i32 %i.az                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %.inv.i.i.i = icmp sgt i32 %.fr.i.i.i, -1
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %.lr.ph.i.i26.i
  %i.ba = icmp ult i64 %.sroa.22.0.copyload.i24, %.sroa.2.0.copyload.i
  br i1 %i.ba, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit: ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i ], [ -1, %.thread.i.i.i ]
  %i.bb = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.bb, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i: ; preds = %.thread.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, %.thread.i.i.i21, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22 ], [ %.020.i20.i, %.thread.i.i.i21 ], [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.012.i.i27.i, %.thread.i.i.i ] ; 3 uses
  store ptr %.sroa.0123.0.copyload, ptr %.09.lcssa.i.i23.i, align 8, !tbaa !355
  %.sroa.6125.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i64 %.sroa.22.0.copyload.i24, ptr %.sroa.6125.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8127.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 16
  store i64 %.sroa.8127.0.copyload, ptr %.sroa.8127.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  br label %bb.l

bb.l:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 24 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.e
  br i1 %.not.i25.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !94

_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit: ; preds = %bb.l, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, %bb.h, %bb.a
  %i.bc = tail call noundef i32 @llvm.bswap.i32(i32 %3)
  %i.bd = zext i32 %i.bc to i64
  %i.be = load ptr, ptr %4, align 8, !tbaa !312
  %i.bf = load i32, ptr %i.a, align 8, !tbaa !313
  %i.bg = zext i32 %i.bf to i64
  %i.bh = load ptr, ptr %0, align 8, !tbaa !250
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 312
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.bd, ptr %i.be, i64 %i.bg) #31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4llvm12function_refIFvRKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEEEE11callback_fnIZN12_GLOBAL__N_113LLVMELFDumperIS5_E18printDependentLibsEvEUlS8_E_EEvlS8_(i64 %0, ptr nofree nonnull readnone align 1 captures(none) %1) #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvNS_9StringRefEmEE11callback_fnIZN12_GLOBAL__N_113LLVMELFDumperINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEE18printDependentLibsEvEUlS1_mE_EEvlS1_m(i64 noundef %0, ptr %1, i64 %2, i64 %3) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1400
  %i.b = getelementptr i8, ptr %.val, i64 1152
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !1397 ; 2 uses
  %i.c = load ptr, ptr %.val.val, align 8, !tbaa !250
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(44) %.val.val, ptr %1, i64 %2) #31, !inline_history !15994
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE0ELb0EEEE25getSectionContentsAsArrayINS0_18Elf_CGProfile_ImplIS4_EEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.1811") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %.0.copyload.i.i.i = load i32, ptr %i.a, align 1
  %.not = icmp eq i32 %.0.copyload.i.i.i, 134217728
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb0EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !16111)
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !16111 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !268, !alias.scope !16111
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !349  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !269  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %7, align 8, !tbaa !349, !alias.scope !16111
  %i.k = load i64, ptr %i.e, align 8, !tbaa !270
  store i64 %i.k, ptr %i.c, align 8, !tbaa !270, !alias.scope !16111
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !269, !alias.scope !16111
  store ptr %i.e, ptr %i.b, align 8, !tbaa !349
  store i64 0, ptr %i.m, align 8, !tbaa !269
  store i8 0, ptr %i.e, align 8, !tbaa !270
  call void @llvm.experimental.noalias.scope.decl(metadata !16112)
  %i.o = add i64 %i.l, -4611686018427387870
  %i.p = icmp ult i64 %i.o, 34
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !16112
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.173, i64 noundef 34) #31, !noalias !16112 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !268, !alias.scope !16112
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !349  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !269  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.s, ptr %6, align 8, !tbaa !349, !alias.scope !16112
  %i.z = load i64, ptr %i.t, align 8, !tbaa !270
  store i64 %i.z, ptr %i.r, align 8, !tbaa !270, !alias.scope !16112
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !269
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.e
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !269, !alias.scope !16112
  store ptr %i.t, ptr %i.q, align 8, !tbaa !349
  store i64 0, ptr %i.ab, align 8, !tbaa !269
  store i8 0, ptr %i.t, align 8, !tbaa !270
  store ptr %6, ptr %5, align 8, !alias.scope !16113
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ad, align 8, !alias.scope !16113
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.ae, align 8, !tbaa !352, !alias.scope !16113
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 11, ptr %i.af, align 1, !tbaa !353, !alias.scope !16113
  store ptr %5, ptr %4, align 8, !alias.scope !16114
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.174, ptr %i.ag, align 8, !alias.scope !16114
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.ah, align 8, !tbaa !352, !alias.scope !16114
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ai, align 1, !tbaa !353, !alias.scope !16114
  %.0.copyload.i.i.i42 = load i32, ptr %i.a, align 1
  %i.aj = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i42)
  %.sroa.0444.0.insert.ext = zext i32 %i.aj to i64
  %i.ak = inttoptr i64 %.sroa.0444.0.insert.ext to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !16115
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !16115
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.am, align 8, !tbaa !352, !alias.scope !16115
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 9, ptr %i.an, align 1, !tbaa !353, !alias.scope !16115
  %i.ao = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !16116 ; 2 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #31, !noalias !16116
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.ao, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 3, ptr nonnull %i.ap) #31, !noalias !16116
end_hunk_7
begin_hunk_8_@_ZNK12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE18printSymbolSectionERKNS2_12Elf_Sym_ImplIS5_EEjNS2_10DataRegionINS1_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEE:bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %i.dj) #31, !inline_history !47
  br label %_ZN4llvm8ExpectedIjED2Ev.exit

_ZN4llvm8ExpectedIjED2Ev.exit:                    ; preds = %bb.t, %bb.u, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.v

bb.v:                                             ; preds = %.sink.split.i, %_ZN4llvm8ExpectedIjED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE0ELm1ELm1EEEjLj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEESA_SA_SA_NS_8ArrayRefINS_9FlagEntryEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i32 %3, ptr %4, i64 %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef byval(%"class.llvm::ArrayRef.1044") align 8 %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %10 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %11 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SmallVector.1054", align 8 ; 13 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %.sroa.021.0.copyload = load ptr, ptr %9, align 8, !tbaa !1094
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.222.0.copyload = load i64, ptr %.sroa.222.0..sroa_idx, align 8, !tbaa !340 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.b, ptr %12, align 8, !tbaa !312
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  store i32 0, ptr %i.c, align 8, !tbaa !313
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 10, ptr %i.d, align 4, !tbaa !314
  %.idx.i = mul nuw nsw i64 %.sroa.222.0.copyload, 24
  %i.e = icmp ugt i64 %.sroa.222.0.copyload, 10
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(256) %12, ptr noundef nonnull %i.b, i64 noundef %.sroa.222.0.copyload, i64 noundef 24) #31
  %.pre8.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !313
  %i.f = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %12, align 8, !tbaa !312
  br label %bb.b

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.222.0.copyload, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i
  %i.g = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ %i.b, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.f, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 8 %.sroa.021.0.copyload, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !313
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %bb.b
  %i.i = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.j = trunc i64 %.sroa.222.0.copyload to i32
  %i.k = add i32 %i.i, %i.j                       ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !313
  %.idx = shl nuw nsw i64 %5, 3
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.not195 = icmp eq i64 %5, 0
  br i1 %.not195, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.m = call i32 @llvm.bswap.i32(i32 %3)         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre198 = load i32, ptr %i.c, align 8, !tbaa !313
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.o = phi i32 [ %.pre198, %._crit_edge.loopexit ], [ %i.k, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.idx.i37 = mul nuw nsw i64 %i.p, 24
  %i.q = load ptr, ptr %12, align 8, !tbaa !312   ; 19 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i37 ; 3 uses
  %i.s = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  call void @_ZSt16__introsort_loopIPN4llvm9FlagEntryElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef %i.q, ptr noundef nonnull %i.r, i64 noundef %i.u, ptr nonnull @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_)
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = icmp ugt i32 %i.o, 16
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %scevgep.i = getelementptr i8, ptr %i.q, i64 24
  %.sroa.2.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.020.i.idx.i = phi i64 [ 24, %bb.d ], [ %.020.i.add.i, %bb.h ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.q, %bb.d ], [ %.020.i.ptr.i, %bb.h ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.020.i.idx.i ; 9 uses
  %.sroa.22.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %.sroa.22.0.copyload.i133 = load i64, ptr %.sroa.22.0..sroa_idx.i132, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i135 = load i64, ptr %.sroa.2.0..sroa_idx.i134, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i136 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i135, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.x = icmp eq i64 %.sroa.speculated.i.i.i136, 0
  br i1 %i.x, label %.thread.i.i.i145, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137: ; preds = %bb.e
  %.sroa.0.0.copyload.i138 = load ptr, ptr %i.q, align 8, !tbaa !355
  %.sroa.01.0.copyload.i139 = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355 ; 2 uses
  %i.y = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i139, ptr noundef %.sroa.0.0.copyload.i138, i64 noundef %.sroa.speculated.i.i.i136) #34
  %.fr.i.i.i140 = freeze i32 %i.y                 ; 2 uses
  %.not.not.i.i.i141 = icmp eq i32 %.fr.i.i.i140, 0
  br i1 %.not.not.i.i.i141, label %.thread.i.i.i145, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146

.thread.i.i.i145:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137, %bb.e
  %i.z = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i135
  br i1 %i.z, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169, label %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge

.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge: ; preds = %.thread.i.i.i145
  %.sroa.0152.0.copyload.pre = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137
  %i.aa = icmp slt i32 %.fr.i.i.i140, 0
  br i1 %i.aa, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169: ; preds = %.thread.i.i.i145, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.ptr.i, i64 24, i1 false), !tbaa.struct !974
  %i.ab = icmp samesign ugt i64 %.020.i.idx.i, 24
  br i1 %i.ab, label %bb.f, label %bb.g, !prof !425

bb.f:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

bb.g:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.h

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread: ; preds = %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146
  %.sroa.0152.0.copyload = phi ptr [ %.sroa.0152.0.copyload.pre, %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge ], [ %.sroa.01.0.copyload.i139, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146 ] ; 3 uses
  %.sroa.8.0..020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..020.i.ptr.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %.sroa.2.0.copyload.i120 = load i64, ptr %.sroa.2.0..sroa_idx.i119, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i121 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i120, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i.i.i121, 0
  br i1 %i.ad, label %.thread.i.i.i130, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread
  %.sroa.0.0.copyload.i123 = load ptr, ptr %.pn19.i.i, align 8, !tbaa !355
  %i.ae = call i32 @memcmp(ptr noundef %.sroa.0152.0.copyload, ptr noundef %.sroa.0.0.copyload.i123, i64 noundef %.sroa.speculated.i.i.i121) #34
  %.fr.i.i.i125 = freeze i32 %i.ae                ; 2 uses
  %.not.not.i.i.i126 = icmp eq i32 %.fr.i.i.i125, 0
  br i1 %.not.not.i.i.i126, label %.thread.i.i.i130, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131

.thread.i.i.i130:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread
  %i.af = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i120
  br i1 %i.af, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122
  %i.ag = icmp slt i32 %.fr.i.i.i125, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.thread.i.i.i130, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.020.i.ptr.i, %.lr.ph.i.i.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i104 = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -16
  %.sroa.2.0.copyload.i105 = load i64, ptr %.sroa.2.0..sroa_idx.i104, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i106 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i105, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.ah = icmp eq i64 %.sroa.speculated.i.i.i106, 0
  br i1 %i.ah, label %.thread.i.i.i115, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i108 = load ptr, ptr %.0.i.i.i, align 8, !tbaa !355
  %i.ai = call i32 @memcmp(ptr noundef %.sroa.0152.0.copyload, ptr noundef %.sroa.0.0.copyload.i108, i64 noundef %.sroa.speculated.i.i.i106) #34
  %.fr.i.i.i110 = freeze i32 %i.ai                ; 2 uses
  %.not.not.i.i.i111 = icmp eq i32 %.fr.i.i.i110, 0
  %.inv.i.i.i112 = icmp sgt i32 %.fr.i.i.i110, -1
  %spec.select.i.i.i113 = select i1 %.inv.i.i.i112, i32 1, i32 -1
  br i1 %.not.not.i.i.i111, label %.thread.i.i.i115, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116

.thread.i.i.i115:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107, %.lr.ph.i.i.i
  %i.aj = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i105
  br i1 %i.aj, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116: ; preds = %.thread.i.i.i115, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107
  %.1.i.i.i114 = phi i32 [ %spec.select.i.i.i113, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107 ], [ -1, %.thread.i.i.i115 ]
  %i.ak = icmp slt i32 %.1.i.i.i114, 0
  br i1 %i.ak, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i: ; preds = %.thread.i.i.i115, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116, %.thread.i.i.i130, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131 ], [ %.020.i.ptr.i, %.thread.i.i.i130 ], [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.012.i.i.i, %.thread.i.i.i115 ] ; 3 uses
  store ptr %.sroa.0152.0.copyload, ptr %.09.lcssa.i.i.i, align 8, !tbaa !355
  %.sroa.6.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i133, ptr %.sroa.6.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 24 ; 2 uses
  %.not.i.i = icmp eq i64 %.020.i.add.i, 384
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, label %bb.e, !llvm.loop !94

_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i: ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.av, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i ], [ %i.al, %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i ] ; 8 uses
  %.sroa.0156.0.copyload = load ptr, ptr %.08.i.i, align 8, !tbaa !355 ; 3 uses
  %.sroa.6158.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %i.am = load <2 x i64>, ptr %.sroa.6158.0..08.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.6158.0.copyload = load i64, ptr %.sroa.6158.0..08.i.i.sroa_idx, align 8, !tbaa !340 ; 4 uses
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i89 = getelementptr inbounds i8, ptr %.08.i.i, i64 -16
  %.sroa.2.0.copyload.i90 = load i64, ptr %.sroa.2.0..sroa_idx.i89, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i91 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i90, i64 %.sroa.6158.0.copyload) ; 2 uses
  %i.an = icmp eq i64 %.sroa.speculated.i.i.i91, 0
  br i1 %i.an, label %.thread.i.i.i100, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92: ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i93 = load ptr, ptr %.010.i.i.i, align 8, !tbaa !355
  %i.ao = call i32 @memcmp(ptr noundef %.sroa.0156.0.copyload, ptr noundef %.sroa.0.0.copyload.i93, i64 noundef %.sroa.speculated.i.i.i91) #34
  %.fr.i.i.i95 = freeze i32 %i.ao                 ; 2 uses
  %.not.not.i.i.i96 = icmp eq i32 %.fr.i.i.i95, 0
  br i1 %.not.not.i.i.i96, label %.thread.i.i.i100, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101

.thread.i.i.i100:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92, %.lr.ph.i.i
  %i.ap = icmp ult i64 %.sroa.6158.0.copyload, %.sroa.2.0.copyload.i90
  br i1 %i.ap, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92
  %i.aq = icmp slt i32 %.fr.i.i.i95, 0
  br i1 %i.aq, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i.preheader:                         ; preds = %.thread.i.i.i100, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101
  br label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i14.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.010.i.i.i, %.lr.ph.i.i14.i.preheader ] ; 6 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.08.i.i, %.lr.ph.i.i14.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i15.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i74 = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16
  %.sroa.2.0.copyload.i75 = load i64, ptr %.sroa.2.0..sroa_idx.i74, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i76 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i75, i64 %.sroa.6158.0.copyload) ; 2 uses
  %i.ar = icmp eq i64 %.sroa.speculated.i.i.i76, 0
  br i1 %i.ar, label %.thread.i.i.i85, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77: ; preds = %.lr.ph.i.i14.i
  %.sroa.0.0.copyload.i78 = load ptr, ptr %.0.i.i17.i, align 8, !tbaa !355
  %i.as = call i32 @memcmp(ptr noundef %.sroa.0156.0.copyload, ptr noundef %.sroa.0.0.copyload.i78, i64 noundef %.sroa.speculated.i.i.i76) #34
  %.fr.i.i.i80 = freeze i32 %i.as                 ; 2 uses
  %.not.not.i.i.i81 = icmp eq i32 %.fr.i.i.i80, 0
  %.inv.i.i.i82 = icmp sgt i32 %.fr.i.i.i80, -1
  %spec.select.i.i.i83 = select i1 %.inv.i.i.i82, i32 1, i32 -1
  br i1 %.not.not.i.i.i81, label %.thread.i.i.i85, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86

.thread.i.i.i85:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77, %.lr.ph.i.i14.i
  %i.at = icmp ult i64 %.sroa.6158.0.copyload, %.sroa.2.0.copyload.i75
  br i1 %i.at, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86: ; preds = %.thread.i.i.i85, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77
  %.1.i.i.i84 = phi i32 [ %spec.select.i.i.i83, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77 ], [ -1, %.thread.i.i.i85 ]
  %i.au = icmp slt i32 %.1.i.i.i84, 0
  br i1 %i.au, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i: ; preds = %.thread.i.i.i85, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86, %.thread.i.i.i100, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101 ], [ %.08.i.i, %.thread.i.i.i100 ], [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.012.i.i15.i, %.thread.i.i.i85 ] ; 2 uses
  store ptr %.sroa.0156.0.copyload, ptr %.09.lcssa.i.i12.i, align 8, !tbaa !355
  %.sroa.6158.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store <2 x i64> %i.am, ptr %.sroa.6158.0..09.lcssa.i.i12.i.sroa_idx, align 8, !tbaa !340
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.av, %i.r
  br i1 %.not.i13.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !95

bb.i:                                             ; preds = %bb.c
  %.not18.i.i = icmp eq i32 %i.o, 1
  br i1 %.not18.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.i
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.2.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.m
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.m ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.m ], [ %i.q, %.lr.ph.i19.i.preheader ] ; 5 uses
  %.sroa.22.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.22.0.copyload.i58 = load i64, ptr %.sroa.22.0..sroa_idx.i57, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i60 = load i64, ptr %.sroa.2.0..sroa_idx.i59, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i61 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i60, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.aw = icmp eq i64 %.sroa.speculated.i.i.i61, 0
  br i1 %i.aw, label %.thread.i.i.i70, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62: ; preds = %.lr.ph.i19.i
  %.sroa.0.0.copyload.i63 = load ptr, ptr %i.q, align 8, !tbaa !355
  %.sroa.01.0.copyload.i64 = load ptr, ptr %.020.i20.i, align 8, !tbaa !355 ; 2 uses
  %i.ax = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i64, ptr noundef %.sroa.0.0.copyload.i63, i64 noundef %.sroa.speculated.i.i.i61) #34
  %.fr.i.i.i65 = freeze i32 %i.ax                 ; 2 uses
  %.not.not.i.i.i66 = icmp eq i32 %.fr.i.i.i65, 0
  br i1 %.not.not.i.i.i66, label %.thread.i.i.i70, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71

.thread.i.i.i70:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62, %.lr.ph.i19.i
  %i.ay = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i60
  br i1 %i.ay, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181, label %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge

.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge: ; preds = %.thread.i.i.i70
  %.sroa.0162.0.copyload.pre = load ptr, ptr %.020.i20.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62
  %i.az = icmp slt i32 %.fr.i.i.i65, 0
  br i1 %i.az, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181: ; preds = %.thread.i.i.i70, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %.020.i20.i, i64 24, i1 false), !tbaa.struct !974
  %i.ba = ptrtoint ptr %.020.i20.i to i64
  %i.bb = sub i64 %i.ba, %i.v                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 24
  br i1 %i.bc, label %bb.j, label %bb.k, !prof !425

bb.j:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 48
  %.neg25.i31.i = udiv exact i64 %i.bb, 24
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %i.be = getelementptr inbounds [24 x i8], ptr %i.bd, i64 %.neg25.neg.i32.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.bb, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.k:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181
  %i.bf = icmp eq i64 %i.bb, 24
  br i1 %i.bf, label %bb.l, label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.m

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread: ; preds = %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71
  %.sroa.0162.0.copyload = phi ptr [ %.sroa.0162.0.copyload.pre, %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge ], [ %.sroa.01.0.copyload.i64, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71 ] ; 3 uses
  %.sroa.8166.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16
  %.sroa.8166.0.copyload = load i64, ptr %.sroa.8166.0..020.i20.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %.sroa.2.0.copyload.i45 = load i64, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i46 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i45, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.bh = icmp eq i64 %.sroa.speculated.i.i.i46, 0
  br i1 %i.bh, label %.thread.i.i.i55, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread
  %.sroa.0.0.copyload.i48 = load ptr, ptr %.pn19.i21.i, align 8, !tbaa !355
  %i.bi = call i32 @memcmp(ptr noundef %.sroa.0162.0.copyload, ptr noundef %.sroa.0.0.copyload.i48, i64 noundef %.sroa.speculated.i.i.i46) #34
  %.fr.i.i.i50 = freeze i32 %i.bi                 ; 2 uses
  %.not.not.i.i.i51 = icmp eq i32 %.fr.i.i.i50, 0
  br i1 %.not.not.i.i.i51, label %.thread.i.i.i55, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56

.thread.i.i.i55:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread
  %i.bj = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i45
  br i1 %i.bj, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47
  %i.bk = icmp slt i32 %.fr.i.i.i50, 0
  br i1 %i.bk, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i.preheader:                         ; preds = %.thread.i.i.i55, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.pn19.i21.i, %.lr.ph.i.i26.i.preheader ] ; 6 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.020.i20.i, %.lr.ph.i.i26.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i27.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i39 = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16
  %.sroa.2.0.copyload.i40 = load i64, ptr %.sroa.2.0..sroa_idx.i39, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i40, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.bl = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.bl, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i26.i
  %.sroa.0.0.copyload.i41 = load ptr, ptr %.0.i.i29.i, align 8, !tbaa !355
  %i.bm = call i32 @memcmp(ptr noundef %.sroa.0162.0.copyload, ptr noundef %.sroa.0.0.copyload.i41, i64 noundef %.sroa.speculated.i.i.i) #34
  %.fr.i.i.i = freeze i32 %i.bm                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %.inv.i.i.i = icmp sgt i32 %.fr.i.i.i, -1
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %.lr.ph.i.i26.i
  %i.bn = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i40
  br i1 %i.bn, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit: ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i ], [ -1, %.thread.i.i.i ]
  %i.bo = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.bo, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i: ; preds = %.thread.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, %.thread.i.i.i55, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56 ], [ %.020.i20.i, %.thread.i.i.i55 ], [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.012.i.i27.i, %.thread.i.i.i ] ; 3 uses
  store ptr %.sroa.0162.0.copyload, ptr %.09.lcssa.i.i23.i, align 8, !tbaa !355
  %.sroa.6164.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i64 %.sroa.22.0.copyload.i58, ptr %.sroa.6164.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8166.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 16
  store i64 %.sroa.8166.0.copyload, ptr %.sroa.8166.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 24 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.r
  br i1 %.not.i25.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !94

_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, %bb.i, %._crit_edge
  %i.bp = call noundef i32 @llvm.bswap.i32(i32 %3)
  %i.bq = zext i32 %i.bp to i64
  %i.br = load ptr, ptr %12, align 8, !tbaa !312
  %i.bs = load i32, ptr %i.c, align 8, !tbaa !313
  %i.bt = zext i32 %i.bs to i64
  %i.bu = load ptr, ptr %0, align 8, !tbaa !250
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 312
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.bq, ptr %i.br, i64 %i.bt) #31
  %i.bx = load ptr, ptr %12, align 8, !tbaa !312  ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.b
  br i1 %i.by, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit
  call void @free(ptr noundef %i.bx) #31
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit: ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  ret void

bb.o:                                             ; preds = %.lr.ph, %bb.x
  %.0196 = phi ptr [ %4, %.lr.ph ], [ %i.cz, %bb.x ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0196, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !780 ; 10 uses
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = and i32 %i.ca, %6
  %.not33 = icmp eq i32 %i.cc, 0
  br i1 %.not33, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cd = and i32 %i.ca, %7
  %.not34 = icmp eq i32 %i.cd, 0
  br i1 %.not34, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ce = and i32 %i.ca, %8
  %.not35 = icmp eq i32 %i.ce, 0
  %spec.select = select i1 %.not35, i32 0, i32 %8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.032 = phi i32 [ %spec.select, %bb.r ], [ %6, %bb.p ], [ %7, %bb.q ] ; 2 uses
  %i.cf = and i32 %.032, %i.ca
  %.not36 = icmp eq i32 %i.cf, 0
  br i1 %.not36, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cg = and i32 %i.ca, %i.m
  %i.ch = icmp eq i32 %i.cg, %i.ca
  br i1 %i.ch, label %bb.u, label %bb.x

.critedge:                                        ; preds = %bb.s
  %i.ci = and i32 %.032, %i.m
  %i.cj = icmp eq i32 %i.ci, %i.ca
  br i1 %i.cj, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.critedge, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.ck = load i16, ptr %.0196, align 4, !tbaa !389
  %i.cl = zext i16 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.0196, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0196, i64 2
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !270
  %i.cp = zext i8 %i.co to i64                    ; 2 uses
  store ptr %i.cm, ptr %13, align 8
  store i64 %i.cp, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !396
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !313 ; 3 uses
  %i.cr = load i32, ptr %i.d, align 4, !tbaa !314
  %.not.i = icmp ult i32 %i.cq, %i.cr
  br i1 %.not.i, label %bb.w, label %bb.v, !prof !425

bb.v:                                             ; preds = %bb.u
  %i.cs = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE18growAndEmplaceBackIJNS_9StringRefEjEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.ct = zext i32 %i.cq to i64
  %i.cu = load ptr, ptr %12, align 8, !tbaa !312
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.ct ; 3 uses
  store ptr %i.cm, ptr %i.cv, align 8, !tbaa !355
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.cp, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !340
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = zext i32 %i.ca to i64
  store i64 %i.cx, ptr %i.cw, align 8, !tbaa !1098
  %i.cy = add nuw i32 %i.cq, 1
  store i32 %i.cy, ptr %i.c, align 8, !tbaa !313
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %.critedge, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit, %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %.0196, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cz, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %bb.o
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEEC2ERKNS2_13ELFObjectFileIS5_EERNS1_13ScopedPrinterE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 8 dereferenceable(209) %1, ptr noundef nonnull align 8 dereferenceable(44) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Expected.1877", align 8 ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Expected.1877", align 8 ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %9 = alloca %"class.llvm::Expected.1877", align 8 ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %12 = alloca %"class.llvm::Expected.1877", align 8 ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %15 = alloca %"class.llvm::Expected.1877", align 8 ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %18 = alloca %"class.llvm::Expected.1877", align 8 ; 4 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %21 = alloca %"class.llvm::Expected.1877", align 8 ; 4 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %24 = alloca %"class.llvm::Expected.1877", align 8 ; 4 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %27 = alloca %"class.llvm::Expected.1877", align 8 ; 4 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %29 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %30 = alloca %"class.llvm::Expected.1904", align 8 ; 9 uses
  %31 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %34 = alloca %"class.llvm::Error", align 8      ; 6 uses
  %35 = alloca %"class.llvm::Expected.1877", align 8 ; 6 uses
  %36 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 6 uses
  %37 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %38 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %39 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %40 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %41 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %43 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %44 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %47 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %50 = alloca %"struct.(anonymous namespace)::DynRegionInfo", align 8 ; 17 uses
  %51 = alloca %"struct.(anonymous namespace)::DynRegionInfo", align 8 ; 7 uses
  %52 = alloca %"class.llvm::Expected.145", align 8 ; 13 uses
  %53 = alloca %"struct.(anonymous namespace)::DynRegionInfo", align 8 ; 17 uses
  %54 = alloca %"class.llvm::Expected.145", align 8 ; 12 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %56 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %62 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %63 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %64 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %65 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %66 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %67 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %68 = alloca %"class.llvm::Expected.1877", align 8 ; 3 uses
  %69 = alloca %"class.llvm::Expected.145", align 8 ; 12 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %71 = alloca %"class.llvm::Expected.148", align 8 ; 8 uses
  %72 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_8
begin_hunk_9_@_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE34getSymbolIndexesForFunctionAddressEmSt8optionalIPKNS2_13Elf_Shdr_ImplIS5_EEE:bb.a
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !269 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 16
  call void @llvm.assume(i1 %i.dw)
  %i.dx = add nuw nsw i64 %i.dv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.ds, i64 %i.dx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.dr, ptr %10, align 8, !tbaa !349, !alias.scope !21687
  %i.dy = load i64, ptr %i.ds, align 8, !tbaa !270
  store i64 %i.dy, ptr %i.ad, align 8, !tbaa !270, !alias.scope !21687
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !269
  store i64 %i.ea, ptr %i.ae, align 8, !tbaa !269, !alias.scope !21687
  store ptr %i.ds, ptr %i.dq, align 8, !tbaa !349
  store i64 0, ptr %i.dz, align 8, !tbaa !269
  store i8 0, ptr %i.ds, align 8, !tbaa !270
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i
  store i8 4, ptr %i.af, align 8, !tbaa !352
  store i8 1, ptr %i.ag, align 1, !tbaa !353
  store ptr %10, ptr %9, align 8, !tbaa !270
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(34) %9) #31
  %i.eb = load ptr, ptr %10, align 8, !tbaa !349  ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.ad
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.ed = load i64, ptr %i.ad, align 8, !tbaa !270
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %i.ef = load ptr, ptr %13, align 8, !tbaa !349  ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.ac
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eh = load i64, ptr %i.ac, align 8, !tbaa !270
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  %i.ej = load ptr, ptr %14, align 8, !tbaa !348  ; 3 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.el = load ptr, ptr %i.ej, align 8, !tbaa !250
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.ej) #31, !inline_history !0
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.eo = load ptr, ptr %11, align 8, !tbaa !349  ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.z
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.eq = load i64, ptr %i.z, align 8, !tbaa !270
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  %i.es = load ptr, ptr %12, align 8, !tbaa !349  ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.x
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.eu = load i64, ptr %i.x, align 8, !tbaa !270
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.ew = load ptr, ptr %8, align 8, !tbaa !349   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.ah
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.ey = load i64, ptr %i.ah, align 8, !tbaa !270
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.s:                                             ; preds = %_ZNK4llvm6object13ELFObjectFileINS0_7ELFTypeILNS_10endiannessE1ELb1EEEE11toSymbolRefEPKNS0_13Elf_Shdr_ImplIS4_EEj.exit
  %i.fa = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.fa, 0 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1079 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 24 ; 3 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !672
  %.not.i62 = icmp eq ptr %i.fd, %i.ff
  br i1 %.not.i62, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.ai, ptr %i.fd, align 4, !tbaa !396
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store ptr %i.fg, ptr %i.fc, align 8, !tbaa !1079
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.u:                                             ; preds = %bb.s
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !671 ; 4 uses
  %i.fi = ptrtoint ptr %i.fd to i64
  %i.fj = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fk = sub i64 %i.fi, %i.fj                    ; 5 uses
  %i.fl = icmp eq i64 %i.fk, 9223372036854775804
  br i1 %i.fl, label %bb.v, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #33
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.fm = ashr exact i64 %i.fk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fm, i64 1)
  %i.fn = add nsw i64 %.sroa.speculated.i.i.i, %i.fm ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.fm
  %i.fp = call i64 @llvm.umin.i64(i64 %i.fn, i64 2305843009213693951)
  %i.fq = select i1 %i.fo, i64 2305843009213693951, i64 %i.fp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fr = shl nuw nsw i64 %i.fq, 2
  %i.fs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #30 ; 4 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %i.fk ; 2 uses
  store i32 %i.ai, ptr %i.ft, align 4, !tbaa !396
  %i.fu = icmp sgt i64 %i.fk, 0
  br i1 %i.fu, label %bb.w, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.w:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fs, ptr align 4 %i.fh, i64 %i.fk, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.w, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %.not.i17.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.fw = load ptr, ptr %i.fe, align 8, !tbaa !672
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = sub i64 %i.fx, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fy) #32
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.fs, ptr %i.fb, align 8, !tbaa !671
  store ptr %i.fv, ptr %i.fc, align 8, !tbaa !1079
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fq
  store ptr %i.fz, ptr %i.fe, align 8, !tbaa !672
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.032 = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ 0, %bb.t ], [ 0, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %.1 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.0169, %bb.t ], [ %.0169, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ga = load i8, ptr %i.v, align 8
  %i.gb = trunc i8 %i.ga to i1
  br i1 %i.gb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.gc = load ptr, ptr %7, align 8, !tbaa !346   ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i64, label %bb.z, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.y
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !250
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(8) %i.gc) #31, !inline_history !79
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i, %bb.y, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br i1 %i.bk, label %._crit_edge.loopexit, label %.thread

.thread:                                          ; preds = %bb.z, %bb.d, %bb.e
  %.2153 = phi i1 [ %.0169, %bb.d ], [ %.1, %bb.z ], [ %.0169, %bb.e ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.039168, i64 24 ; 2 uses
  %.not40 = icmp eq ptr %i.gg, %i.s
  br i1 %.not40, label %._crit_edge.loopexit, label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.z, %.thread
  %.234.ph = phi i32 [ 2, %.thread ], [ %.032, %bb.z ]
  %.3.ph = phi i1 [ %.2153, %.thread ], [ %.1, %bb.z ]
  %i.gh = and i32 %.234.ph, -3
  %i.gi = icmp eq i32 %i.gh, 0
  br label %._crit_edge

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i66: ; preds = %_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb1EEEE7symbolsEPKNS0_13Elf_Shdr_ImplIS4_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !21688)
  %i.gj = load i64, ptr %6, align 8, !tbaa !346, !noalias !21688
  %i.gk = inttoptr i64 %i.gj to ptr
  store ptr null, ptr %6, align 8, !tbaa !346, !noalias !21688
  store ptr %i.gk, ptr %18, align 8, !tbaa !348, !alias.scope !21688
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr nofree noundef nonnull align 8 dereferenceable(8) %18) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !21689)
  %i.gl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.734, i64 noundef 33) #31, !noalias !21689 ; 6 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.gm, ptr %16, align 8, !tbaa !268, !alias.scope !21689
  %i.gn = load ptr, ptr %i.gl, align 8, !tbaa !349 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 5 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i66
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !269 ; 3 uses
  %i.gs = icmp ult i64 %i.gr, 16
  call void @llvm.assume(i1 %i.gs)
  %i.gt = add nuw nsw i64 %i.gr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gm, ptr noundef nonnull align 8 dereferenceable(1) %i.go, i64 %i.gt, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i66
  store ptr %i.gn, ptr %16, align 8, !tbaa !349, !alias.scope !21689
  %i.gu = load i64, ptr %i.go, align 8, !tbaa !270
  store i64 %i.gu, ptr %i.gm, align 8, !tbaa !270, !alias.scope !21689
  %.phi.trans.insert.i68 = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i68, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.gv = phi i64 [ %i.gr, %bb.aa ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.gv, ptr %i.gx, align 8, !tbaa !269, !alias.scope !21689
  store ptr %i.go, ptr %i.gl, align 8, !tbaa !349
  store i64 0, ptr %i.gw, align 8, !tbaa !269
  store i8 0, ptr %i.go, align 8, !tbaa !270
  %i.gy = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 4, ptr %i.gy, align 8, !tbaa !352
  %i.gz = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.gz, align 1, !tbaa !353
  store ptr %16, ptr %15, align 8, !tbaa !270
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(34) %15) #31
  %i.ha = load ptr, ptr %16, align 8, !tbaa !349  ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.gm
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.hc = load i64, ptr %i.gm, align 8, !tbaa !270
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %i.he = load ptr, ptr %17, align 8, !tbaa !349  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !270
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  %i.hj = load ptr, ptr %18, align 8, !tbaa !348  ; 3 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %_ZN4llvm5ErrorD2Ev.exit77, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !250
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(8) %i.hj) #31, !inline_history !0
  br label %_ZN4llvm5ErrorD2Ev.exit77

_ZN4llvm5ErrorD2Ev.exit77:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit, %_ZN4llvm5ErrorD2Ev.exit77
  %.335 = phi i1 [ true, %_ZN4llvm5ErrorD2Ev.exit77 ], [ true, %bb.c ], [ %i.gi, %._crit_edge.loopexit ]
  %.5 = phi i1 [ false, %_ZN4llvm5ErrorD2Ev.exit77 ], [ false, %bb.c ], [ %.3.ph, %._crit_edge.loopexit ]
  %i.ho = load i8, ptr %i.m, align 8
  %i.hp = trunc i8 %i.ho to i1
  br i1 %i.hp, label %bb.ac, label %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEEEEED2Ev.exit

bb.ac:                                            ; preds = %._crit_edge
  %i.hq = load ptr, ptr %6, align 8, !tbaa !346   ; 3 uses
  %.not.i.i79 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i79, label %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEEEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i80

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i80: ; preds = %bb.ac
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !250
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(8) %i.hq) #31, !inline_history !181
  br label %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEEEEED2Ev.exit

_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEEEEED2Ev.exit: ; preds = %._crit_edge, %bb.ac, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %.335, label %bb.ad, label %bb.ay

bb.ad:                                            ; preds = %bb.b, %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEEEEED2Ev.exit, %bb.a
  %i.hu = load ptr, ptr %i.d, align 8, !tbaa !1082, !noalias !21690 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !1083, !noalias !21690 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 1060
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !1084, !noalias !21690 ; 4 uses
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %.loopexit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ia = add i32 %i.hy, -1                       ; 2 uses
  %i.ib = mul i64 %2, -4658895280553007687        ; 2 uses
  %i.ic = lshr i64 %i.ib, 31
  %i.id = xor i64 %i.ic, %i.ib
  %i.ie = trunc i64 %i.id to i32
  %i.if = and i32 %i.ia, %i.ie                    ; 3 uses
  %i.ig = zext i32 %i.if to i64                   ; 2 uses
  %i.ih = lshr i64 %i.ig, 5
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !396, !noalias !21691
  %i.ik = and i32 %i.if, 31
  %i.il = lshr i32 %i.ij, %i.ik
  %i.im = trunc i32 %i.il to i1
  br i1 %i.im, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !507

.lr.ph.i.i.i.i:                                   ; preds = %bb.ae, %bb.af
  %i.in = phi i64 [ %i.it, %bb.af ], [ %i.ig, %bb.ae ]
  %.017.i.i.i.i = phi i32 [ %i.is, %bb.af ], [ %i.if, %bb.ae ]
  %i.io = getelementptr inbounds nuw [32 x i8], ptr %i.hu, i64 %i.in ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !340, !noalias !21691
  %i.iq = icmp eq i64 %2, %i.ip
  br i1 %i.iq, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit, label %bb.af, !prof !425

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ir = add nuw i32 %.017.i.i.i.i, 1
  %i.is = and i32 %i.ir, %i.ia                    ; 3 uses
  %i.it = zext i32 %i.is to i64                   ; 2 uses
  %i.iu = lshr i64 %i.it, 5
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !396, !noalias !21691
  %i.ix = and i32 %i.is, 31
  %i.iy = lshr i32 %i.iw, %i.ix
  %i.iz = trunc i32 %i.iy to i1
  br i1 %i.iz, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !508

.loopexit.i.i:                                    ; preds = %bb.af, %bb.ae, %bb.ad
  %i.ja = zext i32 %i.hy to i64                   ; 2 uses
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.hu, i64 %i.ja
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre192 = zext i32 %i.hy to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre192, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit ], [ %i.ja, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.io, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit ], [ %i.jb, %.loopexit.i.i ] ; 3 uses
  %i.jc = getelementptr inbounds nuw [32 x i8], ptr %i.hu, i64 %.pre-phi
  %i.jd = icmp eq ptr %.lcssa.sink.i.i, %i.jc
  br i1 %i.jd, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit
  %i.je = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !613 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !613 ; 3 uses
  %.not162174 = icmp eq ptr %i.jf, %i.jh
  br i1 %.not162174, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.ag
  %i.ji = trunc nuw i8 %4 to i1
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 1020
  %i.jo = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.jq = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.jr = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
end_hunk_9
begin_hunk_10_@_ZNK12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE24printSectionGroupMembersENS1_9StringRefEm:bb.a
  store i16 10272, ptr %i.r, align 1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !372
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.y, %bb.e ], [ %.0.i, %bb.f ]
  %i.ac = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %3) #31 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !371
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !372 ; 2 uses
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ult i64 %i.aj, 2
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.al = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull @.str.472, i64 noundef 2) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i16 2601, ptr %i.ag, align 1
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !372
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store ptr %i.an, ptr %i.af, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5

_ZN4llvm11raw_ostreamlsEPKc.exit5:                ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE22printEmptyGroupMessageEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1160) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1583, !nonnull !248, !align !338 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !250
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !371
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !372  ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ult i64 %i.m, 41
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull @.str.1056, i64 noundef 41) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.j, ptr noundef nonnull align 1 dereferenceable(41) @.str.1056, i64 41, i1 false)
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !372
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 41
  store ptr %i.q, ptr %i.i, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsINS_7support6detail31packed_endian_specific_integralImLNS_10endiannessE1ELm1ELm1EEEEEvNS_9StringRefET_RNS_15SmallVectorImplINS_9FlagEntryEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.llvm::FlagEntry", align 8  ; 4 uses
  %6 = alloca %"struct.llvm::FlagEntry", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !313  ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.c, 24
  %i.d = load ptr, ptr %4, align 8, !tbaa !312    ; 19 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i ; 3 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = xor i64 %i.g, 126
  tail call void @_ZSt16__introsort_loopIPN4llvm9FlagEntryElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef %i.d, ptr noundef nonnull %i.e, i64 noundef %i.h, ptr nonnull @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_)
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = icmp ugt i32 %i.b, 16
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %scevgep.i = getelementptr i8, ptr %i.d, i64 24
  %.sroa.2.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.020.i.idx.i = phi i64 [ 24, %bb.c ], [ %.020.i.add.i, %bb.g ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.d, %bb.c ], [ %.020.i.ptr.i, %bb.g ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.020.i.idx.i ; 9 uses
  %.sroa.22.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %.sroa.22.0.copyload.i99 = load i64, ptr %.sroa.22.0..sroa_idx.i98, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i101 = load i64, ptr %.sroa.2.0..sroa_idx.i100, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i102 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i101, i64 %.sroa.22.0.copyload.i99) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i102, 0
  br i1 %i.k, label %.thread.i.i.i111, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i103

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i103: ; preds = %bb.d
  %.sroa.0.0.copyload.i104 = load ptr, ptr %i.d, align 8, !tbaa !355
  %.sroa.01.0.copyload.i105 = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355 ; 2 uses
  %i.l = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i105, ptr noundef %.sroa.0.0.copyload.i104, i64 noundef %.sroa.speculated.i.i.i102) #34
  %.fr.i.i.i106 = freeze i32 %i.l                 ; 2 uses
  %.not.not.i.i.i107 = icmp eq i32 %.fr.i.i.i106, 0
  br i1 %.not.not.i.i.i107, label %.thread.i.i.i111, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112

.thread.i.i.i111:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i103, %bb.d
  %i.m = icmp ult i64 %.sroa.22.0.copyload.i99, %.sroa.2.0.copyload.i101
  br i1 %i.m, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130, label %.thread.i.i.i111._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread_crit_edge

.thread.i.i.i111._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread_crit_edge: ; preds = %.thread.i.i.i111
  %.sroa.0113.0.copyload.pre = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i103
  %i.n = icmp slt i32 %.fr.i.i.i106, 0
  br i1 %i.n, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130: ; preds = %.thread.i.i.i111, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.ptr.i, i64 24, i1 false), !tbaa.struct !974
  %i.o = icmp samesign ugt i64 %.020.i.idx.i, 24
  br i1 %i.o, label %bb.e, label %bb.f, !prof !425

bb.e:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

bb.f:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130
  %i.p = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.g

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread: ; preds = %.thread.i.i.i111._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112
  %.sroa.0113.0.copyload = phi ptr [ %.sroa.0113.0.copyload.pre, %.thread.i.i.i111._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread_crit_edge ], [ %.sroa.01.0.copyload.i105, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112 ] ; 3 uses
  %.sroa.8.0..020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..020.i.ptr.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %.sroa.2.0.copyload.i86 = load i64, ptr %.sroa.2.0..sroa_idx.i85, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i87 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i86, i64 %.sroa.22.0.copyload.i99) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i87, 0
  br i1 %i.q, label %.thread.i.i.i96, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i88

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i88: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread
  %.sroa.0.0.copyload.i89 = load ptr, ptr %.pn19.i.i, align 8, !tbaa !355
  %i.r = tail call i32 @memcmp(ptr noundef %.sroa.0113.0.copyload, ptr noundef %.sroa.0.0.copyload.i89, i64 noundef %.sroa.speculated.i.i.i87) #34
  %.fr.i.i.i91 = freeze i32 %i.r                  ; 2 uses
  %.not.not.i.i.i92 = icmp eq i32 %.fr.i.i.i91, 0
  br i1 %.not.not.i.i.i92, label %.thread.i.i.i96, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97

.thread.i.i.i96:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i88, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread
  %i.s = icmp ult i64 %.sroa.22.0.copyload.i99, %.sroa.2.0.copyload.i86
  br i1 %i.s, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i88
  %i.t = icmp slt i32 %.fr.i.i.i91, 0
  br i1 %i.t, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.thread.i.i.i96, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82 ], [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82 ], [ %.020.i.ptr.i, %.lr.ph.i.i.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i70 = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -16
  %.sroa.2.0.copyload.i71 = load i64, ptr %.sroa.2.0..sroa_idx.i70, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i72 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i71, i64 %.sroa.22.0.copyload.i99) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i72, 0
  br i1 %i.u, label %.thread.i.i.i81, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i74 = load ptr, ptr %.0.i.i.i, align 8, !tbaa !355
  %i.v = tail call i32 @memcmp(ptr noundef %.sroa.0113.0.copyload, ptr noundef %.sroa.0.0.copyload.i74, i64 noundef %.sroa.speculated.i.i.i72) #34
  %.fr.i.i.i76 = freeze i32 %i.v                  ; 2 uses
  %.not.not.i.i.i77 = icmp eq i32 %.fr.i.i.i76, 0
  %.inv.i.i.i78 = icmp sgt i32 %.fr.i.i.i76, -1
  %spec.select.i.i.i79 = select i1 %.inv.i.i.i78, i32 1, i32 -1
  br i1 %.not.not.i.i.i77, label %.thread.i.i.i81, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82

.thread.i.i.i81:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73, %.lr.ph.i.i.i
  %i.w = icmp ult i64 %.sroa.22.0.copyload.i99, %.sroa.2.0.copyload.i71
  br i1 %i.w, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82: ; preds = %.thread.i.i.i81, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73
  %.1.i.i.i80 = phi i32 [ %spec.select.i.i.i79, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73 ], [ -1, %.thread.i.i.i81 ]
  %i.x = icmp slt i32 %.1.i.i.i80, 0
  br i1 %i.x, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i: ; preds = %.thread.i.i.i81, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82, %.thread.i.i.i96, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97 ], [ %.020.i.ptr.i, %.thread.i.i.i96 ], [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82 ], [ %.012.i.i.i, %.thread.i.i.i81 ] ; 3 uses
  store ptr %.sroa.0113.0.copyload, ptr %.09.lcssa.i.i.i, align 8, !tbaa !355
  %.sroa.6.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i99, ptr %.sroa.6.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 24 ; 2 uses
  %.not.i.i = icmp eq i64 %.020.i.add.i, 384
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, label %bb.d, !llvm.loop !94

_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.ai, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i ], [ %i.y, %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i ] ; 8 uses
  %.sroa.0117.0.copyload = load ptr, ptr %.08.i.i, align 8, !tbaa !355 ; 3 uses
  %.sroa.6119.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %i.z = load <2 x i64>, ptr %.sroa.6119.0..08.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.6119.0.copyload = load i64, ptr %.sroa.6119.0..08.i.i.sroa_idx, align 8, !tbaa !340 ; 4 uses
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i55 = getelementptr inbounds i8, ptr %.08.i.i, i64 -16
  %.sroa.2.0.copyload.i56 = load i64, ptr %.sroa.2.0..sroa_idx.i55, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i57 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i56, i64 %.sroa.6119.0.copyload) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i57, 0
  br i1 %i.aa, label %.thread.i.i.i66, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i58

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i58: ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i59 = load ptr, ptr %.010.i.i.i, align 8, !tbaa !355
  %i.ab = tail call i32 @memcmp(ptr noundef %.sroa.0117.0.copyload, ptr noundef %.sroa.0.0.copyload.i59, i64 noundef %.sroa.speculated.i.i.i57) #34
  %.fr.i.i.i61 = freeze i32 %i.ab                 ; 2 uses
  %.not.not.i.i.i62 = icmp eq i32 %.fr.i.i.i61, 0
  br i1 %.not.not.i.i.i62, label %.thread.i.i.i66, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67

.thread.i.i.i66:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i58, %.lr.ph.i.i
  %i.ac = icmp ult i64 %.sroa.6119.0.copyload, %.sroa.2.0.copyload.i56
  br i1 %i.ac, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i58
  %i.ad = icmp slt i32 %.fr.i.i.i61, 0
  br i1 %i.ad, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i.preheader:                         ; preds = %.thread.i.i.i66, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67
  br label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i14.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52 ], [ %.010.i.i.i, %.lr.ph.i.i14.i.preheader ] ; 6 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52 ], [ %.08.i.i, %.lr.ph.i.i14.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i15.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i40 = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16
  %.sroa.2.0.copyload.i41 = load i64, ptr %.sroa.2.0..sroa_idx.i40, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i42 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i41, i64 %.sroa.6119.0.copyload) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i42, 0
  br i1 %i.ae, label %.thread.i.i.i51, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43: ; preds = %.lr.ph.i.i14.i
  %.sroa.0.0.copyload.i44 = load ptr, ptr %.0.i.i17.i, align 8, !tbaa !355
  %i.af = tail call i32 @memcmp(ptr noundef %.sroa.0117.0.copyload, ptr noundef %.sroa.0.0.copyload.i44, i64 noundef %.sroa.speculated.i.i.i42) #34
  %.fr.i.i.i46 = freeze i32 %i.af                 ; 2 uses
  %.not.not.i.i.i47 = icmp eq i32 %.fr.i.i.i46, 0
  %.inv.i.i.i48 = icmp sgt i32 %.fr.i.i.i46, -1
  %spec.select.i.i.i49 = select i1 %.inv.i.i.i48, i32 1, i32 -1
  br i1 %.not.not.i.i.i47, label %.thread.i.i.i51, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52

.thread.i.i.i51:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43, %.lr.ph.i.i14.i
  %i.ag = icmp ult i64 %.sroa.6119.0.copyload, %.sroa.2.0.copyload.i41
  br i1 %i.ag, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52: ; preds = %.thread.i.i.i51, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43
  %.1.i.i.i50 = phi i32 [ %spec.select.i.i.i49, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43 ], [ -1, %.thread.i.i.i51 ]
  %i.ah = icmp slt i32 %.1.i.i.i50, 0
  br i1 %i.ah, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i: ; preds = %.thread.i.i.i51, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52, %.thread.i.i.i66, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67 ], [ %.08.i.i, %.thread.i.i.i66 ], [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52 ], [ %.012.i.i15.i, %.thread.i.i.i51 ] ; 2 uses
  store ptr %.sroa.0117.0.copyload, ptr %.09.lcssa.i.i12.i, align 8, !tbaa !355
  %.sroa.6119.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store <2 x i64> %i.z, ptr %.sroa.6119.0..09.lcssa.i.i12.i.sroa_idx, align 8, !tbaa !340
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.ai, %i.e
  br i1 %.not.i13.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !95

bb.h:                                             ; preds = %bb.b
  %.not18.i.i = icmp eq i32 %i.b, 1
  br i1 %.not18.i.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.h
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.2.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.l
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.l ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.l ], [ %i.d, %.lr.ph.i19.i.preheader ] ; 5 uses
  %.sroa.22.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.22.0.copyload.i24 = load i64, ptr %.sroa.22.0..sroa_idx.i23, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i26 = load i64, ptr %.sroa.2.0..sroa_idx.i25, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i27 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i26, i64 %.sroa.22.0.copyload.i24) ; 2 uses
  %i.aj = icmp eq i64 %.sroa.speculated.i.i.i27, 0
  br i1 %i.aj, label %.thread.i.i.i36, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28: ; preds = %.lr.ph.i19.i
  %.sroa.0.0.copyload.i29 = load ptr, ptr %i.d, align 8, !tbaa !355
  %.sroa.01.0.copyload.i30 = load ptr, ptr %.020.i20.i, align 8, !tbaa !355 ; 2 uses
  %i.ak = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i30, ptr noundef %.sroa.0.0.copyload.i29, i64 noundef %.sroa.speculated.i.i.i27) #34
  %.fr.i.i.i31 = freeze i32 %i.ak                 ; 2 uses
  %.not.not.i.i.i32 = icmp eq i32 %.fr.i.i.i31, 0
  br i1 %.not.not.i.i.i32, label %.thread.i.i.i36, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37

.thread.i.i.i36:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28, %.lr.ph.i19.i
  %i.al = icmp ult i64 %.sroa.22.0.copyload.i24, %.sroa.2.0.copyload.i26
  br i1 %i.al, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142, label %.thread.i.i.i36._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread_crit_edge

.thread.i.i.i36._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread_crit_edge: ; preds = %.thread.i.i.i36
  %.sroa.0123.0.copyload.pre = load ptr, ptr %.020.i20.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28
  %i.am = icmp slt i32 %.fr.i.i.i31, 0
  br i1 %i.am, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142: ; preds = %.thread.i.i.i36, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.020.i20.i, i64 24, i1 false), !tbaa.struct !974
  %i.an = ptrtoint ptr %.020.i20.i to i64
  %i.ao = sub i64 %i.an, %i.i                     ; 4 uses
  %i.ap = icmp sgt i64 %i.ao, 24
  br i1 %i.ap, label %bb.i, label %bb.j, !prof !425

bb.i:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 48
  %.neg25.i31.i = udiv exact i64 %i.ao, 24
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %i.ar = getelementptr inbounds [24 x i8], ptr %i.aq, i64 %.neg25.neg.i32.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.ao, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.j:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142
  %i.as = icmp eq i64 %i.ao, 24
  br i1 %i.as, label %bb.k, label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i: ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.l

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread: ; preds = %.thread.i.i.i36._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37
  %.sroa.0123.0.copyload = phi ptr [ %.sroa.0123.0.copyload.pre, %.thread.i.i.i36._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread_crit_edge ], [ %.sroa.01.0.copyload.i30, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37 ] ; 3 uses
  %.sroa.8127.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16
  %.sroa.8127.0.copyload = load i64, ptr %.sroa.8127.0..020.i20.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %.sroa.2.0.copyload.i11 = load i64, ptr %.sroa.2.0..sroa_idx.i10, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i11, i64 %.sroa.22.0.copyload.i24) ; 2 uses
  %i.au = icmp eq i64 %.sroa.speculated.i.i.i12, 0
  br i1 %i.au, label %.thread.i.i.i21, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i13

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i13: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread
  %.sroa.0.0.copyload.i14 = load ptr, ptr %.pn19.i21.i, align 8, !tbaa !355
  %i.av = tail call i32 @memcmp(ptr noundef %.sroa.0123.0.copyload, ptr noundef %.sroa.0.0.copyload.i14, i64 noundef %.sroa.speculated.i.i.i12) #34
  %.fr.i.i.i16 = freeze i32 %i.av                 ; 2 uses
  %.not.not.i.i.i17 = icmp eq i32 %.fr.i.i.i16, 0
  br i1 %.not.not.i.i.i17, label %.thread.i.i.i21, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22

.thread.i.i.i21:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i13, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread
  %i.aw = icmp ult i64 %.sroa.22.0.copyload.i24, %.sroa.2.0.copyload.i11
  br i1 %i.aw, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i13
  %i.ax = icmp slt i32 %.fr.i.i.i16, 0
  br i1 %i.ax, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i.preheader:                         ; preds = %.thread.i.i.i21, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.pn19.i21.i, %.lr.ph.i.i26.i.preheader ] ; 6 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.020.i20.i, %.lr.ph.i.i26.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i27.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i, i64 %.sroa.22.0.copyload.i24) ; 2 uses
  %i.ay = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.ay, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i26.i
  %.sroa.0.0.copyload.i = load ptr, ptr %.0.i.i29.i, align 8, !tbaa !355
  %i.az = tail call i32 @memcmp(ptr noundef %.sroa.0123.0.copyload, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.speculated.i.i.i) #34
  %.fr.i.i.i = freeze i32 %i.az                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %.inv.i.i.i = icmp sgt i32 %.fr.i.i.i, -1
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %.lr.ph.i.i26.i
  %i.ba = icmp ult i64 %.sroa.22.0.copyload.i24, %.sroa.2.0.copyload.i
  br i1 %i.ba, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit: ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i ], [ -1, %.thread.i.i.i ]
  %i.bb = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.bb, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i: ; preds = %.thread.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, %.thread.i.i.i21, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22 ], [ %.020.i20.i, %.thread.i.i.i21 ], [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.012.i.i27.i, %.thread.i.i.i ] ; 3 uses
  store ptr %.sroa.0123.0.copyload, ptr %.09.lcssa.i.i23.i, align 8, !tbaa !355
  %.sroa.6125.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i64 %.sroa.22.0.copyload.i24, ptr %.sroa.6125.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8127.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 16
  store i64 %.sroa.8127.0.copyload, ptr %.sroa.8127.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  br label %bb.l

bb.l:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 24 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.e
  br i1 %.not.i25.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !94

_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit: ; preds = %bb.l, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, %bb.h, %bb.a
  %i.bc = load ptr, ptr %4, align 8, !tbaa !312
  %i.bd = load i32, ptr %i.a, align 8, !tbaa !313
  %i.be = zext i32 %i.bd to i64
  %i.bf = load ptr, ptr %0, align 8, !tbaa !250
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 312
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %3, ptr %i.bc, i64 %i.be) #31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4llvm12function_refIFvRKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEEEE11callback_fnIZN12_GLOBAL__N_113LLVMELFDumperIS5_E18printDependentLibsEvEUlS8_E_EEvlS8_(i64 %0, ptr nofree nonnull readnone align 1 captures(none) %1) #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvNS_9StringRefEmEE11callback_fnIZN12_GLOBAL__N_113LLVMELFDumperINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEE18printDependentLibsEvEUlS1_mE_EEvlS1_m(i64 noundef %0, ptr %1, i64 %2, i64 %3) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1586
  %i.b = getelementptr i8, ptr %.val, i64 1152
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !1583 ; 2 uses
  %i.c = load ptr, ptr %.val.val, align 8, !tbaa !250
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(44) %.val.val, ptr %1, i64 %2) #31, !inline_history !22847
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb1EEEE25getSectionContentsAsArrayINS0_18Elf_CGProfile_ImplIS4_EEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.2183") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.0.copyload.i.i.i = load i64, ptr %i.a, align 1
  %.not = icmp eq i64 %.0.copyload.i.i.i, 8
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !22964)
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !22964 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !268, !alias.scope !22964
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !349  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !269  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %7, align 8, !tbaa !349, !alias.scope !22964
  %i.k = load i64, ptr %i.e, align 8, !tbaa !270
  store i64 %i.k, ptr %i.c, align 8, !tbaa !270, !alias.scope !22964
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !269, !alias.scope !22964
  store ptr %i.e, ptr %i.b, align 8, !tbaa !349
  store i64 0, ptr %i.m, align 8, !tbaa !269
  store i8 0, ptr %i.e, align 8, !tbaa !270
  call void @llvm.experimental.noalias.scope.decl(metadata !22965)
  %i.o = add i64 %i.l, -4611686018427387870
  %i.p = icmp ult i64 %i.o, 34
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !22965
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.173, i64 noundef 34) #31, !noalias !22965 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !268, !alias.scope !22965
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !349  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !269  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.s, ptr %6, align 8, !tbaa !349, !alias.scope !22965
  %i.z = load i64, ptr %i.t, align 8, !tbaa !270
  store i64 %i.z, ptr %i.r, align 8, !tbaa !270, !alias.scope !22965
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !269
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.e
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !269, !alias.scope !22965
  store ptr %i.t, ptr %i.q, align 8, !tbaa !349
  store i64 0, ptr %i.ab, align 8, !tbaa !269
  store i8 0, ptr %i.t, align 8, !tbaa !270
  store ptr %6, ptr %5, align 8, !alias.scope !22966
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ad, align 8, !alias.scope !22966
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.ae, align 8, !tbaa !352, !alias.scope !22966
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 11, ptr %i.af, align 1, !tbaa !353, !alias.scope !22966
  store ptr %5, ptr %4, align 8, !alias.scope !22967
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.174, ptr %i.ag, align 8, !alias.scope !22967
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.ah, align 8, !tbaa !352, !alias.scope !22967
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ai, align 1, !tbaa !353, !alias.scope !22967
  %.0.copyload.i.i.i42 = load i64, ptr %i.a, align 1
  %i.aj = inttoptr i64 %.0.copyload.i.i.i42 to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !22968
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aj, ptr %i.ak, align 8, !alias.scope !22968
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.al, align 8, !tbaa !352, !alias.scope !22968
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 11, ptr %i.am, align 1, !tbaa !353, !alias.scope !22968
  %i.an = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !22969 ; 2 uses
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #31, !noalias !22969
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.an, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 3, ptr nonnull %i.ao) #31, !noalias !22969
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8
end_hunk_10
begin_hunk_11_@_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE34getSymbolIndexesForFunctionAddressEmSt8optionalIPKNS2_13Elf_Shdr_ImplIS5_EEE:bb.a
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !269 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 16
  call void @llvm.assume(i1 %i.dw)
  %i.dx = add nuw nsw i64 %i.dv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.ds, i64 %i.dx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.dr, ptr %10, align 8, !tbaa !349, !alias.scope !28534
  %i.dy = load i64, ptr %i.ds, align 8, !tbaa !270
  store i64 %i.dy, ptr %i.ad, align 8, !tbaa !270, !alias.scope !28534
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !269
  store i64 %i.ea, ptr %i.ae, align 8, !tbaa !269, !alias.scope !28534
  store ptr %i.ds, ptr %i.dq, align 8, !tbaa !349
  store i64 0, ptr %i.dz, align 8, !tbaa !269
  store i8 0, ptr %i.ds, align 8, !tbaa !270
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i
  store i8 4, ptr %i.af, align 8, !tbaa !352
  store i8 1, ptr %i.ag, align 1, !tbaa !353
  store ptr %10, ptr %9, align 8, !tbaa !270
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(34) %9) #31
  %i.eb = load ptr, ptr %10, align 8, !tbaa !349  ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.ad
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.ed = load i64, ptr %i.ad, align 8, !tbaa !270
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %i.ef = load ptr, ptr %13, align 8, !tbaa !349  ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.ac
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eh = load i64, ptr %i.ac, align 8, !tbaa !270
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  %i.ej = load ptr, ptr %14, align 8, !tbaa !348  ; 3 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.el = load ptr, ptr %i.ej, align 8, !tbaa !250
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.ej) #31, !inline_history !0
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.eo = load ptr, ptr %11, align 8, !tbaa !349  ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.z
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.eq = load i64, ptr %i.z, align 8, !tbaa !270
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  %i.es = load ptr, ptr %12, align 8, !tbaa !349  ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.x
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.eu = load i64, ptr %i.x, align 8, !tbaa !270
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.ew = load ptr, ptr %8, align 8, !tbaa !349   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.ah
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.ey = load i64, ptr %i.ah, align 8, !tbaa !270
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.s:                                             ; preds = %_ZNK4llvm6object13ELFObjectFileINS0_7ELFTypeILNS_10endiannessE0ELb1EEEE11toSymbolRefEPKNS0_13Elf_Shdr_ImplIS4_EEj.exit
  %i.fa = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.fa, 0 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1079 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 24 ; 3 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !672
  %.not.i62 = icmp eq ptr %i.fd, %i.ff
  br i1 %.not.i62, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.ai, ptr %i.fd, align 4, !tbaa !396
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store ptr %i.fg, ptr %i.fc, align 8, !tbaa !1079
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.u:                                             ; preds = %bb.s
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !671 ; 4 uses
  %i.fi = ptrtoint ptr %i.fd to i64
  %i.fj = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fk = sub i64 %i.fi, %i.fj                    ; 5 uses
  %i.fl = icmp eq i64 %i.fk, 9223372036854775804
  br i1 %i.fl, label %bb.v, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #33
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.fm = ashr exact i64 %i.fk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fm, i64 1)
  %i.fn = add nsw i64 %.sroa.speculated.i.i.i, %i.fm ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.fm
  %i.fp = call i64 @llvm.umin.i64(i64 %i.fn, i64 2305843009213693951)
  %i.fq = select i1 %i.fo, i64 2305843009213693951, i64 %i.fp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fr = shl nuw nsw i64 %i.fq, 2
  %i.fs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #30 ; 4 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %i.fk ; 2 uses
  store i32 %i.ai, ptr %i.ft, align 4, !tbaa !396
  %i.fu = icmp sgt i64 %i.fk, 0
  br i1 %i.fu, label %bb.w, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.w:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fs, ptr align 4 %i.fh, i64 %i.fk, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.w, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %.not.i17.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.fw = load ptr, ptr %i.fe, align 8, !tbaa !672
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = sub i64 %i.fx, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fy) #32
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.fs, ptr %i.fb, align 8, !tbaa !671
  store ptr %i.fv, ptr %i.fc, align 8, !tbaa !1079
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fq
  store ptr %i.fz, ptr %i.fe, align 8, !tbaa !672
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.032 = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ 0, %bb.t ], [ 0, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %.1 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.0169, %bb.t ], [ %.0169, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ga = load i8, ptr %i.v, align 8
  %i.gb = trunc i8 %i.ga to i1
  br i1 %i.gb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.gc = load ptr, ptr %7, align 8, !tbaa !346   ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i64, label %bb.z, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.y
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !250
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(8) %i.gc) #31, !inline_history !79
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i, %bb.y, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br i1 %i.bk, label %._crit_edge.loopexit, label %.thread

.thread:                                          ; preds = %bb.z, %bb.d, %bb.e
  %.2153 = phi i1 [ %.0169, %bb.d ], [ %.1, %bb.z ], [ %.0169, %bb.e ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.039168, i64 24 ; 2 uses
  %.not40 = icmp eq ptr %i.gg, %i.s
  br i1 %.not40, label %._crit_edge.loopexit, label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.z, %.thread
  %.234.ph = phi i32 [ 2, %.thread ], [ %.032, %bb.z ]
  %.3.ph = phi i1 [ %.2153, %.thread ], [ %.1, %bb.z ]
  %i.gh = and i32 %.234.ph, -3
  %i.gi = icmp eq i32 %i.gh, 0
  br label %._crit_edge

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i66: ; preds = %_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE0ELb1EEEE7symbolsEPKNS0_13Elf_Shdr_ImplIS4_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !28535)
  %i.gj = load i64, ptr %6, align 8, !tbaa !346, !noalias !28535
  %i.gk = inttoptr i64 %i.gj to ptr
  store ptr null, ptr %6, align 8, !tbaa !346, !noalias !28535
  store ptr %i.gk, ptr %18, align 8, !tbaa !348, !alias.scope !28535
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr nofree noundef nonnull align 8 dereferenceable(8) %18) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !28536)
  %i.gl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.734, i64 noundef 33) #31, !noalias !28536 ; 6 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.gm, ptr %16, align 8, !tbaa !268, !alias.scope !28536
  %i.gn = load ptr, ptr %i.gl, align 8, !tbaa !349 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 5 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i66
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !269 ; 3 uses
  %i.gs = icmp ult i64 %i.gr, 16
  call void @llvm.assume(i1 %i.gs)
  %i.gt = add nuw nsw i64 %i.gr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gm, ptr noundef nonnull align 8 dereferenceable(1) %i.go, i64 %i.gt, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i66
  store ptr %i.gn, ptr %16, align 8, !tbaa !349, !alias.scope !28536
  %i.gu = load i64, ptr %i.go, align 8, !tbaa !270
  store i64 %i.gu, ptr %i.gm, align 8, !tbaa !270, !alias.scope !28536
  %.phi.trans.insert.i68 = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i68, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.gv = phi i64 [ %i.gr, %bb.aa ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.gv, ptr %i.gx, align 8, !tbaa !269, !alias.scope !28536
  store ptr %i.go, ptr %i.gl, align 8, !tbaa !349
  store i64 0, ptr %i.gw, align 8, !tbaa !269
  store i8 0, ptr %i.go, align 8, !tbaa !270
  %i.gy = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 4, ptr %i.gy, align 8, !tbaa !352
  %i.gz = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.gz, align 1, !tbaa !353
  store ptr %16, ptr %15, align 8, !tbaa !270
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(34) %15) #31
  %i.ha = load ptr, ptr %16, align 8, !tbaa !349  ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.gm
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.hc = load i64, ptr %i.gm, align 8, !tbaa !270
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %i.he = load ptr, ptr %17, align 8, !tbaa !349  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !270
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  %i.hj = load ptr, ptr %18, align 8, !tbaa !348  ; 3 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %_ZN4llvm5ErrorD2Ev.exit77, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !250
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(8) %i.hj) #31, !inline_history !0
  br label %_ZN4llvm5ErrorD2Ev.exit77

_ZN4llvm5ErrorD2Ev.exit77:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit, %_ZN4llvm5ErrorD2Ev.exit77
  %.335 = phi i1 [ true, %_ZN4llvm5ErrorD2Ev.exit77 ], [ true, %bb.c ], [ %i.gi, %._crit_edge.loopexit ]
  %.5 = phi i1 [ false, %_ZN4llvm5ErrorD2Ev.exit77 ], [ false, %bb.c ], [ %.3.ph, %._crit_edge.loopexit ]
  %i.ho = load i8, ptr %i.m, align 8
  %i.hp = trunc i8 %i.ho to i1
  br i1 %i.hp, label %bb.ac, label %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEEEEED2Ev.exit

bb.ac:                                            ; preds = %._crit_edge
  %i.hq = load ptr, ptr %6, align 8, !tbaa !346   ; 3 uses
  %.not.i.i79 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i79, label %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEEEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i80

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i80: ; preds = %bb.ac
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !250
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(8) %i.hq) #31, !inline_history !211
  br label %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEEEEED2Ev.exit

_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEEEEED2Ev.exit: ; preds = %._crit_edge, %bb.ac, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %.335, label %bb.ad, label %bb.ay

bb.ad:                                            ; preds = %bb.b, %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEEEEED2Ev.exit, %bb.a
  %i.hu = load ptr, ptr %i.d, align 8, !tbaa !1082, !noalias !28537 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !1083, !noalias !28537 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 1060
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !1084, !noalias !28537 ; 4 uses
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %.loopexit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ia = add i32 %i.hy, -1                       ; 2 uses
  %i.ib = mul i64 %2, -4658895280553007687        ; 2 uses
  %i.ic = lshr i64 %i.ib, 31
  %i.id = xor i64 %i.ic, %i.ib
  %i.ie = trunc i64 %i.id to i32
  %i.if = and i32 %i.ia, %i.ie                    ; 3 uses
  %i.ig = zext i32 %i.if to i64                   ; 2 uses
  %i.ih = lshr i64 %i.ig, 5
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !396, !noalias !28538
  %i.ik = and i32 %i.if, 31
  %i.il = lshr i32 %i.ij, %i.ik
  %i.im = trunc i32 %i.il to i1
  br i1 %i.im, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !507

.lr.ph.i.i.i.i:                                   ; preds = %bb.ae, %bb.af
  %i.in = phi i64 [ %i.it, %bb.af ], [ %i.ig, %bb.ae ]
  %.017.i.i.i.i = phi i32 [ %i.is, %bb.af ], [ %i.if, %bb.ae ]
  %i.io = getelementptr inbounds nuw [32 x i8], ptr %i.hu, i64 %i.in ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !340, !noalias !28538
  %i.iq = icmp eq i64 %2, %i.ip
  br i1 %i.iq, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit, label %bb.af, !prof !425

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ir = add nuw i32 %.017.i.i.i.i, 1
  %i.is = and i32 %i.ir, %i.ia                    ; 3 uses
  %i.it = zext i32 %i.is to i64                   ; 2 uses
  %i.iu = lshr i64 %i.it, 5
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !396, !noalias !28538
  %i.ix = and i32 %i.is, 31
  %i.iy = lshr i32 %i.iw, %i.ix
  %i.iz = trunc i32 %i.iy to i1
  br i1 %i.iz, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !508

.loopexit.i.i:                                    ; preds = %bb.af, %bb.ae, %bb.ad
  %i.ja = zext i32 %i.hy to i64                   ; 2 uses
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.hu, i64 %i.ja
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre192 = zext i32 %i.hy to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre192, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit ], [ %i.ja, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.io, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit.loopexit ], [ %i.jb, %.loopexit.i.i ] ; 3 uses
  %i.jc = getelementptr inbounds nuw [32 x i8], ptr %i.hu, i64 %.pre-phi
  %i.jd = icmp eq ptr %.lcssa.sink.i.i, %i.jc
  br i1 %i.jd, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit
  %i.je = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !613 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !613 ; 3 uses
  %.not162174 = icmp eq ptr %i.jf, %i.jh
  br i1 %.not162174, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.ag
  %i.ji = trunc nuw i8 %4 to i1
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 1020
  %i.jo = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.jq = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.jr = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
end_hunk_11
begin_hunk_12_@_ZNK12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE24printSectionGroupMembersENS1_9StringRefEm:bb.a
  store i16 10272, ptr %i.r, align 1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !372
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.y, %bb.e ], [ %.0.i, %bb.f ]
  %i.ac = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %3) #31 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !371
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !372 ; 2 uses
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ult i64 %i.aj, 2
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.al = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull @.str.472, i64 noundef 2) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i16 2601, ptr %i.ag, align 1
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !372
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store ptr %i.an, ptr %i.af, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5

_ZN4llvm11raw_ostreamlsEPKc.exit5:                ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE22printEmptyGroupMessageEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1160) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1765, !nonnull !248, !align !338 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !250
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !371
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !372  ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ult i64 %i.m, 41
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull @.str.1056, i64 noundef 41) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.j, ptr noundef nonnull align 1 dereferenceable(41) @.str.1056, i64 41, i1 false)
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !372
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 41
  store ptr %i.q, ptr %i.i, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsINS_7support6detail31packed_endian_specific_integralImLNS_10endiannessE0ELm1ELm1EEEEEvNS_9StringRefET_RNS_15SmallVectorImplINS_9FlagEntryEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.llvm::FlagEntry", align 8  ; 4 uses
  %6 = alloca %"struct.llvm::FlagEntry", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !313  ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.c, 24
  %i.d = load ptr, ptr %4, align 8, !tbaa !312    ; 19 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i ; 3 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = xor i64 %i.g, 126
  tail call void @_ZSt16__introsort_loopIPN4llvm9FlagEntryElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef %i.d, ptr noundef nonnull %i.e, i64 noundef %i.h, ptr nonnull @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_)
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = icmp ugt i32 %i.b, 16
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %scevgep.i = getelementptr i8, ptr %i.d, i64 24
  %.sroa.2.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.020.i.idx.i = phi i64 [ 24, %bb.c ], [ %.020.i.add.i, %bb.g ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.d, %bb.c ], [ %.020.i.ptr.i, %bb.g ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.020.i.idx.i ; 9 uses
  %.sroa.22.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %.sroa.22.0.copyload.i99 = load i64, ptr %.sroa.22.0..sroa_idx.i98, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i101 = load i64, ptr %.sroa.2.0..sroa_idx.i100, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i102 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i101, i64 %.sroa.22.0.copyload.i99) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i102, 0
  br i1 %i.k, label %.thread.i.i.i111, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i103

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i103: ; preds = %bb.d
  %.sroa.0.0.copyload.i104 = load ptr, ptr %i.d, align 8, !tbaa !355
  %.sroa.01.0.copyload.i105 = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355 ; 2 uses
  %i.l = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i105, ptr noundef %.sroa.0.0.copyload.i104, i64 noundef %.sroa.speculated.i.i.i102) #34
  %.fr.i.i.i106 = freeze i32 %i.l                 ; 2 uses
  %.not.not.i.i.i107 = icmp eq i32 %.fr.i.i.i106, 0
  br i1 %.not.not.i.i.i107, label %.thread.i.i.i111, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112

.thread.i.i.i111:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i103, %bb.d
  %i.m = icmp ult i64 %.sroa.22.0.copyload.i99, %.sroa.2.0.copyload.i101
  br i1 %i.m, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130, label %.thread.i.i.i111._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread_crit_edge

.thread.i.i.i111._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread_crit_edge: ; preds = %.thread.i.i.i111
  %.sroa.0113.0.copyload.pre = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i103
  %i.n = icmp slt i32 %.fr.i.i.i106, 0
  br i1 %i.n, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130: ; preds = %.thread.i.i.i111, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.ptr.i, i64 24, i1 false), !tbaa.struct !974
  %i.o = icmp samesign ugt i64 %.020.i.idx.i, 24
  br i1 %i.o, label %bb.e, label %bb.f, !prof !425

bb.e:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

bb.f:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread130
  %i.p = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.g

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread: ; preds = %.thread.i.i.i111._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112
  %.sroa.0113.0.copyload = phi ptr [ %.sroa.0113.0.copyload.pre, %.thread.i.i.i111._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread_crit_edge ], [ %.sroa.01.0.copyload.i105, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112 ] ; 3 uses
  %.sroa.8.0..020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..020.i.ptr.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %.sroa.2.0.copyload.i86 = load i64, ptr %.sroa.2.0..sroa_idx.i85, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i87 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i86, i64 %.sroa.22.0.copyload.i99) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i87, 0
  br i1 %i.q, label %.thread.i.i.i96, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i88

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i88: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread
  %.sroa.0.0.copyload.i89 = load ptr, ptr %.pn19.i.i, align 8, !tbaa !355
  %i.r = tail call i32 @memcmp(ptr noundef %.sroa.0113.0.copyload, ptr noundef %.sroa.0.0.copyload.i89, i64 noundef %.sroa.speculated.i.i.i87) #34
  %.fr.i.i.i91 = freeze i32 %i.r                  ; 2 uses
  %.not.not.i.i.i92 = icmp eq i32 %.fr.i.i.i91, 0
  br i1 %.not.not.i.i.i92, label %.thread.i.i.i96, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97

.thread.i.i.i96:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i88, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit112.thread
  %i.s = icmp ult i64 %.sroa.22.0.copyload.i99, %.sroa.2.0.copyload.i86
  br i1 %i.s, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i88
  %i.t = icmp slt i32 %.fr.i.i.i91, 0
  br i1 %i.t, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.thread.i.i.i96, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82 ], [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82 ], [ %.020.i.ptr.i, %.lr.ph.i.i.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i70 = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -16
  %.sroa.2.0.copyload.i71 = load i64, ptr %.sroa.2.0..sroa_idx.i70, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i72 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i71, i64 %.sroa.22.0.copyload.i99) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i72, 0
  br i1 %i.u, label %.thread.i.i.i81, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i74 = load ptr, ptr %.0.i.i.i, align 8, !tbaa !355
  %i.v = tail call i32 @memcmp(ptr noundef %.sroa.0113.0.copyload, ptr noundef %.sroa.0.0.copyload.i74, i64 noundef %.sroa.speculated.i.i.i72) #34
  %.fr.i.i.i76 = freeze i32 %i.v                  ; 2 uses
  %.not.not.i.i.i77 = icmp eq i32 %.fr.i.i.i76, 0
  %.inv.i.i.i78 = icmp sgt i32 %.fr.i.i.i76, -1
  %spec.select.i.i.i79 = select i1 %.inv.i.i.i78, i32 1, i32 -1
  br i1 %.not.not.i.i.i77, label %.thread.i.i.i81, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82

.thread.i.i.i81:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73, %.lr.ph.i.i.i
  %i.w = icmp ult i64 %.sroa.22.0.copyload.i99, %.sroa.2.0.copyload.i71
  br i1 %i.w, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82: ; preds = %.thread.i.i.i81, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73
  %.1.i.i.i80 = phi i32 [ %spec.select.i.i.i79, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i73 ], [ -1, %.thread.i.i.i81 ]
  %i.x = icmp slt i32 %.1.i.i.i80, 0
  br i1 %i.x, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i: ; preds = %.thread.i.i.i81, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82, %.thread.i.i.i96, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit97 ], [ %.020.i.ptr.i, %.thread.i.i.i96 ], [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit82 ], [ %.012.i.i.i, %.thread.i.i.i81 ] ; 3 uses
  store ptr %.sroa.0113.0.copyload, ptr %.09.lcssa.i.i.i, align 8, !tbaa !355
  %.sroa.6.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i99, ptr %.sroa.6.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !340
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 24 ; 2 uses
  %.not.i.i = icmp eq i64 %.020.i.add.i, 384
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, label %bb.d, !llvm.loop !94

_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.ai, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i ], [ %i.y, %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i ] ; 8 uses
  %.sroa.0117.0.copyload = load ptr, ptr %.08.i.i, align 8, !tbaa !355 ; 3 uses
  %.sroa.6119.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %i.z = load <2 x i64>, ptr %.sroa.6119.0..08.i.i.sroa_idx, align 8, !tbaa !340
  %.sroa.6119.0.copyload = load i64, ptr %.sroa.6119.0..08.i.i.sroa_idx, align 8, !tbaa !340 ; 4 uses
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i55 = getelementptr inbounds i8, ptr %.08.i.i, i64 -16
  %.sroa.2.0.copyload.i56 = load i64, ptr %.sroa.2.0..sroa_idx.i55, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i57 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i56, i64 %.sroa.6119.0.copyload) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i57, 0
  br i1 %i.aa, label %.thread.i.i.i66, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i58

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i58: ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i59 = load ptr, ptr %.010.i.i.i, align 8, !tbaa !355
  %i.ab = tail call i32 @memcmp(ptr noundef %.sroa.0117.0.copyload, ptr noundef %.sroa.0.0.copyload.i59, i64 noundef %.sroa.speculated.i.i.i57) #34
  %.fr.i.i.i61 = freeze i32 %i.ab                 ; 2 uses
  %.not.not.i.i.i62 = icmp eq i32 %.fr.i.i.i61, 0
  br i1 %.not.not.i.i.i62, label %.thread.i.i.i66, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67

.thread.i.i.i66:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i58, %.lr.ph.i.i
  %i.ac = icmp ult i64 %.sroa.6119.0.copyload, %.sroa.2.0.copyload.i56
  br i1 %i.ac, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i58
  %i.ad = icmp slt i32 %.fr.i.i.i61, 0
  br i1 %i.ad, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i.preheader:                         ; preds = %.thread.i.i.i66, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67
  br label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i14.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52 ], [ %.010.i.i.i, %.lr.ph.i.i14.i.preheader ] ; 6 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52 ], [ %.08.i.i, %.lr.ph.i.i14.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i15.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i40 = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16
  %.sroa.2.0.copyload.i41 = load i64, ptr %.sroa.2.0..sroa_idx.i40, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i42 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i41, i64 %.sroa.6119.0.copyload) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i42, 0
  br i1 %i.ae, label %.thread.i.i.i51, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43: ; preds = %.lr.ph.i.i14.i
  %.sroa.0.0.copyload.i44 = load ptr, ptr %.0.i.i17.i, align 8, !tbaa !355
  %i.af = tail call i32 @memcmp(ptr noundef %.sroa.0117.0.copyload, ptr noundef %.sroa.0.0.copyload.i44, i64 noundef %.sroa.speculated.i.i.i42) #34
  %.fr.i.i.i46 = freeze i32 %i.af                 ; 2 uses
  %.not.not.i.i.i47 = icmp eq i32 %.fr.i.i.i46, 0
  %.inv.i.i.i48 = icmp sgt i32 %.fr.i.i.i46, -1
  %spec.select.i.i.i49 = select i1 %.inv.i.i.i48, i32 1, i32 -1
  br i1 %.not.not.i.i.i47, label %.thread.i.i.i51, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52

.thread.i.i.i51:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43, %.lr.ph.i.i14.i
  %i.ag = icmp ult i64 %.sroa.6119.0.copyload, %.sroa.2.0.copyload.i41
  br i1 %i.ag, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52: ; preds = %.thread.i.i.i51, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43
  %.1.i.i.i50 = phi i32 [ %spec.select.i.i.i49, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i43 ], [ -1, %.thread.i.i.i51 ]
  %i.ah = icmp slt i32 %.1.i.i.i50, 0
  br i1 %i.ah, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i: ; preds = %.thread.i.i.i51, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52, %.thread.i.i.i66, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit67 ], [ %.08.i.i, %.thread.i.i.i66 ], [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit52 ], [ %.012.i.i15.i, %.thread.i.i.i51 ] ; 2 uses
  store ptr %.sroa.0117.0.copyload, ptr %.09.lcssa.i.i12.i, align 8, !tbaa !355
  %.sroa.6119.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store <2 x i64> %i.z, ptr %.sroa.6119.0..09.lcssa.i.i12.i.sroa_idx, align 8, !tbaa !340
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.ai, %i.e
  br i1 %.not.i13.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !95

bb.h:                                             ; preds = %bb.b
  %.not18.i.i = icmp eq i32 %i.b, 1
  br i1 %.not18.i.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.h
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.2.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.l
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.l ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.l ], [ %i.d, %.lr.ph.i19.i.preheader ] ; 5 uses
  %.sroa.22.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.22.0.copyload.i24 = load i64, ptr %.sroa.22.0..sroa_idx.i23, align 8, !tbaa !340 ; 7 uses
  %.sroa.2.0.copyload.i26 = load i64, ptr %.sroa.2.0..sroa_idx.i25, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i27 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i26, i64 %.sroa.22.0.copyload.i24) ; 2 uses
  %i.aj = icmp eq i64 %.sroa.speculated.i.i.i27, 0
  br i1 %i.aj, label %.thread.i.i.i36, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28: ; preds = %.lr.ph.i19.i
  %.sroa.0.0.copyload.i29 = load ptr, ptr %i.d, align 8, !tbaa !355
  %.sroa.01.0.copyload.i30 = load ptr, ptr %.020.i20.i, align 8, !tbaa !355 ; 2 uses
  %i.ak = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i30, ptr noundef %.sroa.0.0.copyload.i29, i64 noundef %.sroa.speculated.i.i.i27) #34
  %.fr.i.i.i31 = freeze i32 %i.ak                 ; 2 uses
  %.not.not.i.i.i32 = icmp eq i32 %.fr.i.i.i31, 0
  br i1 %.not.not.i.i.i32, label %.thread.i.i.i36, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37

.thread.i.i.i36:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28, %.lr.ph.i19.i
  %i.al = icmp ult i64 %.sroa.22.0.copyload.i24, %.sroa.2.0.copyload.i26
  br i1 %i.al, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142, label %.thread.i.i.i36._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread_crit_edge

.thread.i.i.i36._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread_crit_edge: ; preds = %.thread.i.i.i36
  %.sroa.0123.0.copyload.pre = load ptr, ptr %.020.i20.i, align 8, !tbaa !355
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28
  %i.am = icmp slt i32 %.fr.i.i.i31, 0
  br i1 %i.am, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142: ; preds = %.thread.i.i.i36, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.020.i20.i, i64 24, i1 false), !tbaa.struct !974
  %i.an = ptrtoint ptr %.020.i20.i to i64
  %i.ao = sub i64 %i.an, %i.i                     ; 4 uses
  %i.ap = icmp sgt i64 %i.ao, 24
  br i1 %i.ap, label %bb.i, label %bb.j, !prof !425

bb.i:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 48
  %.neg25.i31.i = udiv exact i64 %i.ao, 24
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %i.ar = getelementptr inbounds [24 x i8], ptr %i.aq, i64 %.neg25.neg.i32.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.ao, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.j:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread142
  %i.as = icmp eq i64 %i.ao, 24
  br i1 %i.as, label %bb.k, label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !974
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i: ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !974
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.l

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread: ; preds = %.thread.i.i.i36._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37
  %.sroa.0123.0.copyload = phi ptr [ %.sroa.0123.0.copyload.pre, %.thread.i.i.i36._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread_crit_edge ], [ %.sroa.01.0.copyload.i30, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37 ] ; 3 uses
  %.sroa.8127.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16
  %.sroa.8127.0.copyload = load i64, ptr %.sroa.8127.0..020.i20.i.sroa_idx, align 8, !tbaa !340
  %.sroa.2.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %.sroa.2.0.copyload.i11 = load i64, ptr %.sroa.2.0..sroa_idx.i10, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i11, i64 %.sroa.22.0.copyload.i24) ; 2 uses
  %i.au = icmp eq i64 %.sroa.speculated.i.i.i12, 0
  br i1 %i.au, label %.thread.i.i.i21, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i13

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i13: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread
  %.sroa.0.0.copyload.i14 = load ptr, ptr %.pn19.i21.i, align 8, !tbaa !355
  %i.av = tail call i32 @memcmp(ptr noundef %.sroa.0123.0.copyload, ptr noundef %.sroa.0.0.copyload.i14, i64 noundef %.sroa.speculated.i.i.i12) #34
  %.fr.i.i.i16 = freeze i32 %i.av                 ; 2 uses
  %.not.not.i.i.i17 = icmp eq i32 %.fr.i.i.i16, 0
  br i1 %.not.not.i.i.i17, label %.thread.i.i.i21, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22

.thread.i.i.i21:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i13, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit37.thread
  %i.aw = icmp ult i64 %.sroa.22.0.copyload.i24, %.sroa.2.0.copyload.i11
  br i1 %i.aw, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i13
  %i.ax = icmp slt i32 %.fr.i.i.i16, 0
  br i1 %i.ax, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i.preheader:                         ; preds = %.thread.i.i.i21, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.pn19.i21.i, %.lr.ph.i.i26.i.preheader ] ; 6 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.020.i20.i, %.lr.ph.i.i26.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i27.i, i64 24, i1 false), !tbaa.struct !974
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !340 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i, i64 %.sroa.22.0.copyload.i24) ; 2 uses
  %i.ay = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.ay, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i26.i
  %.sroa.0.0.copyload.i = load ptr, ptr %.0.i.i29.i, align 8, !tbaa !355
  %i.az = tail call i32 @memcmp(ptr noundef %.sroa.0123.0.copyload, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.speculated.i.i.i) #34
  %.fr.i.i.i = freeze i32 %i.az                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %.inv.i.i.i = icmp sgt i32 %.fr.i.i.i, -1
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %.lr.ph.i.i26.i
  %i.ba = icmp ult i64 %.sroa.22.0.copyload.i24, %.sroa.2.0.copyload.i
  br i1 %i.ba, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit: ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i ], [ -1, %.thread.i.i.i ]
  %i.bb = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.bb, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, !llvm.loop !93

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i: ; preds = %.thread.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, %.thread.i.i.i21, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit22 ], [ %.020.i20.i, %.thread.i.i.i21 ], [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.012.i.i27.i, %.thread.i.i.i ] ; 3 uses
  store ptr %.sroa.0123.0.copyload, ptr %.09.lcssa.i.i23.i, align 8, !tbaa !355
  %.sroa.6125.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i64 %.sroa.22.0.copyload.i24, ptr %.sroa.6125.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  %.sroa.8127.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 16
  store i64 %.sroa.8127.0.copyload, ptr %.sroa.8127.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !340
  br label %bb.l

bb.l:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 24 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.e
  br i1 %.not.i25.i, label %_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !94

_ZN4llvm4sortIRNS_15SmallVectorImplINS_9FlagEntryEEEPFbRKS2_S6_EEEvOT_T0_.exit: ; preds = %bb.l, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, %bb.h, %bb.a
  %i.bc = tail call noundef i64 @llvm.bswap.i64(i64 %3)
  %i.bd = load ptr, ptr %4, align 8, !tbaa !312
  %i.be = load i32, ptr %i.a, align 8, !tbaa !313
  %i.bf = zext i32 %i.be to i64
  %i.bg = load ptr, ptr %0, align 8, !tbaa !250
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 312
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.bc, ptr %i.bd, i64 %i.bf) #31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4llvm12function_refIFvRKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEEEE11callback_fnIZN12_GLOBAL__N_113LLVMELFDumperIS5_E18printDependentLibsEvEUlS8_E_EEvlS8_(i64 %0, ptr nofree nonnull readnone align 1 captures(none) %1) #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvNS_9StringRefEmEE11callback_fnIZN12_GLOBAL__N_113LLVMELFDumperINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEE18printDependentLibsEvEUlS1_mE_EEvlS1_m(i64 noundef %0, ptr %1, i64 %2, i64 %3) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1768
  %i.b = getelementptr i8, ptr %.val, i64 1152
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !1765 ; 2 uses
  %i.c = load ptr, ptr %.val.val, align 8, !tbaa !250
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(44) %.val.val, ptr %1, i64 %2) #31, !inline_history !29694
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE0ELb1EEEE25getSectionContentsAsArrayINS0_18Elf_CGProfile_ImplIS4_EEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.2555") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.0.copyload.i.i.i = load i64, ptr %i.a, align 1
  %.not = icmp eq i64 %.0.copyload.i.i.i, 576460752303423488
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !29811)
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !29811 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !268, !alias.scope !29811
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !349  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !269  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %7, align 8, !tbaa !349, !alias.scope !29811
  %i.k = load i64, ptr %i.e, align 8, !tbaa !270
  store i64 %i.k, ptr %i.c, align 8, !tbaa !270, !alias.scope !29811
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !269, !alias.scope !29811
  store ptr %i.e, ptr %i.b, align 8, !tbaa !349
  store i64 0, ptr %i.m, align 8, !tbaa !269
  store i8 0, ptr %i.e, align 8, !tbaa !270
  call void @llvm.experimental.noalias.scope.decl(metadata !29812)
  %i.o = add i64 %i.l, -4611686018427387870
  %i.p = icmp ult i64 %i.o, 34
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !29812
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.173, i64 noundef 34) #31, !noalias !29812 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !268, !alias.scope !29812
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !349  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !269  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.s, ptr %6, align 8, !tbaa !349, !alias.scope !29812
  %i.z = load i64, ptr %i.t, align 8, !tbaa !270
  store i64 %i.z, ptr %i.r, align 8, !tbaa !270, !alias.scope !29812
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !269
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.e
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !269, !alias.scope !29812
  store ptr %i.t, ptr %i.q, align 8, !tbaa !349
  store i64 0, ptr %i.ab, align 8, !tbaa !269
  store i8 0, ptr %i.t, align 8, !tbaa !270
  store ptr %6, ptr %5, align 8, !alias.scope !29813
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ad, align 8, !alias.scope !29813
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.ae, align 8, !tbaa !352, !alias.scope !29813
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 11, ptr %i.af, align 1, !tbaa !353, !alias.scope !29813
  store ptr %5, ptr %4, align 8, !alias.scope !29814
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.174, ptr %i.ag, align 8, !alias.scope !29814
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.ah, align 8, !tbaa !352, !alias.scope !29814
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ai, align 1, !tbaa !353, !alias.scope !29814
  %.0.copyload.i.i.i42 = load i64, ptr %i.a, align 1
  %i.aj = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i42)
  %i.ak = inttoptr i64 %i.aj to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !29815
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !29815
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.am, align 8, !tbaa !352, !alias.scope !29815
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 11, ptr %i.an, align 1, !tbaa !353, !alias.scope !29815
  %i.ao = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !29816 ; 2 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #31, !noalias !29816
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.ao, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 3, ptr nonnull %i.ap) #31, !noalias !29816
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8
end_hunk_12

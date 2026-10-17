Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmLocalGenerator?download=true
inline.NumInlined: 10522
inline.NumDeleted: 2776
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN16cmLocalGenerator18AddPchDependenciesEP17cmGeneratorTarget:bb.a
.noexc292:                                        ; preds = %.noexc291
  %i.ls = load i64, ptr %i.lp, align 8, !tbaa !81 ; 3 uses
  %i.lt = load i64, ptr %i.ae, align 8, !tbaa !81
  %i.lu = icmp eq i64 %i.ls, %i.lt
  br i1 %i.lu, label %bb.ao, label %.critedge61.i.i.i.i

bb.ao:                                            ; preds = %.noexc292
  %i.lv = icmp eq i64 %i.ls, 0
  br i1 %i.lv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i: ; preds = %bb.ao
  %i.lw = load ptr, ptr %16, align 8, !tbaa !144
  %i.lx = load ptr, ptr %.0174.ptr1946, align 8, !tbaa !144
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.lx, ptr %i.lw, i64 %i.ls)
  %i.ly = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ly, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i, label %.critedge61.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i, %bb.ao
  %.not.not.i.i.i.i = icmp eq ptr %i.lr, null     ; 3 uses
  br i1 %.not.not.i.i.i.i, label %.noexc.i66.i.i.i.i, label %.noexc.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  store ptr %i.af, ptr %17, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #29
  store i64 23, ptr %i.j, align 8, !tbaa !276
  %i.lz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc.i.i.i.i unwind label %bb.aq ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i.i.i
  store ptr %i.lz, ptr %17, align 8, !tbaa !144
  %i.ma = load i64, ptr %i.j, align 8, !tbaa !276 ; 3 uses
  store i64 %i.ma, ptr %i.af, align 8, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.lz, ptr noundef nonnull align 1 dereferenceable(23) @.str.221, i64 23, i1 false)
  store i64 %i.ma, ptr %i.ag, align 8, !tbaa !81
  %i.mb = load ptr, ptr %17, align 8, !tbaa !144
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.ma
  store i8 0, ptr %i.mc, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #29
  %i.md = invoke ptr @_ZNK18cmGeneratorFileSet11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(496) %i.lr, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.ap unwind label %.thread91.i.i.i.i

bb.ap:                                            ; preds = %.noexc.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i.i, label %.noexc.i66.i.i.i.i, label %.critedge59.i.i.i.i

.noexc.i66.i.i.i.i:                               ; preds = %bb.ap, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  store ptr %i.ah, ptr %18, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #29
  store i64 23, ptr %i.i, align 8, !tbaa !276
  %i.me = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc67.i.i.i.i unwind label %bb.ar ; 2 uses

.noexc67.i.i.i.i:                                 ; preds = %.noexc.i66.i.i.i.i
  store ptr %i.me, ptr %18, align 8, !tbaa !144
  %i.mf = load i64, ptr %i.i, align 8, !tbaa !276 ; 3 uses
  store i64 %i.mf, ptr %i.ah, align 8, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.me, ptr noundef nonnull align 1 dereferenceable(23) @.str.221, i64 23, i1 false)
  store i64 %i.mf, ptr %i.ai, align 8, !tbaa !81
  %i.mg = load ptr, ptr %18, align 8, !tbaa !144
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.mf
  store i8 0, ptr %i.mh, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #29
  %i.mi = invoke ptr @_ZNK12cmSourceFile11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(376) %i.lq, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %.critedge.i.i.i.i unwind label %bb.as

.critedge.i.i.i.i:                                ; preds = %.noexc67.i.i.i.i
  %.not100.i.i.i.i = icmp eq ptr %i.mi, null      ; 2 uses
  %i.mj = load ptr, ptr %18, align 8, !tbaa !144  ; 2 uses
  %i.mk = icmp eq ptr %i.mj, %i.ah
  br i1 %i.mk, label %.critedge57.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i289: ; preds = %.critedge.i.i.i.i
  %i.ml = load i64, ptr %i.ah, align 8, !tbaa !82
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mm) #31
  br label %.critedge57.i.i.i.i

.critedge57.i.i.i.i:                              ; preds = %.critedge.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br i1 %.not.not.i.i.i.i, label %.critedge61.i.i.i.i, label %.critedge59.i.i.i.i

.critedge59.i.i.i.i:                              ; preds = %.critedge57.i.i.i.i, %bb.ap
  %i.mn = phi i1 [ %.not100.i.i.i.i, %.critedge57.i.i.i.i ], [ false, %bb.ap ]
  %i.mo = load ptr, ptr %17, align 8, !tbaa !144  ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.af
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i: ; preds = %.critedge59.i.i.i.i
  %i.mq = load i64, ptr %i.af, align 8, !tbaa !82
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i: ; preds = %.critedge59.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %.critedge61.i.i.i.i

.critedge61.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i, %.critedge57.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i, %.noexc292
  %i.ms = phi i1 [ %i.mn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i ], [ %.not100.i.i.i.i, %.critedge57.i.i.i.i ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i ], [ false, %.noexc292 ]
  %i.mt = load ptr, ptr %16, align 8, !tbaa !144  ; 2 uses
  %i.mu = icmp eq ptr %i.mt, %i.aj
  br i1 %i.mu, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16cmLocalGenerator18AddPchDependenciesEP17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPP12cmSourceFileSt6vectorISA_SaISA_EEEEEEbT_.exit.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i: ; preds = %.critedge61.i.i.i.i
  %i.mv = load i64, ptr %i.aj, align 8, !tbaa !82
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mw) #31
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16cmLocalGenerator18AddPchDependenciesEP17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPP12cmSourceFileSt6vectorISA_SaISA_EEEEEEbT_.exit.i.i"

bb.aq:                                            ; preds = %.noexc.i.i.i.i.i
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %.critedge63.i.i.i.i

.thread91.i.i.i.i:                                ; preds = %.noexc.i.i.i.i
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ar:                                            ; preds = %.noexc.i66.i.i.i.i
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i76.i.i.i.i

bb.as:                                            ; preds = %.noexc67.i.i.i.i
  %i.na = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nb = load ptr, ptr %18, align 8, !tbaa !144  ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.ah
  br i1 %i.nc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i76.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i: ; preds = %bb.as
  %i.nd = load i64, ptr %i.ah, align 8, !tbaa !82
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.nb, i64 noundef %i.ne) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i76.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i76.i.i.i.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i, %bb.ar
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.mz, %bb.ar ], [ %i.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i ], [ %i.na, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br i1 %.not.not.i.i.i.i, label %.critedge64.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i76.i.i.i.i, %.thread91.i.i.i.i
  %.pn.pn94.i.i.i.i = phi { ptr, i32 } [ %i.my, %.thread91.i.i.i.i ], [ %.pn.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i76.i.i.i.i ] ; 2 uses
  %i.nf = load ptr, ptr %17, align 8, !tbaa !144  ; 2 uses
  %i.ng = icmp eq ptr %i.nf, %i.af
  br i1 %i.ng, label %.critedge63.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i.i.i: ; preds = %bb.at
  %i.nh = load i64, ptr %i.af, align 8, !tbaa !82
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ni) #31
  br label %.critedge63.i.i.i.i

.critedge63.i.i.i.i:                              ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i.i.i, %bb.aq
  %.pn.pn.pn.ph.i.i.i.i = phi { ptr, i32 } [ %.pn.pn94.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i.i.i ], [ %i.mx, %bb.aq ], [ %.pn.pn94.i.i.i.i, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %.critedge64.i.i.i.i

.critedge64.i.i.i.i:                              ; preds = %.critedge63.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i76.i.i.i.i
  %.pn.pn.pn97.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.ph.i.i.i.i, %.critedge63.i.i.i.i ], [ %.pn.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i76.i.i.i.i ]
  %i.nj = load ptr, ptr %16, align 8, !tbaa !144  ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.aj
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i: ; preds = %.critedge64.i.i.i.i
  %i.nl = load i64, ptr %i.aj, align 8, !tbaa !82
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i: ; preds = %.critedge64.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %.body

"_ZN9__gnu_cxx5__ops10_Iter_predIZN16cmLocalGenerator18AddPchDependenciesEP17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPP12cmSourceFileSt6vectorISA_SaISA_EEEEEEbT_.exit.i.i": ; preds = %.critedge61.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  %i.nn = zext i1 %i.ms to i64
  %spec.select.i.i = add nuw nsw i64 %.020.i.i, %i.nn ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.02.019.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.no, %i.lo
  br i1 %.not.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPP12cmSourceFileSt6vectorIS3_SaIS3_EEEEZN16cmLocalGenerator18AddPchDependenciesEP17cmGeneratorTargetE3$_0ENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit", label %bb.an, !llvm.loop !2118

"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPP12cmSourceFileSt6vectorIS3_SaIS3_EEEEZN16cmLocalGenerator18AddPchDependenciesEP17cmGeneratorTargetE3$_0ENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16cmLocalGenerator18AddPchDependenciesEP17cmGeneratorTargetE3$_0EclINS_17__normal_iteratorIPP12cmSourceFileSt6vectorISA_SaISA_EEEEEEbT_.exit.i.i"
  %i.np = icmp eq i64 %spec.select.i.i, 0
  br i1 %i.np, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPP12cmSourceFileSt6vectorIS3_SaIS3_EEEEZN16cmLocalGenerator18AddPchDependenciesEP17cmGeneratorTargetE3$_0ENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit.thread", label %bb.av

bb.au:                                            ; preds = %.noexc291, %bb.an
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPP12cmSourceFileSt6vectorIS3_SaIS3_EEEEZN16cmLocalGenerator18AddPchDependenciesEP17cmGeneratorTargetE3$_0ENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #29
  invoke void @_ZNK17cmGeneratorTarget11GetPchArchsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %30, ptr noundef nonnull align 8 dereferenceable(3187) %1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0798.01948, ptr noundef nonnull align 8 dereferenceable(32) %.0174.ptr1946)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.nr = load ptr, ptr %i.ak, align 8, !tbaa !143 ; 4 uses
  %i.ns = load ptr, ptr %30, align 8, !tbaa !142  ; 4 uses
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = ptrtoint ptr %i.ns to i64
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = icmp ugt i64 %i.nv, 32
  br i1 %i.nw, label %bb.ax, label %bb.bz

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #29
  store ptr %i.al, ptr %31, align 8, !tbaa !79
  store i64 0, ptr %i.am, align 8, !tbaa !81
  store i8 0, ptr %i.al, align 8, !tbaa !82
  %.not8381933 = icmp eq ptr %i.ns, %i.nr
  br i1 %.not8381933, label %._crit_edge.thread, label %.lr.ph.a

._crit_edge.a:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
  %.pre.a = load i64, ptr %i.am, align 8, !tbaa !81
  %i.nx = icmp eq i64 %.pre.a, 0
  br i1 %i.nx, label %._crit_edge.thread, label %bb.bk

bb.ay:                                            ; preds = %bb.av
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit720

.lr.ph.a:                                         ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
  %.sroa.0789.01934 = phi ptr [ %i.pj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ], [ %i.ns, %bb.ax ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #29
  invoke void @_ZNK17cmGeneratorTarget12GetPchHeaderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(3187) %1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0798.01948, ptr noundef nonnull align 8 dereferenceable(32) %.0174.ptr1946, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0789.01934)
          to label %bb.az unwind label %bb.bh

bb.az:                                            ; preds = %.lr.ph.a
  %i.nz = load i64, ptr %i.an, align 8, !tbaa !81 ; 2 uses
  %i.oa = icmp eq i64 %i.nz, 0
  br i1 %i.oa, label %bb.bj, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29, !noalias !2217
  %i.ob = load ptr, ptr %31, align 8, !tbaa !144, !noalias !2217
  %i.oc = load i64, ptr %i.am, align 8, !tbaa !81, !noalias !2217
  store i64 %i.oc, ptr %15, align 8, !tbaa !276, !alias.scope !2218, !noalias !2217
  store ptr %i.ob, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !278, !alias.scope !2218, !noalias !2217
  store ptr null, ptr %i.ao, align 8, !tbaa !281, !alias.scope !2218, !noalias !2217
  store i64 8, ptr %i.ap, align 8, !tbaa !276, !alias.scope !2219, !noalias !2217
  store <2 x ptr> <ptr @.str.216, ptr null>, ptr %.sroa.4.0..sroa_idx.i12.i, align 8, !tbaa !595, !alias.scope !2219, !noalias !2217
  %i.od = load ptr, ptr %.sroa.0789.01934, align 8, !tbaa !144, !noalias !2217
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0789.01934, i64 8
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !81, !noalias !2217
  store i64 %i.of, ptr %i.aq, align 8, !tbaa !276, !alias.scope !2220, !noalias !2217
  store ptr %i.od, ptr %.sroa.4.0..sroa_idx.i20.i, align 8, !tbaa !278, !alias.scope !2220, !noalias !2217
  store ptr null, ptr %i.ar, align 8, !tbaa !281, !alias.scope !2220, !noalias !2217
  store i64 9, ptr %i.as, align 8, !tbaa !276, !alias.scope !2221, !noalias !2217
  store <2 x ptr> <ptr @.str.217, ptr null>, ptr %.sroa.4.0..sroa_idx.i28.i, align 8, !tbaa !595, !alias.scope !2221, !noalias !2217
  %i.og = load ptr, ptr %32, align 8, !tbaa !144, !noalias !2217
  store i64 %i.nz, ptr %i.at, align 8, !tbaa !276, !alias.scope !2222, !noalias !2217
  store ptr %i.og, ptr %.sroa.4.0..sroa_idx.i36.i, align 8, !tbaa !278, !alias.scope !2222, !noalias !2217
  store ptr null, ptr %i.au, align 8, !tbaa !281, !alias.scope !2222, !noalias !2217
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr nonnull %15, i64 5)
          to label %bb.bb unwind label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29, !noalias !2217
  %i.oh = load ptr, ptr %31, align 8, !tbaa !144  ; 6 uses
  %i.oi = icmp eq ptr %i.oh, %i.al
  %i.oj = load ptr, ptr %33, align 8, !tbaa !144  ; 5 uses
  %i.ok = icmp eq ptr %i.oj, %i.av                ; 2 uses
  br i1 %i.oi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.bb
  br i1 %i.ok, label %bb.bc, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.bb
  br i1 %i.ok, label %bb.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ol = load i64, ptr %i.aw, align 8, !tbaa !81 ; 3 uses
  %i.om = icmp ult i64 %i.ol, 16
  call void @llvm.assume(i1 %i.om)
  switch i64 %i.ol, label %bb.be [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.on = load i8, ptr %i.oj, align 1, !tbaa !82
  store i8 %i.on, ptr %i.oh, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.be:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oh, ptr align 1 %i.oj, i64 %i.ol, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.be, %bb.bd, %bb.bc
  %i.oo = load i64, ptr %i.aw, align 8, !tbaa !81 ; 2 uses
  store i64 %i.oo, ptr %i.am, align 8, !tbaa !81
  %i.op = load ptr, ptr %31, align 8, !tbaa !144
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.oo
  store i8 0, ptr %i.oq, align 1, !tbaa !82
  %.pre.i = load ptr, ptr %33, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.oj, ptr %31, align 8, !tbaa !144
  %i.or = load <2 x i64>, ptr %i.aw, align 8, !tbaa !82
  store <2 x i64> %i.or, ptr %i.am, align 8, !tbaa !82
  br label %bb.bg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.os = load i64, ptr %i.al, align 8, !tbaa !82
  store ptr %i.oj, ptr %31, align 8, !tbaa !144
  %i.ot = load <2 x i64>, ptr %i.aw, align 8, !tbaa !82
  store <2 x i64> %i.ot, ptr %i.am, align 8, !tbaa !82
  %.not.i = icmp eq ptr %i.oh, null
  br i1 %.not.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.oh, ptr %33, align 8, !tbaa !144
  store i64 %i.os, ptr %i.av, align 8, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.av, ptr %33, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bf, %bb.bg
  %i.ou = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.oh, %bb.bf ], [ %i.av, %bb.bg ]
  store i64 0, ptr %i.aw, align 8, !tbaa !81
  store i8 0, ptr %i.ou, align 1, !tbaa !82
  %i.ov = load ptr, ptr %33, align 8, !tbaa !144  ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.av
  br i1 %i.ow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ox = load i64, ptr %i.av, align 8, !tbaa !82
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oy) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  br label %bb.bj

bb.bh:                                            ; preds = %.lr.ph.a
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

bb.bi:                                            ; preds = %bb.ba
  %i.pa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  %i.pb = load ptr, ptr %32, align 8, !tbaa !144  ; 2 uses
  %i.pc = icmp eq ptr %i.pb, %i.ax
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %bb.bi
  %i.pd = load i64, ptr %i.ax, align 8, !tbaa !82
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pe) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, %bb.az
  %i.pf = load ptr, ptr %32, align 8, !tbaa !144  ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.ax
  br i1 %i.pg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %bb.bj
  %i.ph = load i64, ptr %i.ax, align 8, !tbaa !82
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pi) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.0789.01934, i64 32 ; 2 uses
  %.not838 = icmp eq ptr %i.pj, %i.nr
  br i1 %.not838, label %._crit_edge.a, label %.lr.ph.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297, %bb.bh
  %.pn249 = phi { ptr, i32 } [ %i.oz, %bb.bh ], [ %i.pa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297 ], [ %i.pa, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  br label %bb.by

bb.bk:                                            ; preds = %._crit_edge.a
  %i.pk = load ptr, ptr %1, align 8, !tbaa !447
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29, !noalias !2223
  %i.pl = load ptr, ptr %.0174.ptr1946, align 8, !tbaa !144, !noalias !2223
  %i.pm = load i64, ptr %i.lp, align 8, !tbaa !81, !noalias !2223
  store i64 %i.pm, ptr %14, align 8, !tbaa !276, !alias.scope !2224, !noalias !2223
  store ptr %i.pl, ptr %.sroa.4.0..sroa_idx.i.i303, align 8, !tbaa !278, !alias.scope !2224, !noalias !2223
  store ptr null, ptr %i.ay, align 8, !tbaa !281, !alias.scope !2224, !noalias !2223
  store i64 24, ptr %i.az, align 8, !tbaa !276, !alias.scope !2225, !noalias !2223
  store <2 x ptr> <ptr @.str.218, ptr null>, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !tbaa !595, !alias.scope !2225, !noalias !2223
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr nonnull %14, i64 2)
          to label %bb.bl unwind label %bb.bv

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29, !noalias !2223
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29, !noalias !2226
  store i64 11, ptr %12, align 8, !tbaa !276, !alias.scope !2227, !noalias !2226
  store <2 x ptr> <ptr @.str.219, ptr null>, ptr %.sroa.4.0..sroa_idx.i.i305, align 8, !tbaa !595, !alias.scope !2227, !noalias !2226
  %i.pn = load ptr, ptr %.sroa.0798.01948, align 8, !tbaa !144, !noalias !2226
  %i.po = load i64, ptr %i.hp, align 8, !tbaa !81, !noalias !2226
  store i64 %i.po, ptr %i.ba, align 8, !tbaa !276, !alias.scope !2228, !noalias !2226
  store ptr %i.pn, ptr %.sroa.4.0..sroa_idx.i12.i306, align 8, !tbaa !278, !alias.scope !2228, !noalias !2226
  store ptr null, ptr %i.bb, align 8, !tbaa !281, !alias.scope !2228, !noalias !2226
  store i64 2, ptr %i.bc, align 8, !tbaa !276, !alias.scope !2229, !noalias !2226
  store <2 x ptr> <ptr @.str.220, ptr null>, ptr %.sroa.4.0..sroa_idx.i20.i307, align 8, !tbaa !595, !alias.scope !2229, !noalias !2226
  %i.pp = load ptr, ptr %31, align 8, !tbaa !144, !noalias !2226
  %i.pq = load i64, ptr %i.am, align 8, !tbaa !81, !noalias !2226
  store i64 %i.pq, ptr %i.bd, align 8, !tbaa !276, !alias.scope !2230, !noalias !2226
  store ptr %i.pp, ptr %.sroa.4.0..sroa_idx.i28.i308, align 8, !tbaa !278, !alias.scope !2230, !noalias !2226
  store ptr null, ptr %i.be, align 8, !tbaa !281, !alias.scope !2230, !noalias !2226
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29, !noalias !2226
  store i64 0, ptr %13, align 8, !noalias !2226
  store i8 62, ptr %i.bh, align 8, !tbaa !82, !noalias !2226
  store i64 1, ptr %i.bg, align 8, !tbaa !276, !noalias !2226
  store ptr %i.bh, ptr %.sroa.4.0..sroa_idx.i29.i, align 8, !tbaa !278, !noalias !2226
  store i64 1, ptr %i.bf, align 8, !tbaa !276, !alias.scope !2231, !noalias !2226
  store ptr %i.bh, ptr %.sroa.4.0..sroa_idx.i37.i, align 8, !tbaa !278, !alias.scope !2231, !noalias !2226
  store ptr null, ptr %i.bi, align 8, !tbaa !281, !alias.scope !2231, !noalias !2226
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr nonnull %12, i64 5)
          to label %bb.bm unwind label %bb.bw

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29, !noalias !2226
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29, !noalias !2226
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #29
  store i8 0, ptr %i.bj, align 8, !tbaa !637
  invoke void @_ZN8cmTarget14AppendPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RKSt8optionalI19cmListFileBacktraceEb(ptr noundef nonnull align 8 dereferenceable(8) %i.pk, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(24) %36, i1 noundef zeroext false)
          to label %bb.bn unwind label %bb.bx

bb.bn:                                            ; preds = %bb.bm
  %i.pr = load i8, ptr %i.bj, align 8, !tbaa !637, !range !328, !noundef !329
  %i.ps = trunc nuw i8 %i.pr to i1
  store i8 0, ptr %i.bj, align 8, !tbaa !637
  br i1 %i.ps, label %bb.bo, label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit

bb.bo:                                            ; preds = %bb.bn
  %i.pt = load ptr, ptr %i.bk, align 8, !tbaa !301 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.pt, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8 ; 4 uses
  %i.pv = load atomic i64, ptr %i.pu acquire, align 8 ; 2 uses
  %i.pw = icmp eq i64 %i.pv, 4294967297
  %i.px = trunc i64 %i.pv to i32                  ; 2 uses
  br i1 %i.pw, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.pu, align 8, !tbaa !303
  %i.py = getelementptr inbounds nuw i8, ptr %i.pt, i64 12
  store i32 0, ptr %i.py, align 4, !tbaa !304
  %i.pz = load ptr, ptr %i.pt, align 8, !tbaa !55
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qb = load ptr, ptr %i.qa, align 8
  call void %i.qb(ptr noundef nonnull align 8 dereferenceable(16) %i.pt) #29, !inline_history !2149
  %i.qc = load ptr, ptr %i.pt, align 8, !tbaa !55
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8
  call void %i.qe(ptr noundef nonnull align 8 dereferenceable(16) %i.pt) #29, !inline_history !2149
  br label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit

bb.br:                                            ; preds = %bb.bp
  %i.qf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.qf, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qg = add nsw i32 %i.px, -1
  store i32 %i.qg, ptr %i.pu, align 8, !tbaa !286
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.qh = atomicrmw volatile add ptr %i.pu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.px, %bb.bs ], [ %i.qh, %bb.bt ]
  %i.qi = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.qi, label %bb.bu, label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit, !prof !277

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pt) #29
  br label %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit: ; preds = %bb.bn, %bb.bo, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  %i.qj = load ptr, ptr %35, align 8, !tbaa !144  ; 2 uses
  %i.qk = icmp eq ptr %i.qj, %i.bl
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310: ; preds = %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit
  %i.ql = load i64, ptr %i.bl, align 8, !tbaa !82
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312: ; preds = %_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  %i.qn = load ptr, ptr %34, align 8, !tbaa !144  ; 2 uses
  %i.qo = icmp eq ptr %i.qn, %i.bm
  br i1 %i.qo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312
  %i.qp = load i64, ptr %i.bm, align 8, !tbaa !82
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  br label %._crit_edge.thread

bb.bv:                                            ; preds = %bb.bk
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

bb.bw:                                            ; preds = %bb.bl
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

bb.bx:                                            ; preds = %bb.bm
  %i.qt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt14_Optional_baseI19cmListFileBacktraceLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %36) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  %i.qu = load ptr, ptr %35, align 8, !tbaa !144  ; 2 uses
  %i.qv = icmp eq ptr %i.qu, %i.bl
  br i1 %i.qv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316: ; preds = %bb.bx
  %i.qw = load i64, ptr %i.bl, align 8, !tbaa !82
  %i.qx = add i64 %i.qw, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316, %bb.bw
  %.pn181 = phi { ptr, i32 } [ %i.qs, %bb.bw ], [ %i.qt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316 ], [ %i.qt, %bb.bx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  %i.qy = load ptr, ptr %34, align 8, !tbaa !144  ; 2 uses
  %i.qz = icmp eq ptr %i.qy, %i.bm
  br i1 %i.qz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318
  %i.ra = load i64, ptr %i.bm, align 8, !tbaa !82
  %i.rb = add i64 %i.ra, 1
  call void @_ZdlPvm(ptr noundef %i.qy, i64 noundef %i.rb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319, %bb.bv
  %.pn181.pn = phi { ptr, i32 } [ %i.qr, %bb.bv ], [ %.pn181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319 ], [ %.pn181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  br label %bb.by

._crit_edge.thread:                               ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, %._crit_edge.a
  %i.rc = load ptr, ptr %31, align 8, !tbaa !144  ; 2 uses
  %i.rd = icmp eq ptr %i.rc, %i.al
  br i1 %i.rd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %._crit_edge.thread
  %i.re = load i64, ptr %i.al, align 8, !tbaa !82
  %i.rf = add i64 %i.re, 1
  call void @_ZdlPvm(ptr noundef %i.rc, i64 noundef %i.rf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %._crit_edge.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  %.pre1959 = load ptr, ptr %30, align 8, !tbaa !141
  %.pre1960 = load ptr, ptr %i.ak, align 8, !tbaa !141
  br label %bb.bz

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
  %.pn249.pn = phi { ptr, i32 } [ %.pn249, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299 ], [ %.pn181.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321 ]
  %i.rg = load ptr, ptr %31, align 8, !tbaa !144  ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.al
  br i1 %i.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325: ; preds = %bb.by
  %i.ri = load i64, ptr %i.al, align 8, !tbaa !82
  %i.rj = add i64 %i.ri, 1
  call void @_ZdlPvm(ptr noundef %i.rg, i64 noundef %i.rj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  br label %bb.ic

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, %bb.aw
  %i.rk = phi ptr [ %.pre1960, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ], [ %i.nr, %bb.aw ] ; 3 uses
  %i.rl = phi ptr [ %.pre1959, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ], [ %i.ns, %bb.aw ] ; 3 uses
  %.not8391940 = icmp eq ptr %i.rl, %i.rk
  br i1 %.not8391940, label %._crit_edge1944, label %.lr.ph1943

._crit_edge1944.loopexit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701
  %.pre1961 = load ptr, ptr %30, align 8, !tbaa !142
  %.pre1962 = load ptr, ptr %i.ak, align 8, !tbaa !143
  br label %._crit_edge1944

._crit_edge1944:                                  ; preds = %._crit_edge1944.loopexit, %bb.bz
  %i.rm = phi ptr [ %.pre1962, %._crit_edge1944.loopexit ], [ %i.rk, %bb.bz ] ; 2 uses
  %i.rn = phi ptr [ %.pre1961, %._crit_edge1944.loopexit ], [ %i.rl, %bb.bz ] ; 3 uses
  %.not4.i.i.i328 = icmp eq ptr %i.rn, %i.rm
  br i1 %.not4.i.i.i328, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i336, label %.lr.ph.i.i.i329

.lr.ph.i.i.i329:                                  ; preds = %._crit_edge1944, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i332
  %.05.i.i.i330 = phi ptr [ %i.rt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i332 ], [ %i.rn, %._crit_edge1944 ] ; 3 uses
  %i.ro = load ptr, ptr %.05.i.i.i330, align 8, !tbaa !144 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.05.i.i.i330, i64 16 ; 2 uses
  %i.rq = icmp eq ptr %i.ro, %i.rp
  br i1 %i.rq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i331: ; preds = %.lr.ph.i.i.i329
  %i.rr = load i64, ptr %i.rp, align 8, !tbaa !82
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rs) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i332

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i332: ; preds = %.lr.ph.i.i.i329, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i331
  %i.rt = getelementptr inbounds nuw i8, ptr %.05.i.i.i330, i64 32 ; 2 uses
  %.not.i.i.i333 = icmp eq ptr %i.rt, %i.rm
  br i1 %.not.i.i.i333, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i334, label %.lr.ph.i.i.i329, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i334: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i332
  %.pr.i335 = load ptr, ptr %30, align 8, !tbaa !142
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i336

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i336: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i334, %._crit_edge1944
  %i.ru = phi ptr [ %.pr.i335, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i334 ], [ %i.rn, %._crit_edge1944 ] ; 3 uses
  %.not.i.i1.i337 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i1.i337, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit339, label %bb.ca

bb.ca:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i336
  %i.rv = load ptr, ptr %i.gm, align 8, !tbaa !145
  %i.rw = ptrtoint ptr %i.rv to i64
  %i.rx = ptrtoint ptr %i.ru to i64
  %i.ry = sub i64 %i.rw, %i.rx
  call void @_ZdlPvm(ptr noundef nonnull %i.ru, i64 noundef %i.ry) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit339

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit339: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i336, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  br label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPP12cmSourceFileSt6vectorIS3_SaIS3_EEEEZN16cmLocalGenerator18AddPchDependenciesEP17cmGeneratorTargetE3$_0ENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit.thread"

.lr.ph1943:                                       ; preds = %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701
  %.sroa.0784.01941 = phi ptr [ %i.aqf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701 ], [ %i.rl, %bb.bz ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #29
  invoke void @_ZNK17cmGeneratorTarget12GetPchSourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %37, ptr noundef nonnull align 8 dereferenceable(3187) %1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0798.01948, ptr noundef nonnull align 8 dereferenceable(32) %.0174.ptr1946, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0784.01941)
          to label %bb.cb unwind label %bb.cg

bb.cb:                                            ; preds = %.lr.ph1943
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #29
  invoke void @_ZNK17cmGeneratorTarget12GetPchHeaderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr noundef nonnull align 8 dereferenceable(3187) %1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0798.01948, ptr noundef nonnull align 8 dereferenceable(32) %.0174.ptr1946, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0784.01941)
          to label %bb.cc unwind label %bb.ch

bb.cc:                                            ; preds = %bb.cb
  %i.rz = load i64, ptr %i.bn, align 8, !tbaa !81
  %i.sa = icmp eq i64 %i.rz, 0
  %i.sb = load i64, ptr %i.bo, align 8
  %i.sc = icmp eq i64 %i.sb, 0
  %or.cond = select i1 %i.sa, i1 true, i1 %i.sc
  br i1 %or.cond, label %bb.cd, label %.noexc.i371

bb.cd:                                            ; preds = %bb.cc
  %i.sd = load ptr, ptr %i.x, align 8, !tbaa !131 ; 2 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !55
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 352
  %i.sg = load ptr, ptr %i.sf, align 8
  %i.sh = invoke noundef zeroext i1 %i.sg(ptr noundef nonnull align 8 dereferenceable(2202) %i.sd)
          to label %bb.ce unwind label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  %i.si = load i64, ptr %i.w, align 8
  %i.sj = icmp ne i64 %i.si, 0
  %or.cond.not = select i1 %i.sh, i1 %i.sj, i1 false
  br i1 %or.cond.not, label %bb.cf, label %_ZNK7cmValue7IsEmptyEv.exit.thread

bb.cf:                                            ; preds = %bb.ce
  %i.sk = load ptr, ptr %20, align 8, !tbaa !617  ; 2 uses
  %i.sl = load ptr, ptr %i.ad, align 8, !tbaa !617 ; 2 uses
  %.not8411936 = icmp eq ptr %i.sk, %i.sl
  br i1 %.not8411936, label %_ZNK7cmValue7IsEmptyEv.exit.thread, label %.lr.ph1939

bb.cg:                                            ; preds = %.lr.ph1943
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit707

bb.ch:                                            ; preds = %bb.cb
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit704

bb.ci:                                            ; preds = %bb.cd
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

.lr.ph1939:                                       ; preds = %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %.sroa.0780.01937 = phi ptr [ %i.um, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366 ], [ %i.sk, %bb.cf ] ; 2 uses
  %i.sp = load ptr, ptr %.sroa.0780.01937, align 8, !tbaa !622 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #29
  invoke void @_ZNK12cmSourceFile11GetLanguageB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %39, ptr noundef nonnull align 8 dereferenceable(376) %i.sp)
          to label %bb.cj unwind label %bb.cn

bb.cj:                                            ; preds = %.lr.ph1939
  %i.sq = load i64, ptr %i.ge, align 8, !tbaa !81 ; 5 uses
  %i.sr = icmp eq i64 %i.sq, 0
  br i1 %i.sr, label %.critedge, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ss = load ptr, ptr %i.t, align 8, !tbaa !63  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ss, null
  br i1 %.not10.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i340

.lr.ph.i.i.i340:                                  ; preds = %bb.ck
  %i.st = load ptr, ptr %39, align 8              ; 2 uses
  br label %bb.cl

bb.cl:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i340
  %.012.i.i.i = phi ptr [ %i.ss, %.lr.ph.i.i.i340 ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 6 uses
  %.0811.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i340 ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !81 ; 3 uses
  %i.sw = icmp eq i64 %i.sv, 0
  br i1 %i.sw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.cl
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.sq, i64 %i.sv)
  %i.sx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !144
  %i.sz = call i32 @memcmp(ptr noundef %i.sy, ptr noundef %i.st, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.sz, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.cl
  %i.ta = sub i64 %i.sv, %i.sq
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ta, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.sz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.tb = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 4 uses
  %.19.i.i.i = select i1 %i.tb, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.tb, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i341 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i341, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.cl, !llvm.loop !2150

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.tc = icmp eq ptr %.19.i.i.i, %i.s
  br i1 %i.tc, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.cm

end_hunk_0
